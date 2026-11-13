#!/usr/bin/env python3
"""Message catalogue for the compositor diagnostic and the Odyssey kernel driver.

Usage: tools/diag_messages.py [--out docs/diag-messages.tsv] [--only SUBSTRING] [--limit N]

Every call in a target to a printing routine (printf, fprintf, vfprintf, puts, fputs, perror,
sprintf, vsprintf, snprintf, cmn_err) becomes one row: the call site, the routine holding it,
the binary, the format or string the call passes, the severity or stream it shows, and the
condition it sits under.

The format and the severity argument are resolved from the instructions that set them, not
from the fact sheet's argument values: the fact sheet drops the immediate of a relocated
address in a relocatable object. The condition comes from the routine's basic blocks and the
edges between them. A call is gated by a conditional branch when it is reachable only through one
arm of that branch: with the other arm's edge removed, the call cannot be reached from the entry.
A call that some path through the routine returns without is not unconditional, and the text says
so when no single branch decides it.

Run from the repository root inside the toolchain environment (MIPS objdump and pyelftools,
as for retools/tools/facts.py). The TSV is sorted and has no timestamps, so the same inputs give
the same bytes.
"""
import argparse
import os
import re
import sys

os.environ['LC_ALL'] = os.environ['LANG'] = 'C'
HERE = os.path.dirname(os.path.abspath(__file__))
REPO = os.path.dirname(HERE)
sys.path.insert(0, HERE)
sys.path.insert(0, os.path.join(REPO, 'retools', 'tools'))

import facts  # noqa: E402

sys.setrecursionlimit(20000)
import inventory  # noqa: E402

from elftools.elf.enums import ENUM_RELOC_TYPE_MIPS  # noqa: E402

# pyelftools maps relocation names to numbers; the reader needs the other way round
RELOC_NAMES = {v: k for k, v in ENUM_RELOC_TYPE_MIPS.items()}

# callee -> (output kind, argument index of the format or string, argument index of the stream or level)
PRINTERS = {
    'printf': ('stdout', 0, None),
    'puts': ('stdout', 0, None),
    'fprintf': ('stream', 1, 0),
    'vfprintf': ('stream', 1, 0),
    'fputs': ('stream', 0, 1),
    'perror': ('stderr', 0, None),
    'sprintf': ('buffer', 1, None),
    'vsprintf': ('buffer', 1, None),
    'snprintf': ('buffer', 2, None),
    'cmn_err': ('cmn_err', 1, 0),
}

# cmn_err levels by their CE_ names, which are the syslog levels, so the number is the one a0 holds once the flag bits (0x8, 0x10, 0x20, ...) are masked
CE_LEVELS = {0: 'CE_PANIC', 1: 'CE_ALERT', 4: 'CE_WARN', 5: 'CE_NOTE', 6: 'CE_CONT', 7: 'CE_DEBUG'}

# words that name board hardware in a message (matched as whole words, case-insensitively). "board" is
# left out: the driver's messages all start "odsy board %d", so it would flag every kernel message.
HW_WORDS = ('register', 'registers', 'reg', 'regs', 'DMA', 'interrupt', 'interrupts', 'IRQ', 'FIFO', 'pipe',
            'BUZZ', 'I2C', 'DDC', 'DVI', 'TMDS', 'RAMDAC', 'DAC', 'DCD2', 'PLL', 'clock', 'reset', 'timeout',
            'retrace', 'compositor', 'tile', 'gamma', 'CRC', 'ECC', 'parity', 'sync', 'PROM', 'Denali',
            'Rainier', 'bank', 'fetchcond')
HW_RE = re.compile(r'(?<![A-Za-z0-9_])(' + '|'.join(re.escape(w) for w in HW_WORDS) + r')(?![A-Za-z0-9_])', re.I)

BRANCH_COND = {'beq', 'bne', 'beql', 'bnel', 'beqz', 'bnez', 'beqzl', 'bnezl', 'blez', 'bgtz', 'bltz', 'bgez',
               'blezl', 'bgtzl', 'bltzl', 'bgezl', 'bc1t', 'bc1f', 'bc1tl', 'bc1fl'}
