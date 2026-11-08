#!/usr/bin/env python3
"""Publish-safety and consistency check for BUZZ_DECODE.h.

Usage (from anywhere; paths are relative to the repository root):
    python3 scripts/check-publish-safe.py [--header BUZZ_DECODE.h] [--verbose]

Needs only the Python 3 standard library. Exit status 0 means clean, 1 means
at least one failure (each offending line is printed), 2 means a usage or
setup problem (a file missing).

Three checks:

1. Publish-safety. The header goes into public projects, so it must carry no
   vendor source path, no routine or symbol name, no raw address or binary
   offset, and no vendor-internal identifier. Opcodes and bit ranges are
   wire-format facts and are allowed.
2. Internal consistency. Every `FIELD: <WORD>.<name> <hi>:<lo> <grade>` line is
   well formed and no two fields of one word overlap. Each `TESTVEC: <value> as
   <WORD> => name=val, ...` line is decoded with the header's own field ranges
   and must come out as stated. The SHIFT/MASK macros of the key fields must
   agree with their FIELD line.
3. Cross-check against the prose. For each field with a counterpart in
   docs/pixel-paths.md, docs/texture-state.md, docs/texture-formats.md or
   BUZZ.h, the bit range the prose states must equal the header's. A prose
   passage that no longer matches also fails, so drift in either direction is
   caught. The test vectors are checked against the prose decodes too.

Hooking in: the repository has no CI entry point of its own. scripts/pre-push is
the nearest hook; adding `python3 scripts/check-publish-safe.py || exit 1` there
would run it on every push. It is not wired in.
"""
import argparse
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
REPO = os.path.dirname(HERE)

GRADES = ('established', 'inferred', 'unknown')

# ---------------------------------------------------------------------------
# 1. Publish-safety rules: (label, regex). Each match on a line is a failure.
# ---------------------------------------------------------------------------
BANNED = [
    ('vendor source path', r'\b(?:stand|irix|builds|refs|root)/[\w./+-]+'),
    ('vendor install path', r'\busr/(?:cpu|gfx|lib|diags)\b'),
    ('source/object file name', r'\b[\w-]+\.(?:c|s|so|a|o)\b(?![\w-])'),
    ('header file name other than ours',
     r'\b(?!BUZZ_DECODE\.h\b|stdint\.h\b)[\w-]+\.h\b'),
    ('odsy symbol', r'\bodsy(?:[A-Z_]\w*)'),
    ('driver routine prefix', r'\b(?:gfP_|gfx_|ody_|odsy_)\w*'),
    ('library routine', r'\b__gl\w*|\bRenderFunc\w*|\bImage(?:Chain|Xfer|Calc|Copy|ToDma)\w*'),
    ('library routine', r'\b(?:SetupDMA|MovePixels|Validate(?:Hardware|Texture)|CalcTexel|ChooseSuitable)\w*'),
    ('mixed-case call', r'\b[a-z]+[A-Z]\w*\('),
    ('kernel object name', r'\b\w+_(?:tport|pon|sdram|brdmgr|pmm|ctxsw)\b'),
    ('vendor register name', r'\bsys\.config\b|\b[a-z]+\.[a-z]+_config\b'),
    ('binary name', r'\blibGL\w*|\bodyssey\.(?:a|so)\b|\bbuzz_xform\b|\bbuzz_ucode\b'),
    ('vendor release cite', r'\b6\.5\.\d+m?\b'),
    ('RE tool name', r'\bDWARF\b|\bGhidra\b|\bm2c\b|\bspimdisasm\b'),
    ('N32 or kernel virtual address', r'\b0x0d[0-9a-f]{6}\b|\b0x1fc[0-9a-f]+\b|\b0xbfc[0-9a-f]+\b|\b0xa8[0-9a-f]{6}\b|\b0x9[0-9a-f]{7}\b'),
    ('binary offset', r'\+0x[0-9a-fA-F]+|\bat 0x[0-9a-fA-F]{4,}|\boffset 0x[0-9a-fA-F]{3,}|\bboard \+'),
    ('record or context offset', r'\b(?:context|record|object|mirror|shadow)\s+\+\s*\d+'),
    ('source line cite', r'\bsource line\b|\blines? \d{3,}'),
]

