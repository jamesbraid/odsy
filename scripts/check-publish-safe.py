#!/usr/bin/env python3
"""Publish-safety and consistency check for the odsy decode headers.

Usage (from anywhere; paths are relative to the repository root):
    python3 scripts/check-publish-safe.py [--header H ...] [--verbose]

With no --header it checks BUZZ_DECODE.h, DISPLAY_DECODE.h, PBJ_DECODE.h,
TEXTURE_DECODE.h and DMA_DECODE.h.
Needs only the Python 3 standard library. Exit status 0 means clean, 1 means
at least one failure (each offending line is printed), 2 means a usage or
setup problem (a file missing).

Three checks, applied to all five headers:

1. Publish-safety. The headers go into public projects, so they must carry no
   vendor source path, no routine or symbol name, no raw address or binary
   offset, and no vendor-internal identifier. Opcodes and bit ranges are
   wire-format facts and are allowed.
2. Internal consistency. Every `FIELD:` line is well formed and no two fields
   of one word overlap. Each `TESTVEC:` line is decoded with the header's own
   field ranges and must come out as stated. The SHIFT/MASK macros must agree
   with their FIELD line.
3. Cross-check against the prose in docs/ (and the private DISPLAY.h, PBJ.h,
   BUZZ.h): the bit ranges and offsets the prose states must equal the
   header's. A prose passage that no longer matches also fails, so drift in
   either direction is caught.

DISPLAY_DECODE.h and PBJ_DECODE.h add the REG form:

    REG: <BLOCK>.<name> <offset> <acc><width> [count=<n>] reset=<v> <grade>
    FIELD: <BLOCK>.<name>.<field> <hi>:<lo> <grade>      scoped to a register
    FIELD: <WORD>.<field> <hi>:<lo> <grade>              a non-register word
    ENUM: <target> <value> <label> <grade>
    TESTVEC / EXAMPLE (unverified): <value> as <target> => field=val, ...

A register offset is a small display-space address (at most 0xffff) and may
appear ONLY inside a REG line. The same offset anywhere else in these two
headers fails, as does any code or kernel address in a REG line. TESTVEC
lines name an address as @<BLOCK>.<name> instead. A TESTVEC value must be one
the RE notes record; layout-only values are written as unverified EXAMPLE
lines, which are decoded for consistency but not compared with the notes.

TEXTURE_DECODE.h has no registers. It uses FIELD/ENUM/TESTVEC/EXAMPLE on
named words, plus two more things the check reads: the rows of the texel format
table (compared with the recorded exhaustive run of the format routines and with
the table in docs/texture-formats.md) and CALC lines for the pitch and slice
helper functions (evaluated here against a reference and, when a C compiler is
present, by compiling the header and running the helpers and the table).

DMA_DECODE.h has no registers. It describes DMA-engine descriptor words, and
adds a rule that no address value appears in it: a hex literal of five or more
digits is allowed only as a contiguous bit mask or as the one descriptor size
limit, a decimal literal of seven or more digits is refused, a macro with ADDR in
its name must be a SHIFT, MASK or BITS, and no TESTVEC or EXAMPLE may name or
set bits in an address field (a field whose name starts "addr"). Its field
ranges, macros, enums and vectors are checked as for the display headers, its
bits are compared with BUZZ_DECODE.h where it reuses them, and its constants are
compared with docs/kernel.md, docs/pixel-paths.md, docs/registers.md and BUZZ.h.

Generated Rust. With no --header the check also scans generated/odyssey-regs/*.rs
(the Rust modules scripts/gen_odyssey_rust.py writes from the headers) with the
same publish-safety rules, and fails if they are stale against the headers.
Beyond the shared rules a .rs file must carry the generator banner naming a real
commit (no "-dirty"), no word "odsy" anywhere else, no note-file or URL pointer,
no hex literal of five or more digits that is neither in its header nor a
contiguous bit mask, and no decimal literal of seven or more digits. Pass
--rust to run only that part.

Hooking in: the repository has no CI entry point or push hook of its own, so this
check is run by hand.
"""
import argparse
import os
import re
import subprocess
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
     r'\b(?!(?:BUZZ|DISPLAY|PBJ|TEXTURE|DMA)_DECODE\.h\b|stdint\.h\b)[\w-]+\.h\b'),
    ('odsy symbol', r'\bodsy(?:[A-Z_]\w*)'),
    ('driver routine prefix', r'\b(?:gfP_|gfx_|ody_|odsy_)\w*'),
    ('library routine', r'\b__gl\w*|\bRenderFunc\w*|\bImage(?:Chain|Xfer|Calc|Copy|ToDma)\w*'),
    ('library routine', r'\b(?:SetupDMA|MovePixels|Validate(?:Hardware|Texture)|CalcTexel|ChooseSuitable)\w*'),
    ('mixed-case call', r'\b[a-z]+[A-Z]\w*\('),
    ('kernel object name', r'\b\w+_(?:tport|pon|sdram|brdmgr|pmm|ctxsw)\b'),
    ('vendor register name', r'\bsys\.config\b|\b[a-z]+\.[a-z]+_config\b'),
    ('binary name', r'\blibGL\w*|\bodyssey\.(?:a|so)\b|\bbuzz_xform\b|\bbuzz_ucode\b'),
    ('vendor release cite', r'\b6\.5\.\d+m?\b'),
    ('SGI build or board token', r'\bIP\d{2}[A-Z0-9]*\b'),
    ('RE tool name', r'\bDWARF\b|\bGhidra\b|\bm2c\b|\bspimdisasm\b'),
    ('N32 or kernel virtual address', r'\b0x0d[0-9a-f]{6}\b|\b0x1fc[0-9a-f]+\b|\b0xbfc[0-9a-f]+\b|\b0xa8[0-9a-f]{6}\b|\b0x9[0-9a-f]{7}\b'),
    ('N32 code address without the leading zero', r'\b0x0?d[89a][0-9a-f]{5}\b'),
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
    for value, word, want in [(0x08, 'HDR_W4', {'class': 0, 'code': 1})]:
        v = vecs.get((value, word))
        if v is None:
            rep.fail(header, 'no TESTVEC for 0x%x as %s' % (value, word))
        else:
            for k, w in want.items():
                if v.get(k) != w:
                    rep.fail(header, 'TESTVEC 0x%x %s=%s, expected %d' % (value, k, v.get(k), w))
    if not re.search(r'Word 4 bits 7:0 are `0x08`: class \(bits 2:0\) 0, code \(bits 7:3\) 1', pp):
        rep.fail('docs/pixel-paths.md', 'prose decode of read value 0x08 not found')


# ---------------------------------------------------------------------------
# DISPLAY_DECODE.h / PBJ_DECODE.h: the REG form
# ---------------------------------------------------------------------------
NEW_HEADERS = {'DISPLAY_DECODE.h': 'DISPLAY', 'PBJ_DECODE.h': 'PBJ'}
ALL_HEADERS = ['BUZZ_DECODE.h', 'DISPLAY_DECODE.h', 'PBJ_DECODE.h', 'TEXTURE_DECODE.h',
               'DMA_DECODE.h']

# The whole line must be a REG entry. The offset is at most four hex digits, so
# a code or kernel address (0x1fc..., 0x0d......) cannot fit.
REG_RE = re.compile(
    r'^\s*/\*\s*REG:\s*([A-Z]+)\.([a-z]\w*)\s+(0x[0-9a-f]{1,4})\s+(rw|r|w)(\d+)'
    r'(?:\s+count=(\d+))?\s+reset=(unknown|0x[0-9a-f]+|\d+)\s+(\w+)\s*\*/\s*$')
FIELD3_RE = re.compile(r'/\*\s*FIELD:\s*([A-Z]+)\.([a-z]\w*)\.([a-z]\w*)\s+(\d+):(\d+)\s+(\w+)\s*\*/')
FIELD2_RE = re.compile(r'/\*\s*FIELD:\s*([A-Z_0-9]+)\.([a-z]\w*)\s+(\d+):(\d+)\s+(\w+)\s*\*/')
ENUM_RE = re.compile(r'/\*\s*ENUM:\s*([\w.]+)\s+(0x[0-9a-f]+|\d+)\s+(\w+)\s+(\w+)\s*\*/')
TV2_RE = re.compile(r'\b(TESTVEC|EXAMPLE \(unverified\)):\s*(0x[0-9a-fA-F]+)\s+as\s+([\w.]+)\s*=>\s*(.+?)\s*$')
HEXLIT_RE = re.compile(r'\b0x[0-9a-fA-F]+')
MAX_REG_ADDR = 0x3fff           # the display space is 14 bits
MAX_REG_OFFSET = 0xffff         # a REG offset is a small MMIO offset

PROSE_DOCS = ['docs/display.md', 'docs/pbj.md', 'docs/registers.md', 'DISPLAY.h', 'PBJ.h']


def parse_regs(rep, header, text, block):
    regs = {}
    for n, line in enumerate(text.splitlines(), 1):
        if not re.search(r'\bREG:', line) or '<' in line:
            continue
        where = '%s:%d' % (header, n)
        m = REG_RE.match(line)
        if not m:
            rep.fail(where, 'malformed REG line (offset must be 1-4 lowercase hex digits, '
                     'one REG per line, nothing else on it): %s' % line.strip())
            continue
        blk, name, off, acc, width, count, reset, grade = m.groups()
        key = '%s.%s' % (blk, name)
        off = int(off, 16)
        count = int(count) if count else 1
        width = int(width)
        if blk != block:
            rep.fail(where, 'REG block %s in a %s header' % (blk, block))
        if key in regs:
            rep.fail(where, 'duplicate register %s' % key)
        if grade not in GRADES:
            rep.fail(where, 'bad grade %r for %s' % (grade, key))
        if width not in (8, 16, 32, 64):
            rep.fail(where, 'odd width %d for %s' % (width, key))
        if off > MAX_REG_OFFSET or off + count - 1 > MAX_REG_ADDR:
            rep.fail(where, '%s offset/count 0x%x/%d outside the 14-bit display space' % (key, off, count))
        if count < 1:
            rep.fail(where, '%s has count 0' % key)
        regs[key] = dict(off=off, acc=acc, width=width, count=count, reset=reset,
                         grade=grade, line=n)
    if not regs:
        rep.fail(header, 'no REG entries')
    return regs