BRANCH_UNCOND = {'b', 'j'}
LIKELY = {'beql', 'bnel', 'beqzl', 'bnezl', 'blezl', 'bgtzl', 'bltzl', 'bgezl', 'bc1tl', 'bc1fl'}
CALL_MN = {'jal', 'jalr', 'bal', 'bgezal', 'bltzal', 'bgezall', 'bltzall', 'jalx'}
SAVED = {'s0', 's1', 's2', 's3', 's4', 's5', 's6', 's7', 's8', 'gp', 'sp', 'fp'}
WRITERS = {'addiu', 'daddiu', 'addu', 'daddu', 'ori', 'or', 'lui', 'move', 'andi', 'and', 'xori', 'xor',
           'lw', 'ld', 'lwu', 'lbu', 'lhu', 'lb', 'lh', 'subu', 'dsubu', 'dsll', 'sll', 'dsrl', 'srl', 'li'}
MAX_WALK = 160
TARGETS = [
    ('compositor-diagnostic', 'usr/diags/compositor/bin/sting'),
    ('field-diagnostic', 'builds/odydiags-6.5.15/usr/diags/ody/odydiags'),
]
# the Odyssey driver archive of each kernel build: IP30 (Octane2) and IP35 (Fuel, Tezro, Onyx 350)
KERNEL_ARCHIVES = [('kernel-driver', 'usr/cpu/sysgen/IP30boot/odyssey.a'),
                   ('kernel-driver-ip35', 'usr/cpu/sysgen/IP35boot/odyssey.a')]


def parse_ins(text):
    parts = text.split(None, 1)
    mn = parts[0]
    ops = [o.strip() for o in parts[1].split(',')] if len(parts) > 1 else []
    return mn, ops


def imm_of(op):
    try:
        return int(op, 0)
    except (ValueError, TypeError):
        return None


def mem_of(op):
    m = re.fullmatch(r'(-?(?:0x)?[0-9a-fA-F]+)\((\w+)\)', op)
    if not m:
        return None
    return imm_of(m.group(1)), m.group(2)