# ---------------------------------------------------------------------------
# 3. Prose cross-checks. Each claim: doc, regex (re.S, case-sensitive), and
# the header fields it fixes, as (field key, hi group, lo group or None). A
# None lo group means a single bit named by the hi group alone.
# ---------------------------------------------------------------------------
B = r'(\d+)'
CLAIMS = [
    ('read class/code split', 'docs/pixel-paths.md',
     r'class \(bits (\d+):(\d+)\) \d+, code \(bits (\d+):(\d+)\)',
     [('HDR_W4.class', 1, 2), ('HDR_W4.code', 3, 4)]),
    ('read class/code split (table)', 'docs/pixel-paths.md',
     r'bits (\d+):(\d+) class, (\d+):(\d+) code, 12 set',
     [('HDR_W4.class', 1, 2), ('HDR_W4.code', 3, 4)]),
    ('write format/type split', 'docs/pixel-paths.md',
     r'format code in bits (\d+):(\d+), type code in\s+bits (\d+):(\d+)',
     [('HDR_W7.format', 1, 2), ('HDR_W7.type', 3, 4)]),
    ('write word 7 fields', 'docs/pixel-paths.md',
     r'bits (\d+):(\d+) format code, (\d+):(\d+) type code, bit (\d+) expand, bit (\d+) unpack byte swap, (\d+):(\d+) bytes-per-pixel code, bit (\d+) transfer path, bit (\d+) as for a read',
     [('HDR_W7.format', 1, 2), ('HDR_W7.type', 3, 4), ('HDR_W7.expand', 5, None),
      ('HDR_W7.swap', 6, None), ('HDR_W7.psize', 7, 8), ('HDR_W7.transform', 9, None),
      ('HDR_W7.differs', 10, None)]),
    ('word 7 pixel-size code', 'docs/pixel-paths.md',
     r'result goes to word 7 bits (\d+):(\d+) of both',
     [('HDR_W7.psize', 1, 2)]),
    ('word 4 pixel-size code', 'docs/pixel-paths.md',
     r'pixel-size code from description \+0x28',
     []),
    ('word 4 pixel-size width note', 'docs/pixel-paths.md',
     r'pixel-size code is three bits, (\d+):(\d+), in both header words',
     [('HDR_W4.pixel_size', 1, 2), ('HDR_W7.psize', 1, 2)]),
    ('word 4 size field', 'docs/pixel-paths.md',
     r'15:13 the class field',
     [('HDR_W4.size_field', None, None)]),
    ('word 1 and 3 packing', 'docs/pixel-paths.md',
     r'\| 1 \| x in bits (\d+):(\d+), y in (\d+):(\d+)',
     [('HDR_W1.x', 1, 2), ('HDR_W1.y', 3, 4)]),
    ('word 3 packing', 'docs/pixel-paths.md',
     r'\| 3 \| width in bits (\d+):(\d+), height in (\d+):(\d+)',
     [('HDR_W3.width', 1, 2), ('HDR_W3.height', 3, 4)]),
    ('word 6 row bytes', 'docs/pixel-paths.md',
     r'\| 6 \| row bytes in bits (\d+):(\d+)',
     [('HDR_W6.row_bytes', 1, 2)]),
    ('word 2 window word', 'docs/pixel-paths.md',
     r'\| 2 \| description \+0x1c in bits (\d+):(\d+)',
     [('HDR_W2.window_word', 1, 2)]),
    ('copy operand 2 packing', 'docs/pixel-paths.md',
     r'description \+0x1c in bits (\d+):(\d+), the destination\'s second field code in bits (\d+):(\d+)\s+and the source \+0x1c in bits (\d+):(\d+), with destination front in bit (\d+)',
     [('COPY_W2.dst_window', 1, 2), ('COPY_W2.dst_field_b', 3, 4),
      ('COPY_W2.src_window', 5, 6), ('COPY_W2.dst_front', 7, None)]),
    ('copy operand 7 flags', 'docs/pixel-paths.md',
     r'bits (\d+):(\d+) set\s+when context \+0x16a68 is zero, bit (\d+) exactly when.*?bit (\d+) when the destination y lies\s+in the source\'s y range and bit (\d+) when the destination x',
     [('COPY_W7.clamp_off', 1, 2), ('HDR_W7.transform', 3, None),
      ('COPY_W7.dst_y_in_src', 4, None), ('COPY_W7.dst_x_in_src', 5, None)]),
    ('pixel-mode word', 'docs/pixel-paths.md',
     r'\+0x96a0\s+bits (\d+):(\d+) the description\'s \+0x1c; \+0x96a4 bits (\d+):(\d+) the field format above, (\d+):(\d+) the layout\s+code, (\d+):(\d+) the storage code, (\d+):(\d+) the description\'s \+0x28, bit (\d+) for pixel classes 16 and\s+17, bit (\d+) when',
     [('PIXMODE_W0.window_word', 1, 2), ('PIXMODE_W1.field_format', 3, 4),
      ('PIXMODE_W1.layout', 5, 6), ('PIXMODE_W1.storage', 7, 8),
      ('PIXMODE_W1.size_field', 9, 10), ('PIXMODE_W1.index_class', 11, None),
      ('PIXMODE_W1.bit27', 12, None)]),
    ('level descriptor format index', 'docs/texture-formats.md',
     r'six-bit field in bits (\d+):(\d+) of word 1 of a level descriptor',
     [('TEXLEVEL_W1.format_index', 1, 2)]),
    ('level descriptor size code', 'docs/texture-formats.md',
     r'\*\*Word 1 bits (\d+):(\d+) are the size code',
     [('TEXLEVEL_W1.size_code', 1, 2)]),
    ('level descriptor offset code', 'docs/texture-formats.md',
     r'offset code \(level word 1 bits (\d+):(\d+)\)',
     [('TEXLEVEL_W1.offset_code', 1, 2)]),
    ('level descriptor pitch', 'docs/texture-formats.md',
     r'Word 1 bits (\d+):(\d+) come from the width in 16-texel tiles',
     [('TEXLEVEL_W1.pitch', 1, 2)]),
    ('level descriptor word 0', 'docs/texture-state.md',
     r'\| `__glOdysseyTextureActivate` \| bits (\d+):(\d+) ',
     [('TEXLEVEL_W0.addr', 1, 2)]),
    ('sampler wrap fields', 'docs/texture-state.md',
     r'Word 4 field \(S bits (\d+):(\d+), T (\d+):(\d+), R (\d+):(\d+)\)',
     [('SAMPLER.wrap_s', 1, 2), ('SAMPLER.wrap_t', 3, 4), ('SAMPLER.wrap_r', 5, 6)]),
    ('sampler table format and bit 0', 'docs/texture-formats.md',
     r'\| Table format code \| (\d+):(\d+) \|',
     [('SAMPLER.table_fmt', 1, 2)]),
    ('sampler colour table enable', 'docs/texture-formats.md',
     r'\| Colour-table enable \| (\d+) \|',
     [('SAMPLER.colour_table', 1, None)]),
    ('sampler image flag', 'docs/texture-formats.md',
     r'\| Image-step flag \| (\d+) \|',
     [('SAMPLER.image_flag18', 1, None)]),
    ('sampler min filter', 'BUZZ.h',
     r'Bits (\d+):(\d+): minification filter',
     [('SAMPLER.min', 1, 2)]),
    ('sampler mag filter', 'BUZZ.h',
     r'Bits (\d+):(\d+): magnification filter',
     [('SAMPLER.mag', 1, 2)]),
    ('sampler trilinear', 'BUZZ.h',
     r'/\* Bit (\d+): set for GL_LINEAR_MIPMAP_LINEAR',
     [('SAMPLER.trilinear', 1, None)]),
    ('sampler no-offset', 'BUZZ.h',
     r'/\* Bit (\d+): set when the object\'s offset flag',
     [('SAMPLER.no_offset', 1, None)]),
    ('sampler activation', 'BUZZ.h',
     r'/\* Bits (\d+):(\d+): 3-bit value from the current-texture lookup',
     [('SAMPLER.activation', 1, 2)]),
    ('post-filter word format', 'BUZZ.h',
     r'Each is signed 3\.12 in (\d+) bits',
     []),
    ('COPY opcode', 'docs/pixel-paths.md',
     r'sends 0x2031 and the eight words',
     []),
    ('POSTFILTER opcode', 'docs/pixel-paths.md',
     r'`0x0001203b` and the eight words',
     []),
    ('level descriptor opcode', 'docs/buzz.md',
     r'header `0x10e80 \| i`|word `0x00010ebc`|0x280 \+ i',
     []),
]

