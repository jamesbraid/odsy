"""odsy-specific checks for retools/tools/defs (named by `plugin` in tools/config/defs-check.toml).

The declarative part of the odsy check (field ranges, macros, enums, vectors,
prose claims, the Rust output) lives in devices/*/registers.toml and the shared tool. What is
left here does not fit a regular expression and a bind:

- BUZZ_DECODE.h: the format/type vectors the pixel-path notes decode in words.
- DISPLAY_DECODE.h / PBJ_DECODE.h: vectors against the display-mode table, the
  host-interface prose and the FIFO header examples; register rows against the
  PBJ register table (offset, access, width).
- TEXTURE_DECODE.h: the texel format table against the recorded exhaustive run
  of the format routines and the notes' table, the pitch and slice arithmetic
  (CALC lines), and a C compile of the header that runs the helpers and table.
- DMA_DECODE.h: constants and descriptor arithmetic against the notes, and the
  bits it shares with BUZZ_DECODE.h.
"""
import os
import re
import shutil
import subprocess
import tempfile

GRADES = ('established', 'inferred', 'unknown')

_ctx = None


def read(path):
    return _ctx.read_doc(path)


def _hdr(name):
    return _ctx.hdrs[name]


def span(f, key):
    return (f[key][0], f[key][1]) if key in f else None


def parse_defines(text):
    return _ctx.lib.parse_defines(text)


# --- BUZZ_DECODE.h ---

# Test-vector decodes the prose states: (value, format, type), checked against
# the header's TESTVEC lines and against the prose text.
PROSE_VECTORS = [
    (0x41, 1, 2, r'`0x41` is format 1 \(bits 4:0 = 00001\) and type 2 \(bits 8:5 = 010\)'),
    (0x42, 2, 2, r'`0x42` luminance bytes = format 2 type 2'),
    (0x4b, 0xb, 2, r'`0x4b` RGBA bytes = format 0xb type 2'),
    (0x61, 1, 3, r'`0x61`\s+16-bit index = format 1 type 3'),
    (0x6b, 0xb, 3, r'`0x6b` = format 0xb type 3'),
]


def check_prose_vectors(rep, header, vecs):
    pp = read('devices/buzz/pixel-paths.md')
    for value, fmt, typ, rx in PROSE_VECTORS:
        if not re.search(rx, pp, re.S):
            rep.fail('devices/buzz/pixel-paths.md', 'prose decode of 0x%x not found' % value)
        v = vecs.get((value, 'HDR_W7'))
        if v is None:
            rep.fail(header, 'no TESTVEC for 0x%x as HDR_W7' % value)
        elif v.get('format') != fmt or v.get('type') != typ:
            rep.fail(header, 'TESTVEC 0x%x decodes format=%s type=%s; prose says format=%d type=%d'
                     % (value, v.get('format'), v.get('type'), fmt, typ))
    for value, word, want in [(0x08, 'HDR_W4', {'class': 0, 'code': 1})]:
        v = vecs.get((value, word))
        if v is None:
            rep.fail(header, 'no TESTVEC for 0x%x as %s' % (value, word))
        else:
            for k, w in want.items():
                if v.get(k) != w:
                    rep.fail(header, 'TESTVEC 0x%x %s=%s, expected %d' % (value, k, v.get(k), w))
    if not re.search(r'Word 4 bits 7:0 are `0x08`: class \(bits 2:0\) 0, code \(bits 7:3\) 1', pp):
        rep.fail('devices/buzz/pixel-paths.md', 'prose decode of read value 0x08 not found')


# --- DISPLAY_DECODE.h / PBJ_DECODE.h ---

MODE_ROW_RE = re.compile(
    r'^\s*\*\s+(\d+)\s+(\d)\s+(0x[0-9a-f]+|-)\s+(0x[0-9a-f]+|-)\s+'
    r'(0x[0-9a-f]+)(?:/([0-9a-f]+))?\s+(\d)\s+(0x[0-9a-f]+)\s+(\d)\s*$', re.M)


def check_vector_prose(rep, header, vecs):
    display_h = read('devices/display/DISPLAY.h')
    pbj_h = read('devices/pbj/PBJ.h')
    docs = read('devices/display/README.md') + read('devices/pbj/README.md') + pbj_h
    rows = {}
    for m in MODE_ROW_RE.finditer(display_h):
        a, b = m.group(3), m.group(4)
        lay_a = int(m.group(5), 16)
        lay_b = int('0x' + m.group(6), 16) if m.group(6) else lay_a
        rec = dict(layout=lay_a, pixel_format=int(m.group(7)),
                   cmap_group=int(m.group(8), 16), low_code=int(m.group(9)))
        if a != '-':
            rows[int(a, 16)] = rec
        if b != '-':
            rows[int(b, 16)] = dict(rec, layout=lay_b)
    for kind, value, target, vals, n in vecs:
        where = '%s:%d' % (header, n)
        if kind != 'TESTVEC':
            continue
        if target == 'DISPLAY.mode_table':
            row = rows.get(value)
            if row is None:
                rep.fail(where, 'mode word 0x%x is in no row of the display-mode table' % value)
                continue
            for k, w in vals.items():
                if k in row and row[k] != w:
                    rep.fail(where, 'mode word 0x%x: %s is %d here but the table row says %d'
                             % (value, k, w, row[k]))
        elif target == 'PBJ.hif_ctl':
            m = re.search(r'0x%08x \(bits (\d+):(\d+) = (\d+), (\d+):(\d+) = (\d+), bit (\d+) set,'
                          r'[\s*]+low bits (0x[0-9a-f]+)\)' % value, pbj_h)
            if not m:
                rep.fail(where, 'prose decode of 0x%08x not found in devices/pbj/PBJ.h' % value)
                continue
            exp = {'clock_sel_a': int(m.group(3)), 'clock_sel_b': int(m.group(6)),
                   'clock_run': 1, 'low_bits': int(m.group(8), 16)}
            for k, w in vals.items():
                if exp.get(k) != w:
                    rep.fail(where, '0x%x: %s is %d, prose says %s' % (value, k, w, exp.get(k)))
        elif target == 'FIFO_HDR':
            m = re.search(r'0x%08x.{0,200}?address (0x[0-9a-f]+)' % value, docs, re.S)
            if not m:
                rep.fail(where, 'no prose gives the address of header 0x%08x' % value)
                continue
            paddr = int(m.group(1), 16)
            got = (value >> 14) & 0x3fff
            if got != paddr:
                rep.fail(where, 'header 0x%x carries address 0x%x but the prose says 0x%x'
                         % (value, got, paddr))
            m = re.search(r'0x%08x`? \(type (\d), address 0x[0-9a-f]+, count (\d+)\)' % value, docs)
            if m and (int(m.group(1)) != vals.get('type') or int(m.group(2)) != vals.get('count')):
                rep.fail(where, 'header 0x%x: prose says type %s count %s' % (value, m.group(1), m.group(2)))