class Routine:
    """Instructions, branch targets and reloc-derived values of one routine."""

    def __init__(self, f, rels, srdata, gp0):
        self.f = f
        self.rels = rels
        self.srdata = srdata
        self.gp0 = gp0
        self.ins = []
        for k, (a, text) in enumerate(f['insns']):
            mn, ops = parse_ins(text)
            self.ins.append(dict(i=k, addr=int(a, 16), mn=mn, ops=ops, text=text))
        self.addr_index = {x['addr']: x['i'] for x in self.ins}
        self.labels = {0}
        self.branch_at = {}
        self.incomplete = False
        for x in self.ins:
            mn, ops = x['mn'], x['ops']
            if mn == 'beq' and len(ops) == 3 and ops[0] in ('zero', '$0') and ops[1] in ('zero', '$0'):
                # the assembler's unconditional form; it never falls through
                x['mn'] = mn = 'b'
            if mn in BRANCH_COND or mn in BRANCH_UNCOND:
                t = None
                if ops and re.fullmatch(r'[0-9a-f]+', ops[-1]):
                    t = self.addr_index.get(int(ops[-1], 16))
                x['target'] = t
                if t is None:
                    self.incomplete = True
                else:
                    self.labels.add(t)
                self.branch_at[x['i']] = x
            elif mn == 'jr' and ops and ops[0] != 'ra':
                self.incomplete = True
        self.gp_loads = {int(g['address'], 16): g for g in f.get('got_loads', [])}
        self.memo_d = {}
        self.busy = set()

    def writes(self, x, reg):
        return x['mn'] in WRITERS and x['ops'] and x['ops'][0] == reg

    def value_before(self, reg, idx):
        """Value of register reg just before instruction idx runs, or None when not resolved.

        ('abs', n) is a linked address or constant; ('rodata', n) is an offset into the object's
        .rodata; ('gotaddr', name) is the address of a named dynamic symbol; ('stream', name) is
        the value of such a symbol (its FILE pointer).
        """
        if reg in ('zero', '$0'):
            return ('abs', 0)
        if idx < 0:
            return None
        if self.block_start(idx):
            return self.value_at_label(reg, idx)
        return self.linear_before(reg, idx)

    def memo(self, key, fn):
        """Cache a value per (register, position). A key asked again while it is being computed is a
        cycle through a loop, which resolves to nothing."""
        if key in self.memo_d:
            return self.memo_d[key]
        if key in self.busy:
            return None
        self.busy.add(key)
        try:
            v = fn()
        finally:
            self.busy.discard(key)
        self.memo_d[key] = v
        return v

    def linear_before(self, reg, idx):
        """Walk back from idx over the instructions that run in sequence before it."""
        return self.memo(('linear', reg, idx), lambda: self._linear_before(reg, idx))

    def _linear_before(self, reg, idx):
        j = idx - 1
        steps = 0
        while j >= 0 and steps < MAX_WALK:
            steps += 1
            x = self.ins[j]
            mn = x['mn']
            if mn in CALL_MN and reg not in SAVED:
                return None
            if self.writes(x, reg):
                # a branch-likely delay slot runs only on the taken path, so the value is path-dependent
                if j - 1 in self.branch_at and self.ins[j - 1]['mn'] in LIKELY:
                    return None
                return self.write_value(x, j)
            if j > 0 and self.block_start(j):
                return self.value_at_label(reg, j)
            j -= 1
        return None

    def block_start(self, k):
        """Whether instruction k begins a block that control enters other than by falling through:
        a branch target, or the first instruction after an unconditional branch or a return."""
        if k in self.labels:
            return True
        if k < 2:
            return False
        prev = self.ins[k - 2]
        return (prev['i'] in self.branch_at and prev['mn'] in BRANCH_UNCOND) or \
               (prev['mn'] == 'jr' and prev['ops'][:1] == ['ra'])

    def value_at_label(self, reg, idx):
        """Value at a block start: the common value of every way in. A taken branch brings the value
        after its delay slot; falling through from the instruction before brings the value there.
        Any path that does not resolve, or two paths that differ, leaves it unresolved."""
        if idx < 0:
            return None
        return self.memo(('label', reg, idx), lambda: self._value_at_label(reg, idx))

    def _value_at_label(self, reg, idx):
        n = len(self.ins)
        vals = []
        for p, x in sorted(self.branch_at.items()):
            if x.get('target') != idx:
                continue
            if p + 1 >= n or self.ins[p]['mn'] in LIKELY:
                return None
            delay = self.ins[p + 1]
            if self.writes(delay, reg):
                vals.append(self.write_value(delay, p + 1))
            else:
                vals.append(self.value_before(reg, p + 1))
        prev = self.ins[idx - 1] if idx >= 1 else None
        falls = idx >= 1 and not (idx >= 2 and ((self.ins[idx - 2]['i'] in self.branch_at and
                                                 self.ins[idx - 2]['mn'] in BRANCH_UNCOND) or
                                                (self.ins[idx - 2]['mn'] == 'jr' and
                                                 self.ins[idx - 2]['ops'][:1] == ['ra'])))
        if falls and prev is not None:
            vals.append(self.linear_before(reg, idx))
        if not vals or any(v is None for v in vals):
            return None
        if any(v != vals[0] for v in vals[1:]):
            return None
        return vals[0]

    def write_value(self, x, j):
        mn, ops = x['mn'], x['ops']
        if mn in ('addiu', 'daddiu', 'addu', 'daddu'):
            if mn in ('addu', 'daddu'):
                if len(ops) != 3 or ops[2] not in ('zero', '$0'):
                    return None
                src, k = ops[1], 0
            else:
                src, k = ops[1], imm_of(ops[2])
                if k is None:
                    return None
            if src in ('zero', '$0'):
                return ('abs', k)
            if src == 'gp':
                # a gp-relative address of a linked file; gp itself is the routine's (from the fact sheet)
                gp = self.f['routine'].get('gp')
                return ('abs', int(gp, 16) + k) if gp else None
            pv = self.value_before(src, j)
            if pv is None or pv[0] not in ('abs', 'rodata'):
                return None
            return (pv[0], pv[1] + k)
        if mn == 'move' and len(ops) == 2:
            return self.value_before(ops[1], j)
        if mn in ('or', 'ori') and len(ops) == 3 and ops[2] in ('zero', '$0'):
            return self.value_before(ops[1], j)
        if mn == 'lui':
            k = imm_of(ops[1])
            if k is None:
                return None
            rel = self.rels.get(x['addr'])
            if rel is not None:
                if rel[0] == 'R_MIPS_HI16' and rel[1] == '.rodata':
                    return ('rodata', (k & 0xffff) << 16)
                return None
            return ('abs', (k & 0xffff) << 16)
        if mn in ('lw', 'ld', 'lwu', 'lh', 'lhu', 'lb', 'lbu'):
            mem = mem_of(ops[1])
            if mem is None:
                return None
            off, base = mem
            if base == 'gp':
                g = self.gp_loads.get(x['addr'])
                if g is not None:
                    if g.get('name'):
                        return ('gotaddr', g['name'])
                    if g.get('value') is not None:
                        return ('abs', int(g['value'], 16))
                    return None
                rel = self.rels.get(x['addr'])
                if rel is not None and rel[0] == 'R_MIPS_GPREL16' and rel[1] == '.srdata':
                    # the instruction's offset is the slot's offset in .srdata minus the object's gp base
                    return self.srdata.get(off + self.gp0)
                return None
            pv = self.value_before(base, j)
            if pv is not None and pv[0] == 'gotaddr' and off == 0:
                return ('stream', pv[1])
            return None
        return None


