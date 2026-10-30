#!/usr/bin/env python3
"""Replay an odydiags drawing test through the microcode reading and compare
the frame it predicts with the test's stored frame and checksum.

Usage: scripts/odydiags_frame_check.py [--round f32|tN] [--small]
                                       [--image IMAGE] [--program A,B,C] [--dump]

The VPro field diagnostics (odydiags, Internal Support Tools 2.7, 6.5.15
build) carry each drawing test as a function __clog_<test> that replays a
command stream recorded from the board's C simulator, one call of
_odsy_diag_wr_hw (board, address, value, size, flag) per write. The test then
reads the frame back and compares a CRC-32 of it with usr/diags/ody/checksum/
csumlist (csumlist.sml for the 128 x 64 screen); <test>.SUM and <test>.sml
hold the frames themselves (ucode/buzz_isa.md, "Pass 18").

This script handles the points test (__clog_pts, __clog_pts_small): it
extracts the writes, tracks the sequencer registers, the matrix table and the
point primitives, runs each primitive's vertices through
scripts/buzz_ucode_dataflow.py (first part, loop once per further vertex,
closing part, the slot-0 values changing per pass), places a one-pixel point
at the floor of output words 5 and 6, and builds the frame: black, white
points, rows stored top first. It prints, per point, the output words and
the pixel, then the CRC of the built frame against csumlist and a pixel
comparison against the stored frame. The rules applied are those of the
dataflow script; the frame-side rules (word 5 is x, word 6 is y, floor, row
order, Vertex2 filling z = 0 and w = 1) are stated in buzz_isa.md, pass 18.

--image picks the microcode image (default: the diagnostics' own
diagxform.bin, the image odydiags loads). --round is passed to the dataflow
run. --program replaces the start, loop and closing entries the stream
sets in sequencer 0x29, 0x2a and 0x2c (the 128 x 64 stream names a program
layout no held image has). --dump prints the decoded command stream instead.
"""
import math
import os
import struct
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import buzz_ucode_dataflow as df  # noqa: E402
from buzz_ucode_disasm import records  # noqa: E402

ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', 'root',
                    'builds', 'odydiags-6.5.15', 'usr', 'diags', 'ody')
WR_HW = '_odsy_diag_wr_hw'
FIFO = {0x110000: 'F', 0x100000: 'P'}


def elf(path):
    """Return (bytes, sections, symbols) of a big-endian ELF32 file."""
    d = open(path, 'rb').read()
    shoff, = struct.unpack_from('>I', d, 0x20)
    shentsize, shnum = struct.unpack_from('>HH', d, 0x2e)
    secs = [struct.unpack_from('>IIIIIIIIII', d, shoff + k * shentsize) for k in range(shnum)]
    syms = {}
    for s in secs:
        if s[1] != 11:              # SHT_DYNSYM
            continue
        strtab = secs[s[6]]
        for o in range(s[4], s[4] + s[5], 16):
            name, value, size = struct.unpack_from('>III', d, o)
            n = d[strtab[4] + name:d.index(b'\0', strtab[4] + name)].decode()
            syms[n] = (value, size)
    return d, [(s[3], s[4], s[5]) for s in secs if s[3]], syms


def sx(v, bits):
    return v - (1 << bits) if v >> (bits - 1) & 1 else v