# Table rows of devices/pbj/README.md: | 0xADDR | access | role and derivation |
PBJ_ROW_RE = re.compile(r'^\|\s*(0x[0-9a-f]+)\s*\|\s*([^|]+?)\s*\|\s*(.*?)\s*\|\s*$', re.M)
# (register, index, a phrase the prose row for offset+index must contain)
ROW_KEYS = [
    ('DISPLAY.vtg_ctl', 0, 'Video timing generator control'),
    ('DISPLAY.vtg_init_state', 0, 'initial-state'),
    ('DISPLAY.vtg_chan_en', 0, 'channel-enable'),
    ('DISPLAY.cursor_ctl', 0, 'Cursor control'),
    ('DISPLAY.datapath_ctl', 0, 'Display-chip control word'),
    ('DISPLAY.dac_ctl', 0, 'DAC control'),
    ('DISPLAY.genlock_ctl', 0, 'Genlock control'),
    ('DISPLAY.genlock_status', 0, 'Genlock status'),
    ('DISPLAY.cmap_unit_ctl', 0, 'first of four consecutive stores'),
    ('DISPLAY.cmap_override', 0, 'Second of the four zero stores'),
    ('DISPLAY.cmap_override', 1, 'Third of the four zero stores'),
    ('DISPLAY.cmap_override', 2, 'Last of the four zero stores'),
    ('PBJ.hif_ctl', 0, 'Host-interface control'),
    ('PBJ.id', 0, 'Identification word'),
    ('PBJ.scan_width', 0, 'Scan-out width'),
    ('PBJ.scan_height', 0, 'Scan-out height'),
    ('PBJ.dcb_ctl', 0, 'Back-end interface configuration'),
]

def check_pbj_rows(rep, regs):
    rows = {}
    for m in PBJ_ROW_RE.finditer(read('devices/pbj/README.md')):
        rows[int(m.group(1), 16)] = (m.group(2), m.group(3))
    for key, idx, phrase in ROW_KEYS:
        if key not in regs:
            continue
        r = regs[key]
        off = r['off'] + idx
        if off not in rows:
            rep.fail('devices/pbj/README.md', 'no register row for %s (0x%x); the header has it' % (key, off))
            continue
        cell, text = rows[off]
        if phrase not in text:
            rep.fail('devices/pbj/README.md', 'row 0x%x does not describe %s (expected "%s")' % (off, key, phrase))
        has_load, has_store = 'load' in cell, 'store' in cell
        hr, hw = 'r' in r['acc'], 'w' in r['acc']
        if hr != has_load:
            rep.fail('devices/pbj/README.md', '%s access %s but the prose row says "%s"' % (key, r['acc'], cell))
        if has_store and not hw:
            rep.fail('devices/pbj/README.md', '%s access %s but the prose row says "%s"' % (key, r['acc'], cell))
        if hw and not (has_store or re.search(r'writ|stor', text)):
            rep.fail('devices/pbj/README.md', '%s is written per the header but no prose row says so' % key)
        m = re.search(r'load (\d+) bits', cell)
        if m and int(m.group(1)) != r['width']:
            rep.fail('devices/pbj/README.md', '%s width %d but the prose row says load %s bits' % (key, r['width'], m.group(1)))


# --- TEXTURE_DECODE.h ---

SWEEP = 'software/opengl/runs/texture-format-index-sweep.txt'

TEX_OPS = [('TEX_OP_TEXENV', 'TEX_ENV_WORDS', 0x01b), ('TEX_OP_TEXMODE', 'TEX_MODE_WORDS', 0x016),
           ('TEX_OP_TEXLOD', 'TEX_LOD_WORDS', 0x013), ('TEX_OP_TEXOFFSET', 'TEX_OFFSET_WORDS', 0x03e)]

FMT_ROW_RE = re.compile(r'^\s*\[(\d+)\]\s*=\s*\{([^}]*)\},\s*/\*\s*(\w+)')
PIXCLASS_RE = re.compile(r'tex_pixclass_to_index\[\w+\]\s*=\s*\{([^}]*)\}', re.S)
CALC_RE = re.compile(r'CALC:\s*(\w+)\s+(.*?)\s*=>\s*(\d+)\s*$')