def read_string(img, val, limit=512):
    """The NUL-terminated text a ('rodata'|'abs', n) value points at, and whether it ended."""
    out = bytearray()
    for k in range(limit):
        if val[0] == 'rodata':
            b = img.read_section('.rodata', val[1] + k, 1)
        else:
            b = img.read(val[1] + k, 1)
        if not b:
            return None, False
        if b == b'\x00':
            return out.decode('latin-1'), True
        out += b
    return out.decode('latin-1') + '...', False


# Driver request names that a message prints are described in words here, as the other documents do.
REQUEST_WORDS = {
    'GFX_OFLOW_INTR': 'the overflow interrupt graphics-driver request',
    'GFX_XTALK_STALL': 'the crosstalk-link stall graphics-driver request',
    'ODSY_BRDMGR_VTG_CONTROL': 'the board-manager video timing control request',
}


def show(s):
    for name, words in REQUEST_WORDS.items():
        s = s.replace(name, words)
    return s.replace('\\', '\\\\').replace('\t', '\\t').replace('\n', '\\n').replace('\r', '\\r')


def cond_text(mn, ops, taken):
    """What the register test says when the branch is taken or falls through."""
    def r(x):
        return 'zero' if x == '$0' else x
    pos = {'beq': '==', 'beql': '==', 'bne': '!=', 'bnel': '!=', 'beqz': '==', 'beqzl': '==',
           'bnez': '!=', 'bnezl': '!='}
    if mn in ('beq', 'beql', 'bne', 'bnel') and len(ops) == 2:
        op = pos[mn]
        if not taken:
            op = '!=' if op == '==' else '=='
        return '%s %s %s' % (r(ops[0]), op, r(ops[1]))
    if mn in ('beqz', 'beqzl', 'bnez', 'bnezl') and len(ops) == 1:
        op = pos[mn]
        if not taken:
            op = '!=' if op == '==' else '=='
        return '%s %s 0' % (r(ops[0]), op)
    rel = {'bltz': ('<', '>='), 'bltzl': ('<', '>='), 'bgez': ('>=', '<'), 'bgezl': ('>=', '<'),
           'blez': ('<=', '>'), 'blezl': ('<=', '>'), 'bgtz': ('>', '<='), 'bgtzl': ('>', '<=')}
    if mn in rel and len(ops) == 1:
        t, f = rel[mn]
        return '%s %s 0' % (r(ops[0]), t if taken else f)
    if mn.startswith('bc1'):
        return 'the FP condition is %s' % ('true' if mn.startswith('bc1t') == taken else 'false')
    return None


