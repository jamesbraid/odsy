# Readings: `usr/lib/X11/dyDDX/odyssey.so`

One entry per routine, filed here from the reading batches by binary.

- `alWriteFrames` in `usr/lib/X11/dyDDX/odyssey.so` at 0x1561df0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/odyssey.so`.
  Range: 0x1561df0-0x15620a4 (692 bytes).
  It occupies 692 bytes.
  The `lw` at 0x1561e08 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0x1561e7c, `lw` at 0x1561f18.
  The `lw` at 0x1561e88 loads 4 bytes from [a0+20] +0x0.
  The `lw` at 0x1561ed0 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `lw` at 0x1561edc loads 4 bytes from a0 (arg0 at entry) +0x1c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x1561ef0, `lw` at 0x1561f44, `lw` at 0x156204c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x80, including `lw` at 0x1561ef4, `lw` at 0x1561f4c, `lw` at 0x1562054.
  The `lw` at 0x1561ef8 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `lw` at 0x1561efc loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `sw` at 0x1561f2c stores 4 bytes to [a0+20] +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x1561f30, `lw` at 0x1562038.
  2 such `lw` accesses load 4 bytes from [a0+16] +0x0, including `lw` at 0x1561f34, `lw` at 0x156203c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x58, including `lw` at 0x1561f38, `lw` at 0x1562040.
  The `lw` at 0x1561f90 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `sw` at 0x1561fa0 stores 4 bytes to [a0+24] +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0x1561fe4, `lw` at 0x1562024.
  The `lw` at 0x1562008 loads 4 bytes from ?.
  The `sw` at 0x1562018 stores 4 bytes to ?.
  The `bgezall` at 0x1561e44 calls (unnamed) [0x15620b0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1561ee8 calls (unknown callee) with a0=?, a1=?, a2=?, a3=a0 at entry (arg0), a7=[a0+88].
  The `jalr` at 0x1562030 calls select with a0=[a0+36]+1, a1=0x0, a2=sp-208, a3=0x0, a4=0x0, a5=[a0+8], a7=[a0+24].
  The `bgez` branch at 0x1561e34 targets 0x1561e70, is taken when at(=([a0+60] << 0x23)) >= 0 (signed), and falls through when at(=([a0+60] << 0x23)) < 0 (signed).
  The `blez` branch at 0x1561e84 targets 0x1562060, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `beq` branch at 0x1561e8c targets 0x1561f30 and is always taken.
  The `beq` branch at 0x1561ea4 targets 0x1561eb0, is taken when a0(?) >= s2(?) (signed), and falls through when a0(?) < s2(?) (signed).
  The `beq` branch at 0x1561eb4 targets 0x1561ec4, is taken when a1(?) >= a2(?) (signed), and falls through when a1(?) < a2(?) (signed).
  The `bne` branch at 0x1561ec4 targets 0x1561ed0, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x1561f1c targets 0x1561f28, is taken when s1(?) < a5(=[a0+8]) (signed), and falls through when s1(?) >= a5(=[a0+8]) (signed).
  The `blez` branch at 0x1561f28 targets 0x1562060, is taken when s2(?) <= 0 (signed), and falls through when s2(?) > 0 (signed).
  The `bltz` branch at 0x1561f48 targets 0x1562094, is taken when a6(?) < 0 (signed), and falls through when a6(?) >= 0 (signed).
  The `bne` branch at 0x1561f58 targets 0x1561e98, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x1561f60 targets 0x156209c and is always taken.
  The `bne` branch at 0x1561f78 targets 0x1561e94, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x1561f8c targets 0x1561f98, is taken when a2(?) >= a6(?) (signed), and falls through when a2(?) < a6(?) (signed).
  The `bgez` branch at 0x1562050 targets 0x1561f70, is taken when a6(?) >= 0 (signed), and falls through when a6(?) < 0 (signed).
  The `beq` branch at 0x1562058 targets 0x1561f70 and is always taken.
  The `beq` branch at 0x1562094 targets 0x1561f50 and is always taken.
  The `beq` branch at 0x156209c targets 0x1561f84 and is always taken.
  The return at 0x1561e68 has v0 = ret(0x15620b0).
  The return at 0x156208c has v0 = 0x0.
  The instructions from 0x1561f68 to 0x1561f6c are not reached by any path from the entry, and their branches are not listed.

- `odsyPolyFillRectSolid` in `usr/lib/X11/dyDDX/odyssey.so` at 0x1576270 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/odyssey.so`.
  Range: 0x1576270-0x15783c8 (8536 bytes).
  It occupies 8536 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x157629c, `lw` at 0x15763c4.
  The `lw` at 0x15762a4 loads 4 bytes from [a0+16] +0x1b4.
  The `lw` at 0x15762b8 loads 4 bytes from ([[a0+16]+436] + ([0x173935c] << 0x2)) +0x0.
  The `lw` at 0x15762bc loads 4 bytes from [a0+16] +0x74.
  The `lw` at 0x15762c4 loads 4 bytes from a1 (arg1 at entry) +0x4c.
  The `lw` at 0x15762c8 loads 4 bytes from [[a0+16]+116] +0x50.
  The `lw` at 0x15762d8 loads 4 bytes from ([a1+76] + ([0x1738f50] << 0x2)) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x84, including `lw` at 0x15762dc, `lw` at 0x1576390.
  The `lbu` at 0x15762e0 loads 1 byte from [([a1+76] + ([0x1738f50] << 0x2))] +0x30.
  The `lw` at 0x15762e8 loads 4 bytes from [([a1+76] + ([0x1738f50] << 0x2))] +0x28.
  The `lw` at 0x15762f0 loads 4 bytes from ([a0+132] + ([0x1739358] << 0x2)) +0x0.
  The `lw` at 0x15762f4 loads 4 bytes from [([a1+76] + ([0x1738f50] << 0x2))] +0x8.
  The `lw` at 0x15762f8 loads 4 bytes from [([a0+132] + ([0x1739358] << 0x2))] +0x14.
  The `lw` at 0x15762fc loads 4 bytes from [([a0+132] + ([0x1739358] << 0x2))] +0x3c.
  The `lw` at 0x1576300 loads 4 bytes from [[([a1+76] + ([0x1738f50] << 0x2))]+8] +0x8.
  The `lw` at 0x1576308 loads 4 bytes from [([a1+76] + ([0x1738f50] << 0x2))] +0x34.
  2 such `lw` accesses load 4 bytes from [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x4c, including `lw` at 0x157632c, `lw` at 0x1577374.
  The `lw` at 0x1576330 loads 4 bytes from [[[([a1+76] + ([0x1738f50] << 0x2))]+8]+8] +0x4.
  2 such `lw` accesses load 4 bytes from [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x5c, including `lw` at 0x1576338, `lw` at 0x1577370.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0x157633c, `lw` at 0x1576348, `lw` at 0x1576364.
  2 such `lw` accesses load 4 bytes from [[([[a0+16]+436] + ([0x173935c] << 0x2))]+92] +0x0, including `lw` at 0x1576340, `lw` at 0x1577378.
  2 such `lw` accesses load 4 bytes from ([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2)) +0x0, including `lw` at 0x1576358, `lw` at 0x1577394.
  13 such `sw` accesses store 4 bytes to [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x84, including `sw` at 0x1576370, `sw` at 0x15767e8, `sw` at 0x15771d4.
  The `lw` at 0x157638c loads 4 bytes from sym(dbcWindowPrivateIndex) +0x0.
  The `lh` at 0x1576394 loads 2 bytes from a0 (arg0 at entry) +0xa.
  The `lb` at 0x15763a8 loads 1 byte from ([a0+132] + ([sym(dbcWindowPrivateIndex)] << 0x2)) +0x1.
  The `lh` at 0x15763ac loads 2 bytes from a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x2b68, including `lw` at 0x15763d0, `lw` at 0x15764a0.
  The `lh` at 0x15763e4 loads 2 bytes from [a0+16] +0xa.
  The `lh` at 0x15763ec loads 2 bytes from [a0+16] +0x8.
  44 such `sw` accesses store 4 bytes to [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x1cb8, including `sw` at 0x15763f0, `sw` at 0x1576434, `sw` at 0x157646c.
  The `sw` at 0x15763f4 stores 4 bytes to [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x2b68.
  418 such `lw` accesses load 4 bytes from [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x0, including `lw` at 0x15763f8, `lw` at 0x1576408, `lw` at 0x1576414.
  409 such `sw` accesses store 4 bytes to [[([[a0+16]+436] + ([0x173935c] << 0x2))]] +0x0, including `sw` at 0x1576404, `sw` at 0x1576410, `sw` at 0x157641c.
  6 such `lw` accesses load 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x1b24, including `lw` at 0x1576594, `lw` at 0x1576624, `lw` at 0x1576658.
  5 such `lw` accesses load 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x1b28, including `lw` at 0x15765a0, `lw` at 0x1576630, `lw` at 0x1576664.
  5 such `lw` accesses load 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x1b2c, including `lw` at 0x15765ac, `lw` at 0x1576670, `lw` at 0x1576734.
  5 such `lw` accesses load 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x1b30, including `lw` at 0x15765b8, `lw` at 0x1576644, `lw` at 0x1576684.
  3 such `sh` accesses store 2 bytes to [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x68, including `sh` at 0x15767a4, `sh` at 0x1576a88, `sh` at 0x1577130.
  2 such `sh` accesses store 2 bytes to [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x6a, including `sh` at 0x15767a8, `sh` at 0x1576a90.
  11 such `lw` accesses load 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x84, including `lw` at 0x15767ac, `lw` at 0x1577220, `lw` at 0x1577450.
  The `lw` at 0x15767ec loads 4 bytes from table(0x172aa48) +0x0.
  The `lw` at 0x157684c loads 4 bytes from [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x10.
  The `lw` at 0x1576854 loads 4 bytes from [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x4.
  22 such `lw` accesses load 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x1cb8, including `lw` at 0x15768a4, `lw` at 0x1576cd4, `lw` at 0x15771c8.
  The `sw` at 0x15768c0 stores 4 bytes to [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0xc8.
  The `lw` at 0x1576918 loads 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0xc8.
  The `lhu` at 0x1576920 loads 2 bytes from [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x6a.
  2 such `sw` accesses store 4 bytes to [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x1b24, including `sw` at 0x1576950, `sw` at 0x15773f0.
  The `sw` at 0x1576954 stores 4 bytes to [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x1b2c.
  5 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x1576ad8, `lhu` at 0x1576e70, `lhu` at 0x1576e78.
  The `lw` at 0x1576af8 loads 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x1b7c.
  2 such `sh` accesses store 2 bytes to [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x72, including `sh` at 0x1576b74, `sh` at 0x1577100.
  2 such `sh` accesses store 2 bytes to [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x6e, including `sh` at 0x1576b78, `sh` at 0x15770f4.
  2 such `sh` accesses store 2 bytes to [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x70, including `sh` at 0x1576b7c, `sh` at 0x15770ec.
  2 such `sh` accesses store 2 bytes to [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x6c, including `sh` at 0x1576b80, `sh` at 0x15770e4.
  15 such `lh` accesses load 2 bytes from ?, including `lh` at 0x1576bac, `lh` at 0x1576bb0, `lh` at 0x1576bc4.
  36 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1576bc0, `sw` at 0x1576bec, `sw` at 0x1576c38.
  The `lw` at 0x1576d28 loads 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x2b40.
  The `lw` at 0x1576d34 loads 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x2b44.
  The `lw` at 0x1576d40 loads 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x2b48.
  The `lw` at 0x1576d4c loads 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x2b4c.
  The `lw` at 0x1576d58 loads 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x2b50.
  The `lw` at 0x1576d64 loads 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x2b54.
  The `lw` at 0x1576d70 loads 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x2b58.
  The `lw` at 0x1576d7c loads 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x2b5c.
  The `lhu` at 0x1576dbc loads 2 bytes from a3 (arg3 at entry) +0x4.
  The `lh` at 0x1576dc0 loads 2 bytes from a3 (arg3 at entry) +0x2.
  The `lhu` at 0x1576dc8 loads 2 bytes from a3 (arg3 at entry) +0x6.
  The `lh` at 0x1576dcc loads 2 bytes from a3 (arg3 at entry) +0x0.
  The `lh` at 0x1577068 loads 2 bytes from [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x72.
  The `lh` at 0x157706c loads 2 bytes from [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x70.
  The `lh` at 0x1577078 loads 2 bytes from [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x6c.
  The `lh` at 0x1577098 loads 2 bytes from [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x6e.
  10 such `lw` accesses load 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x2664, including `lw` at 0x1577228, `lw` at 0x1577458, `lw` at 0x15775f0.
  10 such `sw` accesses store 4 bytes to [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x2664, including `sw` at 0x1577238, `sw` at 0x1577468, `sw` at 0x1577600.
  10 such `sw` accesses store 4 bytes to [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x2668, including `sw` at 0x1577240, `sw` at 0x1577470, `sw` at 0x1577608.
  20 such `lw` accesses load 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0xe8, including `lw` at 0x15772ac, `lw` at 0x1577328, `lw` at 0x15774dc.
  20 such `lw` accesses load 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0xec, including `lw` at 0x15772bc, `lw` at 0x1577334, `lw` at 0x15774ec.
  10 such `sw` accesses store 4 bytes to [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0xec, including `sw` at 0x15772d4, `sw` at 0x1577504, `sw` at 0x1577698.
  10 such `sw` accesses store 4 bytes to [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0xe8, including `sw` at 0x15772dc, `sw` at 0x157750c, `sw` at 0x15776a0.
  10 such `lw` accesses load 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0xf0, including `lw` at 0x1577340, `lw` at 0x1577570, `lw` at 0x1577704.
  10 such `lw` accesses load 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0xf4, including `lw` at 0x157734c, `lw` at 0x157757c, `lw` at 0x1577710.
  The `lw` at 0x1577360 loads 4 bytes from [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x8.
  10 such `lw` accesses load 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x2668, including `lw` at 0x15782b0, `lw` at 0x15782c8, `lw` at 0x15782e0.
  The `jalr` at 0x1576818 calls ErrorF with a0=0x172ae60, a1=[[([a0+132] + ([0x1739358] << 0x2))]+20], a2=[([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))], a3=?.
  The `beq` branch at 0x1576324 targets 0x157736c, is taken when t8(=[[[([a1+76] + ([0x1738f50] << 0x2))]+8]+8]) == 0, and falls through when t8(=[[[([a1+76] + ([0x1738f50] << 0x2))]+8]+8]) != 0.
  The `beq` branch at 0x157636c targets 0x1577140, is taken when a3(=a2) == 0, and falls through when a3(=a2) != 0.
  The `beq` branch at 0x1576374 targets 0x1577140, is taken when at(=[[[[([a1+76] + ([0x1738f50] << 0x2))]+8]+8]+4]) == 0, and falls through when at(=[[[[([a1+76] + ([0x1738f50] << 0x2))]+8]+8]+4]) != 0.
  The `beq` branch at 0x15763e8 targets 0x15767b0, is taken when t8(?) == v1(=one of 0x3, 0xc), and falls through when t8(?) != v1(=one of 0x3, 0xc).
  The `beq` branch at 0x15767e4 targets 0x15767f8, is taken when s7(=[[([a0+132] + ([0x1739358] << 0x2))]+20]) >= 0xc (unsigned), and falls through when s7(=[[([a0+132] + ([0x1739358] << 0x2))]+20]) < 0xc (unsigned).
  The `beq` branch at 0x1576844 targets 0x1577360, is taken when a3(=0x7) == s7(=[[([a0+132] + ([0x1739358] << 0x2))]+20]), and falls through when a3(=0x7) != s7(=[[([a0+132] + ([0x1739358] << 0x2))]+20]).
  The `beq` branch at 0x157685c targets 0x157687c, is taken when s6(=[[([a1+76] + ([0x1738f50] << 0x2))]+48]:1) == 0, and falls through when s6(=[[([a1+76] + ([0x1738f50] << 0x2))]+48]:1) != 0.
  The `beq` branch at 0x1576864 targets 0x1576880, is taken when a3(=0x3) == s6(=[[([a1+76] + ([0x1738f50] << 0x2))]+48]:1), and falls through when a3(=0x3) != s6(=[[([a1+76] + ([0x1738f50] << 0x2))]+48]:1).
  The `beq` branch at 0x157686c targets 0x1576880, is taken when t9(=0xc) == s6(=[[([a1+76] + ([0x1738f50] << 0x2))]+48]:1), and falls through when t9(=0xc) != s6(=[[([a1+76] + ([0x1738f50] << 0x2))]+48]:1).
  The `bne` branch at 0x1576878 targets 0x1576884, is taken when s6(=[[([a1+76] + ([0x1738f50] << 0x2))]+48]:1) != a4(=0xf), and falls through when s6(=[[([a1+76] + ([0x1738f50] << 0x2))]+48]:1) == a4(=0xf).
  The `beq` branch at 0x15768c8 targets 0x1576904, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x1576928 targets 0x15773b8, is taken when v0(=[[([[a0+16]+436] + ([0x173935c] << 0x2))]+106]:2) == 0, and falls through when v0(=[[([[a0+16]+436] + ([0x173935c] << 0x2))]+106]:2) != 0.
  The `blez` branch at 0x1576a8c targets 0x1577104, is taken when at(?) <= 0 (signed), and falls through when at(?) > 0 (signed).
  The `beq` branch at 0x1576ab8 targets 0x15783b8 and is always taken.
  The `beq` branch at 0x1576ac8 targets 0x1577164, is taken when s0(=one of 0x0, 0x1) == 0, and falls through when s0(=one of 0x0, 0x1) != 0.
  The `bnel` branch at 0x1576ad4 targets 0x1576e74, is taken when t2(?) != 0, and falls through when t2(?) == 0; its branch-likely delay slot `lhu t1,4(a0)` at 0x1576ad8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1576b0c targets 0x1576b38, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `blez` branch at 0x1576b44 targets 0x1577104, is taken when t2(?) <= 0 (signed), and falls through when t2(?) > 0 (signed).
  The `beq` branch at 0x1576b6c targets 0x1577068, is taken when a1(?) == v0(=0x1), and falls through when a1(?) != v0(=0x1).
  The `blez` branch at 0x1576ba0 targets 0x1576bf0, is taken when a1(?) <= 0 (signed), and falls through when a1(?) > 0 (signed).
  The `bne` branch at 0x1576be8 targets 0x1576bac, is taken when v1(?) != a0(?), and falls through when v1(?) == a0(?).
  The `bltz` branch at 0x1576c10 targets 0x1576cd4, is taken when a6(?) < 0 (signed), and falls through when a6(?) >= 0 (signed).
  The `beq` branch at 0x1576c28 targets 0x1576c44, is taken when (ra(?) & 0x3) == 0, and falls through when (ra(?) & 0x3) != 0.
  The `bne` branch at 0x1576c3c targets 0x1576c30, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x1576c44 targets 0x1576cd4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x1576c4c targets 0x157838c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x1576c90 targets 0x1577058, is taken when v1(?) == a0(?), and falls through when v1(?) != a0(?).
  The `bne` branch at 0x1576cb8 targets 0x1576c70, is taken when v0(?) != a0(?), and falls through when v0(?) == a0(?).
  The `beq` branch at 0x1576ce4 targets 0x1576d18, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `blez` branch at 0x1576da4 targets 0x1576ae4, is taken when v0(=a2) <= 0 (signed), and falls through when v0(=a2) > 0 (signed).
  The `beq` branch at 0x1576db0 targets 0x1576ad4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x1576dd0 targets 0x1576acc, is taken when t1(=[a3+4]:2) == 0, and falls through when t1(=[a3+4]:2) != 0.
  The `beq` branch at 0x1576de0 targets 0x1576acc, is taken when t0(=[a3+6]:2) == 0, and falls through when t0(=[a3+6]:2) != 0.
  The `beq` branch at 0x1576e0c targets 0x1576ac8, is taken when (t3(=-0x800) & a4(=((([a3]:2 + [a0+8]:2) | (([a3]:2 + [a0+8]:2) + [a3+4]:2)) | (([a3+2]:2 + [a0+10]:2) | (([a3+2]:2 + [a0+10]:2) + [a3+6]:2))))) == 0, and falls through when (t3(=-0x800) & a4(=((([a3]:2 + [a0+8]:2) | (([a3]:2 + [a0+8]:2) + [a3+4]:2)) | (([a3+2]:2 + [a0+10]:2) | (([a3+2]:2 + [a0+10]:2) + [a3+6]:2))))) != 0.
  The `bne` branch at 0x1576e14 targets 0x1576ac0, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `bne` branch at 0x1576e20 targets 0x1576ac0, is taken when s6(?) != 0, and falls through when s6(?) == 0.
  The `bltz` branch at 0x1576e28 targets 0x1576ac0, is taken when t0(=(([a3]:2 + [a0+8]:2) + [a3+4]:2)) < 0 (signed), and falls through when t0(=(([a3]:2 + [a0+8]:2) + [a3+4]:2)) >= 0 (signed).
  The `bltz` branch at 0x1576e30 targets 0x1576ac0, is taken when a1(=(([a3+2]:2 + [a0+10]:2) + [a3+6]:2)) < 0 (signed), and falls through when a1(=(([a3+2]:2 + [a0+10]:2) + [a3+6]:2)) >= 0 (signed).
  The `beq` branch at 0x1576e48 targets 0x1576ac4 and is always taken.
  The `beq` branch at 0x1576e58 targets 0x1576f90, is taken when s0(=one of 0x0, 0x1) == 0, and falls through when s0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1576e68 targets 0x1576adc, is taken when a0(?) == t8(=(a3 + (a2 << 0x3))), and falls through when a0(?) != t8(=(a3 + (a2 << 0x3))).
  The `beq` branch at 0x1576e80 targets 0x1576f04, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x1576e90 targets 0x1576f04, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x1576eb4 targets 0x1576efc, is taken when (t3(=-0x800) & s7(?)) == 0, and falls through when (t3(=-0x800) & s7(?)) != 0.
  The `bne` branch at 0x1576ebc targets 0x1576ef4, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0x1576ec8 targets 0x1576ef4, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `bltz` branch at 0x1576ed0 targets 0x1576ef4, is taken when t0(?) < 0 (signed), and falls through when t0(?) >= 0 (signed).
  The `bltz` branch at 0x1576ed8 targets 0x1576ef4, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `beq` branch at 0x1576eec targets 0x1576ef8 and is always taken.
  The `beq` branch at 0x1576efc targets 0x1576ff4, is taken when s0(=one of 0x0, 0x1) == 0, and falls through when s0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1576f1c targets 0x1576e60, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x1576f2c targets 0x1576e60, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x1576f50 targets 0x1576e58, is taken when (t3(=-0x800) & a4(?)) == 0, and falls through when (t3(=-0x800) & a4(?)) != 0.
  The `bne` branch at 0x1576f58 targets 0x1576e50, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0x1576f64 targets 0x1576e50, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `bltz` branch at 0x1576f6c targets 0x1576e50, is taken when t0(?) < 0 (signed), and falls through when t0(?) >= 0 (signed).
  The `bltz` branch at 0x1576f74 targets 0x1576e50, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `beq` branch at 0x1576f88 targets 0x1576e54 and is always taken.
  The `beq` branch at 0x1576fec targets 0x1576e60 and is always taken.
  The `beq` branch at 0x1577050 targets 0x1576f04 and is always taken.
  The `beq` branch at 0x1577060 targets 0x1576cc8 and is always taken.
  The `bne` branch at 0x1577090 targets 0x15770e0, is taken when a4(=[[([[a0+16]+436] + ([0x173935c] << 0x2))]+108]:2) != v0(?), and falls through when a4(=[[([[a0+16]+436] + ([0x173935c] << 0x2))]+108]:2) == v0(?).
  The `bne` branch at 0x15770a8 targets 0x15770e0, is taken when v1(?) != t0(=[[([[a0+16]+436] + ([0x173935c] << 0x2))]+112]:2), and falls through when v1(?) == t0(=[[([[a0+16]+436] + ([0x173935c] << 0x2))]+112]:2).
  The `bne` branch at 0x15770b8 targets 0x15770e0, is taken when ra(?) != a6(=[[([[a0+16]+436] + ([0x173935c] << 0x2))]+110]:2), and falls through when ra(?) == a6(=[[([[a0+16]+436] + ([0x173935c] << 0x2))]+110]:2).
  The `bne` branch at 0x15770c0 targets 0x15770e4, is taken when a7(?) != s6(=[[([[a0+16]+436] + ([0x173935c] << 0x2))]+114]:2), and falls through when a7(?) == s6(=[[([[a0+16]+436] + ([0x173935c] << 0x2))]+114]:2).
  The `beq` branch at 0x15770d4 targets 0x1576d84 and is always taken.
  The `beq` branch at 0x15770fc targets 0x1576b84 and is always taken.
  The `beq` branch at 0x15771c0 targets 0x1576acc and is always taken.
  The `beq` branch at 0x15771d0 targets 0x157720c, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x1577230 targets 0x15782b0, is taken when a0(=0x1) == a3(?), and falls through when a0(=0x1) != a3(?).
  The `bne` branch at 0x15772b4 targets 0x15772cc, is taken when v1(?) != v0(=([[([a1+76] + ([0x1738f50] << 0x2))]+52] << 0xc)), and falls through when v1(?) == v0(=([[([a1+76] + ([0x1738f50] << 0x2))]+52] << 0xc)).
  The `beq` branch at 0x15772c4 targets 0x1577358, is taken when t0(=0x1) == t1(?), and falls through when t0(=0x1) != t1(?).
  The `beq` branch at 0x15772d8 targets 0x1577314, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bne` branch at 0x1577358 targets 0x157684c, is taken when a5(=0x7) != s7(=[[([a0+132] + ([0x1739358] << 0x2))]+20]), and falls through when a5(=0x7) == s7(=[[([a0+132] + ([0x1739358] << 0x2))]+20]).
  The `beq` branch at 0x1577364 targets 0x157685c and is always taken.
  The `bne` branch at 0x15773a8 targets 0x157637c, is taken when a6(=a2) != 0, and falls through when a6(=a2) == 0.
  The `beq` branch at 0x15773b0 targets 0x1577144 and is always taken.
  The `bne` branch at 0x15773d8 targets 0x1576950, is taken when a4(?) != v1(?), and falls through when a4(?) == v1(?).
  The `beq` branch at 0x15773e4 targets 0x1576a88, is taken when a6(?) == v0(?), and falls through when a6(?) != v0(?).
  The `beq` branch at 0x15773ec targets 0x1576954 and is always taken.
  The `beq` branch at 0x1577400 targets 0x157743c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x1577460 targets 0x15782c8, is taken when a0(=0x1) == a3(?), and falls through when a0(=0x1) != a3(?).
  The `bne` branch at 0x15774e4 targets 0x15774fc, is taken when v1(?) != v0(=([[([a1+76] + ([0x1738f50] << 0x2))]+52] << 0xc)), and falls through when v1(?) == v0(=([[([a1+76] + ([0x1738f50] << 0x2))]+52] << 0xc)).
  The `beq` branch at 0x15774f4 targets 0x1577584, is taken when t0(=0x1) == t1(?), and falls through when t0(=0x1) != t1(?).
  The `beq` branch at 0x1577508 targets 0x1577544, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x1577584 targets 0x1576840 and is always taken.
  The `beq` branch at 0x1577598 targets 0x15775d4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x15775f8 targets 0x15782e0, is taken when v0(=0x1) == v1(?), and falls through when v0(=0x1) != v1(?).
  The `bne` branch at 0x1577680 targets 0x1577690, is taken when t1(?) != v0(=([[([a1+76] + ([0x1738f50] << 0x2))]+52] << 0xc)), and falls through when t1(?) == v0(=([[([a1+76] + ([0x1738f50] << 0x2))]+52] << 0xc)).
  The `beq` branch at 0x1577688 targets 0x1577718, is taken when t0(=0x1) == v1(?), and falls through when t0(=0x1) != v1(?).
  The `beq` branch at 0x157769c targets 0x15776d8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x1577718 targets 0x1576840 and is always taken.
  The `beq` branch at 0x157772c targets 0x1577768, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x157778c targets 0x15782f8, is taken when t1(=0x1) == ra(?), and falls through when t1(=0x1) != ra(?).
  The `bne` branch at 0x1577814 targets 0x157782c, is taken when a7(?) != v0(=([[([a1+76] + ([0x1738f50] << 0x2))]+52] << 0x10)), and falls through when a7(?) == v0(=([[([a1+76] + ([0x1738f50] << 0x2))]+52] << 0x10)).
  The `beq` branch at 0x1577824 targets 0x15778b4, is taken when a7(=0x1) == t0(?), and falls through when a7(=0x1) != t0(?).
  The `beq` branch at 0x1577838 targets 0x1577874, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x15778b4 targets 0x1576840 and is always taken.
  The `beq` branch at 0x15778c8 targets 0x1577904, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1577928 targets 0x1578310, is taken when t1(=0x1) == ra(?), and falls through when t1(=0x1) != ra(?).
  The `bne` branch at 0x15779b0 targets 0x15779c4, is taken when a7(?) != v0(=([[([a1+76] + ([0x1738f50] << 0x2))]+52] << 0x10)), and falls through when a7(?) == v0(=([[([a1+76] + ([0x1738f50] << 0x2))]+52] << 0x10)).
  The `beq` branch at 0x15779bc targets 0x1577a4c, is taken when a7(=0x1) == v1(?), and falls through when a7(=0x1) != v1(?).
  The `beq` branch at 0x15779d0 targets 0x1577a0c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x1577a4c targets 0x1576840 and is always taken.
  The `beq` branch at 0x1577a60 targets 0x1577a9c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1577abc targets 0x1578328, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x1577b94 targets 0x1577ba4, is taken when a3(?) != v1(?), and falls through when a3(?) == v1(?).
  The `beq` branch at 0x1577b9c targets 0x1577c28, is taken when t0(?) == v0(?), and falls through when t0(?) != v0(?).
  The `beq` branch at 0x1577bac targets 0x1577be8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1577c28 targets 0x1576840 and is always taken.
  The `beq` branch at 0x1577c3c targets 0x1577c78, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x1577c98 targets 0x157833c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x1577d38 targets 0x1577d4c, is taken when a0(?) != v1(?), and falls through when a0(?) == v1(?).
  The `beq` branch at 0x1577d44 targets 0x1577dd0, is taken when t1(?) == v0(?), and falls through when t1(?) != v0(?).
  The `beq` branch at 0x1577d54 targets 0x1577d90, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x1577dd0 targets 0x1576840 and is always taken.
  The `beq` branch at 0x1577de4 targets 0x1577e20, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1577e40 targets 0x1578350, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x1577ed4 targets 0x1577ee8, is taken when a0(?) != v1(?), and falls through when a0(?) == v1(?).
  The `beq` branch at 0x1577ee0 targets 0x1577f6c, is taken when a7(?) == v0(?), and falls through when a7(?) != v0(?).
  The `beq` branch at 0x1577ef0 targets 0x1577f2c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x1577f6c targets 0x1576840 and is always taken.
  The `beq` branch at 0x1577f80 targets 0x1577fbc, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1577fdc targets 0x1578364, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x1578078 targets 0x1578088, is taken when a3(?) != v1(?), and falls through when a3(?) == v1(?).
  The `beq` branch at 0x1578080 targets 0x157810c, is taken when a0(?) == v0(?), and falls through when a0(?) != v0(?).
  The `beq` branch at 0x1578090 targets 0x15780cc, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x157810c targets 0x1576840 and is always taken.
  The `beq` branch at 0x1578120 targets 0x157815c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x157817c targets 0x1578378, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x1578210 targets 0x1578224, is taken when a0(?) != v1(?), and falls through when a0(?) == v1(?).
  The `beq` branch at 0x157821c targets 0x15782a8, is taken when a7(?) == v0(?), and falls through when a7(?) != v0(?).
  The `beq` branch at 0x157822c targets 0x1578268, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x15782a8 targets 0x1576840 and is always taken.
  The `bne` branch at 0x15782b8 targets 0x1577238, is taken when v1(=0x3) != a0(?), and falls through when v1(=0x3) == a0(?).
  The `beq` branch at 0x15782c0 targets 0x1577268 and is always taken.
  The `bne` branch at 0x15782d0 targets 0x1577468, is taken when a3(=0x3) != a4(?), and falls through when a3(=0x3) == a4(?).
  The `beq` branch at 0x15782d8 targets 0x1577498 and is always taken.
  The `bne` branch at 0x15782e8 targets 0x1577600, is taken when a5(=0x3) != a6(?), and falls through when a5(=0x3) == a6(?).
  The `beq` branch at 0x15782f0 targets 0x1577630 and is always taken.
  The `bne` branch at 0x1578300 targets 0x1577794, is taken when a7(=0x3) != t0(?), and falls through when a7(=0x3) == t0(?).
  The `beq` branch at 0x1578308 targets 0x15777c4 and is always taken.
  The `bne` branch at 0x1578318 targets 0x1577930, is taken when t1(=0x3) != ra(?), and falls through when t1(=0x3) == ra(?).
  The `beq` branch at 0x1578320 targets 0x1577960 and is always taken.
  The `bne` branch at 0x157832c targets 0x1577ac4, is taken when v0(=0x2) != v1(?), and falls through when v0(=0x2) == v1(?).
  The `beq` branch at 0x1578334 targets 0x1577af0 and is always taken.
  The `bne` branch at 0x1578340 targets 0x1577ca0, is taken when v0(=0x2) != a0(?), and falls through when v0(=0x2) == a0(?).
  The `beq` branch at 0x1578348 targets 0x1577ccc and is always taken.
  The `bne` branch at 0x1578354 targets 0x1577e48, is taken when v0(=0x2) != a3(?), and falls through when v0(=0x2) == a3(?).
  The `beq` branch at 0x157835c targets 0x1577e74 and is always taken.
  The `bne` branch at 0x1578368 targets 0x1577fe4, is taken when v0(=0x2) != a4(?), and falls through when v0(=0x2) == a4(?).
  The `beq` branch at 0x1578370 targets 0x1578010 and is always taken.
  The `bne` branch at 0x157837c targets 0x1578184, is taken when v0(=0x2) != a5(?), and falls through when v0(=0x2) == a5(?).
  The `beq` branch at 0x1578384 targets 0x15781b0 and is always taken.
  The `beq` branch at 0x15783b0 targets 0x1576cd4 and is always taken.
  The `beq` branch at 0x15783c0 targets 0x1576b50 and is always taken.
  The return at 0x1577138 has v0 = one of ?, 0x1.
  The return at 0x157715c has v0 = 0x0.
  The instructions from 0x15770dc to 0x15770dc are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x15767f0 uses the jump table at 0x172aa48 with targets 0x15771c8, 0x15771c8, 0x1578114, 0x1577f74, 0x1577dd8, 0x1577c30, 0x1577a54, 0x15771c8, 0x15778bc, 0x1577720, 0x157758c, 0x15773f4.
  The indirect jump at 0x15767f0 uses the jump table at 0x172aa48 with targets 0x15771c8, 0x15771c8, 0x1578114, 0x1577f74, 0x1577dd8, 0x1577c30, 0x1577a54, 0x15771c8, 0x15778bc, 0x1577720, 0x157758c, 0x15773f4.

- `cfb32SegmentSS` in `usr/lib/X11/dyDDX/odyssey.so` at 0x15bdc80 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/odyssey.so`.
  Range: 0x15bdc80-0x15bfe30 (8624 bytes).
  It occupies 8624 bytes.
  The `lw` at 0x15bdca8 loads 4 bytes from abs 0x173f440 (miZeroLineScreenIndex).
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x15bdcc0, `lw` at 0x15bdd18.
  2 such `lw` accesses load 4 bytes from [a0+16] +0x1b4, including `lw` at 0x15bdcc4, `lw` at 0x15bdd20.
  The `lw` at 0x15bdcd0 loads 4 bytes from ([[a0+16]+436] + ([0x173f440] << 0x2)) +0x0.
  The `lw` at 0x15bdcd8 loads 4 bytes from abs 0x173f518 (cfb32GCPrivateIndex).
  The `lw` at 0x15bdcdc loads 4 bytes from a1 (arg1 at entry) +0x4c.
  The `lw` at 0x15bdce8 loads 4 bytes from ([a1+76] + ([0x173f518] << 0x2)) +0x0.
  The `lw` at 0x15bdcec loads 4 bytes from [([a1+76] + ([0x173f518] << 0x2))] +0x8.
  The `lw` at 0x15bdcf0 loads 4 bytes from [[([a1+76] + ([0x173f518] << 0x2))]+8] +0x8.
  The `lw` at 0x15bdcfc loads 4 bytes from [[[([a1+76] + ([0x173f518] << 0x2))]+8]+8] +0x4.
  The `lbu` at 0x15bdd08 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lw` at 0x15bdd1c loads 4 bytes from abs 0x173f51c (cfb32ScreenPrivateIndex).
  The `lw` at 0x15bdd2c loads 4 bytes from ([[a0+16]+436] + ([0x173f51c] << 0x2)) +0x0.
  77 such `lw` accesses load 4 bytes from ?, including `lw` at 0x15bdd38, `lw` at 0x15bdd60, `lw` at 0x15bde88.
  The `lbu` at 0x15bdd3c loads 1 byte from [([a1+76] + ([0x173f518] << 0x2))] +0x0.
  The `lw` at 0x15bdd40 loads 4 bytes from [([a1+76] + ([0x173f518] << 0x2))] +0xc.
  The `lw` at 0x15bdd44 loads 4 bytes from [([a1+76] + ([0x173f518] << 0x2))] +0x10.
  The `lh` at 0x15bdd48 loads 2 bytes from a0 (arg0 at entry) +0x8.
  The `lh` at 0x15bdd4c loads 2 bytes from a0 (arg0 at entry) +0xa.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x10, including `lw` at 0x15bddd4, `lw` at 0x15be088, `lw` at 0x15be134.
  165 such `sw` accesses store 4 bytes to ?, including `sw` at 0x15bdea8, `sw` at 0x15bdf3c, `sw` at 0x15bdf74.
  34 such `lh` accesses load 2 bytes from ?, including `lh` at 0x15be038, `lh` at 0x15be03c, `lh` at 0x15be040.
  The `bltz` branch at 0x15bdcb8 targets 0x15bfb00, is taken when a7(=[0x173f440]) < 0 (signed), and falls through when a7(=[0x173f440]) >= 0 (signed).
  The `beq` branch at 0x15bdcf4 targets 0x15bfb08, is taken when a5(=[[[([a1+76] + ([0x173f518] << 0x2))]+8]+8]) == 0, and falls through when a5(=[[[([a1+76] + ([0x173f518] << 0x2))]+8]+8]) != 0.
  The `beq` branch at 0x15bdd10 targets 0x15bfb14, is taken when t1(=0x1) == t2(=[a0]:1), and falls through when t1(=0x1) != t2(=[a0]:1).
  The `blez` branch at 0x15bdd70 targets 0x15bf4cc, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `beq` branch at 0x15bddac targets 0x15bfe24 and is always taken.
  The `beq` branch at 0x15bddf8 targets 0x15be024, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x15bde58 targets 0x15bf1e8, is taken when a4(=[[([a1+76] + ([0x173f518] << 0x2))]]:1) == a5(=0x3), and falls through when a4(=[[([a1+76] + ([0x173f518] << 0x2))]]:1) != a5(=0x3).
  The `blez` branch at 0x15bde60 targets 0x15be024, is taken when ra(?) <= 0 (signed), and falls through when ra(?) > 0 (signed).
  The `beq` branch at 0x15bde70 targets 0x15bdeb0, is taken when (ra(?) & 0x1) == 0, and falls through when (ra(?) & 0x1) != 0.
  The `beq` branch at 0x15bdeb4 targets 0x15be024, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x15bdebc targets 0x15bfce8, is taken when s3(?) != 0, and falls through when s3(?) == 0.
  The `beq` branch at 0x15bdf88 targets 0x15bf074, is taken when s0(?) == t3(?), and falls through when s0(?) != t3(?).
  The `bne` branch at 0x15bdfe8 targets 0x15bdf30, is taken when ra(?) != t3(?), and falls through when ra(?) == t3(?).
  The `beq` branch at 0x15be02c targets 0x15bf4cc, is taken when a7(?) == t2(=((a2 << 0x3) + a3)), and falls through when a7(?) != t2(=((a2 << 0x3) + a3)).
  The `bne` branch at 0x15be07c targets 0x15be128, is taken when s6(?) != s5(?), and falls through when s6(?) == s5(?).
  The `beq` branch at 0x15be09c targets 0x15be0b4, is taken when s4(?) >= s3(?) (signed), and falls through when s4(?) < s3(?) (signed).
  The `beq` branch at 0x15be0ac targets 0x15be0b8 and is always taken.
  The `beq` branch at 0x15be0b8 targets 0x15be024, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `bne` branch at 0x15be0cc targets 0x15be998, is taken when s3(?) < a3(?) (signed), and falls through when s3(?) >= a3(?) (signed).
  The `beq` branch at 0x15be0e4 targets 0x15be024, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x15be0f4 targets 0x15be0e0, is taken when s3(?) >= a3(?) (signed), and falls through when s3(?) < a3(?) (signed).
  The `beq` branch at 0x15be0fc targets 0x15be028, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x15be114 targets 0x15be024, is taken when ra(?) < a5(?) (signed), and falls through when ra(?) >= a5(?) (signed).
  The `beq` branch at 0x15be120 targets 0x15bfe10 and is always taken.
  The `bne` branch at 0x15be12c targets 0x15be1fc, is taken when s4(?) != s3(?), and falls through when s4(?) == s3(?).
  The `beq` branch at 0x15be14c targets 0x15be164, is taken when s6(?) >= s5(?) (signed), and falls through when s6(?) < s5(?) (signed).
  The `beq` branch at 0x15be15c targets 0x15be168 and is always taken.
  The `beq` branch at 0x15be168 targets 0x15be028, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `bne` branch at 0x15be180 targets 0x15beff8, is taken when s3(?) < a4(?) (signed), and falls through when s3(?) >= a4(?) (signed).
  The `beq` branch at 0x15be1a4 targets 0x15be024, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x15be1b4 targets 0x15be1a0, is taken when s3(?) >= t8(?) (signed), and falls through when s3(?) < t8(?) (signed).
  The `beq` branch at 0x15be1bc targets 0x15be028, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x15be1d8 targets 0x15be028, is taken when s3(?) < s4(?) (signed), and falls through when s3(?) >= s4(?) (signed).
  The `beq` branch at 0x15be1f4 targets 0x15bfe18 and is always taken.
  The `beq` branch at 0x15be294 targets 0x15be024, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `beq` branch at 0x15be2f4 targets 0x15be334 and is always taken.
  The `beq` branch at 0x15be308 targets 0x15be3ec, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x15be318 targets 0x15bddc0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x15be320 targets 0x15be414, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x15be32c targets 0x15be028, is taken when s7(?) == s2(?), and falls through when s7(?) != s2(?).
  The `beq` branch at 0x15be354 targets 0x15be374, is taken when s5(?) >= t8(?) (signed), and falls through when s5(?) < t8(?) (signed).
  The `beq` branch at 0x15be360 targets 0x15be3a4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x15be36c targets 0x15be388 and is always taken.
  The `beq` branch at 0x15be380 targets 0x15be3bc, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x15be38c targets 0x15be300, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x15be394 targets 0x15be3d4, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x15be39c targets 0x15be310 and is always taken.
  The `bne` branch at 0x15be3ac targets 0x15be404, is taken when s3(?) < s0(?) (signed), and falls through when s3(?) >= s0(?) (signed).
  The `beq` branch at 0x15be3b4 targets 0x15be3cc and is always taken.
  The `bne` branch at 0x15be3c4 targets 0x15be38c, is taken when s3(?) < v1(?) (signed), and falls through when s3(?) >= v1(?) (signed).
  The `beq` branch at 0x15be3cc targets 0x15be38c and is always taken.
  The `bne` branch at 0x15be3dc targets 0x15be55c, is taken when s4(?) < s0(?) (signed), and falls through when s4(?) >= s0(?) (signed).
  The `beq` branch at 0x15be3e4 targets 0x15be3fc and is always taken.
  The `bne` branch at 0x15be3f4 targets 0x15be318, is taken when s4(?) < a1(?) (signed), and falls through when s4(?) >= a1(?) (signed).
  The `beq` branch at 0x15be3fc targets 0x15be314 and is always taken.
  The `beq` branch at 0x15be404 targets 0x15be684, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x15be40c targets 0x15be32c and is always taken.
  The `beq` branch at 0x15be478 targets 0x15be488, is taken when (a2(?) & a6(?)) == 0, and falls through when (a2(?) & a6(?)) != 0.
  The `beq` branch at 0x15be480 targets 0x15be32c and is always taken.
  The `beq` branch at 0x15be488 targets 0x15becdc, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x15be508 targets 0x15be6cc, is taken when (a2(?) & 0x8) == 0, and falls through when (a2(?) & 0x8) != 0.
  The `bne` branch at 0x15be52c targets 0x15be570, is taken when a1(=0x7fff) < s8(?) (unsigned), and falls through when a1(=0x7fff) >= s8(?) (unsigned).
  The `beq` branch at 0x15be554 targets 0x15be584 and is always taken.
  The `bne` branch at 0x15be55c targets 0x15be328, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x15be568 targets 0x15be420 and is always taken.
  The `beq` branch at 0x15be5a0 targets 0x15be724, is taken when (t1(?) & 0x1) == 0, and falls through when (t1(?) & 0x1) != 0.
  The `beq` branch at 0x15be5d4 targets 0x15be73c, is taken when (t1(?) & 0x2) == 0, and falls through when (t1(?) & 0x2) != 0.
  The `beq` branch at 0x15be600 targets 0x15be754, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `beq` branch at 0x15be67c targets 0x15be460 and is always taken.
  The `beq` branch at 0x15be6a0 targets 0x15be6b0, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x15be6a8 targets 0x15be6b8 and is always taken.
  The `bne` branch at 0x15be6bc targets 0x15be328, is taken when (a6(?) & 0x8) != 0, and falls through when (a6(?) & 0x8) == 0.
  The `beq` branch at 0x15be6c4 targets 0x15be424 and is always taken.
  The `beq` branch at 0x15be6dc targets 0x15bf008, is taken when (a2(?) & 0x2) == 0, and falls through when (a2(?) & 0x2) != 0.
  The `bne` branch at 0x15be708 targets 0x15be968, is taken when a1(=0x7fff) < s8(?) (unsigned), and falls through when a1(=0x7fff) >= s8(?) (unsigned).
  The `beq` branch at 0x15be71c targets 0x15be990 and is always taken.
  The `beq` branch at 0x15be734 targets 0x15be5b8 and is always taken.
  The `beq` branch at 0x15be74c targets 0x15be5ec and is always taken.
  The `beq` branch at 0x15be760 targets 0x15be620 and is always taken.
  The `beq` branch at 0x15be768 targets 0x15be834, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x15be78c targets 0x15be7c0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x15be7b8 targets 0x15be794, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x15be7c0 targets 0x15be834, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x15be82c targets 0x15be7d0, is taken when a2(?) != a7(?), and falls through when a2(?) == a7(?).
  The `beq` branch at 0x15be834 targets 0x15be028, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x15be844 targets 0x15be024, is taken when ra(?) < a1(?) (signed), and falls through when ra(?) >= a1(?) (signed).
  The `bne` branch at 0x15be864 targets 0x15be834, is taken when s5(?) < a5(?) (signed), and falls through when s5(?) >= a5(?) (signed).
  The `beq` branch at 0x15be86c targets 0x15be834, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x15be894 targets 0x15be834, is taken when t2(?) == a2(?), and falls through when t2(?) != a2(?).
  The `beq` branch at 0x15be8a4 targets 0x15bf0ac, is taken when t8(=[[([a1+76] + ([0x173f518] << 0x2))]]:1) == v0(=0x3), and falls through when t8(=[[([a1+76] + ([0x173f518] << 0x2))]]:1) != v0(=0x3).
  The `bne` branch at 0x15be8ac targets 0x15be768, is taken when v1(=[[([a1+76] + ([0x173f518] << 0x2))]]:1) != a0(=0x6), and falls through when v1(=[[([a1+76] + ([0x173f518] << 0x2))]]:1) == a0(=0x6).
  The `bne` branch at 0x15be8b4 targets 0x15be834, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x15be8dc targets 0x15be908, is taken when (a7(?) & 0x3) == 0, and falls through when (a7(?) & 0x3) != 0.
  The `bne` branch at 0x15be900 targets 0x15be8e4, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x15be908 targets 0x15be834, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x15be958 targets 0x15be910, is taken when a2(?) != a7(?), and falls through when a2(?) == a7(?).
  The `beq` branch at 0x15be960 targets 0x15be834 and is always taken.
  The `beq` branch at 0x15be990 targets 0x15be588 and is always taken.
  The `bne` branch at 0x15be998 targets 0x15be028, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x15be9a4 targets 0x15be118 and is always taken.
  The `beq` branch at 0x15be9b4 targets 0x15bf8d4, is taken when v0(=[[([a1+76] + ([0x173f518] << 0x2))]]:1) == v1(=0x6), and falls through when v0(=[[([a1+76] + ([0x173f518] << 0x2))]]:1) != v1(=0x6).
  The `beq` branch at 0x15be9bc targets 0x15be9e8, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x15be9e0 targets 0x15be9c4, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x15be9f4 targets 0x15beba0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x15be9fc targets 0x15bfc00, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x15bea80 targets 0x15bf530, is taken when a2(?) == a4(?), and falls through when a2(?) != a4(?).
  The `beq` branch at 0x15beac8 targets 0x15bf500, is taken when a3(?) == a4(?), and falls through when a3(?) != a4(?).
  The `bne` branch at 0x15beb10 targets 0x15bea40, is taken when a1(?) != a4(?), and falls through when a1(?) == a4(?).
  The `beq` branch at 0x15beba4 targets 0x15be028, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `bne` branch at 0x15bebb4 targets 0x15be024, is taken when a0(?) != s4(?), and falls through when a0(?) == s4(?).
  The `beq` branch at 0x15bebd8 targets 0x15beba0, is taken when s5(?) >= a4(?) (signed), and falls through when s5(?) < a4(?) (signed).
  The `beq` branch at 0x15bebe0 targets 0x15be024, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x15bebf8 targets 0x15beba0, is taken when t9(?) == t8(?), and falls through when t9(?) != t8(?).
  The `blez` branch at 0x15bec0c targets 0x15bf7b4, is taken when t8(?) <= 0 (signed), and falls through when t8(?) > 0 (signed).
  The `bne` branch at 0x15bec14 targets 0x15be9ac, is taken when v0(=[[([a1+76] + ([0x173f518] << 0x2))]]:1) != v1(=0x3), and falls through when v0(=[[([a1+76] + ([0x173f518] << 0x2))]]:1) == v1(=0x3).
  The `beq` branch at 0x15bec38 targets 0x15bec54, is taken when (t8(?) & 0x7) == 0, and falls through when (t8(?) & 0x7) != 0.
  The `bne` branch at 0x15bec4c targets 0x15bec40, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x15bec5c targets 0x15becd4, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x15bec64 targets 0x15bfba4, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x15becb0 targets 0x15bec90, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x15becd4 targets 0x15beba4 and is always taken.
  The `beq` branch at 0x15bed34 targets 0x15bf494, is taken when v0(=one of 0x0, 0x1) == 0, and falls through when v0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x15bed54 targets 0x15bf4ac, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x15bed60 targets 0x15be32c, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x15bed68 targets 0x15bedb8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x15bed84 targets 0x15bf838, is taken when a1(=one of 0x0, 0x1) == 0, and falls through when a1(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x15bee18 targets 0x15bf554, is taken when a4(=[[([a1+76] + ([0x173f518] << 0x2))]]:1) == a7(=0x3), and falls through when a4(=[[([a1+76] + ([0x173f518] << 0x2))]]:1) != a7(=0x3).
  The `blez` branch at 0x15bee20 targets 0x15be32c, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0x15bee38 targets 0x15bee74, is taken when (s0(?) & 0x1) == 0, and falls through when (s0(?) & 0x1) != 0.
  The `beq` branch at 0x15bee78 targets 0x15be32c, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bne` branch at 0x15bee80 targets 0x15bfdbc, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x15bef58 targets 0x15bf1d0, is taken when t3(?) == s0(?), and falls through when t3(?) != s0(?).
  The `bne` branch at 0x15befb8 targets 0x15bef00, is taken when t3(?) != ra(?), and falls through when t3(?) == ra(?).
  The `beq` branch at 0x15beff0 targets 0x15be32c and is always taken.
  The `bne` branch at 0x15beff8 targets 0x15be024, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x15bf000 targets 0x15be1e0 and is always taken.
  The `beq` branch at 0x15bf020 targets 0x15bf87c, is taken when (a2(?) & 0x4) == 0, and falls through when (a2(?) & 0x4) != 0.
  The `bne` branch at 0x15bf048 targets 0x15bf088, is taken when a1(=0x7fff) < s8(?) (unsigned), and falls through when a1(=0x7fff) >= s8(?) (unsigned).
  The `beq` branch at 0x15bf06c targets 0x15bf0a4 and is always taken.
  The `beq` branch at 0x15bf080 targets 0x15be000 and is always taken.
  The `beq` branch at 0x15bf0a4 targets 0x15be588 and is always taken.
  The `bne` branch at 0x15bf0ac targets 0x15be834, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x15bf0d8 targets 0x15bf0fc, is taken when (a7(?) & 0x7) == 0, and falls through when (a7(?) & 0x7) != 0.
  The `bne` branch at 0x15bf0f4 targets 0x15bf0e0, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x15bf100 targets 0x15be834, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x15bf108 targets 0x15bfb5c, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `bne` branch at 0x15bf1a0 targets 0x15bf160, is taken when v0(?) != t0(?), and falls through when v0(?) == t0(?).
  The `beq` branch at 0x15bf1c8 targets 0x15be834 and is always taken.
  The `beq` branch at 0x15bf1e0 targets 0x15befcc and is always taken.
  The `bltz` branch at 0x15bf228 targets 0x15bf3f8, is taken when s2(?) < 0 (signed), and falls through when s2(?) >= 0 (signed).
  The `bne` branch at 0x15bf230 targets 0x15bfc58, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x15bf350 targets 0x15bf86c, is taken when t2(?) == t0(?), and falls through when t2(?) != t0(?).
  The `bne` branch at 0x15bf3d8 targets 0x15bf2d0, is taken when t2(?) != t0(?), and falls through when t2(?) == t0(?).
  The `beq` branch at 0x15bf418 targets 0x15bfa8c, is taken when a6(?) == gp(=0x4), and falls through when a6(?) != gp(=0x4).
  The `beq` branch at 0x15bf420 targets 0x15bf438, is taken when a6(?) == t2(=0x3), and falls through when a6(?) != t2(=0x3).
  The `bne` branch at 0x15bf428 targets 0x15bf488, is taken when a6(?) != t3(=0x2), and falls through when a6(?) == t3(=0x2).
  The `beq` branch at 0x15bf430 targets 0x15bf46c and is always taken.
  The `beq` branch at 0x15bf48c targets 0x15be024 and is always taken.
  The `beq` branch at 0x15bf4a4 targets 0x15bed48 and is always taken.
  The `bne` branch at 0x15bf4bc targets 0x15bed5c, is taken when (t8(?) & 0x3) != 0, and falls through when (t8(?) & 0x3) == 0.
  The `beq` branch at 0x15bf4c4 targets 0x15bed60 and is always taken.
  The `beq` branch at 0x15bf528 targets 0x15beb34 and is always taken.
  The `beq` branch at 0x15bf54c targets 0x15beb34 and is always taken.
  The `bltz` branch at 0x15bf598 targets 0x15bf768, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The `bne` branch at 0x15bf5a0 targets 0x15bfd2c, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x15bf6c0 targets 0x15bfa7c, is taken when t2(?) == t0(?), and falls through when t2(?) != t0(?).
  The `bne` branch at 0x15bf748 targets 0x15bf640, is taken when t2(?) != t0(?), and falls through when t2(?) == t0(?).
  The `beq` branch at 0x15bf790 targets 0x15bfb1c, is taken when a7(?) == gp(=0x4), and falls through when a7(?) != gp(=0x4).
  The `beq` branch at 0x15bf798 targets 0x15bf7dc, is taken when a7(?) == t3(=0x3), and falls through when a7(?) != t3(=0x3).
  The `bne` branch at 0x15bf7a4 targets 0x15bf82c, is taken when a7(?) != t8(=0x2), and falls through when a7(?) == t8(=0x2).
  The `beq` branch at 0x15bf7ac targets 0x15bf814 and is always taken.
  The `beq` branch at 0x15bf7d4 targets 0x15beba0 and is always taken.
  The `beq` branch at 0x15bf830 targets 0x15be32c and is always taken.
  The `beq` branch at 0x15bf864 targets 0x15bedb8 and is always taken.
  The `beq` branch at 0x15bf874 targets 0x15bf3ec and is always taken.
  The `beq` branch at 0x15bf894 targets 0x15be588, is taken when (a2(?) & 0x1) == 0, and falls through when (a2(?) & 0x1) != 0.
  The `bne` branch at 0x15bf8b8 targets 0x15bfa44, is taken when v1(=0x7fff) < s8(?) (unsigned), and falls through when v1(=0x7fff) >= s8(?) (unsigned).
  The `beq` branch at 0x15bf8cc targets 0x15bfa74 and is always taken.
  The `beq` branch at 0x15bf8f8 targets 0x15bf91c, is taken when (t8(?) & 0x3) == 0, and falls through when (t8(?) & 0x3) != 0.
  The `bne` branch at 0x15bf914 targets 0x15bf900, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x15bf920 targets 0x15bfa3c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x15bf928 targets 0x15bfbc8, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x15bf990 targets 0x15bfae4, is taken when t0(?) == t2(?), and falls through when t0(?) != t2(?).
  The `beq` branch at 0x15bf9c8 targets 0x15bfac4, is taken when t3(?) == t2(?), and falls through when t3(?) != t2(?).
  The `bne` branch at 0x15bfa00 targets 0x15bf960, is taken when a7(?) != t2(?), and falls through when a7(?) == t2(?).
  The `beq` branch at 0x15bfa3c targets 0x15beba4 and is always taken.
  The `beq` branch at 0x15bfa74 targets 0x15be588 and is always taken.
  The `beq` branch at 0x15bfa84 targets 0x15bf75c and is always taken.
  The `beq` branch at 0x15bfabc targets 0x15bf43c and is always taken.
  The `beq` branch at 0x15bfadc targets 0x15bfa20 and is always taken.
  The `beq` branch at 0x15bfaf8 targets 0x15bfa20 and is always taken.
  The `beq` branch at 0x15bfb00 targets 0x15bdcd4 and is always taken.
  The `beq` branch at 0x15bfb0c targets 0x15bdd08 and is always taken.
  The `beq` branch at 0x15bfb14 targets 0x15bdd30 and is always taken.
  The `beq` branch at 0x15bfb54 targets 0x15bf7e0 and is always taken.
  The `beq` branch at 0x15bfb9c targets 0x15be834 and is always taken.
  The `beq` branch at 0x15bfbc0 targets 0x15becd4 and is always taken.
  The `beq` branch at 0x15bfbf8 targets 0x15bfa3c and is always taken.
  The `beq` branch at 0x15bfc48 targets 0x15beba0, is taken when a2(?) == a6(?), and falls through when a2(?) != a6(?).
  The `beq` branch at 0x15bfc50 targets 0x15bfc00 and is always taken.
  The `beq` branch at 0x15bfce0 targets 0x15bf3f8 and is always taken.
  The `beq` branch at 0x15bfd24 targets 0x15be024 and is always taken.
  The `beq` branch at 0x15bfdb4 targets 0x15bf768 and is always taken.
  The `beq` branch at 0x15bfdfc targets 0x15be32c and is always taken.
  The `beq` branch at 0x15bfe10 targets 0x15be850 and is always taken.
  The `beq` branch at 0x15bfe1c targets 0x15bebc0 and is always taken.
  The `beq` branch at 0x15bfe28 targets 0x15be038 and is always taken.
  The return at 0x15bf4f8 has v0 = one of 0x17cd40, ?.
  The instructions from 0x15bddb4 to 0x15bddbc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x15be2fc to 0x15be2fc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x15bfe04 to 0x15bfe0c are not reached by any path from the entry, and their branches are not listed.

- `cfb16SegmentSS` in `usr/lib/X11/dyDDX/odyssey.so` at 0x15cb350 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/odyssey.so`.
  Range: 0x15cb350-0x15cd61c (8908 bytes).
  It occupies 8908 bytes.
  The `lw` at 0x15cb378 loads 4 bytes from abs 0x173f440 (miZeroLineScreenIndex).
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x15cb390, `lw` at 0x15cb3e8.
  2 such `lw` accesses load 4 bytes from [a0+16] +0x1b4, including `lw` at 0x15cb394, `lw` at 0x15cb3f0.
  The `lw` at 0x15cb3a0 loads 4 bytes from ([[a0+16]+436] + ([0x173f440] << 0x2)) +0x0.
  The `lw` at 0x15cb3a8 loads 4 bytes from abs 0x173f524 (cfb16GCPrivateIndex).
  The `lw` at 0x15cb3ac loads 4 bytes from a1 (arg1 at entry) +0x4c.
  The `lw` at 0x15cb3b8 loads 4 bytes from ([a1+76] + ([0x173f524] << 0x2)) +0x0.
  The `lw` at 0x15cb3bc loads 4 bytes from [([a1+76] + ([0x173f524] << 0x2))] +0x8.
  The `lw` at 0x15cb3c0 loads 4 bytes from [[([a1+76] + ([0x173f524] << 0x2))]+8] +0x8.
  The `lw` at 0x15cb3cc loads 4 bytes from [[[([a1+76] + ([0x173f524] << 0x2))]+8]+8] +0x4.
  The `lbu` at 0x15cb3d8 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lw` at 0x15cb3ec loads 4 bytes from abs 0x173f528 (cfb16ScreenPrivateIndex).
  The `lw` at 0x15cb3fc loads 4 bytes from ([[a0+16]+436] + ([0x173f528] << 0x2)) +0x0.
  53 such `lw` accesses load 4 bytes from ?, including `lw` at 0x15cb408, `lw` at 0x15cb430, `lw` at 0x15cc09c.
  The `lbu` at 0x15cb40c loads 1 byte from [([a1+76] + ([0x173f524] << 0x2))] +0x0.
  The `lw` at 0x15cb410 loads 4 bytes from [([a1+76] + ([0x173f524] << 0x2))] +0xc.
  The `lw` at 0x15cb414 loads 4 bytes from [([a1+76] + ([0x173f524] << 0x2))] +0x10.
  The `lh` at 0x15cb418 loads 2 bytes from a0 (arg0 at entry) +0x8.
  The `lh` at 0x15cb41c loads 2 bytes from a0 (arg0 at entry) +0xa.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x10, including `lw` at 0x15cb4a4, `lw` at 0x15cb764, `lw` at 0x15cb80c.
  28 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x15cb550, `lhu` at 0x15cb5e8, `lhu` at 0x15cb624.
  93 such `sh` accesses store 2 bytes to ?, including `sh` at 0x15cb578, `sh` at 0x15cb60c, `sh` at 0x15cb644.
  33 such `lh` accesses load 2 bytes from ?, including `lh` at 0x15cb714, `lh` at 0x15cb718, `lh` at 0x15cb71c.
  The `lw` at 0x15cc08c loads 4 bytes from table(0x1730b10) +0x0.
  The `lw` at 0x15cc090 loads 4 bytes from table(0x1730b08) +0x0.
  76 such `sw` accesses store 4 bytes to ?, including `sw` at 0x15cc0b8, `sw` at 0x15cc1a4, `sw` at 0x15cc200.
  The `lw` at 0x15cc12c loads 4 bytes from abs 0x17339b8.
  The `lw` at 0x15cc14c loads 4 bytes from table(0x1730af8) +0x0.
  The `lw` at 0x15cc160 loads 4 bytes from table(0x1730b00) +0x0.
  The `bltz` branch at 0x15cb388 targets 0x15cd2b4, is taken when a7(=[0x173f440]) < 0 (signed), and falls through when a7(=[0x173f440]) >= 0 (signed).
  The `beq` branch at 0x15cb3c4 targets 0x15cd2bc, is taken when a7(=[[[([a1+76] + ([0x173f524] << 0x2))]+8]+8]) == 0, and falls through when a7(=[[[([a1+76] + ([0x173f524] << 0x2))]+8]+8]) != 0.
  The `beq` branch at 0x15cb3e0 targets 0x15cd2c8, is taken when t1(=0x1) == t2(=[a0]:1), and falls through when t1(=0x1) != t2(=[a0]:1).
  The `blez` branch at 0x15cb440 targets 0x15ccbdc, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `beq` branch at 0x15cb484 targets 0x15cd610 and is always taken.
  The `beq` branch at 0x15cb4c8 targets 0x15cb700, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x15cb52c targets 0x15cc8f8, is taken when a4(=[[([a1+76] + ([0x173f524] << 0x2))]]:1) == a5(=0x3), and falls through when a4(=[[([a1+76] + ([0x173f524] << 0x2))]]:1) != a5(=0x3).
  The `blez` branch at 0x15cb534 targets 0x15cb700, is taken when ra(?) <= 0 (signed), and falls through when ra(?) > 0 (signed).
  The `beq` branch at 0x15cb548 targets 0x15cb584, is taken when (ra(?) & 0x1) == 0, and falls through when (ra(?) & 0x1) != 0.
  The `beq` branch at 0x15cb588 targets 0x15cb700, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x15cb590 targets 0x15cd4e0, is taken when s3(?) != 0, and falls through when s3(?) == 0.
  The `beq` branch at 0x15cb658 targets 0x15cc784, is taken when s0(?) == t3(?), and falls through when s0(?) != t3(?).
  The `bne` branch at 0x15cb6b8 targets 0x15cb600, is taken when ra(?) != t3(?), and falls through when ra(?) == t3(?).
  The `beq` branch at 0x15cb708 targets 0x15ccbdc, is taken when a7(?) == t2(=((a2 << 0x3) + a3)), and falls through when a7(?) != t2(=((a2 << 0x3) + a3)).
  The `bne` branch at 0x15cb758 targets 0x15cb804, is taken when s6(?) != s5(?), and falls through when s6(?) == s5(?).
  The `beq` branch at 0x15cb778 targets 0x15cb790, is taken when s4(?) >= s3(?) (signed), and falls through when s4(?) < s3(?) (signed).
  The `beq` branch at 0x15cb788 targets 0x15cb794 and is always taken.
  The `beq` branch at 0x15cb794 targets 0x15cb700, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `bne` branch at 0x15cb7a8 targets 0x15cc078, is taken when s3(?) < a3(?) (signed), and falls through when s3(?) >= a3(?) (signed).
  The `beq` branch at 0x15cb7c4 targets 0x15cb700, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x15cb7d4 targets 0x15cb7c0, is taken when s3(?) >= a3(?) (signed), and falls through when s3(?) < a3(?) (signed).
  The `beq` branch at 0x15cb7dc targets 0x15cb700, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x15cb7f0 targets 0x15cb700, is taken when ra(?) < a5(?) (signed), and falls through when ra(?) >= a5(?) (signed).
  The `beq` branch at 0x15cb7fc targets 0x15cd600 and is always taken.
  The `bne` branch at 0x15cb804 targets 0x15cb8d8, is taken when s4(?) != s3(?), and falls through when s4(?) == s3(?).
  The `beq` branch at 0x15cb81c targets 0x15cb834, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x15cb82c targets 0x15cb838 and is always taken.
  The `beq` branch at 0x15cb838 targets 0x15cb700, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `bne` branch at 0x15cb850 targets 0x15cc708, is taken when s3(?) < a5(?) (signed), and falls through when s3(?) >= a5(?) (signed).
  The `beq` branch at 0x15cb874 targets 0x15cb700, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x15cb884 targets 0x15cb870, is taken when s3(?) >= t8(?) (signed), and falls through when s3(?) < t8(?) (signed).
  The `beq` branch at 0x15cb88c targets 0x15cb700, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x15cb8a4 targets 0x15cb704, is taken when s3(?) < s4(?) (signed), and falls through when s3(?) >= s4(?) (signed).
  The `beq` branch at 0x15cb8d0 targets 0x15cd608 and is always taken.
  The `beq` branch at 0x15cb978 targets 0x15cb700, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `beq` branch at 0x15cb9d8 targets 0x15cba10 and is always taken.
  The `beq` branch at 0x15cb9e8 targets 0x15cbac8, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x15cb9f8 targets 0x15cb490, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x15cba00 targets 0x15cbaf0, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x15cba0c targets 0x15cb700, is taken when s7(?) == s2(?), and falls through when s7(?) != s2(?).
  The `beq` branch at 0x15cba30 targets 0x15cba4c, is taken when s5(?) >= t8(?) (signed), and falls through when s5(?) < t8(?) (signed).
  The `beq` branch at 0x15cba3c targets 0x15cba7c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x15cba44 targets 0x15cba60 and is always taken.
  The `beq` branch at 0x15cba58 targets 0x15cba98, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x15cba64 targets 0x15cb9e0, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x15cba6c targets 0x15cbab0, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x15cba74 targets 0x15cb9f0 and is always taken.
  The `bne` branch at 0x15cba88 targets 0x15cbae0, is taken when s3(?) < s0(?) (signed), and falls through when s3(?) >= s0(?) (signed).
  The `beq` branch at 0x15cba90 targets 0x15cbaa8 and is always taken.
  The `bne` branch at 0x15cbaa0 targets 0x15cba64, is taken when s3(?) < v1(?) (signed), and falls through when s3(?) >= v1(?) (signed).
  The `beq` branch at 0x15cbaa8 targets 0x15cba64 and is always taken.
  The `bne` branch at 0x15cbab8 targets 0x15cbc38, is taken when s4(?) < s0(?) (signed), and falls through when s4(?) >= s0(?) (signed).
  The `beq` branch at 0x15cbac0 targets 0x15cbad8 and is always taken.
  The `bne` branch at 0x15cbad0 targets 0x15cb9f8, is taken when s4(?) < a1(?) (signed), and falls through when s4(?) >= a1(?) (signed).
  The `beq` branch at 0x15cbad8 targets 0x15cb9f4 and is always taken.
  The `beq` branch at 0x15cbae0 targets 0x15cbd60, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x15cbae8 targets 0x15cba0c and is always taken.
  The `beq` branch at 0x15cbb54 targets 0x15cbb64, is taken when (a2(?) & a6(?)) == 0, and falls through when (a2(?) & a6(?)) != 0.
  The `beq` branch at 0x15cbb5c targets 0x15cba0c and is always taken.
  The `beq` branch at 0x15cbb64 targets 0x15cc3f8, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x15cbbe4 targets 0x15cbda8, is taken when (a2(?) & 0x8) == 0, and falls through when (a2(?) & 0x8) != 0.
  The `bne` branch at 0x15cbc08 targets 0x15cbc4c, is taken when a1(=0x7fff) < s8(?) (unsigned), and falls through when a1(=0x7fff) >= s8(?) (unsigned).
  The `beq` branch at 0x15cbc30 targets 0x15cbc60 and is always taken.
  The `bne` branch at 0x15cbc38 targets 0x15cba08, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x15cbc44 targets 0x15cbafc and is always taken.
  The `beq` branch at 0x15cbc7c targets 0x15cbe00, is taken when (t1(?) & 0x1) == 0, and falls through when (t1(?) & 0x1) != 0.
  The `beq` branch at 0x15cbcb0 targets 0x15cbe18, is taken when (t1(?) & 0x2) == 0, and falls through when (t1(?) & 0x2) != 0.
  The `beq` branch at 0x15cbcdc targets 0x15cbe30, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `beq` branch at 0x15cbd58 targets 0x15cbb3c and is always taken.
  The `beq` branch at 0x15cbd7c targets 0x15cbd8c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x15cbd84 targets 0x15cbd94 and is always taken.
  The `bne` branch at 0x15cbd98 targets 0x15cba08, is taken when (a6(?) & 0x8) != 0, and falls through when (a6(?) & 0x8) == 0.
  The `beq` branch at 0x15cbda0 targets 0x15cbb00 and is always taken.
  The `beq` branch at 0x15cbdb8 targets 0x15cc718, is taken when (a2(?) & 0x2) == 0, and falls through when (a2(?) & 0x2) != 0.
  The `bne` branch at 0x15cbde4 targets 0x15cc048, is taken when a1(=0x7fff) < s8(?) (unsigned), and falls through when a1(=0x7fff) >= s8(?) (unsigned).
  The `beq` branch at 0x15cbdf8 targets 0x15cc070 and is always taken.
  The `beq` branch at 0x15cbe10 targets 0x15cbc94 and is always taken.
  The `beq` branch at 0x15cbe28 targets 0x15cbcc8 and is always taken.
  The `beq` branch at 0x15cbe3c targets 0x15cbcfc and is always taken.
  The `beq` branch at 0x15cbe44 targets 0x15cbf14, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x15cbe68 targets 0x15cbe9c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x15cbe94 targets 0x15cbe70, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x15cbe9c targets 0x15cbf14, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x15cbf0c targets 0x15cbeb0, is taken when a4(?) != a7(?), and falls through when a4(?) == a7(?).
  The `beq` branch at 0x15cbf14 targets 0x15cb704, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x15cbf24 targets 0x15cb700, is taken when ra(?) < a0(?) (signed), and falls through when ra(?) >= a0(?) (signed).
  The `bne` branch at 0x15cbf44 targets 0x15cbf14, is taken when s5(?) < a5(?) (signed), and falls through when s5(?) >= a5(?) (signed).
  The `beq` branch at 0x15cbf4c targets 0x15cbf14, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x15cbf74 targets 0x15cbf14, is taken when t2(?) == a2(?), and falls through when t2(?) != a2(?).
  The `beq` branch at 0x15cbf84 targets 0x15cc7bc, is taken when t8(=[[([a1+76] + ([0x173f524] << 0x2))]]:1) == v0(=0x3), and falls through when t8(=[[([a1+76] + ([0x173f524] << 0x2))]]:1) != v0(=0x3).
  The `bne` branch at 0x15cbf8c targets 0x15cbe44, is taken when v1(=[[([a1+76] + ([0x173f524] << 0x2))]]:1) != a0(=0x6), and falls through when v1(=[[([a1+76] + ([0x173f524] << 0x2))]]:1) == a0(=0x6).
  The `bne` branch at 0x15cbf94 targets 0x15cbf14, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x15cbfbc targets 0x15cbfe8, is taken when (a7(?) & 0x3) == 0, and falls through when (a7(?) & 0x3) != 0.
  The `bne` branch at 0x15cbfe0 targets 0x15cbfc4, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x15cbfe8 targets 0x15cbf14, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x15cc038 targets 0x15cbff0, is taken when a2(?) != a7(?), and falls through when a2(?) == a7(?).
  The `beq` branch at 0x15cc040 targets 0x15cbf14 and is always taken.
  The `beq` branch at 0x15cc070 targets 0x15cbc64 and is always taken.
  The `bne` branch at 0x15cc078 targets 0x15cb704, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x15cc084 targets 0x15cb7f4 and is always taken.
  The `beq` branch at 0x15cc0c4 targets 0x15cb704, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `bne` branch at 0x15cc0d0 targets 0x15cb700, is taken when ra(?) != s4(?), and falls through when ra(?) == s4(?).
  The `beq` branch at 0x15cc0f4 targets 0x15cc0c0, is taken when s5(?) >= a7(?) (signed), and falls through when s5(?) < a7(?) (signed).
  The `beq` branch at 0x15cc0fc targets 0x15cb700, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x15cc110 targets 0x15cc0c0, is taken when a2(?) == t3(?), and falls through when a2(?) != t3(?).
  The `bne` branch at 0x15cc144 targets 0x15cc08c, is taken when ra(?) < 0x2 (signed), and falls through when ra(?) >= 0x2 (signed).
  The `beq` branch at 0x15cc170 targets 0x15ccfc8, is taken when v0(=[[([a1+76] + ([0x173f524] << 0x2))]]:1) == v1(=0x3), and falls through when v0(=[[([a1+76] + ([0x173f524] << 0x2))]]:1) != v1(=0x3).
  The `beq` branch at 0x15cc178 targets 0x15cc1a8, is taken when a2(=entry(0x1730af8)) == 0, and falls through when a2(=entry(0x1730af8)) != 0.
  The `beq` branch at 0x15cc1c0 targets 0x15cd104, is taken when t9(=[[([a1+76] + ([0x173f524] << 0x2))]]:1) == ra(=0x6), and falls through when t9(=[[([a1+76] + ([0x173f524] << 0x2))]]:1) != ra(=0x6).
  The `beq` branch at 0x15cc1c8 targets 0x15cc3cc, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x15cc1d8 targets 0x15cc204, is taken when (a4(?) & 0x3) == 0, and falls through when (a4(?) & 0x3) != 0.
  The `bne` branch at 0x15cc1fc targets 0x15cc1e0, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x15cc208 targets 0x15cc3cc, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x15cc210 targets 0x15cd3f4, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x15cc2a0 targets 0x15ccf38, is taken when t3(?) == a2(?), and falls through when t3(?) != a2(?).
  The `beq` branch at 0x15cc2e8 targets 0x15ccf08, is taken when a1(?) == a2(?), and falls through when a1(?) != a2(?).
  The `bne` branch at 0x15cc330 targets 0x15cc260, is taken when a7(?) != a2(?), and falls through when a7(?) == a2(?).
  The `beq` branch at 0x15cc3cc targets 0x15cc0c0, is taken when s3(=entry(0x1730b00)) == 0, and falls through when s3(=entry(0x1730b00)) != 0.
  The `beq` branch at 0x15cc3f0 targets 0x15cc0c0 and is always taken.
  The `beq` branch at 0x15cc454 targets 0x15ccba4, is taken when a4(=one of 0x0, 0x1) == 0, and falls through when a4(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x15cc470 targets 0x15ccbbc, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x15cc47c targets 0x15cba0c, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x15cc484 targets 0x15cc4d4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x15cc4a0 targets 0x15cced4, is taken when a1(=one of 0x0, 0x1) == 0, and falls through when a1(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x15cc530 targets 0x15ccc10, is taken when a4(=[[([a1+76] + ([0x173f524] << 0x2))]]:1) == a7(=0x3), and falls through when a4(=[[([a1+76] + ([0x173f524] << 0x2))]]:1) != a7(=0x3).
  The `blez` branch at 0x15cc538 targets 0x15cba0c, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0x15cc550 targets 0x15cc58c, is taken when (s0(?) & 0x1) == 0, and falls through when (s0(?) & 0x1) != 0.
  The `beq` branch at 0x15cc590 targets 0x15cba0c, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bne` branch at 0x15cc598 targets 0x15cd5b0, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x15cc668 targets 0x15cc8e0, is taken when t3(?) == s0(?), and falls through when t3(?) != s0(?).
  The `bne` branch at 0x15cc6c8 targets 0x15cc610, is taken when t3(?) != ra(?), and falls through when t3(?) == ra(?).
  The `beq` branch at 0x15cc700 targets 0x15cba0c and is always taken.
  The `bne` branch at 0x15cc708 targets 0x15cb700, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x15cc710 targets 0x15cb8b0 and is always taken.
  The `beq` branch at 0x15cc72c targets 0x15ccf70, is taken when (a2(?) & 0x4) == 0, and falls through when (a2(?) & 0x4) != 0.
  The `bne` branch at 0x15cc758 targets 0x15cc798, is taken when a1(=0x7fff) < s8(?) (unsigned), and falls through when a1(=0x7fff) >= s8(?) (unsigned).
  The `beq` branch at 0x15cc77c targets 0x15cc7b4 and is always taken.
  The `beq` branch at 0x15cc790 targets 0x15cb6d0 and is always taken.
  The `beq` branch at 0x15cc7b4 targets 0x15cbc64 and is always taken.
  The `bne` branch at 0x15cc7bc targets 0x15cbf14, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x15cc7e8 targets 0x15cc80c, is taken when (a7(?) & 0x7) == 0, and falls through when (a7(?) & 0x7) != 0.
  The `bne` branch at 0x15cc804 targets 0x15cc7f0, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x15cc810 targets 0x15cbf14, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x15cc818 targets 0x15cd34c, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `bne` branch at 0x15cc8b0 targets 0x15cc870, is taken when v0(?) != t0(?), and falls through when v0(?) == t0(?).
  The `beq` branch at 0x15cc8d8 targets 0x15cbf14 and is always taken.
  The `beq` branch at 0x15cc8f0 targets 0x15cc6dc and is always taken.
  The `bltz` branch at 0x15cc938 targets 0x15ccb08, is taken when s2(?) < 0 (signed), and falls through when s2(?) >= 0 (signed).
  The `bne` branch at 0x15cc940 targets 0x15cd450, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x15cca60 targets 0x15ccf60, is taken when t2(?) == t0(?), and falls through when t2(?) != t0(?).
  The `bne` branch at 0x15ccae8 targets 0x15cc9e0, is taken when t2(?) != t0(?), and falls through when t2(?) == t0(?).
  The `beq` branch at 0x15ccb28 targets 0x15cd27c, is taken when a6(?) == gp(=0x4), and falls through when a6(?) != gp(=0x4).
  The `beq` branch at 0x15ccb30 targets 0x15ccb48, is taken when a6(?) == t2(=0x3), and falls through when a6(?) != t2(=0x3).
  The `bne` branch at 0x15ccb38 targets 0x15ccb98, is taken when a6(?) != t3(=0x2), and falls through when a6(?) == t3(=0x2).
  The `beq` branch at 0x15ccb40 targets 0x15ccb7c and is always taken.
  The `beq` branch at 0x15ccb9c targets 0x15cb700 and is always taken.
  The `beq` branch at 0x15ccbb4 targets 0x15cc46c and is always taken.
  The `bne` branch at 0x15ccbcc targets 0x15cc478, is taken when (t8(?) & 0x3) != 0, and falls through when (t8(?) & 0x3) == 0.
  The `beq` branch at 0x15ccbd4 targets 0x15cc47c and is always taken.
  The `bltz` branch at 0x15ccc54 targets 0x15cce28, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The `bne` branch at 0x15ccc5c targets 0x15cd524, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x15ccd80 targets 0x15cd26c, is taken when t2(?) == t0(?), and falls through when t2(?) != t0(?).
  The `bne` branch at 0x15cce08 targets 0x15ccd00, is taken when t2(?) != t0(?), and falls through when t2(?) == t0(?).
  The `beq` branch at 0x15cce54 targets 0x15cd30c, is taken when a7(?) == gp(=0x4), and falls through when a7(?) != gp(=0x4).
  The `beq` branch at 0x15cce5c targets 0x15cce74, is taken when a7(?) == t3(=0x3), and falls through when a7(?) != t3(=0x3).
  The `bne` branch at 0x15cce64 targets 0x15ccec8, is taken when a7(?) != t8(=0x2), and falls through when a7(?) == t8(=0x2).
  The `beq` branch at 0x15cce6c targets 0x15cceb0 and is always taken.
  The `beq` branch at 0x15ccecc targets 0x15cba0c and is always taken.
  The `beq` branch at 0x15ccf00 targets 0x15cc4d4 and is always taken.
  The `beq` branch at 0x15ccf30 targets 0x15cc360 and is always taken.
  The `beq` branch at 0x15ccf58 targets 0x15cc360 and is always taken.
  The `beq` branch at 0x15ccf68 targets 0x15ccafc and is always taken.
  The `beq` branch at 0x15ccf88 targets 0x15cbc64, is taken when (a2(?) & 0x1) == 0, and falls through when (a2(?) & 0x1) != 0.
  The `bne` branch at 0x15ccfac targets 0x15cd0cc, is taken when a1(=0x7fff) < s8(?) (unsigned), and falls through when a1(=0x7fff) >= s8(?) (unsigned).
  The `beq` branch at 0x15ccfc0 targets 0x15cd0fc and is always taken.
  The `beq` branch at 0x15ccfc8 targets 0x15ccfec, is taken when a2(=entry(0x1730af8)) == 0, and falls through when a2(=entry(0x1730af8)) != 0.
  The `beq` branch at 0x15ccfec targets 0x15cd094, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x15ccffc targets 0x15cd018, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x15cd010 targets 0x15cd004, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x15cd01c targets 0x15cd094, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x15cd024 targets 0x15cd394, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `bne` branch at 0x15cd070 targets 0x15cd050, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x15cd094 targets 0x15cc0c0, is taken when s3(=entry(0x1730b00)) == 0, and falls through when s3(=entry(0x1730b00)) != 0.
  The `beq` branch at 0x15cd0c4 targets 0x15cc0c0 and is always taken.
  The `beq` branch at 0x15cd0fc targets 0x15cbc64 and is always taken.
  The `beq` branch at 0x15cd104 targets 0x15cc3cc, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x15cd110 targets 0x15cd134, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x15cd12c targets 0x15cd118, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x15cd140 targets 0x15cd25c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x15cd148 targets 0x15cd3bc, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x15cd1b0 targets 0x15cd2f0, is taken when t0(?) == t2(?), and falls through when t0(?) != t2(?).
  The `beq` branch at 0x15cd1e8 targets 0x15cd2d0, is taken when t3(?) == t2(?), and falls through when t3(?) != t2(?).
  The `bne` branch at 0x15cd220 targets 0x15cd180, is taken when a7(?) != t2(?), and falls through when a7(?) == t2(?).
  The `bne` branch at 0x15cd25c targets 0x15cc3d4, is taken when s3(=entry(0x1730b00)) != 0, and falls through when s3(=entry(0x1730b00)) == 0.
  The `beq` branch at 0x15cd264 targets 0x15cc0c4 and is always taken.
  The `beq` branch at 0x15cd274 targets 0x15cce1c and is always taken.
  The `beq` branch at 0x15cd2ac targets 0x15ccb4c and is always taken.
  The `beq` branch at 0x15cd2b4 targets 0x15cb3a4 and is always taken.
  The `beq` branch at 0x15cd2c0 targets 0x15cb3d8 and is always taken.
  The `beq` branch at 0x15cd2c8 targets 0x15cb400 and is always taken.
  The `beq` branch at 0x15cd2e8 targets 0x15cd240 and is always taken.
  The `beq` branch at 0x15cd304 targets 0x15cd240 and is always taken.
  The `beq` branch at 0x15cd344 targets 0x15cce7c and is always taken.
  The `beq` branch at 0x15cd38c targets 0x15cbf14 and is always taken.
  The `beq` branch at 0x15cd3b4 targets 0x15cd094 and is always taken.
  The `beq` branch at 0x15cd3ec targets 0x15cd25c and is always taken.
  The `beq` branch at 0x15cd43c targets 0x15cc3cc, is taken when a7(?) == a6(?), and falls through when a7(?) != a6(?).
  The `beq` branch at 0x15cd448 targets 0x15cd3f4 and is always taken.
  The `beq` branch at 0x15cd4d8 targets 0x15ccb08 and is always taken.
  The `beq` branch at 0x15cd51c targets 0x15cb700 and is always taken.
  The `beq` branch at 0x15cd5a8 targets 0x15cce28 and is always taken.
  The `beq` branch at 0x15cd5f0 targets 0x15cba0c and is always taken.
  The `beq` branch at 0x15cd600 targets 0x15cbf30 and is always taken.
  The `beq` branch at 0x15cd608 targets 0x15cc0dc and is always taken.
  The `beq` branch at 0x15cd614 targets 0x15cb714 and is always taken.
  The return at 0x15ccc08 has v0 = one of 0x16f670, ?.
  The instructions from 0x15cb48c to 0x15cb48c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x15cd5f8 to 0x15cd5fc are not reached by any path from the entry, and their branches are not listed.

- `odsyLineSS` in `usr/lib/X11/dyDDX/odyssey.so` at 0x15d5570 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/odyssey.so`.
  Range: 0x15d5570-0x15d7694 (8484 bytes).
  It occupies 8484 bytes.
  The `lw` at 0x15d55a4 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x15d55ac loads 4 bytes from [a0+16] +0x1b4.
  The `lw` at 0x15d55b0 loads 4 bytes from [a0+16] +0x74.
  The `lw` at 0x15d55b4 loads 4 bytes from a1 (arg1 at entry) +0x4c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x84, including `lw` at 0x15d55c4, `lw` at 0x15d5668.
  The `lw` at 0x15d55cc loads 4 bytes from [[a0+16]+116] +0x50.
  The `lw` at 0x15d55dc loads 4 bytes from ([a1+76] + ([0x1738f50] << 0x2)) +0x0.
  The `lw` at 0x15d55e0 loads 4 bytes from ([a0+132] + ([0x1739358] << 0x2)) +0x0.
  The `lw` at 0x15d55e4 loads 4 bytes from [([a1+76] + ([0x1738f50] << 0x2))] +0x8.
  The `lw` at 0x15d55e8 loads 4 bytes from [([a0+132] + ([0x1739358] << 0x2))] +0x3c.
  The `lw` at 0x15d55f4 loads 4 bytes from [[([a1+76] + ([0x1738f50] << 0x2))]+8] +0x8.
  The `lw` at 0x15d5604 loads 4 bytes from ([[a0+16]+436] + ([0x173935c] << 0x2)) +0x0.
  The `lw` at 0x15d5610 loads 4 bytes from [([a0+132] + ([0x1739358] << 0x2))] +0x14.
  The `lw` at 0x15d5620 loads 4 bytes from [[[([a1+76] + ([0x1738f50] << 0x2))]+8]+8] +0x4.
  2 such `lw` accesses load 4 bytes from [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x5c, including `lw` at 0x15d5624, `lw` at 0x15d6608.
  2 such `lw` accesses load 4 bytes from [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x4c, including `lw` at 0x15d5628, `lw` at 0x15d660c.
  2 such `lw` accesses load 4 bytes from [[([[a0+16]+436] + ([0x173935c] << 0x2))]+92] +0x0, including `lw` at 0x15d562c, `lw` at 0x15d6610.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0x15d5638, `lw` at 0x15d5640, `lw` at 0x15d564c.
  2 such `lw` accesses load 4 bytes from ([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2)) +0x0, including `lw` at 0x15d5648, `lw` at 0x15d662c.
  14 such `sw` accesses store 4 bytes to [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x84, including `sw` at 0x15d5658, `sw` at 0x15d56c0, `sw` at 0x15d5ab8.
  The `lw` at 0x15d5664 loads 4 bytes from sym(dbcWindowPrivateIndex) +0x0.
  The `lb` at 0x15d567c loads 1 byte from ([a0+132] + ([sym(dbcWindowPrivateIndex)] << 0x2)) +0x1.
  2 such `lw` accesses load 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x2b68, including `lw` at 0x15d569c, `lw` at 0x15d5774.
  The `sw` at 0x15d56c4 stores 4 bytes to [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x2b68.
  46 such `sw` accesses store 4 bytes to [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x1cb8, including `sw` at 0x15d56c8, `sw` at 0x15d5708, `sw` at 0x15d5740.
  413 such `lw` accesses load 4 bytes from [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x0, including `lw` at 0x15d56cc, `lw` at 0x15d56dc, `lw` at 0x15d56e8.
  401 such `sw` accesses store 4 bytes to [[([[a0+16]+436] + ([0x173935c] << 0x2))]] +0x0, including `sw` at 0x15d56d8, `sw` at 0x15d56e4, `sw` at 0x15d56f0.
  6 such `lw` accesses load 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x1b24, including `lw` at 0x15d5868, `lw` at 0x15d58f8, `lw` at 0x15d592c.
  5 such `lw` accesses load 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x1b28, including `lw` at 0x15d5874, `lw` at 0x15d5904, `lw` at 0x15d5938.
  5 such `lw` accesses load 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x1b2c, including `lw` at 0x15d5880, `lw` at 0x15d5940, `lw` at 0x15d5a08.
  5 such `lw` accesses load 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x1b30, including `lw` at 0x15d588c, `lw` at 0x15d5918, `lw` at 0x15d5958.
  2 such `sh` accesses store 2 bytes to [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x6a, including `sh` at 0x15d5a74, `sh` at 0x15d5d64.
  3 such `sh` accesses store 2 bytes to [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x68, including `sh` at 0x15d5a78, `sh` at 0x15d5d60, `sh` at 0x15d63e0.
  11 such `lw` accesses load 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x84, including `lw` at 0x15d5a7c, `lw` at 0x15d64d4, `lw` at 0x15d66fc.
  The `lw` at 0x15d5abc loads 4 bytes from table(0x172a620) +0x0.
  The `lw` at 0x15d5b20 loads 4 bytes from [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x10.
  The `lw` at 0x15d5b28 loads 4 bytes from [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x4.
  The `lbu` at 0x15d5b30 loads 1 byte from [([a1+76] + ([0x1738f50] << 0x2))] +0x48.
  22 such `lw` accesses load 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x1cb8, including `lw` at 0x15d5b7c, `lw` at 0x15d6000, `lw` at 0x15d647c.
  The `sw` at 0x15d5b98 stores 4 bytes to [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0xc8.
  The `lw` at 0x15d5bf0 loads 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0xc8.
  The `lhu` at 0x15d5bf8 loads 2 bytes from [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x6a.
  2 such `sw` accesses store 4 bytes to [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x1b24, including `sw` at 0x15d5c28, `sw` at 0x15d6680.
  The `sw` at 0x15d5c2c stores 4 bytes to [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x1b2c.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x10, including `lw` at 0x15d5dd0, `lw` at 0x15d6110, `lw` at 0x15d6340.
  5 such `lh` accesses load 2 bytes from a4 (arg4 at entry) +0x2, including `lh` at 0x15d5de4, `lh` at 0x15d612c, `lh` at 0x15d6224.
  The `lh` at 0x15d5de8 loads 2 bytes from a4 (arg4 at entry) -0x2.
  5 such `lh` accesses load 2 bytes from a4 (arg4 at entry) +0x0, including `lh` at 0x15d5dec, `lh` at 0x15d6134, `lh` at 0x15d6220.
  The `lh` at 0x15d5df0 loads 2 bytes from a4 (arg4 at entry) -0x4.
  3 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x8, including `lh` at 0x15d5e18, `lh` at 0x15d60dc, `lh` at 0x15d621c.
  21 such `lh` accesses load 2 bytes from ?, including `lh` at 0x15d5e1c, `lh` at 0x15d5e38, `lh` at 0x15d5ed4.
  3 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0xa, including `lh` at 0x15d5e34, `lh` at 0x15d60f0, `lh` at 0x15d6218.
  2 such `lw` accesses load 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x1b7c, including `lw` at 0x15d5e54, `lw` at 0x15d63a4.
  2 such `sh` accesses store 2 bytes to [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x72, including `sh` at 0x15d5ea8, `sh` at 0x15d61fc.
  2 such `sh` accesses store 2 bytes to [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x6e, including `sh` at 0x15d5eac, `sh` at 0x15d61f0.
  2 such `sh` accesses store 2 bytes to [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x70, including `sh` at 0x15d5eb0, `sh` at 0x15d61e8.
  2 such `sh` accesses store 2 bytes to [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x6c, including `sh` at 0x15d5eb4, `sh` at 0x15d61e0.
  36 such `sw` accesses store 4 bytes to ?, including `sw` at 0x15d5ee8, `sw` at 0x15d5f14, `sw` at 0x15d5f58.
  The `lw` at 0x15d6044 loads 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x2b40.
  The `lw` at 0x15d6050 loads 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x2b44.
  The `lw` at 0x15d605c loads 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x2b48.
  The `lw` at 0x15d6068 loads 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x2b4c.
  The `lw` at 0x15d6074 loads 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x2b50.
  The `lw` at 0x15d6080 loads 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x2b54.
  The `lw` at 0x15d608c loads 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x2b58.
  The `lw` at 0x15d6098 loads 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x2b5c.
  The `lh` at 0x15d6188 loads 2 bytes from [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x6c.
  The `lh` at 0x15d618c loads 2 bytes from [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x72.
  The `lh` at 0x15d619c loads 2 bytes from [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x70.
  The `lh` at 0x15d61a0 loads 2 bytes from [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x6e.
  The `lh` at 0x15d6278 loads 2 bytes from a4 (arg4 at entry) +0x4.
  The `lh` at 0x15d627c loads 2 bytes from a4 (arg4 at entry) +0x6.
  10 such `lw` accesses load 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x2664, including `lw` at 0x15d64dc, `lw` at 0x15d6704, `lw` at 0x15d688c.
  10 such `sw` accesses store 4 bytes to [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x2664, including `sw` at 0x15d64e8, `sw` at 0x15d6710, `sw` at 0x15d6898.
  10 such `sw` accesses store 4 bytes to [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x2668, including `sw` at 0x15d64ec, `sw` at 0x15d6714, `sw` at 0x15d689c.
  20 such `lw` accesses load 4 bytes from [([a1+76] + ([0x1738f50] << 0x2))] +0x40, including `lw` at 0x15d654c, `lw` at 0x15d6774, `lw` at 0x15d68fc.
  15 such `lw` accesses load 4 bytes from [([a1+76] + ([0x1738f50] << 0x2))] +0x4c, including `lw` at 0x15d6554, `lw` at 0x15d677c, `lw` at 0x15d6904.
  20 such `lw` accesses load 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0xe8, including `lw` at 0x15d6558, `lw` at 0x15d65c8, `lw` at 0x15d6780.
  20 such `lw` accesses load 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0xec, including `lw` at 0x15d6564, `lw` at 0x15d65d4, `lw` at 0x15d6790.
  10 such `sw` accesses store 4 bytes to [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0xec, including `sw` at 0x15d6574, `sw` at 0x15d67a0, `sw` at 0x15d6924.
  10 such `sw` accesses store 4 bytes to [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0xe8, including `sw` at 0x15d657c, `sw` at 0x15d67a8, `sw` at 0x15d692c.
  10 such `lw` accesses load 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0xf0, including `lw` at 0x15d65e0, `lw` at 0x15d680c, `lw` at 0x15d6990.
  10 such `lw` accesses load 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0xf4, including `lw` at 0x15d65ec, `lw` at 0x15d6818, `lw` at 0x15d699c.
  The `lw` at 0x15d65fc loads 4 bytes from [([[a0+16]+436] + ([0x173935c] << 0x2))] +0x8.
  10 such `lw` accesses load 4 bytes from [([0x1738f48] + ([[[([[a0+16]+436] + ([0x173935c] << 0x2))]+92]] << 0x2))] +0x2668, including `lw` at 0x15d75a8, `lw` at 0x15d75bc, `lw` at 0x15d75d0.
  The `jalr` at 0x15d5ae8 calls ErrorF with a0=0x172ae60, a1=[[([a0+132] + ([0x1739358] << 0x2))]+20], a2=0x3, a3=?.
  The `beq` branch at 0x15d5618 targets 0x15d6608, is taken when t2(=[[[([a1+76] + ([0x1738f50] << 0x2))]+8]+8]) == 0, and falls through when t2(=[[[([a1+76] + ([0x1738f50] << 0x2))]+8]+8]) != 0.
  The `beq` branch at 0x15d5654 targets 0x15d6414, is taken when a6(=a3) == 0, and falls through when a6(=a3) != 0.
  The `beq` branch at 0x15d565c targets 0x15d6414, is taken when s4(=[[[[([a1+76] + ([0x1738f50] << 0x2))]+8]+8]+4]) == 0, and falls through when s4(=[[[[([a1+76] + ([0x1738f50] << 0x2))]+8]+8]+4]) != 0.
  The `beq` branch at 0x15d56bc targets 0x15d5a80, is taken when a3(?) == t2(=one of 0x3, 0xc), and falls through when a3(?) != t2(=one of 0x3, 0xc).
  The `beq` branch at 0x15d5ab4 targets 0x15d5ac8, is taken when s7(=[[([a0+132] + ([0x1739358] << 0x2))]+20]) >= 0xc (unsigned), and falls through when s7(=[[([a0+132] + ([0x1739358] << 0x2))]+20]) < 0xc (unsigned).
  The `beq` branch at 0x15d5b18 targets 0x15d65fc, is taken when t9(=0x7) == s7(=[[([a0+132] + ([0x1739358] << 0x2))]+20]), and falls through when t9(=0x7) != s7(=[[([a0+132] + ([0x1739358] << 0x2))]+20]).
  The `beq` branch at 0x15d5b34 targets 0x15d5b5c, is taken when at(=[[([a1+76] + ([0x1738f50] << 0x2))]+72]:1) == 0, and falls through when at(=[[([a1+76] + ([0x1738f50] << 0x2))]+72]:1) != 0.
  The `beq` branch at 0x15d5b3c targets 0x15d5b5c, is taken when a2(=0x3) == at(=[[([a1+76] + ([0x1738f50] << 0x2))]+72]:1), and falls through when a2(=0x3) != at(=[[([a1+76] + ([0x1738f50] << 0x2))]+72]:1).
  The `beq` branch at 0x15d5b44 targets 0x15d5b5c, is taken when a1(=0xc) == at(=[[([a1+76] + ([0x1738f50] << 0x2))]+72]:1), and falls through when a1(=0xc) != at(=[[([a1+76] + ([0x1738f50] << 0x2))]+72]:1).
  The `bne` branch at 0x15d5b50 targets 0x15d5b64, is taken when at(=[[([a1+76] + ([0x1738f50] << 0x2))]+72]:1) != a1(=0xf), and falls through when at(=[[([a1+76] + ([0x1738f50] << 0x2))]+72]:1) == a1(=0xf).
  The `beq` branch at 0x15d5ba0 targets 0x15d5bdc, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x15d5c00 targets 0x15d6648, is taken when t8(=[[([[a0+16]+436] + ([0x173935c] << 0x2))]+106]:2) == 0, and falls through when t8(=[[([[a0+16]+436] + ([0x173935c] << 0x2))]+106]:2) != 0.
  The `blez` branch at 0x15d5d6c targets 0x15d63dc, is taken when s4(?) <= 0 (signed), and falls through when s4(?) > 0 (signed).
  The `beq` branch at 0x15d5dc4 targets 0x15d5e8c and is always taken.
  The `beq` branch at 0x15d5ddc targets 0x15d5e44, is taken when (t3(?) & 0x3) == 0, and falls through when (t3(?) & 0x3) != 0.
  The `beq` branch at 0x15d5e08 targets 0x15d5e44, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x15d5e58 targets 0x15d5e84, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `blez` branch at 0x15d5e88 targets 0x15d63dc, is taken when s7(?) <= 0 (signed), and falls through when s7(?) > 0 (signed).
  The `beq` branch at 0x15d5ea0 targets 0x15d6178, is taken when a0(?) == s6(=0x1), and falls through when a0(?) != s6(=0x1).
  The `blez` branch at 0x15d5ec0 targets 0x15d5f18, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `bne` branch at 0x15d5f10 targets 0x15d5ed4, is taken when v1(?) != at(?), and falls through when v1(?) == at(?).
  The `bltz` branch at 0x15d5f38 targets 0x15d5ffc, is taken when t0(?) < 0 (signed), and falls through when t0(?) >= 0 (signed).
  The `beq` branch at 0x15d5f48 targets 0x15d5f64, is taken when (v1(?) & 0x3) == 0, and falls through when (v1(?) & 0x3) != 0.
  The `bne` branch at 0x15d5f5c targets 0x15d5f50, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x15d5f68 targets 0x15d5ffc, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x15d5f70 targets 0x15d7670, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x15d5fc0 targets 0x15d6170, is taken when v1(?) == a0(?), and falls through when v1(?) != a0(?).
  The `bne` branch at 0x15d5fe8 targets 0x15d5fa0, is taken when v0(?) != a0(?), and falls through when v0(?) == a0(?).
  The `beq` branch at 0x15d6004 targets 0x15d6030, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x15d60b0 targets 0x15d6200, is taken when a3(=a2) == s6(=0x1), and falls through when a3(=a2) != s6(=0x1).
  The `blez` branch at 0x15d60c0 targets 0x15d5dcc, is taken when a6(=a3) <= 0 (signed), and falls through when a6(=a3) > 0 (signed).
  The `bne` branch at 0x15d6104 targets 0x15d60d0, is taken when v0(?) != t2(=((a3 << 0x2) + a4)), and falls through when v0(?) == t2(=((a3 << 0x2) + a4)).
  The `beq` branch at 0x15d6124 targets 0x15d5e44, is taken when (a0(?) & 0x3) == 0, and falls through when (a0(?) & 0x3) != 0.
  The `bne` branch at 0x15d6150 targets 0x15d5e10, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bne` branch at 0x15d6158 targets 0x15d5e44, is taken when t0(=a4+4) != at(?), and falls through when t0(=a4+4) == at(?).
  The `beq` branch at 0x15d6160 targets 0x15d5e14 and is always taken.
  The `beq` branch at 0x15d6170 targets 0x15d5ff0 and is always taken.
  The `bne` branch at 0x15d6198 targets 0x15d61e0, is taken when v1(=[[([[a0+16]+436] + ([0x173935c] << 0x2))]+108]:2) != at(?), and falls through when v1(=[[([[a0+16]+436] + ([0x173935c] << 0x2))]+108]:2) == at(?).
  The `bne` branch at 0x15d61ac targets 0x15d61e0, is taken when v0(?) != v1(=[[([[a0+16]+436] + ([0x173935c] << 0x2))]+112]:2), and falls through when v0(?) == v1(=[[([[a0+16]+436] + ([0x173935c] << 0x2))]+112]:2).
  The `bne` branch at 0x15d61c0 targets 0x15d61e0, is taken when t3(?) != v0(=[[([[a0+16]+436] + ([0x173935c] << 0x2))]+110]:2), and falls through when t3(?) == v0(=[[([[a0+16]+436] + ([0x173935c] << 0x2))]+110]:2).
  The `bne` branch at 0x15d61c8 targets 0x15d61e0, is taken when v1(?) != a5(=[[([[a0+16]+436] + ([0x173935c] << 0x2))]+114]:2), and falls through when v1(?) == a5(=[[([[a0+16]+436] + ([0x173935c] << 0x2))]+114]:2).
  The `beq` branch at 0x15d61d4 targets 0x15d60a0 and is always taken.
  The `beq` branch at 0x15d61f8 targets 0x15d5eb8 and is always taken.
  The `beq` branch at 0x15d6258 targets 0x15d6438, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x15d6268 targets 0x15d62b8, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `beq` branch at 0x15d62b8 targets 0x15d6340, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x15d6334 targets 0x15d62c0, is taken when t3(?) != t8(=((a3-1 << 0x2) + a4)), and falls through when t3(?) == t8(=((a3-1 << 0x2) + a4)).
  The `beq` branch at 0x15d634c targets 0x15d6394, is taken when (a6(?) & 0x3) == 0, and falls through when (a6(?) & 0x3) != 0.
  The `beq` branch at 0x15d6370 targets 0x15d6684, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x15d63a8 targets 0x15d63d4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x15d63d4 targets 0x15d5e88 and is always taken.
  The `beq` branch at 0x15d6448 targets 0x15d6394, is taken when (a0(?) & 0x3) == 0, and falls through when (a0(?) & 0x3) != 0.
  The `bne` branch at 0x15d646c targets 0x15d6378, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x15d6474 targets 0x15d6398 and is always taken.
  The `beq` branch at 0x15d6484 targets 0x15d64c0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x15d64e0 targets 0x15d75a8, is taken when s6(=0x1) == v1(?), and falls through when s6(=0x1) != v1(?).
  The `bne` branch at 0x15d6560 targets 0x15d6570, is taken when t2(?) != at(=([[([a1+76] + ([0x1738f50] << 0x2))]+76] << 0xc)), and falls through when t2(?) == at(=([[([a1+76] + ([0x1738f50] << 0x2))]+76] << 0xc)).
  The `beq` branch at 0x15d6568 targets 0x15d65f4, is taken when s6(=0x1) == v1(?), and falls through when s6(=0x1) != v1(?).
  The `beq` branch at 0x15d6578 targets 0x15d65b4, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x15d65f4 targets 0x15d5b20, is taken when t9(=0x7) != s7(=[[([a0+132] + ([0x1739358] << 0x2))]+20]), and falls through when t9(=0x7) == s7(=[[([a0+132] + ([0x1739358] << 0x2))]+20]).
  The `beq` branch at 0x15d6600 targets 0x15d5b30 and is always taken.
  The `bne` branch at 0x15d6638 targets 0x15d5660, is taken when a7(=a3) != 0, and falls through when a7(=a3) == 0.
  The `beq` branch at 0x15d6640 targets 0x15d6418 and is always taken.
  The `bne` branch at 0x15d6668 targets 0x15d5c28, is taken when a3(?) != t2(?), and falls through when a3(?) == t2(?).
  The `beq` branch at 0x15d6674 targets 0x15d5d60, is taken when a6(?) == at(?), and falls through when a6(?) != at(?).
  The `beq` branch at 0x15d667c targets 0x15d5c2c and is always taken.
  The `bne` branch at 0x15d6690 targets 0x15d6394, is taken when a7(=a4+4) != t0(?), and falls through when a7(=a4+4) == t0(?).
  The `beq` branch at 0x15d6698 targets 0x15d637c and is always taken.
  The `beq` branch at 0x15d66ac targets 0x15d66e8, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x15d6708 targets 0x15d75bc, is taken when s6(=0x1) == a6(?), and falls through when s6(=0x1) != a6(?).
  The `bne` branch at 0x15d6788 targets 0x15d679c, is taken when v1(?) != at(=([[([a1+76] + ([0x1738f50] << 0x2))]+76] << 0xc)), and falls through when v1(?) == at(=([[([a1+76] + ([0x1738f50] << 0x2))]+76] << 0xc)).
  The `beq` branch at 0x15d6794 targets 0x15d6820, is taken when s6(=0x1) == t3(?), and falls through when s6(=0x1) != t3(?).
  The `beq` branch at 0x15d67a4 targets 0x15d67e0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x15d6820 targets 0x15d5b18 and is always taken.
  The `beq` branch at 0x15d6834 targets 0x15d6870, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x15d6890 targets 0x15d75d0, is taken when s6(=0x1) == a6(?), and falls through when s6(=0x1) != a6(?).
  The `bne` branch at 0x15d6910 targets 0x15d6920, is taken when v1(?) != at(=([[([a1+76] + ([0x1738f50] << 0x2))]+76] << 0xc)), and falls through when v1(?) == at(=([[([a1+76] + ([0x1738f50] << 0x2))]+76] << 0xc)).
  The `beq` branch at 0x15d6918 targets 0x15d69a4, is taken when s6(=0x1) == v1(?), and falls through when s6(=0x1) != v1(?).
  The `beq` branch at 0x15d6928 targets 0x15d6964, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x15d69a4 targets 0x15d5b18 and is always taken.
  The `beq` branch at 0x15d69b8 targets 0x15d69f4, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x15d6a14 targets 0x15d75e4, is taken when s6(=0x1) == a3(?), and falls through when s6(=0x1) != a3(?).
  The `bne` branch at 0x15d6a98 targets 0x15d6aac, is taken when t3(?) != at(=([[([a1+76] + ([0x1738f50] << 0x2))]+76] << 0x10)), and falls through when t3(?) == at(=([[([a1+76] + ([0x1738f50] << 0x2))]+76] << 0x10)).
  The `beq` branch at 0x15d6aa4 targets 0x15d6b30, is taken when s6(=0x1) == t2(?), and falls through when s6(=0x1) != t2(?).
  The `beq` branch at 0x15d6ab4 targets 0x15d6af0, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x15d6b30 targets 0x15d5b18 and is always taken.
  The `beq` branch at 0x15d6b44 targets 0x15d6b80, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x15d6ba0 targets 0x15d75f8, is taken when s6(=0x1) == a3(?), and falls through when s6(=0x1) != a3(?).
  The `bne` branch at 0x15d6c24 targets 0x15d6c38, is taken when t3(?) != at(=([[([a1+76] + ([0x1738f50] << 0x2))]+76] << 0x10)), and falls through when t3(?) == at(=([[([a1+76] + ([0x1738f50] << 0x2))]+76] << 0x10)).
  The `beq` branch at 0x15d6c30 targets 0x15d6cbc, is taken when s6(=0x1) == t2(?), and falls through when s6(=0x1) != t2(?).
  The `beq` branch at 0x15d6c40 targets 0x15d6c7c, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x15d6cbc targets 0x15d5b18 and is always taken.
  The `beq` branch at 0x15d6cd0 targets 0x15d6d0c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x15d6d2c targets 0x15d760c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x15d6df8 targets 0x15d6e24, is taken when a3(?) != t2(?), and falls through when a3(?) == t2(?).
  The `beq` branch at 0x15d6e1c targets 0x15d6ec4, is taken when a3(?) == a5(?), and falls through when a3(?) != a5(?).
  The `beq` branch at 0x15d6e48 targets 0x15d6e84, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x15d6ec4 targets 0x15d5b18 and is always taken.
  The `beq` branch at 0x15d6ed8 targets 0x15d6f14, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x15d6f34 targets 0x15d7620, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x15d6fd8 targets 0x15d6ff0, is taken when a3(?) != at(?), and falls through when a3(?) == at(?).
  The `beq` branch at 0x15d6fe8 targets 0x15d7084, is taken when t3(?) == a7(?), and falls through when t3(?) != a7(?).
  The `beq` branch at 0x15d7008 targets 0x15d7044, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x15d7084 targets 0x15d5b18 and is always taken.
  The `beq` branch at 0x15d7098 targets 0x15d70d4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x15d70f4 targets 0x15d7634, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x15d7188 targets 0x15d71a4, is taken when t0(?) != t2(?), and falls through when t0(?) == t2(?).
  The `beq` branch at 0x15d719c targets 0x15d7234, is taken when a5(?) == a6(?), and falls through when a5(?) != a6(?).
  The `beq` branch at 0x15d71b8 targets 0x15d71f4, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x15d7234 targets 0x15d5b18 and is always taken.
  The `beq` branch at 0x15d7248 targets 0x15d7284, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x15d72a4 targets 0x15d7648, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x15d7340 targets 0x15d7358, is taken when a3(?) != at(?), and falls through when a3(?) == at(?).
  The `beq` branch at 0x15d7350 targets 0x15d73ec, is taken when t2(?) == a7(?), and falls through when t2(?) != a7(?).
  The `beq` branch at 0x15d7370 targets 0x15d73ac, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x15d73ec targets 0x15d5b18 and is always taken.
  The `beq` branch at 0x15d7400 targets 0x15d743c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x15d745c targets 0x15d765c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x15d74f0 targets 0x15d750c, is taken when t0(?) != v1(?), and falls through when t0(?) == v1(?).
  The `beq` branch at 0x15d7504 targets 0x15d75a0, is taken when t0(?) == t2(?), and falls through when t0(?) != t2(?).
  The `beq` branch at 0x15d7524 targets 0x15d7560, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x15d75a0 targets 0x15d5b18 and is always taken.
  The `bne` branch at 0x15d75ac targets 0x15d64e8, is taken when a2(=0x3) != a7(?), and falls through when a2(=0x3) == a7(?).
  The `beq` branch at 0x15d75b4 targets 0x15d6514 and is always taken.
  The `bne` branch at 0x15d75c0 targets 0x15d6710, is taken when a2(=0x3) != t0(?), and falls through when a2(=0x3) == t0(?).
  The `beq` branch at 0x15d75c8 targets 0x15d673c and is always taken.
  The `bne` branch at 0x15d75d4 targets 0x15d6898, is taken when a2(=0x3) != t2(?), and falls through when a2(=0x3) == t2(?).
  The `beq` branch at 0x15d75dc targets 0x15d68c4 and is always taken.
  The `bne` branch at 0x15d75e8 targets 0x15d6a1c, is taken when a2(=0x3) != t3(?), and falls through when a2(=0x3) == t3(?).
  The `beq` branch at 0x15d75f0 targets 0x15d6a48 and is always taken.
  The `bne` branch at 0x15d75fc targets 0x15d6ba8, is taken when a2(=0x3) != at(?), and falls through when a2(=0x3) == at(?).
  The `beq` branch at 0x15d7604 targets 0x15d6bd4 and is always taken.
  The `bne` branch at 0x15d7610 targets 0x15d6d34, is taken when at(=0x2) != v1(?), and falls through when at(=0x2) == v1(?).
  The `beq` branch at 0x15d7618 targets 0x15d6d60 and is always taken.
  The `bne` branch at 0x15d7624 targets 0x15d6f3c, is taken when at(=0x2) != a3(?), and falls through when at(=0x2) == a3(?).
  The `beq` branch at 0x15d762c targets 0x15d6f68 and is always taken.
  The `bne` branch at 0x15d7638 targets 0x15d70fc, is taken when at(=0x2) != a5(?), and falls through when at(=0x2) == a5(?).
  The `beq` branch at 0x15d7640 targets 0x15d7128 and is always taken.
  The `bne` branch at 0x15d764c targets 0x15d72ac, is taken when at(=0x2) != a6(?), and falls through when at(=0x2) == a6(?).
  The `beq` branch at 0x15d7654 targets 0x15d72d8 and is always taken.
  The `bne` branch at 0x15d7660 targets 0x15d7464, is taken when at(=0x2) != a7(?), and falls through when at(=0x2) == a7(?).
  The `beq` branch at 0x15d7668 targets 0x15d7490 and is always taken.
  The `beq` branch at 0x15d768c targets 0x15d5ffc and is always taken.
  The return at 0x15d640c has v0 = ?.
  The return at 0x15d6430 has v0 = [([a1+76] + ([0x1738f50] << 0x2))].
  The instructions from 0x15d6168 to 0x15d616c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x15d61dc to 0x15d61dc are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x15d5ac0 uses the jump table at 0x172a620 with targets 0x15d647c, 0x15d647c, 0x15d73f4, 0x15d723c, 0x15d708c, 0x15d6ecc, 0x15d6cc4, 0x15d647c, 0x15d6b38, 0x15d69ac, 0x15d6828, 0x15d66a0.
  The indirect jump at 0x15d5ac0 uses the jump table at 0x172a620 with targets 0x15d647c, 0x15d647c, 0x15d73f4, 0x15d723c, 0x15d708c, 0x15d6ecc, 0x15d6cc4, 0x15d647c, 0x15d6b38, 0x15d69ac, 0x15d6828, 0x15d66a0.

- `cfbPolyFillArcSolidGeneral` in `usr/lib/X11/dyDDX/odyssey.so` at 0x15ebb70 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/odyssey.so`.
  Range: 0x15ebb70-0x15ee5cc (10844 bytes).
  It occupies 10844 bytes.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x4c, including `lw` at 0x15ebbac, `lw` at 0x15ebd4c, `lw` at 0x15ec698.
  3 such `lw` accesses load 4 bytes from ([a1+76] + ([0x173f470] << 0x2)) +0x0, including `lw` at 0x15ebbc0, `lw` at 0x15ebd6c, `lw` at 0x15ec700.
  The `lw` at 0x15ebbc8 loads 4 bytes from [([a1+76] + ([0x173f470] << 0x2))] +0x8.
  8 such `lh` accesses load 2 bytes from ?, including `lh` at 0x15ebc2c, `lh` at 0x15ebc34, `lh` at 0x15ebc90.
  8 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x15ebc38, `lhu` at 0x15ebc40, `lhu` at 0x15ebca8.
  3 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x8, including `lh` at 0x15ebc7c, `lh` at 0x15ebd48, `lh` at 0x15ec80c.
  3 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0xa, including `lh` at 0x15ebc94, `lh` at 0x15ebd5c, `lh` at 0x15ec808.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x15ebcdc, `lw` at 0x15ebd44, `lw` at 0x15ec6a4.
  The `lw` at 0x15ebce0 loads 4 bytes from [a0+16] +0x17c.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x0, including `lbu` at 0x15ebd50, `lbu` at 0x15ec6a8.
  2 such `lw` accesses load 4 bytes from [a0+16] +0x74, including `lw` at 0x15ebd70, `lw` at 0x15ec6d4.
  228 such `lw` accesses load 4 bytes from ?, including `lw` at 0x15ebd74, `lw` at 0x15ebd80, `lw` at 0x15ebf24.
  2 such `lw` accesses load 4 bytes from [([a1+76] + ([0x173f470] << 0x2))] +0xc, including `lw` at 0x15ebd8c, `lw` at 0x15ec724.
  2 such `lw` accesses load 4 bytes from [([a1+76] + ([0x173f470] << 0x2))] +0x10, including `lw` at 0x15ebd98, `lw` at 0x15ec718.
  7 such `lw` accesses load 4 bytes from table(0x172f7c0) +0x0, including `lw` at 0x15ebf14, `lw` at 0x15ec994, `lw` at 0x15eca70.
  7 such `lw` accesses load 4 bytes from table(0x172f7b0) +0x0, including `lw` at 0x15ebf18, `lw` at 0x15ec990, `lw` at 0x15eca6c.
  224 such `sw` accesses store 4 bytes to ?, including `sw` at 0x15ebf44, `sw` at 0x15ec058, `sw` at 0x15ec0a4.
  7 such `lw` accesses load 4 bytes from table(0x172f790) +0x0, including `lw` at 0x15ec024, `lw` at 0x15eccbc, `lw` at 0x15ecf90.
  7 such `lw` accesses load 4 bytes from table(0x172f7a0) +0x0, including `lw` at 0x15ec288, `lw` at 0x15ecf54, `lw` at 0x15ed1fc.
  The `jalr` at 0x15ebc00 calls miPolyFillArc [0x15af4c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=?.
  The `jalr` at 0x15ebce8 calls (unknown callee) with a0=?, a1=sp-1024, a2=?, a3=?, a6=[a0+10]:2.
  The `jalr` at 0x15ec7ec calls miFillArcSliceSetup [0x1712180] with a0=?, a1=sp-1016, a2=a1 at entry (arg1), a3=?.
  The `blez` branch at 0x15ebbcc targets 0x15ee0c0, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `beq` branch at 0x15ebbe8 targets 0x15ee5b8 and is always taken.
  The `beq` branch at 0x15ebc20 targets 0x15ee0c0, is taken when a1(?) == a2(?), and falls through when a1(?) != a2(?).
  The `beq` branch at 0x15ebc3c targets 0x15ebc08, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x15ebc48 targets 0x15ebc08, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x15ebc54 targets 0x15ebc0c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x15ebc5c targets 0x15ebdf0, is taken when t3(=0x1) == a4(?), and falls through when t3(=0x1) != a4(?).
  The `beq` branch at 0x15ebc64 targets 0x15ebc7c, is taken when a4(?) == a6(?), and falls through when a4(?) != a6(?).
  The `beq` branch at 0x15ebc6c targets 0x15ebbf4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x15ebc74 targets 0x15ebbf0, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x15ebcc8 targets 0x15ebbf0, is taken when t8(=0x7fff) < t9(?) (signed), and falls through when t8(=0x7fff) >= t9(?) (signed).
  The `bne` branch at 0x15ebcd4 targets 0x15ebbf0, is taken when t0(=0x7fff) < a4(?) (signed), and falls through when t0(=0x7fff) >= a4(?) (signed).
  The `bne` branch at 0x15ebd0c targets 0x15ebbf0, is taken when v0(=ret(?)) != ra(=0x1), and falls through when v0(=ret(?)) == ra(=0x1).
  The `beq` branch at 0x15ebd30 targets 0x15ebd40, is taken when a4(?) >= 0x5a00 (signed), and falls through when a4(?) < 0x5a00 (signed).
  The `beq` branch at 0x15ebd38 targets 0x15ec690, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x15ebd68 targets 0x15ee0f4, is taken when t9(=0x1) == ra(=[a0]:1), and falls through when t9(=0x1) != ra(=[a0]:1).
  The `bne` branch at 0x15ebdb4 targets 0x15ebe00, is taken when a4(?) != t0(?), and falls through when a4(?) == t0(?).
  The `beq` branch at 0x15ebde8 targets 0x15ebe78 and is always taken.
  The `bne` branch at 0x15ebdf0 targets 0x15ebc0c, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x15ebdf8 targets 0x15ebc64 and is always taken.
  The `blez` branch at 0x15ebea8 targets 0x15ebc08, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `beq` branch at 0x15ebf04 targets 0x15ee5b0 and is always taken.
  The `bne` branch at 0x15ebf40 targets 0x15ec55c, is taken when s7(?) != at(?), and falls through when s7(?) == at(?).
  The `beq` branch at 0x15ebf6c targets 0x15ebc08, is taken when s7(?) == v0(?), and falls through when s7(?) != v0(?).
  The `bltz` branch at 0x15ebf74 targets 0x15ebfa4, is taken when ra(?) < 0 (signed), and falls through when ra(?) >= 0 (signed).
  The `bltz` branch at 0x15ebf8c targets 0x15ebfa4, is taken when ra(?) < 0 (signed), and falls through when ra(?) >= 0 (signed).
  The `bgez` branch at 0x15ebf9c targets 0x15ebf80, is taken when ra(?) >= 0 (signed), and falls through when ra(?) < 0 (signed).
  The `bne` branch at 0x15ebfd0 targets 0x15ebfdc, is taken when ra(?) != s5(?), and falls through when ra(?) == s5(?).
  The `beq` branch at 0x15ebfdc targets 0x15ebf48, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0x15ec01c targets 0x15ebf10, is taken when t0(?) < 0x5 (signed), and falls through when t0(?) >= 0x5 (signed).
  The `beq` branch at 0x15ec02c targets 0x15ec614, is taken when t9(=entry(0x172f790)) == 0, and falls through when t9(=entry(0x172f790)) != 0.
  The `bne` branch at 0x15ec078 targets 0x15ec288, is taken when t1(?) < 0x1 (signed), and falls through when t1(?) >= 0x1 (signed).
  The `beq` branch at 0x15ec084 targets 0x15ec0a8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x15ec0a0 targets 0x15ec08c, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x15ec0ac targets 0x15ec288, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x15ec0b4 targets 0x15ee4bc, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x15ec150 targets 0x15ec5cc, is taken when a1(?) == a5(?), and falls through when a1(?) != a5(?).
  The `beq` branch at 0x15ec198 targets 0x15ec580, is taken when a3(?) == a5(?), and falls through when a3(?) != a5(?).
  The `bne` branch at 0x15ec1e0 targets 0x15ec110, is taken when a0(?) != a5(?), and falls through when a0(?) == a5(?).
  The `beq` branch at 0x15ec298 targets 0x15ec2cc, is taken when a7(=entry(0x172f7a0)) == 0, and falls through when a7(=entry(0x172f7a0)) != 0.
  The `beq` branch at 0x15ec2d8 targets 0x15ebf48, is taken when s7(?) == a5(?), and falls through when s7(?) != a5(?).
  The `beq` branch at 0x15ec2e0 targets 0x15ec2f0, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x15ec2e8 targets 0x15ebf4c, is taken when ra(?) == s5(?), and falls through when ra(?) != s5(?).
  The `beq` branch at 0x15ec2f4 targets 0x15ec31c, is taken when t9(=entry(0x172f790)) == 0, and falls through when t9(=entry(0x172f790)) != 0.
  The `beq` branch at 0x15ec320 targets 0x15ec520, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x15ec328 targets 0x15ec34c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x15ec344 targets 0x15ec330, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x15ec350 targets 0x15ec520, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x15ec358 targets 0x15ee530, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x15ec3f0 targets 0x15ec660, is taken when a1(?) == a5(?), and falls through when a1(?) != a5(?).
  The `beq` branch at 0x15ec438 targets 0x15ec61c, is taken when a3(?) == a5(?), and falls through when a3(?) != a5(?).
  The `bne` branch at 0x15ec480 targets 0x15ec3b0, is taken when a0(?) != a5(?), and falls through when a0(?) == a5(?).
  The `beq` branch at 0x15ec520 targets 0x15ebf4c, is taken when a7(=entry(0x172f7a0)) == 0, and falls through when a7(=entry(0x172f7a0)) != 0.
  The `beq` branch at 0x15ec554 targets 0x15ebf48 and is always taken.
  The `beq` branch at 0x15ec55c targets 0x15ec56c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x15ec564 targets 0x15ebf4c, is taken when ra(?) == s5(?), and falls through when ra(?) != s5(?).
  The `beq` branch at 0x15ec578 targets 0x15ebf48 and is always taken.
  The `beq` branch at 0x15ec5c4 targets 0x15ec224 and is always taken.
  The `beq` branch at 0x15ec60c targets 0x15ec224 and is always taken.
  The `beq` branch at 0x15ec614 targets 0x15ec05c and is always taken.
  The `beq` branch at 0x15ec658 targets 0x15ec4bc and is always taken.
  The `beq` branch at 0x15ec688 targets 0x15ec4bc and is always taken.
  The `beq` branch at 0x15ec6cc targets 0x15ee254, is taken when a5(=0x1) == t3(=[a0]:1), and falls through when a5(=0x1) != t3(=[a0]:1).
  The `bne` branch at 0x15ec720 targets 0x15ec760, is taken when a4(?) != t0(?), and falls through when a4(?) == t0(?).
  The `beq` branch at 0x15ec758 targets 0x15ec7d8 and is always taken.
  The `blez` branch at 0x15ec830 targets 0x15ebc08, is taken when s1(?) <= 0 (signed), and falls through when s1(?) > 0 (signed).
  The `beq` branch at 0x15ec91c targets 0x15ecb2c and is always taken.
  The `beq` branch at 0x15ec948 targets 0x15ec9c0, is taken when a0(?) >= t0(?) (signed), and falls through when a0(?) < t0(?) (signed).
  The `beq` branch at 0x15ec988 targets 0x15ecf90, is taken when a3(?) >= 0x5 (signed), and falls through when a3(?) < 0x5 (signed).
  The `beq` branch at 0x15ec9c8 targets 0x15ecb0c, is taken when at(?) >= s1(?) (signed), and falls through when at(?) < s1(?) (signed).
  The `bne` branch at 0x15ec9d8 targets 0x15ecb08, is taken when v0(?) < s5(?) (signed), and falls through when v0(?) >= s5(?) (signed).
  The `beq` branch at 0x15ec9fc targets 0x15ed830, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x15eca08 targets 0x15ed838, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x15eca14 targets 0x15ed840, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x15eca20 targets 0x15eca98, is taken when t0(?) < a6(?) (signed), and falls through when t0(?) >= a6(?) (signed).
  The `beq` branch at 0x15eca64 targets 0x15ed23c, is taken when a3(?) >= 0x4 (signed), and falls through when a3(?) < 0x4 (signed).
  The `beq` branch at 0x15eca9c targets 0x15ecb08, is taken when a0(?) >= t1(?) (signed), and falls through when a0(?) < t1(?) (signed).
  The `beq` branch at 0x15ecad8 targets 0x15ed4fc, is taken when a3(?) >= 0x5 (signed), and falls through when a3(?) < 0x5 (signed).
  The `beq` branch at 0x15ecb24 targets 0x15ebc08, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bltz` branch at 0x15ecb30 targets 0x15ecb64, is taken when ra(?) < 0 (signed), and falls through when ra(?) >= 0 (signed).
  The `bltz` branch at 0x15ecb4c targets 0x15ecb64, is taken when ra(?) < 0 (signed), and falls through when ra(?) >= 0 (signed).
  The `bgez` branch at 0x15ecb5c targets 0x15ecb40, is taken when ra(?) >= 0 (signed), and falls through when ra(?) < 0 (signed).
  The `bne` branch at 0x15ecb80 targets 0x15ecb94, is taken when ra(?) != s6(?), and falls through when ra(?) == s6(?).
  The `blez` branch at 0x15ecba8 targets 0x15ecc84, is taken when t2(?) <= 0 (signed), and falls through when t2(?) > 0 (signed).
  The `blez` branch at 0x15ecbc4 targets 0x15ecca0, is taken when t3(?) <= 0 (signed), and falls through when t3(?) > 0 (signed).
  The `beq` branch at 0x15ecbd4 targets 0x15ec9c0, is taken when a3(?) >= s1(?) (signed), and falls through when a3(?) < s1(?) (signed).
  The `bne` branch at 0x15ecbe0 targets 0x15ec9c0, is taken when a5(?) < s5(?) (signed), and falls through when a5(?) >= s5(?) (signed).
  The `beq` branch at 0x15ecbfc targets 0x15ecc0c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x15ecc10 targets 0x15ecc24, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x15ecc24 targets 0x15ed7b0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x15ecc30 targets 0x15ec944, is taken when a3(?) < a6(?) (signed), and falls through when a3(?) >= a6(?) (signed).
  The `beq` branch at 0x15ecc70 targets 0x15eccbc, is taken when at(?) >= 0x4 (signed), and falls through when at(?) < 0x4 (signed).
  The `beq` branch at 0x15ecc7c targets 0x15ec924 and is always taken.
  The `beq` branch at 0x15ecc98 targets 0x15ecbb0 and is always taken.
  The `beq` branch at 0x15eccb4 targets 0x15ecbcc and is always taken.
  The `beq` branch at 0x15eccc8 targets 0x15ee0a4, is taken when a6(=entry(0x172f790)) == 0, and falls through when a6(=entry(0x172f790)) != 0.
  The `blez` branch at 0x15eccf4 targets 0x15ecf50, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `beq` branch at 0x15ecd10 targets 0x15ecd34, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x15ecd2c targets 0x15ecd18, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x15ecd38 targets 0x15ecf50, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x15ecd40 targets 0x15ee2b4, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x15ecdf0 targets 0x15ed91c, is taken when a1(?) == a5(?), and falls through when a1(?) != a5(?).
  The `beq` branch at 0x15ece38 targets 0x15ed8c0, is taken when a3(?) == a5(?), and falls through when a3(?) != a5(?).
  The `bne` branch at 0x15ece80 targets 0x15ecdb0, is taken when a0(?) != a5(?), and falls through when a0(?) == a5(?).
  The `beq` branch at 0x15ecf58 targets 0x15ec944, is taken when a6(=entry(0x172f7a0)) == 0, and falls through when a6(=entry(0x172f7a0)) != 0.
  The `beq` branch at 0x15ecf88 targets 0x15ec944 and is always taken.
  The `beq` branch at 0x15ecf98 targets 0x15ecfc8, is taken when t0(=entry(0x172f790)) == 0, and falls through when t0(=entry(0x172f790)) != 0.
  The `blez` branch at 0x15ecfc8 targets 0x15ed1f8, is taken when a7(?) <= 0 (signed), and falls through when a7(?) > 0 (signed).
  The `beq` branch at 0x15ecfdc targets 0x15ed000, is taken when (a7(?) & 0x3) == 0, and falls through when (a7(?) & 0x3) != 0.
  The `bne` branch at 0x15ecff8 targets 0x15ecfe4, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x15ed004 targets 0x15ed1f8, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x15ed00c targets 0x15ee33c, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x15ed0b0 targets 0x15ed9cc, is taken when a1(?) == a5(?), and falls through when a1(?) != a5(?).
  The `beq` branch at 0x15ed0f8 targets 0x15ed978, is taken when a3(?) == a5(?), and falls through when a3(?) != a5(?).
  The `bne` branch at 0x15ed140 targets 0x15ed070, is taken when a0(?) != a5(?), and falls through when a0(?) == a5(?).
  The `beq` branch at 0x15ed208 targets 0x15ec9c0, is taken when a6(=entry(0x172f7a0)) == 0, and falls through when a6(=entry(0x172f7a0)) != 0.
  The `beq` branch at 0x15ed234 targets 0x15ec9c0 and is always taken.
  The `beq` branch at 0x15ed24c targets 0x15ee0b4, is taken when a6(=entry(0x172f790)) == 0, and falls through when a6(=entry(0x172f790)) != 0.
  The `blez` branch at 0x15ed274 targets 0x15ed4bc, is taken when t1(?) <= 0 (signed), and falls through when t1(?) > 0 (signed).
  The `beq` branch at 0x15ed288 targets 0x15ed2ac, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0x15ed2a4 targets 0x15ed290, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x15ed2b0 targets 0x15ed4bc, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x15ed2b8 targets 0x15ee3f4, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x15ed360 targets 0x15eda70, is taken when a1(?) == a5(?), and falls through when a1(?) != a5(?).
  The `beq` branch at 0x15ed3a8 targets 0x15eda18, is taken when a3(?) == a5(?), and falls through when a3(?) != a5(?).
  The `bne` branch at 0x15ed3f0 targets 0x15ed320, is taken when a0(?) != a5(?), and falls through when a0(?) == a5(?).
  The `beq` branch at 0x15ed4c8 targets 0x15eca94, is taken when a6(=entry(0x172f7a0)) == 0, and falls through when a6(=entry(0x172f7a0)) != 0.
  The `beq` branch at 0x15ed4f4 targets 0x15eca94 and is always taken.
  The `beq` branch at 0x15ed504 targets 0x15ed534, is taken when a0(=entry(0x172f790)) == 0, and falls through when a0(=entry(0x172f790)) != 0.
  The `blez` branch at 0x15ed538 targets 0x15ed770, is taken when t0(?) <= 0 (signed), and falls through when t0(?) > 0 (signed).
  The `beq` branch at 0x15ed54c targets 0x15ed570, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x15ed568 targets 0x15ed554, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x15ed574 targets 0x15ed770, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x15ed57c targets 0x15ee460, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x15ed620 targets 0x15edb18, is taken when a1(?) == a5(?), and falls through when a1(?) != a5(?).
  The `beq` branch at 0x15ed668 targets 0x15edac0, is taken when a3(?) == a5(?), and falls through when a3(?) != a5(?).
  The `bne` branch at 0x15ed6b0 targets 0x15ed5e0, is taken when a0(?) != a5(?), and falls through when a0(?) == a5(?).
  The `beq` branch at 0x15ed778 targets 0x15ecb08, is taken when a6(=entry(0x172f7a0)) == 0, and falls through when a6(=entry(0x172f7a0)) != 0.
  The `beq` branch at 0x15ed7a8 targets 0x15ecb08 and is always taken.
  The `bne` branch at 0x15ed7bc targets 0x15ec9c0, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x15ed7f8 targets 0x15edb64, is taken when a1(?) >= 0x4 (signed), and falls through when a1(?) < 0x4 (signed).
  The `beq` branch at 0x15ed828 targets 0x15ec9c0 and is always taken.
  The `beq` branch at 0x15ed830 targets 0x15eca04 and is always taken.
  The `beq` branch at 0x15ed838 targets 0x15eca10 and is always taken.
  The `bne` branch at 0x15ed84c targets 0x15ecb08, is taken when t0(?) < a0(?) (signed), and falls through when t0(?) >= a0(?) (signed).
  The `beq` branch at 0x15ed888 targets 0x15ede0c, is taken when a3(?) >= 0x4 (signed), and falls through when a3(?) < 0x4 (signed).
  The `beq` branch at 0x15ed8b8 targets 0x15ecb08 and is always taken.
  The `beq` branch at 0x15ed914 targets 0x15eced4 and is always taken.
  The `beq` branch at 0x15ed970 targets 0x15eced4 and is always taken.
  The `beq` branch at 0x15ed9c4 targets 0x15ed190 and is always taken.
  The `beq` branch at 0x15eda10 targets 0x15ed190 and is always taken.
  The `beq` branch at 0x15eda68 targets 0x15ed448 and is always taken.
  The `beq` branch at 0x15edab8 targets 0x15ed448 and is always taken.
  The `beq` branch at 0x15edb10 targets 0x15ed700 and is always taken.
  The `beq` branch at 0x15edb5c targets 0x15ed700 and is always taken.
  The `beq` branch at 0x15edb68 targets 0x15ee238, is taken when t0(=entry(0x172f790)) == 0, and falls through when t0(=entry(0x172f790)) != 0.
  The `blez` branch at 0x15edb98 targets 0x15eddc8, is taken when a7(?) <= 0 (signed), and falls through when a7(?) > 0 (signed).
  The `beq` branch at 0x15edbac targets 0x15edbd0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x15edbc8 targets 0x15edbb4, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x15edbd4 targets 0x15eddc8, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x15edbdc targets 0x15ee260, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x15edc80 targets 0x15ee154, is taken when a1(?) == a5(?), and falls through when a1(?) != a5(?).
  The `beq` branch at 0x15edcc8 targets 0x15ee0fc, is taken when a3(?) == a5(?), and falls through when a3(?) != a5(?).
  The `bne` branch at 0x15edd10 targets 0x15edc40, is taken when a0(?) != a5(?), and falls through when a0(?) == a5(?).
  The `beq` branch at 0x15eddd4 targets 0x15ec9c0, is taken when a6(=entry(0x172f7a0)) == 0, and falls through when a6(=entry(0x172f7a0)) != 0.
  The `beq` branch at 0x15ede04 targets 0x15ec9c0 and is always taken.
  The `beq` branch at 0x15ede10 targets 0x15ee248, is taken when a0(=entry(0x172f790)) == 0, and falls through when a0(=entry(0x172f790)) != 0.
  The `blez` branch at 0x15ede38 targets 0x15ee060, is taken when t1(?) <= 0 (signed), and falls through when t1(?) > 0 (signed).
  The `beq` branch at 0x15ede50 targets 0x15ede74, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x15ede6c targets 0x15ede58, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x15ede78 targets 0x15ee060, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x15ede80 targets 0x15ee3a0, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x15edf20 targets 0x15ee1f4, is taken when a1(?) == a5(?), and falls through when a1(?) != a5(?).
  The `beq` branch at 0x15edf68 targets 0x15ee1a0, is taken when a3(?) == a5(?), and falls through when a3(?) != a5(?).
  The `bne` branch at 0x15edfb0 targets 0x15edee0, is taken when a0(?) != a5(?), and falls through when a0(?) == a5(?).
  The `beq` branch at 0x15ee06c targets 0x15ecb08, is taken when a6(=entry(0x172f7a0)) == 0, and falls through when a6(=entry(0x172f7a0)) != 0.
  The `beq` branch at 0x15ee09c targets 0x15ecb08 and is always taken.
  The `beq` branch at 0x15ee0ac targets 0x15eccf4 and is always taken.
  The `beq` branch at 0x15ee0b8 targets 0x15ed274 and is always taken.
  The `beq` branch at 0x15ee0f4 targets 0x15ebd74 and is always taken.
  The `beq` branch at 0x15ee14c targets 0x15edd60 and is always taken.
  The `beq` branch at 0x15ee198 targets 0x15edd60 and is always taken.
  The `beq` branch at 0x15ee1ec targets 0x15edffc and is always taken.
  The `beq` branch at 0x15ee230 targets 0x15edffc and is always taken.
  The `beq` branch at 0x15ee240 targets 0x15edb94 and is always taken.
  The `beq` branch at 0x15ee24c targets 0x15ede38 and is always taken.
  The `beq` branch at 0x15ee258 targets 0x15ec6d8 and is always taken.
  The `beq` branch at 0x15ee2a0 targets 0x15eddc8, is taken when a0(?) == a2(?), and falls through when a0(?) != a2(?).
  The `beq` branch at 0x15ee2ac targets 0x15ee260 and is always taken.
  The `beq` branch at 0x15ee2f8 targets 0x15ecf50, is taken when a1(?) == a5(?), and falls through when a1(?) != a5(?).
  The `beq` branch at 0x15ee334 targets 0x15ee2b4 and is always taken.
  The `beq` branch at 0x15ee37c targets 0x15ed1f8, is taken when a0(?) == a2(?), and falls through when a0(?) != a2(?).
  The `beq` branch at 0x15ee398 targets 0x15ee33c and is always taken.
  The `beq` branch at 0x15ee3e0 targets 0x15ee060, is taken when a0(?) == t0(?), and falls through when a0(?) != t0(?).
  The `beq` branch at 0x15ee3ec targets 0x15ee3a0 and is always taken.
  The `beq` branch at 0x15ee434 targets 0x15ed4bc, is taken when a1(?) == a2(?), and falls through when a1(?) != a2(?).
  The `beq` branch at 0x15ee458 targets 0x15ee3f4 and is always taken.
  The `beq` branch at 0x15ee4a0 targets 0x15ed770, is taken when a0(?) == a2(?), and falls through when a0(?) != a2(?).
  The `beq` branch at 0x15ee4b4 targets 0x15ee460 and is always taken.
  The `beq` branch at 0x15ee4fc targets 0x15ec288, is taken when a0(?) == a7(?), and falls through when a0(?) != a7(?).
  The `beq` branch at 0x15ee528 targets 0x15ee4bc and is always taken.
  The `beq` branch at 0x15ee570 targets 0x15ec520, is taken when a0(?) == s1(?), and falls through when a0(?) != s1(?).
  The `beq` branch at 0x15ee59c targets 0x15ee530 and is always taken.
  The `beq` branch at 0x15ee5b0 targets 0x15ebf74 and is always taken.
  The `beq` branch at 0x15ee5c4 targets 0x15ebc2c and is always taken.
  The return at 0x15ee0ec has v0 = one of ([0x173f470] << 0x2), ?.
  The instructions from 0x15ebf0c to 0x15ebf0c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x15ee5a4 to 0x15ee5ac are not reached by any path from the entry, and their branches are not listed.

- `cfbLineSD` in `usr/lib/X11/dyDDX/odyssey.so` at 0x164e470 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/odyssey.so`.
  Range: 0x164e470-0x1652354 (16100 bytes).
  It occupies 16100 bytes.
  The `lw` at 0x164e494 loads 4 bytes from abs 0x173f440 (miZeroLineScreenIndex).
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x164e4b8, `lw` at 0x164e5ec.
  The `lw` at 0x164e4bc loads 4 bytes from [a0+16] +0x1b4.
  The `lw` at 0x164e4c8 loads 4 bytes from ([[a0+16]+436] + ([0x173f440] << 0x2)) +0x0.
  The `lw` at 0x164e4d0 loads 4 bytes from abs 0x173f470 (cfbGCPrivateIndex).
  The `lw` at 0x164e4d4 loads 4 bytes from a1 (arg1 at entry) +0x4c.
  The `lw` at 0x164e4e0 loads 4 bytes from ([a1+76] + ([0x173f470] << 0x2)) +0x0.
  The `lbu` at 0x164e4e4 loads 1 byte from a1 (arg1 at entry) +0x5.
  The `lw` at 0x164e4e8 loads 4 bytes from [([a1+76] + ([0x173f470] << 0x2))] +0x8.
  The `lw` at 0x164e4ec loads 4 bytes from [([a1+76] + ([0x173f470] << 0x2))] +0xc.
  The `lw` at 0x164e4f0 loads 4 bytes from [([a1+76] + ([0x173f470] << 0x2))] +0x10.
  The `lbu` at 0x164e4f4 loads 1 byte from [([a1+76] + ([0x173f470] << 0x2))] +0x0.
  The `lw` at 0x164e518 loads 4 bytes from abs 0x1732a80.
  The `lw` at 0x164e520 loads 4 bytes from a1 (arg1 at entry) +0x14.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x1c, including `lw` at 0x164e52c, `lw` at 0x16511d0.
  The `lw` at 0x164e538 loads 4 bytes from table(0x17293c4) +0x0.
  The `lw` at 0x164e5bc loads 4 bytes from [[([a1+76] + ([0x173f470] << 0x2))]+8] +0x8.
  The `lw` at 0x164e5c8 loads 4 bytes from [[[([a1+76] + ([0x173f470] << 0x2))]+8]+8] +0x4.
  The `lbu` at 0x164e5d4 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lw` at 0x164e5f4 loads 4 bytes from [a0+16] +0x74.
  2 such `lh` accesses load 2 bytes from a4 (arg4 at entry) +0x2, including `lh` at 0x164e5f8, `lh` at 0x1650814.
  2 such `lh` accesses load 2 bytes from a4 (arg4 at entry) +0x0, including `lh` at 0x164e5fc, `lh` at 0x16507e4.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0xa, including `lh` at 0x164e600, `lh` at 0x1650810.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x8, including `lh` at 0x164e604, `lh` at 0x16507d8.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x164e608, `lw` at 0x164e630, `lw` at 0x1651050.
  The `lhu` at 0x164e60c loads 2 bytes from a1 (arg1 at entry) +0xa.
  The `lhu` at 0x164e610 loads 2 bytes from a1 (arg1 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x10, including `lw` at 0x164e614, `lw` at 0x16507a4.
  The `lw` at 0x164e618 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lbu` at 0x164e624 loads 1 byte from [a1+12] +0x0.
  182 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x164e6a8, `lbu` at 0x164e6e4, `lbu` at 0x164e6ec.
  20 such `lh` accesses load 2 bytes from ?, including `lh` at 0x164ec78, `lh` at 0x164ec7c, `lh` at 0x164ee14.
  104 such `sb` accesses store 1 byte to ?, including `sb` at 0x164f618, `sb` at 0x164f6ac, `sb` at 0x164f6e4.
  The `lw` at 0x1651044 loads 4 bytes from abs 0x17339b8.
  The `lw` at 0x1651064 loads 4 bytes from table(0x1730ad0) +0x0.
  The `sw` at 0x16510ac stores 4 bytes to ?.
  The `bltz` branch at 0x164e4b0 targets 0x16510b0, is taken when a7(=[0x173f440]) < 0 (signed), and falls through when a7(=[0x173f440]) >= 0 (signed).
  The `beq` branch at 0x164e510 targets 0x16511d0, is taken when a1(=0x3) == a3(=[a1+5]:1), and falls through when a1(=0x3) != a3(=[a1+5]:1).
  The `beq` branch at 0x164e530 targets 0x164e544, is taken when a3(=[a1+5]:1) >= 0x10 (unsigned), and falls through when a3(=[a1+5]:1) < 0x10 (unsigned).
  The `beq` branch at 0x164e580 targets 0x16511c8, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x164e58c targets 0x16519b4, is taken when a5(=-0x1) == t2(?), and falls through when a5(=-0x1) != t2(?).
  The `beq` branch at 0x164e5c0 targets 0x16510b8, is taken when a3(=[[[([a1+76] + ([0x173f470] << 0x2))]+8]+8]) == 0, and falls through when a3(=[[[([a1+76] + ([0x173f470] << 0x2))]+8]+8]) != 0.
  The `beq` branch at 0x164e5dc targets 0x16510c4, is taken when a3(=0x1) == a4(=[a0]:1), and falls through when a3(=0x1) != a4(=[a0]:1).
  The `beq` branch at 0x164e64c targets 0x164e668, is taken when s6(=[a1+8]:2) >= a6(=[[a1+12]]:1) (signed), and falls through when s6(=[a1+8]:2) < a6(=[[a1+12]]:1) (signed).
  The `beq` branch at 0x164e658 targets 0x1650850, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x164e660 targets 0x164e98c and is always taken.
  The `blez` branch at 0x164e67c targets 0x16519bc, is taken when t0(=[a1+10]:2) <= 0 (signed), and falls through when t0(=[a1+10]:2) > 0 (signed).
  The `beq` branch at 0x164e6a0 targets 0x164e6c0, is taken when (ra(=[a1+10]:2) & 0x7) == 0, and falls through when (ra(=[a1+10]:2) & 0x7) != 0.
  The `bne` branch at 0x164e6b8 targets 0x164e6a8, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x164e6c4 targets 0x164e8fc, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x164e6cc targets 0x1651ba8, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x164e780 targets 0x1651150, is taken when t1(?) == a5(=([a1+10]:2 + [a1+12])-16), and falls through when t1(?) != a5(=([a1+10]:2 + [a1+12])-16).
  The `beq` branch at 0x164e7c8 targets 0x16510d8, is taken when t2(?) == a5(=([a1+10]:2 + [a1+12])-16), and falls through when t2(?) != a5(=([a1+10]:2 + [a1+12])-16).
  The `bne` branch at 0x164e814 targets 0x164e740, is taken when a6(?) != a5(=([a1+10]:2 + [a1+12])-16), and falls through when a6(?) == a5(=([a1+10]:2 + [a1+12])-16).
  The `bne` branch at 0x164e900 targets 0x164e930, is taken when s6(?) < a5(?) (signed), and falls through when s6(?) >= a5(?) (signed).
  The `bne` branch at 0x164e940 targets 0x164e980, is taken when s6(?) < a5(?) (signed), and falls through when s6(?) >= a5(?) (signed).
  The `beq` branch at 0x164e974 targets 0x164e950, is taken when s6(?) >= a5(?) (signed), and falls through when s6(?) < a5(?) (signed).
  The `beq` branch at 0x164e984 targets 0x1651958, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x164ea00 targets 0x164ec74 and is always taken.
  The `beq` branch at 0x164ea2c targets 0x1650780, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x164ea40 targets 0x164ea5c, is taken when (a6(=[a1+10]:2) & 0x7) == 0, and falls through when (a6(=[a1+10]:2) & 0x7) != 0.
  The `bne` branch at 0x164ea54 targets 0x164ea48, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x164ea60 targets 0x164ebd0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x164ea68 targets 0x16522d4, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x164eb00 targets 0x165056c, is taken when t0(?) == t1(=([a1+10]:2 + [a1+12])-16), and falls through when t0(?) != t1(=([a1+10]:2 + [a1+12])-16).
  The `bne` branch at 0x164eb48 targets 0x164eac0, is taken when t9(?) != t1(=([a1+10]:2 + [a1+12])-16), and falls through when t9(?) == t1(=([a1+10]:2 + [a1+12])-16).
  The `bne` branch at 0x164ebd4 targets 0x164ec04, is taken when s3(?) < t1(?) (signed), and falls through when s3(?) >= t1(?) (signed).
  The `bne` branch at 0x164ec14 targets 0x164ec4c, is taken when s3(?) < a3(?) (signed), and falls through when s3(?) >= a3(?) (signed).
  The `beq` branch at 0x164ec44 targets 0x164ec20, is taken when s3(?) >= a3(?) (signed), and falls through when s3(?) < a3(?) (signed).
  The `beq` branch at 0x164ec6c targets 0x16507a0, is taken when t1(?) == t3(=((a3-1 << 0x2) + a4)), and falls through when t1(?) != t3(=((a3-1 << 0x2) + a4)).
  The `beq` branch at 0x164ed6c targets 0x164f2ac, is taken when gp(?) == 0, and falls through when gp(?) != 0.
  The `beq` branch at 0x164edd4 targets 0x164ee10 and is always taken.
  The `beq` branch at 0x164ede8 targets 0x164eecc, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x164edf8 targets 0x164f2ec, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x164ee00 targets 0x164eef4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x164ee0c targets 0x164f2ac, is taken when gp(?) == s3(?), and falls through when gp(?) != s3(?).
  The `beq` branch at 0x164ee34 targets 0x164ee4c, is taken when s6(?) >= t8(?) (signed), and falls through when s6(?) < t8(?) (signed).
  The `beq` branch at 0x164ee3c targets 0x164ee7c, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x164ee44 targets 0x164ee60 and is always taken.
  The `beq` branch at 0x164ee58 targets 0x164ee9c, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x164ee64 targets 0x164ede0, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x164ee6c targets 0x164eeb4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x164ee74 targets 0x164edf0 and is always taken.
  The `bne` branch at 0x164ee8c targets 0x164eee4, is taken when s5(?) < s0(?) (signed), and falls through when s5(?) >= s0(?) (signed).
  The `beq` branch at 0x164ee94 targets 0x164eeac and is always taken.
  The `bne` branch at 0x164eea4 targets 0x164ee64, is taken when s5(?) < v1(?) (signed), and falls through when s5(?) >= v1(?) (signed).
  The `beq` branch at 0x164eeac targets 0x164ee64 and is always taken.
  The `bne` branch at 0x164eebc targets 0x164f020, is taken when s4(?) < s0(?) (signed), and falls through when s4(?) >= s0(?) (signed).
  The `beq` branch at 0x164eec4 targets 0x164eedc and is always taken.
  The `bne` branch at 0x164eed4 targets 0x164edf8, is taken when s4(?) < a1(?) (signed), and falls through when s4(?) >= a1(?) (signed).
  The `beq` branch at 0x164eedc targets 0x164edf4 and is always taken.
  The `beq` branch at 0x164eee4 targets 0x164f188, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x164eeec targets 0x164ee0c and is always taken.
  The `beq` branch at 0x164ef58 targets 0x164ef68, is taken when (a3(?) & a7(?)) == 0, and falls through when (a3(?) & a7(?)) != 0.
  The `beq` branch at 0x164ef60 targets 0x164ee0c and is always taken.
  The `beq` branch at 0x164ef68 targets 0x164f9f4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x164efd4 targets 0x164f1d0, is taken when (a3(?) & 0x8) == 0, and falls through when (a3(?) & 0x8) != 0.
  The `bne` branch at 0x164eff8 targets 0x164f034, is taken when v1(=0x7fff) < t2(?) (unsigned), and falls through when v1(=0x7fff) >= t2(?) (unsigned).
  The `beq` branch at 0x164f018 targets 0x164f064 and is always taken.
  The `bne` branch at 0x164f020 targets 0x164ee08, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x164f02c targets 0x164ef00 and is always taken.
  The `beq` branch at 0x164f08c targets 0x164f234, is taken when (a1(?) & 0x1) == 0, and falls through when (a1(?) & 0x1) != 0.
  The `beq` branch at 0x164f0d0 targets 0x164f24c, is taken when (t2(?) & 0x2) == 0, and falls through when (t2(?) & 0x2) != 0.
  The `beq` branch at 0x164f0fc targets 0x164f264, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x164f180 targets 0x164ef44 and is always taken.
  The `beq` branch at 0x164f1a4 targets 0x164f1b4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x164f1ac targets 0x164f1bc and is always taken.
  The `bne` branch at 0x164f1c0 targets 0x164ee08, is taken when (a7(?) & 0x8) != 0, and falls through when (a7(?) & 0x8) == 0.
  The `beq` branch at 0x164f1c8 targets 0x164ef04 and is always taken.
  The `beq` branch at 0x164f1e4 targets 0x1650504, is taken when (a3(?) & 0x2) == 0, and falls through when (a3(?) & 0x2) != 0.
  The `bne` branch at 0x164f208 targets 0x164f278, is taken when a1(=0x7fff) < t2(?) (unsigned), and falls through when a1(=0x7fff) >= t2(?) (unsigned).
  The `beq` branch at 0x164f22c targets 0x164f2a4 and is always taken.
  The `beq` branch at 0x164f244 targets 0x164f0a8 and is always taken.
  The `beq` branch at 0x164f25c targets 0x164f0e4 and is always taken.
  The `beq` branch at 0x164f270 targets 0x164f11c and is always taken.
  The `beq` branch at 0x164f2a4 targets 0x164f068 and is always taken.
  The `beq` branch at 0x164f2d0 targets 0x164ea10, is taken when s2(?) >= a5(?) (signed), and falls through when s2(?) < a5(?) (signed).
  The `beq` branch at 0x164f2e4 targets 0x164ec54 and is always taken.
  The `beq` branch at 0x164f378 targets 0x16506c0, is taken when t3(=0x3) == t8(=[[([a1+76] + ([0x173f470] << 0x2))]]:1), and falls through when t3(=0x3) != t8(=[[([a1+76] + ([0x173f470] << 0x2))]]:1).
  The `beq` branch at 0x164f380 targets 0x1652340 and is always taken.
  The `beq` branch at 0x164f390 targets 0x164f574, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x164f398 targets 0x164f3c8, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x164f3c0 targets 0x164f3a0, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x164f3c8 targets 0x164f574, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x164f3d0 targets 0x1651e48, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x164f4b0 targets 0x164f7d0, is taken when a4(?) == t1(?), and falls through when a4(?) != t1(?).
  The `bne` branch at 0x164f528 targets 0x164f440, is taken when a4(?) != t1(?), and falls through when a4(?) == t1(?).
  The `beq` branch at 0x164f574 targets 0x164f7ac, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x164f5c8 targets 0x164f7ec, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x164f5d0 targets 0x164f390, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x164f5d8 targets 0x164f574, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x164f5e0 targets 0x164f620, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x164f628 targets 0x164f7a4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x164f630 targets 0x1651de0, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x164f6f8 targets 0x164f9d8, is taken when s0(?) == t1(?), and falls through when s0(?) != t1(?).
  The `bne` branch at 0x164f758 targets 0x164f6a0, is taken when ra(?) != t1(?), and falls through when ra(?) == t1(?).
  The `bne` branch at 0x164f7a4 targets 0x164f57c, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The `beq` branch at 0x164f7ac targets 0x16505e4, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x164f7c8 targets 0x164ec54 and is always taken.
  The `beq` branch at 0x164f7e4 targets 0x164f548 and is always taken.
  The `bne` branch at 0x164f7ec targets 0x164f574, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x164f7fc targets 0x164f83c, is taken when (t1(?) & 0x1) == 0, and falls through when (t1(?) & 0x1) != 0.
  The `beq` branch at 0x164f83c targets 0x164f574, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x164f844 targets 0x1651ec4, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x164f908 targets 0x164f9bc, is taken when s0(?) == t1(?), and falls through when s0(?) != t1(?).
  The `bne` branch at 0x164f968 targets 0x164f8b0, is taken when ra(?) != t1(?), and falls through when ra(?) == t1(?).
  The `beq` branch at 0x164f9b4 targets 0x164f574 and is always taken.
  The `beq` branch at 0x164f9d0 targets 0x164f990 and is always taken.
  The `beq` branch at 0x164f9ec targets 0x164f780 and is always taken.
  The `beq` branch at 0x164fa34 targets 0x16505c8, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x164fa50 targets 0x1650670, is taken when a0(=one of 0x0, 0x1) == 0, and falls through when a0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x164fa74 targets 0x164fa84, is taken when t3(?) >= s0(?) (signed), and falls through when t3(?) < s0(?) (signed).
  The `beq` branch at 0x164fa7c targets 0x164fd2c and is always taken.
  The `beq` branch at 0x164faac targets 0x16508b8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x164fab8 targets 0x164fad0, is taken when (a3(=[a1+10]:2) & 0x7) == 0, and falls through when (a3(=[a1+10]:2) & 0x7) != 0.
  The `bne` branch at 0x164fac8 targets 0x164fabc, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x164fad4 targets 0x164fc9c, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x164fadc targets 0x1651f30, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x164fb80 targets 0x1650600, is taken when t0(?) == t1(=([a1+10]:2 + [a1+12])-16), and falls through when t0(?) != t1(=([a1+10]:2 + [a1+12])-16).
  The `bne` branch at 0x164fbc8 targets 0x164fb40, is taken when t9(?) != t1(=([a1+10]:2 + [a1+12])-16), and falls through when t9(?) == t1(=([a1+10]:2 + [a1+12])-16).
  The `bne` branch at 0x164fca0 targets 0x164fcd0, is taken when t0(?) < t1(?) (signed), and falls through when t0(?) >= t1(?) (signed).
  The `bne` branch at 0x164fcdc targets 0x164fd1c, is taken when t0(?) < a7(?) (signed), and falls through when t0(?) >= a7(?) (signed).
  The `beq` branch at 0x164fd14 targets 0x164fcf0, is taken when t0(?) >= a7(?) (signed), and falls through when t0(?) < a7(?) (signed).
  The `beq` branch at 0x164fd2c targets 0x16505d0, is taken when v0(=one of 0x0, 0x1) == 0, and falls through when v0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x164fd64 targets 0x1650284, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x164fd70 targets 0x1650684, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x164fd8c targets 0x165068c, is taken when a6(=one of 0x0, 0x1) == 0, and falls through when a6(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x164fe20 targets 0x1650790, is taken when a3(=0x3) == v0(=[[([a1+76] + ([0x173f470] << 0x2))]]:1), and falls through when a3(=0x3) != v0(=[[([a1+76] + ([0x173f470] << 0x2))]]:1).
  The `beq` branch at 0x164fe28 targets 0x1652330 and is always taken.
  The `beq` branch at 0x164fe30 targets 0x1650034, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x164fe38 targets 0x164fe70, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x164fe68 targets 0x164fe40, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x164fe74 targets 0x1650034, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x164fe7c targets 0x16521e0, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0x164ff60 targets 0x1650290, is taken when t1(?) == a4(?), and falls through when t1(?) != a4(?).
  The `bne` branch at 0x164ffd8 targets 0x164fef0, is taken when t1(?) != a4(?), and falls through when t1(?) == a4(?).
  The `beq` branch at 0x1650034 targets 0x1650284, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x1650080 targets 0x16502bc, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x1650088 targets 0x164fe30, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x1650090 targets 0x1650034, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0x1650098 targets 0x16500e0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x16500e8 targets 0x165027c, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x16500f0 targets 0x1652170, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x16501c8 targets 0x16504e4, is taken when t1(?) == s0(?), and falls through when t1(?) != s0(?).
  The `bne` branch at 0x1650228 targets 0x1650170, is taken when t1(?) != ra(?), and falls through when t1(?) == ra(?).
  The `bne` branch at 0x165027c targets 0x165003c, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x1650284 targets 0x164ee0c and is always taken.
  The `beq` branch at 0x16502b4 targets 0x1650008 and is always taken.
  The `bne` branch at 0x16502bc targets 0x1650034, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0x16502cc targets 0x1650314, is taken when (t1(?) & 0x1) == 0, and falls through when (t1(?) & 0x1) != 0.
  The `beq` branch at 0x1650318 targets 0x1650034, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x1650320 targets 0x1652264, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x1650408 targets 0x16504b8, is taken when t1(?) == s0(?), and falls through when t1(?) != s0(?).
  The `bne` branch at 0x1650468 targets 0x16503b0, is taken when t1(?) != ra(?), and falls through when t1(?) == ra(?).
  The `beq` branch at 0x16504b0 targets 0x1650034 and is always taken.
  The `beq` branch at 0x16504dc targets 0x1650488 and is always taken.
  The `beq` branch at 0x16504fc targets 0x1650254 and is always taken.
  The `beq` branch at 0x1650518 targets 0x16506e0, is taken when (a3(?) & 0x4) == 0, and falls through when (a3(?) & 0x4) != 0.
  The `bne` branch at 0x1650548 targets 0x165058c, is taken when a1(=0x7fff) < t2(?) (unsigned), and falls through when a1(=0x7fff) >= t2(?) (unsigned).
  The `beq` branch at 0x1650564 targets 0x16505c0 and is always taken.
  The `beq` branch at 0x1650584 targets 0x164eb7c and is always taken.
  The `beq` branch at 0x16505c0 targets 0x164f06c and is always taken.
  The `bne` branch at 0x16505c8 targets 0x164fd34, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x16505dc targets 0x164fd44 and is always taken.
  The `beq` branch at 0x16505f8 targets 0x164f7c8 and is always taken.
  The `beq` branch at 0x1650668 targets 0x164fc34 and is always taken.
  The `beq` branch at 0x165067c targets 0x164fa64 and is always taken.
  The `beq` branch at 0x1650684 targets 0x164fdc0 and is always taken.
  The `beq` branch at 0x16506b8 targets 0x164fdbc and is always taken.
  The `bne` branch at 0x16506cc targets 0x164f380, is taken when a3(=0x3) != a4(?), and falls through when a3(=0x3) == a4(?).
  The `beq` branch at 0x16506d4 targets 0x165234c and is always taken.
  The `beq` branch at 0x16506f8 targets 0x164f068, is taken when (a3(?) & 0x1) == 0, and falls through when (a3(?) & 0x1) != 0.
  The `bne` branch at 0x1650720 targets 0x1650740, is taken when a1(=0x7fff) < t2(?) (unsigned), and falls through when a1(=0x7fff) >= t2(?) (unsigned).
  The `beq` branch at 0x1650738 targets 0x1650778 and is always taken.
  The `beq` branch at 0x1650778 targets 0x164f068 and is always taken.
  The `bgez` branch at 0x1650780 targets 0x164ebdc, is taken when s3(?) >= 0 (signed), and falls through when s3(?) < 0 (signed).
  The `beq` branch at 0x1650788 targets 0x164ec08 and is always taken.
  The `bne` branch at 0x1650790 targets 0x164fe28, is taken when a3(=0x3) != a5(?), and falls through when a3(=0x3) == a5(?).
  The `beq` branch at 0x1650798 targets 0x1652338 and is always taken.
  The `beq` branch at 0x16507b0 targets 0x1650884, is taken when (a6(?) & 0x3) == 0, and falls through when (a6(?) & 0x3) != 0.
  The `beq` branch at 0x16507bc targets 0x16507c8, is taken when (a7(?) & 0x1) == 0, and falls through when (a7(?) & 0x1) != 0.
  The `beq` branch at 0x16507c4 targets 0x1650884, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x16507f8 targets 0x1650834, is taken when t1(?) != t2(=([a4]:2 + [a0+8]:2)), and falls through when t1(?) == t2(=([a4]:2 + [a0+8]:2)).
  The `bne` branch at 0x1650820 targets 0x1650834, is taken when t2(?) != t3(=([a4+2]:2 + [a0+10]:2)), and falls through when t2(?) == t3(=([a4+2]:2 + [a0+10]:2)).
  The `bne` branch at 0x165082c targets 0x1650888, is taken when t3(?) != t8(=0x1), and falls through when t3(?) == t8(=0x1).
  The `beq` branch at 0x1650834 targets 0x1650888, is taken when gp(?) == 0, and falls through when gp(?) != 0.
  The `beq` branch at 0x1650848 targets 0x1650fc8 and is always taken.
  The `bgez` branch at 0x16508b8 targets 0x164fcac, is taken when t0(?) >= 0 (signed), and falls through when t0(?) < 0 (signed).
  The `beq` branch at 0x16508c0 targets 0x164fcd0 and is always taken.
  The `beq` branch at 0x16508d0 targets 0x1650ab8, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x16508d8 targets 0x1650904, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x16508fc targets 0x16508dc, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x1650908 targets 0x1650ab8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x1650910 targets 0x1651cd0, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x16509f0 targets 0x1650d44, is taken when t2(?) == t1(?), and falls through when t2(?) != t1(?).
  The `bne` branch at 0x1650a68 targets 0x1650980, is taken when t2(?) != t1(?), and falls through when t2(?) == t1(?).
  The `beq` branch at 0x1650ab8 targets 0x164f7a8, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x1650b08 targets 0x1650d64, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x1650b10 targets 0x16508d0, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x1650b18 targets 0x1650ab8, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x1650b24 targets 0x1650b5c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x1650b54 targets 0x1650b2c, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x1650b5c targets 0x1650ab8, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x1650b64 targets 0x1651c40, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x1650c90 targets 0x1650fa8, is taken when t3(?) == t1(?), and falls through when t3(?) != t1(?).
  The `bne` branch at 0x1650d18 targets 0x1650c10, is taken when t3(?) != t1(?), and falls through when t3(?) == t1(?).
  The `beq` branch at 0x1650d3c targets 0x1650ab8 and is always taken.
  The `beq` branch at 0x1650d5c targets 0x1650a8c and is always taken.
  The `bne` branch at 0x1650d64 targets 0x1650ab8, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x1650d6c targets 0x1650da4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x1650d9c targets 0x1650d74, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x1650da8 targets 0x1650ab8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x1650db0 targets 0x1651d48, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x1650ee0 targets 0x1650f94, is taken when t3(?) == t1(?), and falls through when t3(?) != t1(?).
  The `bne` branch at 0x1650f68 targets 0x1650e60, is taken when t3(?) != t1(?), and falls through when t3(?) == t1(?).
  The `beq` branch at 0x1650f8c targets 0x1650ab8 and is always taken.
  The `beq` branch at 0x1650fa0 targets 0x1650f80 and is always taken.
  The `beq` branch at 0x1650fb4 targets 0x1650d30 and is always taken.
  The `beq` branch at 0x1650fc0 targets 0x1650888, is taken when a2(?) == a4(?), and falls through when a2(?) != a4(?).
  The `bne` branch at 0x1650fd0 targets 0x1650fbc, is taken when s7(?) < a5(?) (signed), and falls through when s7(?) >= a5(?) (signed).
  The `bne` branch at 0x1650fe0 targets 0x1650fbc, is taken when s4(?) < a6(?) (signed), and falls through when s4(?) >= a6(?) (signed).
  The `beq` branch at 0x1650ff0 targets 0x1650fbc, is taken when s7(?) >= a7(?) (signed), and falls through when s7(?) < a7(?) (signed).
  The `beq` branch at 0x1651000 targets 0x1650fc0, is taken when s4(?) >= t0(?) (signed), and falls through when s4(?) < t0(?) (signed).
  The `beq` branch at 0x16510b0 targets 0x164e4d0 and is always taken.
  The `beq` branch at 0x16510bc targets 0x164e5d4 and is always taken.
  The `beq` branch at 0x16510d0 targets 0x164e5f8 and is always taken.
  The `beq` branch at 0x1651148 targets 0x164e890 and is always taken.
  The `beq` branch at 0x16511c0 targets 0x164e890 and is always taken.
  The `beq` branch at 0x16511c8 targets 0x164e5b0 and is always taken.
  The `beq` branch at 0x1651208 targets 0x164e5bc and is always taken.
  The `beq` branch at 0x1651210 targets 0x1651420, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x1651218 targets 0x1651254, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x165124c targets 0x1651220, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x1651254 targets 0x1651420, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x165125c targets 0x1652050, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0x1651350 targets 0x16516b8, is taken when t1(?) == t2(?), and falls through when t1(?) != t2(?).
  The `bne` branch at 0x16513c8 targets 0x16512e0, is taken when t1(?) != t2(?), and falls through when t1(?) == t2(?).
  The `beq` branch at 0x1651420 targets 0x1650284, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x1651464 targets 0x16516dc, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x165146c targets 0x1651210, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x1651474 targets 0x1651420, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0x1651480 targets 0x16514c4, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x16514bc targets 0x1651488, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x16514c4 targets 0x1651420, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x16514cc targets 0x1651fb4, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x1651600 targets 0x1651940, is taken when t1(?) == t3(?), and falls through when t1(?) != t3(?).
  The `bne` branch at 0x1651688 targets 0x1651580, is taken when t1(?) != t3(?), and falls through when t1(?) == t3(?).
  The `beq` branch at 0x16516b0 targets 0x1651420 and is always taken.
  The `beq` branch at 0x16516d4 targets 0x16513f0 and is always taken.
  The `bne` branch at 0x16516dc targets 0x1651420, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0x16516e4 targets 0x165172c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x1651720 targets 0x16516ec, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x165172c targets 0x1651420, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x1651734 targets 0x16520d4, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0x1651870 targets 0x1651928, is taken when t1(?) == t3(?), and falls through when t1(?) != t3(?).
  The `bne` branch at 0x16518f8 targets 0x16517f0, is taken when t1(?) != t3(?), and falls through when t1(?) == t3(?).
  The `beq` branch at 0x1651920 targets 0x1651420 and is always taken.
  The `beq` branch at 0x1651938 targets 0x1651914 and is always taken.
  The `beq` branch at 0x1651950 targets 0x16516a4 and is always taken.
  The `beq` branch at 0x1651964 targets 0x1650888, is taken when (a5(?) & 0x3) == 0, and falls through when (a5(?) & 0x3) != 0.
  The `beq` branch at 0x1651970 targets 0x1651984, is taken when (s5(?) & 0x1) == 0, and falls through when (s5(?) & 0x1) != 0.
  The `beq` branch at 0x165197c targets 0x1650884, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x16519b4 targets 0x164e5b0 and is always taken.
  The `bltz` branch at 0x16519bc targets 0x164e934, is taken when s6(?) < 0 (signed), and falls through when s6(?) >= 0 (signed).
  The `beq` branch at 0x16519c4 targets 0x164e904 and is always taken.
  The `beq` branch at 0x16519d0 targets 0x164e54c and is always taken.
  The `beq` branch at 0x16519dc targets 0x164e54c and is always taken.
  The `beq` branch at 0x1651a00 targets 0x164e54c and is always taken.
  The `beq` branch at 0x1651a24 targets 0x164e54c and is always taken.
  The `beq` branch at 0x1651a48 targets 0x164e54c and is always taken.
  The `beq` branch at 0x1651a6c targets 0x164e54c and is always taken.
  The `beq` branch at 0x1651a78 targets 0x164e54c and is always taken.
  The `beq` branch at 0x1651a9c targets 0x164e54c and is always taken.
  The `beq` branch at 0x1651ac0 targets 0x164e54c and is always taken.
  The `beq` branch at 0x1651ae4 targets 0x164e54c and is always taken.
  The `beq` branch at 0x1651b08 targets 0x164e54c and is always taken.
  The `beq` branch at 0x1651b14 targets 0x164e54c and is always taken.
  The `beq` branch at 0x1651b38 targets 0x164e54c and is always taken.
  The `beq` branch at 0x1651b5c targets 0x164e54c and is always taken.
  The `beq` branch at 0x1651b80 targets 0x164e54c and is always taken.
  The `beq` branch at 0x1651ba0 targets 0x164e54c and is always taken.
  The `bne` branch at 0x1651c10 targets 0x1651bcc, is taken when t0(?) != a7(=([a1+10]:2 + [a1+12])), and falls through when t0(?) == a7(=([a1+10]:2 + [a1+12])).
  The `beq` branch at 0x1651c38 targets 0x164e8fc and is always taken.
  The `beq` branch at 0x1651cc8 targets 0x1650ab8 and is always taken.
  The `beq` branch at 0x1651d40 targets 0x1650ab8 and is always taken.
  The `beq` branch at 0x1651dd8 targets 0x1650ab8 and is always taken.
  The `beq` branch at 0x1651e40 targets 0x164f7a4 and is always taken.
  The `beq` branch at 0x1651ebc targets 0x164f574 and is always taken.
  The `beq` branch at 0x1651f28 targets 0x164f574 and is always taken.
  The `bne` branch at 0x1651f8c targets 0x1651f48, is taken when a7(?) != t8(=([a1+10]:2 + [a1+12])), and falls through when a7(?) == t8(=([a1+10]:2 + [a1+12])).
  The `beq` branch at 0x1651fac targets 0x164fc9c and is always taken.
  The `beq` branch at 0x1652048 targets 0x1651420 and is always taken.
  The `beq` branch at 0x16520cc targets 0x1651420 and is always taken.
  The `beq` branch at 0x1652168 targets 0x1651420 and is always taken.
  The `beq` branch at 0x16521d8 targets 0x165027c and is always taken.
  The `beq` branch at 0x165225c targets 0x1650034 and is always taken.
  The `beq` branch at 0x16522cc targets 0x1650034 and is always taken.
  The `bne` branch at 0x165231c targets 0x16522d8, is taken when a5(?) != t8(=([a1+10]:2 + [a1+12])), and falls through when a5(?) == t8(=([a1+10]:2 + [a1+12])).
  The `beq` branch at 0x1652324 targets 0x164ebd0 and is always taken.
  The `beq` branch at 0x1652330 targets 0x165006c and is always taken.
  The `beq` branch at 0x1652338 targets 0x1651458 and is always taken.
  The `beq` branch at 0x1652344 targets 0x164f5c0 and is always taken.
  The `beq` branch at 0x165234c targets 0x1650afc and is always taken.
  The return at 0x165087c has v0 = ?.
  The return at 0x16508b0 has v0 = ?.
  The return at 0x16510a8 has v0 = ?.
  The return at 0x16519ac has v0 = ?.
  The instructions from 0x164ea08 to 0x164ea0c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x164eddc to 0x164eddc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x164f388 to 0x164f38c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x165028c to 0x165028c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x16506dc to 0x16506dc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x16508c8 to 0x16508cc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x165232c to 0x165232c are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x164e53c uses the jump table at 0x17293c4 with targets 0x16519cc, 0x1651b88, 0x1651b64, 0x1651b40, 0x1651b1c, 0x1651b10, 0x1651aec, 0x1651ac8, 0x1651aa4, 0x1651a80, 0x1651a74, 0x1651a50, 0x1651a2c, 0x1651a08, 0x16519e4, 0x16519d8.
  The indirect jump at 0x164e53c uses the jump table at 0x17293c4 with targets 0x16519cc, 0x1651b88, 0x1651b64, 0x1651b40, 0x1651b1c, 0x1651b10, 0x1651aec, 0x1651ac8, 0x1651aa4, 0x1651a80, 0x1651a74, 0x1651a50, 0x1651a2c, 0x1651a08, 0x16519e4, 0x16519d8.

- `mfbSegmentSS` in `usr/lib/X11/dyDDX/odyssey.so` at 0x16572b0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/odyssey.so`.
  Range: 0x16572b0-0x1659f84 (11476 bytes).
  It occupies 11476 bytes.
  The `lw` at 0x16572e4 loads 4 bytes from abs 0x173f440 (miZeroLineScreenIndex).
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x16572fc, `lw` at 0x1658fdc.
  The `lw` at 0x1657300 loads 4 bytes from [a0+16] +0x1b4.
  The `lw` at 0x165730c loads 4 bytes from ([[a0+16]+436] + ([0x173f440] << 0x2)) +0x0.
  The `lw` at 0x1657318 loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `lw` at 0x1657328 loads 4 bytes from abs 0x173f52c (mfbGCPrivateIndex).
  The `lw` at 0x165732c loads 4 bytes from a1 (arg1 at entry) +0x4c.
  The `lw` at 0x1657338 loads 4 bytes from ([a1+76] + ([0x173f52c] << 0x2)) +0x0.
  The `lw` at 0x165733c loads 4 bytes from [([a1+76] + ([0x173f52c] << 0x2))] +0x8.
  The `lw` at 0x1657340 loads 4 bytes from [[([a1+76] + ([0x173f52c] << 0x2))]+8] +0x8.
  The `lbu` at 0x1657344 loads 1 byte from [([a1+76] + ([0x173f52c] << 0x2))] +0x0.
  The `lw` at 0x1657350 loads 4 bytes from [[[([a1+76] + ([0x173f52c] << 0x2))]+8]+8] +0x4.
  The `lbu` at 0x165735c loads 1 byte from a0 (arg0 at entry) +0x0.
  116 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1657368, `lw` at 0x1657378, `lw` at 0x1657c00.
  The `lh` at 0x165736c loads 2 bytes from a0 (arg0 at entry) +0x8.
  The `lh` at 0x1657370 loads 2 bytes from a0 (arg0 at entry) +0xa.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x10, including `lw` at 0x16573f0, `lw` at 0x16574cc, `lw` at 0x165757c.
  55 such `lw` accesses load 4 bytes from abs 0x17339b8, including `lw` at 0x1657400, `lw` at 0x16574b0, `lw` at 0x1657ed8.
  10 such `lw` accesses load 4 bytes from table(0x1730b70) +0x0, including `lw` at 0x1657424, `lw` at 0x1657d6c, `lw` at 0x1657df4.
  34 such `lh` accesses load 2 bytes from ?, including `lh` at 0x1657468, `lh` at 0x165746c, `lh` at 0x1657470.
  4 such `lw` accesses load 4 bytes from table(0x1730bf0) +0x0, including `lw` at 0x1657bfc, `lw` at 0x1658d6c, `lw` at 0x1658d94.
  181 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1657c0c, `sw` at 0x1657c1c, `sw` at 0x1657c2c.
  The `lw` at 0x16580c8 loads 4 bytes from table(0x172fa28) +0x0.
  26 such `lw` accesses load 4 bytes from abs 0x1730b70 (mask), including `lw` at 0x1658438, `lw` at 0x1658474, `lw` at 0x16584b8.
  3 such `lw` accesses load 4 bytes from table(0x172f850) +0x0, including `lw` at 0x1658a28, `lw` at 0x1658c8c, `lw` at 0x1658d50.
  3 such `lw` accesses load 4 bytes from table(0x172fab0) +0x0, including `lw` at 0x1658b40, `lw` at 0x1658d00, `lw` at 0x1658dc8.
  26 such `lw` accesses load 4 bytes from abs 0x1730bec (mask+124), including `lw` at 0x1658eec, `lw` at 0x1658f24, `lw` at 0x1658f78.
  The `lw` at 0x1658fe4 loads 4 bytes from [a0+16] +0x74.
  The `bltz` branch at 0x16572f4 targets 0x1658fc8, is taken when a4(=[0x173f440]) < 0 (signed), and falls through when a4(=[0x173f440]) >= 0 (signed).
  The `beq` branch at 0x1657320 targets 0x1658538, is taken when (a1(=[a1+20]) & 0x1) == 0, and falls through when (a1(=[a1+20]) & 0x1) != 0.
  The `beq` branch at 0x1657348 targets 0x1658fd0, is taken when v1(=[[[([a1+76] + ([0x173f52c] << 0x2))]+8]+8]) == 0, and falls through when v1(=[[[([a1+76] + ([0x173f52c] << 0x2))]+8]+8]) != 0.
  The `beq` branch at 0x1657360 targets 0x1658fdc, is taken when a7(=[a0]:1) == 0, and falls through when a7(=[a0]:1) != 0.
  The `blez` branch at 0x1657388 targets 0x1658538, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `beq` branch at 0x16573b4 targets 0x1659f78 and is always taken.
  The `beq` branch at 0x1657428 targets 0x1657454, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x1657434 targets 0x16583d0, is taken when v0(=[[([a1+76] + ([0x173f52c] << 0x2))]]:1) == 0, and falls through when v0(=[[([a1+76] + ([0x173f52c] << 0x2))]]:1) != 0.
  The `beq` branch at 0x1657444 targets 0x1658500, is taken when a0(=[[([a1+76] + ([0x173f52c] << 0x2))]]:1) == a1(=0xf), and falls through when a0(=[[([a1+76] + ([0x173f52c] << 0x2))]]:1) != a1(=0xf).
  The `beq` branch at 0x1657450 targets 0x16585a4, is taken when a2(=[[([a1+76] + ([0x173f52c] << 0x2))]]:1) == a5(=0xa), and falls through when a2(=[[([a1+76] + ([0x173f52c] << 0x2))]]:1) != a5(=0xa).
  The `beq` branch at 0x165745c targets 0x1658538, is taken when a6(?) == t0(=((a2 << 0x3) + a3)), and falls through when a6(?) != t0(=((a2 << 0x3) + a3)).
  The `bne` branch at 0x16574b4 targets 0x1657574, is taken when s4(?) != s7(?), and falls through when s4(?) == s7(?).
  The `beq` branch at 0x16574e0 targets 0x16574f8, is taken when gp(?) >= s5(?) (signed), and falls through when gp(?) < s5(?) (signed).
  The `beq` branch at 0x16574f0 targets 0x16574fc and is always taken.
  The `beq` branch at 0x1657500 targets 0x1657454, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `bne` branch at 0x1657514 targets 0x1657e20, is taken when s5(?) < a1(?) (signed), and falls through when s5(?) >= a1(?) (signed).
  The `beq` branch at 0x1657534 targets 0x1657454, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1657544 targets 0x1657530, is taken when s5(?) >= a1(?) (signed), and falls through when s5(?) < a1(?) (signed).
  The `beq` branch at 0x165754c targets 0x1657454, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x1657560 targets 0x1657454, is taken when t0(?) < a5(?) (signed), and falls through when t0(?) >= a5(?) (signed).
  The `beq` branch at 0x165756c targets 0x1659f60 and is always taken.
  The `bne` branch at 0x1657574 targets 0x1657634, is taken when gp(?) != s5(?), and falls through when gp(?) == s5(?).
  The `beq` branch at 0x1657590 targets 0x16575a8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x16575a0 targets 0x16575ac and is always taken.
  The `beq` branch at 0x16575ac targets 0x1657458, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `bne` branch at 0x16575c8 targets 0x165803c, is taken when s5(?) < a1(?) (signed), and falls through when s5(?) >= a1(?) (signed).
  The `beq` branch at 0x16575e4 targets 0x1657454, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x16575f4 targets 0x16575e0, is taken when s5(?) >= t8(?) (signed), and falls through when s5(?) < t8(?) (signed).
  The `beq` branch at 0x16575fc targets 0x1657454, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x1657614 targets 0x1657458, is taken when s5(?) < s3(?) (signed), and falls through when s5(?) >= s3(?) (signed).
  The `beq` branch at 0x165762c targets 0x1659f6c and is always taken.
  The `beq` branch at 0x16576dc targets 0x1657454, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `beq` branch at 0x1657740 targets 0x1657788 and is always taken.
  The `beq` branch at 0x1657754 targets 0x1657840, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x1657764 targets 0x16573c0, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x1657770 targets 0x1657868, is taken when (a0(?) & v1(?)) == 0, and falls through when (a0(?) & v1(?)) != 0.
  The `beq` branch at 0x1657780 targets 0x1657458, is taken when s8(?) == s6(?), and falls through when s8(?) != s6(?).
  The `beq` branch at 0x165779c targets 0x16577b8, is taken when s7(?) >= a2(?) (signed), and falls through when s7(?) < a2(?) (signed).
  The `beq` branch at 0x16577a4 targets 0x16577f4, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x16577b0 targets 0x16577d0 and is always taken.
  The `beq` branch at 0x16577c8 targets 0x1657810, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x16577dc targets 0x1657750, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x16577e4 targets 0x1657828, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x16577ec targets 0x165775c and is always taken.
  The `bne` branch at 0x1657800 targets 0x1657858, is taken when s5(?) < ra(?) (signed), and falls through when s5(?) >= ra(?) (signed).
  The `beq` branch at 0x1657808 targets 0x1657820 and is always taken.
  The `bne` branch at 0x1657818 targets 0x16577d8, is taken when s5(?) < t8(?) (signed), and falls through when s5(?) >= t8(?) (signed).
  The `beq` branch at 0x1657820 targets 0x16577d4 and is always taken.
  The `bne` branch at 0x1657830 targets 0x16579a8, is taken when gp(?) < ra(?) (signed), and falls through when gp(?) >= ra(?) (signed).
  The `beq` branch at 0x1657838 targets 0x1657850 and is always taken.
  The `bne` branch at 0x1657848 targets 0x1657764, is taken when gp(?) < ra(?) (signed), and falls through when gp(?) >= ra(?) (signed).
  The `beq` branch at 0x1657850 targets 0x1657760 and is always taken.
  The `beq` branch at 0x1657858 targets 0x1657ad0, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1657860 targets 0x165777c and is always taken.
  The `beq` branch at 0x16578c8 targets 0x16578d8, is taken when (v1(?) & a0(?)) == 0, and falls through when (v1(?) & a0(?)) != 0.
  The `beq` branch at 0x16578d0 targets 0x165777c and is always taken.
  The `beq` branch at 0x16578d8 targets 0x1657ef8, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x1657958 targets 0x1657b40, is taken when (v1(?) & 0x8) == 0, and falls through when (v1(?) & 0x8) != 0.
  The `bne` branch at 0x165797c targets 0x16579bc, is taken when v0(=0x7fff) < a4(?) (unsigned), and falls through when v0(=0x7fff) >= a4(?) (unsigned).
  The `beq` branch at 0x16579a0 targets 0x16579d4 and is always taken.
  The `bne` branch at 0x16579a8 targets 0x1657778, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x16579b4 targets 0x1657874 and is always taken.
  The `beq` branch at 0x16579fc targets 0x1657b14, is taken when (a3(?) & 0x1) == 0, and falls through when (a3(?) & 0x1) != 0.
  The `beq` branch at 0x1657a20 targets 0x1657ba8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1657a48 targets 0x1657b2c, is taken when (a3(?) & 0x10) == 0, and falls through when (a3(?) & 0x10) != 0.
  The `beq` branch at 0x1657ac8 targets 0x16578b8 and is always taken.
  The `beq` branch at 0x1657ae8 targets 0x1657af8, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x1657af0 targets 0x1657b00 and is always taken.
  The `bne` branch at 0x1657b04 targets 0x1657778, is taken when (a0(?) & 0x8) != 0, and falls through when (a0(?) & 0x8) == 0.
  The `beq` branch at 0x1657b0c targets 0x1657878 and is always taken.
  The `beq` branch at 0x1657b24 targets 0x1657a1c and is always taken.
  The `beq` branch at 0x1657b38 targets 0x1657a68 and is always taken.
  The `beq` branch at 0x1657b50 targets 0x165804c, is taken when (v1(?) & 0x2) == 0, and falls through when (v1(?) & 0x2) != 0.
  The `bne` branch at 0x1657b78 targets 0x1657e00, is taken when t8(=0x7fff) < a4(?) (unsigned), and falls through when t8(=0x7fff) >= a4(?) (unsigned).
  The `beq` branch at 0x1657ba0 targets 0x1657e18 and is always taken.
  The `beq` branch at 0x1657bb8 targets 0x1657a30 and is always taken.
  The `bltz` branch at 0x1657bf4 targets 0x1657c48, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `bne` branch at 0x1657c40 targets 0x1657c00, is taken when a5(?) != a0(?), and falls through when a5(?) == a0(?).
  The `beq` branch at 0x1657c68 targets 0x1658d94, is taken when a2(?) == t8(=0x3), and falls through when a2(?) != t8(=0x3).
  The `beq` branch at 0x1657c70 targets 0x1658d6c, is taken when a2(?) == t2(=0x2), and falls through when a2(?) != t2(=0x2).
  The `beq` branch at 0x1657c78 targets 0x1658dd8, is taken when a2(?) == t3(=0x1), and falls through when a2(?) != t3(=0x1).
  The `beq` branch at 0x1657c80 targets 0x1657454, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x1657c90 targets 0x1657454, is taken when t0(?) < t8(?) (signed), and falls through when t0(?) >= t8(?) (signed).
  The `bne` branch at 0x1657cb0 targets 0x1657c80, is taken when s7(?) < a1(?) (signed), and falls through when s7(?) >= a1(?) (signed).
  The `beq` branch at 0x1657cb8 targets 0x1657c80, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1657ce8 targets 0x1657c80, is taken when a5(?) == a0(?), and falls through when a5(?) != a0(?).
  The `beq` branch at 0x1657d18 targets 0x1657bc0, is taken when a1(=[[([a1+76] + ([0x173f52c] << 0x2))]]:1) == 0, and falls through when a1(=[[([a1+76] + ([0x173f52c] << 0x2))]]:1) != 0.
  The `beq` branch at 0x1657d24 targets 0x16582fc, is taken when a5(=[[([a1+76] + ([0x173f52c] << 0x2))]]:1) == t2(=0xf), and falls through when a5(=[[([a1+76] + ([0x173f52c] << 0x2))]]:1) != t2(=0xf).
  The `bne` branch at 0x1657d2c targets 0x1657c80, is taken when t3(=[[([a1+76] + ([0x173f52c] << 0x2))]]:1) != t8(=0xa), and falls through when t3(=[[([a1+76] + ([0x173f52c] << 0x2))]]:1) == t8(=0xa).
  The `bltz` branch at 0x1657d64 targets 0x1657db8, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `bne` branch at 0x1657db0 targets 0x1657d70, is taken when a5(?) != a0(?), and falls through when a5(?) == a0(?).
  The `beq` branch at 0x1657dd8 targets 0x1658dfc, is taken when a2(?) == t8(=0x3), and falls through when a2(?) != t8(=0x3).
  The `beq` branch at 0x1657de0 targets 0x1658ab4, is taken when a2(?) == t2(=0x2), and falls through when a2(?) != t2(=0x2).
  The `bne` branch at 0x1657de8 targets 0x1657c80, is taken when a2(?) != t3(=0x1), and falls through when a2(?) == t3(=0x1).
  The `beq` branch at 0x1657df0 targets 0x1658acc and is always taken.
  The `beq` branch at 0x1657e18 targets 0x16579d8 and is always taken.
  The `bne` branch at 0x1657e20 targets 0x1657454, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x1657e28 targets 0x1657568 and is always taken.
  The `beq` branch at 0x1657e34 targets 0x1658b2c, is taken when a5(=[[([a1+76] + ([0x173f52c] << 0x2))]]:1) == 0, and falls through when a5(=[[([a1+76] + ([0x173f52c] << 0x2))]]:1) != 0.
  The `beq` branch at 0x1657e3c targets 0x1658ce8, is taken when a6(=[[([a1+76] + ([0x173f52c] << 0x2))]]:1) == t0(=0xf), and falls through when a6(=[[([a1+76] + ([0x173f52c] << 0x2))]]:1) != t0(=0xf).
  The `beq` branch at 0x1657e44 targets 0x1658db0, is taken when t1(=[[([a1+76] + ([0x173f52c] << 0x2))]]:1) == t2(=0xa), and falls through when t1(=[[([a1+76] + ([0x173f52c] << 0x2))]]:1) != t2(=0xa).
  The `beq` branch at 0x1657e54 targets 0x1657458, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `bne` branch at 0x1657e64 targets 0x1657454, is taken when t3(?) != s3(?), and falls through when t3(?) == s3(?).
  The `beq` branch at 0x1657e88 targets 0x1657e50, is taken when s7(?) >= a0(?) (signed), and falls through when s7(?) < a0(?) (signed).
  The `beq` branch at 0x1657e90 targets 0x1657454, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1657ea0 targets 0x1657e50, is taken when v1(?) == s4(?), and falls through when v1(?) != s4(?).
  The `beq` branch at 0x1657ee4 targets 0x16580b0, is taken when a2(?) >= 0x20 (signed), and falls through when a2(?) < 0x20 (signed).
  The `beq` branch at 0x1657ef0 targets 0x1657e30 and is always taken.
  The `beq` branch at 0x1657f50 targets 0x165856c, is taken when ra(=one of 0x0, 0x1) == 0, and falls through when ra(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1657f5c targets 0x1658584, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x1657f68 targets 0x1658034, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x1657f78 targets 0x1657fd0, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x1657fa0 targets 0x165874c, is taken when v0(=one of 0x0, 0x1) == 0, and falls through when v0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1658014 targets 0x16585d8, is taken when t8(=[[([a1+76] + ([0x173f52c] << 0x2))]]:1) == 0, and falls through when t8(=[[([a1+76] + ([0x173f52c] << 0x2))]]:1) != 0.
  The `beq` branch at 0x1658024 targets 0x1658780, is taken when a5(=[[([a1+76] + ([0x173f52c] << 0x2))]]:1) == t0(=0xf), and falls through when a5(=[[([a1+76] + ([0x173f52c] << 0x2))]]:1) != t0(=0xf).
  The `beq` branch at 0x165802c targets 0x16587fc, is taken when t3(=[[([a1+76] + ([0x173f52c] << 0x2))]]:1) == t8(=0xa), and falls through when t3(=[[([a1+76] + ([0x173f52c] << 0x2))]]:1) != t8(=0xa).
  The `beq` branch at 0x1658034 targets 0x1657780 and is always taken.
  The `bne` branch at 0x165803c targets 0x1657454, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x1658044 targets 0x165761c and is always taken.
  The `beq` branch at 0x1658064 targets 0x1658824, is taken when (v1(?) & 0x4) == 0, and falls through when (v1(?) & 0x4) != 0.
  The `bne` branch at 0x1658088 targets 0x16582d0, is taken when t8(=0x7fff) < a4(?) (unsigned), and falls through when t8(=0x7fff) >= a4(?) (unsigned).
  The `beq` branch at 0x16580a8 targets 0x16582f4 and is always taken.
  The `beq` branch at 0x16580d0 targets 0x16588fc, is taken when t9(=[[([a1+76] + ([0x173f52c] << 0x2))]]:1) == 0, and falls through when t9(=[[([a1+76] + ([0x173f52c] << 0x2))]]:1) != 0.
  The `beq` branch at 0x16580dc targets 0x1658b58, is taken when a2(=[[([a1+76] + ([0x173f52c] << 0x2))]]:1) == a5(=0xf), and falls through when a2(=[[([a1+76] + ([0x173f52c] << 0x2))]]:1) != a5(=0xf).
  The `bne` branch at 0x16580e4 targets 0x1657e50, is taken when a6(=[[([a1+76] + ([0x173f52c] << 0x2))]]:1) != t0(=0xa), and falls through when a6(=[[([a1+76] + ([0x173f52c] << 0x2))]]:1) == t0(=0xa).
  The `beq` branch at 0x16580f0 targets 0x165810c, is taken when v1(=entry(0x172fa28)) == 0, and falls through when v1(=entry(0x172fa28)) != 0.
  The `bltz` branch at 0x1658138 targets 0x1658280, is taken when a6(?) < 0 (signed), and falls through when a6(?) >= 0 (signed).
  The `bne` branch at 0x1658144 targets 0x1659f20, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x16581d0 targets 0x1659544, is taken when t0(?) == t1(?), and falls through when t0(?) != t1(?).
  The `beq` branch at 0x1658208 targets 0x1659520, is taken when a6(?) == t1(?), and falls through when a6(?) != t1(?).
  The `bne` branch at 0x1658240 targets 0x16581a0, is taken when t2(?) != t1(?), and falls through when t2(?) == t1(?).
  The `beq` branch at 0x16582a8 targets 0x1658d10, is taken when v1(?) == v0(=0x3), and falls through when v1(?) != v0(=0x3).
  The `beq` branch at 0x16582b0 targets 0x1658d20, is taken when v1(?) == a1(=0x2), and falls through when v1(?) != a1(=0x2).
  The `bne` branch at 0x16582b8 targets 0x1658d44, is taken when v1(?) != a2(=0x1), and falls through when v1(?) == a2(=0x1).
  The `beq` branch at 0x16582c0 targets 0x1658d34 and is always taken.
  The `beq` branch at 0x16582f4 targets 0x16579d8 and is always taken.
  The `bltz` branch at 0x165832c targets 0x1658388, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `bne` branch at 0x1658380 targets 0x1658340, is taken when a5(?) != a0(?), and falls through when a5(?) == a0(?).
  The `beq` branch at 0x16583a8 targets 0x1658de0, is taken when a2(?) == t8(=0x3), and falls through when a2(?) != t8(=0x3).
  The `beq` branch at 0x16583b0 targets 0x1658880, is taken when a2(?) == t2(=0x2), and falls through when a2(?) != t2(=0x2).
  The `bne` branch at 0x16583b8 targets 0x1657c80, is taken when a2(?) != t3(=0x1), and falls through when a2(?) == t3(=0x1).
  The `beq` branch at 0x16583c0 targets 0x1658898 and is always taken.
  The `beq` branch at 0x16583d4 targets 0x1658e18, is taken when t8(=one of 0x0, 0x1) == 0, and falls through when t8(=one of 0x0, 0x1) != 0.
  The `blez` branch at 0x16583f0 targets 0x1658ea8, is taken when t9(=one of -0x1, 0x1) <= 0 (signed), and falls through when t9(=one of -0x1, 0x1) > 0 (signed).
  The `bne` branch at 0x16583f8 targets 0x1657454, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x1658400 targets 0x1658450, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bltz` branch at 0x1658424 targets 0x165844c, is taken when v1(?) < 0 (signed), and falls through when v1(?) >= 0 (signed).
  The `beq` branch at 0x165845c targets 0x16584f8, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bltz` branch at 0x1658490 targets 0x16584ac, is taken when v1(?) < 0 (signed), and falls through when v1(?) >= 0 (signed).
  The `bltz` branch at 0x16584c8 targets 0x16584e8, is taken when v1(?) < 0 (signed), and falls through when v1(?) >= 0 (signed).
  The `bne` branch at 0x16584f0 targets 0x1658470, is taken when ra(?) != t1(?), and falls through when ra(?) == t1(?).
  The `beq` branch at 0x16584f8 targets 0x1657458 and is always taken.
  The `beq` branch at 0x1658508 targets 0x1658fb8, is taken when ra(=one of 0x0, 0x1) == 0, and falls through when ra(=one of 0x0, 0x1) != 0.
  The `blez` branch at 0x165851c targets 0x1659068, is taken when v0(=one of -0x1, 0x1) <= 0 (signed), and falls through when v0(=one of -0x1, 0x1) > 0 (signed).
  The `bne` branch at 0x1658524 targets 0x1657458, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x1658530 targets 0x1658718 and is always taken.
  The `beq` branch at 0x165857c targets 0x1657f5c and is always taken.
  The `bne` branch at 0x1658594 targets 0x1657f64, is taken when (t2(?) & 0x3) != 0, and falls through when (t2(?) & 0x3) == 0.
  The `beq` branch at 0x165859c targets 0x1657f68 and is always taken.
  The `beq` branch at 0x16585b8 targets 0x165907c, is taken when t3(=one of 0x0, 0x1) == 0, and falls through when t3(=one of 0x0, 0x1) != 0.
  The `blez` branch at 0x16585c0 targets 0x1659310, is taken when t8(=one of -0x1, 0x1) <= 0 (signed), and falls through when t8(=one of -0x1, 0x1) > 0 (signed).
  The `bne` branch at 0x16585c8 targets 0x1657454, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x16585d0 targets 0x16587c8 and is always taken.
  The `beq` branch at 0x16585e0 targets 0x16592fc, is taken when t9(=one of 0x0, 0x1) == 0, and falls through when t9(=one of 0x0, 0x1) != 0.
  The `blez` branch at 0x16585fc targets 0x1659408, is taken when v0(=one of -0x1, 0x1) <= 0 (signed), and falls through when v0(=one of -0x1, 0x1) > 0 (signed).
  The `bne` branch at 0x1658604 targets 0x1658034, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x165860c targets 0x1658658, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bltz` branch at 0x1658628 targets 0x1658654, is taken when v1(?) < 0 (signed), and falls through when v1(?) >= 0 (signed).
  The `beq` branch at 0x165865c targets 0x1658034, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bltz` branch at 0x165868c targets 0x16586ac, is taken when v1(?) < 0 (signed), and falls through when v1(?) >= 0 (signed).
  The `bltz` branch at 0x16586d4 targets 0x16586f0, is taken when v1(?) < 0 (signed), and falls through when v1(?) >= 0 (signed).
  The `bne` branch at 0x16586f0 targets 0x1658670, is taken when t1(?) != ra(?), and falls through when t1(?) == ra(?).
  The `beq` branch at 0x16586f8 targets 0x1658034 and is always taken.
  The `beq` branch at 0x1658710 targets 0x1658744, is taken when ra(?) == t1(?), and falls through when ra(?) != t1(?).
  The `bgez` branch at 0x1658734 targets 0x1658700, is taken when v1(?) >= 0 (signed), and falls through when v1(?) < 0 (signed).
  The `beq` branch at 0x165873c targets 0x1658710 and is always taken.
  The `beq` branch at 0x1658744 targets 0x1657458 and is always taken.
  The `beq` branch at 0x1658778 targets 0x1657fd0 and is always taken.
  The `beq` branch at 0x165878c targets 0x1659510, is taken when t8(=one of 0x0, 0x1) == 0, and falls through when t8(=one of 0x0, 0x1) != 0.
  The `blez` branch at 0x1658798 targets 0x16595dc, is taken when t9(=one of -0x1, 0x1) <= 0 (signed), and falls through when t9(=one of -0x1, 0x1) > 0 (signed).
  The `bne` branch at 0x16587a0 targets 0x1658034, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x16587a8 targets 0x16588c8 and is always taken.
  The `beq` branch at 0x16587c0 targets 0x16587f4, is taken when ra(?) == t1(?), and falls through when ra(?) != t1(?).
  The `bgez` branch at 0x16587e4 targets 0x16587b0, is taken when v1(?) >= 0 (signed), and falls through when v1(?) < 0 (signed).
  The `beq` branch at 0x16587ec targets 0x16587c0 and is always taken.
  The `beq` branch at 0x16587f4 targets 0x1657458 and is always taken.
  The `beq` branch at 0x1658800 targets 0x16595f4, is taken when a0(=one of 0x0, 0x1) == 0, and falls through when a0(=one of 0x0, 0x1) != 0.
  The `blez` branch at 0x165880c targets 0x1659860, is taken when a1(=one of -0x1, 0x1) <= 0 (signed), and falls through when a1(=one of -0x1, 0x1) > 0 (signed).
  The `bne` branch at 0x1658814 targets 0x1658034, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x165881c targets 0x1658af8 and is always taken.
  The `beq` branch at 0x165883c targets 0x16579d8, is taken when (v1(?) & 0x1) == 0, and falls through when (v1(?) & 0x1) != 0.
  The `bne` branch at 0x1658864 targets 0x1658a7c, is taken when v0(=0x7fff) < a4(?) (unsigned), and falls through when v0(=0x7fff) >= a4(?) (unsigned).
  The `beq` branch at 0x1658878 targets 0x1658aac and is always taken.
  The `beq` branch at 0x16588a0 targets 0x1657c80 and is always taken.
  The `beq` branch at 0x16588c0 targets 0x1658034, is taken when t1(?) == t0(?), and falls through when t1(?) != t0(?).
  The `bgez` branch at 0x16588ec targets 0x16588b0, is taken when v1(?) >= 0 (signed), and falls through when v1(?) < 0 (signed).
  The `beq` branch at 0x16588f4 targets 0x16588c0 and is always taken.
  The `beq` branch at 0x1658904 targets 0x1658924, is taken when v1(=entry(0x172fa28)) == 0, and falls through when v1(=entry(0x172fa28)) != 0.
  The `bltz` branch at 0x1658964 targets 0x1658a00, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `beq` branch at 0x1658980 targets 0x165899c, is taken when (a2(?) & 0x1) == 0, and falls through when (a2(?) & 0x1) != 0.
  The `beq` branch at 0x16589a0 targets 0x1658a00, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x16589a8 targets 0x1659ed4, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x16589e0 targets 0x16589c0, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x1658a2c targets 0x1658a4c, is taken when v1(?) == t3(=0x3), and falls through when v1(?) != t3(=0x3).
  The `beq` branch at 0x1658a34 targets 0x1658a54, is taken when v1(?) == a1(=0x2), and falls through when v1(?) != a1(=0x2).
  The `bne` branch at 0x1658a3c targets 0x1658a64, is taken when v1(?) != a2(=0x1), and falls through when v1(?) == a2(=0x1).
  The `beq` branch at 0x1658a44 targets 0x1658a60 and is always taken.
  The `beq` branch at 0x1658a64 targets 0x1657e50, is taken when a0(=entry(0x172f850)) == 0, and falls through when a0(=entry(0x172f850)) != 0.
  The `beq` branch at 0x1658a74 targets 0x1657e50 and is always taken.
  The `beq` branch at 0x1658aac targets 0x16579dc and is always taken.
  The `beq` branch at 0x1658ad4 targets 0x1657c80 and is always taken.
  The `beq` branch at 0x1658af0 targets 0x1658034, is taken when t1(?) == t0(?), and falls through when t1(?) != t0(?).
  The `bgez` branch at 0x1658b1c targets 0x1658ae0, is taken when v1(?) >= 0 (signed), and falls through when v1(?) < 0 (signed).
  The `beq` branch at 0x1658b24 targets 0x1658af0 and is always taken.
  The `beq` branch at 0x1658b50 targets 0x1657e50 and is always taken.
  The `beq` branch at 0x1658b60 targets 0x1658b7c, is taken when v1(=entry(0x172fa28)) == 0, and falls through when v1(=entry(0x172fa28)) != 0.
  The `bltz` branch at 0x1658bc0 targets 0x1658c60, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `beq` branch at 0x1658be0 targets 0x1658c00, is taken when (a2(?) & 0x1) == 0, and falls through when (a2(?) & 0x1) != 0.
  The `beq` branch at 0x1658c00 targets 0x1658c60, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x1658c08 targets 0x1659efc, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x1658c40 targets 0x1658c20, is taken when v1(?) != a0(?), and falls through when v1(?) == a0(?).
  The `beq` branch at 0x1658c90 targets 0x1658cb0, is taken when v1(?) == v0(=0x3), and falls through when v1(?) != v0(=0x3).
  The `beq` branch at 0x1658c98 targets 0x1658cc0, is taken when v1(?) == a1(=0x2), and falls through when v1(?) != a1(=0x2).
  The `bne` branch at 0x1658ca0 targets 0x1658cd0, is taken when v1(?) != a2(=0x1), and falls through when v1(?) == a2(=0x1).
  The `beq` branch at 0x1658ca8 targets 0x1658ccc and is always taken.
  The `beq` branch at 0x1658cd0 targets 0x1657e50, is taken when a0(=entry(0x172f850)) == 0, and falls through when a0(=entry(0x172f850)) != 0.
  The `beq` branch at 0x1658ce0 targets 0x1657e50 and is always taken.
  The `beq` branch at 0x1658d08 targets 0x1657e50 and is always taken.
  The `beq` branch at 0x1658d54 targets 0x1657e50, is taken when a0(=entry(0x172f850)) == 0, and falls through when a0(=entry(0x172f850)) != 0.
  The `beq` branch at 0x1658d64 targets 0x1657e50 and is always taken.
  The `beq` branch at 0x1658d8c targets 0x1657c80 and is always taken.
  The `beq` branch at 0x1658da8 targets 0x1658d74 and is always taken.
  The `beq` branch at 0x1658dd0 targets 0x1657e50 and is always taken.
  The `beq` branch at 0x1658dd8 targets 0x1658d84 and is always taken.
  The `beq` branch at 0x1658df4 targets 0x1658888 and is always taken.
  The `beq` branch at 0x1658e10 targets 0x1658abc and is always taken.
  The `blez` branch at 0x1658e1c targets 0x16598c0, is taken when t8(=one of -0x1, 0x1) <= 0 (signed), and falls through when t8(=one of -0x1, 0x1) > 0 (signed).
  The `beq` branch at 0x1658e24 targets 0x1658e60 and is always taken.
  The `beq` branch at 0x1658e70 targets 0x1658ea0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgez` branch at 0x1658e78 targets 0x1658e30, is taken when v1(?) >= 0 (signed), and falls through when v1(?) < 0 (signed).
  The `bne` branch at 0x1658e80 targets 0x1658e60, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x1658e98 targets 0x1658e5c and is always taken.
  The `beq` branch at 0x1658ea0 targets 0x1657454 and is always taken.
  The `bne` branch at 0x1658ea8 targets 0x1657454, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x1658eb0 targets 0x1658f04, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bltz` branch at 0x1658ed8 targets 0x1658f00, is taken when v1(?) < 0 (signed), and falls through when v1(?) >= 0 (signed).
  The `beq` branch at 0x1658f08 targets 0x1658fb0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bltz` branch at 0x1658f34 targets 0x1658f54, is taken when v1(?) < 0 (signed), and falls through when v1(?) >= 0 (signed).
  The `bltz` branch at 0x1658f84 targets 0x1658fa4, is taken when v1(?) < 0 (signed), and falls through when v1(?) >= 0 (signed).
  The `bne` branch at 0x1658fa8 targets 0x1658f10, is taken when a0(?) != t1(?), and falls through when a0(?) == t1(?).
  The `beq` branch at 0x1658fb0 targets 0x1657458 and is always taken.
  The `blez` branch at 0x1658fb8 targets 0x1659940, is taken when t3(=one of -0x1, 0x1) <= 0 (signed), and falls through when t3(=one of -0x1, 0x1) > 0 (signed).
  The `beq` branch at 0x1658fc0 targets 0x1659024 and is always taken.
  The `beq` branch at 0x1658fc8 targets 0x1657314 and is always taken.
  The `beq` branch at 0x1658fd4 targets 0x165735c and is always taken.
  The `beq` branch at 0x1658fe0 targets 0x1657368 and is always taken.
  The `beq` branch at 0x1659030 targets 0x1659060, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgez` branch at 0x1659038 targets 0x1658ff0, is taken when v1(?) >= 0 (signed), and falls through when v1(?) < 0 (signed).
  The `bne` branch at 0x1659040 targets 0x1659024, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x1659058 targets 0x1659020 and is always taken.
  The `beq` branch at 0x1659060 targets 0x1657454 and is always taken.
  The `bne` branch at 0x1659068 targets 0x1657458, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x1659074 targets 0x16592c0 and is always taken.
  The `blez` branch at 0x165908c targets 0x16599bc, is taken when t0(=one of -0x1, 0x1) <= 0 (signed), and falls through when t0(=one of -0x1, 0x1) > 0 (signed).
  The `bne` branch at 0x1659094 targets 0x1657454, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x16590a0 targets 0x16590ec, is taken when (t1(?) & 0x1) == 0, and falls through when (t1(?) & 0x1) != 0.
  The `beq` branch at 0x16590f4 targets 0x1659288, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1659204 targets 0x1659288, is taken when ra(?) == t1(?), and falls through when ra(?) != t1(?).
  The `bne` branch at 0x1659280 targets 0x1659190, is taken when ra(?) != t1(?), and falls through when ra(?) == t1(?).
  The `beq` branch at 0x1659294 targets 0x1657454 and is always taken.
  The `beq` branch at 0x16592b4 targets 0x16592f4, is taken when a0(?) == t1(?), and falls through when a0(?) != t1(?).
  The `bgez` branch at 0x16592e4 targets 0x16592a0, is taken when v1(?) >= 0 (signed), and falls through when v1(?) < 0 (signed).
  The `beq` branch at 0x16592ec targets 0x16592b4 and is always taken.
  The `beq` branch at 0x16592f4 targets 0x1657458 and is always taken.
  The `blez` branch at 0x1659300 targets 0x1659bcc, is taken when t0(=one of -0x1, 0x1) <= 0 (signed), and falls through when t0(=one of -0x1, 0x1) > 0 (signed).
  The `beq` branch at 0x1659308 targets 0x16593c0 and is always taken.
  The `bne` branch at 0x1659310 targets 0x1657458, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x165931c targets 0x1659354 and is always taken.
  The `beq` branch at 0x1659348 targets 0x1659384, is taken when a0(?) == t1(?), and falls through when a0(?) != t1(?).
  The `bgez` branch at 0x1659374 targets 0x1659330, is taken when v1(?) >= 0 (signed), and falls through when v1(?) < 0 (signed).
  The `beq` branch at 0x165937c targets 0x1659348 and is always taken.
  The `beq` branch at 0x1659384 targets 0x1657458 and is always taken.
  The `beq` branch at 0x16593d0 targets 0x1659400, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgez` branch at 0x16593d8 targets 0x1659390, is taken when v1(?) >= 0 (signed), and falls through when v1(?) < 0 (signed).
  The `bne` branch at 0x16593e0 targets 0x16593c0, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x16593f8 targets 0x16593bc and is always taken.
  The `beq` branch at 0x1659400 targets 0x1658034 and is always taken.
  The `bne` branch at 0x1659408 targets 0x1658034, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x1659410 targets 0x1659460, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bltz` branch at 0x165942c targets 0x1659458, is taken when v1(?) < 0 (signed), and falls through when v1(?) >= 0 (signed).
  The `beq` branch at 0x1659460 targets 0x1658034, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bltz` branch at 0x1659494 targets 0x16594b4, is taken when v1(?) < 0 (signed), and falls through when v1(?) >= 0 (signed).
  The `bltz` branch at 0x16594dc targets 0x16594fc, is taken when v1(?) < 0 (signed), and falls through when v1(?) >= 0 (signed).
  The `bne` branch at 0x1659500 targets 0x1659470, is taken when t1(?) != a0(?), and falls through when t1(?) == a0(?).
  The `beq` branch at 0x1659508 targets 0x1658034 and is always taken.
  The `blez` branch at 0x1659510 targets 0x1659c4c, is taken when v0(=one of -0x1, 0x1) <= 0 (signed), and falls through when v0(=one of -0x1, 0x1) > 0 (signed).
  The `beq` branch at 0x1659518 targets 0x16595a0 and is always taken.
  The `beq` branch at 0x165953c targets 0x1658268 and is always taken.
  The `beq` branch at 0x1659560 targets 0x1658268 and is always taken.
  The `beq` branch at 0x16595ac targets 0x16595ec, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgez` branch at 0x16595b4 targets 0x1659570, is taken when v1(?) >= 0 (signed), and falls through when v1(?) < 0 (signed).
  The `bne` branch at 0x16595bc targets 0x16595a0, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x16595d4 targets 0x165959c and is always taken.
  The `bne` branch at 0x16595dc targets 0x1658034, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x16595e4 targets 0x1659830 and is always taken.
  The `beq` branch at 0x16595ec targets 0x1658034 and is always taken.
  The `blez` branch at 0x1659600 targets 0x1659cc8, is taken when t3(=one of -0x1, 0x1) <= 0 (signed), and falls through when t3(=one of -0x1, 0x1) > 0 (signed).
  The `bne` branch at 0x1659608 targets 0x1658034, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x1659610 targets 0x1659658, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x1659660 targets 0x16597f8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1659774 targets 0x16597f8, is taken when t1(?) == ra(?), and falls through when t1(?) != ra(?).
  The `bne` branch at 0x16597f0 targets 0x1659700, is taken when t1(?) != ra(?), and falls through when t1(?) == ra(?).
  The `beq` branch at 0x1659804 targets 0x1658034 and is always taken.
  The `beq` branch at 0x1659824 targets 0x1658034, is taken when t1(?) == a0(?), and falls through when t1(?) != a0(?).
  The `bgez` branch at 0x1659850 targets 0x1659810, is taken when v1(?) >= 0 (signed), and falls through when v1(?) < 0 (signed).
  The `beq` branch at 0x1659858 targets 0x1659824 and is always taken.
  The `bne` branch at 0x1659860 targets 0x1658034, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x1659868 targets 0x1659890 and is always taken.
  The `beq` branch at 0x1659884 targets 0x1658034, is taken when t1(?) == a0(?), and falls through when t1(?) != a0(?).
  The `bgez` branch at 0x16598b0 targets 0x1659870, is taken when v1(?) >= 0 (signed), and falls through when v1(?) < 0 (signed).
  The `beq` branch at 0x16598b8 targets 0x1659884 and is always taken.
  The `beq` branch at 0x16598c0 targets 0x16598f8 and is always taken.
  The `beq` branch at 0x1659908 targets 0x1659938, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgez` branch at 0x1659910 targets 0x16598c8, is taken when v1(?) >= 0 (signed), and falls through when v1(?) < 0 (signed).
  The `bne` branch at 0x1659918 targets 0x16598f8, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x1659930 targets 0x16598f4 and is always taken.
  The `beq` branch at 0x1659938 targets 0x1657454 and is always taken.
  The `beq` branch at 0x1659940 targets 0x1659978 and is always taken.
  The `beq` branch at 0x1659984 targets 0x16599b4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgez` branch at 0x165998c targets 0x1659948, is taken when v1(?) >= 0 (signed), and falls through when v1(?) < 0 (signed).
  The `bne` branch at 0x1659994 targets 0x1659978, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x16599ac targets 0x1659974 and is always taken.
  The `beq` branch at 0x16599b4 targets 0x1657454 and is always taken.
  The `bne` branch at 0x16599bc targets 0x1657458, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x16599c8 targets 0x1659a20, is taken when (t1(?) & 0x1) == 0, and falls through when (t1(?) & 0x1) != 0.
  The `beq` branch at 0x1659a28 targets 0x1659bb8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1659b34 targets 0x1659bb8, is taken when ra(?) == t1(?), and falls through when ra(?) != t1(?).
  The `bne` branch at 0x1659bb0 targets 0x1659ac0, is taken when ra(?) != t1(?), and falls through when ra(?) == t1(?).
  The `beq` branch at 0x1659bc4 targets 0x1657454 and is always taken.
  The `beq` branch at 0x1659bcc targets 0x1659c04 and is always taken.
  The `beq` branch at 0x1659c14 targets 0x1659c44, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgez` branch at 0x1659c1c targets 0x1659bd4, is taken when v1(?) >= 0 (signed), and falls through when v1(?) < 0 (signed).
  The `bne` branch at 0x1659c24 targets 0x1659c04, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x1659c3c targets 0x1659c00 and is always taken.
  The `beq` branch at 0x1659c44 targets 0x1658034 and is always taken.
  The `beq` branch at 0x1659c4c targets 0x1659c84 and is always taken.
  The `beq` branch at 0x1659c90 targets 0x1659cc0, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgez` branch at 0x1659c98 targets 0x1659c54, is taken when v1(?) >= 0 (signed), and falls through when v1(?) < 0 (signed).
  The `bne` branch at 0x1659ca0 targets 0x1659c84, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x1659cb8 targets 0x1659c80 and is always taken.
  The `beq` branch at 0x1659cc0 targets 0x1658034 and is always taken.
  The `bne` branch at 0x1659cc8 targets 0x1658034, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x1659cd0 targets 0x1659d24, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x1659d30 targets 0x1659ec0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1659e3c targets 0x1659ec0, is taken when t1(?) == ra(?), and falls through when t1(?) != ra(?).
  The `bne` branch at 0x1659eb8 targets 0x1659dc8, is taken when t1(?) != ra(?), and falls through when t1(?) == ra(?).
  The `beq` branch at 0x1659ecc targets 0x1658034 and is always taken.
  The `beq` branch at 0x1659ef4 targets 0x1658a00 and is always taken.
  The `beq` branch at 0x1659f18 targets 0x1658c60 and is always taken.
  The `beq` branch at 0x1659f4c targets 0x1658280 and is always taken.
  The `beq` branch at 0x1659f64 targets 0x1657c9c and is always taken.
  The `beq` branch at 0x1659f70 targets 0x1657e70 and is always taken.
  The `beq` branch at 0x1659f7c targets 0x1657468 and is always taken.
  The return at 0x1658564 has v0 = one of 0xe3710, ?.
  The instructions from 0x16573bc to 0x16573bc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1657748 to 0x165774c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1657df8 to 0x1657dfc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x16582c8 to 0x16582cc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x16583c8 to 0x16583cc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x16588a8 to 0x16588ac are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1658adc to 0x1658adc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1658e2c to 0x1658e2c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1658fe8 to 0x1658fec are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x165929c to 0x165929c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1659324 to 0x165932c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x165938c to 0x165938c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1659568 to 0x165956c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x165980c to 0x165980c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1659f54 to 0x1659f5c are not reached by any path from the entry, and their branches are not listed.

- `cfbSegmentSS` in `usr/lib/X11/dyDDX/odyssey.so` at 0x1688bf0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/odyssey.so`.
  Range: 0x1688bf0-0x168ae50 (8800 bytes).
  It occupies 8800 bytes.
  The `lw` at 0x1688c18 loads 4 bytes from abs 0x173f440 (miZeroLineScreenIndex).
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x1688c30, `lw` at 0x1688c88.
  The `lw` at 0x1688c34 loads 4 bytes from [a0+16] +0x1b4.
  The `lw` at 0x1688c40 loads 4 bytes from ([[a0+16]+436] + ([0x173f440] << 0x2)) +0x0.
  The `lw` at 0x1688c48 loads 4 bytes from abs 0x173f470 (cfbGCPrivateIndex).
  The `lw` at 0x1688c4c loads 4 bytes from a1 (arg1 at entry) +0x4c.
  The `lw` at 0x1688c58 loads 4 bytes from ([a1+76] + ([0x173f470] << 0x2)) +0x0.
  The `lw` at 0x1688c5c loads 4 bytes from [([a1+76] + ([0x173f470] << 0x2))] +0x8.
  The `lw` at 0x1688c60 loads 4 bytes from [[([a1+76] + ([0x173f470] << 0x2))]+8] +0x8.
  The `lw` at 0x1688c6c loads 4 bytes from [[[([a1+76] + ([0x173f470] << 0x2))]+8]+8] +0x4.
  The `lbu` at 0x1688c78 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lw` at 0x1688c8c loads 4 bytes from [a0+16] +0x74.
  53 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1688c98, `lw` at 0x1688cc0, `lw` at 0x168990c.
  The `lbu` at 0x1688c9c loads 1 byte from [([a1+76] + ([0x173f470] << 0x2))] +0x0.
  The `lw` at 0x1688ca0 loads 4 bytes from [([a1+76] + ([0x173f470] << 0x2))] +0xc.
  The `lw` at 0x1688ca4 loads 4 bytes from [([a1+76] + ([0x173f470] << 0x2))] +0x10.
  The `lh` at 0x1688ca8 loads 2 bytes from a0 (arg0 at entry) +0x8.
  The `lh` at 0x1688cac loads 2 bytes from a0 (arg0 at entry) +0xa.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x10, including `lw` at 0x1688d34, `lw` at 0x1688fe4, `lw` at 0x1689088.
  28 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x1688dd4, `lbu` at 0x1688e68, `lbu` at 0x1688ea4.
  93 such `sb` accesses store 1 byte to ?, including `sb` at 0x1688dfc, `sb` at 0x1688e8c, `sb` at 0x1688ec4.
  33 such `lh` accesses load 2 bytes from ?, including `lh` at 0x1688f94, `lh` at 0x1688f98, `lh` at 0x1688f9c.
  The `lw` at 0x16898fc loads 4 bytes from table(0x172f7c0) +0x0.
  The `lw` at 0x1689900 loads 4 bytes from table(0x172f7b0) +0x0.
  76 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1689928, `sw` at 0x1689a14, `sw` at 0x1689a70.
  The `lw` at 0x168999c loads 4 bytes from abs 0x17339b8.
  The `lw` at 0x16899bc loads 4 bytes from table(0x172f790) +0x0.
  The `lw` at 0x16899d0 loads 4 bytes from table(0x172f7a0) +0x0.
  The `bltz` branch at 0x1688c28 targets 0x168ab24, is taken when a7(=[0x173f440]) < 0 (signed), and falls through when a7(=[0x173f440]) >= 0 (signed).
  The `beq` branch at 0x1688c64 targets 0x168ab2c, is taken when a7(=[[[([a1+76] + ([0x173f470] << 0x2))]+8]+8]) == 0, and falls through when a7(=[[[([a1+76] + ([0x173f470] << 0x2))]+8]+8]) != 0.
  The `beq` branch at 0x1688c80 targets 0x168ab38, is taken when t1(=0x1) == t2(=[a0]:1), and falls through when t1(=0x1) != t2(=[a0]:1).
  The `blez` branch at 0x1688cd0 targets 0x168a45c, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `beq` branch at 0x1688d0c targets 0x168ae44 and is always taken.
  The `beq` branch at 0x1688d58 targets 0x1688f80, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x1688db8 targets 0x168a15c, is taken when a3(=[[([a1+76] + ([0x173f470] << 0x2))]]:1) == a4(=0x3), and falls through when a3(=[[([a1+76] + ([0x173f470] << 0x2))]]:1) != a4(=0x3).
  The `blez` branch at 0x1688dc0 targets 0x1688f80, is taken when ra(?) <= 0 (signed), and falls through when ra(?) > 0 (signed).
  The `beq` branch at 0x1688dc8 targets 0x1688e0c, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x1688e0c targets 0x1688f80, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x1688e14 targets 0x168ad0c, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The `beq` branch at 0x1688ed8 targets 0x1689ff4, is taken when s0(?) == t3(?), and falls through when s0(?) != t3(?).
  The `bne` branch at 0x1688f38 targets 0x1688e80, is taken when ra(?) != t3(?), and falls through when ra(?) == t3(?).
  The `beq` branch at 0x1688f88 targets 0x168a45c, is taken when a7(?) == t2(=((a2 << 0x3) + a3)), and falls through when a7(?) != t2(=((a2 << 0x3) + a3)).
  The `bne` branch at 0x1688fd8 targets 0x1689080, is taken when s6(?) != s5(?), and falls through when s6(?) == s5(?).
  The `beq` branch at 0x1688ff8 targets 0x1689010, is taken when s4(?) >= s3(?) (signed), and falls through when s4(?) < s3(?) (signed).
  The `beq` branch at 0x1689008 targets 0x1689014 and is always taken.
  The `beq` branch at 0x1689014 targets 0x1688f80, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `bne` branch at 0x1689028 targets 0x16898e8, is taken when s3(?) < a3(?) (signed), and falls through when s3(?) >= a3(?) (signed).
  The `beq` branch at 0x1689044 targets 0x1688f80, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x1689054 targets 0x1689040, is taken when s3(?) >= a3(?) (signed), and falls through when s3(?) < a3(?) (signed).
  The `beq` branch at 0x168905c targets 0x1688f80, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x1689070 targets 0x1688f80, is taken when ra(?) < a4(?) (signed), and falls through when ra(?) >= a4(?) (signed).
  The `beq` branch at 0x1689078 targets 0x168ae30 and is always taken.
  The `bne` branch at 0x1689080 targets 0x168914c, is taken when s4(?) != s3(?), and falls through when s4(?) == s3(?).
  The `beq` branch at 0x1689098 targets 0x16890b0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x16890a8 targets 0x16890b4 and is always taken.
  The `beq` branch at 0x16890b4 targets 0x1688f80, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `bne` branch at 0x16890cc targets 0x1689f78, is taken when s3(?) < a4(?) (signed), and falls through when s3(?) >= a4(?) (signed).
  The `beq` branch at 0x16890e4 targets 0x1688f80, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x16890f4 targets 0x16890e0, is taken when s3(?) >= t8(?) (signed), and falls through when s3(?) < t8(?) (signed).
  The `beq` branch at 0x16890fc targets 0x1688f84, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x1689118 targets 0x1688f84, is taken when s3(?) < s4(?) (signed), and falls through when s3(?) >= s4(?) (signed).
  The `beq` branch at 0x1689144 targets 0x168ae3c and is always taken.
  The `beq` branch at 0x16891ec targets 0x1688f80, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `beq` branch at 0x168924c targets 0x1689290 and is always taken.
  The `beq` branch at 0x1689268 targets 0x168934c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x1689278 targets 0x1688d20, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1689280 targets 0x1689374, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x168928c targets 0x1688f80, is taken when s7(?) == s2(?), and falls through when s7(?) != s2(?).
  The `beq` branch at 0x16892b4 targets 0x16892cc, is taken when s5(?) >= t8(?) (signed), and falls through when s5(?) < t8(?) (signed).
  The `beq` branch at 0x16892bc targets 0x16892fc, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x16892c4 targets 0x16892e0 and is always taken.
  The `beq` branch at 0x16892d8 targets 0x168931c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x16892e4 targets 0x1689260, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x16892ec targets 0x1689334, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x16892f4 targets 0x1689270 and is always taken.
  The `bne` branch at 0x168930c targets 0x1689364, is taken when s3(?) < s0(?) (signed), and falls through when s3(?) >= s0(?) (signed).
  The `beq` branch at 0x1689314 targets 0x168932c and is always taken.
  The `bne` branch at 0x1689324 targets 0x16892e4, is taken when s3(?) < t2(?) (signed), and falls through when s3(?) >= t2(?) (signed).
  The `beq` branch at 0x168932c targets 0x16892e4 and is always taken.
  The `bne` branch at 0x168933c targets 0x16894ac, is taken when s4(?) < s0(?) (signed), and falls through when s4(?) >= s0(?) (signed).
  The `beq` branch at 0x1689344 targets 0x168935c and is always taken.
  The `bne` branch at 0x1689354 targets 0x1689278, is taken when s4(?) < t9(?) (signed), and falls through when s4(?) >= t9(?) (signed).
  The `beq` branch at 0x168935c targets 0x1689274 and is always taken.
  The `beq` branch at 0x1689364 targets 0x16895e4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x168936c targets 0x168928c and is always taken.
  The `beq` branch at 0x16893d8 targets 0x16893e8, is taken when (a2(?) & a6(?)) == 0, and falls through when (a2(?) & a6(?)) != 0.
  The `beq` branch at 0x16893e0 targets 0x168928c and is always taken.
  The `beq` branch at 0x16893e8 targets 0x1689c64, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x1689464 targets 0x1689628, is taken when (a2(?) & 0x8) == 0, and falls through when (a2(?) & 0x8) != 0.
  The `bne` branch at 0x1689480 targets 0x16894c0, is taken when t1(=0x7fff) < s8(?) (unsigned), and falls through when t1(=0x7fff) >= s8(?) (unsigned).
  The `beq` branch at 0x16894a4 targets 0x16894e0 and is always taken.
  The `bne` branch at 0x16894ac targets 0x1689288, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x16894b8 targets 0x1689380 and is always taken.
  The `beq` branch at 0x16894fc targets 0x1689680, is taken when (t1(?) & 0x1) == 0, and falls through when (t1(?) & 0x1) != 0.
  The `beq` branch at 0x1689530 targets 0x1689698, is taken when (t1(?) & 0x2) == 0, and falls through when (t1(?) & 0x2) != 0.
  The `beq` branch at 0x1689560 targets 0x16896b0, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `beq` branch at 0x16895dc targets 0x16893c4 and is always taken.
  The `beq` branch at 0x16895fc targets 0x168960c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x1689604 targets 0x1689614 and is always taken.
  The `bne` branch at 0x1689618 targets 0x1689288, is taken when (a6(?) & 0x8) != 0, and falls through when (a6(?) & 0x8) == 0.
  The `beq` branch at 0x1689620 targets 0x1689384 and is always taken.
  The `beq` branch at 0x1689638 targets 0x1689f88, is taken when (a2(?) & 0x2) == 0, and falls through when (a2(?) & 0x2) != 0.
  The `bne` branch at 0x1689664 targets 0x16898b8, is taken when a1(=0x7fff) < s8(?) (unsigned), and falls through when a1(=0x7fff) >= s8(?) (unsigned).
  The `beq` branch at 0x1689678 targets 0x16898e0 and is always taken.
  The `beq` branch at 0x1689690 targets 0x1689514 and is always taken.
  The `beq` branch at 0x16896a8 targets 0x1689548 and is always taken.
  The `beq` branch at 0x16896bc targets 0x168957c and is always taken.
  The `blez` branch at 0x16896c4 targets 0x1689784, is taken when a7(?) <= 0 (signed), and falls through when a7(?) > 0 (signed).
  The `beq` branch at 0x16896dc targets 0x1689710, is taken when (a7(?) & 0x3) == 0, and falls through when (a7(?) & 0x3) != 0.
  The `bne` branch at 0x1689708 targets 0x16896e4, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x1689710 targets 0x1689784, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x168977c targets 0x1689720, is taken when a5(?) != a7(?), and falls through when a5(?) == a7(?).
  The `beq` branch at 0x1689784 targets 0x1688f84, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x1689794 targets 0x1688f80, is taken when ra(?) < a0(?) (signed), and falls through when ra(?) >= a0(?) (signed).
  The `bne` branch at 0x16897b4 targets 0x1689784, is taken when s5(?) < a7(?) (signed), and falls through when s5(?) >= a7(?) (signed).
  The `beq` branch at 0x16897bc targets 0x1689784, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x16897ec targets 0x1689784, is taken when t2(?) == a2(?), and falls through when t2(?) != a2(?).
  The `beq` branch at 0x16897f8 targets 0x168a02c, is taken when v0(=[[([a1+76] + ([0x173f470] << 0x2))]]:1) == v1(=0x3), and falls through when v0(=[[([a1+76] + ([0x173f470] << 0x2))]]:1) != v1(=0x3).
  The `bne` branch at 0x1689800 targets 0x16896c4, is taken when a0(=[[([a1+76] + ([0x173f470] << 0x2))]]:1) != a1(=0x6), and falls through when a0(=[[([a1+76] + ([0x173f470] << 0x2))]]:1) == a1(=0x6).
  The `blez` branch at 0x1689808 targets 0x1689784, is taken when a7(?) <= 0 (signed), and falls through when a7(?) > 0 (signed).
  The `beq` branch at 0x168982c targets 0x1689858, is taken when (a7(?) & 0x3) == 0, and falls through when (a7(?) & 0x3) != 0.
  The `bne` branch at 0x1689850 targets 0x1689834, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x1689858 targets 0x1689784, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x16898a8 targets 0x1689860, is taken when a5(?) != a7(?), and falls through when a5(?) == a7(?).
  The `beq` branch at 0x16898b0 targets 0x1689784 and is always taken.
  The `beq` branch at 0x16898e0 targets 0x16894e4 and is always taken.
  The `bne` branch at 0x16898e8 targets 0x1688f84, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x16898f4 targets 0x1689074 and is always taken.
  The `beq` branch at 0x1689934 targets 0x1688f84, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `bne` branch at 0x1689940 targets 0x1688f80, is taken when ra(?) != s4(?), and falls through when ra(?) == s4(?).
  The `beq` branch at 0x1689964 targets 0x1689930, is taken when s5(?) >= a7(?) (signed), and falls through when s5(?) < a7(?) (signed).
  The `beq` branch at 0x168996c targets 0x1688f80, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1689980 targets 0x1689930, is taken when a2(?) == t3(?), and falls through when a2(?) != t3(?).
  The `bne` branch at 0x16899b4 targets 0x16898fc, is taken when ra(?) < 0x4 (signed), and falls through when ra(?) >= 0x4 (signed).
  The `beq` branch at 0x16899e0 targets 0x168a864, is taken when v0(=[[([a1+76] + ([0x173f470] << 0x2))]]:1) == v1(=0x3), and falls through when v0(=[[([a1+76] + ([0x173f470] << 0x2))]]:1) != v1(=0x3).
  The `beq` branch at 0x16899e8 targets 0x1689a18, is taken when a2(=entry(0x172f790)) == 0, and falls through when a2(=entry(0x172f790)) != 0.
  The `beq` branch at 0x1689a30 targets 0x168a9a4, is taken when t9(=[[([a1+76] + ([0x173f470] << 0x2))]]:1) == ra(=0x6), and falls through when t9(=[[([a1+76] + ([0x173f470] << 0x2))]]:1) != ra(=0x6).
  The `beq` branch at 0x1689a38 targets 0x1689c38, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x1689a48 targets 0x1689a74, is taken when (a5(?) & 0x3) == 0, and falls through when (a5(?) & 0x3) != 0.
  The `bne` branch at 0x1689a6c targets 0x1689a50, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x1689a78 targets 0x1689c38, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x1689a80 targets 0x168ac20, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x1689b10 targets 0x168a7cc, is taken when t3(?) == a2(?), and falls through when t3(?) != a2(?).
  The `beq` branch at 0x1689b58 targets 0x168a79c, is taken when a1(?) == a2(?), and falls through when a1(?) != a2(?).
  The `bne` branch at 0x1689ba0 targets 0x1689ad0, is taken when a7(?) != a2(?), and falls through when a7(?) == a2(?).
  The `beq` branch at 0x1689c38 targets 0x1689930, is taken when s3(=entry(0x172f7a0)) == 0, and falls through when s3(=entry(0x172f7a0)) != 0.
  The `beq` branch at 0x1689c5c targets 0x1689930 and is always taken.
  The `beq` branch at 0x1689cc8 targets 0x168a424, is taken when a4(=one of 0x0, 0x1) == 0, and falls through when a4(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1689ce8 targets 0x168a43c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x1689cf4 targets 0x168928c, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x1689cfc targets 0x1689d48, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1689d18 targets 0x168a768, is taken when a1(=one of 0x0, 0x1) == 0, and falls through when a1(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x1689da0 targets 0x168a490, is taken when a3(=[[([a1+76] + ([0x173f470] << 0x2))]]:1) == a4(=0x3), and falls through when a3(=[[([a1+76] + ([0x173f470] << 0x2))]]:1) != a4(=0x3).
  The `blez` branch at 0x1689da8 targets 0x168928c, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0x1689db8 targets 0x1689df8, is taken when (s0(?) & 0x1) == 0, and falls through when (s0(?) & 0x1) != 0.
  The `beq` branch at 0x1689df8 targets 0x168928c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x1689e00 targets 0x168ade4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x1689ed8 targets 0x168a144, is taken when t3(?) == s0(?), and falls through when t3(?) != s0(?).
  The `bne` branch at 0x1689f38 targets 0x1689e80, is taken when t3(?) != ra(?), and falls through when t3(?) == ra(?).
  The `beq` branch at 0x1689f70 targets 0x168928c and is always taken.
  The `bne` branch at 0x1689f78 targets 0x1688f80, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x1689f80 targets 0x1689124 and is always taken.
  The `beq` branch at 0x1689f9c targets 0x168a80c, is taken when (a2(?) & 0x4) == 0, and falls through when (a2(?) & 0x4) != 0.
  The `bne` branch at 0x1689fc8 targets 0x168a008, is taken when a1(=0x7fff) < s8(?) (unsigned), and falls through when a1(=0x7fff) >= s8(?) (unsigned).
  The `beq` branch at 0x1689fec targets 0x168a024 and is always taken.
  The `beq` branch at 0x168a000 targets 0x1688f50 and is always taken.
  The `beq` branch at 0x168a024 targets 0x16894e4 and is always taken.
  The `blez` branch at 0x168a02c targets 0x1689784, is taken when a7(?) <= 0 (signed), and falls through when a7(?) > 0 (signed).
  The `beq` branch at 0x168a058 targets 0x168a07c, is taken when (a7(?) & 0x7) == 0, and falls through when (a7(?) & 0x7) != 0.
  The `bne` branch at 0x168a074 targets 0x168a060, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x168a07c targets 0x1689784, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x168a084 targets 0x168ab7c, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `bne` branch at 0x168a110 targets 0x168a0d0, is taken when v0(?) != t0(?), and falls through when v0(?) == t0(?).
  The `beq` branch at 0x168a13c targets 0x1689784 and is always taken.
  The `beq` branch at 0x168a154 targets 0x1689f4c and is always taken.
  The `bltz` branch at 0x168a190 targets 0x168a368, is taken when s0(?) < 0 (signed), and falls through when s0(?) >= 0 (signed).
  The `bne` branch at 0x168a198 targets 0x168ac7c, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x168a2c0 targets 0x168a7fc, is taken when t2(?) == t0(?), and falls through when t2(?) != t0(?).
  The `bne` branch at 0x168a348 targets 0x168a240, is taken when t2(?) != t0(?), and falls through when t2(?) == t0(?).
  The `beq` branch at 0x168a380 targets 0x168a3a0, is taken when a7(?) == gp(=0x4), and falls through when a7(?) != gp(=0x4).
  The `beq` branch at 0x168a388 targets 0x168a3d0, is taken when a7(?) == t3(=0x3), and falls through when a7(?) != t3(=0x3).
  The `bne` branch at 0x168a390 targets 0x168a41c, is taken when a7(?) != t8(=0x2), and falls through when a7(?) == t8(=0x2).
  The `beq` branch at 0x168a398 targets 0x168a3fc and is always taken.
  The `beq` branch at 0x168a41c targets 0x1688f80 and is always taken.
  The `beq` branch at 0x168a434 targets 0x1689cdc and is always taken.
  The `bne` branch at 0x168a44c targets 0x1689cf0, is taken when (t8(?) & 0x3) != 0, and falls through when (t8(?) & 0x3) == 0.
  The `beq` branch at 0x168a454 targets 0x1689cf4 and is always taken.
  The `bltz` branch at 0x168a4cc targets 0x168a6ac, is taken when t9(?) < 0 (signed), and falls through when t9(?) >= 0 (signed).
  The `bne` branch at 0x168a4d4 targets 0x168ad54, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x168a600 targets 0x168ab0c, is taken when t2(?) == t0(?), and falls through when t2(?) != t0(?).
  The `bne` branch at 0x168a688 targets 0x168a580, is taken when t2(?) != t0(?), and falls through when t2(?) == t0(?).
  The `beq` branch at 0x168a6c4 targets 0x168a6e4, is taken when t2(?) == gp(=0x4), and falls through when t2(?) != gp(=0x4).
  The `beq` branch at 0x168a6cc targets 0x168a714, is taken when t2(?) == t8(=0x3), and falls through when t2(?) != t8(=0x3).
  The `bne` branch at 0x168a6d4 targets 0x168a760, is taken when t2(?) != t9(=0x2), and falls through when t2(?) == t9(=0x2).
  The `beq` branch at 0x168a6dc targets 0x168a740 and is always taken.
  The `beq` branch at 0x168a760 targets 0x168928c and is always taken.
  The `beq` branch at 0x168a794 targets 0x1689d48 and is always taken.
  The `beq` branch at 0x168a7c4 targets 0x1689bcc and is always taken.
  The `beq` branch at 0x168a7f4 targets 0x1689bcc and is always taken.
  The `beq` branch at 0x168a804 targets 0x168a35c and is always taken.
  The `beq` branch at 0x168a824 targets 0x16894e4, is taken when (a2(?) & 0x1) == 0, and falls through when (a2(?) & 0x1) != 0.
  The `bne` branch at 0x168a848 targets 0x168a96c, is taken when a1(=0x7fff) < s8(?) (unsigned), and falls through when a1(=0x7fff) >= s8(?) (unsigned).
  The `beq` branch at 0x168a85c targets 0x168a99c and is always taken.
  The `beq` branch at 0x168a864 targets 0x168a888, is taken when a2(=entry(0x172f790)) == 0, and falls through when a2(=entry(0x172f790)) != 0.
  The `beq` branch at 0x168a888 targets 0x168a934, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x168a898 targets 0x168a8b4, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x168a8ac targets 0x168a8a0, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x168a8b8 targets 0x168a934, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x168a8c0 targets 0x168abc4, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `bne` branch at 0x168a910 targets 0x168a8f0, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x168a934 targets 0x1689930, is taken when s3(=entry(0x172f7a0)) == 0, and falls through when s3(=entry(0x172f7a0)) != 0.
  The `beq` branch at 0x168a964 targets 0x1689930 and is always taken.
  The `beq` branch at 0x168a99c targets 0x16894e4 and is always taken.
  The `beq` branch at 0x168a9a4 targets 0x1689c38, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x168a9b0 targets 0x168a9d4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x168a9cc targets 0x168a9b8, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x168a9e0 targets 0x168aafc, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x168a9e8 targets 0x168abe8, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x168aa50 targets 0x168ab60, is taken when t0(?) == t2(?), and falls through when t0(?) != t2(?).
  The `beq` branch at 0x168aa88 targets 0x168ab40, is taken when t3(?) == t2(?), and falls through when t3(?) != t2(?).
  The `bne` branch at 0x168aac0 targets 0x168aa20, is taken when a7(?) != t2(?), and falls through when a7(?) == t2(?).
  The `bne` branch at 0x168aafc targets 0x1689c40, is taken when s3(=entry(0x172f7a0)) != 0, and falls through when s3(=entry(0x172f7a0)) == 0.
  The `beq` branch at 0x168ab04 targets 0x1689934 and is always taken.
  The `beq` branch at 0x168ab1c targets 0x168a6a4 and is always taken.
  The `beq` branch at 0x168ab24 targets 0x1688c44 and is always taken.
  The `beq` branch at 0x168ab30 targets 0x1688c78 and is always taken.
  The `beq` branch at 0x168ab38 targets 0x1688c90 and is always taken.
  The `beq` branch at 0x168ab58 targets 0x168aae0 and is always taken.
  The `beq` branch at 0x168ab74 targets 0x168aae0 and is always taken.
  The `beq` branch at 0x168abbc targets 0x1689784 and is always taken.
  The `beq` branch at 0x168abe0 targets 0x168a934 and is always taken.
  The `beq` branch at 0x168ac18 targets 0x168aafc and is always taken.
  The `beq` branch at 0x168ac68 targets 0x1689c38, is taken when a7(?) == a6(?), and falls through when a7(?) != a6(?).
  The `beq` branch at 0x168ac74 targets 0x168ac20 and is always taken.
  The `beq` branch at 0x168ad04 targets 0x168a368 and is always taken.
  The `beq` branch at 0x168ad4c targets 0x1688f80 and is always taken.
  The `beq` branch at 0x168addc targets 0x168a6ac and is always taken.
  The `beq` branch at 0x168ae24 targets 0x168928c and is always taken.
  The `beq` branch at 0x168ae34 targets 0x16897a0 and is always taken.
  The `beq` branch at 0x168ae3c targets 0x168994c and is always taken.
  The `beq` branch at 0x168ae48 targets 0x1688f94 and is always taken.
  The return at 0x168a488 has v0 = one of 0xb1dd0, ?.
  The instructions from 0x1688d14 to 0x1688d1c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1689254 to 0x168925c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x168ae2c to 0x168ae2c are not reached by any path from the entry, and their branches are not listed.

- `mfbDoBitblt` in `usr/lib/X11/dyDDX/odyssey.so` at 0x16c4160 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/lib/X11/dyDDX/odyssey.so`.
  Range: 0x16c4160-0x16c64c8 (9064 bytes).
  It occupies 9064 bytes.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x0, including `lbu` at 0x16c4204, `lbu` at 0x16c4340.
  186 such `lw` accesses load 4 bytes from ?, including `lw` at 0x16c4214, `lw` at 0x16c421c, `lw` at 0x16c4234.
  2 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x0, including `lbu` at 0x16c4218, `lbu` at 0x16c4354.
  4 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0x16c4254, `lw` at 0x16c4284, `lw` at 0x16c4390.
  4 such `lw` accesses load 4 bytes from [a3+8] +0x4, including `lw` at 0x16c426c, `lw` at 0x16c4298, `lw` at 0x16c43a8.
  2 such `lh` accesses load 2 bytes from a4 (arg4 at entry) +0x2, including `lh` at 0x16c4288, `lh` at 0x16c4478.
  2 such `lh` accesses load 2 bytes from [a3+8] +0xa, including `lh` at 0x16c4294, `lh` at 0x16c4484.
  50 such `lh` accesses load 2 bytes from ?, including `lh` at 0x16c43e8, `lh` at 0x16c43ec, `lh` at 0x16c44a8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x16c4454, `lw` at 0x16c4688.
  2 such `lw` accesses load 4 bytes from [a0+16] +0x74, including `lw` at 0x16c445c, `lw` at 0x16c4690.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x10, including `lw` at 0x16c4460, `lw` at 0x16c4694.
  2 such `lw` accesses load 4 bytes from [a1+16] +0x74, including `lw` at 0x16c4468, `lw` at 0x16c469c.
  4 such `lh` accesses load 2 bytes from a3 (arg3 at entry) +0x0, including `lh` at 0x16c44f0, `lh` at 0x16c4580, `lh` at 0x16c46f8.
  4 such `lh` accesses load 2 bytes from a4 (arg4 at entry) +0x0, including `lh` at 0x16c44f4, `lh` at 0x16c4584, `lh` at 0x16c46fc.
  2 such `lh` accesses load 2 bytes from a3 (arg3 at entry) +0x2, including `lh` at 0x16c4570, `lh` at 0x16c4788.
  24 such `sh` accesses store 2 bytes to ?, including `sh` at 0x16c48b0, `sh` at 0x16c48b8, `sh` at 0x16c48c0.
  2 such `lw` accesses load 4 bytes from table(0x172fa28) +0x0, including `lw` at 0x16c4bb4, `lw` at 0x16c5910.
  2 such `lw` accesses load 4 bytes from table(0x172f850) +0x0, including `lw` at 0x16c4bbc, `lw` at 0x16c5914.
  108 such `sw` accesses store 4 bytes to ?, including `sw` at 0x16c4cfc, `sw` at 0x16c4d0c, `sw` at 0x16c4d1c.
  The `lw` at 0x16c4e88 loads 4 bytes from table(0x172a0b8) +0x0.
  The `lw` at 0x16c5120 loads 4 bytes from table(0x172a0d8) +0x0.
  2 such `lw` accesses load 4 bytes from table(0x172fab0) +0x0, including `lw` at 0x16c5274, `lw` at 0x16c5f5c.
  The `lw` at 0x16c5be4 loads 4 bytes from table(0x172a138) +0x0.
  The `lw` at 0x16c5e14 loads 4 bytes from table(0x172a158) +0x0.
  The `jalr` at 0x16c41dc calls mfbDoBitbltGeneral [0x15c99c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0xc, a6=0x7, a7=0x0.
  The `jalr` at 0x16c46a4 calls mfbDoBitbltCopy [0x1608520] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0x0, a7=0x0.
  The `jalr` at 0x16c46b8 calls mfbDoBitbltXor [0x15e6520] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0xc, a6=0x0, a7=0x0.
  Calls (unknown callee) via register with a0=0x1730000, a1=?, a2=?, a3=? (`jr` at 0x16c5518).
  Calls (unknown callee) via register with a0=?, a1=?, a2=0x1730000, a3=? (`jr` at 0x16c57a4).
  Calls (unknown callee) via register with a0=0x1730000, a1=?, a2=?, a3=? (`jr` at 0x16c61f8).
  Calls (unknown callee) via register with a0=?, a1=?, a2=0x1730000, a3=? (`jr` at 0x16c6438).
  The `beq` branch at 0x16c41b0 targets 0x16c46a0, is taken when a2 == at(=0x3), and falls through when a2 != at(=0x3).
  The `beq` branch at 0x16c41bc targets 0x16c46b4, is taken when a2 == v1(=0x6), and falls through when a2 != v1(=0x6).
  The `beq` branch at 0x16c41c4 targets 0x16c4340, is taken when a2 == a5(=0xc), and falls through when a2 != a5(=0xc).
  The `beq` branch at 0x16c41d0 targets 0x16c4204, is taken when a2 == a6(=0x7), and falls through when a2 != a6(=0x7).
  The `beq` branch at 0x16c4208 targets 0x16c4454, is taken when a2(=[a0]:1) == 0, and falls through when a2(=[a0]:1) != 0.
  The `beq` branch at 0x16c4228 targets 0x16c4460, is taken when t3(=[a1]:1) == 0, and falls through when t3(=[a1]:1) != 0.
  The `beq` branch at 0x16c4244 targets 0x16c4284, is taken when a0 == a1, and falls through when a0 != a1.
  The `beq` branch at 0x16c424c targets 0x16c427c, is taken when a2(=[a0]:1) == 0, and falls through when a2(=[a0]:1) != 0.
  The `beq` branch at 0x16c4258 targets 0x16c44e8, is taken when a0(=[a3+8]) == 0, and falls through when a0(=[a3+8]) != 0.
  The `beq` branch at 0x16c4274 targets 0x16c4b90 and is always taken.
  The `bne` branch at 0x16c427c targets 0x16c4254, is taken when t3(=[a1]:1) != 0, and falls through when t3(=[a1]:1) == 0.
  The `beq` branch at 0x16c428c targets 0x16c4570, is taken when a0(=[a3+8]) == 0, and falls through when a0(=[a3+8]) != 0.
  The `beq` branch at 0x16c42a4 targets 0x16c43dc, is taken when a2(=[a4+2]:2) >= a5(=[[a3+8]+10]:2) (signed), and falls through when a2(=[a4+2]:2) < a5(=[[a3+8]+10]:2) (signed).
  The `bne` branch at 0x16c42c4 targets 0x16c42f0, is taken when s3(=[[a3+8]+4]) < 0x2 (signed), and falls through when s3(=[[a3+8]+4]) >= 0x2 (signed).
  The `bne` branch at 0x16c42e0 targets 0x16c4660, is taken when sp(?) != 0, and falls through when sp(?) == 0.
  The `beq` branch at 0x16c4310 targets 0x16c4420, is taken when a7(=one of 0x0, 0x1) >= 0x1 (unsigned), and falls through when a7(=one of 0x0, 0x1) < 0x1 (unsigned).
  The `bne` branch at 0x16c4328 targets 0x16c4420, is taken when a0(=one of 0x0, 0x1) != 0, and falls through when a0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x16c4338 targets 0x16c43e8 and is always taken.
  The `beq` branch at 0x16c4344 targets 0x16c4688, is taken when a2(=[a0]:1) == 0, and falls through when a2(=[a0]:1) != 0.
  The `beq` branch at 0x16c4364 targets 0x16c4694, is taken when a7(=[a1]:1) == 0, and falls through when a7(=[a1]:1) != 0.
  The `beq` branch at 0x16c4380 targets 0x16c4474, is taken when a0 == a1, and falls through when a0 != a1.
  The `beq` branch at 0x16c4388 targets 0x16c446c, is taken when a2(=[a0]:1) == 0, and falls through when a2(=[a0]:1) != 0.
  The `beq` branch at 0x16c4394 targets 0x16c46ec, is taken when a0(=[a3+8]) == 0, and falls through when a0(=[a3+8]) != 0.
  The `blez` branch at 0x16c43c4 targets 0x16c462c, is taken when t9(?) <= 0 (signed), and falls through when t9(?) > 0 (signed).
  The `beq` branch at 0x16c43d4 targets 0x16c4744 and is always taken.
  The `beq` branch at 0x16c43f4 targets 0x16c4274, is taken when a0(?) >= a1(?) (signed), and falls through when a0(?) < a1(?) (signed).
  The `beq` branch at 0x16c4400 targets 0x16c4a4c, is taken when s3(=[[a3+8]+4]) >= 0x2 (signed), and falls through when s3(=[[a3+8]+4]) < 0x2 (signed).
  The `beq` branch at 0x16c4418 targets 0x16c4b88, is taken when t9(=one of 0x0, 0x1) == 0, and falls through when t9(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x16c4458 targets 0x16c4214 and is always taken.
  The `beq` branch at 0x16c4464 targets 0x16c4234 and is always taken.
  The `bne` branch at 0x16c446c targets 0x16c4390, is taken when a7(=[a1]:1) != 0, and falls through when a7(=[a1]:1) == 0.
  The `beq` branch at 0x16c447c targets 0x16c4788, is taken when a0(=[a3+8]) == 0, and falls through when a0(=[a3+8]) != 0.
  The `bne` branch at 0x16c4494 targets 0x16c45c4, is taken when a2(=[a4+2]:2) < a7(=[[a3+8]+10]:2) (signed), and falls through when a2(=[a4+2]:2) >= a7(=[[a3+8]+10]:2) (signed).
  The `beq` branch at 0x16c44b4 targets 0x16c43ac, is taken when t2(?) >= t3(?) (signed), and falls through when t2(?) < t3(?) (signed).
  The `beq` branch at 0x16c44bc targets 0x16c57d8, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x16c44d4 targets 0x16c462c, is taken when s3(=one of 0x0, 0x1) != 0, and falls through when s3(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x16c44e0 targets 0x16c43b4 and is always taken.
  The `beq` branch at 0x16c44e8 targets 0x16c477c, is taken when a1(=one of 0x0, 0x1) == 0, and falls through when a1(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x16c44fc targets 0x16c4520, is taken when v0(=[a4]:2) >= v1(=[a3]:2) (signed), and falls through when v0(=[a4]:2) < v1(=[a3]:2) (signed).
  The `beq` branch at 0x16c4518 targets 0x16c4538 and is always taken.
  The `beq` branch at 0x16c4568 targets 0x16c6478 and is always taken.
  The `beq` branch at 0x16c4578 targets 0x16c44e8, is taken when a2(=[a4+2]:2) >= t8(=[a3+2]:2) (signed), and falls through when a2(=[a4+2]:2) < t8(=[a3+2]:2) (signed).
  The `beq` branch at 0x16c45a0 targets 0x16c47e4, is taken when t9(=[a4]:2) >= ra(=[a3]:2) (signed), and falls through when t9(=[a4]:2) < ra(=[a3]:2) (signed).
  The `beq` branch at 0x16c45bc targets 0x16c4538 and is always taken.
  The `bne` branch at 0x16c45dc targets 0x16c4608, is taken when t1(=[[a3+8]+4]) < 0x2 (signed), and falls through when t1(=[[a3+8]+4]) >= 0x2 (signed).
  The `bne` branch at 0x16c45f8 targets 0x16c47f0, is taken when sp(?) != 0, and falls through when sp(?) == 0.
  The `bne` branch at 0x16c4624 targets 0x16c57b4, is taken when s4(=one of 0x0, 0x1) < 0x1 (unsigned), and falls through when s4(=one of 0x0, 0x1) >= 0x1 (unsigned).
  The `bne` branch at 0x16c4674 targets 0x16c46c8, is taken when sp(?) != 0, and falls through when sp(?) == 0.
  The `beq` branch at 0x16c4680 targets 0x16c42ec and is always taken.
  The `beq` branch at 0x16c468c targets 0x16c4350 and is always taken.
  The `beq` branch at 0x16c4698 targets 0x16c4370 and is always taken.
  The `beq` branch at 0x16c46ac targets 0x16c41e8 and is always taken.
  The `beq` branch at 0x16c46c0 targets 0x16c41e8 and is always taken.
  The `bne` branch at 0x16c46d4 targets 0x16c4938, is taken when t2(=(([[a3+8]+4] << 0x3) + [a3+8]+8)-8) < a3(=[a3+8]+8) (unsigned), and falls through when t2(=(([[a3+8]+4] << 0x3) + [a3+8]+8)-8) >= a3(=[a3+8]+8) (unsigned).
  The `beq` branch at 0x16c46e4 targets 0x16c4854 and is always taken.
  The `beq` branch at 0x16c46ec targets 0x16c483c, is taken when a1(=one of 0x0, 0x1) == 0, and falls through when a1(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x16c4704 targets 0x16c4728, is taken when t3(=[a4]:2) >= s5(=[a3]:2) (signed), and falls through when t3(=[a4]:2) < s5(=[a3]:2) (signed).
  The `beq` branch at 0x16c4720 targets 0x16c4744 and is always taken.
  The `beq` branch at 0x16c4774 targets 0x16c64b8 and is always taken.
  The `beq` branch at 0x16c4780 targets 0x16c4270 and is always taken.
  The `beq` branch at 0x16c4790 targets 0x16c46ec, is taken when a2(=[a4+2]:2) >= t9(=[a3+2]:2) (signed), and falls through when a2(=[a4+2]:2) < t9(=[a3+2]:2) (signed).
  The `beq` branch at 0x16c47c0 targets 0x16c4944, is taken when at(=[a4]:2) >= v0(=[a3]:2) (signed), and falls through when at(=[a4]:2) < v0(=[a3]:2) (signed).
  The `beq` branch at 0x16c47dc targets 0x16c4744 and is always taken.
  The `beq` branch at 0x16c47e8 targets 0x16c4524 and is always taken.
  The `bne` branch at 0x16c4804 targets 0x16c4818, is taken when sp(?) != 0, and falls through when sp(?) == 0.
  The `beq` branch at 0x16c4810 targets 0x16c4604 and is always taken.
  The `bne` branch at 0x16c4824 targets 0x16c4a40, is taken when t2(=(([[a3+8]+4] << 0x3) + [a3+8]+8)-8) < a3(=[a3+8]+8) (unsigned), and falls through when t2(=(([[a3+8]+4] << 0x3) + [a3+8]+8)-8) >= a3(=[a3+8]+8) (unsigned).
  The `beq` branch at 0x16c4834 targets 0x16c495c and is always taken.
  The `beq` branch at 0x16c4840 targets 0x16c43ac and is always taken.
  The `bne` branch at 0x16c484c targets 0x16c4864, is taken when at(?) != a0(?), and falls through when at(?) == a0(?).
  The `beq` branch at 0x16c485c targets 0x16c4848, is taken when a2(?) >= a3(=[a3+8]+8) (unsigned), and falls through when a2(?) < a3(=[a3+8]+8) (unsigned).
  The `bne` branch at 0x16c4874 targets 0x16c4908, is taken when t3(?) < a0(?) (unsigned), and falls through when t3(?) >= a0(?) (unsigned).
  The `beq` branch at 0x16c48f0 targets 0x16c48ac, is taken when t3(?) >= a1(?) (unsigned), and falls through when t3(?) < a1(?) (unsigned).
  The `beq` branch at 0x16c4930 targets 0x16c46dc, is taken when t2(?) >= a3(=[a3+8]+8) (unsigned), and falls through when t2(?) < a3(=[a3+8]+8) (unsigned).
  The `beq` branch at 0x16c493c targets 0x16c4680 and is always taken.
  The `beq` branch at 0x16c4948 targets 0x16c4730 and is always taken.
  The `bne` branch at 0x16c4954 targets 0x16c496c, is taken when t2(?) != a0(?), and falls through when t2(?) == a0(?).
  The `beq` branch at 0x16c4964 targets 0x16c4950, is taken when a2(?) >= a3(=[a3+8]+8) (unsigned), and falls through when a2(?) < a3(=[a3+8]+8) (unsigned).
  The `bne` branch at 0x16c497c targets 0x16c4a10, is taken when t0(?) < a0(?) (unsigned), and falls through when t0(?) >= a0(?) (unsigned).
  The `beq` branch at 0x16c49f8 targets 0x16c49b4, is taken when t0(?) >= a0(?) (unsigned), and falls through when t0(?) < a0(?) (unsigned).
  The `beq` branch at 0x16c4a38 targets 0x16c482c, is taken when t2(?) >= a3(=[a3+8]+8) (unsigned), and falls through when t2(?) < a3(=[a3+8]+8) (unsigned).
  The `beq` branch at 0x16c4a44 targets 0x16c4810 and is always taken.
  The `beq` branch at 0x16c4a78 targets 0x16c4a88, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x16c4a80 targets 0x16c4a90, is taken when sp(?) != 0, and falls through when sp(?) == 0.
  The `beq` branch at 0x16c4a88 targets 0x16c4b74 and is always taken.
  The `blez` branch at 0x16c4a90 targets 0x16c4b68, is taken when t0(=([[a3+8]+4] << 0x3)) <= 0 (signed), and falls through when t0(=([[a3+8]+4] << 0x3)) > 0 (signed).
  The `beq` branch at 0x16c4aa4 targets 0x16c4b50 and is always taken.
  The `bne` branch at 0x16c4ab4 targets 0x16c4acc, is taken when t2(?) != a0(?), and falls through when t2(?) == a0(?).
  The `bne` branch at 0x16c4ac4 targets 0x16c4ab0, is taken when a2(?) < t1(?) (unsigned), and falls through when a2(?) >= t1(?) (unsigned).
  The `beq` branch at 0x16c4ad0 targets 0x16c4b38, is taken when t0(?) == a2(?), and falls through when t0(?) != a2(?).
  The `bne` branch at 0x16c4b30 targets 0x16c4af0, is taken when t0(?) != a2(?), and falls through when t0(?) == a2(?).
  The `beq` branch at 0x16c4b48 targets 0x16c4b64, is taken when t2(?) >= t1(?) (unsigned), and falls through when t2(?) < t1(?) (unsigned).
  The `beq` branch at 0x16c4b50 targets 0x16c4b7c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x16c4b5c targets 0x16c4abc and is always taken.
  The `beq` branch at 0x16c4b74 targets 0x16c4408 and is always taken.
  The `beq` branch at 0x16c4b80 targets 0x16c4ac8 and is always taken.
  The `blez` branch at 0x16c4ba0 targets 0x16c4420, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0x16c4bac targets 0x16c4538 and is always taken.
  The `beq` branch at 0x16c4bdc targets 0x16c5280, is taken when ra(=one of -0x1, 0x1) == s6(=0x1), and falls through when ra(=one of -0x1, 0x1) != s6(=0x1).
  The `bne` branch at 0x16c4c0c targets 0x16c4c74, is taken when t1(?) != a3(?), and falls through when t1(?) == a3(?).
  The `blez` branch at 0x16c4c14 targets 0x16c5134, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0x16c4c6c targets 0x16c6450 and is always taken.
  The `blez` branch at 0x16c4c8c targets 0x16c5130, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0x16c4ce0 targets 0x16c6458 and is always taken.
  The `bltz` branch at 0x16c4d6c targets 0x16c4e0c, is taken when s2(?) < 0 (signed), and falls through when s2(?) >= 0 (signed).
  The `bne` branch at 0x16c4e04 targets 0x16c4d80, is taken when a1(?) != a2(?), and falls through when a1(?) == a2(?).
  The `beq` branch at 0x16c4e0c targets 0x16c4e34, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x16c4e34 targets 0x16c5278, is taken when t0(?) == s0(?), and falls through when t0(?) != s0(?).
  The `beq` branch at 0x16c4e44 targets 0x16c4e68, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x16c4e80 targets 0x16c4d60, is taken when s1(?) >= 0x8 (unsigned), and falls through when s1(?) < 0x8 (unsigned).
  The `bltz` branch at 0x16c4f5c targets 0x16c505c, is taken when s2(?) < 0 (signed), and falls through when s2(?) >= 0 (signed).
  The `bne` branch at 0x16c5054 targets 0x16c4f70, is taken when a1(?) != t0(?), and falls through when a1(?) == t0(?).
  The `beq` branch at 0x16c505c targets 0x16c508c, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x16c5068 targets 0x16c5080, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x16c5098 targets 0x16c512c, is taken when t9(?) == s0(?), and falls through when t9(?) != s0(?).
  The `beq` branch at 0x16c50a8 targets 0x16c50d0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x16c50b4 targets 0x16c50d8, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x16c50bc targets 0x16c5104 and is always taken.
  The `beq` branch at 0x16c50d0 targets 0x16c5104, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x16c5118 targets 0x16c4f58, is taken when s1(?) >= 0x8 (unsigned), and falls through when s1(?) < 0x8 (unsigned).
  The `beq` branch at 0x16c5144 targets 0x16c4420, is taken when v0(?) == v1(?), and falls through when v0(?) != v1(?).
  The `beq` branch at 0x16c524c targets 0x16c4bb4, is taken when a5(?) >= 0x21 (signed), and falls through when a5(?) < 0x21 (signed).
  The `beq` branch at 0x16c5270 targets 0x16c4bc4 and is always taken.
  The `beq` branch at 0x16c5278 targets 0x16c5134 and is always taken.
  The `bne` branch at 0x16c52a0 targets 0x16c5304, is taken when t1(?) != a2(?), and falls through when t1(?) == a2(?).
  The `blez` branch at 0x16c52a8 targets 0x16c5134, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0x16c52fc targets 0x16c6464 and is always taken.
  The `blez` branch at 0x16c5324 targets 0x16c5130, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0x16c537c targets 0x16c646c and is always taken.
  The `bltz` branch at 0x16c5400 targets 0x16c549c, is taken when s2(?) < 0 (signed), and falls through when s2(?) >= 0 (signed).
  The `bne` branch at 0x16c5494 targets 0x16c5410, is taken when a1(?) != a2(?), and falls through when a1(?) == a2(?).
  The `beq` branch at 0x16c549c targets 0x16c54bc, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x16c54c0 targets 0x16c5520, is taken when t0(?) == s0(?), and falls through when t0(?) != s0(?).
  The `beq` branch at 0x16c54d0 targets 0x16c54f4, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x16c550c targets 0x16c53f4, is taken when s1(?) >= 0x8 (unsigned), and falls through when s1(?) < 0x8 (unsigned).
  The `beq` branch at 0x16c5520 targets 0x16c5130 and is always taken.
  The `bltz` branch at 0x16c55f0 targets 0x16c56ec, is taken when s2(?) < 0 (signed), and falls through when s2(?) >= 0 (signed).
  The `bne` branch at 0x16c56e4 targets 0x16c5600, is taken when a1(?) != t0(?), and falls through when a1(?) == t0(?).
  The `beq` branch at 0x16c56ec targets 0x16c571c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x16c56f8 targets 0x16c5710, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x16c572c targets 0x16c57ac, is taken when ra(?) == s0(?), and falls through when ra(?) != s0(?).
  The `beq` branch at 0x16c5734 targets 0x16c5750, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x16c5740 targets 0x16c5758, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x16c5748 targets 0x16c5784 and is always taken.
  The `beq` branch at 0x16c5754 targets 0x16c5780, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x16c5798 targets 0x16c55ec, is taken when s1(?) >= 0x8 (unsigned), and falls through when s1(?) < 0x8 (unsigned).
  The `beq` branch at 0x16c57ac targets 0x16c5130 and is always taken.
  The `bne` branch at 0x16c57c4 targets 0x16c462c, is taken when a0(=one of 0x0, 0x1) != 0, and falls through when a0(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x16c57d0 targets 0x16c44a8 and is always taken.
  The `beq` branch at 0x16c5804 targets 0x16c582c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x16c580c targets 0x16c582c, is taken when sp(?) == 0, and falls through when sp(?) != 0.
  The `blez` branch at 0x16c5814 targets 0x16c58f8, is taken when a0(=([[a3+8]+4] << 0x3)) <= 0 (signed), and falls through when a0(=([[a3+8]+4] << 0x3)) > 0 (signed).
  The `beq` branch at 0x16c5824 targets 0x16c58e0 and is always taken.
  The `beq` branch at 0x16c5834 targets 0x16c44c4 and is always taken.
  The `bne` branch at 0x16c5844 targets 0x16c585c, is taken when a6(?) != a0(?), and falls through when a6(?) == a0(?).
  The `bne` branch at 0x16c5854 targets 0x16c5840, is taken when a2(?) < t1(?) (unsigned), and falls through when a2(?) >= t1(?) (unsigned).
  The `beq` branch at 0x16c5860 targets 0x16c58c8, is taken when t0(?) == a2(?), and falls through when t0(?) != a2(?).
  The `bne` branch at 0x16c58c0 targets 0x16c5880, is taken when t0(?) != a2(?), and falls through when t0(?) == a2(?).
  The `beq` branch at 0x16c58d8 targets 0x16c58f4, is taken when t2(?) >= t1(?) (unsigned), and falls through when t2(?) < t1(?) (unsigned).
  The `beq` branch at 0x16c58e0 targets 0x16c5904, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x16c58ec targets 0x16c584c and is always taken.
  The `beq` branch at 0x16c58fc targets 0x16c5830 and is always taken.
  The `beq` branch at 0x16c5908 targets 0x16c5858 and is always taken.
  The `beq` branch at 0x16c5940 targets 0x16c5f6c, is taken when s1(=one of -0x1, 0x1) == t9(=0x1), and falls through when s1(=one of -0x1, 0x1) != t9(=0x1).
  The `bne` branch at 0x16c5974 targets 0x16c59e8, is taken when t1(?) != s6(?), and falls through when t1(?) == s6(?).
  The `blez` branch at 0x16c5980 targets 0x16c5e2c, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0x16c59e0 targets 0x16c6488 and is always taken.
  The `blez` branch at 0x16c5a08 targets 0x16c5e2c, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0x16c5a6c targets 0x16c6498 and is always taken.
  The `bltz` branch at 0x16c5ae0 targets 0x16c5b5c, is taken when s2(?) < 0 (signed), and falls through when s2(?) >= 0 (signed).
  The `bne` branch at 0x16c5b54 targets 0x16c5af0, is taken when a1(?) != a2(?), and falls through when a1(?) == a2(?).
  The `beq` branch at 0x16c5b5c targets 0x16c5b88, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x16c5b88 targets 0x16c5f60, is taken when t0(?) == s0(?), and falls through when t0(?) != s0(?).
  The `beq` branch at 0x16c5b98 targets 0x16c5bc4, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x16c5bdc targets 0x16c5ad4, is taken when s1(?) >= 0x8 (unsigned), and falls through when s1(?) < 0x8 (unsigned).
  The `bltz` branch at 0x16c5c80 targets 0x16c5d3c, is taken when s2(?) < 0 (signed), and falls through when s2(?) >= 0 (signed).
  The `bne` branch at 0x16c5d34 targets 0x16c5c90, is taken when a1(?) != t0(?), and falls through when a1(?) == t0(?).
  The `beq` branch at 0x16c5d3c targets 0x16c5d7c, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x16c5d50 targets 0x16c5d68, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x16c5d88 targets 0x16c5e20, is taken when t9(?) == s0(?), and falls through when t9(?) != s0(?).
  The `beq` branch at 0x16c5d98 targets 0x16c5dc0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x16c5da4 targets 0x16c5dc8, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x16c5dac targets 0x16c5df8 and is always taken.
  The `beq` branch at 0x16c5dc0 targets 0x16c5df8, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x16c5e0c targets 0x16c5c7c, is taken when s1(?) >= 0x8 (unsigned), and falls through when s1(?) < 0x8 (unsigned).
  The `beq` branch at 0x16c5e40 targets 0x16c462c, is taken when v0(?) == v1(?), and falls through when v0(?) != v1(?).
  The `beq` branch at 0x16c5f30 targets 0x16c5910, is taken when t3(?) >= 0x21 (signed), and falls through when t3(?) < 0x21 (signed).
  The `beq` branch at 0x16c5f58 targets 0x16c5924 and is always taken.
  The `beq` branch at 0x16c5f64 targets 0x16c5e2c and is always taken.
  The `bne` branch at 0x16c5f8c targets 0x16c5ffc, is taken when t1(?) != a2(?), and falls through when t1(?) == a2(?).
  The `blez` branch at 0x16c5f94 targets 0x16c5e30, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0x16c5ff4 targets 0x16c64a8 and is always taken.
  The `blez` branch at 0x16c6020 targets 0x16c5e2c, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0x16c6080 targets 0x16c64b0 and is always taken.
  The `bltz` branch at 0x16c60e8 targets 0x16c616c, is taken when s2(?) < 0 (signed), and falls through when s2(?) >= 0 (signed).
  The `bne` branch at 0x16c6164 targets 0x16c6100, is taken when a0(?) != a2(?), and falls through when a0(?) == a2(?).
  The `beq` branch at 0x16c616c targets 0x16c6198, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x16c6198 targets 0x16c6200, is taken when t0(?) == s0(?), and falls through when t0(?) != s0(?).
  The `beq` branch at 0x16c61a8 targets 0x16c61d4, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x16c61ec targets 0x16c60dc, is taken when s1(?) >= 0x8 (unsigned), and falls through when s1(?) < 0x8 (unsigned).
  The `beq` branch at 0x16c6204 targets 0x16c5e2c and is always taken.
  The `bltz` branch at 0x16c629c targets 0x16c635c, is taken when s2(?) < 0 (signed), and falls through when s2(?) >= 0 (signed).
  The `bne` branch at 0x16c6354 targets 0x16c62b0, is taken when a2(?) != t0(?), and falls through when a2(?) == t0(?).
  The `beq` branch at 0x16c635c targets 0x16c639c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x16c6370 targets 0x16c6388, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x16c63a8 targets 0x16c6440, is taken when ra(?) == s0(?), and falls through when ra(?) != s0(?).
  The `beq` branch at 0x16c63b8 targets 0x16c63e0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x16c63c4 targets 0x16c63e8, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x16c63cc targets 0x16c6418 and is always taken.
  The `beq` branch at 0x16c63e0 targets 0x16c6418, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x16c642c targets 0x16c6298, is taken when s1(?) >= 0x8 (unsigned), and falls through when s1(?) < 0x8 (unsigned).
  The `beq` branch at 0x16c6448 targets 0x16c5e2c and is always taken.
  The `beq` branch at 0x16c6450 targets 0x16c4e40 and is always taken.
  The `beq` branch at 0x16c645c targets 0x16c50a4 and is always taken.
  The `beq` branch at 0x16c6464 targets 0x16c54cc and is always taken.
  The `beq` branch at 0x16c6470 targets 0x16c5734 and is always taken.
  The `beq` branch at 0x16c6480 targets 0x16c5150 and is always taken.
  The `beq` branch at 0x16c6490 targets 0x16c5b94 and is always taken.
  The `beq` branch at 0x16c64a0 targets 0x16c5d94 and is always taken.
  The `beq` branch at 0x16c64a8 targets 0x16c61a4 and is always taken.
  The `beq` branch at 0x16c64b0 targets 0x16c63b4 and is always taken.
  The `beq` branch at 0x16c64c0 targets 0x16c5e4c and is always taken.
  The return at 0x16c41fc has v0 = one of ret(mfbDoBitbltGeneral), ret(mfbDoBitbltCopy), ret(mfbDoBitbltXor).
  The return at 0x16c444c has v0 = ?.
  The return at 0x16c4658 has v0 = ?.
  The instructions from 0x16c4aac to 0x16c4aac are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x16c4ce8 to 0x16c4cec are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x16c50c4 to 0x16c50cc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x16c5384 to 0x16c53f0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x16c5528 to 0x16c55e8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x16c583c to 0x16c583c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x16c5a74 to 0x16c5a7c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x16c5db4 to 0x16c5dbc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x16c6088 to 0x16c60d8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x16c620c to 0x16c6294 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x16c63d4 to 0x16c63dc are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x16c4e8c uses the jump table at 0x172a0b8 with targets 0x16c4d60, 0x16c4d50, 0x16c4d40, 0x16c4d30, 0x16c4d20, 0x16c4d10, 0x16c4d00, 0x16c4cf0.
  The indirect jump at 0x16c4e8c uses the jump table at 0x172a0b8 with targets 0x16c4d60, 0x16c4d50, 0x16c4d40, 0x16c4d30, 0x16c4d20, 0x16c4d10, 0x16c4d00, 0x16c4cf0.
  The indirect jump at 0x16c4e8c uses the jump table at 0x172a0b8 with targets 0x16c4d60, 0x16c4d50, 0x16c4d40, 0x16c4d30, 0x16c4d20, 0x16c4d10, 0x16c4d00, 0x16c4cf0.
  The indirect jump at 0x16c4e8c uses the jump table at 0x172a0b8 with targets 0x16c4d60, 0x16c4d50, 0x16c4d40, 0x16c4d30, 0x16c4d20, 0x16c4d10, 0x16c4d00, 0x16c4cf0.
  The indirect jump at 0x16c4e8c uses the jump table at 0x172a0b8 with targets 0x16c4d60, 0x16c4d50, 0x16c4d40, 0x16c4d30, 0x16c4d20, 0x16c4d10, 0x16c4d00, 0x16c4cf0.
  The indirect jump at 0x16c5124 uses the jump table at 0x172a0d8 with targets 0x16c4f58, 0x16c4f3c, 0x16c4f20, 0x16c4f04, 0x16c4ee8, 0x16c4ecc, 0x16c4eb0, 0x16c4e94.
  The indirect jump at 0x16c5124 uses the jump table at 0x172a0d8 with targets 0x16c4f58, 0x16c4f3c, 0x16c4f20, 0x16c4f04, 0x16c4ee8, 0x16c4ecc, 0x16c4eb0, 0x16c4e94.
  The indirect jump at 0x16c5124 uses the jump table at 0x172a0d8 with targets 0x16c4f58, 0x16c4f3c, 0x16c4f20, 0x16c4f04, 0x16c4ee8, 0x16c4ecc, 0x16c4eb0, 0x16c4e94.
  The indirect jump at 0x16c5124 uses the jump table at 0x172a0d8 with targets 0x16c4f58, 0x16c4f3c, 0x16c4f20, 0x16c4f04, 0x16c4ee8, 0x16c4ecc, 0x16c4eb0, 0x16c4e94.
  The indirect jump at 0x16c5124 uses the jump table at 0x172a0d8 with targets 0x16c4f58, 0x16c4f3c, 0x16c4f20, 0x16c4f04, 0x16c4ee8, 0x16c4ecc, 0x16c4eb0, 0x16c4e94.
  The indirect jump at 0x16c4e8c uses the jump table at 0x172a0b8 with targets 0x16c4d60, 0x16c4d50, 0x16c4d40, 0x16c4d30, 0x16c4d20, 0x16c4d10, 0x16c4d00, 0x16c4cf0.
  The indirect jump at 0x16c5124 uses the jump table at 0x172a0d8 with targets 0x16c4f58, 0x16c4f3c, 0x16c4f20, 0x16c4f04, 0x16c4ee8, 0x16c4ecc, 0x16c4eb0, 0x16c4e94.
  The indirect jump at 0x16c4e8c uses the jump table at 0x172a0b8 with targets 0x16c4d60, 0x16c4d50, 0x16c4d40, 0x16c4d30, 0x16c4d20, 0x16c4d10, 0x16c4d00, 0x16c4cf0.
  The indirect jump at 0x16c5124 uses the jump table at 0x172a0d8 with targets 0x16c4f58, 0x16c4f3c, 0x16c4f20, 0x16c4f04, 0x16c4ee8, 0x16c4ecc, 0x16c4eb0, 0x16c4e94.
  The indirect jump at 0x16c5be8 uses the jump table at 0x172a138 with targets 0x16c5ad4, 0x16c5ac8, 0x16c5abc, 0x16c5ab0, 0x16c5aa4, 0x16c5a98, 0x16c5a8c, 0x16c5a80.
  The indirect jump at 0x16c5be8 uses the jump table at 0x172a138 with targets 0x16c5ad4, 0x16c5ac8, 0x16c5abc, 0x16c5ab0, 0x16c5aa4, 0x16c5a98, 0x16c5a8c, 0x16c5a80.
  The indirect jump at 0x16c5be8 uses the jump table at 0x172a138 with targets 0x16c5ad4, 0x16c5ac8, 0x16c5abc, 0x16c5ab0, 0x16c5aa4, 0x16c5a98, 0x16c5a8c, 0x16c5a80.
  The indirect jump at 0x16c5be8 uses the jump table at 0x172a138 with targets 0x16c5ad4, 0x16c5ac8, 0x16c5abc, 0x16c5ab0, 0x16c5aa4, 0x16c5a98, 0x16c5a8c, 0x16c5a80.
  The indirect jump at 0x16c5be8 uses the jump table at 0x172a138 with targets 0x16c5ad4, 0x16c5ac8, 0x16c5abc, 0x16c5ab0, 0x16c5aa4, 0x16c5a98, 0x16c5a8c, 0x16c5a80.
  The indirect jump at 0x16c5e18 uses the jump table at 0x172a158 with targets 0x16c5c7c, 0x16c5c68, 0x16c5c54, 0x16c5c40, 0x16c5c2c, 0x16c5c18, 0x16c5c04, 0x16c5bf0.
  The indirect jump at 0x16c5e18 uses the jump table at 0x172a158 with targets 0x16c5c7c, 0x16c5c68, 0x16c5c54, 0x16c5c40, 0x16c5c2c, 0x16c5c18, 0x16c5c04, 0x16c5bf0.
  The indirect jump at 0x16c5e18 uses the jump table at 0x172a158 with targets 0x16c5c7c, 0x16c5c68, 0x16c5c54, 0x16c5c40, 0x16c5c2c, 0x16c5c18, 0x16c5c04, 0x16c5bf0.
  The indirect jump at 0x16c5e18 uses the jump table at 0x172a158 with targets 0x16c5c7c, 0x16c5c68, 0x16c5c54, 0x16c5c40, 0x16c5c2c, 0x16c5c18, 0x16c5c04, 0x16c5bf0.
  The indirect jump at 0x16c5e18 uses the jump table at 0x172a158 with targets 0x16c5c7c, 0x16c5c68, 0x16c5c54, 0x16c5c40, 0x16c5c2c, 0x16c5c18, 0x16c5c04, 0x16c5bf0.
  The indirect jump at 0x16c5be8 uses the jump table at 0x172a138 with targets 0x16c5ad4, 0x16c5ac8, 0x16c5abc, 0x16c5ab0, 0x16c5aa4, 0x16c5a98, 0x16c5a8c, 0x16c5a80.
  The indirect jump at 0x16c5e18 uses the jump table at 0x172a158 with targets 0x16c5c7c, 0x16c5c68, 0x16c5c54, 0x16c5c40, 0x16c5c2c, 0x16c5c18, 0x16c5c04, 0x16c5bf0.
  The indirect jump at 0x16c5be8 uses the jump table at 0x172a138 with targets 0x16c5ad4, 0x16c5ac8, 0x16c5abc, 0x16c5ab0, 0x16c5aa4, 0x16c5a98, 0x16c5a8c, 0x16c5a80.
  The indirect jump at 0x16c5e18 uses the jump table at 0x172a158 with targets 0x16c5c7c, 0x16c5c68, 0x16c5c54, 0x16c5c40, 0x16c5c2c, 0x16c5c18, 0x16c5c04, 0x16c5bf0.
  The indirect jump at 0x16c5be8 uses the jump table at 0x172a138 with targets 0x16c5ad4, 0x16c5ac8, 0x16c5abc, 0x16c5ab0, 0x16c5aa4, 0x16c5a98, 0x16c5a8c, 0x16c5a80.
  The indirect jump at 0x16c5e18 uses the jump table at 0x172a158 with targets 0x16c5c7c, 0x16c5c68, 0x16c5c54, 0x16c5c40, 0x16c5c2c, 0x16c5c18, 0x16c5c04, 0x16c5bf0.
  The indirect jump at 0x16c5be8 uses the jump table at 0x172a138 with targets 0x16c5ad4, 0x16c5ac8, 0x16c5abc, 0x16c5ab0, 0x16c5aa4, 0x16c5a98, 0x16c5a8c, 0x16c5a80.
  The indirect jump at 0x16c5e18 uses the jump table at 0x172a158 with targets 0x16c5c7c, 0x16c5c68, 0x16c5c54, 0x16c5c40, 0x16c5c2c, 0x16c5c18, 0x16c5c04, 0x16c5bf0.
