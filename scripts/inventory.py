#!/usr/bin/env python3
"""Measure what the workspace has covered, from the binaries.

Usage: scripts/inventory.py [--config scripts/inventory.json] [--out docs/inventory]
                            [--no-coverage]

Run it from the repository root where the MIPS binutils and pyelftools exist
(AGENTS.md section 5). It reads the binaries named in the config and writes

  binaries.tsv   every in-scope file, with the number of functions found
  functions.tsv  every function symbol (one row per name, binaries listed)
  mmio.tsv       every distinct board or display offset the scanned code accesses
  tokens.tsv     command-FIFO words and block ids stored as constants
  ioctls.tsv     ioctl numbers, from the kernel's dispatch tables and from
                 constants in user code
  ucode.tsv      microcode routines
  summary.tsv    row counts and documented percentages per inventory

Each row carries a status and, when the repository's text mentions it, the
document and section:

  documented  the name or value sits on a line with enough explanation (at
              least 6 plain words in prose, 4 in a table row or header
              comment) in docs/*.md, ucode/*.md or a header
  named-only  it appears only on shorter lines: a bare list, a table of
              names, a #define with no comment
  undocumented  it appears nowhere in those files

The status is a measure of mention, not of correctness: a documented row
means a reader wrote about it, not that the reading is complete. The config
(scripts/inventory.json) holds everything specific to this board; the code
below knows only MIPS and the file formats. docs/inventory/README.md says how
each inventory is built and what it misses.
"""
import argparse
import collections
import glob
import hashlib
import importlib
import io
import json
import os
import re
import struct
import subprocess
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import toolchain  # noqa: E402

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
os.chdir(ROOT)

PROSE_WORDS = 6
SHORT_WORDS = 4
CONTEXT = ('register', 'offset', 'pio', 'board', 'window', 'fifo', 'status', 'flag',
           'store', 'load', 'read', 'write', 'display', 'pb&j', 'address', 'cursor',
           'colour', 'color', 'timing', 'mode', 'block', 'word', 'command', 'interrupt',
           'swap', 'i2c', 'dac', 'genlock', 'dma', 'reset', 'id ', 'ids')
ROUTINE_CONTEXT = ('entry', 'entries', 'routine', 'record', 'end mark', 'overlay')


def tc(name):
    return getattr(toolchain, name)()


def sh(cmd, **kw):
    return subprocess.run(cmd, check=False, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                          text=True, errors='replace', **kw)


def num(s):
    return int(s, 0) if isinstance(s, str) else s


# ---------------------------------------------------------------- doc index

class DocIndex:
    """Mentions of identifiers and numbers in the repository's own text."""

    def __init__(self, cfg):
        self.idents = collections.defaultdict(list)   # name -> [(rank, doc, section)]
        self.quoted = collections.defaultdict(list)   # names written in `backticks` only
        self.ints = collections.defaultdict(list)     # value -> [(rank, doc, section, ctx)]
        self.decs = collections.defaultdict(list)     # decimal value -> same
        excl = set()
        for pat in cfg.get('exclude', []):
            excl.update(glob.glob(pat))
        for pat in cfg['prose']:
            for f in sorted(glob.glob(pat)):
                if f not in excl:
                    self.read_md(f)
        for pat in cfg['headers']:
            for f in sorted(glob.glob(pat)):
                if f not in excl and not f.startswith('root/'):
                    self.read_header(f)

    @staticmethod
    def words(text):
        text = re.sub(r'`[^`]*`', ' ', text)
        text = re.sub(r'0x[0-9a-fA-F]+|[A-Za-z_]\w*_\w*|\b[A-Za-z]+[0-9][A-Za-z0-9]*\b', ' ', text)
        return len(re.findall(r'\b[A-Za-z]{2,}\b', text))

    def add(self, line, rank_words, doc, section, short):
        need = SHORT_WORDS if short else PROSE_WORDS
        rank = 2 if rank_words >= need else 1
        low = (line + ' ' + section).lower()
        for m in re.finditer(r'[A-Za-z_][A-Za-z0-9_]{2,}', line):
            self.idents[m.group(0)].append((rank, doc, section))
        for m in re.finditer(r'`([^`]+)`', line):
            for n in re.findall(r'[A-Za-z_][A-Za-z0-9_]{2,}', m.group(1)):
                self.quoted[n].append((rank, doc, section))
        for m in re.finditer(r'0x[0-9a-fA-F]+', line):
            self.ints[int(m.group(0), 16)].append((rank, doc, section, low))
        for m in re.finditer(r'(?<![\w.])(\d{1,5})(?![\w.])', line):
            self.decs[int(m.group(1))].append((rank, doc, section, low))

    def read_md(self, path):
        section = os.path.basename(path)
        fence = False
        for line in open(path, errors='replace'):
            line = line.rstrip('\n')
            if line.lstrip().startswith('```'):
                fence = not fence
                continue
            h = re.match(r'#{1,6}\s+(.*)', line)
            if h and not fence:
                section = h.group(1).strip()[:70]
            if fence:
                self.add(line, 0, path, section, True)
                continue
            table = line.lstrip().startswith('|')
            self.add(line, self.words(line), path, section, table)

    def read_header(self, path):
        section = ''
        banner = False
        incomment = False
        for line in open(path, errors='replace'):
            line = line.rstrip('\n')
            if re.match(r'\s*/\*\s*=+', line):
                banner = True
            m = re.match(r'\s*\*\s+(\d+\.\s+\S.*)', line)
            if banner and m:
                section = m.group(1).strip()[:70]
                banner = False
            if '/*' in line:
                incomment = True
            code, _, comment = line.partition('/*')
            if incomment:
                text = comment if '/*' in line else line
            else:
                text = ''
            if '*/' in line:
                incomment = False
            if not incomment and not text and '//' in line:
                text = line.split('//', 1)[1]
            self.add(line, self.words(text), path, section, True)

    @staticmethod
    def best(hits, pred=None):
        hits = [h for h in hits if pred is None or pred(h)]
        if not hits:
            return ('undocumented', '', '')
        hits.sort(key=lambda h: (-h[0], h[1], h[2]))
        rank, doc, sec = hits[0][:3]
        return ('documented' if rank == 2 else 'named-only', doc, sec)

    def ident(self, name):
        # A plain lower-case word ("move", "color") is also English; for
        # those only a `quoted` mention counts. Headers hold code, so any
        # mention there counts.
        if re.fullmatch(r'[a-z]+', name) or len(name) < 5:
            hits = self.quoted.get(name, []) + [h for h in self.idents.get(name, []) if h[1].endswith('.h')]
            return self.best(hits)
        return self.best(self.idents.get(name, []))

    def value(self, v, ctx=None):
        ctx = ctx or CONTEXT
        return self.best(self.ints.get(v, []), lambda h: any(c in h[3] for c in ctx))

    def routine(self, v):
        def ok(h):
            low = h[3]
            if not any(c in low for c in ROUTINE_CONTEXT):
                return False
            if v >= 100:
                return True
            return re.search(r'(entry|entries|record|records|routine)\W+(\w+\W+){0,2}%d\b' % v, low) is not None
        return self.best(self.decs.get(v, []), ok)