class Blocks:
    """Basic blocks, successors and dominator sets of one routine."""

    def __init__(self, R):
        n = len(R.ins)
        leaders = {0}
        for i, x in R.branch_at.items():
            if i + 2 < n:
                leaders.add(i + 2)
            if x.get('target') is not None:
                leaders.add(x['target'])
        for x in R.ins:
            if x['mn'] == 'jr' and x['ops'][:1] == ['ra'] and x['i'] + 2 < n:
                leaders.add(x['i'] + 2)
        starts = sorted(leaders)
        self.blocks = []
        self.block_of = {}
        for b, s in enumerate(starts):
            e = starts[b + 1] if b + 1 < len(starts) else n
            self.blocks.append((s, e))
            for k in range(s, e):
                self.block_of[k] = b
        self.norig = len(self.blocks)
        # A jump that lands on a branch's delay slot runs that instruction and then the one after it,
        # not either arm of the branch. Such a landing gets a copy of the block that only falls through.
        self.entry_copy = {}
        for s, e in list(self.blocks):
            if (s - 1) in R.branch_at and e == s + 1:
                self.entry_copy[s] = len(self.blocks)
                self.blocks.append((s, e))
        nb = len(self.blocks)
        self.succ = [[] for _ in range(nb)]
        self.indirect = [False] * nb
        for s, c in self.entry_copy.items():
            nxt = self.block_of.get(s + 1)
            self.succ[c] = [nxt] if nxt is not None else []
        for b, (s, e) in enumerate(self.blocks[:self.norig]):
            br = R.branch_at.get(e - 2)
            if br is not None and br['i'] >= s:
                t = self.target_block(br)
                ft = self.block_of.get(br['i'] + 2)
                if br['mn'] in BRANCH_UNCOND:
                    self.succ[b] = [t] if t is not None else []
                else:
                    self.succ[b] = [x for x in (t, ft) if x is not None]
                continue
            # a jump register sits in the block's last two slots: the jump, then its delay slot
            jr = [R.ins[k] for k in (e - 2, e - 1) if k >= s and R.ins[k]['mn'] == 'jr']
            if jr and jr[0]['ops'][:1] == ['ra']:
                self.succ[b] = []
            elif jr:
                self.indirect[b] = True
            elif (e - 1) in R.branch_at:
                # the delay slot is the next block, one instruction long (the block after it is a leader)
                self.succ[b] = [b + 1]
            elif (s - 1) in R.branch_at:
                # a delay slot that a jump enters directly: it runs before either arm of its branch
                x = R.branch_at[s - 1]
                t = self.target_block(x)
                ft = self.block_of.get(x['i'] + 2)
                if x['mn'] in BRANCH_UNCOND:
                    self.succ[b] = [t] if t is not None else []
                else:
                    self.succ[b] = [y for y in (t, ft) if y is not None]
            elif b + 1 < nb:
                self.succ[b] = [b + 1]
        reach = {0}
        stack = [0]
        while stack:
            b = stack.pop()
            for s in self.succ[b]:
                if s not in reach:
                    reach.add(s)
                    stack.append(s)
        self.reachable = reach
        preds = {b: [] for b in reach}
        for b in reach:
            for s in self.succ[b]:
                preds[s].append(b)
        full = (1 << nb) - 1
        dom = {b: full for b in reach}
        dom[0] = 1
        changed = True
        while changed:
            changed = False
            for b in sorted(reach):
                if b == 0:
                    continue
                new = full
                for p in preds[b]:
                    new &= dom[p]
                new |= 1 << b
                if new != dom[b]:
                    dom[b] = new
                    changed = True
        self.dom = dom
        # blocks that leave the routine: a return, or a jump out (a tail call); an indirect jump is not an exit
        self.exits = [k for k in sorted(reach) if not self.succ[k] and not self.indirect[k]]

    def gate(self, R, b):
        """(branch, taken) for the nearest conditional branch that alone decides whether block b runs.

        A branch decides b when b is reachable only through one of its arms: with the other arm's
        edge removed, b cannot be reached from the entry. Dominance is not enough, because an arm
        can dominate b and still be bypassed by a path that joins it from the other side.
        """
        cands = [k for k in self.reachable if k != b and k < self.norig and (self.dom[b] >> k) & 1]
        cands.sort(key=lambda k: -bin(self.dom[k]).count('1'))
        for k in cands:
            s, e = self.blocks[k]
            # the branch is either inside the block with its delay slot, or the block's last instruction
            br = R.branch_at.get(e - 2) or R.branch_at.get(e - 1)
            if br is None or br['mn'] not in BRANCH_COND or br.get('target') is None:
                continue
            ts = self.target_block(br)
            fs = self.block_of.get(br['i'] + 2)
            # a taken arm that leaves the routine has no edge here, so it cannot be the path to b
            if fs is None or ts == fs:
                continue
            # b cannot be reached without the taken edge, so b runs only when the branch is taken
            if not self.reaches(b, k, ts):
                return br, True
            if not self.reaches(b, k, fs):
                return br, False
        return None

    def target_block(self, br):
        """The block a branch's taken edge enters: the copy of a delay slot's block when it lands on one."""
        t = br.get('target')
        if t is None:
            return None
        return self.entry_copy.get(t, self.block_of.get(t))

    def reaches(self, b, k, drop):
        """Whether block b can be reached from the entry when the edge from block k to block drop is removed."""
        seen = {0}
        stack = [0]
        while stack:
            x = stack.pop()
            if x == b:
                return True
            for y in self.succ[x]:
                if x == k and y == drop:
                    continue
                if y not in seen:
                    seen.add(y)
                    stack.append(y)
        return False