# Test-vector decodes the prose states: (value, format, type), checked against
# the header's TESTVEC lines and against the prose text.
PROSE_VECTORS = [
    (0x41, 1, 2, r'`0x41` is format 1 \(bits 4:0 = 00001\) and type 2 \(bits 8:5 = 010\)'),
    (0x42, 2, 2, r'`0x42` luminance bytes = format 2 type 2'),
    (0x4b, 0xb, 2, r'`0x4b` RGBA bytes = format 0xb type 2'),
    (0x61, 1, 3, r'`0x61`\s+16-bit index = format 1 type 3'),
    (0x6b, 0xb, 3, r'`0x6b` = format 0xb type 3'),
]

# SHIFT/MASK macros that must agree with a FIELD line.
MACRO_PAIRS = [
    ('HDR_W4.class', 'BUZZ_HDR_W4_CLASS_SHIFT', 'BUZZ_HDR_W4_CLASS_MASK'),
    ('HDR_W4.code', 'BUZZ_HDR_W4_CODE_SHIFT', 'BUZZ_HDR_W4_CODE_MASK'),
    ('HDR_W4.size_field', 'BUZZ_HDR_W4_SIZEFLD_SHIFT', 'BUZZ_HDR_W4_SIZEFLD_MASK'),
    ('HDR_W4.pixel_size', 'BUZZ_HDR_W4_PSIZE_SHIFT', 'BUZZ_HDR_W4_PSIZE_MASK'),
    ('HDR_W4.field_a', 'BUZZ_HDR_W4_FIELD_A_SHIFT', 'BUZZ_HDR_W4_FIELD_MASK'),
    ('HDR_W4.field_b', 'BUZZ_HDR_W4_FIELD_B_SHIFT', 'BUZZ_HDR_W4_FIELD_MASK'),
    ('HDR_W7.format', 'BUZZ_HDR_W7_FORMAT_SHIFT', 'BUZZ_HDR_W7_FORMAT_MASK'),
    ('HDR_W7.type', 'BUZZ_HDR_W7_TYPE_SHIFT', 'BUZZ_HDR_W7_TYPE_MASK'),
    ('HDR_W7.psize', 'BUZZ_HDR_W7_PSIZE_SHIFT', 'BUZZ_HDR_W7_PSIZE_MASK'),
    ('TEXLEVEL_W1.format_index', 'BUZZ_TEXLEVEL_W1_FMT_SHIFT', 'BUZZ_TEXLEVEL_W1_FMT_MASK'),
    ('TEXLEVEL_W1.offset_code', 'BUZZ_TEXLEVEL_W1_OFFS_SHIFT', 'BUZZ_TEXLEVEL_W1_OFFS_MASK'),
    ('TEXLEVEL_W1.size_code', 'BUZZ_TEXLEVEL_W1_SIZE_SHIFT', 'BUZZ_TEXLEVEL_W1_SIZE_MASK'),
]
# Whole-word masks that must equal a field's in-place mask.
INPLACE = [
    ('HDR_W7.type', 'BUZZ_HDR_W7_TYPE_INPLACE'),
    ('TEXLEVEL_W1.pitch', 'BUZZ_TEXLEVEL_W1_PITCH_MASK'),
]