def merge_status(*sts):
    order = {'documented': 2, 'named-only': 1, 'undocumented': 0}
    return max(sts, key=lambda s: order[s[0]])


# --------------------------------------------------------------- binaries

def sha(path):
    h = hashlib.sha256()
    with open(path, 'rb') as f:
        for blk in iter(lambda: f.read(1 << 20), b''):
            h.update(blk)
    return h.hexdigest()


def build_tag(path):
    m = re.match(r'root/builds/([^/]+)/', path)
    return m.group(1) if m else 'installed'


def load_binaries(cfg):
    by_sha = collections.OrderedDict()
    for g in cfg['groups']:
        for pat in g['glob']:
            for p in sorted(glob.glob(pat)):
                if not os.path.isfile(p):
                    continue
                s = sha(p)
                e = by_sha.get(s)
                if e is None:
                    e = by_sha[s] = {'sha': s, 'size': os.path.getsize(p), 'paths': [], 'builds': [],
                                     'group': g['name'], 'role': g['role'], 'arch': g['arch'],
                                     'scan': set(g['scan']),
                                     'string_names': g.get('string_names', '')}
                e['paths'].append(p)
                e['builds'].append(build_tag(p))
                e['scan'] |= set(g['scan'])
    out = []
    for i, e in enumerate(by_sha.values(), 1):
        e['id'] = 'b%02d' % i
        e['path'] = e['paths'][0]
        e['builds'] = sorted(set(e['builds']))
        out.append(e)
    return out


def is_elf(path):
    with open(path, 'rb') as f:
        return f.read(4) == b'\x7fELF'


def is_ar(path):
    with open(path, 'rb') as f:
        return f.read(8) == b'!<arch>\n'


def ar_members(path):
    data = open(path, 'rb').read()
    names = b''
    pos = 8
    out = []
    while pos + 60 <= len(data):
        hdr = data[pos:pos + 60]
        name = hdr[:16].decode('latin1').strip()
        size = int(hdr[48:58])
        body = data[pos + 60:pos + 60 + size]
        pos += 60 + size + (size & 1)
        if name == '//':
            names = body
            continue
        if name in ('/', '/SYM64/', '__.SYMDEF', '__.SYMDEF SORTED'):
            continue
        if name.startswith('/') and name[1:].isdigit():
            end = names.index(b'\n', int(name[1:]))
            name = names[int(name[1:]):end].decode('latin1')
        name = name.rstrip('/')
        out.append((name, body))
    return out


NMLINE = re.compile(r'^([0-9a-f]+)\s+(?:([0-9a-f]+)\s+)?([A-Za-z])\s+(\S.*)$')


def nm_functions(path, dyn):
    cmd = [tc('nm'), '-S', '--defined-only'] + (['-D'] if dyn else []) + [path]
    r = sh(cmd)
    member = ''
    rows = []
    for ln in r.stdout.splitlines():
        if ln.endswith(':') and ' ' not in ln.strip():
            member = ln.strip()[:-1]
            continue
        m = NMLINE.match(ln)
        if m and m.group(3) in 'TtWw':
            rows.append({'name': m.group(4), 'addr': int(m.group(1), 16),
                         'size': int(m.group(2), 16) if m.group(2) else 0,
                         'member': member, 'src': 'dynsym' if dyn else 'symtab'})
    return rows