def arg_value(R, reg, idx):
    """Value of argument register reg when the callee starts, for the call at idx.

    The delay slot runs before the callee, so it is evaluated from the state before the call
    instruction (the call itself writes no register). A delay slot that sets reg is evaluated from
    its own operands: an add to reg, a gp-relative load, or a lui.
    """
    if idx + 1 >= len(R.ins) or not R.writes(R.ins[idx + 1], reg):
        return R.value_before(reg, idx)
    delay = R.ins[idx + 1]
    mn, ops = delay['mn'], delay['ops']
    if mn in ('addiu', 'daddiu') and len(ops) == 3:
        src, k = ops[1], imm_of(ops[2])
        if k is None:
            return None
        if src in ('zero', '$0'):
            return ('abs', k)
        if src == 'gp':
            gp = R.f['routine'].get('gp')
            return ('abs', int(gp, 16) + k) if gp else None
        base = R.value_before(src, idx)
        if base is None or base[0] not in ('abs', 'rodata'):
            return None
        return (base[0], base[1] + k)
    if mn in ('lw', 'ld', 'lwu', 'lh', 'lhu', 'lb', 'lbu', 'lui'):
        return R.write_value(delay, idx + 1)
    return None


def rows_for_routine(path, member, label, group, img, addr, size, rels, srdata, name):
    f = facts.fact_sheet(path, '0x%x' % addr, member=member, size=size or None, with_insns=True)
    calls = [c for c in f['calls'] if c.get('callee') in PRINTERS]
    if not calls:
        return []
    R = Routine(f, rels, srdata, img.gp0)
    B = Blocks(R)
    rows = []
    for c in calls:
        kind, fmt_arg, aux_arg = PRINTERS[c['callee']]
        idx = c['index']
        if R.ins[idx]['addr'] != int(c['address'], 16):
            raise SystemExit('index/address mismatch in %s at %s' % (name, c['address']))
        site = dict(group=group, binary=label, abi=img.abi, routine=name, routine_address='0x%x' % addr,
                    call_address=c['address'], callee=c['callee'], kind=kind, notes=[])
        if c.get('tail'):
            site['notes'].append('tail jump to the printing routine')
        fv = arg_value(R, 'a%d' % fmt_arg, idx)
        site['format_value'] = fv
        av = arg_value(R, 'a%d' % aux_arg, idx) if aux_arg is not None else None
        site['aux_value'] = av
        gate = None
        b = B.block_of.get(idx)
        if b is None or b not in B.reachable:
            # no branch of the routine reaches this code; with no indirect jump left unfollowed, that holds
            if R.incomplete or any(B.indirect):
                site['condition'] = ('not reached by the branches followed here (the routine has an '
                                     'unfollowed jump)')
            else:
                site['condition'] = 'dead code: no branch in the routine reaches it'
        else:
            gate = B.gate(R, b)
            if gate is None and all((B.dom[x] >> b) & 1 for x in B.exits):
                site['condition'] = 'no conditional branch gates the call; it runs on every path through the routine'
            elif gate is None:
                # branches join before the call, so no one branch decides it, but a path returns without it
                site['condition'] = 'no single branch decides it; some path through the routine returns without it'
            else:
                br, taken = gate
                ct = cond_text(br['mn'], br['ops'][:-1], taken)
                if ct is None:
                    site['condition'] = 'gated by branch %s at 0x%x' % (br['text'], br['addr'])
                else:
                    site['condition'] = 'runs when %s (branch %s at 0x%x %s)' % (
                        ct, br['text'], br['addr'], 'is taken' if taken else 'falls through')
        if b is not None and b in B.reachable and any(B.indirect[k] for k in B.reachable):
            site['notes'].append('the routine has an indirect jump that is not followed')
        if R.incomplete:
            site['notes'].append('branch targets incomplete, so the condition may be understated')
        if name.startswith('sub_'):
            site['notes'].append('no symbol names this routine; its end is the next routine start found by a '
                                 'direct call')
        rows.append(site)
    return rows