def check_reg_overlap(rep, allregs):
    items = sorted((r['off'], r['off'] + r['count'] - 1, k) for k, r in allregs.items())
    for i, (lo, hi, k) in enumerate(items):
        for lo2, hi2, k2 in items[i + 1:]:
            if lo2 <= hi:
                rep.fail('registers', '%s (0x%x-0x%x) overlaps %s (0x%x-0x%x)'
                         % (k, lo, hi, k2, lo2, hi2))


def parse_fields_new(rep, header, text, regs, prefix):
    fields = {}
    for n, line in enumerate(text.splitlines(), 1):
        if 'FIELD:' not in line or '<' in line:
            continue
        where = '%s:%d' % (header, n)
        m3 = FIELD3_RE.search(line)
        if m3:
            blk, reg, fname, hi, lo, grade = m3.groups()
            owner, key, width = '%s.%s' % (blk, reg), '%s.%s.%s' % (blk, reg, fname), None
            if owner not in regs:
                rep.fail(where, 'FIELD %s names a register with no REG line' % key)
                continue
            width = regs[owner]['width']
        else:
            m2 = FIELD2_RE.search(line)
            if not m2:
                rep.fail(where, 'malformed FIELD line: %s' % line.strip())
                continue
            word, fname, hi, lo, grade = m2.groups()
            owner, key, width = word, '%s.%s' % (word, fname), 32
        hi, lo = int(hi), int(lo)
        if key in fields:
            rep.fail(where, 'duplicate field %s' % key)
        if not (0 <= lo <= hi < width):
            rep.fail(where, 'bad range %d:%d for %s in a %d-bit word' % (hi, lo, key, width))
        if grade not in GRADES:
            rep.fail(where, 'bad grade %r for %s' % (grade, key))
        fields[key] = (hi, lo, grade, n, owner)
    by_owner = {}
    for key, (hi, lo, _g, _n, owner) in fields.items():
        by_owner.setdefault(owner, []).append((hi, lo, key))
    for owner, items in by_owner.items():
        items.sort()
        for i, (hi, lo, key) in enumerate(items):
            for hi2, lo2, key2 in items[i + 1:]:
                if lo2 <= hi and lo <= hi2:
                    rep.fail(header, 'fields overlap in %s: %s (%d:%d) and %s (%d:%d)'
                             % (owner, key, hi, lo, key2, hi2, lo2))
    return fields


def macro_base(key, prefix):
    parts = key.split('.')
    if len(parts) == 2:                      # a non-register word
        parts = [prefix] + parts
    return '_'.join(parts).upper()


def check_macros_new(rep, header, fields, defs, prefix):
    for key, (hi, lo, _g, n, _o) in fields.items():
        base = macro_base(key, prefix)
        sh, mk = defs.get(base + '_SHIFT'), defs.get(base + '_MASK')
        if sh is None or mk is None:
            rep.fail('%s:%d' % (header, n), 'missing macro %s_SHIFT or %s_MASK for %s' % (base, base, key))
            continue
        if sh != lo or mk != (1 << (hi - lo + 1)) - 1:
            rep.fail('%s:%d' % (header, n), '%s macros (shift %d, mask 0x%x) contradict FIELD %d:%d'
                     % (key, sh, mk, hi, lo))


def parse_enums(rep, header, text, fields, defs, prefix):
    enums = {}
    for n, line in enumerate(text.splitlines(), 1):
        if 'ENUM:' not in line or '<' in line:
            continue
        where = '%s:%d' % (header, n)
        m = ENUM_RE.search(line)
        if not m:
            rep.fail(where, 'malformed ENUM line: %s' % line.strip())
            continue
        target, val, label, grade = m.group(1), int(m.group(2), 0), m.group(3), m.group(4)
        if target not in fields:
            rep.fail(where, 'ENUM names unknown field %s' % target)
            continue
        hi, lo = fields[target][0], fields[target][1]
        if val >= 1 << (hi - lo + 1):
            rep.fail(where, 'ENUM value %d does not fit %s (%d:%d)' % (val, target, hi, lo))
        if grade not in GRADES:
            rep.fail(where, 'bad grade %r on ENUM %s' % (grade, label))
        if (target, label) in enums:
            rep.fail(where, 'duplicate ENUM %s %s' % (target, label))
        enums[target, label] = val
        macro = '%s_%s' % (macro_base(target, prefix), label.upper())
        if defs.get(macro) != val:
            rep.fail(where, 'ENUM %s %s = %d but macro %s is %s'
                     % (target, label, val, macro, defs.get(macro)))
    return enums


def hex_literals_outside_regs(rep, header, text, allregs):
    """A register offset may appear only inside a REG line."""
    offs = set()
    for r in allregs.values():
        if r['off'] >= 0x100:
            offs.add(r['off'])
            if r['count'] <= 64:
                offs.update(range(r['off'], r['off'] + r['count']))
    for n, line in enumerate(text.splitlines(), 1):
        if REG_RE.match(line):
            continue
        for m in HEXLIT_RE.finditer(line):
            tok = m.group(0)
            v = int(tok, 16)
            digits = len(tok) - 2
            reason = None
            if v in offs:
                reason = 'a register offset'
            elif digits == 4 and 0x1000 <= v <= MAX_REG_ADDR and (v + 1) & v:
                reason = 'a 4-digit value in the display address space'
            if reason:
                rep.fail('%s:%d' % (header, n),
                         '%s (%s) outside a REG entry; write the register name, not the number: %s'
                         % (tok, reason, line.strip()))


def decode_field(value, fields, key):
    hi, lo = fields[key][0], fields[key][1]
    return (value >> lo) & ((1 << (hi - lo + 1)) - 1)


def check_vectors_new(rep, header, text, fields, regs, allregs):
    vecs = []
    for n, line in enumerate(text.splitlines(), 1):
        if ('TESTVEC:' not in line and 'EXAMPLE (unverified):' not in line) or '<' in line:
            continue
        where = '%s:%d' % (header, n)
        m = TV2_RE.search(line)
        if not m:
            rep.fail(where, 'malformed TESTVEC/EXAMPLE line: %s' % line.strip())
            continue
        kind, value, target, rest = m.group(1), int(m.group(2), 16), m.group(3), m.group(4)
        vals = {}
        for part in rest.split(','):
            name, _, want = part.strip().partition('=')
            key = '%s.%s' % (target, name)
            if key not in fields:
                rep.fail(where, '%s names unknown field %s' % (kind, key))
                continue
            if want.startswith('@'):
                if want[1:] not in allregs:
                    rep.fail(where, '%s refers to unknown register %s' % (kind, want))
                    continue
                exp = allregs[want[1:]]['off']
            else:
                exp = int(want, 0)
            got = decode_field(value, fields, key)
            vals[name] = got
            if got != exp:
                rep.fail(where, '0x%x as %s: %s is %d (0x%x) by the header ranges, %s says %s'
                         % (value, target, name, got, got, kind, want))
        vecs.append((kind, value, target, vals, n))
    return vecs


def corpus_hex(rep):
    seen = set()
    for doc in PROSE_DOCS:
        try:
            for m in HEXLIT_RE.finditer(read(doc)):
                seen.add(int(m.group(0), 16))
        except OSError as e:
            print('error: cannot read %s: %s' % (doc, e), file=sys.stderr)
            sys.exit(2)
    return seen


MODE_ROW_RE = re.compile(
    r'^\s*\*\s+(\d+)\s+(\d)\s+(0x[0-9a-f]+|-)\s+(0x[0-9a-f]+|-)\s+'
    r'(0x[0-9a-f]+)(?:/([0-9a-f]+))?\s+(\d)\s+(0x[0-9a-f]+)\s+(\d)\s*$', re.M)


def check_vector_prose(rep, header, vecs, allregs):
    hexes = corpus_hex(rep)
    display_h = read('DISPLAY.h')
    pbj_h = read('PBJ.h')
    docs = read('docs/display.md') + read('docs/pbj.md') + pbj_h
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
        if value not in hexes:
            rep.fail(where, 'TESTVEC value 0x%x is not recorded in the RE notes; write it as an '
                     'unverified EXAMPLE' % value)
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
                rep.fail(where, 'prose decode of 0x%08x not found in PBJ.h' % value)
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


# Table rows of docs/pbj.md: | 0xADDR | access | role and derivation |
PBJ_ROW_RE = re.compile(r'^\|\s*(0x[0-9a-f]+)\s*\|\s*([^|]+?)\s*\|\s*(.*?)\s*\|\s*$', re.M)
# (register, index, a phrase the prose row for offset+index must contain)
ROW_KEYS = [
    ('DISPLAY.vtg_ctl', 0, 'Video timing generator control'),
    ('DISPLAY.vtg_init_state', 0, 'initial-state'),
    ('DISPLAY.vtg_chan_en', 0, 'channel-enable'),
    ('DISPLAY.cursor_ctl', 0, 'Cursor control'),
    ('DISPLAY.datapath_ctl', 0, 'Data-path control'),
    ('DISPLAY.dac_ctl', 0, 'DAC control'),
    ('DISPLAY.genlock_ctl', 0, 'Genlock control'),
    ('DISPLAY.genlock_status', 0, 'Genlock status'),
    ('DISPLAY.cmap_unit_ctl', 0, 'Colour-map unit configuration'),
    ('DISPLAY.cmap_override', 0, 'Red override'),
    ('DISPLAY.cmap_override', 1, 'Green override'),
    ('DISPLAY.cmap_override', 2, 'Blue override'),
    ('PBJ.hif_ctl', 0, 'Host-interface control'),
    ('PBJ.id', 0, 'Identification word'),
    ('PBJ.scan_width', 0, 'Scan-out width'),
    ('PBJ.scan_height', 0, 'Scan-out height'),
    ('PBJ.dcb_ctl', 0, 'Back-end interface configuration'),
]
HX = r'(0x[0-9a-f]+)'