def debug_names(path):
    """Function names from the SGI .debug_funcnames section (static ones too)."""
    from elftools.elf.elffile import ELFFile
    names = []
    try:
        with open(path, 'rb') as f:
            sec = ELFFile(f).get_section_by_name('.debug_funcnames')
            data = sec.data() if sec else b''
    except Exception:
        return names
    pos = 0
    while pos + 14 <= len(data):
        ln, = struct.unpack('>I', data[pos:pos + 4])
        if ln == 0 or ln > len(data):
            break
        end = pos + 4 + ln
        p = pos + 14
        while p + 4 < end:
            off, = struct.unpack('>I', data[p:p + 4])
            if off == 0:
                break
            q = data.index(b'\0', p + 4)
            names.append(data[p + 4:q].decode('latin1'))
            p = q + 1
        pos = end
    return names


def mdebug_names(path):
    """Procedure names from an o32 ECOFF .mdebug table."""
    from elftools.elf.elffile import ELFFile
    try:
        with open(path, 'rb') as f:
            e = ELFFile(f)
            sec = e.get_section_by_name('.mdebug')
            if not sec:
                return []
            f.seek(0)
            whole = f.read()
            base = sec['sh_offset']
    except Exception:
        return []
    # the table's offsets are file offsets: view the file from the section start
    d = whole
    if len(d) < base + 0x60 or struct.unpack('>H', d[base:base + 2])[0] != 0x7009:
        return []
    h = struct.unpack('>2H23I', d[base:base + 0x60])
    # magic vstamp ilineMax cbLine cbLineOffset idnMax cbDnOffset ipdMax cbPdOffset
    # isymMax cbSymOffset ioptMax cbOptOffset iauxMax cbAuxOffset issMax cbSsOffset
    # issExtMax cbSsExtOffset ifdMax cbFdOffset crfd cbRfdOffset iextMax cbExtOffset
    ipd, cb_pd, isym, cb_sym = h[7], h[8], h[9], h[10]
    iss, cb_ss, ifd, cb_fd = h[15], h[16], h[19], h[20]
    names = []
    for i in range(ifd):
        o = cb_fd + 72 * i
        if o + 72 > len(d):
            break
        f = struct.unpack('>10I2h', d[o:o + 44])
        iss_base, isym_base, ipd_first, cpd = f[2], f[4], f[10], f[11]
        for k in range(ipd_first, ipd_first + cpd):
            po = cb_pd + 52 * k
            if po + 52 > len(d):
                break
            sidx = struct.unpack('>I', d[po + 4:po + 8])[0]
            so = cb_sym + 12 * (isym_base + sidx)
            if so + 12 > len(d):
                continue
            s_iss = struct.unpack('>I', d[so:so + 4])[0]
            a = cb_ss + iss_base + s_iss
            b = d.find(b'\0', a)
            if 0 <= a < b:
                names.append(d[a:b].decode('latin1'))
    return names


def functions_of(b):
    path = b['path']
    if b.get('string_names'):
        data = open(path, 'rb').read()
        names = sorted({m.decode('latin1') for m in re.findall(b.get('string_names').encode(), data)})
        return [{'name': n, 'addr': 0, 'size': 0, 'member': '', 'src': 'strings'} for n in names]
    if not is_elf(path) and not is_ar(path):
        return None
    rows = nm_functions(path, False)
    if is_elf(path):
        rows += nm_functions(path, True)
        have = {r['name'] for r in rows}
        for n in debug_names(path):
            if n not in have:
                rows.append({'name': n, 'addr': 0, 'size': 0, 'member': '', 'src': 'dwarf'})
                have.add(n)
        for n in mdebug_names(path):
            if n not in have:
                rows.append({'name': n, 'addr': 0, 'size': 0, 'member': '', 'src': 'mdebug'})
                have.add(n)
    seen = set()
    out = []
    for r in rows:
        k = (r['member'], r['name'])
        if k not in seen:
            seen.add(k)
            out.append(r)
    return out


# ------------------------------------------------------------- disassembly

LABEL = re.compile(r'^[0-9a-f]+ <([^>]+)>:')
MEMBER = re.compile(r'^(\S+):\s+file format')
RELOC = re.compile(r'^\s+[0-9a-f]+:\s+(R_MIPS_\w+)\s+(\S+)')
INSN = re.compile(r'^\s*([0-9a-f]+):\s+([a-z][\w.]*)\s*(.*)$')
MEM = re.compile(r'^(-?\d+|-?0x[0-9a-f]+)\(([\w$]+)\)$')
BRANCHES = {'beq', 'bne', 'beqz', 'bnez', 'blez', 'bgtz', 'bltz', 'bgez', 'b', 'j', 'bal', 'bc1t', 'bc1f',
            'beql', 'bnel', 'bnezl', 'beqzl', 'bgezl', 'bltzl', 'blezl', 'bgtzl'}