def writes(path, func):
    """Follow FUNC's straight-line code and list its _odsy_diag_wr_hw calls.

    Only the instructions the generated code uses to build arguments are
    modelled; anything else makes its destination unknown. Branches are not
    followed: the clog functions are straight lines apart from local polling
    loops that make no calls to the write routine."""
    d, secs, syms = elf(path)
    start, size = syms[func]
    target = syms[WR_HW][0]
    M = (1 << 64) - 1

    def rd(addr, n):
        for a, o, s in secs:
            if a <= addr and addr + n <= a + s:
                return int.from_bytes(d[o + addr - a:o + addr - a + n], 'big')
        return None

    def off(addr):
        for a, o, s in secs:
            if a <= addr < a + s:
                return o + addr - a
        raise SystemExit(f'{addr:#x} is in no section')

    R = [None] * 32
    R[0], R[25] = 0, start          # $zero; $t9 holds the entry address
    stack, out = {}, []
    base = off(start)
    for pc in range(start, start + size, 4):
        w, = struct.unpack_from('>I', d, base + pc - start)
        op, rs, rt, rd_, sa, fn = w >> 26, w >> 21 & 31, w >> 16 & 31, w >> 11 & 31, w >> 6 & 31, w & 63
        imm = w & 0xffff
        a, b = R[rs], R[rt]
        if op == 0x0f:                                  # lui
            R[rt] = sx(imm << 16, 32) & M
        elif op == 0x0d:                                # ori
            R[rt] = None if a is None else a | imm
        elif op in (0x09, 0x19):                        # addiu, daddiu
            R[rt] = None if a is None else (a + sx(imm, 16)) & M
            if op == 0x09 and R[rt] is not None:
                R[rt] = sx(R[rt] & 0xffffffff, 32) & M
        elif op in (0x23, 0x37, 0x27):                  # lw, ld, lwu
            o = sx(imm, 16)
            if rs == 29:
                R[rt] = stack.get(o)
            elif a is not None:
                v = rd((a + o) & 0xffffffff, 8 if op == 0x37 else 4)
                R[rt] = None if v is None else (sx(v, 32) & M if op == 0x23 else v)
            else:
                R[rt] = None
        elif op in (0x2b, 0x3f):                        # sw, sd
            if rs == 29:
                stack[sx(imm, 16)] = b
        elif op == 0x03:                                # jal
            t = (pc & 0xf0000000) | (w & 0x3ffffff) << 2
            if t == target:
                out.append((pc, R[5], R[6], R[7]))
        elif op == 0 and fn in (0x21, 0x2d, 0x25):      # addu, daddu, or
            v = None if a is None or b is None else (a | b if fn == 0x25 else a + b) & M
            if fn == 0x21 and v is not None:
                v = sx(v & 0xffffffff, 32) & M
            R[rd_] = v
        elif op == 0 and fn in (0x38, 0x3c, 0x3e):      # dsll, dsll32, dsrl32
            R[rd_] = None if b is None else (
                (b << sa) if fn == 0x38 else (b << (sa + 32)) if fn == 0x3c else (b >> (sa + 32))) & M
        elif op == 0 and fn in (0x08, 0x09, 0x00) and w:  # jr, jalr, sll as nop
            if fn == 0x09:
                R[31] = None
            elif fn == 0x00:
                R[rd_] = None if b is None else sx((b << sa) & 0xffffffff, 32) & M
        elif w == 0 or op in (0x04, 0x05, 0x06, 0x07, 0x01):  # nop, branches
            pass
        else:
            for r in (rt, rd_):
                if r:
                    R[r] = None
        R[0] = 0
    return out


def stream(path, func):
    """The words reaching the two FIFO windows, doublewords high word first."""
    words = []
    for pc, addr, val, size in writes(path, func):
        if addr not in FIFO:
            continue
        if val is None:
            raise SystemExit(f'{pc:#x}: value not resolved')
        if size == 8:
            words += [(FIFO[addr], val >> 32), (FIFO[addr], val & 0xffffffff)]
        else:
            words.append((FIFO[addr], val & 0xffffffff))
    return words


def fl(w):
    return struct.unpack('>f', struct.pack('>I', w))[0]


def decode(words):
    """Split the stream into commands: (index, word, operands)."""
    i, cmds = 0, []
    while i < len(words):
        w = words[i][1]
        i0, i = i, i + 1
        top = w >> 24
        if w & 0xc000 == 0x8000 and 0x20 <= top <= 0x7f:
            cmds.append((i0, w, []))          # sequencer word, no operands
            continue
        n = (w >> 10) & 15
        n = 16 if n == 15 else n
        cmds.append((i0, w, [x[1] for x in words[i:i + n]]))
        i += n
    return cmds


def enc_val(w):
    return (w & 0x3ff) | ((w >> 23) & 1) << 10


VERTEX = {0x8080c801: 2, 0x8080cc03: 3, 0x8080d005: 4}


def primitives(cmds, loads):
    """Yield each point primitive with the state it is drawn under. LOADS
    are the opcodes of the two matrix-table stores."""
    seq, table, scissor, prim = {}, [math.nan] * 68, None, None
    colour = [math.nan] * 4
    for idx, w, ops in cmds:
        top = w >> 24
        if w & 0xc000 == 0x8000 and 0x20 <= top <= 0x3f:
            seq[top] = enc_val(w)
        elif top == 0x90 and w & 0x3ff in loads:
            for k, o in enumerate(ops):
                if seq.get(0x34, 0) + k < 68:
                    table[seq.get(0x34, 0) + k] = fl(o)
        elif w == 0x0001081d:
            scissor = ops
        elif w == 0xc580d015:
            colour = [fl(o) for o in ops]
        elif w == 0x00014400:
            prim = dict(type=ops[0], verts=[], idx=idx, seq=dict(seq),
                        regs={str(r): table[4 * r:4 * r + 4] for r in range(17)},
                        scissor=scissor, colour=list(colour))
        elif w == 0x00014001:
            if prim and prim['type'] == 0 and prim['verts']:
                yield prim
            prim = None
        elif w in VERTEX and prim is not None:
            v = [fl(o) for o in ops]
            v += [0.0, 1.0][len(v) - 2:]
            prim['verts'].append(v)