# Prose claims. Each: (label, doc, regex, [binding ...]); a binding is
#   ('F', field, hi_group, lo_group|None)   field range equals the prose
#   ('O', reg, group)                       offset equals the prose
#   ('E', reg, group)                       last register of the block
#   ('C', reg, group, mult)                 count * mult equals the prose (hex or decimal)
#   ('LO', field, group, add)               field's low bit is group + add
#   ('WHEX', field, group)                  field width is four bits per hex digit
#   ('IN', [fields], hi_group, lo_group)    fields lie inside the prose range
#   ('M', [fields], group)                  single-bit fields make up the prose mask
#   ('EN', field, label, group)             enum value
#   ('DEF', macro, group)                   macro value
NEW_CLAIMS = [
    ('colour map channels', 'docs/display.md',
     r'R in bits (\d+):(\d+), G in (\d+):(\d+), B in (\d+):(\d+)',
     [('F', 'DISPLAY.cmap.r', 1, 2), ('F', 'DISPLAY.cmap.g', 3, 4), ('F', 'DISPLAY.cmap.b', 5, 6)]),
    ('cursor colour channels', 'docs/display.md',
     r'colour-table entry is three 10-bit fields at (\d+):(\d+), (\d+):(\d+) and (\d+):(\d+)',
     [('F', 'DISPLAY.cursor_colors.r', 1, 2), ('F', 'DISPLAY.cursor_colors.g', 3, 4),
      ('F', 'DISPLAY.cursor_colors.b', 5, 6)]),
    ('colour map extent', 'docs/pbj.md',
     r'so entries (0) to ' + HX + r' exist',
     [('O', 'DISPLAY.cmap', 1), ('E', 'DISPLAY.cmap', 2)]),
    ('frame and line table', 'docs/display.md',
     r'frame table lives at display address ' + HX + r' \(up to (\d+) entries\) and the line table at '
     + HX + r' \(up to (\d+) entries\)',
     [('O', 'DISPLAY.frame_table', 1), ('C', 'DISPLAY.frame_table', 2, 2),
      ('O', 'DISPLAY.line_table', 3), ('C', 'DISPLAY.line_table', 4, 2)]),
    ('table entry packing', 'docs/display.md',
     r'word = e\[2k\] \| e\[2k\+1\] << (\d+)',
     [('LO', 'DISPLAY.line_table.e1_end', 1, 15), ('LO', 'DISPLAY.line_table.e1_duration', 1, 8),
      ('LO', 'DISPLAY.line_table.e1_levels', 1, 0), ('LO', 'DISPLAY.frame_table.repeat', 1, 0)]),
    ('line entry end flag', 'docs/display.md',
     r'run of 16-bit entries whose last has bit (\d+) set',
     [('F', 'DISPLAY.line_table.e0_end', 1, None)]),
    ('line entry duration', 'docs/display.md',
     r'bits (\d+):(\d+) are a duration in pixel clocks for timed entries and bits (\d+):(\d+) the output states',
     [('F', 'DISPLAY.line_table.e0_duration', 1, 2), ('F', 'DISPLAY.line_table.e0_levels', 3, 4)]),
    ('init-state blank bit', 'docs/pbj.md',
     r'shadow that `odsyBlankScreen` clears bit (\d+) of',
     [('F', 'DISPLAY.vtg_init_state.blank_gate', 1, None)]),
    ('channel-enable blank bits', 'docs/pbj.md',
     r'clears the three bits of mask ' + HX + r' in it',
     [('M', ['DISPLAY.vtg_chan_en.blank_gate_5', 'DISPLAY.vtg_chan_en.blank_gate_1',
             'DISPLAY.vtg_chan_en.blank_gate_0'], 1)]),
    ('timing control locked bit', 'PBJ.h',
     r'0x2481 bit (\d+) is set while locked',
     [('F', 'DISPLAY.vtg_ctl.locked', 1, None)]),
    ('cursor position and control', 'docs/display.md',
     HX + r' is the cursor position, ' + HX + r' the control word',
     [('O', 'DISPLAY.cursor_pos', 1), ('O', 'DISPLAY.cursor_ctl', 2)]),
    ('cursor image blocks', 'docs/display.md',
     HX + r' to ' + HX + r' \((\d+) words\) and ' + HX + r' to ' + HX + r' \((\d+) words\) hold the cursor image',
     [('O', 'DISPLAY.cursor_image_a', 1), ('E', 'DISPLAY.cursor_image_a', 2), ('C', 'DISPLAY.cursor_image_a', 3, 1),
      ('O', 'DISPLAY.cursor_image_b', 4), ('E', 'DISPLAY.cursor_image_b', 5), ('C', 'DISPLAY.cursor_image_b', 6, 1)]),
    ('cursor colour block', 'docs/display.md',
     r'The (\d+) words at ' + HX + r' are then the colours',
     [('C', 'DISPLAY.cursor_colors', 1, 1), ('O', 'DISPLAY.cursor_colors', 2)]),
    ('cursor position packing', 'docs/display.md',
     r'\(\(x - x0\) << (\d+)\) \| \(\(y - y0\) & 0x(f+)\)',
     [('LO', 'DISPLAY.cursor_pos.x', 1, 0), ('WHEX', 'DISPLAY.cursor_pos.y', 2)]),
    ('cursor control field groups', 'docs/display.md',
     r'clears bits (\d+):(\d+) and sets bits (\d+):(\d+), so enable and delay enable are in bits (\d+):(\d+) '
     r'and the other three fields \(dual head, fq, cross-hair\) in bits (\d+):(\d+)',
     [('IN', ['DISPLAY.cursor_ctl.enable', 'DISPLAY.cursor_ctl.delay_enable'], 5, 6),
      ('IN', ['DISPLAY.cursor_ctl.dual_head', 'DISPLAY.cursor_ctl.field_seq', 'DISPLAY.cursor_ctl.crosshair'], 7, 8)]),
    ('cursor control bit assignment', 'docs/display.md',
     r'dual head bit (\d+), fq bit (\d+), cross-hair bit (\d+), enable bit (\d+), delay enable bit (\d+)',
     [('F', 'DISPLAY.cursor_ctl.dual_head', 1, None), ('F', 'DISPLAY.cursor_ctl.field_seq', 2, None),
      ('F', 'DISPLAY.cursor_ctl.crosshair', 3, None), ('F', 'DISPLAY.cursor_ctl.enable', 4, None),
      ('F', 'DISPLAY.cursor_ctl.delay_enable', 5, None)]),
    ('cursor control toggle bit', 'docs/pbj.md',
     r'rewrites it from that mirror with a toggled bit (\d+)',
     [('F', 'DISPLAY.cursor_ctl.toggle', 1, None)]),
    ('data-path bits', 'docs/pbj.md',
     r'setting bit (\d+) when bit (\d+) is set',
     [('F', 'DISPLAY.datapath_ctl.bit7', 1, None), ('F', 'DISPLAY.datapath_ctl.bit6', 2, None)]),
    ('DAC bits', 'docs/pbj.md',
     r'sets bit (\d+) here to blank, `odsySetDACGain` sets or clears bit (\d+)',
     [('F', 'DISPLAY.dac_ctl.blank', 1, None), ('F', 'DISPLAY.dac_ctl.gain', 2, None)]),
    ('timing words to DAC, data path, state machine', 'docs/display.md',
     r'written to ' + HX + r', ' + HX + r', ' + HX + r'; bit 6 of word 164',
     [('O', 'DISPLAY.dac_ctl', 1), ('O', 'DISPLAY.datapath_ctl', 2), ('O', 'DISPLAY.aux_ctl', 3)]),
    ('twelve timing words', 'docs/display.md',
     r'twelve words written in order to ' + HX + r' to ' + HX,
     [('O', 'DISPLAY.vtg_misc', 1), ('E', 'DISPLAY.vtg_misc', 2)]),
    ('genlock enabled bit', 'docs/pbj.md',
     r'continues only when bit (\d+) is set',
     [('F', 'DISPLAY.genlock_ctl.enabled', 1, None)]),
    ('genlock status bits', 'docs/pbj.md',
     r'bit (\d+) as the lock state and bit (\d+) as the lock source',
     [('F', 'DISPLAY.genlock_status.lost', 1, None), ('F', 'DISPLAY.genlock_status.valid', 2, None)]),
    ('display-mode table base', 'docs/pbj.md',
     r'display-mode table \(' + HX + r' \+ id\)',
     [('O', 'DISPLAY.mode_table', 1)]),
    ('display-mode table length', 'DISPLAY.h',
     r'ids (\d+)-(\d+) follow in\s+\*? ?both',
     [('CDEC', 'DISPLAY.mode_table', 2, 1)]),
    ('mode word columns', 'DISPLAY.h',
     r'B mode\s+bits (\d+):(\d+)\s+(\d+):(\d+)\s+(\d+):(\d+)\s+(\d+):(\d+)',
     [('F', 'DISPLAY.mode_table.layout', 1, 2), ('F', 'DISPLAY.mode_table.pixel_format', 3, 4),
      ('F', 'DISPLAY.mode_table.cmap_group', 5, 6), ('F', 'DISPLAY.mode_table.low_code', 7, 8)]),
    ('gamma group', 'DISPLAY.h', r'MODE_CMAP_GAMMA\s+(\d+)',
     [('EN', 'DISPLAY.mode_table.cmap_group', 'gamma', 1)]),
    ('pixel format codes', 'DISPLAY.h',
     r'MODE_FMT_RGB10\s+(\d+).*?MODE_FMT_RGB8\s+(\d+).*?MODE_FMT_RGB5\s+(\d+).*?MODE_FMT_RGB4\s+(\d+)'
     r'.*?MODE_FMT_RGB10_ALT\s+(\d+)',
     [('EN', 'DISPLAY.mode_table.pixel_format', 'rgb10', 1), ('EN', 'DISPLAY.mode_table.pixel_format', 'rgb8', 2),
      ('EN', 'DISPLAY.mode_table.pixel_format', 'rgb5', 3), ('EN', 'DISPLAY.mode_table.pixel_format', 'rgb4', 4),
      ('EN', 'DISPLAY.mode_table.pixel_format', 'rgb10_alt', 5)]),
    ('host-interface control fields', 'docs/pbj.md',
     r'bits (\d+):(\d+) take the clock-select field of timing word 212, bits (\d+):(\d+) that of word 216, '
     r'bit (\d+) is held clear',
     [('F', 'PBJ.hif_ctl.clock_sel_a', 1, 2), ('F', 'PBJ.hif_ctl.clock_sel_b', 3, 4),
      ('F', 'PBJ.hif_ctl.clock_run', 5, None)]),
    ('identification fields', 'docs/pbj.md',
     r'which stores bits (\d+):(\d+) at record',
     [('F', 'PBJ.id.version', 1, 2)]),
    ('identification option bit', 'docs/pbj.md',
     r'skips the option-card probe when bit (\d+) is set',
     [('F', 'PBJ.id.no_option', 1, None)]),
    ('I2C option port', 'PBJ.h',
     r'PBJ_I2C_OPT_CTRL\s+' + HX + r'.*?PBJ_I2C_OPT_DATA\s+' + HX + r'.*?PBJ_I2C_MAIN_CTRL\s+' + HX
     + r'.*?PBJ_I2C_MAIN_DATA\s+' + HX,
     [('O', 'PBJ.i2c_opt_ctl', 1), ('O', 'PBJ.i2c_opt_data', 2),
      ('O', 'PBJ.i2c_main_ctl', 3), ('O', 'PBJ.i2c_main_data', 4)]),
    ('I2C control bits', 'PBJ.h',
     r'clears bits (\d+), (\d+)[\s*]+and (\d+) in its shadow',
     [('F', 'PBJ.i2c_opt_ctl.bit12', 1, None), ('F', 'PBJ.i2c_opt_ctl.bit8', 2, None),
      ('F', 'PBJ.i2c_opt_ctl.bit10', 3, None), ('F', 'PBJ.i2c_main_ctl.bit12', 1, None),
      ('F', 'PBJ.i2c_main_ctl.bit8', 2, None), ('F', 'PBJ.i2c_main_ctl.bit10', 3, None)]),
    ('I2C status bit', 'PBJ.h',
     r'polls the second register for bit (\d+)',
     [('F', 'PBJ.i2c_opt_data.bit9', 1, None), ('F', 'PBJ.i2c_main_data.bit9', 1, None)]),
    ('scanout base, pitch, depth', 'docs/display.md',
     r'scanout base \(' + HX + r', ' + HX + r'\), pitch \(' + HX + r'\) and depth \(' + HX + r'\)',
     [('O', 'PBJ.fb_base_b', 1), ('O', 'PBJ.fb_base_a', 2), ('O', 'PBJ.fb_pitch', 3), ('O', 'PBJ.fb_depth', 4)]),
    ('scan configuration words', 'docs/display.md',
     r'bits 1:0 to ' + HX + r'; bit 5 to ' + HX + r' and to ' + HX,
     [('O', 'PBJ.scan_cfg_a', 1), ('O', 'PBJ.scan_cfg_c', 2), ('O', 'DISPLAY.cmap_unit_ctl', 3)]),
    ('second scan configuration register', 'PBJ.h',
     r'PBJ_REG_2805\s+' + HX,
     [('O', 'PBJ.scan_cfg_b', 1)]),
    ('pixel size codes', 'PBJ.h',
     r'PBJ_FB_DEPTH_8\s+(\d+).*?PBJ_FB_DEPTH_16\s+(\d+).*?PBJ_FB_DEPTH_32\s+(\d+)',
     [('EN', 'PBJ.fb_depth.code', 'bpp8', 1), ('EN', 'PBJ.fb_depth.code', 'bpp16', 2),
      ('EN', 'PBJ.fb_depth.code', 'bpp32', 3)]),
    ('back-end interface clock field', 'docs/display.md',
     r'\| 208 \| bits (\d+):(\d+) to ' + HX,
     [('F', 'PBJ.dcb_ctl.dcb_clock', 1, 2), ('O', 'PBJ.dcb_ctl', 3)]),
    ('FIFO header layout', 'PBJ.h',
     r'a header \(type (\d+):(\d+), address (\d+):(\d+), count[\s*]+(\d+):(\d+)\)',
     [('F', 'FIFO_HDR.type', 1, 2), ('F', 'FIFO_HDR.address', 3, 4), ('F', 'FIFO_HDR.count', 5, 6)]),
    ('FIFO header types', 'PBJ.h',
     r'PBJ_TYPE_NOW\s+(\d+).*?PBJ_TYPE_SYNCED\s+(\d+)',
     [('EN', 'FIFO_HDR.type', 'now', 1), ('EN', 'FIFO_HDR.type', 'synced', 2)]),
    ('FIFO address width', 'PBJ.h', r'PBJ_ADDR_BITS\s+(\d+)',
     [('DEF', 'PBJ_ADDR_BITS', 1)]),
    ('FIFO depth', 'PBJ.h', r'the depth is defined as (\d+) doublewords',
     [('DEF', 'PBJ_FIFO_DEPTH_DWORDS', 1)]),
    ('read-back slot', 'PBJ.h', r'0x4000 slots of (\d+) bytes',
     [('DEF', 'PBJ_READ_SLOT_BYTES', 1)]),
    ('display FIFO level field', 'docs/registers.md',
     r'bits (\d+):(\d+) are the display FIFO level',
     [('WDEC', None, 1, 2, 7)]),
    ('display FIFO port is a 64-bit store', 'docs/registers.md',
     r'\| 0x400000 \| store (\d+) bits \| \*\*established\.\*\* Display FIFO port',
     [('EQ', 64, 1)]),
]


