#!/usr/bin/env python3
"""Run a list of BUZZ microcode routines record by record and print the dataflow.

Usage: scripts/buzz_ucode_dataflow.py IMAGE ENTRY [ENTRY ...]

IMAGE is ucode/ODSY/buzz_xform.bin or ucode/buzz_ucode_ip30.bin. Each ENTRY
runs from its record to the next end mark (bits 1:0 equal to 1 or 2) plus the
four records after it, then the next ENTRY starts, which is how the sequencer
walks a program list. The rules are those of ucode/buzz_isa.md, "Pass 13"; every
one of them is inferred, so the output is a reading, not a trace of a board.

Values are symbols. Slots are named after BUZZ.h section 1 (P position, N
normal, T texture coordinate, C colour, Mamb/Mdif/Mspe/Memi the front material,
Bamb/Bdif/Bspe/Bemi the back material, opK operand K of the dispatching word).
Parameter words are named after their host writers: the constants at 0x1e0 to
0x1ef, and the light record at 0x200 + k (relative to sequencer 0x31). A fired
dot product is dNNN, a scalar result sNNN and an output-stage result oNNN, where
NNN is the record that produced it; the definitions follow the listing.
"""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from buzz_ucode_disasm import field, records  # noqa: E402

LANES = 'xyzw'
FIELDS = dict(a=(93, 92), r1=(91, 87), r2=(86, 82), r3=(81, 77), b=(76, 75),
              ln=(74, 72), rb=(71, 67), bx=(66, 64), vd=(63, 59), st=(58, 58),
              ma=(57, 48), d0=(47, 44), d1=(43, 40), d2=(39, 32), cu=(31, 16),
              s0=(15, 12), s1=(11, 2), sq=(1, 0))
CONST = {0x1e0: '1.0', 0x1e1: '0.5', 0x1e2: '-1.0', 0x1e3: '0.0',
         0x1e4: '2.828', 0x1e5: '3.0', 0x1e6: '1.414', 0x1e7: '0.354',
         0x1e8: '-2.0', 0x1e9: '-1.414', 0x1ea: '-0.707', 0x1eb: '-0.5',
         0x1ec: '131072', 0x1ed: '-32', 0x1ee: '0.03125', 0x1ef: '0.0'}
# Light record words written by ValidateLight (ody_lighting.s).
LIGHT = ['Lpos.x', 'Lpos.y', 'Lpos.z', '-H.x', '-H.y', '-H.z', 'L6',
         'katt0', 'katt1', 'katt2', '-Sdir.x', '-Sdir.y', '-Sdir.z',
         'Scut', 'Sexp', '2^22']
SLOT = {0: 'P', 1: 'N', 3: 'T', 5: 'C', 6: 'Mamb', 7: 'Mdif', 8: 'Mspe',
        9: 'Memi', 10: 'Bamb', 11: 'Bdif', 12: 'Bspe', 13: 'Bemi',
        14: 'load', 15: 'grp15'}


def decode(w):
    return {k: field(w, hi, lo) for k, (hi, lo) in FIELDS.items()}


def pm_name(a):
    if a in CONST:
        return CONST[a]
    if a & 0x200 and (a & 0x1ff) < 16:
        return LIGHT[a & 0x1ff]
    return f'pm{a:03x}'


def slot_name(v):
    return f'op{v - 16}' if v >= 16 else SLOT.get(v, f'slot{v}')


def routine(recs, entry):
    i = entry
    while recs[i]['sq'] not in (1, 2):
        i += 1
    return range(entry, i + 5)