FIELD_RE = re.compile(r'/\*\s*FIELD:\s*(\w+)\.(\w+)\s+(\d+):(\d+)\s+(\w+)\s*\*/')
TV_RE = re.compile(r'TESTVEC:\s*(0x[0-9a-fA-F]+)\s+as\s+(\w+)\s*=>\s*(.+?)\s*$')
DEF_RE = re.compile(r'^#define\s+(\w+)\s+\(?\s*(0x[0-9a-fA-F]+|\d+)[uU]?\s*\)?')
SHL_RE = re.compile(r'^#define\s+(\w+)\s+\(\s*1u?\s*<<\s*(\d+)\s*\)')


def read(path):
    with open(os.path.join(REPO, path), encoding='utf-8') as f:
        return f.read()


class Report:
    def __init__(self):
        self.fails = []

    def fail(self, where, msg):
        self.fails.append('%s: %s' % (where, msg))
        print('FAIL %s: %s' % (where, msg))


def check_banned(rep, header, text):
    for n, line in enumerate(text.splitlines(), 1):
        for label, rx in BANNED:
            m = re.search(rx, line)
            if m:
                rep.fail('%s:%d' % (header, n),
                         'banned content (%s) %r in: %s' % (label, m.group(0), line.strip()))


def parse_fields(rep, header, text):
    fields = {}
    for n, line in enumerate(text.splitlines(), 1):
        if 'FIELD:' not in line or '<' in line:  # '<' marks the grammar lines
            continue
        m = FIELD_RE.search(line)
        if not m:
            rep.fail('%s:%d' % (header, n), 'malformed FIELD line: %s' % line.strip())
            continue
        word, name, hi, lo, grade = m.group(1), m.group(2), int(m.group(3)), int(m.group(4)), m.group(5)
        key = '%s.%s' % (word, name)
        if key in fields:
            rep.fail('%s:%d' % (header, n), 'duplicate field %s' % key)
        if not (0 <= lo <= hi <= 31):
            rep.fail('%s:%d' % (header, n), 'bad range %d:%d for %s' % (hi, lo, key))
        if grade not in GRADES:
            rep.fail('%s:%d' % (header, n), 'bad grade %r for %s' % (grade, key))
        fields[key] = (hi, lo, grade, n)
    by_word = {}
    for key, (hi, lo, _g, n) in fields.items():
        by_word.setdefault(key.split('.')[0], []).append((hi, lo, key))
    for word, items in by_word.items():
        items.sort()
        for i, (hi, lo, key) in enumerate(items):
            for hi2, lo2, key2 in items[i + 1:]:
                if lo2 <= hi and lo <= hi2:
                    rep.fail(header, 'fields overlap in %s: %s (%d:%d) and %s (%d:%d)'
                             % (word, key, hi, lo, key2, hi2, lo2))
    return fields