def check_new_claims(rep, header, fields, regs, enums, defs, claims=None):
    cache = {}
    for label, doc, rx, binds in (NEW_CLAIMS if claims is None else claims):
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

        def g(i):
            return m.group(i)

        def num(i):
            t = g(i)
            return int(t, 16) if t.startswith('0x') else int(t)
        for b in binds:
            kind = b[0]
            if kind == 'WDEC':
                if int(g(b[2])) - int(g(b[3])) + 1 != b[4]:
                    rep.fail(doc, '"%s": prose field is not %d bits wide' % (label, b[4]))
                continue
            if kind == 'EQ':
                if num(b[2]) != b[1]:
                    rep.fail(doc, '"%s": prose says %s, the header says %s' % (label, g(b[2]), b[1]))
                continue
            if kind in ('DEFN', 'DEFL'):
                want = num(b[2]) & (0xffff if kind == 'DEFL' else 0xffffffff)
                if defs.get(b[1]) != want:
                    rep.fail(header, '%s is %s but %s says 0x%x ("%s")'
                             % (b[1], defs.get(b[1]), doc, want, label))
                continue
            if kind in ('FW', 'FWD'):
                key = b[1]
                if key not in fields:
                    rep.fail(header, 'no FIELD for %s (claim "%s")' % (key, label))
                    continue
                have = fields[key][0] - fields[key][1] + 1
                want = int(g(b[2])) - int(g(b[3])) + 1 if kind == 'FW' else int(g(b[2]))
                if have != want:
                    rep.fail(header, '%s is %d bits wide but %s says %d ("%s")'
                             % (key, have, doc, want, label))
                continue
            if kind == 'DEF':
                if defs.get(b[1]) != int(g(b[2])):
                    rep.fail(header, '%s is %s but %s says %s ("%s")'
                             % (b[1], defs.get(b[1]), doc, g(b[2]), label))
                continue
            if kind == 'F':
                key = b[1]
                if key not in fields:
                    rep.fail(header, 'no FIELD for %s (claim "%s")' % (key, label))
                    continue
                hi = int(g(b[2]))
                lo = int(g(b[3])) if b[3] else hi
                if (hi, lo) != (fields[key][0], fields[key][1]):
                    rep.fail(header, '%s is %d:%d in the header but %d:%d in %s ("%s")'
                             % (key, fields[key][0], fields[key][1], hi, lo, doc, label))
            elif kind in ('O', 'E', 'C', 'CDEC'):
                key = b[1]
                if key not in regs:
                    rep.fail(header, 'no REG for %s (claim "%s")' % (key, label))
                    continue
                r = regs[key]
                if kind == 'O':
                    want, have, what = num(b[2]), r['off'], 'offset'
                elif kind == 'E':
                    want, have, what = num(b[2]), r['off'] + r['count'] - 1, 'last register'
                elif kind == 'C':
                    want, have, what = num(b[2]), r['count'] * b[3], 'count'
                else:
                    want, have, what = int(g(b[2])) + b[3], r['count'], 'count'
                if want != have:
                    rep.fail(header, '%s %s is 0x%x in the header but 0x%x in %s ("%s")'
                             % (key, what, have, want, doc, label))
            elif kind == 'LO':
                key = b[1]
                if key in fields and fields[key][1] != int(g(b[2])) + b[3]:
                    rep.fail(header, '%s low bit is %d but %s implies %d ("%s")'
                             % (key, fields[key][1], doc, int(g(b[2])) + b[3], label))
            elif kind == 'WHEX':
                key = b[1]
                if key in fields and fields[key][0] - fields[key][1] + 1 != 4 * len(g(b[2])):
                    rep.fail(header, '%s width contradicts the %d-bit mask in %s ("%s")'
                             % (key, 4 * len(g(b[2])), doc, label))
            elif kind == 'IN':
                lo_, hi_ = int(g(b[3])), int(g(b[2]))
                for key in b[1]:
                    if key in fields and not (lo_ <= fields[key][1] and fields[key][0] <= hi_):
                        rep.fail(header, '%s (%d:%d) lies outside %d:%d in %s ("%s")'
                                 % (key, fields[key][0], fields[key][1], hi_, lo_, doc, label))
            elif kind == 'M':
                bits = 0
                for key in b[1]:
                    if key in fields:
                        bits |= 1 << fields[key][1]
                if bits != num(b[2]):
                    rep.fail(header, 'fields %s make mask 0x%x but %s says 0x%x ("%s")'
                             % (', '.join(b[1]), bits, doc, num(b[2]), label))
            elif kind == 'EN':
                got = enums.get((b[1], b[2]))
                if got != int(g(b[3])):
                    rep.fail(header, 'ENUM %s %s is %s but %s says %s ("%s")'
                             % (b[1], b[2], got, doc, g(b[3]), label))