NODEST = {'sw', 'sd', 'sh', 'sb', 'swl', 'swr', 'sdl', 'sdr', 'swc1', 'sdc1', 'sc', 'scd', 'swc2',
          'sdc2', 'beq', 'bne', 'beqz', 'bnez', 'blez', 'bgtz', 'bltz', 'bgez', 'b', 'j', 'jr',
          'nop', 'sync', 'teq', 'tne', 'break', 'syscall', 'bal', 'bc1t', 'bc1f', 'beql', 'bnel',
          'bnezl', 'beqzl', 'bgezl', 'bltzl', 'blezl', 'bgtzl', 'bgezal', 'bltzal', 'mtc1', 'dmtc1',
          'ctc1', 'mthi', 'mtlo', 'tlt', 'tge', 'tgeu', 'tltu', 'cache', 'pref', 'prefx', 'ssnop'}
SAVED = {'s0', 's1', 's2', 's3', 's4', 's5', 's6', 's7', 's8', 'fp', 'gp', 'sp', 'zero', 'ra'}
STORE_W = {'sb': 8, 'sh': 16, 'sw': 32, 'sd': 64}
LITERAL_SECTIONS = ('.lit8', '.lit4', '.srdata')
LOAD_W = {'lb': 8, 'lbu': 8, 'lh': 16, 'lhu': 16, 'lw': 32, 'lwu': 32, 'ld': 64}


def regname(r):
    return r.lstrip('$')


def signed(v, bits=64):
    v &= (1 << bits) - 1
    return v - (1 << bits) if v >> (bits - 1) else v


def disasm_stream(path):
    p = subprocess.Popen([tc('objdump'), '-dr', '--no-show-raw-insn', path], stdout=subprocess.PIPE,
                         stderr=subprocess.DEVNULL, text=True, errors='replace')
    yield from p.stdout
    p.wait()