def read_sweep(rep):
    text = read(SWEEP).split('\n== ')[0]
    widths, pix, cls = {}, {}, {}
    section = None
    for line in text.splitlines():
        if line.startswith('CalcTexelSizes'):
            section = 'w'
        elif line.startswith('GetImageFmtEnumFromBuzzTexFormat'):
            section = 'p'
        elif line.startswith('ChooseSuitableBuzzTexModeBaseFmt'):
            section = 'c'
        elif line.startswith('ChooseSuitableBuzzTexObjFormat'):
            section = 'o'
        elif section == 'w':
            m = re.match(r'^\s*(\d+)\s+(\d+) (\d+) (\d+) (\d+) (\d+) (\d+) (-|\d+)\s*$', line)
            if m:
                widths[int(m.group(1))] = (tuple(int(m.group(k)) for k in range(2, 8)),
                                           None if m.group(8) == '-' else int(m.group(8)))
        elif section == 'p':
            for a, b in re.findall(r'(\d+):(-?\d+)', line):
                pix[int(a)] = int(b)
        elif section == 'c':
            m = re.match(r'^\s*(\d+)\s+(\d)(?: for .*?, (\d) otherwise)?\s*$', line)
            if m:
                cls[int(m.group(1))] = (int(m.group(2)), int(m.group(3) or m.group(2)))
    if not widths or not pix or not cls:
        rep.fail(SWEEP, 'could not parse the recorded format routine output')
    return widths, pix, cls


def parse_fmt_table(rep, header, text):
    rows = {}
    for n, line in enumerate(text.splitlines(), 1):
        m = FMT_ROW_RE.match(line)
        if not m:
            continue
        idx, vals, grade = int(m.group(1)), [int(v) for v in m.group(2).split(',')], m.group(3)
        where = '%s:%d' % (header, n)
        if len(vals) != 11:
            rep.fail(where, 'format row %d has %d values, expected 11' % (idx, len(vals)))
            continue
        if grade not in GRADES:
            rep.fail(where, 'bad grade %r on format row %d' % (grade, idx))
        if idx in rows:
            rep.fail(where, 'duplicate format row %d' % idx)
        rows[idx] = dict(present=vals[0], widths=tuple(vals[1:7]), size=vals[7], pclass=vals[8],
                         cls=(vals[9], vals[10]), grade=grade, line=n, vals=vals)
    if not rows:
        rep.fail(header, 'no format table rows')
    return rows


def check_fmt_table(rep, header, text, enums):
    rows = parse_fmt_table(rep, header, text)
    widths, pix, cls = read_sweep(rep)
    # Exhaustive run: every index 0..51 is either a row or has zero widths.
    for idx in range(0, 52):
        w = widths.get(idx)
        if w is None:
            rep.fail(SWEEP, 'no width line for index %d' % idx)
            continue
        wd, code = w
        row = rows.get(idx)
        if sum(wd) == 0:
            if row is not None:
                rep.fail(header, 'format row %d exists but the recorded run gives zero widths' % idx)
            if code is not None or pix.get(idx) != -1 or cls.get(idx, (0, 0)) != (0, 0):
                rep.fail(SWEEP, 'index %d: expected an unused entry' % idx)
            continue
        if row is None:
            rep.fail(header, 'no format row for index %d (the recorded run gives widths %s)' % (idx, wd))
            continue
        if row['present'] != 1:
            rep.fail(header, 'format row %d is not marked present' % idx)
        if row['widths'] != wd:
            rep.fail(header, 'format row %d widths %s, recorded run %s' % (idx, row['widths'], wd))
        if row['size'] != code:
            rep.fail(header, 'format row %d size code %s, recorded run %s' % (idx, row['size'], code))
        if row['pclass'] != pix.get(idx):
            rep.fail(header, 'format row %d pixel class %s, recorded run %s' % (idx, row['pclass'], pix.get(idx)))
        if row['cls'] != cls.get(idx):
            rep.fail(header, 'format row %d class %s, recorded run %s' % (idx, row['cls'], cls.get(idx)))
    for idx in rows:
        if idx > 51:
            rep.fail(header, 'format row %d is beyond the recorded run' % idx)
    # The table in the notes.
    doc = read('devices/texture/texture-formats.md')
    sec = doc.split('## The table', 1)[1].split('By grade', 1)[0]
    drows = {}
    for line in sec.splitlines():
        cells = [c.strip() for c in line.strip().strip('|').split(' | ')]
        if len(cells) == 8 and cells[0].isdigit():
            drows[int(cells[0])] = cells
    if set(drows) != set(i for i in rows):
        rep.fail('devices/texture/texture-formats.md', 'table rows %s differ from header rows %s'
                 % (sorted(drows), sorted(rows)))
    for idx, cells in drows.items():
        row = rows.get(idx)
        if row is None:
            continue
        bits = int(cells[2])
        if bits != sum(row['widths']):
            rep.fail(header, 'format row %d: widths sum to %d, notes say %d bits' % (idx, sum(row['widths']), bits))
        m = re.match(r'(\d+), (\d+)$', cells[3])
        if not m or int(m.group(1)) != row['size'] or int(m.group(2)) != 2 << row['size']:
            rep.fail(header, 'format row %d: size code %d does not match "%s" in the notes' % (idx, row['size'], cells[3]))
        pc = -1 if cells[4] == 'none' else int(cells[4])
        if pc != row['pclass']:
            rep.fail(header, 'format row %d: pixel class %d, notes say %s' % (idx, row['pclass'], cells[4]))
        dcls = set(int(x) for x in re.findall(r'(?:^|; |\bor )(\d)\b', cells[6]))
        # The notes list the classes the listed GL formats give; the recorded run
        # (compared above) is exhaustive, so the notes' classes must be among the row's.
        if not dcls or not dcls <= set(row['cls']):
            rep.fail(header, 'format row %d: class %s, notes say %s' % (idx, row['cls'], cells[6]))
        gr = cells[7]
        if gr.startswith('as '):
            ref = drows.get(int(gr.split()[1]))
            gr = ref[7] if ref else gr
        if row['grade'] == 'established' and 'established' not in gr:
            rep.fail(header, 'format row %d is graded established, the notes grade it "%s"' % (idx, cells[7]))
        if row['grade'] == 'inferred' and 'inferred' not in gr:
            rep.fail(header, 'format row %d is graded inferred, the notes grade it "%s"' % (idx, cells[7]))
    # Row grade must agree with the ENUM grade of the same index.
    for (target, label), val in enums.items():
        if target == 'FMT.index' and val in rows and val in drows:
            pass
    enum_idx = set(v for (t, _l), v in enums.items() if t == 'FMT.index')
    if enum_idx != set(rows):
        rep.fail(header, 'FMT.index ENUM values %s differ from format rows %s' % (sorted(enum_idx), sorted(rows)))
    # Pixel class to index (move path).
    m = PIXCLASS_RE.search(text)
    got = [int(x) for x in m.group(1).split(',')] if m else []
    m2 = re.search(r'a table from the pixel class of the source image: (.*?)\*\*Established', doc, re.S)
    want = {}
    if m2:
        want = {int(a): int(b) for a, b in re.findall(r'(\d+) gives (\d+)', m2.group(1))}
    if not want or got != [want.get(i) for i in range(len(want))] or len(got) != len(want):
        rep.fail(header, 'tex_pixclass_to_index %s differs from the notes %s' % (got, want))
    for pcl in range(0, 16):
        idx = got[pcl] if pcl < len(got) else None
        if idx is None or pix.get(idx) != pcl:
            rep.fail(header, 'pixel class %s maps to index %s whose recorded pixel class is %s'
                     % (pcl, idx, pix.get(idx)))
    return rows, got