def check_pbj_rows(rep, regs):
    rows = {}
    for m in PBJ_ROW_RE.finditer(read('docs/pbj.md')):
        rows[int(m.group(1), 16)] = (m.group(2), m.group(3))
    for key, idx, phrase in ROW_KEYS:
        if key not in regs:
            continue
        r = regs[key]
        off = r['off'] + idx
        if off not in rows:
            rep.fail('docs/pbj.md', 'no register row for %s (0x%x); the header has it' % (key, off))
            continue
        cell, text = rows[off]
        if phrase not in text:
            rep.fail('docs/pbj.md', 'row 0x%x does not describe %s (expected "%s")' % (off, key, phrase))
        has_load, has_store = 'load' in cell, 'store' in cell
        hr, hw = 'r' in r['acc'], 'w' in r['acc']
        if hr != has_load:
            rep.fail('docs/pbj.md', '%s access %s but the prose row says "%s"' % (key, r['acc'], cell))
        if has_store and not hw:
            rep.fail('docs/pbj.md', '%s access %s but the prose row says "%s"' % (key, r['acc'], cell))
        if hw and not (has_store or re.search(r'writ|stor', text)):
            rep.fail('docs/pbj.md', '%s is written per the header but no prose row says so' % key)
        m = re.search(r'load (\d+) bits', cell)
        if m and int(m.group(1)) != r['width']:
            rep.fail('docs/pbj.md', '%s width %d but the prose row says load %s bits' % (key, r['width'], m.group(1)))



def load_new(rep, name, path, text):
    """Parse one DISPLAY/PBJ header; failures go to rep."""
    block = NEW_HEADERS[name]
    regs = parse_regs(rep, name, text, block)
    fields = parse_fields_new(rep, name, text, regs, block)
    defs = parse_defines(text)
    check_macros_new(rep, name, fields, defs, block)
    enums = parse_enums(rep, name, text, fields, defs, block)
    return dict(name=name, text=text, regs=regs, fields=fields, defs=defs, enums=enums)


def check_new_headers(rep, selected, verbose):
    """selected maps header basename -> path (for DISPLAY/PBJ headers under check)."""
    loaded = {}
    for name in NEW_HEADERS:
        if name in selected:
            loaded[name] = load_new(rep, name, selected[name], read(selected[name]))
        else:
            loaded[name] = load_new(Report(), name, name, read(name))
    allregs, allfields, allenums, alldefs = {}, {}, {}, {}
    for h in loaded.values():
        allregs.update(h['regs'])
        allfields.update(h['fields'])
        allenums.update(h['enums'])
        alldefs.update(h['defs'])
    check_reg_overlap(rep, allregs)
    for name, h in loaded.items():
        if name not in selected:
            continue
        check_banned(rep, name, h['text'])
        hex_literals_outside_regs(rep, name, h['text'], allregs)
        vecs = check_vectors_new(rep, name, h['text'], h['fields'], h['regs'], allregs)
        check_vector_prose(rep, name, vecs, allregs)
        if verbose:
            print('%s: %d registers, %d fields, %d enums, %d vectors'
                  % (name, len(h['regs']), len(h['fields']), len(h['enums']), len(vecs)))
    check_new_claims(rep, 'DISPLAY_DECODE.h/PBJ_DECODE.h', allfields, allregs, allenums, alldefs)
    check_pbj_rows(rep, allregs)


def check_buzz(rep, header, text, verbose):
    check_banned(rep, header, text)
    fields = parse_fields(rep, header, text)
    defs = parse_defines(text)
    check_macros(rep, header, fields, defs)
    vecs = check_testvecs(rep, header, text, fields)
    check_claims(rep, header, fields)
    check_prose_vectors(rep, header, vecs)
    if verbose:
        print('%d fields, %d test vectors, %d macros, %d prose claims'
              % (len(fields), len(vecs), len(defs), len(CLAIMS)))


# ---------------------------------------------------------------------------
# TEXTURE_DECODE.h: named words (no registers), the format table, CALC lines
# ---------------------------------------------------------------------------
TEX_HEADER = 'TEXTURE_DECODE.h'
TEX_PREFIX = 'TEX'
SWEEP = 'libglcore/runs/texture-format-index-sweep.txt'
TEX_DOCS = ['docs/texture-state.md', 'docs/texture-formats.md', 'docs/tokens.md', 'BUZZ.h']