class Scanner:
    def __init__(self, cfg):
        m = cfg['mmio']
        self.base_loads = m['base_loads']
        self.fifo = num(m['display_fifo_offset'])
        self.gp_bias = m['gp_literal_bias']
        self.dtypes = set(m['display_header_types'])
        rb = m['readback_window']
        self.rb_base, self.rb_size, self.rb_stride = num(rb['base']), num(rb['size']), rb['stride']
        self.mmio = collections.defaultdict(lambda: {'acc': set(), 'funcs': set(), 'bins': set()})
        self.display = collections.defaultdict(lambda: {'acc': set(), 'funcs': set(), 'bins': set(), 'types': set()})
        self.tokens = collections.defaultdict(lambda: {'funcs': collections.Counter(), 'bins': set()})
        self.ioctl_consts = collections.defaultdict(lambda: {'funcs': collections.Counter(), 'bins': set()})

    # token families (see docs/inventory/README.md)
    @staticmethod
    def family(w):
        top = w >> 24
        if (w >> 16) == 1:
            return 'class1'
        if (w & 0x00808000) == 0x00808000 and (top == 0x80 or 0xc0 <= top <= 0xdf):
            return 'attribute'
        if 0x20 <= top <= 0x35 and (w & 0x8000):
            return 'sequencer'
        return ''

    def sections(self, b):
        """Read-only literal pools of each relocatable member, for gp-relative loads."""
        from elftools.elf.elffile import ELFFile
        out = {}
        path = b['path']
        members = ar_members(path) if is_ar(path) else []
        for name, body in members:
            try:
                e = ELFFile(io.BytesIO(body))
            except Exception:
                continue
            d = {}
            for sn in LITERAL_SECTIONS:
                sec = e.get_section_by_name(sn)
                if sec:
                    d[sn] = sec.data()
            out[name] = d
        return out

    def scan(self, b, kinds):
        bid = b['id']
        func = ''
        member = ''
        self.secs = self.sections(b)
        insns = []
        for line in disasm_stream(b['path']):
            m = MEMBER.match(line)
            if m:
                self.function(bid, func, insns, kinds)
                func, insns, member = '', [], m.group(1)
                self.cur = self.secs.get(member, {})
                continue
            m = LABEL.match(line)
            if m:
                self.function(bid, func, insns, kinds)
                func, insns = m.group(1), []
                continue
            m = RELOC.match(line)
            if m and insns:
                insns[-1] = insns[-1][:3] + (m.group(2),)
                continue
            m = INSN.match(line)
            if not m:
                continue
            args = m.group(3).split('#')[0].split(' <')[0].strip()
            ops = [regname(o.strip()) for o in args.split(',')] if args else []
            insns.append((int(m.group(1), 16), m.group(2), ops, ''))
        self.function(bid, func, insns, kinds)

    def function(self, bid, func, insns, kinds):
        """Replay one function. Registers other than the saved ones are
        forgotten at every branch target, and after an unconditional jump,
        because the straight-line replay cannot know what reaches them."""
        targets = set()
        for _, mn, ops, _r in insns:
            if mn in BRANCHES and ops:
                try:
                    targets.add(int(ops[-1], 16))
                except ValueError:
                    pass
        regs = {}
        slots = {}
        prev = ['', '']
        for addr, mn, ops, rel in insns:
            self.rel = rel
            if addr in targets or prev[0] in ('b', 'j', 'jr'):
                for r in [r for r in regs if r not in SAVED]:
                    del regs[r]
            if mn == 'daddiu' and ops[:2] == ['sp', 'sp']:
                slots.clear()
            self.step(bid, func, mn, ops, regs, slots, kinds)
            prev = [prev[1], mn]

    def const(self, bid, func, v, kinds):
        v &= 0xffffffff
        if 'ioctl' in kinds and (v >> 16) == 0x6f64:
            e = self.ioctl_consts[v]
            e['funcs'][func] += 1
            e['bins'].add(bid)

    def step(self, bid, func, mn, ops, regs, slots, kinds):
        g = regs.get
        n = len(ops)
        if mn in ('jal', 'jalr', 'bal'):
            for r in [r for r in regs if r not in SAVED]:
                del regs[r]
            return
        if mn in STORE_W or mn in LOAD_W:
            mm = MEM.match(ops[1]) if n > 1 else None
            if not mm:
                if mn in LOAD_W and n:
                    regs.pop(ops[0], None)
                return
            off = int(mm.group(1), 0)
            base = regname(mm.group(2))
            st = g(base)
            tgt = g(ops[0]) if mn in STORE_W else None
            if base == 'sp':
                if mn in STORE_W:
                    if tgt:
                        slots[off] = tgt
                    else:
                        slots.pop(off, None)
                elif off in slots and mn in ('ld', 'lw'):
                    regs[ops[0]] = slots[off]
                    return
            if mn in ('ld', 'lw') and base == 'gp' and self.rel in getattr(self, 'cur', {}):
                data = self.cur[self.rel]
                w = 8 if mn == 'ld' else 4
                o = off + self.gp_bias
                if 0 <= o and o + w <= len(data):
                    v = int.from_bytes(data[o:o + w], 'big', signed=True)
                    regs[ops[0]] = ('c', v)
                    self.const(bid, func, v, kinds)
                    return
            if mn in LOAD_W:
                for bl in self.base_loads:
                    if mn in bl['mnemonics'] and off == bl['offset']:
                        regs[ops[0]] = ('b', bl['tag'], 0)
                        return
                regs.pop(ops[0], None)
            if st and st[0] == 'b' and 'mmio' in kinds:
                o = st[2] + off
                self.access(bid, func, o, ('w' if mn in STORE_W else 'r') +
                            str((STORE_W if mn in STORE_W else LOAD_W)[mn]), tgt)
            if mn in STORE_W and tgt and tgt[0] == 'c' and 'tokens' in kinds and base != 'sp':
                v = tgt[1] & ((1 << 64) - 1)
                words = [v >> 32, v & 0xffffffff] if mn == 'sd' and v >> 32 not in (0, 0xffffffff) else [v & 0xffffffff]
                for w in words:
                    fam = self.family(w)
                    if fam:
                        e = self.tokens[w]
                        e['funcs'][func] += 1
                        e['bins'].add(bid)
            return
        if mn in NODEST:
            return
        if not ops:
            return
        d = ops[0]
        val = None
        if mn == 'lui' and n == 2:
            val = ('c', signed(int(ops[1], 0) << 16, 32))
        elif mn in ('ori', 'addiu', 'daddiu', 'addi', 'daddi', 'andi', 'xori') and n == 3:
            s = g(ops[1]) if ops[1] != 'zero' else ('c', 0)
            imm = int(ops[2], 0)
            if s and s[0] == 'c':
                if mn == 'ori':
                    val = ('c', s[1] | imm)
                elif mn in ('addiu', 'daddiu', 'addi', 'daddi'):
                    val = ('c', s[1] + imm)
                elif mn == 'andi':
                    val = ('c', s[1] & imm)
                else:
                    val = ('c', s[1] ^ imm)
            elif s and s[0] == 'b' and mn in ('addiu', 'daddiu', 'addi', 'daddi'):
                val = ('b', s[1], s[2] + imm)
            if val and val[0] == 'c':
                self.const(bid, func, val[1], kinds)
        elif mn == 'li' and n == 2:
            val = ('c', int(ops[1], 0))
            self.const(bid, func, val[1], kinds)
        elif mn in ('move',) and n == 2:
            val = g(ops[1]) if ops[1] != 'zero' else ('c', 0)
        elif mn in ('or', 'addu', 'daddu', 'add', 'dadd') and n == 3:
            a = g(ops[1]) if ops[1] != 'zero' else ('c', 0)
            c = g(ops[2]) if ops[2] != 'zero' else ('c', 0)
            if a and c and a[0] == 'c' and c[0] == 'c':
                val = ('c', (a[1] | c[1]) if mn == 'or' else a[1] + c[1])
            elif mn != 'or' and a and c:
                if a[0] == 'b' and c[0] == 'c':
                    val = ('b', a[1], a[2] + c[1])
                elif c[0] == 'b' and a[0] == 'c':
                    val = ('b', c[1], c[2] + a[1])
        elif mn in ('dsll', 'sll', 'dsll32', 'dsrl', 'dsrl32', 'srl') and n == 3:
            s = g(ops[1])
            if s and s[0] == 'c':
                sa = int(ops[2], 0)
                if mn == 'dsll32':
                    sa += 32
                if mn == 'dsrl32':
                    sa += 32
                v = s[1] & ((1 << 64) - 1)
                if mn in ('dsll', 'dsll32', 'sll'):
                    r = v << sa
                    r &= 0xffffffff if mn == 'sll' else (1 << 64) - 1
                    val = ('c', signed(r, 32 if mn == 'sll' else 64))
                else:
                    val = ('c', v >> sa)
        if val is None:
            regs.pop(d, None)
        else:
            regs[d] = val

    def access(self, bid, func, off, acc, tgt):
        if self.rb_base <= off < self.rb_base + self.rb_size:
            a = (off - self.rb_base) // self.rb_stride
            e = self.display[a]
            e['acc'].add(acc + ' read-back' + ('+4' if (off - self.rb_base) % self.rb_stride == 4 else ''))
        else:
            e = self.mmio[off]
            e['acc'].add(acc)
        e['funcs'].add(func)
        e['bins'].add(bid)
        if off == self.fifo and acc.startswith('w') and tgt and tgt[0] == 'c':
            v = tgt[1] & ((1 << 64) - 1)
            w = v >> 32 if acc == 'w64' else v & 0xffffffff
            t = (w >> 28) & 0xf
            if t in self.dtypes:
                a = (w >> 14) & 0x3fff
                d = self.display[a]
                d['acc'].add('w32 fifo header')
                d['types'].add(t)
                d['funcs'].add(func)
                d['bins'].add(bid)