def crc32(data):
    """CRC-32, polynomial 0x04c11db7, most significant bit first, initial
    value all ones, no final inversion: the odydiags crcgen routine."""
    t = []
    for k in range(256):
        c = k << 24
        for _ in range(8):
            c = ((c << 1) ^ 0x04c11db7) & 0xffffffff if c & 0x80000000 else (c << 1) & 0xffffffff
        t.append(c)
    c = 0xffffffff
    for x in data:
        c = ((c << 8) & 0xffffffff) ^ t[((c >> 24) ^ x) & 0xff]
    return c


def main():
    args = sys.argv[1:]
    rnd, small, dump, prog = None, False, False, None
    image = os.path.join(ROOT, 'ucode', 'diagxform.bin')
    while args:
        a = args.pop(0)
        if a == '--round':
            rnd = args.pop(0)
        elif a == '--small':
            small = True
        elif a == '--image':
            image = args.pop(0)
        elif a == '--dump':
            dump = True
        elif a == '--program':
            prog = [int(x) for x in args.pop(0).split(',')]
        else:
            sys.exit(__doc__)
    # The matrix-table stores are routine entries 456 and 479 in the
    # images held (buzz_isa.md); the 128 x 64 stream was recorded under a
    # build whose every entry opcode sits 197 higher (pass 18).
    func, W, H, frame_file, listfile, loads = (
        ('__clog_pts_small', 128, 64, 'points.sml', 'csumlist.sml', (0x28d, 0x2a4)) if small else
        ('__clog_pts', 1280, 1024, 'points.SUM', 'csumlist', (0x1c8, 0x1df)))
    words = stream(os.path.join(ROOT, 'odydiags'), func)
    cmds = decode(words)
    if dump:
        for idx, w, ops in cmds:
            print(f"{idx:5d} {words[idx][0]} {w:08x} {' '.join(f'{o:x}' for o in ops)}")
        return
    recs = [df.decode(w) for w in records(image)[0]]
    frame = [0] * (W * H)
    print(f'; {func}: {len(words)} FIFO words; image {os.path.basename(image)}; round {rnd}')
    for p in primitives(cmds, loads):
        s = p['seq']
        if prog:
            s = {0x29: prog[0], 0x2a: prog[1], 0x2c: prog[2]}
        n = len(p['verts'])
        entries = [f"{s[0x29]}.."] + [f"{s[0x2a]}.."] * (n - 1) + [str(s[0x2c])]
        scen = dict(regs=p['regs'], slots={'5': p['colour']},
                    passes=[{'0': v} for v in p['verts']])
        dom = df.Numbers(scen, {}, rnd)
        df.run(recs, entries, dom)
        # A pass outputs the vertex before it (buzz_routines.md, routine 214).
        got = {}
        for k, rec, word, v in dom.emits:
            got.setdefault(k - 1, {})[word] = v
        # Block 0x01d's operands read as x and y ranges, low end in bits
        # 23:12 and high end in 11:0 (inferred from the four quadrant
        # boxes this stream sends).
        x0, x1 = p['scissor'][0] >> 12 & 0xfff, p['scissor'][0] & 0xfff
        y0, y1 = p['scissor'][1] >> 12 & 0xfff, p['scissor'][1] & 0xfff
        print(f"; primitive at word {p['idx']}: entries {' '.join(entries)}; scissor x {x0}-{x1} y {y0}-{y1}")
        for k, v in enumerate(p['verts']):
            o = got.get(k, {})
            x, y = o.get(5, math.nan), o.get(6, math.nan)
            if math.isnan(x) or math.isnan(y):
                print(f'vertex {v}: words {o}: no position')
                continue
            px, py = math.floor(x), math.floor(y)
            inside = x0 <= px <= x1 and y0 <= py <= y1 and 0 <= px < W and 0 <= py < H
            print(f'vertex {[f"{c:g}" for c in v]}: word 5 = {x!r}, word 6 = {y!r}, '
                  f'1/w = {o.get(3, math.nan)!r} -> pixel ({px}, {py}){"" if inside else " clipped"}')
            if inside:
                if p['colour'] != [1.0] * 4:
                    sys.exit('colour other than white: packing not modelled')
                frame[(H - 1 - py) * W + px] = 0xffffffff
    data = struct.pack(f'>{W * H}I', *frame)
    stored = open(os.path.join(ROOT, 'checksum', frame_file), 'rb').read()
    want = dict(l.split() for l in open(os.path.join(ROOT, 'checksum', listfile)) if l.strip())['points']
    sw = struct.unpack(f'>{W * H}I', stored)
    diff = [(k % W, H - 1 - k // W, sw[k], frame[k]) for k in range(W * H) if sw[k] != frame[k]]
    print(f'; CRC-32 of built frame {crc32(data):08x}; {listfile} points {want}; '
          f'CRC-32 of {frame_file} {crc32(stored):08x}')
    print(f'; pixels differing from {frame_file}: {len(diff)}')
    for x, y, a, b in diff[:20]:
        print(f';   window ({x}, {y}): stored {a:08x}, built {b:08x}')


if __name__ == '__main__':
    main()