def run(recs, entries):
    seq = [i for e in entries for i in routine(recs, e)]
    reg = {(r, l): f'R{r}{LANES[l]}' for r in range(32) for l in range(4)}
    B = ['B?'] * 4
    nextB = None
    A = Aname = None
    auto_fire = last_issue = -9
    vready, dready, loads, sres, pmv, lane, d2res = {}, {}, {}, {}, {}, {}, {}
    defs, out = [], []
    vec = lambda v: '(' + ', '.join(v) + ')'
    for c, i in enumerate(seq):
        r = recs[i]
        d0 = r['d0']
        ev = []
        if nextB is not None:
            B, nextB = nextB, None
        snap = dict(reg)
        # A fire takes the latched A and B as it stands at the start of the record.
        if c == auto_fire or (d0 & 1 and last_issue != c - 1):
            name = f'd{i}'
            defs.append(f'{name} = {Aname}{vec(A)} . {vec(B)}' if A else f'{name} = ?')
            vready[c + 6] = dready[c + 10] = name
            ev.append('fire')
        if d0 & 4:
            if d0 & 2:
                src = [snap[(r['r2'], l)] for l in range(4)]
                if r['a'] & 1 and r['r1'] & 16:
                    nextB = [src[l] if r['r1'] >> l & 1 else B[l] for l in range(4)]
                    ev.append(f"B[mask {r['r1'] & 15:x}] <- R{r['r2']}")
                else:
                    nextB = src
                    ev.append(f"B <- R{r['r2']}")
            else:
                nm = slot_name(r['r3'])
                nextB = [f'{nm}.{LANES[l]}' for l in range(4)]
                ev.append(f'B <- {nm}')
            loads[c + 7] = nextB
        if r['a'] & 1 and not r['r1'] & 16:
            lane[c] = snap[(r['r2'], r['r1'] & 3)]
            ev.append(f"read R{r['r2']}.{LANES[r['r1'] & 3]}")
        if d0 & 8:
            ar = r['r2'] if r['a'] & 1 else r['r1']
            A, Aname = [snap[(ar, l)] for l in range(4)], f'R{ar}'
            auto_fire, last_issue = c + 1, c
            ev.append(f'latch A = R{ar}')
        if r['d1']:
            if c - 1 in lane:
                opnd = lane[c - 1]
            elif c in vready:
                opnd = vready[c]
            elif c in loads:
                opnd = loads[c][0]
            else:
                opnd = '?'
            sres[c] = f's{i}'
            defs.append(f"s{i} = S{r['d1']:x}({opnd})")
            ev.append(f"s{i} = S{r['d1']:x}({opnd})")
        if r['ma'] and not r['st']:
            pmv[c] = pm_name(r['ma'])
        if r['st']:
            ev.append(f"store pm[{pm_name(r['ma'])}] <- {lane.get(c - 1, '?')}")
        if r['bx'] & 4:
            if c in vready:
                val = vready[c]
            elif c in loads:
                val = loads[c][r['bx'] & 3]
            elif c - 7 in d2res:
                val = d2res[c - 7]
            else:
                val = '?'
            reg[(r['vd'], r['bx'] & 3)] = val
            ev.append(f"R{r['vd']}.{LANES[r['bx'] & 3]} = {val}")
        if r['ln'] & 4:
            val = {0: pmv.get(c - 2, 'pm[0]'), 2: sres.get(c - 4, '?')}.get(r['b'], f"src{r['b']}")
            reg[(r['rb'], r['ln'] & 3)] = val
            ev.append(f"R{r['rb']}.{LANES[r['ln'] & 3]} = {val}")
        if r['d2']:
            if r['d2'] & 0x80 and r['a'] & 2:
                src = [pmv.get(c - 2, 'pm[0]')]
            else:
                src = [x for x in (dready.get(c), sres.get(c - 4)) if x]
            d2res[c] = f'o{i}'
            t = f"o{i} = D{r['d2']:02x}({' | '.join(src) or '-'})"
            defs.append(t)
            if r['s1'] & 0x80 and not r['s1'] & 1:
                t += f" -> word {r['s0']}"
            ev.append(t)
        elif r['s1'] & 0x80 and not r['s1'] & 1:
            ev.append(f"word {r['s0']}")
        if r['s1'] & 0x300:
            ev.append(f"header {r['s0']}")
        if r['cu'] != 8:
            cu = r['cu']
            t = f'colour {cu:04x}'
            if not d0 & 4 and r['r3']:
                t += f"[{slot_name(r['r3'])}]"
            if r['s1'] & 1:
                t += f" -> word {r['s0']}"
            ev.append(t)
        if r['sq']:
            ev.append(('', 'end', 'end2', 'mark3')[r['sq']])
        out.append(f'{c:4d} {i:4d}  ' + '; '.join(ev))
    return out, defs


def main():
    if len(sys.argv) < 3:
        sys.exit(__doc__)
    recs = [decode(w) for w in records(sys.argv[1])[0]]
    out, defs = run(recs, [int(x, 0) for x in sys.argv[2:]])
    print('\n'.join(out))
    print('; definitions')
    print('\n'.join(defs))


if __name__ == '__main__':
    main()