# --------------------------------------------------------------- ioctl tables

def read_tables(cfg):
    from elftools.elf.elffile import ELFFile
    out = []
    for t in cfg['ioctl_tables']:
        path = t['archive']
        if not os.path.exists(path):
            continue
        members = ar_members(path) if is_ar(path) else [('', open(path, 'rb').read())]
        for name, body in members:
            if t['member'] and name != t['member']:
                continue
            e = ELFFile(io.BytesIO(body))
            sec = e.get_section_by_name(t['section'])
            rel = e.get_section_by_name('.rel' + t['section']) or e.get_section_by_name('.rela' + t['section'])
            sym = e.get_section_by_name('.symtab')
            if not (sec and rel and sym):
                continue
            data = sec.data()
            funcs = sorted((s['st_value'], s.name) for s in sym.iter_symbols()
                           if s['st_info']['type'] == 'STT_FUNC' and s.name)
            fmap = {a: n for a, n in funcs}
            relocs = []
            for r in rel.iter_relocations():
                s = sym.get_symbol(r['r_info_sym'])
                off = r['r_offset']
                if s.name and not s.name.startswith('.'):
                    nm = s.name
                else:
                    wid = 8 if e.elfclass == 64 else 4
                    addr = int.from_bytes(data[off:off + wid], 'big')
                    nm = fmap.get(addr, '')
                    if not nm:
                        continue
                relocs.append((off, nm))
            if t['start'] == 'auto':
                cands = [o for o, n in relocs if n.startswith(t.get('prefix', ''))]
                if not cands:
                    continue
                start = min(cands)
            else:
                start = num(t['start'])
            stride, base = t['stride'], num(t['base'])
            for off, nm in sorted(relocs):
                if off < start or (off - start) % stride or (off - start) // stride >= t['count']:
                    continue
                if t.get('prefix') and not nm.startswith(t['prefix']):
                    continue
                out.append({'table': t['name'], 'arch': t['arch'], 'number': base + (off - start) // stride,
                            'handler': nm, 'strip': t.get('strip', ''), 'src': os.path.basename(path)})
    return out


# ------------------------------------------------------------------- ucode

def ucode_routines(cfg):
    mod = importlib.import_module(cfg['ucode_entries_module'])
    entries = set(mod.ENTRIES)
    rows = []
    seen = {}
    for u in cfg['ucode']:
        p = u['path']
        if not os.path.exists(p):
            continue
        s = sha(p)
        if s in seen:
            seen[s]['images'].append(os.path.basename(p))
            continue
        data = open(p, 'rb').read()
        n = len(data) // 12
        vals = struct.unpack('>%dH' % (n * 6), data[:n * 12])
        recs = []
        for i in range(n):
            w = 0
            for h in vals[i * 6:i * 6 + 6]:
                w = (w << 16) | h
            recs.append(w)
        ends = [i for i, w in enumerate(recs) if (w & 3) in (1, 2)]
        ent = set()
        for e in entries:
            if u['kernel_copy']:
                if e >= mod.INSERT_AT:
                    if e < mod.INSERT_AT + mod.INSERT_LEN:
                        continue
                    e -= mod.INSERT_LEN
            ent.add(e)
        starts = {0} | {i + 5 for i in ends if i + 5 < n} | {e for e in ent if e < n}
        import bisect
        for st in sorted(starts):
            k = bisect.bisect_left(ends, st)
            endmark = ends[k] if k < len(ends) else -1
            rows.append({'image': os.path.basename(p), 'start': st, 'end_mark': endmark,
                         'records': (endmark - st + 1) if endmark >= 0 else 0,
                         'entry': 'host' if st in ent else 'follows-end-mark' if st != 0 else 'image-start',
                         'beyond_ram': 'yes' if st >= mod.RAM_WORDS else 'no'})
        seen[s] = {'images': [os.path.basename(p)]}
    return rows


# ------------------------------------------------------------------ output

def write_tsv(path, header, rows):
    with open(path, 'w') as f:
        f.write('\t'.join(header) + '\n')
        for r in rows:
            f.write('\t'.join(str(x) for x in r) + '\n')