TEX_CLAIMS = [
    # --- block words: opcode (count and id together) and operand counts ---
    ('texture-mode block word and count', 'BUZZ.h', r'(0x00011c16) \+ (\d+) words',
     [('DEFL', 'TEX_OP_TEXMODE', 1), ('DEF', 'TEX_MODE_WORDS', 2)]),
    ('level-of-detail block word and count', 'BUZZ.h', r'(0x00011013) \+ (\d+),',
     [('DEFL', 'TEX_OP_TEXLOD', 1), ('DEF', 'TEX_LOD_WORDS', 2)]),
    ('texture offset block word and count', 'BUZZ.h', r'(0x00010c3e) \+ (\d+),',
     [('DEFL', 'TEX_OP_TEXOFFSET', 1), ('DEF', 'TEX_OFFSET_WORDS', 2)]),
    ('environment block word and count', 'BUZZ.h', r'(0x0001141b) \+ (\d+),',
     [('DEFL', 'TEX_OP_TEXENV', 1), ('DEF', 'TEX_ENV_WORDS', 2)]),
    ('environment block id in the texture notes', 'docs/texture-state.md',
     r'## Texture environment block `(0x141b)`', [('DEFN', 'TEX_OP_TEXENV', 1)]),
    ('first level block word', 'docs/tokens.md',
     r'\*\*0x006\*\*, word `(0x00010406)`.*?bits (\d+):(\d+) are the index of',
     [('DEFL', 'TEX_OP_FIRSTLEVEL', 1), ('F', 'FIRSTLEVEL.index', 2, 3)]),
    ('first level unwritten bits', 'docs/tokens.md', r'Bits (\d+):(6) have no writer',
     [('F', 'FIRSTLEVEL.unwritten', 1, 2)]),
    ('scratch level descriptor', 'docs/tokens.md', r'\*\*0x006\*\* value (\d+):',
     [('DEF', 'TEX_SCRATCH_LEVEL', 1)]),
    ('target block word', 'docs/tokens.md', r'\*\*0x005\*\*, word `(0x00010405)`, one operand',
     [('DEFL', 'TEX_OP_TARGET', 1)]),
    ('active target bits', 'docs/tokens.md',
     r'sets bit (\d+) for a complete `GL_TEXTURE_3D`, else\s+bit (\d+) for `GL_TEXTURE_2D`, else '
     r'bit (\d+) for `GL_TEXTURE_1D`, sets bit (\d+) with any of them, and\s+clears bits (\d+):(\d+) and (\d+):(\d+)',
     [('F', 'TARGET.dim3', 1, None), ('F', 'TARGET.dim2', 2, None), ('F', 'TARGET.dim1', 3, None),
      ('F', 'TARGET.active', 4, None)]),
    # --- environment ---
    ('environment mode codes', 'docs/texture-state.md',
     r'Bits (\d+):(\d+) of word 0 are set to (\d) for `GL_REPLACE`.*?, (\d) for `GL_MODULATE`.*?, '
     r'(\d) for `GL_DECAL`.*?, (\d) for `GL_BLEND`.*? and (\d) for `GL_ADD`',
     [('F', 'ENV_W0.mode', 1, 2), ('EN', 'ENV_W0.mode', 'replace', 3), ('EN', 'ENV_W0.mode', 'modulate', 4),
      ('EN', 'ENV_W0.mode', 'decal', 5), ('EN', 'ENV_W0.mode', 'blend', 6), ('EN', 'ENV_W0.mode', 'add', 7)]),
    ('environment initial mode', 'docs/texture-state.md', r'initialisation sets bits 2:0 to (\d), modulate',
     [('EN', 'ENV_W0.mode', 'modulate', 1)]),
    ('environment add colour', 'docs/texture-state.md',
     r'`GL_ADD` writes (0xfff) to the four environment colour channels',
     [('DEFN', 'TEX_COLOUR12_MAX', 1)]),
    ('environment colour width', 'docs/texture-state.md', r'converts four floats to (\d+) bits per channel',
     [('DEF', 'TEX_COLOUR12_BITS', 1)]),
    ('environment colour packing', 'BUZZ.h',
     r'GL_TEXTURE_ENV_COLOR as four unsigned 12-bit channels[\s*]+packed like the border colour', []),
    ('environment add all ones', 'BUZZ.h', r'writes all ones \(0xffffff, 0xffffff\)', []),
    ('environment words 3 and 4', 'docs/texture-state.md',
     r'Words 3 and 4 of the block .*? are always zero for GL texturing', []),
    # --- texture-mode operands ---
    ('border colour layout', 'BUZZ.h',
     r'R in TEXMODE5 (\d+):(\d+), G in[\s*]+(\d+):(\d+), B in[\s*]+TEXMODE6 (\d+):(\d+), A in (\d+):(\d+)',
     [('F', 'MODE_W5.red', 1, 2), ('F', 'MODE_W5.green', 3, 4), ('F', 'MODE_W6.blue', 5, 6),
      ('F', 'MODE_W6.alpha', 7, 8)]),
    ('operand 6 offset flag', 'BUZZ.h', r'TEXMODE6 bit (\d+): complement of TEXMODE4 bit (\d+)',
     [('F', 'MODE_W6.has_offset', 1, None)]),
    ('detail combine bit', 'BUZZ.h', r'/\* Bit (\d+): detail combine', [('F', 'MODE_W0.detail_modulate', 1, None)]),
    ('detail level field', 'BUZZ.h', r'Bits (\d+):(\d+): detail level as a positive count, min\(-level, (\d+)\)',
     [('F', 'MODE_W0.detail_level', 1, 2), ('DEF', 'TEX_DETAIL_COUNT_MAX', 3)]),
    ('size exponents', 'BUZZ.h', r'Bits (\d+):(\d+), (\d+):(\d+), (\d+):(\d+): log2 size',
     [('F', 'MODE_W0.log2_s', 1, 2), ('F', 'MODE_W0.log2_t', 3, 4), ('F', 'MODE_W0.log2_r', 5, 6)]),
    ('maximum clamp field', 'BUZZ.h', r'Bits (\d+):(\d+): maximum clamp coordinate.*?\(mask (0x1ffff)\)',
     [('F', 'MODE_W1.max_clamp', 1, 2), ('F', 'MODE_W2.max_clamp', 1, 2), ('F', 'MODE_W3.max_clamp', 1, 2),
      ('DEFN', 'TEX_MODE_W1_MAX_CLAMP_MASK', 3)]),
    ('wrap auxiliary field', 'BUZZ.h', r'Bits (\d+):(\d+): a 6-bit value set with the wrap mode',
     [('F', 'MODE_W1.wrap_aux', 1, 2), ('F', 'MODE_W2.wrap_aux', 1, 2), ('F', 'MODE_W3.wrap_aux', 1, 2),
      ('FW', 'WRAPAUX.value', 1, 2)]),
    ('wrap auxiliary field (texture notes)', 'docs/texture-state.md', r'Size word bits (\d+):(\d+) of that axis',
     [('F', 'MODE_W1.wrap_aux', 1, 2), ('F', 'MODE_W2.wrap_aux', 1, 2), ('F', 'MODE_W3.wrap_aux', 1, 2)]),
    ('wrap auxiliary values', 'docs/texture-state.md',
     r'`GL_REPEAT` \(0x2901\) \| (\d+) \| (\d+) \|.*?`GL_CLAMP` \(0x2900\) \| (\d+) \| (\d+) \|.*?'
     r'`GL_CLAMP_TO_EDGE_SGIS` \(0x812f\) \| (\d+) \| (\d+) \|.*?`GL_CLAMP_TO_BORDER_SGIS` \(0x812d\) \| (\d+) \| (\d+) \|',
     [('EN', 'WRAPAUX.value', 'repeat_clamp', 2), ('EN', 'WRAPAUX.value', 'repeat_clamp', 4),
      ('EN', 'WRAPAUX.value', 'edge', 6), ('EN', 'WRAPAUX.value', 'border', 8)]),
    # --- level of detail ---
    ('level of detail word', 'BUZZ.h', r'with 8 fraction bits in (\d+) bits.*?mask (0x3fff)',
     [('DEF', 'TEX_LOD_BITS', 1), ('DEFN', 'TEX_LOD_VALUE_MASK', 2)]),
    ('level of detail field', 'docs/tokens.md', r"two's complement with eight fraction bits in bits (\d+):(\d+)",
     [('F', 'LOD.value', 1, 2)]),
    ('level of detail defaults', 'docs/tokens.md', r'them at (0x3100) \(-15\) and (0xf00) \(\+15\)',
     [('DEFN', 'TEX_LOD_MIN_DEFAULT', 1), ('DEFN', 'TEX_LOD_MAX_DEFAULT', 2)]),
    ('level of detail limits', 'docs/texture-state.md', r'limited to -(\d+) to (\d+) before they are written',
     [('DEF', 'TEX_LOD_LIMIT', 1), ('DEF', 'TEX_LOD_LIMIT', 2)]),
    # --- level table bounds and limits ---
    ('level table size', 'docs/texture-state.md', r'The level table is (\d+) entries of three words',
     [('DEF', 'TEX_LEVEL_TABLE_ENTRIES', 1)]),
    ('primary and detail ranges', 'docs/texture-state.md',
     r'at most (\d+), entries 0 to (\d+), and detail entries sit at (\d+) to (\d+)',
     [('DEF', 'TEX_PRIMARY_LEVELS_MAX', 1), ('DEF', 'TEX_PRIMARY_LAST', 2), ('DEF', 'TEX_DETAIL_FIRST', 3),
      ('DEF', 'TEX_TABLE_LAST', 4)]),
    ('unwritten entries', 'docs/texture-state.md', r'Entries (\d+) to (\d+) are never written by activation',
     [('DEF', 'TEX_UNUSED_FIRST', 1), ('DEF', 'TEX_UNUSED_LAST', 2)]),
    ('detail entry count', 'docs/texture-state.md',
     r'entries `64 - n` to 63 \(the loop at 0x[0-9a-f]+, n the negated detail level, at most (\d+)\)',
     [('DEF', 'TEX_DETAIL_COUNT_MAX', 1)]),
    ('size limit', 'docs/texture-state.md', r'no larger than (0x8000) \(32,768\)', [('DEFN', 'TEX_SIZE_MAX', 1)]),
    ('border limit', 'docs/texture-state.md', r'a border other than 0 or (\d+) makes the check',
     [('DEF', 'TEX_BORDER_MAX', 1)]),
    # --- 3D and placement ---
    ('slice exponent field', 'docs/texture-formats.md', r'Level word 2 bits (\d+):(\d+), written for 3D targets only',
     [('F', 'LEVEL3D_W2.slice_exp', 1, 2)]),
    ('slice stride', 'docs/texture-formats.md', r'this is `\((\d+) << c\) << word 2` units',
     [('DEF', 'TEX_SLICE_STRIDE_BASE', 1)]),
    ('tile width', 'docs/texture-formats.md', r'from the width in (\d+)-texel tiles rounded up to even',
     [('DEF', 'TEX_TILE_TEXELS', 1)]),
    # --- format index, class, size code, offset code ---
    ('format index width', 'docs/texture-formats.md', r'six-bit field in bits (\d+):(\d+) of word 1',
     [('FW', 'FMT.index', 1, 2)]),
    ('class width', 'docs/texture-formats.md', r'"Class" is the (\d)-bit value', [('FWD', 'CLASS.value', 1)]),
    ('size code width', 'docs/texture-formats.md', r'\*\*Word 1 bits (\d+):(\d+) are the size code',
     [('FW', 'SIZE.code', 1, 2)]),
    ('offset code width', 'docs/texture-formats.md', r'offset code \(level word 1 bits (\d+):(\d+)\)',
     [('FW', 'OFFCODE.value', 1, 2)]),
    # --- colour table ---
    ('colour table width', 'docs/texture-state.md', r'a width of 0 or a power of two up to (\d+) is accepted',
     [('DEF', 'TEX_COLTAB_MAX_WIDTH', 1)]),
    ('colour table upload targets', 'docs/texture-state.md',
     r'sixteen words to `(0x3e00) \+ i`.*?then sixteen to `(0x3e10) \+ i`.*?for i = 0 to (\d+)\)',
     [('DEFN', 'TEX_COLTAB_A_BASE', 1), ('DEFN', 'TEX_COLTAB_B_BASE', 2), ('DEF', 'TEX_COLTAB_UPLOAD_LAST', 3)]),
    ('colour table lanes', 'docs/texture-state.md',
     r'red lane of entry n in bits (\d+):(\d+), green lane in bits (\d+):(\d+)\) and the second with word n = '
     r'\(blue in (\d+):(\d+), alpha in (\d+):(\d+)\); bits (\d+):(\d+) of each word are kept',
     [('F', 'COLTAB_A.red', 1, 2), ('F', 'COLTAB_A.green', 3, 4), ('F', 'COLTAB_B.blue', 5, 6),
      ('F', 'COLTAB_B.alpha', 7, 8), ('F', 'COLTAB_A.kept', 9, 10), ('F', 'COLTAB_B.kept', 9, 10)]),
    ('colour table entry mapping', 'docs/texture-state.md',
     r'words (\d+) i to \1 i \+ (\d+) of the first table.*?upload i = n >> (\d+) at word n & (\d+) of both',
     [('DEF', 'TEX_COLTAB_UPLOAD_WORDS', 1), ('DEF', 'TEX_COLTAB_WORD_MASK', 2),
      ('DEF', 'TEX_COLTAB_UPLOAD_SHIFT', 3), ('DEF', 'TEX_COLTAB_WORD_MASK', 4)]),
    ('colour table lane conversion', 'docs/texture-state.md', r'`trunc\((\d+) x \+ 0\.5\) & (0x[0-9a-f]+)`',
     [('DEF', 'TEX_COLOUR12_ROUND_SCALE', 1), ('DEFN', 'TEX_COLOUR12_LANE_MASK', 2)]),
    ('colour table entries', 'docs/texture-state.md', r'never receives fewer than (\d+) entries',
     [('DEF', 'TEX_COLTAB_ENTRIES', 1)]),
    ('unsent upload targets', 'docs/texture-state.md',
     r'`(0x3e20)` \(dirty bit 0x040000\) and `(0x3e30)` \(0x080000\)',
     [('DEFN', 'TEX_COLTAB_C_BASE', 1), ('DEFN', 'TEX_COLTAB_D_BASE', 2)]),
]