def parse_defines(text):
    defs = {}
    for line in text.splitlines():
        m = SHL_RE.match(line)
        if m:
            defs[m.group(1)] = 1 << int(m.group(2))
            continue
        m = DEF_RE.match(line)
        if m:
            defs[m.group(1)] = int(m.group(2), 0)
    return defs


def check_macros(rep, header, fields, defs):
    for key, sh, mk in MACRO_PAIRS:
        if key not in fields:
            rep.fail(header, 'missing FIELD for %s' % key)
            continue
        hi, lo = fields[key][0], fields[key][1]
        if sh not in defs or mk not in defs:
            rep.fail(header, 'missing macro %s or %s' % (sh, mk))
            continue
        if defs[sh] != lo or defs[mk] != (1 << (hi - lo + 1)) - 1:
            rep.fail(header, '%s macros (shift %d, mask 0x%x) contradict FIELD %d:%d'
                     % (key, defs[sh], defs[mk], hi, lo))
    for key, mk in INPLACE:
        hi, lo = fields[key][0], fields[key][1]
        want = ((1 << (hi - lo + 1)) - 1) << lo
        if defs.get(mk) != want:
            rep.fail(header, '%s = 0x%x, FIELD %s %d:%d needs 0x%x'
                     % (mk, defs.get(mk, -1), key, hi, lo, want))