def pct(a, b):
    return '%.1f' % (100.0 * a / b) if b else '0.0'


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--config', default='scripts/inventory.json')
    ap.add_argument('--out', default='docs/inventory')
    ap.add_argument('--no-coverage', action='store_true')
    a = ap.parse_args()
    cfg = json.load(open(a.config))
    os.makedirs(a.out, exist_ok=True)
    docs = DocIndex(cfg['docs'])
    bins = load_binaries(cfg)

    # binaries and functions
    fn = collections.OrderedDict()
    brow = []
    for b in bins:
        fl = functions_of(b)
        b['nfunc'] = len(fl) if fl is not None else 0
        note = 'raw image' if fl is None else ('no symbols (stripped)' if not fl else '')
        brow.append([b['id'], b['group'], b['role'], b['arch'], ','.join(b['builds']),
                     b['size'], b['sha'][:16], b['nfunc'], ','.join(sorted(b['scan'])) or '-', note,
                     ' '.join(b['paths'])])
        for r in fl or []:
            e = fn.setdefault(r['name'], {'bins': [], 'roles': set(), 'members': set(), 'addr': r['addr'],
                                          'size': r['size'], 'src': set()})
            if b['id'] not in e['bins']:
                e['bins'].append(b['id'])
            e['roles'].add(b['role'])
            if r['member']:
                e['members'].add(r['member'])
            e['src'].add(r['src'])
            if not e['addr'] and r['addr']:
                e['addr'], e['size'] = r['addr'], r['size']
    write_tsv(os.path.join(a.out, 'binaries.tsv'),
              ['id', 'group', 'role', 'arch', 'builds', 'bytes', 'sha256_16', 'functions', 'scanned_for',
               'note', 'paths'], brow)
    frows = []
    counts = collections.Counter()
    for name in sorted(fn):
        e = fn[name]
        st = docs.ident(name)
        role = 'board' if 'board' in e['roles'] else 'shared'
        frows.append([name, role, ','.join(sorted(e['members']))[:60], ','.join(sorted(e['src'])), e['addr'] and '0x%x' % e['addr'],
                      e['size'] or '', len(e['bins']), ','.join(e['bins']), st[0], st[1], st[2]])
        counts[(role, st[0])] += 1
    write_tsv(os.path.join(a.out, 'functions.tsv'),
              ['symbol', 'role', 'members', 'source', 'addr', 'size', 'binaries', 'binary_ids', 'status', 'doc', 'section'],
              frows)

    # scans
    sc = Scanner(cfg)
    for b in bins:
        kinds = b['scan']
        if kinds and is_elf(b['path']) or kinds and is_ar(b['path']):
            sc.scan(b, kinds)

    mrows = []
    mcount = collections.Counter()
    for off in sorted(sc.mmio):
        e = sc.mmio[off]
        st = docs.value(off)
        mrows.append(['board', '0x%x' % off, ','.join(sorted(e['acc'])), len(e['funcs']),
                      ','.join(sorted(e['funcs']))[:200], ','.join(sorted(e['bins'])), st[0], st[1], st[2]])
        mcount[st[0]] += 1
    for ad in sorted(sc.display):
        e = sc.display[ad]
        st = docs.value(ad)
        mrows.append(['display', '0x%04x' % ad, ','.join(sorted(e['acc'])), len(e['funcs']),
                      ','.join(sorted(e['funcs']))[:200], ','.join(sorted(e['bins'])), st[0], st[1], st[2]])
        mcount[st[0]] += 1
    write_tsv(os.path.join(a.out, 'mmio.tsv'),
              ['space', 'offset', 'access', 'functions', 'function_names', 'binary_ids', 'status', 'doc', 'section'],
              mrows)

    trows = []
    tcount = collections.Counter()
    blocks = collections.defaultdict(lambda: {'words': set(), 'funcs': collections.Counter(), 'bins': set()})
    for w in sorted(sc.tokens):
        e = sc.tokens[w]
        fam = Scanner.family(w)
        st = docs.value(w & 0xffffffff)
        if fam == 'class1':
            bid_ = w & 0x3ff
            bl = blocks[bid_]
            bl['words'].add(w)
            bl['funcs'].update(e['funcs'])
            bl['bins'] |= e['bins']
            cnt = (w >> 10) & 0xf
            extra = 'count=%d id=0x%03x%s' % (cnt, bid_, ' prim' if w & 0x4000 else '')
        elif fam == 'attribute':
            extra = 'slot=%d count=%d op=0x%02x' % ((w >> 24) & 0x3f if w >> 24 != 0x80 else 0, (w >> 10) & 0xf, w & 0x3ff)
        else:
            extra = 'reg=0x%02x' % (w >> 24)
        top = ','.join(f for f, _ in e['funcs'].most_common(3))
        trows.append(['word', '0x%08x' % w, fam, extra, sum(e['funcs'].values()), top, ','.join(sorted(e['bins'])),
                      st[0], st[1], st[2]])
        tcount[st[0]] += 1
    for i in sorted(blocks):
        bl = blocks[i]
        st = docs.best(docs.ints.get(i, []),
                       lambda h: any(c in h[3] for c in ('block', 'reg ', 'register', ' id', 'ids', 'reg_')))
        trows.append(['block', '0x%03x' % i, 'class1', 'words=%d' % len(bl['words']), sum(bl['funcs'].values()),
                      ','.join(f for f, _ in bl['funcs'].most_common(3)), ','.join(sorted(bl['bins'])),
                      st[0], st[1], st[2]])
        tcount[st[0]] += 1
    write_tsv(os.path.join(a.out, 'tokens.tsv'),
              ['kind', 'value', 'family', 'fields', 'sites', 'top_functions', 'binary_ids', 'status', 'doc', 'section'],
              trows)

    irows = []
    icount = collections.Counter()
    tabs = read_tables(cfg)
    byn = collections.OrderedDict()
    for t in tabs:
        k = (t['table'], t['number'])
        e = byn.setdefault(k, {'handlers': set(), 'arch': set(), 'strip': t['strip']})
        e['handlers'].add(t['handler'])
        e['arch'].add(t['arch'])
    users = {}
    for v, e in sc.ioctl_consts.items():
        users[v] = e
    for (tname, n), e in sorted(byn.items(), key=lambda kv: (kv[0][0], kv[0][1])):
        hs = sorted(e['handlers'])
        sts = []
        for h in hs:
            sts.append(docs.ident(h))
            if e['strip'] and h.startswith(e['strip']):
                sts.append(docs.ident(h[len(e['strip']):]))
        full = 0x6f640000 + (n - 0x6f640000) if n >= 0x6f640000 else n
        if n >= 0x6f640000:
            sts.append(docs.value(n, ('ioctl', 'private')))
        st = merge_status(*sts)
        u = users.get(n)
        irows.append([tname, '0x%08x' % n if n >= 0x10000 else n, ','.join(hs), ','.join(sorted(e['arch'])),
                      ','.join(f for f, _ in u['funcs'].most_common(3)) if u else '', st[0], st[1], st[2]])
        icount[st[0]] += 1
    known = {n for (_, n) in byn}
    for v in sorted(users):
        if v in known:
            continue
        st = docs.value(v, ('ioctl', 'private'))
        irows.append(['user-constant', '0x%08x' % v, '', '', ','.join(f for f, _ in users[v]['funcs'].most_common(3)),
                      st[0], st[1], st[2]])
        icount[st[0]] += 1
    write_tsv(os.path.join(a.out, 'ioctls.tsv'),
              ['table', 'number', 'handler', 'arch', 'user_functions', 'status', 'doc', 'section'], irows)

    urows = []
    ucount = collections.Counter()
    for r in ucode_routines(cfg):
        st = docs.routine(r['start'])
        urows.append([r['image'], r['start'], r['end_mark'], r['records'], r['entry'], r['beyond_ram'],
                      st[0], st[1], st[2]])
        ucount[st[0]] += 1
    write_tsv(os.path.join(a.out, 'ucode.tsv'),
              ['image', 'start_record', 'end_mark_record', 'records', 'start_kind', 'beyond_ram', 'status', 'doc', 'section'],
              urows)

    # summary
    def tri(c):
        return c['documented'], c['named-only'], c['undocumented']

    summ = []
    for role in ('board', 'shared'):
        c = {k: counts[(role, k)] for k in ('documented', 'named-only', 'undocumented')}
        summ.append(('functions (%s binaries)' % role, c))
    summ.append(('functions (all)', {k: counts[('board', k)] + counts[('shared', k)]
                                     for k in ('documented', 'named-only', 'undocumented')}))
    for name, c in (('mmio', mcount), ('tokens', tcount), ('ioctls', icount), ('ucode', ucount)):
        summ.append((name, {k: c[k] for k in ('documented', 'named-only', 'undocumented')}))
    srows = []
    for name, c in summ:
        tot = sum(c.values())
        srows.append([name, tot, c['documented'], c['named-only'], c['undocumented'],
                      pct(c['documented'], tot), pct(c['documented'] + c['named-only'], tot)])
    write_tsv(os.path.join(a.out, 'summary.tsv'),
              ['inventory', 'rows', 'documented', 'named_only', 'undocumented', 'pct_documented', 'pct_named_or_better'],
              srows)
    for r in srows:
        print('\t'.join(str(x) for x in r))
    if not a.no_coverage:
        update_coverage(srows, bins, fn, sc)


def update_coverage(srows, bins, fn, sc):
    path = 'docs/coverage.md'
    text = open(path).read()
    b, e = '<!-- inventory:begin -->', '<!-- inventory:end -->'
    if b not in text:
        return
    nbin = len(bins)
    occ = sum(len(v['bins']) for v in fn.values())
    lines = [b, '',
             'Measured from the binaries by `scripts/inventory.py` (rows in `docs/inventory/`). '
             '%d distinct files in scope, %d function symbols (%d name-in-binary occurrences). '
             'A row is documented when the repository writes about it, named-only when it only lists it, '
             'undocumented when it never mentions it.' % (nbin, len(fn), occ), '',
             '| Inventory | Rows | Documented | Named only | Undocumented | % documented | % documented or named |',
             '|---|---|---|---|---|---|---|']
    for r in srows:
        lines.append('| %s | %d | %d | %d | %d | %s | %s |' % tuple(r))
    lines += ['', e]
    pat = re.compile(re.escape(b) + '.*?' + re.escape(e), re.S)
    open(path, 'w').write(pat.sub(lambda m: '\n'.join(lines), text))


if __name__ == '__main__':
    main()