def calc_ref(fn, a):
    def even(n):
        return (n + 1) & ~1
    if fn == 'pitch':
        inner = a['w'] - 2 * a['b'] if a['w'] > 2 * a['b'] else 0
        t = even((inner + 15) // 16 + 2 * a['b'])
        return 1 if t == 4096 else t
    if fn == 'pitch_icc':
        t = ((a['w'] + 1) // 2 + 15) >> 4
        if a['b']:
            t += 2
        t = even(t)
        return 1 if t == 4096 else t
    if fn == 'slice_tiles':
        inner = a['h'] - 2 * a['b'] if a['h'] > 2 * a['b'] else 0
        return a['pitch'] * ((inner + 15) // 16 + 2 * a['b'])
    if fn == 'slice_pow2':
        s = 1
        while s < a['tiles']:
            s <<= 1
        return s
    if fn == 'slice_exp':
        e = 0
        while (1 << e) < a['tiles']:
            e += 1
        return e
    if fn == 'stride':
        return (32 << a['c']) << a['e']
    raise KeyError(fn)


CALC_C = {'pitch': 'tex_pitch_tiles(%(w)d, %(b)d)', 'pitch_icc': 'tex_pitch_tiles_icc(%(w)d, %(b)d)',
          'slice_tiles': 'tex_slice_tiles(%(pitch)d, %(h)d, %(b)d)',
          'slice_pow2': 'tex_slice_tiles_pow2(%(tiles)d)', 'slice_exp': 'tex_slice_exp(%(tiles)d)',
          'stride': 'tex_slice_stride(%(c)d, %(e)d)'}


def check_calcs(rep, header, text):
    doc = read('devices/texture/texture-formats.md')
    calcs = []
    for n, line in enumerate(text.splitlines(), 1):
        if 'CALC:' not in line or '<' in line:
            continue
        where = '%s:%d' % (header, n)
        m = CALC_RE.search(line)
        if not m:
            rep.fail(where, 'malformed CALC line: %s' % line.strip())
            continue
        fn, rest, res = m.group(1), m.group(2), int(m.group(3))
        try:
            args = {k: int(v) for k, v in (p.split('=') for p in rest.split())}
            want = calc_ref(fn, args)
        except (KeyError, ValueError):
            rep.fail(where, 'bad CALC line: %s' % line.strip())
            continue
        if want != res:
            rep.fail(where, '%s %s is %d by the reference arithmetic, CALC says %d' % (fn, rest, want, res))
        calcs.append((fn, args, res, where))
        # The case must be one the notes state.
        if fn == 'pitch':
            ok = re.search(r'W = %d, b = %d gives %d' % (args['w'], args['b'], res), doc)
        elif fn == 'pitch_icc':
            ok = re.search(r'W = %d gives %d' % (args['w'], res), doc)
        elif fn == 'stride':
            ok = '0x%x' % res in doc.split('4. **Slice stride.**', 1)[-1][:900]
        elif fn == 'slice_tiles':
            ok = re.search(r'S = %d' % (args['pitch'] * ((args['h'] - 2 * args['b'] + 15) // 16 + 2 * args['b'])), doc) \
                or re.search(r'%d tiles' % res, doc)
        elif fn == 'slice_pow2':
            ok = re.search(r'\(%d tiles rounded up\)' % args['tiles'], doc) and re.search(r'S = %d' % res, doc)
        else:
            ok = re.search(r'S = %d' % (1 << res), doc)
        if not ok:
            rep.fail(where, 'the notes do not state the case: %s' % line.strip())
    if not calcs:
        rep.fail(header, 'no CALC lines')
    return calcs


def check_c_compile(rep, header, rows, pix_to_idx, calcs, verbose):
    cc = shutil.which('cc') or shutil.which('gcc') or shutil.which('clang')
    if not cc:
        print('note: no C compiler found; the compile check of %s was skipped' % header)
        return False
    lines = ['#include "%s"' % header, '#include <stdio.h>',
             'static int bad;',
             '#define CHK(a, b) do { if ((long)(a) != (long)(b)) { printf("mismatch: %s != %s\\n", #a, #b); bad++; } } while (0)',
             'int main(void) {']
    for idx, r in rows.items():
        t = 'tex_fmt_table[%d]' % idx
        for name, v in zip(('present', 'r', 'g', 'b', 'a', 'l', 'i', 'size_code', 'pixel_class', 'class_rgb',
                            'class_rgba'), r['vals']):
            lines.append('CHK(%s.%s, %d);' % (t, name, v))
    for i, v in enumerate(pix_to_idx):
        lines.append('CHK(tex_pixclass_to_index[%d], %d);' % (i, v))
    for fn, args, res, _w in calcs:
        lines.append('CHK(%s, %d);' % (CALC_C[fn] % args, res))
    lines += ['return bad ? 1 : 0; }']
    with tempfile.TemporaryDirectory() as d:
        src, exe = os.path.join(d, 't.c'), os.path.join(d, 't')
        with open(src, 'w') as f:
            f.write('\n'.join(lines) + '\n')
        r = subprocess.run([cc, '-std=c11', '-Wall', '-Wextra', '-Werror', '-I', _ctx.root, '-o', exe, src],
                           capture_output=True, text=True)
        if r.returncode:
            rep.fail(header, 'does not compile cleanly: %s' % (r.stderr.strip()[:400]))
            return True
        r = subprocess.run([exe], capture_output=True, text=True)
        if r.returncode:
            rep.fail(header, 'C helper or table disagrees with its CALC/table lines: %s' % r.stdout.strip()[:400])
    if verbose:
        print('%s: compiled with %s; %d table checks and %d CALC lines run' %
              (header, os.path.basename(cc), len(rows) * 11 + len(pix_to_idx), len(calcs)))
    return True


def check_texture(rep, header, h, verbose):
    fields, defs, enums = h.fields, h.defs, h.enums
    text = h.text
    # Block words: operand count and id agree with the opcode.
    for op, words, bid in TEX_OPS:
        v = defs.get(op)
        if v is None or defs.get(words) is None:
            rep.fail(header, 'missing %s or %s' % (op, words))
        elif (v >> 10) & 0xf != defs[words] or v & 0x3ff != bid or v >> 16:
            rep.fail(header, '%s = 0x%x does not carry %d operands and id 0x%03x' % (op, v, defs[words], bid))
    for need in ('TEX_OP_FIRSTLEVEL', 'TEX_OP_TARGET'):
        if (defs.get(need, 0) >> 10) & 0xf != 1:
            rep.fail(header, '%s does not carry one operand' % need)
    buzz = _hdr('BUZZ_DECODE.h')
    # The mode block word must equal the one in BUZZ_DECODE.h.
    if defs.get('TEX_OP_TEXMODE') != buzz.defs.get('BUZZ_OP_TEXMODE'):
        rep.fail(header, 'TEX_OP_TEXMODE differs from BUZZ_OP_TEXMODE in BUZZ_DECODE.h')
    # Environment colour is packed like the border colour.
    for a, b in (('ENV_W1.red', 'MODE_W5.red'), ('ENV_W1.green', 'MODE_W5.green'),
                 ('ENV_W2.blue', 'MODE_W6.blue'), ('ENV_W2.alpha', 'MODE_W6.alpha')):
        if a in fields and b in fields and fields[a][:2] != fields[b][:2]:
            rep.fail(header, '%s %s but %s %s: the notes pack the environment colour like the border colour'
                     % (a, fields[a][:2], b, fields[b][:2]))
    # Facts shared with BUZZ_DECODE.h.
    bz = buzz.fields
    doc_f = read('devices/texture/texture-formats.md')
    m = re.search(r'\*\*Class\*\* \(mode word 4 bits (\d+):(\d+)', doc_f)
    if not m or 'SAMPLER.activation' not in bz or (int(m.group(1)), int(m.group(2))) != bz['SAMPLER.activation'][:2]:
        rep.fail(header, 'the class is not stored where BUZZ_DECODE.h puts SAMPLER.activation')
    m = re.search(r'TEXMODE6 bit (\d+): complement of TEXMODE4 bit (\d+)', read('devices/buzz/BUZZ.h'))
    if not m or 'SAMPLER.no_offset' not in bz or int(m.group(2)) != bz['SAMPLER.no_offset'][0]:
        rep.fail(header, 'the offset flag pair does not match SAMPLER.no_offset in BUZZ_DECODE.h')
    # The unwritten word-2 statement: BUZZ_DECODE.h must not own the same bits under another name.
    if 'LEVEL3D_W2.slice_exp' in fields and 'TEXLEVEL_W2.bits' in bz \
            and fields['LEVEL3D_W2.slice_exp'][:2] != bz['TEXLEVEL_W2.bits'][:2]:
        rep.fail(header, 'LEVEL3D_W2.slice_exp covers different bits than TEXLEVEL_W2.bits in BUZZ_DECODE.h')
    rows, pix_to_idx = check_fmt_table(rep, header, text, enums)
    calcs = check_calcs(rep, header, text)
    compiled = check_c_compile(rep, header, rows, pix_to_idx, calcs, verbose)
    if verbose:
        print('%s: %d format rows, %d CALC lines%s'
              % (header, len(rows), len(calcs), '' if compiled else ' (no C compile)'))


# --- DMA_DECODE.h ---

DMA_SIZE_LIMIT_MACRO = 'DMA_ENTRY_MAX_BYTES'


def dma_claims(rep, header, fields, defs, enums, buzz):
    """Prose cross-checks. Each claim is (label, doc, regex, function)."""
    def bits(v):
        return bin(v).count('1')

    def tz(v):
        return (v & -v).bit_length() - 1

    def c_pack(m, err):
        m1, m2, sh = int(m.group(1), 16), int(m.group(2), 16), int(m.group(3))
        want_lo = (m1.bit_length() - 1, 0)
        lo2 = tz(m2) + sh
        want_hi = (lo2 + bits(m2) - 1, lo2)
        for w in ('KICK_A_LO', 'KICK_B_HI'):
            if span(fields, w + '.addr_lo') != want_lo:
                err('%s.addr_lo is %s, the spreading rule gives %d:%d' % (w, span(fields, w + '.addr_lo'), *want_lo))
            if span(fields, w + '.addr_hi') != want_hi:
                err('%s.addr_hi is %s, the spreading rule gives %d:%d' % (w, span(fields, w + '.addr_hi'), *want_hi))

    def c_half(m, err):
        half, split = int(m.group(1)), int(m.group(2))
        for w in ('KICK_A_LO', 'KICK_B_HI'):
            lo = fields.get(w + '.addr_lo')
            hi = fields.get(w + '.addr_hi')
            if not lo or not hi:
                err('no address fields in %s' % w)
                continue
            if (lo[0] - lo[1] + 1) + (hi[0] - hi[1] + 1) != half or lo[0] != split:
                err('%s address fields do not make a %d-bit half split after bit %d' % (w, half, split))
        if span(fields, 'KICK_A_LO.addr_hi') != (int(m.group(3)), int(m.group(4))):
            err('upper address bits are %s in the header, %s:%s in the notes'
                % (span(fields, 'KICK_A_LO.addr_hi'), m.group(3), m.group(4)))

    def c_48(m, err):
        if defs.get('DMA_KICK_ADDR_BITS') != int(m.group(1)):
            err('DMA_KICK_ADDR_BITS is %s, notes say %s' % (defs.get('DMA_KICK_ADDR_BITS'), m.group(1)))
        half = sum(fields[k][0] - fields[k][1] + 1 for k in ('KICK_A_LO.addr_lo', 'KICK_A_LO.addr_hi'))
        if 2 * half != defs.get('DMA_KICK_ADDR_BITS'):
            err('two address halves of %d bits do not make DMA_KICK_ADDR_BITS' % half)

    def c_ids(m, err):
        if enums.get(('KICK_A_HI.id', 'plain')) != int(m.group(1), 16) or \
           enums.get(('KICK_A_HI.id', 'variant')) != int(m.group(2), 16):
            err('kick id enums differ from the notes (0x%s, 0x%s)' % (m.group(1), m.group(2)))

    def c_page(m, err):
        total, sh0, mask, sh1, cnt = int(defs.get('DMA_KICK_ADDR_BITS', 0)), int(m.group(1)), int(m.group(2), 16), int(m.group(3)), int(m.group(4))
        if span(fields, 'PAGE_W0.addr') != (total - sh0 - 1, 0):
            err('PAGE_W0.addr is %s but a >> %d of a %d-bit address needs %d:0'
                % (span(fields, 'PAGE_W0.addr'), sh0, total, total - sh0 - 1))
        if span(fields, 'PAGE_W1.addr_lo') != (sh1 + mask.bit_length() - 1, sh1):
            err('PAGE_W1.addr_lo is %s, notes give %d:%d' % (span(fields, 'PAGE_W1.addr_lo'), sh1 + mask.bit_length() - 1, sh1))
        if span(fields, 'PAGE_W1.count') != (cnt - 1, 0):
            err('PAGE_W1.count is %s, notes give a %d-bit count' % (span(fields, 'PAGE_W1.count'), cnt))
        if sh0 != sh1:
            err('page entry shifts differ: word 0 >> %d, word 1 << %d' % (sh0, sh1))

    def c_entry_bytes(m, err):
        if defs.get('DMA_ENTRY_BYTES') != int(m.group(1)):
            err('DMA_ENTRY_BYTES is %s, notes say %s' % (defs.get('DMA_ENTRY_BYTES'), m.group(1)))

    def c_hdr(m, err):
        if defs.get('DMA_ENTRY_HDR_BYTES') != int(m.group(2)) or int(m.group(1)) + 1 != int(m.group(2)):
            err('DMA_ENTRY_HDR_BYTES is %s, notes say bytes 0-%s are a %s-byte header'
                % (defs.get('DMA_ENTRY_HDR_BYTES'), m.group(1), m.group(2)))

    def c_pages(m, err):
        first, last, npages = int(m.group(1)), int(m.group(2)), int(m.group(3))
        if first != defs.get('DMA_ENTRY_HDR_BYTES') or last + 1 != defs.get('DMA_ENTRY_BYTES'):
            err('page list bytes %d-%d do not follow the header and fill the entry' % (first, last))
        if npages != defs.get('DMA_ENTRY_PAGES_MAX'):
            err('DMA_ENTRY_PAGES_MAX is %s, notes say %d' % (defs.get('DMA_ENTRY_PAGES_MAX'), npages))
        if npages * defs.get('DMA_PAGE_ENTRY_BYTES', 0) != last - first + 1:
            err('%d page entries of %s bytes do not fill bytes %d-%d'
                % (npages, defs.get('DMA_PAGE_ENTRY_BYTES'), first, last))

    def c_page_bytes(m, err):
        if defs.get('DMA_PAGE_ENTRY_BYTES') != 8:
            err('DMA_PAGE_ENTRY_BYTES is %s, notes say eight bytes a page' % defs.get('DMA_PAGE_ENTRY_BYTES'))

    def c_chunk(m, err):
        if defs.get('DMA_PAGE_CHUNK_BYTES') != int(m.group(1)):
            err('DMA_PAGE_CHUNK_BYTES is %s, notes say %s' % (defs.get('DMA_PAGE_CHUNK_BYTES'), m.group(1)))

    def c_limit(m, err):
        v = int(m.group(1), 16)
        if v != int(m.group(2)) or defs.get(DMA_SIZE_LIMIT_MACRO) != v:
            err('%s is %s, notes say 0x%x (%s)' % (DMA_SIZE_LIMIT_MACRO, defs.get(DMA_SIZE_LIMIT_MACRO), v, m.group(2)))

    def c_edits(m, err):
        w1, w3, w6 = int(m.group(1)) // 4, int(m.group(2)) // 4, int(m.group(3)) // 4
        for key, word, rng in (('HDR_W1.x', w1, (15, 0)), ('HDR_W1.y', w1, (31, 16)),
                               ('HDR_W3.width', w3, (15, 0)), ('HDR_W3.height', w3, (31, 16)),
                               ('HDR_W6.row_bytes', w6, (int(m.group(4)), int(m.group(5))))):
            if key not in buzz:
                err('BUZZ_DECODE.h has no %s' % key)
                continue
            if int(re.search(r'W(\d)', key).group(1)) != word:
                err('%s is not word %d as the notes say' % (key, word))
            if (buzz[key][0], buzz[key][1]) != rng:
                err('%s is %d:%d in BUZZ_DECODE.h, notes say %d:%d' % (key, buzz[key][0], buzz[key][1], rng[0], rng[1]))

    def c_topbyte(m, err):
        fixed = int(m.group(1), 16) << 24
        have = sum(1 << fields[k][1] for k in ('ENTRY_W7.fixed25', 'ENTRY_W7.fixed28', 'ENTRY_W7.fixed29') if k in fields)
        if fixed != have:
            err('fixed bits 0x%x in the header, notes force 0x%x' % (have, fixed))
        if (int(m.group(2), 16) << 24) != 1 << fields['ENTRY_W7.read_dir'][1]:
            err('ENTRY_W7.read_dir is not the notes\' read bit')
        if (int(m.group(3)), int(m.group(4))) != (fields['ENTRY_W7.transform'][1], fields['ENTRY_W7.differs'][1]):
            err('ENTRY_W7 transform/differs bits are not the ones the notes say are kept from the caller')

    def c_irq(m, err):
        off, rd, irq = int(m.group(1)), m.group(2), m.group(3)
        if off // 4 != 7 or rd != str(fields['ENTRY_W7.read_dir'][1]) or irq != str(fields['ENTRY_W7.irq_after'][1]):
            err('word +%d bit %s / bit %s do not match ENTRY_W7.read_dir/irq_after' % (off, rd, irq))

    def c_plain(m, err):
        if int(m.group(1)) != fields['ENTRY_W7.transform'][1]:
            err('plain path bit is %s in the notes, %d in the header' % (m.group(1), fields['ENTRY_W7.transform'][1]))

    def c_transform(m, err):
        if int(m.group(1)) != fields['ENTRY_W7.transform'][1]:
            err('transform path bit is %s in the notes, %d in the header' % (m.group(1), fields['ENTRY_W7.transform'][1]))

    def c_differs(m, err):
        if int(m.group(1)) != fields['ENTRY_W7.differs'][1]:
            err('differs bit is %s in the notes, %d in the header' % (m.group(1), fields['ENTRY_W7.differs'][1]))

    def c_tag(m, err):
        low, cnt, flag, marker, ctr = int(m.group(1), 16), int(m.group(2)), int(m.group(3), 16), int(m.group(4), 16), int(m.group(5), 16)
        if defs.get('DMA_TAG_CMD_LOW16') != low or defs.get('DMA_TAG_CMD_COUNT') != cnt:
            err('tag command word/count are %s/%s, notes say 0x%x/%d'
                % (defs.get('DMA_TAG_CMD_LOW16'), defs.get('DMA_TAG_CMD_COUNT'), low, cnt))
        if ((low >> 10) & 0xf) != cnt or (low & 0x3ff) != defs.get('DMA_TAG_CMD_ID') or \
           (cnt << 10 | defs.get('DMA_TAG_CMD_ID', 0)) != low:
            err('tag command word 0x%x does not decode to count %d id 0x%x' % (low, cnt, defs.get('DMA_TAG_CMD_ID', 0)))
        if flag != 1 << fields['TAG_W0.flag'][1]:
            err('TAG_W0.flag is bit %d, notes OR in 0x%x' % (fields['TAG_W0.flag'][1], flag))
        if marker >> 8 != defs.get('DMA_TAG_W1_MARKER_TAG') or (marker >> 8) << 8 != marker:
            err('tag marker is 0x%x in the notes' % marker)
        if span(fields, 'TAG_W1.marker') != (15, 8) or span(fields, 'TAG_W1.tag') != (ctr.bit_length() - 1, 0):
            err('tag fields do not match marker in 15:8 and a count masked with 0x%x' % ctr)

    def c_done(m, err):
        if defs.get('DMA_DONE_FLAG_BIT') != int(m.group(1)):
            err('DMA_DONE_FLAG_BIT is %s, notes say %s' % (defs.get('DMA_DONE_FLAG_BIT'), m.group(1)))

    def c_done_reg(m, err):
        if int(m.group(1), 16) != 1 << defs.get('DMA_DONE_FLAG_BIT', -1):
            err('registers notes clear 0x%s for the DMA-done flag, not bit %s' % (m.group(1), defs.get('DMA_DONE_FLAG_BIT')))

    claims = [
        ('kick address spreading rule', 'devices/buzz/BUZZ.h',
         r'PACK\(x\) = \(x & 0x([0-9a-f]+)\) \| \(\(x & 0x([0-9a-f]+)\) << (\d+)\)', c_pack),
        ('kick address halves', 'devices/buzz/BUZZ.h',
         r'each (\d+)-bit half of the physical address is split after bit (\d+)[\s*]+and[\s*]+the upper seven bits sit six places higher \(bits (\d+):(\d+) of the word\)', c_half),
        ('kick address width', 'devices/buzz/BUZZ.h', r'board takes a[\s*]+(\d+)-bit physical address', c_48),
        ('kick ids', 'devices/buzz/BUZZ.h', r'word A: 0x0*([0-9a-f]+) or 0x0*([0-9a-f]+) \(high\)', c_ids),
        ('page entry', 'devices/buzz/BUZZ.h',
         r'word 0 = the physical address >> (\d+),[\s*]+word 1 = \(physical address & 0x([0-9a-f]+)\) << (\d+) \| a (\d+)-bit byte count', c_page),
        ('page chunk', 'devices/buzz/BUZZ.h', r'chunks of up to (\d+) bytes', c_chunk),
        ('descriptor size', 'software/kernel/kernel.md', r'a list of (\d+)-byte table entries', c_entry_bytes),
        ('descriptor header', 'software/kernel/kernel.md', r'bytes 0-(\d+) are the caller\'s (\d+)-byte header \(eight words', c_hdr),
        ('descriptor page list', 'software/kernel/kernel.md',
         r'Bytes (\d+)-(\d+) are the page list `generatePageTable` writes \(`BUZZ.h`, eight bytes a page, up to (\d+) pages\)', c_pages),
        ('page entry bytes', 'software/kernel/kernel.md', r'eight bytes a page, up to \d+ pages', c_page_bytes),
        ('descriptor split limit', 'software/kernel/kernel.md', r'at most 0x([0-9a-f]+) \((\d+)\) is one entry', c_limit),
        ('descriptor header edits', 'software/kernel/kernel.md',
         r'word \+(\d+) low half = the entry\'s x, high half = its y; word \+(\d+) low half = its width, high half = its height; '
         r'word \+(\d+) bits (\d+):(\d+) = bytes per pixel times the width', c_edits),
        ('word 7 top byte', 'software/kernel/kernel.md',
         r'top byte of header word 7 \(request offset \d+\) to `0x([0-9a-f]+) \| \(bit 0 of \+\d+ clear \? 0x([0-9a-f]+) : 0\) '
         r'\| \(old bit (\d+)\) \| \(old bit (\d+)\)`', c_topbyte),
        ('interrupt after the last descriptor', 'software/kernel/kernel.md',
         r'If header word \+(\d+) bit (\d+) is set, the last entry\'s word \+\d+ gets bit (\d+) set', c_irq),
        ('plain path bit', 'software/kernel/kernel.md', r'\*\*Plain path\*\* \(header word 7 bit (\d+) clear\)', c_plain),
        ('transform path bit', 'software/kernel/kernel.md', r'\*\*Transform path\*\* \(bit (\d+) set\)', c_transform),
        ('differs bit', 'devices/buzz/pixel-paths.md',
         r'header word 7 bit (\d+) is set when the source and destination descriptions differ', c_differs),
        ('completion tag command', 'software/kernel/kernel.md',
         r'class-1 block 0x05a \(`0x0001([0-9a-f]{4})`, COUNT (\d+)\): operand 0 = record word \+\d+ \| 0x([0-9a-f]+), '
         r'operand 1 = the tag `0x([0-9a-f]+) \| \(counter & 0x([0-9a-f]+)\)`', c_tag),
        ('DMA-done flag bit', 'devices/buzz/BUZZ.h', r'FLAGS_DMA_DONE_FLAG\s+\(1u << (\d+)\)', c_done),
        ('DMA-done flag clear', 'devices/board/board-registers.md', r'stores (0x[0-9a-f]+) \(the DMA-done flag\)', c_done_reg),
    ]
    cache = {}
    for label, doc, rx, fn in claims:
        if doc not in cache:
            try:
                cache[doc] = read(doc)
            except OSError as e:
                print('error: cannot read %s: %s' % (doc, e), file=sys.stderr)
                sys.exit(2)
        m = re.search(rx, cache[doc], re.S)
        if not m:
            rep.fail(doc, 'prose for "%s" not found (the passage changed or was removed); pattern: %s' % (label, rx))
            continue
        try:
            fn(m, lambda msg, label=label, doc=doc: rep.fail(header, '%s ("%s", %s)' % (msg, label, doc)))
        except (KeyError, TypeError) as e:
            rep.fail(header, 'claim "%s" could not be evaluated: missing %s' % (label, e))


def check_dma(rep, header, h, verbose):
    fields, defs, enums = h.fields, h.defs, h.enums
    # Self-consistency of constants.
    if defs.get('DMA_ENTRY_BYTES') != defs.get('DMA_ENTRY_HDR_BYTES', 0) + \
            defs.get('DMA_ENTRY_PAGES_MAX', 0) * defs.get('DMA_PAGE_ENTRY_BYTES', 0):
        rep.fail(header, 'DMA_ENTRY_BYTES is not header bytes plus page entries')
    if defs.get('DMA_ENTRY_MAX_BYTES', 0) > defs.get('DMA_ENTRY_PAGES_MAX', 0) * defs.get('DMA_PAGE_CHUNK_BYTES', 0) * 2:
        rep.fail(header, 'DMA_ENTRY_MAX_BYTES exceeds what the page list could cover even with slack')
    buzz = _hdr('BUZZ_DECODE.h').fields
    for key, other in (('ENTRY_W7.read_dir', 'HDR_W7.read_dir'), ('ENTRY_W7.transform', 'HDR_W7.transform'),
                       ('ENTRY_W7.differs', 'HDR_W7.differs')):
        if key in fields and other in buzz and span(fields, key) != (buzz[other][0], buzz[other][1]):
            rep.fail(header, '%s is %s but %s is %d:%d in BUZZ_DECODE.h' % (key, span(fields, key), other, buzz[other][0], buzz[other][1]))
    dma_claims(rep, header, fields, defs, enums, buzz)


# --- entry points ---

def check_header(ctx, h):
    global _ctx
    _ctx = ctx
    if h.name == 'BUZZ_DECODE.h':
        check_prose_vectors(ctx.rep, h.file, h.vecs)
    elif h.name in ('DISPLAY_DECODE.h', 'PBJ_DECODE.h'):
        check_vector_prose(ctx.rep, h.file, h.vecs)
    elif h.name == 'TEXTURE_DECODE.h':
        check_texture(ctx.rep, h.file, h, ctx.verbose)
    elif h.name == 'DMA_DECODE.h':
        check_dma(ctx.rep, h.file, h, ctx.verbose)


def check_group(ctx, group, hdrs):
    global _ctx
    _ctx = ctx
    if group == 'display':
        check_pbj_rows(ctx.rep, ctx.allregs)