# (opcode macro, operand count macro, id)
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
    doc = read('docs/texture-formats.md')
    sec = doc.split('## The table', 1)[1].split('By grade', 1)[0]
    drows = {}
    for line in sec.splitlines():
        cells = [c.strip() for c in line.strip().strip('|').split(' | ')]
        if len(cells) == 8 and cells[0].isdigit():
            drows[int(cells[0])] = cells
    if set(drows) != set(i for i in rows):
        rep.fail('docs/texture-formats.md', 'table rows %s differ from header rows %s'
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
    doc = read('docs/texture-formats.md')
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
    import shutil
    import subprocess
    import tempfile
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
        r = subprocess.run([cc, '-std=c11', '-Wall', '-Wextra', '-Werror', '-I', REPO, '-o', exe, src],
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


def check_texture(rep, header, text, verbose):
    check_banned(rep, header, text)
    fields = parse_fields_new(rep, header, text, {}, TEX_PREFIX)
    defs = parse_defines(text)
    check_macros_new(rep, header, fields, defs, TEX_PREFIX)
    enums = parse_enums(rep, header, text, fields, defs, TEX_PREFIX)
    vecs = check_vectors_new(rep, header, text, fields, {}, {})
    # Every TESTVEC value must be one the notes record.
    corpus = set()
    for doc in TEX_DOCS:
        for m in HEXLIT_RE.finditer(read(doc)):
            corpus.add(int(m.group(0), 16))
    for kind, value, target, _vals, n in vecs:
        if kind == 'TESTVEC' and value not in corpus:
            rep.fail('%s:%d' % (header, n), 'TESTVEC value 0x%x is not recorded in the RE notes; write it as an '
                     'unverified EXAMPLE' % value)
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
    # The mode block word must equal the one in BUZZ_DECODE.h.
    if defs.get('TEX_OP_TEXMODE') != parse_defines(read('BUZZ_DECODE.h')).get('BUZZ_OP_TEXMODE'):
        rep.fail(header, 'TEX_OP_TEXMODE differs from BUZZ_OP_TEXMODE in BUZZ_DECODE.h')
    # Environment colour is packed like the border colour.
    for a, b in (('ENV_W1.red', 'MODE_W5.red'), ('ENV_W1.green', 'MODE_W5.green'),
                 ('ENV_W2.blue', 'MODE_W6.blue'), ('ENV_W2.alpha', 'MODE_W6.alpha')):
        if a in fields and b in fields and fields[a][:2] != fields[b][:2]:
            rep.fail(header, '%s %s but %s %s: the notes pack the environment colour like the border colour'
                     % (a, fields[a][:2], b, fields[b][:2]))
    # Facts shared with BUZZ_DECODE.h.
    bz = parse_fields(Report(), 'BUZZ_DECODE.h', read('BUZZ_DECODE.h'))
    doc_f = read('docs/texture-formats.md')
    m = re.search(r'\*\*Class\*\* \(mode word 4 bits (\d+):(\d+)', doc_f)
    if not m or 'SAMPLER.activation' not in bz or (int(m.group(1)), int(m.group(2))) != bz['SAMPLER.activation'][:2]:
        rep.fail(header, 'the class is not stored where BUZZ_DECODE.h puts SAMPLER.activation')
    m = re.search(r'TEXMODE6 bit (\d+): complement of TEXMODE4 bit (\d+)', read('BUZZ.h'))
    if not m or 'SAMPLER.no_offset' not in bz or int(m.group(2)) != bz['SAMPLER.no_offset'][0]:
        rep.fail(header, 'the offset flag pair does not match SAMPLER.no_offset in BUZZ_DECODE.h')
    # The unwritten word-2 statement: BUZZ_DECODE.h must not own the same bits under another name.
    if 'LEVEL3D_W2.slice_exp' in fields and 'TEXLEVEL_W2.bits' in bz \
            and fields['LEVEL3D_W2.slice_exp'][:2] != bz['TEXLEVEL_W2.bits'][:2]:
        rep.fail(header, 'LEVEL3D_W2.slice_exp covers different bits than TEXLEVEL_W2.bits in BUZZ_DECODE.h')
    check_new_claims(rep, header, fields, {}, enums, defs, TEX_CLAIMS)
    rows, pix_to_idx = check_fmt_table(rep, header, text, enums)
    calcs = check_calcs(rep, header, text)
    compiled = check_c_compile(rep, header, rows, pix_to_idx, calcs, verbose)
    if verbose:
        print('%s: %d fields, %d enums, %d vectors (%d TESTVEC), %d format rows, %d CALC lines, %d macros, '
              '%d prose claims%s'
              % (header, len(fields), len(enums), len(vecs), sum(1 for v in vecs if v[0] == 'TESTVEC'),
                 len(rows), len(calcs), len(defs), len(TEX_CLAIMS), '' if compiled else ' (no C compile)'))


# ---------------------------------------------------------------------------
# DMA_DECODE.h: descriptor words, no registers, no address values
# ---------------------------------------------------------------------------
HEX_ANY_RE = re.compile(r'\b0x[0-9a-fA-F]+')
DEC_BIG_RE = re.compile(r'(?<![\w.])\d{7,}(?![\w.])')
DMA_SIZE_LIMIT_MACRO = 'DMA_ENTRY_MAX_BYTES'
DMA_CORPUS = ['docs/kernel.md', 'BUZZ.h', 'docs/buzz.md', 'docs/registers.md']


def is_mask(v):
    """True for a contiguous run of one bits starting at bit 0."""
    return v > 0 and (v & (v + 1)) == 0


def check_dma_no_addresses(rep, header, text, fields):
    """No address value anywhere: see the module docstring."""
    addr_fields = [k for k in fields if k.split('.')[1].startswith('addr')]
    for n, line in enumerate(text.splitlines(), 1):
        where = '%s:%d' % (header, n)
        m = DEC_BIG_RE.search(line)
        if m:
            rep.fail(where, 'decimal literal %s could be an address: %s' % (m.group(0), line.strip()))
        dm = re.match(r'^#define\s+(\w+)\s+(.*)$', line)
        name = dm.group(1) if dm else None
        # Vector lines are checked on their own: the value must have zero in
        # every address field.
        if 'TESTVEC:' in line or 'EXAMPLE (unverified):' in line:
            continue
        for hm in HEX_ANY_RE.finditer(line):
            tok = hm.group(0)
            v = int(tok, 16)
            if len(tok) - 2 < 5:
                continue
            if name and name.endswith('_MASK') and is_mask(v):
                continue
            if name == DMA_SIZE_LIMIT_MACRO:
                continue
            rep.fail(where, 'hex literal %s (5+ digits) could be an address; only a contiguous '
                     'MASK or %s may be this wide: %s' % (tok, DMA_SIZE_LIMIT_MACRO, line.strip()))
        if name and 'ADDR' in name and not re.search(r'_(SHIFT|MASK|BITS)$', name):
            rep.fail(where, 'address macro %s is not a SHIFT, MASK or BITS (values are omitted): %s'
                     % (name, line.strip()))
    return addr_fields


def check_dma_vector_addresses(rep, header, text, fields, addr_fields):
    for n, line in enumerate(text.splitlines(), 1):
        m = TV2_RE.search(line)
        if not m or '<' in line:
            continue
        value, target = int(m.group(2), 16), m.group(3)
        for key in addr_fields:
            if key.split('.')[0] != target:
                continue
            hi, lo = fields[key][0], fields[key][1]
            if (value >> lo) & ((1 << (hi - lo + 1)) - 1):
                rep.fail('%s:%d' % (header, n), '0x%x sets bits in address field %s; vectors carry no address'
                         % (value, key))
        for part in m.group(4).split(','):
            name = part.strip().partition('=')[0]
            if ('%s.%s' % (target, name)) in addr_fields:
                rep.fail('%s:%d' % (header, n), 'vector names address field %s.%s' % (target, name))


def dma_vectors_in_notes(rep, header, vecs):
    hexes = set()
    for doc in DMA_CORPUS:
        try:
            for m in HEXLIT_RE.finditer(read(doc)):
                hexes.add(int(m.group(0), 16))
        except OSError as e:
            print('error: cannot read %s: %s' % (doc, e), file=sys.stderr)
            sys.exit(2)
    for kind, value, target, _vals, n in vecs:
        if kind == 'TESTVEC' and value not in hexes:
            rep.fail('%s:%d' % (header, n), 'TESTVEC value 0x%x is not recorded in the RE notes; write it as '
                     'an unverified EXAMPLE' % value)


def span(f, key):
    return (f[key][0], f[key][1]) if key in f else None


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
        ('kick address spreading rule', 'BUZZ.h',
         r'PACK\(x\) = \(x & 0x([0-9a-f]+)\) \| \(\(x & 0x([0-9a-f]+)\) << (\d+)\)', c_pack),
        ('kick address halves', 'BUZZ.h',
         r'each (\d+)-bit half of the physical address is split after bit (\d+)[\s*]+and[\s*]+the upper seven bits sit six places higher \(bits (\d+):(\d+) of the word\)', c_half),
        ('kick address width', 'BUZZ.h', r'board takes a[\s*]+(\d+)-bit physical address', c_48),
        ('kick ids', 'BUZZ.h', r'word A: 0x0*([0-9a-f]+) or 0x0*([0-9a-f]+) \(high\)', c_ids),
        ('page entry', 'BUZZ.h',
         r'word 0 = the physical address >> (\d+),[\s*]+word 1 = \(physical address & 0x([0-9a-f]+)\) << (\d+) \| a (\d+)-bit byte count', c_page),
        ('page chunk', 'BUZZ.h', r'chunks of up to (\d+) bytes', c_chunk),
        ('descriptor size', 'docs/kernel.md', r'a list of (\d+)-byte table entries', c_entry_bytes),
        ('descriptor header', 'docs/kernel.md', r'bytes 0-(\d+) are the caller\'s (\d+)-byte header \(eight words', c_hdr),
        ('descriptor page list', 'docs/kernel.md',
         r'Bytes (\d+)-(\d+) are the page list `generatePageTable` writes \(`BUZZ.h`, eight bytes a page, up to (\d+) pages\)', c_pages),
        ('page entry bytes', 'docs/kernel.md', r'eight bytes a page, up to \d+ pages', c_page_bytes),
        ('descriptor split limit', 'docs/kernel.md', r'at most 0x([0-9a-f]+) \((\d+)\) is one entry', c_limit),
        ('descriptor header edits', 'docs/kernel.md',
         r'word \+(\d+) low half = the entry\'s x, high half = its y; word \+(\d+) low half = its width, high half = its height; '
         r'word \+(\d+) bits (\d+):(\d+) = bytes per pixel times the width', c_edits),
        ('word 7 top byte', 'docs/kernel.md',
         r'top byte of header word 7 \(request offset \d+\) to `0x([0-9a-f]+) \| \(bit 0 of \+\d+ clear \? 0x([0-9a-f]+) : 0\) '
         r'\| \(old bit (\d+)\) \| \(old bit (\d+)\)`', c_topbyte),
        ('interrupt after the last descriptor', 'docs/kernel.md',
         r'If header word \+(\d+) bit (\d+) is set, the last entry\'s word \+\d+ gets bit (\d+) set', c_irq),
        ('plain path bit', 'docs/kernel.md', r'\*\*Plain path\*\* \(header word 7 bit (\d+) clear\)', c_plain),
        ('transform path bit', 'docs/kernel.md', r'\*\*Transform path\*\* \(bit (\d+) set\)', c_transform),
        ('differs bit', 'docs/pixel-paths.md',
         r'header word 7 bit (\d+) is set when the source and destination descriptions differ', c_differs),
        ('completion tag command', 'docs/kernel.md',
         r'class-1 block 0x05a \(`0x0001([0-9a-f]{4})`, COUNT (\d+)\): operand 0 = record word \+\d+ \| 0x([0-9a-f]+), '
         r'operand 1 = the tag `0x([0-9a-f]+) \| \(counter & 0x([0-9a-f]+)\)`', c_tag),
        ('DMA-done flag bit', 'BUZZ.h', r'FLAGS_DMA_DONE_FLAG\s+\(1u << (\d+)\)', c_done),
        ('DMA-done flag clear', 'docs/registers.md', r'stores (0x[0-9a-f]+) \(the DMA-done flag\)', c_done_reg),
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


def check_dma(rep, header, text, verbose):
    check_banned(rep, header, text)
    fields = parse_fields_new(rep, header, text, {}, 'DMA')
    defs = parse_defines(text)
    check_macros_new(rep, header, fields, defs, 'DMA')
    enums = parse_enums(rep, header, text, fields, defs, 'DMA')
    addr_fields = check_dma_no_addresses(rep, header, text, fields)
    check_dma_vector_addresses(rep, header, text, fields, addr_fields)
    vecs = check_vectors_new(rep, header, text, fields, {}, {})
    dma_vectors_in_notes(rep, header, vecs)
    # Self-consistency of constants.
    if defs.get('DMA_ENTRY_BYTES') != defs.get('DMA_ENTRY_HDR_BYTES', 0) + \
            defs.get('DMA_ENTRY_PAGES_MAX', 0) * defs.get('DMA_PAGE_ENTRY_BYTES', 0):
        rep.fail(header, 'DMA_ENTRY_BYTES is not header bytes plus page entries')
    if defs.get('DMA_ENTRY_MAX_BYTES', 0) > defs.get('DMA_ENTRY_PAGES_MAX', 0) * defs.get('DMA_PAGE_CHUNK_BYTES', 0) * 2:
        rep.fail(header, 'DMA_ENTRY_MAX_BYTES exceeds what the page list could cover even with slack')
    buzz = parse_fields(Report(), 'BUZZ_DECODE.h', read('BUZZ_DECODE.h'))
    for key, other in (('ENTRY_W7.read_dir', 'HDR_W7.read_dir'), ('ENTRY_W7.transform', 'HDR_W7.transform'),
                       ('ENTRY_W7.differs', 'HDR_W7.differs')):
        if key in fields and other in buzz and span(fields, key) != (buzz[other][0], buzz[other][1]):
            rep.fail(header, '%s is %s but %s is %d:%d in BUZZ_DECODE.h' % (key, span(fields, key), other, buzz[other][0], buzz[other][1]))
    dma_claims(rep, header, fields, defs, enums, buzz)
    if verbose:
        words = sorted({k.split('.')[0] for k in fields})
        print('%s: %d words, %d fields, %d enums, %d vectors, %d address fields'
              % (header, len(words), len(fields), len(enums), len(vecs), len(addr_fields)))


RUST_DIR = 'generated/odyssey-regs'
RUST_MODULES = {'buzz': 'BUZZ_DECODE.h', 'display': 'DISPLAY_DECODE.h', 'pbj': 'PBJ_DECODE.h',
                'texture': 'TEXTURE_DECODE.h', 'dma': 'DMA_DECODE.h'}
RUST_BANNER = re.compile(r'^// generated from odsy [0-9a-f]{12} (\w+_DECODE\.h) - do not edit, regenerate in odsy$')
RUST_BANNED = [
    ('odsy named outside the banner', r'(?i)\bodsy\b'),
    ('note-file pointer', r'docs/|\.md\b|\.rs\b'),
    ('URL or host pointer', r'https?://|git@|ssh://'),
]


def check_rust(rep, rust_dir=None):
    rust_dir = rust_dir or os.path.join(REPO, RUST_DIR)
    if not os.path.isdir(rust_dir):
        rep.fail(rust_dir, 'generated Rust directory is missing; run scripts/gen_odyssey_rust.py')
        return
    present = sorted(f for f in os.listdir(rust_dir) if not f.startswith('.'))
    for f in present:
        if f[:-3] not in RUST_MODULES or not f.endswith('.rs'):
            rep.fail(os.path.join(rust_dir, f), 'not one of the five generated modules')
    for mod, header in RUST_MODULES.items():
        rel = '%s/%s.rs' % (RUST_DIR, mod)
        try:
            with open(os.path.join(rust_dir, mod + '.rs'), encoding='utf-8') as f:
                text = f.read()
        except OSError:
            rep.fail(rel, 'missing; run scripts/gen_odyssey_rust.py')
            continue
        lines = text.splitlines()
        m = RUST_BANNER.match(lines[0]) if lines else None
        if not m or m.group(1) != header:
            rep.fail(rel + ':1', 'banner is not "generated from odsy <12 hex> %s - do not edit, regenerate in odsy"' % header)
        hdr = read(header).lower()
        for n, line in enumerate(lines, 1):
            where = '%s:%d' % (rel, n)
            for label, rx in BANNED:
                mm = re.search(rx, line)
                if mm and n > 1:
                    rep.fail(where, 'banned content (%s) %r in: %s' % (label, mm.group(0), line.strip()))
            if n > 1:
                for label, rx in RUST_BANNED:
                    mm = re.search(rx, line)
                    if mm:
                        rep.fail(where, 'banned content (%s) %r in: %s' % (label, mm.group(0), line.strip()))
            for lit in re.findall(r'\b0x([0-9a-fA-F]{5,})\b', line):
                v = int(lit, 16)
                contiguous = v & (v + 1) == 0 or (v >> ((v & -v).bit_length() - 1)) & ((v >> ((v & -v).bit_length() - 1)) + 1) == 0
                if not contiguous and lit.lower().lstrip('0') not in hdr:
                    rep.fail(where, 'hex literal 0x%s is neither in %s nor a bit mask: %s' % (lit, header, line.strip()))
            if re.search(r'\b\d{7,}\b', line):
                rep.fail(where, 'decimal literal of seven or more digits: %s' % line.strip())


def check_rust_fresh(rep):
    gen = os.path.join(HERE, 'gen_odyssey_rust.py')
    r = subprocess.run([sys.executable, gen, '--root', REPO, '--check'], capture_output=True, text=True)
    if r.returncode:
        for line in (r.stderr or r.stdout).strip().splitlines() or ['generator failed']:
            rep.fail(RUST_DIR, line)


def main():
    ap = argparse.ArgumentParser(description=__doc__.split('\n')[0])
    ap.add_argument('--header', action='append',
                    help='header to check (repeatable; default: all five)')
    ap.add_argument('--verbose', action='store_true')
    ap.add_argument('--rust', action='store_true',
                    help='check only the generated Rust (leak scan and staleness)')
    args = ap.parse_args()
    headers = [] if args.rust else (args.header or ALL_HEADERS)
    rep = Report()
    selected_new = {}
    for h in headers:
        base = os.path.basename(h)
        try:
            text = read(h)
        except OSError as e:
            print('error: cannot read %s: %s' % (h, e), file=sys.stderr)
            return 2
        if base == TEX_HEADER:
            check_texture(rep, h, text, args.verbose)
        elif base in NEW_HEADERS:
            selected_new[base] = h
        elif base == 'DMA_DECODE.h':
            check_dma(rep, h, text, args.verbose)
        else:
            check_buzz(rep, h, text, args.verbose)
    if selected_new:
        check_new_headers(rep, selected_new, args.verbose)
    if args.rust or not args.header:
        check_rust(rep)
        check_rust_fresh(rep)
    if rep.fails:
        print('%d failure(s)' % len(rep.fails))
        return 1
    if headers:
        print('ok: %s publish-safe and consistent with the prose' % ', '.join(headers))
    if args.rust or not args.header:
        print('ok: generated Rust publish-safe and fresh against the headers')
    return 0


if __name__ == '__main__':
    sys.exit(main())