def check_testvecs(rep, header, text, fields):
    vecs = {}
    for n, line in enumerate(text.splitlines(), 1):
        if 'TESTVEC:' not in line or '<' in line:
            continue
        m = TV_RE.search(line)
        if not m:
            rep.fail('%s:%d' % (header, n), 'malformed TESTVEC line: %s' % line.strip())
            continue
        value, word = int(m.group(1), 16), m.group(2)
        vecs[value, word] = {}
        for part in m.group(3).split(','):
            name, _, want = part.strip().partition('=')
            key = '%s.%s' % (word, name)
            if key not in fields:
                rep.fail('%s:%d' % (header, n), 'TESTVEC names unknown field %s' % key)
                continue
            hi, lo = fields[key][0], fields[key][1]
            got = (value >> lo) & ((1 << (hi - lo + 1)) - 1)
            vecs[value, word][name] = got
            if got != int(want, 0):
                rep.fail('%s:%d' % (header, n), '0x%x as %s: %s is %d by the header ranges (%d:%d), TESTVEC says %s'
                         % (value, word, name, got, hi, lo, want))
    return vecs


def check_claims(rep, header, fields):
    cache = {}
    for label, doc, rx, binds in CLAIMS:
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
        for key, hg, lg in binds:
            if key not in fields:
                rep.fail(header, 'no FIELD for %s (claim "%s")' % (key, label))
                continue
            if hg is None:
                continue
            hi = int(m.group(hg))
            lo = int(m.group(lg)) if lg else hi
            if (hi, lo) != (fields[key][0], fields[key][1]):
                rep.fail(header, '%s is %d:%d in the header but %d:%d in %s ("%s")'
                         % (key, fields[key][0], fields[key][1], hi, lo, doc, label))
    # Single-bit prose that names the bit by "bit N" only.
    return None


def check_prose_vectors(rep, header, vecs):
    pp = read('docs/pixel-paths.md')
    for value, fmt, typ, rx in PROSE_VECTORS:
        if not re.search(rx, pp, re.S):
            rep.fail('docs/pixel-paths.md', 'prose decode of 0x%x not found' % value)
        v = vecs.get((value, 'HDR_W7'))
        if v is None:
            rep.fail(header, 'no TESTVEC for 0x%x as HDR_W7' % value)
        elif v.get('format') != fmt or v.get('type') != typ:
            rep.fail(header, 'TESTVEC 0x%x decodes format=%s type=%s; prose says format=%d type=%d'
                     % (value, v.get('format'), v.get('type'), fmt, typ))
    for value, word, want in [(0x08, 'HDR_W4', {'class': 0, 'code': 1}),
                              (0x82233000, 'HDR_W4', {'class': 0, 'code': 0})]:
        v = vecs.get((value, word))
        if v is None:
            rep.fail(header, 'no TESTVEC for 0x%x as %s' % (value, word))
        else:
            for k, w in want.items():
                if v.get(k) != w:
                    rep.fail(header, 'TESTVEC 0x%x %s=%s, expected %d' % (value, k, v.get(k), w))
    if not re.search(r'Word 4 bits 7:0 are `0x08`: class \(bits 2:0\) 0, code \(bits 7:3\) 1', pp):
        rep.fail('docs/pixel-paths.md', 'prose decode of read value 0x08 not found')


def main():
    ap = argparse.ArgumentParser(description=__doc__.split('\n')[0])
    ap.add_argument('--header', default='BUZZ_DECODE.h')
    ap.add_argument('--verbose', action='store_true')
    args = ap.parse_args()
    try:
        text = read(args.header)
    except OSError as e:
        print('error: cannot read %s: %s' % (args.header, e), file=sys.stderr)
        return 2
    rep = Report()
    check_banned(rep, args.header, text)
    fields = parse_fields(rep, args.header, text)
    defs = parse_defines(text)
    check_macros(rep, args.header, fields, defs)
    vecs = check_testvecs(rep, args.header, text, fields)
    check_claims(rep, args.header, fields)
    check_prose_vectors(rep, args.header, vecs)
    if args.verbose:
        print('%d fields, %d test vectors, %d macros, %d prose claims'
              % (len(fields), len(vecs), len(defs), len(CLAIMS)))
    if rep.fails:
        print('%d failure(s)' % len(rep.fails))
        return 1
    print('ok: %s is publish-safe and consistent with the prose' % args.header)
    return 0


if __name__ == '__main__':
    sys.exit(main())