def finish(site):
    grade = 'established'
    notes = site.pop('notes')
    fv = site.pop('format_value')
    av = site.pop('aux_value')
    kind = site.pop('kind')
    site['output'] = 'buffer' if kind == 'buffer' else 'printed'
    text = None
    if fv is None:
        notes.append('format argument not resolved from the instructions before the call')
        grade = 'inferred'
    elif fv[0] in ('rodata', 'abs'):
        text, ok = read_string(site['_img'], fv)
        if text is None:
            notes.append('format address does not read as a string')
            grade = 'inferred'
        elif not ok:
            notes.append('string not NUL-terminated within 512 bytes')
            grade = 'inferred'
        elif text == '':
            # the file holds an empty string there; a program can fill that data at run time
            notes.append('empty string in the file image; the program may set it at run time')
            grade = 'inferred'
    else:
        notes.append('format argument is not an address (%s)' % fv[0])
        grade = 'inferred'
    del site['_img']
    sev = ''
    if kind == 'cmn_err':
        if av is not None and av[0] == 'abs':
            lv = av[1] & 7
            sev = '%s (a0 = %d)' % (CE_LEVELS.get(lv, 'level %d' % lv), av[1])
        else:
            sev = 'level not resolved'
            grade = 'inferred'
    elif kind == 'stream':
        if av is not None and av[0] == 'stream':
            sev = 'stream %s' % av[1]
        else:
            sev = 'stream not named'
            grade = 'inferred'
    elif kind == 'stdout':
        sev = 'stdout' if not site['group'].startswith('kernel-driver') else \
            'kernel printf (destination not in the call)'
    elif kind == 'stderr':
        sev = 'stderr'
    elif kind == 'buffer':
        sev = 'formats into a buffer, not printed here'
    site['severity'] = sev
    site['message'] = text
    if site['routine'].startswith('sub_'):
        # the routine's end is estimated, so the gating may rest on code that belongs to another routine
        grade = 'inferred'
    site['grade'] = grade
    site['notes'] = '; '.join(notes)
    hits = sorted(set(m.group(1) for m in HW_RE.finditer(text or '')), key=str.lower)
    site['hw_words'] = ','.join(hits)
    return site


def relocs_of(img):
    """(offset -> (type, symbol)) for .text relocations of a relocatable object; {} for linked files."""
    rels = {}
    if img.kind != 'object':
        return rels
    e = img.elf
    symtab = e.get_section_by_name('.symtab')
    for sec in e.iter_sections():
        if sec.name != '.rel.text' and sec.name != '.rela.text':
            continue
        for r in sec.iter_relocations():
            sym = symtab.get_symbol(r['r_info_sym'])
            nm = sym.name
            if sym['st_info']['type'] == 'STT_SECTION':
                nm = e.get_section(sym['st_shndx']).name
            tname = RELOC_NAMES.get(r['r_info_type'], str(r['r_info_type']))
            if tname == 'R_MIPS_NONE' and r['r_offset'] in rels:
                continue
            rels[r['r_offset']] = (tname, nm)
    return rels


def srdata_map(img):
    """Pointer slots of .srdata, by offset: ('rodata', addend) for a slot that holds an address in
    .rodata, ('other', section) for one that holds an address elsewhere."""
    e = img.elf
    out = {}
    if e is None or img.kind != 'object':
        return out
    sec = [x for x in img.sections if x['name'] == '.srdata']
    rel = e.get_section_by_name('.rel.srdata')
    if not sec or rel is None:
        return out
    data = img.read_section('.srdata', 0, sec[0]['size'])
    symtab = e.get_section_by_name('.symtab')
    for r in rel.iter_relocations():
        sym = symtab.get_symbol(r['r_info_sym'])
        nm = e.get_section(sym['st_shndx']).name if sym['st_info']['type'] == 'STT_SECTION' else sym.name
        off = r['r_offset']
        content = int.from_bytes(data[off:off + 8], 'big') if data is not None and off + 8 <= len(data) else 0
        out[off] = ('rodata', content) if nm == '.rodata' else ('other', nm)
    return out


def unnamed_routines(img, funcs):
    """Routines that the symbol tables do not name but the text calls directly. A stripped build keeps
    only its exported routines, so its static routines are found from the jal targets. Each is named
    by its address and ends where the next routine starts (or at the end of .text)."""
    texts = [s for s in img.sections if s['name'] == '.text']
    if not texts or img.elf is None:
        return {}
    sec = texts[0]
    base, size = int(sec['address'], 16), sec['size']
    targets = set()
    for ins in img.disassemble(base, size, '.text'):
        if ins['mn'] == 'jal' and ins['ops']:
            try:
                t = int(ins['ops'][0], 16)
            except ValueError:
                continue
            if t and base <= t < base + size and t not in funcs:
                targets.add(t)
    starts = sorted(set(funcs) | targets)
    out = {}
    for t in sorted(targets):
        i = starts.index(t)
        end = starts[i + 1] if i + 1 < len(starts) else base + size
        out[t] = (t, end - t, 'sub_%x' % t, '.text', True, 'call')
    return out


def targets():
    out = []
    for group, rel in TARGETS:
        out.append((group, os.path.join('root', rel), None, rel))
    for group, rel in KERNEL_ARCHIVES:
        arch = os.path.join('root', rel)
        data = open(os.path.join(REPO, arch), 'rb').read()
        for name, _ in inventory.unpack_ar(data):
            if name.startswith('odsy') or name == 'odsy.o':
                out.append((group, arch, name, rel + '(' + name + ')'))
    return out


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__.split('\n')[0])
    ap.add_argument('--out', default=None, help='TSV file to write, relative to the repository (default: stdout)')
    ap.add_argument('--only', default=None, help='keep binaries whose label contains this text')
    ap.add_argument('--limit', type=int, default=0, help='stop after this many routines (testing)')
    a = ap.parse_args(argv)
    os.chdir(REPO)
    rows = []
    done = 0
    for group, path, member, label in targets():
        if a.only and a.only not in label:
            continue
        img = facts.image(path, member)
        rels = relocs_of(img)
        srdata = srdata_map(img)
        funcs = {}
        for x in img.syms:
            if x[4] and x[0] not in funcs:
                funcs[x[0]] = x
        funcs.update(unnamed_routines(img, funcs))
        for addr in sorted(funcs):
            if a.limit and done >= a.limit:
                break
            done += 1
            x = funcs[addr]
            for site in rows_for_routine(path, member, label, group, img, addr, x[1], rels, srdata, x[2]):
                site['_img'] = img
                rows.append(finish(site))
    write(rows, a.out)
    return 0


COLS = ['hardware', 'output', 'group', 'binary', 'abi', 'routine', 'routine_address', 'call_address', 'callee',
        'severity', 'message', 'condition', 'grade', 'hw_words', 'notes']


def write(rows, out):
    rows.sort(key=lambda s: (0 if s['hw_words'] else 1, 0 if s['output'] == 'printed' else 1, s['group'],
                             s['binary'], s['routine_address'], s['call_address']))
    lines = ['\t'.join(COLS)]
    for s in rows:
        cells = {
            'hardware': 'yes' if s['hw_words'] else 'no',
            'output': s['output'],
            'group': s['group'], 'binary': s['binary'], 'abi': s['abi'], 'routine': s['routine'],
            'routine_address': s['routine_address'], 'call_address': s['call_address'],
            'callee': s['callee'], 'severity': s['severity'],
            'message': show(s['message']) if s['message'] is not None else '(not resolved)',
            'condition': s['condition'], 'grade': s['grade'], 'hw_words': s['hw_words'], 'notes': s['notes'],
        }
        lines.append('\t'.join(str(cells[c]).replace('\t', ' ') for c in COLS))
    text = '\n'.join(lines) + '\n'
    if out:
        with open(os.path.join(REPO, out), 'w', encoding='utf-8', newline='\n') as f:
            f.write(text)
    else:
        sys.stdout.write(text)


if __name__ == '__main__':
    sys.exit(main())
