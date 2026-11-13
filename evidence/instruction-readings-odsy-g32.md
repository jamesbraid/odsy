# Instruction readings from hostfacts

Each entry records selected software behavior from its exact binary range. The readings are established for those binaries and do not establish hardware behavior.

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
- `glBlendColorEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad72c0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad72c0-0xdad72cc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad72c0 loads 4 bytes from abs 0x12f0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad72c4).
- `glBlendEquationEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad72cc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad72cc-0xdad72d8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad72cc loads 4 bytes from abs 0x12f4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad72d0).
- `glTexSubImage1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad72e4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad72e4-0xdad72f0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad72e4 loads 4 bytes from abs 0x12fc.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad72e8).
- `glTexSubImage2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad72f0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad72f0-0xdad72fc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad72f0 loads 4 bytes from abs 0x1300.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad72f4).
- `glConvolutionFilter1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad72fc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad72fc-0xdad7308 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad72fc loads 4 bytes from abs 0x1304.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7300).
- `glConvolutionFilter2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7308 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad7308-0xdad7314 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7308 loads 4 bytes from abs 0x1308.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad730c).
- `glConvolutionParameterfEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7314 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad7314-0xdad7320 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7314 loads 4 bytes from abs 0x130c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7318).
- `glConvolutionParameterfvEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7320 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad7320-0xdad732c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7320 loads 4 bytes from abs 0x1310.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7324).

- `glConvolutionParameteriEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad732c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad732c-0xdad7338 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad732c loads 4 bytes from abs 0x1314.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7330).

- `glConvolutionParameterivEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7338 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad7338-0xdad7344 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7338 loads 4 bytes from abs 0x1318.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad733c).

- `glCopyConvolutionFilter1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7344 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad7344-0xdad7350 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7344 loads 4 bytes from abs 0x131c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7348).

- `glCopyConvolutionFilter2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7350 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad7350-0xdad735c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7350 loads 4 bytes from abs 0x1320.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7354).

- `glSeparableFilter2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad738c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad738c-0xdad7398 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad738c loads 4 bytes from abs 0x1334.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7390).

- `glHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad73e0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad73e0-0xdad73ec (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad73e0 loads 4 bytes from abs 0x1350.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad73e4).

- `glMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad73ec (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad73ec-0xdad73f8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad73ec loads 4 bytes from abs 0x1354.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad73f0).

- `glTexImage3DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7410 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad7410-0xdad741c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7410 loads 4 bytes from abs 0x1360.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7414).

- `glTexSubImage3DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad741c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad741c-0xdad7428 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad741c loads 4 bytes from abs 0x1364.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7420).

- `glArrayElementEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7428 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad7428-0xdad7434 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7428 loads 4 bytes from abs 0x1368.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad742c).

- `glGetPointervEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7458 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad7458-0xdad7464 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7458 loads 4 bytes from abs 0x1378.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad745c).

- `glCopyTexImage1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad74dc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad74dc-0xdad74e8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad74dc loads 4 bytes from abs 0x13a4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad74e0).

- `glCopyTexImage2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad74e8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad74e8-0xdad74f4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad74e8 loads 4 bytes from abs 0x13a8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad74ec).

- `glCopyTexSubImage1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad74f4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad74f4-0xdad7500 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad74f4 loads 4 bytes from abs 0x13ac.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad74f8).

- `glCopyTexSubImage2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7500 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad7500-0xdad750c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7500 loads 4 bytes from abs 0x13b0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7504).

- `glCopyTexSubImage3DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad750c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad750c-0xdad7518 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad750c loads 4 bytes from abs 0x13b4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7510).

- `glColorTableSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7608 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad7608-0xdad7614 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7608 loads 4 bytes from abs 0x1408.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad760c).

- `glColorTableParameterfvSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7614 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad7614-0xdad7620 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7614 loads 4 bytes from abs 0x140c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7618).

- `glColorTableParameterivSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad7620 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad7620-0xdad762c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad7620 loads 4 bytes from abs 0x1410.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7624).

- `glCopyColorTableSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad762c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad762c-0xdad7638 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad762c loads 4 bytes from abs 0x1414.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad7630).

- `glPointParameterfSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad76c8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad76c8-0xdad76d4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad76c8 loads 4 bytes from abs 0x1448.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad76cc).

- `glPointParameterfvSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad76d4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad76d4-0xdad76e0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdad76d4 loads 4 bytes from abs 0x144c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad76d8).

- `glColor3b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdae0000 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdae0000-0xdae0080 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xdae0000 loads 4 bytes from abs 0x15d8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdae0004).
  The instructions from 0xdae000c to 0xdae007c are not reached by any path from the entry, and their branches are not listed.

- `glVertex2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdae2900 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdae2900-0xdae2a00 (256 bytes).
  It occupies 256 bytes.
  The `lw` at 0xdae2900 loads 4 bytes from abs 0x1578.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdae2904).
  The instructions from 0xdae290c to 0xdae29fc are not reached by any path from the entry, and their branches are not listed.

- `Pick` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd964190 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd964190-0xd964198 (8 bytes).
  It occupies 8 bytes.
  The return at 0xd964190 has v0 = ?.

- `Fetch` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9641a0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd9641a0-0xd9641a8 (8 bytes).
  It occupies 8 bytes.
  The return at 0xd9641a0 has v0 = ?.

- `StoreStippledSpan` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9641b0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd9641b0-0xd9642d8 (296 bytes).
  It occupies 296 bytes.
  The `lw` at 0xd9641b0 loads 4 bytes from a0 (arg0 at entry) +0x7630.
  The `lw` at 0xd9641bc loads 4 bytes from a0 (arg0 at entry) +0x7740.
  The `lw` at 0xd9641c4 loads 4 bytes from a0 (arg0 at entry) +0x7660.
  The `lw` at 0xd9641d0 loads 4 bytes from a0 (arg0 at entry) +0x7748.
  The `lw` at 0xd9641d8 loads 4 bytes from a0 (arg0 at entry) +0x7738.
  The `lw` at 0xd9641e4 loads 4 bytes from a0 (arg0 at entry) +0x762c.
  The `lw` at 0xd964234 loads 4 bytes from ?.
  The `lwc1` at 0xd96425c loads 4 bytes from ?.
  The `lw` at 0xd964264 loads 4 bytes from [a0+30536] +0xa4.
  The `jalr` at 0xd96426c calls (unknown callee) with a0=[a0+30536], a1=sp-160, a2=?, a3=?.
  The `beq` branch at 0xd9641f0 targets 0xd9642b4, is taken when s7(=[a0+30304]) == 0, and falls through when s7(=[a0+30304]) != 0.
  The `bltz` branch at 0xd964238 targets 0xd96429c, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `beq` branch at 0xd964250 targets 0xd964274, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0xd964284 targets 0xd964250, is taken when s4(?) != s6(=-0x1), and falls through when s4(?) == s6(=-0x1).
  The `bne` branch at 0xd96429c targets 0xd964210, is taken when s7(?) != 0, and falls through when s7(?) == 0.
  The return at 0xd9642d0 has v0 = 0x0.

- `StoreSpan` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9642e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd9642e0-0xd96437c (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xd9642e8 loads 4 bytes from a0 (arg0 at entry) +0x7660.
  The `lw` at 0xd9642ec loads 4 bytes from a0 (arg0 at entry) +0x7630.
  The `lw` at 0xd9642f8 loads 4 bytes from a0 (arg0 at entry) +0x762c.
  The `lw` at 0xd9642fc loads 4 bytes from a0 (arg0 at entry) +0x7748.
  The `lw` at 0xd964314 loads 4 bytes from a0 (arg0 at entry) +0x7738.
  The `lwc1` at 0xd964334 loads 4 bytes from ?.
  The `lw` at 0xd96433c loads 4 bytes from [a0+30536] +0xa4.
  The `jalr` at 0xd964348 calls (unknown callee) with a0=[a0+30536], a1=sp-112, a2=?, a3=?.
  The `beq` branch at 0xd964320 targets 0xd96435c, is taken when s0(=[a0+30252]) >= s3(=([a0+30252] + [a0+30304])) (signed), and falls through when s0(=[a0+30252]) < s3(=([a0+30252] + [a0+30304])) (signed).
  The `bne` branch at 0xd964354 targets 0xd964330, is taken when s3(=([a0+30252] + [a0+30304])) != s0(?), and falls through when s3(=([a0+30252] + [a0+30304])) == s0(?).
  The return at 0xd964374 has v0 = 0x0.

- `Clampf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9d90f0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd9d90f0-0xd9d9114 (36 bytes).
  It occupies 36 bytes.
  The `bc1t` branch at 0xd9d90f4 targets 0xd9d910c, is taken when f12 < f13 (c.lt.s at 0xd9d90f0), and falls through when not (f12 < f13 (c.lt.s at 0xd9d90f0)).
  The return at 0xd9d9104 has v0 = ?.
  The return at 0xd9d910c has v0 = ?.

- `vvec` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f0ec0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd9f0ec0-0xd9f0f9c (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0xd9f0ec0 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0xd9f0ec8 loads 4 bytes from a2 (arg2 at entry) +0xc.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xd9f0ed4, `lwc1` at 0xd9f0f7c.
  The `lwc1` at 0xd9f0ee0 loads 4 bytes from a1 (arg1 at entry) +0xc.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xd9f0ee4, `lwc1` at 0xd9f0f60, `lwc1` at 0xd9f0f78.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xd9f0ee8, `lwc1` at 0xd9f0f68, `lwc1` at 0xd9f0f74.
  5 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `swc1` at 0xd9f0ef4, `swc1` at 0xd9f0f2c, `swc1` at 0xd9f0f58.
  5 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `swc1` at 0xd9f0efc, `swc1` at 0xd9f0f24, `swc1` at 0xd9f0f50.
  5 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `swc1` at 0xd9f0f00, `swc1` at 0xd9f0f20, `swc1` at 0xd9f0f48.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lwc1` at 0xd9f0f04, `lwc1` at 0xd9f0f34.
  The `lwc1` at 0xd9f0f08 loads 4 bytes from a2 (arg2 at entry) +0xc.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lwc1` at 0xd9f0f0c, `lwc1` at 0xd9f0f3c.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lwc1` at 0xd9f0f10, `lwc1` at 0xd9f0f30.
  The `beq` branch at 0xd9f0ecc targets 0xd9f0f30, is taken when a5(=([a1+12] << 0x1)) == 0, and falls through when a5(=([a1+12] << 0x1)) != 0.
  The `beq` branch at 0xd9f0ed8 targets 0xd9f0f5c, is taken when a4(=([a2+12] << 0x1)) == 0, and falls through when a4(=([a2+12] << 0x1)) != 0.
  The `beq` branch at 0xd9f0f38 targets 0xd9f0f74, is taken when a4(=([a2+12] << 0x1)) == 0, and falls through when a4(=([a2+12] << 0x1)) != 0.
  The return at 0xd9f0f28 has v0 = ?.
  The return at 0xd9f0f54 has v0 = ?.
  The return at 0xd9f0f6c has v0 = ?.
  The return at 0xd9f0f94 has v0 = ?.

- `Dot` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xd9f1f00 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xd9f1f00-0xd9f1f28 (40 bytes).
  It occupies 40 bytes.
  The `lwc1` at 0xd9f1f00 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xd9f1f04 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xd9f1f08 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xd9f1f0c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0xd9f1f10 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lwc1` at 0xd9f1f18 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The return at 0xd9f1f20 has v0 = ?.

- `Clear` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda223d0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda223d0-0xda226fc (812 bytes).
  It occupies 812 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xda223e8, `lw` at 0xda226f8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0xda223f0, `lw` at 0xda226f0.
  The `lw` at 0xda223f8 loads 4 bytes from [a0] +0x7448.
  The `lw` at 0xda22404 loads 4 bytes from [a0] +0x7440.
  The `lw` at 0xda22410 loads 4 bytes from [a0] +0x743c.
  The `lw` at 0xda22414 loads 4 bytes from [a0] +0x7444.
  The `lwc1` at 0xda22418 loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `lwc1` at 0xda2241c loads 4 bytes from [a0] +0x67c.
  The `lwc1` at 0xda22420 loads 4 bytes from [a0] +0x7880.
  The `lwc1` at 0xda22424 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lwc1` at 0xda22428 loads 4 bytes from [a0] +0x678.
  The `lwc1` at 0xda2242c loads 4 bytes from [a0] +0x7860.
  The `lwc1` at 0xda22430 loads 4 bytes from [a0] +0x674.
  The `lw` at 0xda22434 loads 4 bytes from [a0] +0xe50.
  The `lw` at 0xda22438 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lwc1` at 0xda22440 loads 4 bytes from [a0] +0x785c.
  The `lwc1` at 0xda2244c loads 4 bytes from [a0] +0x670.
  The `lwc1` at 0xda22458 loads 4 bytes from [a0] +0x7858.
  The `lwc1` at 0xda22460 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `lwc1` at 0xda22468 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0xda224a4 loads 4 bytes from [a0] +0xe4c.
  84 such `sh` accesses store 2 bytes to ?, including `sh` at 0xda224f4, `sh` at 0xda224f8, `sh` at 0xda224fc.
  The `lw` at 0xda226d0 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `jalr` at 0xda226e0 calls (unknown callee) with a0=[a0], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda2240c targets 0xda226d0, is taken when a1(=[a0+16]) == 0, and falls through when a1(=[a0+16]) != 0.
  The `beq` branch at 0xda224c8 targets 0xda226b4, is taken when s0(=[[a0]+29760]) >= s1(=[[a0]+29768]) (signed), and falls through when s0(=[[a0]+29760]) < s1(=[[a0]+29768]) (signed).
  The `beq` branch at 0xda224dc targets 0xda22694 and is always taken.
  The `bne` branch at 0xda22538 targets 0xda224f0, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xda22540 targets 0xda2265c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda22654 targets 0xda22550, is taken when a0(?) != a1(=-0x1), and falls through when a0(?) == a1(=-0x1).
  The `bltz` branch at 0xda22660 targets 0xda2268c, is taken when t2(?) < 0 (signed), and falls through when t2(?) >= 0 (signed).
  The `bne` branch at 0xda22684 targets 0xda22670, is taken when a0(?) != a1(=-0x1), and falls through when a0(?) == a1(=-0x1).
  The `beq` branch at 0xda2268c targets 0xda226b4, is taken when s0(?) == s1(=[[a0]+29768]), and falls through when s0(?) != s1(=[[a0]+29768]).
  The `bltz` branch at 0xda22694 targets 0xda2265c, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The `bne` branch at 0xda226a4 targets 0xda224f0, is taken when (t1(?) & 0x3) != 0, and falls through when (t1(?) & 0x3) == 0.
  The `beq` branch at 0xda226ac targets 0xda22540 and is always taken.
  The `beq` branch at 0xda226f4 targets 0xda22414 and is always taken.
  The return at 0xda226c8 has v0 = ?.
  The instructions from 0xda224e4 to 0xda224ec are not reached by any path from the entry, and their branches are not listed.

- `Resize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda383f0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda383f0-0xda38438 (72 bytes).
  It occupies 72 bytes.
  The `sb` at 0xda38428 stores 1 byte to a0 (arg0 at entry) +0x60.
  The `jalr` at 0xda38414 calls __glResizeBuffer [0xda2e4a0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda38430 has v0 = 0x1.

- `Coverage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda5e2e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda5e2e0-0xda5e430 (336 bytes).
  It occupies 336 bytes.
  The `bc1f` branch at 0xda5e320 targets 0xda5e32c, is taken when not (f10 <= f5 (c.le.s at 0xda5e318)), and falls through when f10 <= f5 (c.le.s at 0xda5e318).
  The `bc1f` branch at 0xda5e330 targets 0xda5e33c, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0xda5e33c targets 0xda5e348, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0xda5e348 targets 0xda5e354, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0xda5e360 targets 0xda5e36c, is taken when FP condition code 4 is false, and falls through when FP condition code 4 is true.
  The `bc1f` branch at 0xda5e370 targets 0xda5e37c, is taken when FP condition code 5 is false, and falls through when FP condition code 5 is true.
  The `bc1f` branch at 0xda5e380 targets 0xda5e38c, is taken when FP condition code 6 is false, and falls through when FP condition code 6 is true.
  The `bc1f` branch at 0xda5e390 targets 0xda5e39c, is taken when FP condition code 7 is false, and falls through when FP condition code 7 is true.
  The `bc1f` branch at 0xda5e3ac targets 0xda5e3b8, is taken when not (f10 <= f5 (c.le.s at 0xda5e3a4)), and falls through when f10 <= f5 (c.le.s at 0xda5e3a4).
  The `bc1f` branch at 0xda5e3bc targets 0xda5e3c8, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0xda5e3cc targets 0xda5e3d8, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0xda5e3d8 targets 0xda5e3e4, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0xda5e3e8 targets 0xda5e3f4, is taken when FP condition code 4 is false, and falls through when FP condition code 4 is true.
  The `bc1f` branch at 0xda5e3f8 targets 0xda5e404, is taken when FP condition code 5 is false, and falls through when FP condition code 5 is true.
  The `bc1f` branch at 0xda5e408 targets 0xda5e414, is taken when FP condition code 6 is false, and falls through when FP condition code 6 is true.
  The `bc1f` branch at 0xda5e418 targets 0xda5e428, is taken when FP condition code 7 is false, and falls through when FP condition code 7 is true.
  The return at 0xda5e420 has v0 = ?.
  The return at 0xda5e428 has v0 = ?.

- `SetInitialParameters` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda60820 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda60820-0xda60dc0 (1440 bytes).
  It occupies 1440 bytes.
  The `lw` at 0xda60820 loads 4 bytes from a0 (arg0 at entry) +0x75f4.
  The `lw` at 0xda60824 loads 4 bytes from a0 (arg0 at entry) +0x75f0.
  The `lw` at 0xda60844 loads 4 bytes from a0 (arg0 at entry) +0x771c.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7684, including `lwc1` at 0xda60888, `lwc1` at 0xda60a70, `lwc1` at 0xda60d60.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7694, including `lwc1` at 0xda6088c, `lwc1` at 0xda60a74, `lwc1` at 0xda60d64.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda60890, `lwc1` at 0xda60a78, `lwc1` at 0xda60d68.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7698, including `lwc1` at 0xda608a0, `lwc1` at 0xda60a88.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7688, including `lwc1` at 0xda608a4, `lwc1` at 0xda60a8c.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7638, including `swc1` at 0xda608a8, `swc1` at 0xda60a90, `swc1` at 0xda60d88.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7664, including `swc1` at 0xda608ac, `swc1` at 0xda60a94, `swc1` at 0xda60d78.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7674, including `swc1` at 0xda608b4, `swc1` at 0xda60a9c, `swc1` at 0xda60d80.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda608b8, `lwc1` at 0xda60aa0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x769c, including `lwc1` at 0xda608c8, `lwc1` at 0xda60ab0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x768c, including `lwc1` at 0xda608cc, `lwc1` at 0xda60ab4.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7668, including `swc1` at 0xda608d0, `swc1` at 0xda60abc.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x763c, including `swc1` at 0xda608d4, `swc1` at 0xda60ab8.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7678, including `swc1` at 0xda608dc, `swc1` at 0xda60ac4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda608e0, `lwc1` at 0xda60ac8.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x76a0, including `lwc1` at 0xda608f0, `lwc1` at 0xda60ad8.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7690, including `lwc1` at 0xda608f4, `lwc1` at 0xda60adc.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x766c, including `swc1` at 0xda608f8, `swc1` at 0xda60ae4.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7640, including `swc1` at 0xda608fc, `swc1` at 0xda60ae0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x767c, including `swc1` at 0xda60904, `swc1` at 0xda60aec.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lwc1` at 0xda6090c, `lwc1` at 0xda60af4.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7670, including `swc1` at 0xda60918, `swc1` at 0xda60b00.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7680, including `swc1` at 0xda60920, `swc1` at 0xda60b08.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7644, including `swc1` at 0xda60924, `swc1` at 0xda60b0c.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x8c, including `lwc1` at 0xda60934, `lwc1` at 0xda60b1c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x76e4, including `lwc1` at 0xda60938, `lwc1` at 0xda60b20.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x30, including `lwc1` at 0xda6093c, `lwc1` at 0xda60b24.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x76f8, including `lwc1` at 0xda60940, `lwc1` at 0xda60b28.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x76e8, including `lwc1` at 0xda60954, `lwc1` at 0xda60b3c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x76bc, including `swc1` at 0xda60958, `swc1` at 0xda60b44.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7648, including `swc1` at 0xda6095c, `swc1` at 0xda60b40.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x76d0, including `swc1` at 0xda60964, `swc1` at 0xda60b4c.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x34, including `lwc1` at 0xda60968, `lwc1` at 0xda60b50.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x76fc, including `lwc1` at 0xda6096c, `lwc1` at 0xda60b54.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x76ec, including `lwc1` at 0xda60980, `lwc1` at 0xda60b68.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x76c0, including `swc1` at 0xda60984, `swc1` at 0xda60b70.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x764c, including `swc1` at 0xda60988, `swc1` at 0xda60b6c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x76d4, including `swc1` at 0xda60990, `swc1` at 0xda60b78.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x38, including `lwc1` at 0xda60994, `lwc1` at 0xda60b7c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7700, including `lwc1` at 0xda60998, `lwc1` at 0xda60b80.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x76f0, including `lwc1` at 0xda609ac, `lwc1` at 0xda60b94.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x76c4, including `swc1` at 0xda609b0, `swc1` at 0xda60b9c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7650, including `swc1` at 0xda609b4, `swc1` at 0xda60b98.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x76d8, including `swc1` at 0xda609bc, `swc1` at 0xda60ba4.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x3c, including `lwc1` at 0xda609c0, `lwc1` at 0xda60ba8.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7704, including `lwc1` at 0xda609c4, `lwc1` at 0xda60bac.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7708, including `lwc1` at 0xda609d8, `lwc1` at 0xda60bc0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x76f4, including `lwc1` at 0xda609dc, `lwc1` at 0xda60bc4.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x76c8, including `swc1` at 0xda609e0, `swc1` at 0xda60bcc.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7654, including `swc1` at 0xda609e4, `swc1` at 0xda60bc8.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x76dc, including `swc1` at 0xda609ec, `swc1` at 0xda60bd4.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0xb4, including `lwc1` at 0xda609f4, `lwc1` at 0xda60bdc.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x76cc, including `swc1` at 0xda60a00, `swc1` at 0xda60be8.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x76e0, including `swc1` at 0xda60a08, `swc1` at 0xda60bf0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7658, including `swc1` at 0xda60a0c, `swc1` at 0xda60bf4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x700, including `lw` at 0xda60a18, `lw` at 0xda60c00.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x76b4, including `lwc1` at 0xda60a50, `lwc1` at 0xda60c38, `lwc1` at 0xda60c4c.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x76b8, including `lwc1` at 0xda60a54, `lwc1` at 0xda60c3c, `lwc1` at 0xda60c48.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x7634, including `sw` at 0xda60a5c, `sw` at 0xda60c44, `sw` at 0xda60c64.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x88, including `lwc1` at 0xda60c50, `lwc1` at 0xda60ccc.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x76a4, including `swc1` at 0xda60c74, `swc1` at 0xda60cf0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x76a8, including `swc1` at 0xda60c7c, `swc1` at 0xda60cf8.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7718, including `lwc1` at 0xda60c88, `lwc1` at 0xda60d04.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7714, including `lwc1` at 0xda60c8c, `lwc1` at 0xda60d08.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x770c, including `swc1` at 0xda60ca8, `swc1` at 0xda60d20.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7710, including `swc1` at 0xda60cb0, `swc1` at 0xda60d28.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x765c, including `swc1` at 0xda60cb4, `swc1` at 0xda60d2c.
  The `bgezall` at 0xda60a3c calls __glPolygonOffsetZ [0xda62d90] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f14=f16, f15=f17.
  The `bgezall` at 0xda60c24 calls __glPolygonOffsetZ [0xda62d90] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=([a0+1792] << 0x27); fp f14=f16, f15=f17.
  The `bc1f` branch at 0xda60870 targets 0xda60a60, is taken when not (f24 < f0 (c.lt.s at 0xda60848)), and falls through when f24 < f0 (c.lt.s at 0xda60848).
  The `beq` branch at 0xda60878 targets 0xda60d58, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xda60880 targets 0xda6092c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xda6092c targets 0xda60a10, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xda60a10 targets 0xda60c80, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bgez` branch at 0xda60a20 targets 0xda60c48, is taken when a0(=([a0+1792] << 0x27)) >= 0 (signed), and falls through when a0(=([a0+1792] << 0x27)) < 0 (signed).
  The `beq` branch at 0xda60a58 targets 0xda60c68 and is always taken.
  The `beq` branch at 0xda60a60 targets 0xda60d8c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xda60a68 targets 0xda60b10, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xda60b14 targets 0xda60bf8, is taken when (t0(=[a0+30492]) & 0x8) == 0, and falls through when (t0(=[a0+30492]) & 0x8) != 0.
  The `beq` branch at 0xda60bf8 targets 0xda60cfc, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bgez` branch at 0xda60c08 targets 0xda60cc4, is taken when a3(=([a0+1792] << 0x27)) >= 0 (signed), and falls through when a3(=([a0+1792] << 0x27)) < 0 (signed).
  The `beq` branch at 0xda60c40 targets 0xda60ce4 and is always taken.
  The `beq` branch at 0xda60c80 targets 0xda60d40, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xda60cfc targets 0xda60d40, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xda60d58 targets 0xda60a10, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xda60d84 targets 0xda60a10 and is always taken.
  The `beq` branch at 0xda60d8c targets 0xda60bf8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xda60db8 targets 0xda60bf8 and is always taken.
  The return at 0xda60cbc has v0 = ?.
  The return at 0xda60d38 has v0 = ?.
  The return at 0xda60d50 has v0 = ?.

- `glBlendColorEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacde00 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacde00-0xdacde0c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde00 loads 4 bytes from abs 0x12f0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde04).

- `glBlendEquationEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacde0c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacde0c-0xdacde18 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde0c loads 4 bytes from abs 0x12f4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde10).

- `glTexSubImage1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacde24 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacde24-0xdacde30 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde24 loads 4 bytes from abs 0x12fc.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde28).

- `glTexSubImage2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacde30 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacde30-0xdacde3c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde30 loads 4 bytes from abs 0x1300.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde34).

- `glConvolutionFilter1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacde3c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacde3c-0xdacde48 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde3c loads 4 bytes from abs 0x1304.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde40).

- `glConvolutionFilter2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacde48 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacde48-0xdacde54 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde48 loads 4 bytes from abs 0x1308.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde4c).

- `glConvolutionParameterfEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacde54 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacde54-0xdacde60 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde54 loads 4 bytes from abs 0x130c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde58).

- `glConvolutionParameterfvEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacde60 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacde60-0xdacde6c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde60 loads 4 bytes from abs 0x1310.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde64).

- `glConvolutionParameteriEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacde6c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacde6c-0xdacde78 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde6c loads 4 bytes from abs 0x1314.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde70).

- `glConvolutionParameterivEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacde78 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacde78-0xdacde84 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde78 loads 4 bytes from abs 0x1318.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde7c).

- `glCopyConvolutionFilter1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacde84 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacde84-0xdacde90 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde84 loads 4 bytes from abs 0x131c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde88).

- `glCopyConvolutionFilter2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacde90 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacde90-0xdacde9c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacde90 loads 4 bytes from abs 0x1320.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacde94).

- `glSeparableFilter2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacdecc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacdecc-0xdacded8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacdecc loads 4 bytes from abs 0x1334.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacded0).

- `glHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacdf20 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacdf20-0xdacdf2c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacdf20 loads 4 bytes from abs 0x1350.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdf24).

- `glMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacdf2c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacdf2c-0xdacdf38 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacdf2c loads 4 bytes from abs 0x1354.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdf30).

- `glTexImage3DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacdf50 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacdf50-0xdacdf5c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacdf50 loads 4 bytes from abs 0x1360.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdf54).

- `glTexSubImage3DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacdf5c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacdf5c-0xdacdf68 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacdf5c loads 4 bytes from abs 0x1364.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdf60).

- `glArrayElementEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacdf68 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacdf68-0xdacdf74 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacdf68 loads 4 bytes from abs 0x1368.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdf6c).

- `glGetPointervEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacdf98 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdacdf98-0xdacdfa4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdacdf98 loads 4 bytes from abs 0x1378.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdacdf9c).

- `glCopyTexImage1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace01c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace01c-0xdace028 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace01c loads 4 bytes from abs 0x13a4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace020).

- `glCopyTexImage2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace028 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace028-0xdace034 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace028 loads 4 bytes from abs 0x13a8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace02c).

- `glCopyTexSubImage1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace034 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace034-0xdace040 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace034 loads 4 bytes from abs 0x13ac.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace038).

- `glCopyTexSubImage2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace040 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace040-0xdace04c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace040 loads 4 bytes from abs 0x13b0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace044).

- `glCopyTexSubImage3DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace04c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace04c-0xdace058 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace04c loads 4 bytes from abs 0x13b4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace050).

- `glColorTableSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace148 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace148-0xdace154 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace148 loads 4 bytes from abs 0x1408.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace14c).

- `glColorTableParameterfvSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace154 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace154-0xdace160 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace154 loads 4 bytes from abs 0x140c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace158).

- `glColorTableParameterivSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace160 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace160-0xdace16c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace160 loads 4 bytes from abs 0x1410.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace164).

- `glCopyColorTableSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace16c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace16c-0xdace178 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace16c loads 4 bytes from abs 0x1414.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace170).

- `glPointParameterfSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace208 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace208-0xdace214 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace208 loads 4 bytes from abs 0x1448.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace20c).

- `glPointParameterfvSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdace214 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdace214-0xdace220 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdace214 loads 4 bytes from abs 0x144c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdace218).

- `glColor3b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad8000 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad8000-0xdad8080 (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0xdad8000 loads 4 bytes from abs 0x15d8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdad8004).
  The instructions from 0xdad800c to 0xdad807c are not reached by any path from the entry, and their branches are not listed.

- `glVertex2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdada900 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdada900-0xdadaa00 (256 bytes).
  It occupies 256 bytes.
  The `lw` at 0xdada900 loads 4 bytes from abs 0x1578.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdada904).
  The instructions from 0xdada90c to 0xdada9fc are not reached by any path from the entry, and their branches are not listed.

- `__glDTP_NEVER` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae1f14 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae1f14-0xdae1f20 (12 bytes).
  It occupies 12 bytes.
  The `beq` branch at 0xdae1f18 targets 0xdae1e88 and is always taken.

- `__glDTP_LEQUAL` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae1f20 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae1f20-0xdae1f40 (32 bytes).
  It occupies 32 bytes.
  The `sw` at 0xdae1f30 stores 4 bytes to a7 (arg7 at entry) +0x0.
  The `bne` branch at 0xdae1f24 targets 0xdae1f34, is taken when a3 < t0 (unsigned), and falls through when a3 >= t0 (unsigned).
  The `beq` branch at 0xdae1f2c targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae1f38 targets 0xdae1e88 and is always taken.

- `__glDTP_LEQUAL_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae1f40 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae1f40-0xdae1f60 (32 bytes).
  It occupies 32 bytes.
  The `sw` at 0xdae1f50 stores 4 bytes to a7 (arg7 at entry) +0x0.
  The `bne` branch at 0xdae1f44 targets 0xdae1f54, is taken when a3 < t0 (signed), and falls through when a3 >= t0 (signed).
  The `beq` branch at 0xdae1f4c targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae1f58 targets 0xdae1e88 and is always taken.

- `__glDTP_LESS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae1f60 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae1f60-0xdae1f80 (32 bytes).
  It occupies 32 bytes.
  The `sw` at 0xdae1f70 stores 4 bytes to a7 (arg7 at entry) +0x0.
  The `beq` branch at 0xdae1f64 targets 0xdae1f74, is taken when t0 >= a3 (unsigned), and falls through when t0 < a3 (unsigned).
  The `beq` branch at 0xdae1f6c targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae1f78 targets 0xdae1e88 and is always taken.

- `__glDTP_LESS_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae1f80 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae1f80-0xdae1fa0 (32 bytes).
  It occupies 32 bytes.
  The `sw` at 0xdae1f90 stores 4 bytes to a7 (arg7 at entry) +0x0.
  The `beq` branch at 0xdae1f84 targets 0xdae1f94, is taken when t0 >= a3 (signed), and falls through when t0 < a3 (signed).
  The `beq` branch at 0xdae1f8c targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae1f98 targets 0xdae1e88 and is always taken.

- `__glDTP_EQUAL` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae1fa0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae1fa0-0xdae1fbc (28 bytes).
  It occupies 28 bytes.
  The `sw` at 0xdae1fac stores 4 bytes to a7 (arg7 at entry) +0x0.
  The `bne` branch at 0xdae1fa0 targets 0xdae1fb0, is taken when t0 != a3, and falls through when t0 == a3.
  The `beq` branch at 0xdae1fa8 targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae1fb4 targets 0xdae1e88 and is always taken.

- `__glDTP_GREATER` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae1fbc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae1fbc-0xdae1fdc (32 bytes).
  It occupies 32 bytes.
  The `sw` at 0xdae1fcc stores 4 bytes to a7 (arg7 at entry) +0x0.
  The `beq` branch at 0xdae1fc0 targets 0xdae1fd0, is taken when a3 >= t0 (unsigned), and falls through when a3 < t0 (unsigned).
  The `beq` branch at 0xdae1fc8 targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae1fd4 targets 0xdae1e88 and is always taken.

- `__glDTP_GREATER_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae1fdc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae1fdc-0xdae1ffc (32 bytes).
  It occupies 32 bytes.
  The `sw` at 0xdae1fec stores 4 bytes to a7 (arg7 at entry) +0x0.
  The `beq` branch at 0xdae1fe0 targets 0xdae1ff0, is taken when a3 >= t0 (signed), and falls through when a3 < t0 (signed).
  The `beq` branch at 0xdae1fe8 targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae1ff4 targets 0xdae1e88 and is always taken.

- `__glDTP_NOTEQUAL` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae1ffc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae1ffc-0xdae2018 (28 bytes).
  It occupies 28 bytes.
  The `sw` at 0xdae2008 stores 4 bytes to a7 (arg7 at entry) +0x0.
  The `beq` branch at 0xdae1ffc targets 0xdae200c, is taken when t0 == a3, and falls through when t0 != a3.
  The `beq` branch at 0xdae2004 targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae2010 targets 0xdae1e88 and is always taken.

- `__glDTP_GEQUAL` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2018 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2018-0xdae2038 (32 bytes).
  It occupies 32 bytes.
  The `sw` at 0xdae2028 stores 4 bytes to a7 (arg7 at entry) +0x0.
  The `bne` branch at 0xdae201c targets 0xdae202c, is taken when t0 < a3 (unsigned), and falls through when t0 >= a3 (unsigned).
  The `beq` branch at 0xdae2024 targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae2030 targets 0xdae1e88 and is always taken.

- `__glDTP_GEQUAL_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2038 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2038-0xdae2058 (32 bytes).
  It occupies 32 bytes.
  The `sw` at 0xdae2048 stores 4 bytes to a7 (arg7 at entry) +0x0.
  The `bne` branch at 0xdae203c targets 0xdae204c, is taken when t0 < a3 (signed), and falls through when t0 >= a3 (signed).
  The `beq` branch at 0xdae2044 targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae2050 targets 0xdae1e88 and is always taken.

- `__glDTP_ALWAYS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2058 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2058-0xdae2064 (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0xdae2060 stores 4 bytes to a7 (arg7 at entry) +0x0.
  The `beq` branch at 0xdae205c targets 0xdae1e88 and is always taken.

- `__glDTP_LEQUAL_M` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2064 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2064-0xdae2084 (32 bytes).
  It occupies 32 bytes.
  The `bne` branch at 0xdae2068 targets 0xdae2078, is taken when a3 < t0 (unsigned), and falls through when a3 >= t0 (unsigned).
  The `beq` branch at 0xdae2070 targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae207c targets 0xdae1e88 and is always taken.

- `__glDTP_LEQUAL_M_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2084 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2084-0xdae20a4 (32 bytes).
  It occupies 32 bytes.
  The `bne` branch at 0xdae2088 targets 0xdae2098, is taken when a3 < t0 (signed), and falls through when a3 >= t0 (signed).
  The `beq` branch at 0xdae2090 targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae209c targets 0xdae1e88 and is always taken.

- `__glDTP_LESS_M` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae20a4 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae20a4-0xdae20c4 (32 bytes).
  It occupies 32 bytes.
  The `beq` branch at 0xdae20a8 targets 0xdae20b8, is taken when t0 >= a3 (unsigned), and falls through when t0 < a3 (unsigned).
  The `beq` branch at 0xdae20b0 targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae20bc targets 0xdae1e88 and is always taken.

- `__glDTP_LESS_M_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae20c4 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae20c4-0xdae20e4 (32 bytes).
  It occupies 32 bytes.
  The `beq` branch at 0xdae20c8 targets 0xdae20d8, is taken when t0 >= a3 (signed), and falls through when t0 < a3 (signed).
  The `beq` branch at 0xdae20d0 targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae20dc targets 0xdae1e88 and is always taken.

- `__glDTP_EQUAL_M` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae20e4 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae20e4-0xdae2100 (28 bytes).
  It occupies 28 bytes.
  The `bne` branch at 0xdae20e4 targets 0xdae20f4, is taken when t0 != a3, and falls through when t0 == a3.
  The `beq` branch at 0xdae20ec targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae20f8 targets 0xdae1e88 and is always taken.

- `__glDTP_GREATER_M` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2100 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2100-0xdae2120 (32 bytes).
  It occupies 32 bytes.
  The `beq` branch at 0xdae2104 targets 0xdae2114, is taken when a3 >= t0 (unsigned), and falls through when a3 < t0 (unsigned).
  The `beq` branch at 0xdae210c targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae2118 targets 0xdae1e88 and is always taken.

- `__glDTP_GREATER_M_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2120 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2120-0xdae2140 (32 bytes).
  It occupies 32 bytes.
  The `beq` branch at 0xdae2124 targets 0xdae2134, is taken when a3 >= t0 (signed), and falls through when a3 < t0 (signed).
  The `beq` branch at 0xdae212c targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae2138 targets 0xdae1e88 and is always taken.

- `__glDTP_NOTEQUAL_M` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2140 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2140-0xdae215c (28 bytes).
  It occupies 28 bytes.
  The `beq` branch at 0xdae2140 targets 0xdae2150, is taken when t0 == a3, and falls through when t0 != a3.
  The `beq` branch at 0xdae2148 targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae2154 targets 0xdae1e88 and is always taken.

- `__glDTP_GEQUAL_M` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae215c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae215c-0xdae217c (32 bytes).
  It occupies 32 bytes.
  The `bne` branch at 0xdae2160 targets 0xdae2170, is taken when t0 < a3 (unsigned), and falls through when t0 >= a3 (unsigned).
  The `beq` branch at 0xdae2168 targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae2174 targets 0xdae1e88 and is always taken.

- `__glDTP_GEQUAL_M_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae217c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae217c-0xdae219c (32 bytes).
  It occupies 32 bytes.
  The `bne` branch at 0xdae2180 targets 0xdae2190, is taken when t0 < a3 (signed), and falls through when t0 >= a3 (signed).
  The `beq` branch at 0xdae2188 targets 0xdae1e88 and is always taken.
  The `beq` branch at 0xdae2194 targets 0xdae1e88 and is always taken.

- `__glDTP_ALWAYS_M` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae219c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae219c-0xdae21b0 (20 bytes).
  It occupies 20 bytes.
  The `beq` branch at 0xdae21a0 targets 0xdae1e88 and is always taken.
  The instructions from 0xdae21a8 to 0xdae21ac are not reached by any path from the entry, and their branches are not listed.

- `__glDTS_NEVER` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae243c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae243c-0xdae244c (16 bytes).
  It occupies 16 bytes.
  The return at 0xdae2444 has v0 = ?.

- `__glDTS_LEQUAL` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae244c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae244c-0xdae2474 (40 bytes).
  It occupies 40 bytes.
  The `sw` at 0xdae2458 stores 4 bytes to t2 +0x0.
  The `bne` branch at 0xdae2450 targets 0xdae2464, is taken when t1 < t0 (unsigned), and falls through when t1 >= t0 (unsigned).
  The return at 0xdae245c has v0 = ?.
  The return at 0xdae246c has v0 = ?.

- `__glDTS_LEQUAL_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2474 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2474-0xdae249c (40 bytes).
  It occupies 40 bytes.
  The `sw` at 0xdae2480 stores 4 bytes to t2 +0x0.
  The `bne` branch at 0xdae2478 targets 0xdae248c, is taken when t1 < t0 (signed), and falls through when t1 >= t0 (signed).
  The return at 0xdae2484 has v0 = ?.
  The return at 0xdae2494 has v0 = ?.

- `__glDTS_LESS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae249c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae249c-0xdae24c4 (40 bytes).
  It occupies 40 bytes.
  The `sw` at 0xdae24a8 stores 4 bytes to t2 +0x0.
  The `beq` branch at 0xdae24a0 targets 0xdae24b4, is taken when t0 >= t1 (unsigned), and falls through when t0 < t1 (unsigned).
  The return at 0xdae24ac has v0 = ?.
  The return at 0xdae24bc has v0 = ?.

- `__glDTS_LESS_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae24c4 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae24c4-0xdae24ec (40 bytes).
  It occupies 40 bytes.
  The `sw` at 0xdae24d0 stores 4 bytes to t2 +0x0.
  The `beq` branch at 0xdae24c8 targets 0xdae24dc, is taken when t0 >= t1 (signed), and falls through when t0 < t1 (signed).
  The return at 0xdae24d4 has v0 = ?.
  The return at 0xdae24e4 has v0 = ?.

- `__glDTS_EQUAL` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae24ec (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae24ec-0xdae2510 (36 bytes).
  It occupies 36 bytes.
  The `sw` at 0xdae24f4 stores 4 bytes to t2 +0x0.
  The `bne` branch at 0xdae24ec targets 0xdae2500, is taken when t0 != t1, and falls through when t0 == t1.
  The return at 0xdae24f8 has v0 = ?.
  The return at 0xdae2508 has v0 = ?.

- `__glDTS_GREATER` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2510 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2510-0xdae2538 (40 bytes).
  It occupies 40 bytes.
  The `sw` at 0xdae251c stores 4 bytes to t2 +0x0.
  The `beq` branch at 0xdae2514 targets 0xdae2528, is taken when t1 >= t0 (unsigned), and falls through when t1 < t0 (unsigned).
  The return at 0xdae2520 has v0 = ?.
  The return at 0xdae2530 has v0 = ?.

- `__glDTS_GREATER_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2538 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2538-0xdae2560 (40 bytes).
  It occupies 40 bytes.
  The `sw` at 0xdae2544 stores 4 bytes to t2 +0x0.
  The `beq` branch at 0xdae253c targets 0xdae2550, is taken when t1 >= t0 (signed), and falls through when t1 < t0 (signed).
  The return at 0xdae2548 has v0 = ?.
  The return at 0xdae2558 has v0 = ?.

- `__glDTS_NOTEQUAL` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2560 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2560-0xdae2584 (36 bytes).
  It occupies 36 bytes.
  The `sw` at 0xdae2568 stores 4 bytes to t2 +0x0.
  The `beq` branch at 0xdae2560 targets 0xdae2574, is taken when t0 == t1, and falls through when t0 != t1.
  The return at 0xdae256c has v0 = ?.
  The return at 0xdae257c has v0 = ?.

- `__glDTS_GEQUAL` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2584 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2584-0xdae25ac (40 bytes).
  It occupies 40 bytes.
  The `sw` at 0xdae2590 stores 4 bytes to t2 +0x0.
  The `bne` branch at 0xdae2588 targets 0xdae259c, is taken when t0 < t1 (unsigned), and falls through when t0 >= t1 (unsigned).
  The return at 0xdae2594 has v0 = ?.
  The return at 0xdae25a4 has v0 = ?.

- `__glDTS_GEQUAL_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae25ac (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae25ac-0xdae25d4 (40 bytes).
  It occupies 40 bytes.
  The `sw` at 0xdae25b8 stores 4 bytes to t2 +0x0.
  The `bne` branch at 0xdae25b0 targets 0xdae25c4, is taken when t0 < t1 (signed), and falls through when t0 >= t1 (signed).
  The return at 0xdae25bc has v0 = ?.
  The return at 0xdae25cc has v0 = ?.

- `__glDTS_ALWAYS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae25d4 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae25d4-0xdae25e0 (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0xdae25d4 stores 4 bytes to t2 +0x0.
  The return at 0xdae25d8 has v0 = ?.

- `__glDTS_LEQUAL_M` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae25e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae25e0-0xdae2600 (32 bytes).
  It occupies 32 bytes.
  The `bne` branch at 0xdae25e4 targets 0xdae25f4, is taken when t1 < t0 (unsigned), and falls through when t1 >= t0 (unsigned).
  The return at 0xdae25ec has v0 = ?.
  The return at 0xdae25f8 has v0 = ?.

- `__glDTS_LEQUAL_M_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2600 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2600-0xdae2620 (32 bytes).
  It occupies 32 bytes.
  The `bne` branch at 0xdae2604 targets 0xdae2614, is taken when t1 < t0 (signed), and falls through when t1 >= t0 (signed).
  The return at 0xdae260c has v0 = ?.
  The return at 0xdae2618 has v0 = ?.

- `__glDTS_LESS_M` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2620 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2620-0xdae2640 (32 bytes).
  It occupies 32 bytes.
  The `beq` branch at 0xdae2624 targets 0xdae2634, is taken when t0 >= t1 (unsigned), and falls through when t0 < t1 (unsigned).
  The return at 0xdae262c has v0 = ?.
  The return at 0xdae2638 has v0 = ?.

- `__glDTS_LESS_M_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2640 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2640-0xdae2660 (32 bytes).
  It occupies 32 bytes.
  The `beq` branch at 0xdae2644 targets 0xdae2654, is taken when t0 >= t1 (signed), and falls through when t0 < t1 (signed).
  The return at 0xdae264c has v0 = ?.
  The return at 0xdae2658 has v0 = ?.

- `__glDTS_EQUAL_M` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2660 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2660-0xdae267c (28 bytes).
  It occupies 28 bytes.
  The `bne` branch at 0xdae2660 targets 0xdae2670, is taken when t0 != t1, and falls through when t0 == t1.
  The return at 0xdae2668 has v0 = ?.
  The return at 0xdae2674 has v0 = ?.

- `__glDTS_GREATER_M` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae267c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae267c-0xdae269c (32 bytes).
  It occupies 32 bytes.
  The `beq` branch at 0xdae2680 targets 0xdae2690, is taken when t1 >= t0 (unsigned), and falls through when t1 < t0 (unsigned).
  The return at 0xdae2688 has v0 = ?.
  The return at 0xdae2694 has v0 = ?.

- `__glDTS_GREATER_M_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae269c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae269c-0xdae26bc (32 bytes).
  It occupies 32 bytes.
  The `beq` branch at 0xdae26a0 targets 0xdae26b0, is taken when t1 >= t0 (signed), and falls through when t1 < t0 (signed).
  The return at 0xdae26a8 has v0 = ?.
  The return at 0xdae26b4 has v0 = ?.

- `__glDTS_NOTEQUAL_M` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae26bc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae26bc-0xdae26d8 (28 bytes).
  It occupies 28 bytes.
  The `beq` branch at 0xdae26bc targets 0xdae26cc, is taken when t0 == t1, and falls through when t0 != t1.
  The return at 0xdae26c4 has v0 = ?.
  The return at 0xdae26d0 has v0 = ?.

- `__glDTS_GEQUAL_M` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae26d8 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae26d8-0xdae26f8 (32 bytes).
  It occupies 32 bytes.
  The `bne` branch at 0xdae26dc targets 0xdae26ec, is taken when t0 < t1 (unsigned), and falls through when t0 >= t1 (unsigned).
  The return at 0xdae26e4 has v0 = ?.
  The return at 0xdae26f0 has v0 = ?.

- `__glDTS_GEQUAL_M_s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae26f8 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae26f8-0xdae2718 (32 bytes).
  It occupies 32 bytes.
  The `bne` branch at 0xdae26fc targets 0xdae270c, is taken when t0 < t1 (signed), and falls through when t0 >= t1 (signed).
  The return at 0xdae2704 has v0 = ?.
  The return at 0xdae2710 has v0 = ?.

- `__glDTS_ALWAYS_M` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2718 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2718-0xdae2720 (8 bytes).
  It occupies 8 bytes.
  The return at 0xdae2718 has v0 = ?.

- `__glMipsChangeMaterialEmission` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2ca0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2ca0-0xdae2d14 (116 bytes).
  It occupies 116 bytes.
  The `lwc1` at 0xdae2ca0 loads 4 bytes from a0 (arg0 at entry) +0x1b0.
  The `lwc1` at 0xdae2ca4 loads 4 bytes from a0 (arg0 at entry) +0x7858.
  The `lwc1` at 0xdae2ca8 loads 4 bytes from a0 (arg0 at entry) +0x1b4.
  The `lwc1` at 0xdae2cac loads 4 bytes from a0 (arg0 at entry) +0x785c.
  The `lwc1` at 0xdae2cb0 loads 4 bytes from a0 (arg0 at entry) +0x1b8.
  The `lwc1` at 0xdae2cb8 loads 4 bytes from a0 (arg0 at entry) +0x7860.
  The `lwc1` at 0xdae2cc0 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xdae2cc8 loads 4 bytes from a0 (arg0 at entry) +0x574.
  The `lwc1` at 0xdae2ccc loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xdae2cd0 loads 4 bytes from a0 (arg0 at entry) +0x578.
  The `lwc1` at 0xdae2cd8 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lwc1` at 0xdae2cdc loads 4 bytes from a0 (arg0 at entry) +0x57c.
  The `lwc1` at 0xdae2ce4 loads 4 bytes from a0 (arg0 at entry) +0x1bc.
  The `lwc1` at 0xdae2ce8 loads 4 bytes from a0 (arg0 at entry) +0x7880.
  The `swc1` at 0xdae2cf0 stores 4 bytes to a1 (arg1 at entry) +0x30.
  The `swc1` at 0xdae2cf8 stores 4 bytes to a1 (arg1 at entry) +0x34.
  The `swc1` at 0xdae2cfc stores 4 bytes to a1 (arg1 at entry) +0x38.
  The `swc1` at 0xdae2d00 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `swc1` at 0xdae2d04 stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `swc1` at 0xdae2d08 stores 4 bytes to a2 (arg2 at entry) +0x8.
  The `swc1` at 0xdae2d10 stores 4 bytes to a1 (arg1 at entry) +0x3c.
  The return at 0xdae2d0c has v0 = ?.

- `__glMipsChangeMaterialSpecular` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2d14 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2d14-0xdae2d8c (120 bytes).
  It occupies 120 bytes.
  The `lwc1` at 0xdae2d14 loads 4 bytes from a0 (arg0 at entry) +0x1b0.
  The `lwc1` at 0xdae2d18 loads 4 bytes from a0 (arg0 at entry) +0x1b4.
  The `lwc1` at 0xdae2d1c loads 4 bytes from a0 (arg0 at entry) +0x1b8.
  The `lwc1` at 0xdae2d20 loads 4 bytes from a0 (arg0 at entry) +0x1bc.
  The `swc1` at 0xdae2d24 stores 4 bytes to a1 (arg1 at entry) +0x20.
  The `swc1` at 0xdae2d28 stores 4 bytes to a1 (arg1 at entry) +0x24.
  The `swc1` at 0xdae2d2c stores 4 bytes to a1 (arg1 at entry) +0x28.
  The `swc1` at 0xdae2d30 stores 4 bytes to a1 (arg1 at entry) +0x2c.
  The `lw` at 0xdae2d34 loads 4 bytes from a0 (arg0 at entry) +0x6e4c.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdae2d50, `lw` at 0xdae2d6c.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xdae2d58, `lwc1` at 0xdae2d5c, `lwc1` at 0xdae2d60.
  3 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xdae2d74, `swc1` at 0xdae2d78, `swc1` at 0xdae2d80.
  The `beq` branch at 0xdae2d48 targets 0xdae2d84, is taken when v0(=[a0+28236]) == 0, and falls through when v0(=[a0+28236]) != 0.
  The `bne` branch at 0xdae2d7c targets 0xdae2d50, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The return at 0xdae2d84 has v0 = one of [a0+28236], ?.

- `__glMipsChangeMaterialAmbient` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2d8c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2d8c-0xdae2e30 (164 bytes).
  It occupies 164 bytes.
  The `lwc1` at 0xdae2d8c loads 4 bytes from a0 (arg0 at entry) +0x1b0.
  The `lwc1` at 0xdae2d90 loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `lwc1` at 0xdae2d94 loads 4 bytes from a0 (arg0 at entry) +0x574.
  The `lwc1` at 0xdae2d98 loads 4 bytes from a0 (arg0 at entry) +0x1b4.
  The `lwc1` at 0xdae2da0 loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `lwc1` at 0xdae2da4 loads 4 bytes from a0 (arg0 at entry) +0x578.
  The `lwc1` at 0xdae2da8 loads 4 bytes from a1 (arg1 at entry) +0x38.
  The `lwc1` at 0xdae2db0 loads 4 bytes from a0 (arg0 at entry) +0x1b8.
  The `lwc1` at 0xdae2db4 loads 4 bytes from a0 (arg0 at entry) +0x57c.
  The `lwc1` at 0xdae2db8 loads 4 bytes from a0 (arg0 at entry) +0x1bc.
  The `swc1` at 0xdae2dbc stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lw` at 0xdae2dc4 loads 4 bytes from a0 (arg0 at entry) +0x6e4c.
  The `swc1` at 0xdae2dcc stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `swc1` at 0xdae2dd0 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `swc1` at 0xdae2dd4 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `swc1` at 0xdae2dd8 stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `swc1` at 0xdae2ddc stores 4 bytes to a2 (arg2 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdae2df4, `lw` at 0xdae2e10.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xdae2dfc, `lwc1` at 0xdae2e00, `lwc1` at 0xdae2e04.
  3 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xdae2e18, `swc1` at 0xdae2e1c, `swc1` at 0xdae2e24.
  The `swc1` at 0xdae2e2c stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `beq` branch at 0xdae2dec targets 0xdae2e28, is taken when t1(=[a0+28236]) == 0, and falls through when t1(=[a0+28236]) != 0.
  The `bne` branch at 0xdae2e20 targets 0xdae2df4, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The return at 0xdae2e28 has v0 = ?.

- `__glMipsChangeMaterialDiffuse` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2e30 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2e30-0xdae2ecc (156 bytes).
  It occupies 156 bytes.
  The `lwc1` at 0xdae2e30 loads 4 bytes from a0 (arg0 at entry) +0x1b0.
  The `lwc1` at 0xdae2e34 loads 4 bytes from a0 (arg0 at entry) +0x1b4.
  The `lwc1` at 0xdae2e38 loads 4 bytes from a0 (arg0 at entry) +0x1b8.
  The `lwc1` at 0xdae2e3c loads 4 bytes from a0 (arg0 at entry) +0x1bc.
  The `swc1` at 0xdae2e40 stores 4 bytes to a1 (arg1 at entry) +0x10.
  The `swc1` at 0xdae2e44 stores 4 bytes to a1 (arg1 at entry) +0x14.
  The `swc1` at 0xdae2e48 stores 4 bytes to a1 (arg1 at entry) +0x18.
  The `swc1` at 0xdae2e4c stores 4 bytes to a1 (arg1 at entry) +0x1c.
  The `lwc1` at 0xdae2e60 loads 4 bytes from a0 (arg0 at entry) +0x7880.
  The `lw` at 0xdae2e74 loads 4 bytes from a0 (arg0 at entry) +0x6e4c.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdae2e90, `lw` at 0xdae2eac.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xdae2e98, `lwc1` at 0xdae2e9c, `lwc1` at 0xdae2ea0.
  3 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xdae2eb4, `swc1` at 0xdae2eb8, `swc1` at 0xdae2ec0.
  The `swc1` at 0xdae2ec8 stores 4 bytes to a2 (arg2 at entry) +0x24.
  The `beq` branch at 0xdae2e88 targets 0xdae2ec4, is taken when t9(=[a0+28236]) == 0, and falls through when t9(=[a0+28236]) != 0.
  The `bne` branch at 0xdae2ebc targets 0xdae2e90, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The return at 0xdae2ec4 has v0 = a0+28196.

- `__glMipsChangeMaterialAmbientAndDiffuse` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae2ecc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae2ecc-0xdae2fc4 (248 bytes).
  It occupies 248 bytes.
  The `lwc1` at 0xdae2ecc loads 4 bytes from a0 (arg0 at entry) +0x1b0.
  The `lwc1` at 0xdae2ed0 loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `lwc1` at 0xdae2ed4 loads 4 bytes from a0 (arg0 at entry) +0x574.
  The `lwc1` at 0xdae2ed8 loads 4 bytes from a0 (arg0 at entry) +0x1b4.
  The `lwc1` at 0xdae2ee0 loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `lwc1` at 0xdae2ee4 loads 4 bytes from a0 (arg0 at entry) +0x578.
  The `lwc1` at 0xdae2ee8 loads 4 bytes from a1 (arg1 at entry) +0x38.
  The `lwc1` at 0xdae2ef0 loads 4 bytes from a0 (arg0 at entry) +0x1b8.
  The `lwc1` at 0xdae2ef4 loads 4 bytes from a0 (arg0 at entry) +0x57c.
  The `ld` at 0xdae2ef8 loads 8 bytes from a0 (arg0 at entry) +0x1b0.
  The `ld` at 0xdae2efc loads 8 bytes from a0 (arg0 at entry) +0x1b8.
  The `lwc1` at 0xdae2f04 loads 4 bytes from a0 (arg0 at entry) +0x1bc.
  The `sd` at 0xdae2f08 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `sd` at 0xdae2f0c stores 8 bytes to a1 (arg1 at entry) +0x10.
  The `sd` at 0xdae2f10 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `sd` at 0xdae2f14 stores 8 bytes to a1 (arg1 at entry) +0x18.
  The `swc1` at 0xdae2f18 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `swc1` at 0xdae2f1c stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `swc1` at 0xdae2f20 stores 4 bytes to a2 (arg2 at entry) +0x8.
  The `lwc1` at 0xdae2f34 loads 4 bytes from a0 (arg0 at entry) +0x7880.
  The `lw` at 0xdae2f48 loads 4 bytes from a0 (arg0 at entry) +0x6e4c.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdae2f64, `lw` at 0xdae2fa8.
  6 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xdae2f6c, `lwc1` at 0xdae2f70, `lwc1` at 0xdae2f74.
  6 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xdae2f94, `swc1` at 0xdae2f9c, `swc1` at 0xdae2fa4.
  The `swc1` at 0xdae2fc0 stores 4 bytes to a2 (arg2 at entry) +0x24.
  The `beq` branch at 0xdae2f5c targets 0xdae2fbc, is taken when a4(=[a0+28236]) == 0, and falls through when a4(=[a0+28236]) != 0.
  The `bne` branch at 0xdae2fb4 targets 0xdae2f64, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The return at 0xdae2fbc has v0 = ?.

- `__glMipsClipCheckSafe2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae3cd8 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae3cd8-0xdae3cf4 (28 bytes).
  It occupies 28 bytes.
  The `lw` at 0xdae3cd8 loads 4 bytes from a0 (arg0 at entry) +0x2ed8.
  The `lwc1` at 0xdae3cdc loads 4 bytes from a1 (arg1 at entry) +0x7c.
  The `lwc1` at 0xdae3ce0 loads 4 bytes from a1 (arg1 at entry) +0x70.
  The `lwc1` at 0xdae3ce8 loads 4 bytes from a1 (arg1 at entry) +0x74.
  The `lwc1` at 0xdae3cf0 loads 4 bytes from a1 (arg1 at entry) +0x78.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdae3cec).

- `__glMipsClipCheckSafe3` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae3cf4 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae3cf4-0xdae3d10 (28 bytes).
  It occupies 28 bytes.
  The `lw` at 0xdae3cf4 loads 4 bytes from a0 (arg0 at entry) +0x2edc.
  The `lwc1` at 0xdae3cf8 loads 4 bytes from a1 (arg1 at entry) +0x7c.
  The `lwc1` at 0xdae3cfc loads 4 bytes from a1 (arg1 at entry) +0x70.
  The `lwc1` at 0xdae3d04 loads 4 bytes from a1 (arg1 at entry) +0x74.
  The `lwc1` at 0xdae3d0c loads 4 bytes from a1 (arg1 at entry) +0x78.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdae3d08).

- `__glMipsClipCheckSafe4` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdae3d10 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdae3d10-0xdae3d2c (28 bytes).
  It occupies 28 bytes.
  The `lw` at 0xdae3d10 loads 4 bytes from a0 (arg0 at entry) +0x2ee0.
  The `lwc1` at 0xdae3d14 loads 4 bytes from a1 (arg1 at entry) +0x7c.
  The `lwc1` at 0xdae3d18 loads 4 bytes from a1 (arg1 at entry) +0x70.
  The `lwc1` at 0xdae3d20 loads 4 bytes from a1 (arg1 at entry) +0x74.
  The `lwc1` at 0xdae3d28 loads 4 bytes from a1 (arg1 at entry) +0x78.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdae3d24).

- `Store` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a8400 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21a8400-0x21a849c (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0x21a8400 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `ld` at 0x21a8410 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0x21a8418 loads 4 bytes from [a0]:8 +0x7cc.
  The `lwc1` at 0x21a841c loads 4 bytes from [a0]:8 +0x7c8.
  The `lw` at 0x21a8428 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x21a842c loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0x21a8430 loads 4 bytes from [a0]:8 +0xf28.
  The `lwc1` at 0x21a8438 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0x21a843c loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x21a845c loads 4 bytes from [a0]:8 +0xfb0.
  The `jalr` at 0x21a8484 calls fprintf with a0=sym(__iob)+64, a1=0x232c000, a2=?, a3=?, a6=[[a0]:8+4020], a7=0x19eab8.
  The return at 0x21a8494 has v0 = ret(fprintf).

- `Pick` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a84a0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21a84a0-0x21a84a8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x21a84a0 has v0 = ?.

- `Fetch` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a84b0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21a84b0-0x21a84b8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x21a84b0 has v0 = ?.

- `StoreStippledSpan` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a84c0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21a84c0-0x21a85f8 (312 bytes).
  It occupies 312 bytes.
  The `ld` at 0x21a84e0 loads 8 bytes from a0 (arg0 at entry) +0x9830.
  The `lw` at 0x21a84e8 loads 4 bytes from a0 (arg0 at entry) +0x9710.
  The `lw` at 0x21a84ec loads 4 bytes from a0 (arg0 at entry) +0x9740.
  The `ld` at 0x21a84f8 loads 8 bytes from a0 (arg0 at entry) +0x9840.
  The `ld` at 0x21a8500 loads 8 bytes from a0 (arg0 at entry) +0x9820.
  The `lw` at 0x21a850c loads 4 bytes from a0 (arg0 at entry) +0x970c.
  The `lw` at 0x21a8554 loads 4 bytes from ?.
  The `lwc1` at 0x21a857c loads 4 bytes from ?.
  The `ld` at 0x21a8584 loads 8 bytes from [a0+38976]:8 +0xe0.
  The `jalr` at 0x21a858c calls (unknown callee) with a0=[a0+38976]:8, a1=sp-160, a2=?, a3=?.
  The `beq` branch at 0x21a8508 targets 0x21a85d4, is taken when s7(=[a0+38720]) == 0, and falls through when s7(=[a0+38720]) != 0.
  The `bltz` branch at 0x21a8558 targets 0x21a85bc, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `beq` branch at 0x21a8570 targets 0x21a8594, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x21a85a4 targets 0x21a8570, is taken when s4(?) != s6(=-0x1), and falls through when s4(?) == s6(=-0x1).
  The `bne` branch at 0x21a85bc targets 0x21a8530, is taken when s7(?) != 0, and falls through when s7(?) == 0.
  The return at 0x21a85f0 has v0 = 0x0.

- `StoreSpan` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a8600 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21a8600-0x21a86ac (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0x21a8618 loads 4 bytes from a0 (arg0 at entry) +0x9740.
  The `lw` at 0x21a861c loads 4 bytes from a0 (arg0 at entry) +0x9710.
  The `lw` at 0x21a8624 loads 4 bytes from a0 (arg0 at entry) +0x970c.
  The `ld` at 0x21a8644 loads 8 bytes from a0 (arg0 at entry) +0x9840.
  The `ld` at 0x21a864c loads 8 bytes from a0 (arg0 at entry) +0x9820.
  The `lwc1` at 0x21a8664 loads 4 bytes from ?.
  The `ld` at 0x21a866c loads 8 bytes from [a0+38976]:8 +0xe0.
  The `jalr` at 0x21a8678 calls (unknown callee) with a0=[a0+38976]:8, a1=sp-112, a2=?, a3=?.
  The `beq` branch at 0x21a8648 targets 0x21a868c, is taken when s0(=[a0+38668]) >= s3(=([a0+38668] + [a0+38720])) (signed), and falls through when s0(=[a0+38668]) < s3(=([a0+38668] + [a0+38720])) (signed).
  The `bne` branch at 0x21a8684 targets 0x21a8660, is taken when s3(=([a0+38668] + [a0+38720])) != s0(?), and falls through when s3(=([a0+38668] + [a0+38720])) == s0(?).
  The return at 0x21a86a4 has v0 = 0x0.

- `ApplyScissor` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21aa2a0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21aa2a0-0x21aa448 (424 bytes).
  It occupies 424 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xfb4, including `lw` at 0x21aa2a0, `lw` at 0x21aa3e0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xfb0, including `lw` at 0x21aa2a8, `lw` at 0x21aa388.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x94f8, including `lw` at 0x21aa2b8, `lw` at 0x21aa34c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9500, including `lw` at 0x21aa2c4, `lw` at 0x21aa358.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9504, including `lw` at 0x21aa2cc, `lw` at 0x21aa3bc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x94fc, including `lw` at 0x21aa2ec, `lw` at 0x21aa3d0.
  The `sw` at 0x21aa31c stores 4 bytes to a0 (arg0 at entry) +0x18a30.
  The `sw` at 0x21aa32c stores 4 bytes to a0 (arg0 at entry) +0x18a2c.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x18a34, including `sb` at 0x21aa340, `sb` at 0x21aa444.
  The `lw` at 0x21aa344 loads 4 bytes from a0 (arg0 at entry) +0x9508.
  The `lw` at 0x21aa360 loads 4 bytes from a0 (arg0 at entry) +0x9510.
  The `swc1` at 0x21aa368 stores 4 bytes to a0 (arg0 at entry) +0x141c8.
  The `swc1` at 0x21aa370 stores 4 bytes to a0 (arg0 at entry) +0x141c0.
  The `swc1` at 0x21aa374 stores 4 bytes to a0 (arg0 at entry) +0x141c4.
  The `swc1` at 0x21aa37c stores 4 bytes to a0 (arg0 at entry) +0x141cc.
  The `lw` at 0x21aa39c loads 4 bytes from a0 (arg0 at entry) +0x18e58.
  The `lw` at 0x21aa3a8 loads 4 bytes from a0 (arg0 at entry) +0x9514.
  The `lw` at 0x21aa3c4 loads 4 bytes from a0 (arg0 at entry) +0x950c.
  The `sw` at 0x21aa414 stores 4 bytes to a0 (arg0 at entry) +0x18e58.
  The `sw` at 0x21aa420 stores 4 bytes to a0 (arg0 at entry) +0x18a24.
  The `sw` at 0x21aa430 stores 4 bytes to a0 (arg0 at entry) +0x18a28.
  The `sw` at 0x21aa43c stores 4 bytes to abs 0x1030.
  The `bne` branch at 0x21aa328 targets 0x21aa33c, is taken when a6(?) < a7(?) (signed), and falls through when a6(?) >= a7(?) (signed).
  The `beq` branch at 0x21aa334 targets 0x21aa440, is taken when a3(?) >= a2(?) (signed), and falls through when a3(?) < a2(?) (signed).
  The `beq` branch at 0x21aa440 targets 0x21aa344 and is always taken.
  The return at 0x21aa438 has v0 = ?.

- `LoseCurrent` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b02f0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21b02f0-0x21b0494 (420 bytes).
  It occupies 420 bytes.
  The `lw` at 0x21b02f4 loads 4 bytes from a0 (arg0 at entry) +0xdd4.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0x21b0318, `lw` at 0x21b0338.
  The `sw` at 0x21b0340 stores 4 bytes to a0 (arg0 at entry) +0xdd0.
  The `sd` at 0x21b034c stores 8 bytes to abs 0x1020.
  The `ld` at 0x21b0350 loads 8 bytes from a0 (arg0 at entry) +0x1ad8.
  9 such `ld` accesses load 8 bytes from ?, including `ld` at 0x21b0384, `ld` at 0x21b03ac, `ld` at 0x21b03c0.
  9 such `sd` accesses store 8 bytes to ?, including `sd` at 0x21b0390, `sd` at 0x21b03b4, `sd` at 0x21b03c8.
  The `lw` at 0x21b0448 loads 4 bytes from a0 (arg0 at entry) +0x1540.
  The `lw` at 0x21b0454 loads 4 bytes from abs 0x1048.
  The `sw` at 0x21b0458 stores 4 bytes to a0 (arg0 at entry) +0x15b8.
  The `ld` at 0x21b045c loads 8 bytes from abs 0x1050.
  The `sd` at 0x21b0460 stores 8 bytes to a0 (arg0 at entry) +0x15c0.
  The `ld` at 0x21b0464 loads 8 bytes from abs 0x1058.
  The `sd` at 0x21b0468 stores 8 bytes to a0 (arg0 at entry) +0x15c8.
  The `lw` at 0x21b046c loads 4 bytes from abs 0x1060.
  The `sw` at 0x21b0470 stores 4 bytes to a0 (arg0 at entry) +0x15d0.
  The `jalr` at 0x21b032c calls __glLoseCurrentBuffers [0x227a6b0] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x21b0348 calls FastDispatchInstall [0x21ab8e0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0x21b0310 targets 0x21b0480, is taken when v0(=[a0+3540]) != v1(=0x1c00), and falls through when v0(=[a0+3540]) == v1(=0x1c00).
  The `beq` branch at 0x21b0320 targets 0x21b0480, is taken when v0(=[0x1030]) == v1(=0x1), and falls through when v0(=[0x1030]) != v1(=0x1).
  The `beq` branch at 0x21b036c targets 0x21b0448, is taken when a4(=[a0+6872]:8) == at(=a0+10656), and falls through when a4(=[a0+6872]:8) != at(=a0+10656).
  The `bne` branch at 0x21b038c targets 0x21b0374, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bgtz` branch at 0x21b0440 targets 0x21b03a0, is taken when a3(?) > 0 (signed), and falls through when a3(?) <= 0 (signed).
  The `beq` branch at 0x21b044c targets 0x21b0474, is taken when a1(=[a0+5440]) == 0, and falls through when a1(=[a0+5440]) != 0.
  The return at 0x21b0478 has v0 = 0x1.
  The return at 0x21b048c has v0 = 0x0.

- `PreEvaluate` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ba440 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21ba440-0x21ba5d4 (404 bytes).
  It occupies 404 bytes.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0x21ba468, `swc1` at 0x21ba598, `swc1` at 0x21ba5c0.
  6 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0x21ba474, `swc1` at 0x21ba544, `swc1` at 0x21ba554.
  5 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x21ba498, `lwc1` at 0x21ba4c0, `lwc1` at 0x21ba4c4.
  6 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x21ba4b0, `swc1` at 0x21ba4f0, `swc1` at 0x21ba4f4.
  The `lwc1` at 0x21ba52c loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `swc1` at 0x21ba57c stores 4 bytes to a2 (arg2 at entry) +0xc.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0x21ba590, `swc1` at 0x21ba5ac.
  The `beq` branch at 0x21ba444 targets 0x21ba560, is taken when a0 == at(=0x4), and falls through when a0 != at(=0x4).
  The `beq` branch at 0x21ba450 targets 0x21ba59c, is taken when a0 == v0(=0x3), and falls through when a0 != v0(=0x3).
  The `beq` branch at 0x21ba458 targets 0x21ba5c4, is taken when a0 == v1(=0x2), and falls through when a0 != v1(=0x2).
  The `beq` branch at 0x21ba460 targets 0x21ba550, is taken when a0 == a1(=0x1), and falls through when a0 != a1(=0x1).
  The `bne` branch at 0x21ba470 targets 0x21ba558, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x21ba484 targets 0x21ba528 and is always taken.
  The `beq` branch at 0x21ba490 targets 0x21ba4b4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x21ba4ac targets 0x21ba498, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x21ba4b8 targets 0x21ba508, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x21ba500 targets 0x21ba4c0, is taken when a3(?) != a4(?), and falls through when a3(?) == a4(?).
  The `beq` branch at 0x21ba520 targets 0x21ba558, is taken when a0 == a5(?), and falls through when a0 != a5(?).
  The `beq` branch at 0x21ba540 targets 0x21ba490, is taken when a5(?) >= 0x2 (signed), and falls through when a5(?) < 0x2 (signed).
  The `beq` branch at 0x21ba548 targets 0x21ba50c and is always taken.
  The return at 0x21ba550 has v0 = 0x3.
  The return at 0x21ba558 has v0 = 0x3.
  The return at 0x21ba594 has v0 = ?.
  The return at 0x21ba5bc has v0 = 0x3.
  The return at 0x21ba5cc has v0 = 0x3.
  The instructions from 0x21ba48c to 0x21ba48c are not reached by any path from the entry, and their branches are not listed.

- `PreEvaluateWithDeriv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ba5e0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21ba5e0-0x21ba940 (864 bytes).
  It occupies 864 bytes.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0x21ba60c, `swc1` at 0x21ba8c8, `swc1` at 0x21ba908.
  7 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0x21ba614, `swc1` at 0x21ba6f4, `swc1` at 0x21ba7c8.
  15 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x21ba648, `lwc1` at 0x21ba670, `lwc1` at 0x21ba674.
  15 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x21ba660, `swc1` at 0x21ba6a0, `swc1` at 0x21ba6a4.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0x21ba6dc, `lwc1` at 0x21ba704, `lwc1` at 0x21ba73c.
  5 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `swc1` at 0x21ba730, `swc1` at 0x21ba888, `swc1` at 0x21ba8e0.
  The `lwc1` at 0x21ba740 loads 4 bytes from a2 (arg2 at entry) +0x4.
  4 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x4, including `swc1` at 0x21ba750, `swc1` at 0x21ba8d8, `swc1` at 0x21ba918.
  The `swc1` at 0x21ba8b4 stores 4 bytes to a2 (arg2 at entry) +0xc.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0x21ba8c4, `swc1` at 0x21ba8f4.
  The `swc1` at 0x21ba8cc stores 4 bytes to a3 (arg3 at entry) +0xc.
  2 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x8, including `swc1` at 0x21ba8d0, `swc1` at 0x21ba910.
  The `beq` branch at 0x21ba5e4 targets 0x21ba88c, is taken when a0 == at(=0x4), and falls through when a0 != at(=0x4).
  The `beq` branch at 0x21ba5f0 targets 0x21ba8e4, is taken when a0 == v0(=0x3), and falls through when a0 != v0(=0x3).
  The `beq` branch at 0x21ba5f8 targets 0x21ba924, is taken when a0 == v1(=0x2), and falls through when a0 != v1(=0x2).
  The `beq` branch at 0x21ba600 targets 0x21ba87c, is taken when a0 == a1(=0x1), and falls through when a0 != a1(=0x1).
  The `bne` branch at 0x21ba618 targets 0x21ba874, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x21ba62c targets 0x21ba6d8 and is always taken.
  The `beq` branch at 0x21ba640 targets 0x21ba664, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x21ba65c targets 0x21ba648, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x21ba668 targets 0x21ba6b8, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x21ba6b0 targets 0x21ba670, is taken when a4(?) != a5(?), and falls through when a4(?) == a5(?).
  The `beq` branch at 0x21ba6d0 targets 0x21ba700, is taken when t1(=a0-1) == a6(?), and falls through when t1(=a0-1) != a6(?).
  The `beq` branch at 0x21ba6f0 targets 0x21ba640, is taken when a6(?) >= 0x2 (signed), and falls through when a6(?) < 0x2 (signed).
  The `beq` branch at 0x21ba6f8 targets 0x21ba6bc and is always taken.
  The `beq` branch at 0x21ba734 targets 0x21ba754, is taken when (t0(?) & 0x1) == 0, and falls through when (t0(?) & 0x1) != 0.
  The `beq` branch at 0x21ba758 targets 0x21ba7a4, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x21ba798 targets 0x21ba770, is taken when a4(?) < a5(=((a0-1 << 0x2) + a2)) (unsigned), and falls through when a4(?) >= a5(=((a0-1 << 0x2) + a2)) (unsigned).
  The `bne` branch at 0x21ba7c4 targets 0x21ba86c, is taken when a6(?) < 0x2 (signed), and falls through when a6(?) >= 0x2 (signed).
  The `beq` branch at 0x21ba7dc targets 0x21ba800, is taken when (a3(?) & 0x3) == 0, and falls through when (a3(?) & 0x3) != 0.
  The `bne` branch at 0x21ba7f8 targets 0x21ba7e4, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x21ba804 targets 0x21ba858, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x21ba850 targets 0x21ba810, is taken when a4(?) != a5(?), and falls through when a4(?) == a5(?).
  The `beq` branch at 0x21ba86c targets 0x21ba85c and is always taken.
  The `beq` branch at 0x21ba874 targets 0x21ba708 and is always taken.
  The return at 0x21ba864 has v0 = ?.
  The return at 0x21ba884 has v0 = 0x3.
  The return at 0x21ba8dc has v0 = ?.
  The return at 0x21ba91c has v0 = 0x3.
  The return at 0x21ba938 has v0 = 0x3.
  The instructions from 0x21ba634 to 0x21ba63c are not reached by any path from the entry, and their branches are not listed.

- `DoDomain1` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ba940 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21ba940-0x21baee4 (1444 bytes).
  It occupies 1444 bytes.
  The `lwc1` at 0x21ba940 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0x21ba944 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0x21ba970 loads 4 bytes from a0 (arg0 at entry) +0x438.
  6 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0x21ba974, `lw` at 0x21ba9b8, `lw` at 0x21ba9c8.
  The `lw` at 0x21ba98c loads 4 bytes from a0 (arg0 at entry) +0x6c0.
  The `sw` at 0x21ba9b4 stores 4 bytes to a0 (arg0 at entry) +0x6c8.
  The `sw` at 0x21ba9c0 stores 4 bytes to a0 (arg0 at entry) +0x6c0.
  The `swc1` at 0x21ba9c4 stores 4 bytes to a0 (arg0 at entry) +0x438.
  The `lw` at 0x21ba9d4 loads 4 bytes from a2 (arg2 at entry) +0x0.
  20 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x21baa20, `swc1` at 0x21baa44, `swc1` at 0x21baa6c.
  51 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x21baa38, `lwc1` at 0x21baa3c, `lwc1` at 0x21baa60.
  15 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x444, including `lwc1` at 0x21baaec, `lwc1` at 0x21bab54, `lwc1` at 0x21bab88.
  18 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x440, including `lwc1` at 0x21baaf4, `lwc1` at 0x21bab5c, `lwc1` at 0x21bab90.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x448, including `lwc1` at 0x21baaf8, `lwc1` at 0x21bab60, `lwc1` at 0x21bab94.
  5 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x44c, including `lwc1` at 0x21bab08, `lwc1` at 0x21bab70, `lwc1` at 0x21baba4.
  The `lwc1` at 0x21bae8c loads 4 bytes from a4 (arg4 at entry) +0x0.
  The `swc1` at 0x21baea0 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `bgezall` at 0x21ba9a4 calls PreEvaluate [0x21ba440] with a0=[a2+4], a1=a1 at entry (arg1), a2=a0+1088, a3=a3 at entry (arg3).
  The `bc1t` branch at 0x21ba95c targets 0x21baa98, is taken when f5(=[a2+8]) == f4(=[a2+12]) (c.eq.s at 0x21ba948), and falls through when not (f5(=[a2+8]) == f4(=[a2+12]) (c.eq.s at 0x21ba948)).
  The `bc1f` branch at 0x21ba984 targets 0x21ba994, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0x21ba990 targets 0x21ba9cc, is taken when at(=[a0+1728]) == a0(=[a2+4]), and falls through when at(=[a0+1728]) != a0(=[a2+4]).
  The `beq` branch at 0x21ba9d0 targets 0x21baaa8, is taken when a0(=[a2+4]) == v1(=0x4), and falls through when a0(=[a2+4]) != v1(=0x4).
  The `beq` branch at 0x21ba9dc targets 0x21bac40, is taken when a0(=[a2+4]) == a1(=0x3), and falls through when a0(=[a2+4]) != a1(=0x3).
  The `beq` branch at 0x21ba9e4 targets 0x21bad7c, is taken when a0(=[a2+4]) == a2(=0x2), and falls through when a0(=[a2+4]) != a2(=0x2).
  The `beq` branch at 0x21ba9ec targets 0x21bae68, is taken when a0(=[a2+4]) == a3(=0x1), and falls through when a0(=[a2+4]) != a3(=0x1).
  The `blez` branch at 0x21ba9f4 targets 0x21baa98, is taken when a5(=[a2]) <= 0 (signed), and falls through when a5(=[a2]) > 0 (signed).
  The `blez` branch at 0x21baa28 targets 0x21baa88, is taken when a1(=[a2+4]) <= 0 (signed), and falls through when a1(=[a2+4]) > 0 (signed).
  The `beq` branch at 0x21baa58 targets 0x21baa88, is taken when a4(?) >= t0(=[a2+4]) (signed), and falls through when a4(?) < t0(=[a2+4]) (signed).
  The `bne` branch at 0x21baa80 targets 0x21baa38, is taken when a4(?) < t1(=[a2+4]) (signed), and falls through when a4(?) >= t1(=[a2+4]) (signed).
  The `bne` branch at 0x21baa90 targets 0x21baa20, is taken when a7(?) != a0(=(([a2] << 0x2) + a4)), and falls through when a7(?) == a0(=(([a2] << 0x2) + a4)).
  The `blez` branch at 0x21baaa8 targets 0x21baa98, is taken when a5(=[a2]) <= 0 (signed), and falls through when a5(=[a2]) > 0 (signed).
  The `beq` branch at 0x21baae0 targets 0x21bab38, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x21bab30 targets 0x21baae8, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x21bab3c targets 0x21bac38, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x21bac30 targets 0x21bab50, is taken when a4(?) != a0(=((([a2] << 0x2) + a4) + ([a2] << 0x2))), and falls through when a4(?) == a0(=((([a2] << 0x2) + a4) + ([a2] << 0x2))).
  The `beq` branch at 0x21bac38 targets 0x21baa9c and is always taken.
  The `blez` branch at 0x21bac40 targets 0x21baa9c, is taken when a5(=[a2]) <= 0 (signed), and falls through when a5(=[a2]) > 0 (signed).
  The `beq` branch at 0x21bac6c targets 0x21bacb4, is taken when (a5(=[a2]) & 0x3) == 0, and falls through when (a5(=[a2]) & 0x3) != 0.
  The `bne` branch at 0x21bacac targets 0x21bac74, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x21bacb8 targets 0x21bad74, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x21bad6c targets 0x21bacc0, is taken when a4(?) != a0(=((([a2] << 0x2) + a4) + ([a2] << 0x2))), and falls through when a4(?) == a0(=((([a2] << 0x2) + a4) + ([a2] << 0x2))).
  The `beq` branch at 0x21bad74 targets 0x21baa9c and is always taken.
  The `blez` branch at 0x21bad7c targets 0x21baa98, is taken when a5(=[a2]) <= 0 (signed), and falls through when a5(=[a2]) > 0 (signed).
  The `beq` branch at 0x21bad94 targets 0x21badcc, is taken when (a5(=[a2]) & 0x3) == 0, and falls through when (a5(=[a2]) & 0x3) != 0.
  The `bne` branch at 0x21badc4 targets 0x21bad9c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x21badd0 targets 0x21bae60, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x21bae58 targets 0x21bade0, is taken when a4(?) != a0(=((([a2] << 0x2) + a4) + ([a2] << 0x2))), and falls through when a4(?) == a0(=((([a2] << 0x2) + a4) + ([a2] << 0x2))).
  The `beq` branch at 0x21bae60 targets 0x21baa9c and is always taken.
  The `blez` branch at 0x21bae68 targets 0x21baa98, is taken when a5(=[a2]) <= 0 (signed), and falls through when a5(=[a2]) > 0 (signed).
  The `beq` branch at 0x21bae80 targets 0x21baea4, is taken when (a5(=[a2]) & 0x1) == 0, and falls through when (a5(=[a2]) & 0x1) != 0.
  The `beq` branch at 0x21baea8 targets 0x21baedc, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x21baed4 targets 0x21baeb0, is taken when a7(?) != a0(=(([a2] << 0x2) + a4)), and falls through when a7(?) == a0(=(([a2] << 0x2) + a4)).
  The `beq` branch at 0x21baedc targets 0x21baa9c and is always taken.
  The return at 0x21baaa0 has v0 = ?.

- `DoEvalCoord1` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21bb230 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21bb230-0x21bb5e4 (948 bytes).
  It occupies 948 bytes.
  9 such `ld` accesses load 8 bytes from ?, including `ld` at 0x21bb274, `ld` at 0x21bb29c, `ld` at 0x21bb2b0.
  9 such `sd` accesses store 8 bytes to ?, including `sd` at 0x21bb280, `sd` at 0x21bb2a4, `sd` at 0x21bb2b8.
  The `lbu` at 0x21bb338 loads 1 byte from a0 (arg0 at entry) +0xde5.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x818, including `lw` at 0x21bb33c, `lw` at 0x21bb38c, `lw` at 0x21bb3d4.
  The `ld` at 0x21bb36c loads 8 bytes from a0 (arg0 at entry) +0x90a8.
  9 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x1ad8, including `ld` at 0x21bb37c, `ld` at 0x21bb3c4, `ld` at 0x21bb400.
  The `ld` at 0x21bb380 loads 8 bytes from [a0+6872]:8 +0xc28.
  The `ld` at 0x21bb3b4 loads 8 bytes from a0 (arg0 at entry) +0x90d0.
  4 such `ld` accesses load 8 bytes from [a0+6872]:8 +0xd88, including `ld` at 0x21bb3c8, `ld` at 0x21bb4dc, `ld` at 0x21bb52c.
  The `ld` at 0x21bb3f0 loads 8 bytes from a0 (arg0 at entry) +0x90b0.
  The `ld` at 0x21bb404 loads 8 bytes from [a0+6872]:8 +0xc88.
  The `ld` at 0x21bb42c loads 8 bytes from a0 (arg0 at entry) +0x90e0.
  The `ld` at 0x21bb440 loads 8 bytes from [a0+6872]:8 +0xae8.
  The `ld` at 0x21bb46c loads 8 bytes from a0 (arg0 at entry) +0x90d8.
  The `ld` at 0x21bb480 loads 8 bytes from [a0+6872]:8 +0xaa8.
  The `ld` at 0x21bb4c0 loads 8 bytes from a0 (arg0 at entry) +0x90c8.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xf2c, including `lwc1` at 0x21bb4d0, `lwc1` at 0x21bb520, `lwc1` at 0x21bb5c4.
  The `ld` at 0x21bb508 loads 8 bytes from a0 (arg0 at entry) +0x90c0.
  The `ld` at 0x21bb564 loads 8 bytes from a0 (arg0 at entry) +0x90a0.
  The `ld` at 0x21bb578 loads 8 bytes from [a0+6872]:8 +0xbb8.
  The `ld` at 0x21bb5a8 loads 8 bytes from a0 (arg0 at entry) +0x90b8.
  The `bgezall` at 0x21bb374 calls DoDomain1 [0x21ba940] with a0=sp-1856, a1=0x21ba940, a2=a0+36336, a3=sp-112, a4=[a0+37032]:8, a5=sp-1856.
  The `jalr` at 0x21bb384 calls (unknown callee) with a0=sp-112, a1=?, a2=?, a3=?.
  The `bgezall` at 0x21bb3bc calls DoDomain1 [0x21ba940] with a0=sp-1856, a1=?, a2=a0+36496, a3=sp-96, a4=[a0+37072]:8.
  The `jalr` at 0x21bb3cc calls (unknown callee) with a0=sp-96, a1=?, a2=?, a3=?.
  The `bgezall` at 0x21bb3f8 calls DoDomain1 [0x21ba940] with a0=sp-1856, a1=?, a2=a0+36368, a3=sp-80, a4=[a0+37040]:8.
  The `jalr` at 0x21bb408 calls (unknown callee) with a0=sp-80, a1=?, a2=?, a3=?.
  The `bgezall` at 0x21bb434 calls DoDomain1 [0x21ba940] with a0=sp-1856, a1=?, a2=a0+36560, a3=sp-64, a4=[a0+37088]:8.
  The `jalr` at 0x21bb444 calls (unknown callee) with a0=sp-64, a1=?, a2=?, a3=?.
  The `bgezall` at 0x21bb474 calls DoDomain1 [0x21ba940] with a0=sp-1856, a1=?, a2=a0+36528, a3=sp-64, a4=[a0+37080]:8.
  The `jalr` at 0x21bb484 calls (unknown callee) with a0=sp-64, a1=?, a2=?, a3=?.
  The `bgezall` at 0x21bb4c8 calls DoDomain1 [0x21ba940] with a0=sp-1856, a1=?, a2=a0+36464, a3=sp-96, a4=[a0+37064]:8.
  The `jalr` at 0x21bb4e0 calls (unknown callee) with a0=sp-96, a1=?, a2=?, a3=?.
  The `bgezall` at 0x21bb510 calls DoDomain1 [0x21ba940] with a0=sp-1856, a1=?, a2=a0+36432, a3=sp-96, a4=[a0+37056]:8.
  The `jalr` at 0x21bb530 calls (unknown callee) with a0=sp-96, a1=?, a2=?, a3=?.
  The `bgezall` at 0x21bb56c calls DoDomain1 [0x21ba940] with a0=sp-1856, a1=?, a2=a0+36304, a3=sp-112, a4=[a0+37024]:8, a5=sp-1856.
  The `jalr` at 0x21bb57c calls (unknown callee) with a0=sp-112, a1=?, a2=?, a3=?.
  The `bgezall` at 0x21bb5b0 calls DoDomain1 [0x21ba940] with a0=sp-1856, a1=?, a2=a0+36400, a3=sp-96, a4=[a0+37048]:8.
  The `jalr` at 0x21bb5d4 calls (unknown callee) with a0=sp-96, a1=?, a2=?, a3=?.
  The `bne` branch at 0x21bb27c targets 0x21bb264, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bgtz` branch at 0x21bb330 targets 0x21bb290, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The `beq` branch at 0x21bb344 targets 0x21bb540, is taken when v0(=[a0+3557]:1) == 0, and falls through when v0(=[a0+3557]:1) != 0.
  The `beq` branch at 0x21bb350 targets 0x21bb390, is taken when (a0(=[a0+2072]) & 0x2) == 0, and falls through when (a0(=[a0+2072]) & 0x2) != 0.
  The `beq` branch at 0x21bb39c targets 0x21bb4a8, is taken when (a0(=[a0+2072]) & 0x40) == 0, and falls through when (a0(=[a0+2072]) & 0x40) != 0.
  The `beq` branch at 0x21bb3dc targets 0x21bb414, is taken when (a0(=[a0+2072]) & 0x4) == 0, and falls through when (a0(=[a0+2072]) & 0x4) != 0.
  The `beq` branch at 0x21bb418 targets 0x21bb454, is taken when (a0(=[a0+2072]) & 0x100) == 0, and falls through when (a0(=[a0+2072]) & 0x100) != 0.
  The `beq` branch at 0x21bb44c targets 0x21bb490 and is always taken.
  The `beq` branch at 0x21bb458 targets 0x21bb48c, is taken when (a0(=[a0+2072]) & 0x80) == 0, and falls through when (a0(=[a0+2072]) & 0x80) != 0.
  The `beq` branch at 0x21bb4a8 targets 0x21bb4f0, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x21bb4e8 targets 0x21bb3d8 and is always taken.
  The `beq` branch at 0x21bb4f4 targets 0x21bb594, is taken when (a0(=[a0+2072]) & 0x10) == 0, and falls through when (a0(=[a0+2072]) & 0x10) != 0.
  The `beq` branch at 0x21bb538 targets 0x21bb3d8 and is always taken.
  The `beq` branch at 0x21bb544 targets 0x21bb58c, is taken when (a0(=[a0+2072]) & 0x1) == 0, and falls through when (a0(=[a0+2072]) & 0x1) != 0.
  The `beq` branch at 0x21bb58c targets 0x21bb398 and is always taken.
  The `beq` branch at 0x21bb594 targets 0x21bb3d8, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x21bb5dc targets 0x21bb3d8 and is always taken.
  The return at 0x21bb4a0 has v0 = one of ret(?), ?.

- `DoDomain2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21bb780 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21bb780-0x21bd770 (8176 bytes).
  It occupies 8176 bytes.
  The `lwc1` at 0x21bb78c loads 4 bytes from a3 (arg3 at entry) +0x10.
  The `lwc1` at 0x21bb790 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `lwc1` at 0x21bb7c0 loads 4 bytes from a3 (arg3 at entry) +0x14.
  The `lwc1` at 0x21bb7c4 loads 4 bytes from a3 (arg3 at entry) +0x18.
  The `lwc1` at 0x21bb7ec loads 4 bytes from a0 (arg0 at entry) +0x438.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0x21bb7f0, `lw` at 0x21bb834, `lw` at 0x21bb88c.
  The `lw` at 0x21bb80c loads 4 bytes from a0 (arg0 at entry) +0x6c0.
  The `sw` at 0x21bb830 stores 4 bytes to a0 (arg0 at entry) +0x6c8.
  The `sw` at 0x21bb83c stores 4 bytes to a0 (arg0 at entry) +0x6c0.
  The `swc1` at 0x21bb840 stores 4 bytes to a0 (arg0 at entry) +0x438.
  The `lwc1` at 0x21bb848 loads 4 bytes from a0 (arg0 at entry) +0x43c.
  17 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0x21bb854, `lw` at 0x21bb87c, `lw` at 0x21bb900.
  The `lw` at 0x21bb860 loads 4 bytes from a0 (arg0 at entry) +0x6c4.
  The `sw` at 0x21bb878 stores 4 bytes to a0 (arg0 at entry) +0x6cc.
  The `sw` at 0x21bb884 stores 4 bytes to a0 (arg0 at entry) +0x6c4.
  The `swc1` at 0x21bb888 stores 4 bytes to a0 (arg0 at entry) +0x43c.
  The `lw` at 0x21bb898 loads 4 bytes from a3 (arg3 at entry) +0x0.
  84 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x21bb8e0, `swc1` at 0x21bb9b4, `swc1` at 0x21bbbb4.
  267 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x21bb934, `lwc1` at 0x21bb938, `lwc1` at 0x21bb960.
  29 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x444, including `lwc1` at 0x21bbbac, `lwc1` at 0x21bbeac, `lwc1` at 0x21bc19c.
  16 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x448, including `lwc1` at 0x21bbc5c, `lwc1` at 0x21bbf5c, `lwc1` at 0x21bc3b8.
  7 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x44c, including `lwc1` at 0x21bbd0c, `lwc1` at 0x21bc3fc, `lwc1` at 0x21bc6b4.
  46 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x440, including `lwc1` at 0x21bbdcc, `lwc1` at 0x21bc01c, `lwc1` at 0x21bc0ec.
  54 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e4, including `lwc1` at 0x21bc314, `lwc1` at 0x21bc354, `lwc1` at 0x21bc390.
  88 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e0, including `lwc1` at 0x21bc31c, `lwc1` at 0x21bc350, `lwc1` at 0x21bc38c.
  30 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e8, including `lwc1` at 0x21bc320, `lwc1` at 0x21bc35c, `lwc1` at 0x21bc398.
  12 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4ec, including `lwc1` at 0x21bc330, `lwc1` at 0x21bc36c, `lwc1` at 0x21bc3a8.
  6 such `lwc1` accesses load 4 bytes from (([a3] << 0x2) + a5) +0x0, including `lwc1` at 0x21bca44, `lwc1` at 0x21bcb8c, `lwc1` at 0x21bcd4c.
  7 such `lwc1` accesses load 4 bytes from a5 (arg5 at entry) +0x0, including `lwc1` at 0x21bca50, `lwc1` at 0x21bcb98, `lwc1` at 0x21bcd58.
  4 such `lwc1` accesses load 4 bytes from ((([a3] + [a3]) << 0x2) + a5) +0x0, including `lwc1` at 0x21bca5c, `lwc1` at 0x21bcba4, `lwc1` at 0x21bcd7c.
  2 such `lwc1` accesses load 4 bytes from (a5 + ((([a3] + [a3]) + [a3]) << 0x2)) +0x0, including `lwc1` at 0x21bca64, `lwc1` at 0x21bcbc4.
  16 such `swc1` accesses store 4 bytes to a4 (arg4 at entry) +0x0, including `swc1` at 0x21bca94, `swc1` at 0x21bcbb8, `swc1` at 0x21bcc08.
  The `lwc1` at 0x21bcbbc loads 4 bytes from ((a5 + ((([a3] + [a3]) + [a3]) << 0x2)) + ([a3] << 0x2)) +0x0.
  The `lwc1` at 0x21bcbd4 loads 4 bytes from ((a5 + ((([a3] + [a3]) + [a3]) << 0x2)) + (([a3] + [a3]) << 0x2)) +0x0.
  2 such `lwc1` accesses load 4 bytes from (((([a3] + [a3]) << 0x2) + a5) + ([a3] << 0x2)) +0x0, including `lwc1` at 0x21bcd74, `lwc1` at 0x21bd390.
  The `lwc1` at 0x21bcd98 loads 4 bytes from ((((([a3] + [a3]) << 0x2) + a5) + (([a3] + [a3]) << 0x2)) + ([a3] << 0x2)) +0x0.
  The `lwc1` at 0x21bcda0 loads 4 bytes from (((([a3] + [a3]) << 0x2) + a5) + (([a3] + [a3]) << 0x2)) +0x0.
  2 such `lwc1` accesses load 4 bytes from ((([a3] << 0x2) + a5) + ([a3] << 0x2)) +0x0, including `lwc1` at 0x21bcf54, `lwc1` at 0x21bd0ec.
  The `lwc1` at 0x21bcf6c loads 4 bytes from (((([a3] << 0x2) + a5) + ([a3] << 0x2)) + ([a3] << 0x2)) +0x0.
  The `bgezall` at 0x21bb824 calls PreEvaluate [0x21ba440] with a0=[a3+4], a1=a1 at entry (arg1), a2=a0+1088, a3=a3 at entry (arg3).
  The `bgezall` at 0x21bb86c calls PreEvaluate [0x21ba440] with a0=[a3+8], a1=?, a2=a0+1248, a3=?.
  The `bc1t` branch at 0x21bb7b8 targets 0x21bb9d8, is taken when f4(=[a3+12]) == f5(=[a3+16]) (c.eq.s at 0x21bb7a0), and falls through when not (f4(=[a3+12]) == f5(=[a3+16]) (c.eq.s at 0x21bb7a0)).
  The `bc1t` branch at 0x21bb7cc targets 0x21bb9dc, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `bc1f` branch at 0x21bb804 targets 0x21bb814, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `beq` branch at 0x21bb810 targets 0x21bb844, is taken when at(=[a0+1728]) == a0(=[a3+4]), and falls through when at(=[a0+1728]) != a0(=[a3+4]).
  The `bc1f` branch at 0x21bb858 targets 0x21bb868, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `beq` branch at 0x21bb864 targets 0x21bb88c, is taken when ra(=[a0+1732]) == a0(=[a3+8]), and falls through when ra(=[a0+1732]) != a0(=[a3+8]).
  The `beq` branch at 0x21bb894 targets 0x21bba00, is taken when a0(=[a3+4]) == a2(=0x4), and falls through when a0(=[a3+4]) != a2(=0x4).
  The `beq` branch at 0x21bb8a0 targets 0x21bba40, is taken when a0(=[a3+4]) == a3(=0x3), and falls through when a0(=[a3+4]) != a3(=0x3).
  The `beq` branch at 0x21bb8a8 targets 0x21bba80, is taken when a0(=[a3+4]) == a6(=0x2), and falls through when a0(=[a3+4]) != a6(=0x2).
  The `beq` branch at 0x21bb8b0 targets 0x21bbac0, is taken when a0(=[a3+4]) == a7(=0x1), and falls through when a0(=[a3+4]) != a7(=0x1).
  The `blez` branch at 0x21bb8b8 targets 0x21bb9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `blez` branch at 0x21bb8ec targets 0x21bb9cc, is taken when t9(=[a3+4]) <= 0 (signed), and falls through when t9(=[a3+4]) > 0 (signed).
  The `blez` branch at 0x21bb908 targets 0x21bb9ac, is taken when t1(=[a3+8]) <= 0 (signed), and falls through when t1(=[a3+8]) > 0 (signed).
  The `beq` branch at 0x21bb92c targets 0x21bb950, is taken when (t2(?) & 0x3) == 0, and falls through when (t2(?) & 0x3) != 0.
  The `bne` branch at 0x21bb948 targets 0x21bb934, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x21bb950 targets 0x21bb9ac, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x21bb9a4 targets 0x21bb960, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0x21bb9c4 targets 0x21bb900, is taken when a3(?) < a4(=[a3+4]) (signed), and falls through when a3(?) >= a4(=[a3+4]) (signed).
  The `bne` branch at 0x21bb9d0 targets 0x21bb8e0, is taken when a0(?) != t8(=(([a3] << 0x2) + a5)), and falls through when a0(?) == t8(=(([a3] << 0x2) + a5)).
  The `beq` branch at 0x21bba04 targets 0x21bc298, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0x21bba0c targets 0x21bc5a4, is taken when a0(=[a3+8]) == a5(=0x3), and falls through when a0(=[a3+8]) != a5(=0x3).
  The `beq` branch at 0x21bba14 targets 0x21bc80c, is taken when a0(=[a3+8]) == a6(=0x2), and falls through when a0(=[a3+8]) != a6(=0x2).
  The `beq` branch at 0x21bba1c targets 0x21bcee4, is taken when a0(=[a3+8]) == a7(=0x1), and falls through when a0(=[a3+8]) != a7(=0x1).
  The `blez` branch at 0x21bba24 targets 0x21bb9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0x21bba38 targets 0x21bbd24 and is always taken.
  The `beq` branch at 0x21bba44 targets 0x21bc450, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0x21bba4c targets 0x21bc700, is taken when a0(=[a3+8]) == a3(=0x3), and falls through when a0(=[a3+8]) != a3(=0x3).
  The `beq` branch at 0x21bba54 targets 0x21bcd00, is taken when a0(=[a3+8]) == t9(=0x2), and falls through when a0(=[a3+8]) != t9(=0x2).
  The `beq` branch at 0x21bba5c targets 0x21bd084, is taken when a0(=[a3+8]) == ra(=0x1), and falls through when a0(=[a3+8]) != ra(=0x1).
  The `blez` branch at 0x21bba64 targets 0x21bb9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0x21bba78 targets 0x21bbf74 and is always taken.
  The `beq` branch at 0x21bba84 targets 0x21bc90c, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0x21bba8c targets 0x21bcb3c, is taken when a0(=[a3+8]) == a3(=0x3), and falls through when a0(=[a3+8]) != a3(=0x3).
  The `beq` branch at 0x21bba94 targets 0x21bd32c, is taken when a0(=[a3+8]) == a6(=0x2), and falls through when a0(=[a3+8]) != a6(=0x2).
  The `beq` branch at 0x21bba9c targets 0x21bd590, is taken when a0(=[a3+8]) == t9(=0x1), and falls through when a0(=[a3+8]) != t9(=0x1).
  The `blez` branch at 0x21bbaa4 targets 0x21bb9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0x21bbab8 targets 0x21bc1b4 and is always taken.
  The `beq` branch at 0x21bbac4 targets 0x21bca00, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0x21bbacc targets 0x21bd1cc, is taken when a0(=[a3+8]) == a3(=0x3), and falls through when a0(=[a3+8]) != a3(=0x3).
  The `beq` branch at 0x21bbad4 targets 0x21bd484, is taken when a0(=[a3+8]) == a6(=0x2), and falls through when a0(=[a3+8]) != a6(=0x2).
  The `beq` branch at 0x21bbadc targets 0x21bd6d8, is taken when a0(=[a3+8]) == a7(=0x1), and falls through when a0(=[a3+8]) != a7(=0x1).
  The `blez` branch at 0x21bbae4 targets 0x21bb9dc, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0x21bbafc targets 0x21bc284 and is always taken.
  The `beq` branch at 0x21bbb28 targets 0x21bbb4c, is taken when (t0(?) & 0x3) == 0, and falls through when (t0(?) & 0x3) != 0.
  The `bne` branch at 0x21bbb44 targets 0x21bbb30, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x21bbb50 targets 0x21bbbac, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x21bbba4 targets 0x21bbb60, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0x21bbbbc targets 0x21bbdf4, is taken when a7(=[a3+8]) <= 0 (signed), and falls through when a7(=[a3+8]) > 0 (signed).
  The `beq` branch at 0x21bbbdc targets 0x21bbc00, is taken when (t0(?) & 0x3) == 0, and falls through when (t0(?) & 0x3) != 0.
  The `bne` branch at 0x21bbbf8 targets 0x21bbbe4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x21bbc04 targets 0x21bbc5c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x21bbc54 targets 0x21bbc10, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0x21bbc6c targets 0x21bbdfc, is taken when a7(=[a3+8]) <= 0 (signed), and falls through when a7(=[a3+8]) > 0 (signed).
  The `beq` branch at 0x21bbc8c targets 0x21bbcb0, is taken when (t0(?) & 0x3) == 0, and falls through when (t0(?) & 0x3) != 0.
  The `bne` branch at 0x21bbca8 targets 0x21bbc94, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x21bbcb4 targets 0x21bbd0c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x21bbd04 targets 0x21bbcc0, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0x21bbd1c targets 0x21bb9d8, is taken when a0(?) == t8(=(([a3] << 0x2) + a5)), and falls through when a0(?) != t8(=(([a3] << 0x2) + a5)).
  The `blez` branch at 0x21bbd28 targets 0x21bbdec, is taken when a7(=[a3+8]) <= 0 (signed), and falls through when a7(=[a3+8]) > 0 (signed).
  The `beq` branch at 0x21bbd4c targets 0x21bbd70, is taken when (t0(?) & 0x3) == 0, and falls through when (t0(?) & 0x3) != 0.
  The `bne` branch at 0x21bbd68 targets 0x21bbd54, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x21bbd74 targets 0x21bbdcc, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x21bbdc4 targets 0x21bbd80, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bgtz` branch at 0x21bbddc targets 0x21bbb10, is taken when a7(=[a3+8]) > 0 (signed), and falls through when a7(=[a3+8]) <= 0 (signed).
  The `beq` branch at 0x21bbde4 targets 0x21bbbac and is always taken.
  The `beq` branch at 0x21bbdec targets 0x21bbdcc and is always taken.
  The `beq` branch at 0x21bbdf4 targets 0x21bbc5c and is always taken.
  The `beq` branch at 0x21bbdfc targets 0x21bbd0c and is always taken.
  The `beq` branch at 0x21bbe28 targets 0x21bbe4c, is taken when (t0(?) & 0x3) == 0, and falls through when (t0(?) & 0x3) != 0.
  The `bne` branch at 0x21bbe44 targets 0x21bbe30, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x21bbe50 targets 0x21bbeac, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x21bbea4 targets 0x21bbe60, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0x21bbebc targets 0x21bc044, is taken when a7(=[a3+8]) <= 0 (signed), and falls through when a7(=[a3+8]) > 0 (signed).
  The `beq` branch at 0x21bbedc targets 0x21bbf00, is taken when (t0(?) & 0x3) == 0, and falls through when (t0(?) & 0x3) != 0.
  The `bne` branch at 0x21bbef8 targets 0x21bbee4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x21bbf04 targets 0x21bbf5c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x21bbf54 targets 0x21bbf10, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0x21bbf6c targets 0x21bb9d8, is taken when a0(?) == t8(=(([a3] << 0x2) + a5)), and falls through when a0(?) != t8(=(([a3] << 0x2) + a5)).
  The `blez` branch at 0x21bbf78 targets 0x21bc03c, is taken when a7(=[a3+8]) <= 0 (signed), and falls through when a7(=[a3+8]) > 0 (signed).
  The `beq` branch at 0x21bbf9c targets 0x21bbfc0, is taken when (t0(?) & 0x3) == 0, and falls through when (t0(?) & 0x3) != 0.
  The `bne` branch at 0x21bbfb8 targets 0x21bbfa4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x21bbfc4 targets 0x21bc01c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x21bc014 targets 0x21bbfd0, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bgtz` branch at 0x21bc02c targets 0x21bbe10, is taken when a7(=[a3+8]) > 0 (signed), and falls through when a7(=[a3+8]) <= 0 (signed).
  The `beq` branch at 0x21bc034 targets 0x21bbeac and is always taken.
  The `beq` branch at 0x21bc03c targets 0x21bc01c and is always taken.
  The `beq` branch at 0x21bc044 targets 0x21bbf5c and is always taken.
  The `beq` branch at 0x21bc06c targets 0x21bc090, is taken when (t0(?) & 0x3) == 0, and falls through when (t0(?) & 0x3) != 0.
  The `bne` branch at 0x21bc088 targets 0x21bc074, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x21bc094 targets 0x21bc0ec, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x21bc0e4 targets 0x21bc0a0, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0x21bc0fc targets 0x21bc1c8, is taken when a7(=[a3+8]) <= 0 (signed), and falls through when a7(=[a3+8]) > 0 (signed).
  The `beq` branch at 0x21bc11c targets 0x21bc140, is taken when (t0(?) & 0x3) == 0, and falls through when (t0(?) & 0x3) != 0.
  The `bne` branch at 0x21bc138 targets 0x21bc124, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x21bc144 targets 0x21bc19c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x21bc194 targets 0x21bc150, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0x21bc1ac targets 0x21bb9d8, is taken when a0(?) == t8(=(([a3] << 0x2) + a5)), and falls through when a0(?) != t8(=(([a3] << 0x2) + a5)).
  The `bgtz` branch at 0x21bc1b8 targets 0x21bc050, is taken when a7(=[a3+8]) > 0 (signed), and falls through when a7(=[a3+8]) <= 0 (signed).
  The `beq` branch at 0x21bc1c0 targets 0x21bc0ec and is always taken.
  The `beq` branch at 0x21bc1c8 targets 0x21bc19c and is always taken.
  The `beq` branch at 0x21bc1ec targets 0x21bc210, is taken when (t0(?) & 0x3) == 0, and falls through when (t0(?) & 0x3) != 0.
  The `bne` branch at 0x21bc208 targets 0x21bc1f4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x21bc214 targets 0x21bc26c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x21bc264 targets 0x21bc220, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0x21bc27c targets 0x21bb9d8, is taken when a0(?) == t8(=(([a3] << 0x2) + a5)), and falls through when a0(?) != t8(=(([a3] << 0x2) + a5)).
  The `bgtz` branch at 0x21bc288 targets 0x21bc1d0, is taken when a7(=[a3+8]) > 0 (signed), and falls through when a7(=[a3+8]) <= 0 (signed).
  The `beq` branch at 0x21bc290 targets 0x21bc26c and is always taken.
  The `blez` branch at 0x21bc298 targets 0x21bb9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0x21bc440 targets 0x21bc310, is taken when a2(?) != a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))), and falls through when a2(?) == a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))).
  The `beq` branch at 0x21bc448 targets 0x21bb9dc and is always taken.
  The `blez` branch at 0x21bc450 targets 0x21bb9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0x21bc594 targets 0x21bc4b0, is taken when a2(?) != a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))), and falls through when a2(?) == a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))).
  The `beq` branch at 0x21bc59c targets 0x21bb9dc and is always taken.
  The `blez` branch at 0x21bc5a4 targets 0x21bb9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0x21bc6f0 targets 0x21bc600, is taken when a2(?) != a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))), and falls through when a2(?) == a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))).
  The `beq` branch at 0x21bc6f8 targets 0x21bb9dc and is always taken.
  The `blez` branch at 0x21bc700 targets 0x21bb9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0x21bc7fc targets 0x21bc748, is taken when a2(?) != a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))), and falls through when a2(?) == a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))).
  The `beq` branch at 0x21bc804 targets 0x21bb9dc and is always taken.
  The `blez` branch at 0x21bc80c targets 0x21bb9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0x21bc8fc targets 0x21bc84c, is taken when a2(?) != a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))), and falls through when a2(?) == a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))).
  The `beq` branch at 0x21bc904 targets 0x21bb9dc and is always taken.
  The `blez` branch at 0x21bc90c targets 0x21bb9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0x21bc9f0 targets 0x21bc958, is taken when a2(?) != a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))), and falls through when a2(?) == a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))).
  The `beq` branch at 0x21bc9f8 targets 0x21bb9dc and is always taken.
  The `blez` branch at 0x21bca00 targets 0x21bb9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0x21bca38 targets 0x21bca98, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x21bca9c targets 0x21bcb34, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x21bcb2c targets 0x21bcaa4, is taken when a2(?) != a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))), and falls through when a2(?) == a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))).
  The `beq` branch at 0x21bcb34 targets 0x21bb9dc and is always taken.
  The `blez` branch at 0x21bcb3c targets 0x21bb9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0x21bcb80 targets 0x21bcc0c, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0x21bcc10 targets 0x21bccf8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x21bccf0 targets 0x21bcc18, is taken when a2(?) != a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))), and falls through when a2(?) == a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))).
  The `beq` branch at 0x21bccf8 targets 0x21bb9dc and is always taken.
  The `blez` branch at 0x21bcd00 targets 0x21bb9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0x21bcd40 targets 0x21bcdd8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x21bcddc targets 0x21bcedc, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x21bced4 targets 0x21bcde4, is taken when a2(?) != a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))), and falls through when a2(?) == a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))).
  The `beq` branch at 0x21bcedc targets 0x21bb9dc and is always taken.
  The `blez` branch at 0x21bcee4 targets 0x21bb9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0x21bcf14 targets 0x21bcf98, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0x21bcf9c targets 0x21bd07c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x21bd074 targets 0x21bcfa4, is taken when a4(?) != a6(=((((([a3] << 0x2) + a5) + ([a3] << 0x2)) + ([a3] << 0x2)) + ([a3] << 0x2))), and falls through when a4(?) == a6(=((((([a3] << 0x2) + a5) + ([a3] << 0x2)) + ([a3] << 0x2)) + ([a3] << 0x2))).
  The `beq` branch at 0x21bd07c targets 0x21bb9dc and is always taken.
  The `blez` branch at 0x21bd084 targets 0x21bb9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0x21bd0ac targets 0x21bd114, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0x21bd118 targets 0x21bd1c4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x21bd1bc targets 0x21bd120, is taken when a3(?) != a6(=(((([a3] << 0x2) + a5) + ([a3] << 0x2)) + ([a3] << 0x2))), and falls through when a3(?) == a6(=(((([a3] << 0x2) + a5) + ([a3] << 0x2)) + ([a3] << 0x2))).
  The `beq` branch at 0x21bd1c4 targets 0x21bb9dc and is always taken.
  The `blez` branch at 0x21bd1cc targets 0x21bb9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0x21bd1f4 targets 0x21bd244, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x21bd23c targets 0x21bd1fc, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x21bd248 targets 0x21bd324, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x21bd31c targets 0x21bd250, is taken when a2(?) != a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))), and falls through when a2(?) == a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))).
  The `beq` branch at 0x21bd324 targets 0x21bb9dc and is always taken.
  The `blez` branch at 0x21bd32c targets 0x21bb9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0x21bd360 targets 0x21bd3c8, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0x21bd3cc targets 0x21bd47c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x21bd474 targets 0x21bd3d4, is taken when a2(?) != a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))), and falls through when a2(?) == a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))).
  The `beq` branch at 0x21bd47c targets 0x21bb9dc and is always taken.
  The `blez` branch at 0x21bd484 targets 0x21bb9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0x21bd49c targets 0x21bd4dc, is taken when (a4(=[a3]) & 0x3) == 0, and falls through when (a4(=[a3]) & 0x3) != 0.
  The `bne` branch at 0x21bd4d4 targets 0x21bd4a4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x21bd4e0 targets 0x21bd588, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x21bd580 targets 0x21bd4e8, is taken when a2(?) != a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))), and falls through when a2(?) == a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))).
  The `beq` branch at 0x21bd588 targets 0x21bb9dc and is always taken.
  The `blez` branch at 0x21bd590 targets 0x21bb9d8, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0x21bd5a8 targets 0x21bd5f4, is taken when (a4(=[a3]) & 0x3) == 0, and falls through when (a4(=[a3]) & 0x3) != 0.
  The `bne` branch at 0x21bd5ec targets 0x21bd5b0, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x21bd5f8 targets 0x21bd6d0, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x21bd6c8 targets 0x21bd600, is taken when a2(?) != a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))), and falls through when a2(?) == a7(=((([a3] << 0x2) + a5) + ([a3] << 0x2))).
  The `beq` branch at 0x21bd6d0 targets 0x21bb9dc and is always taken.
  The `blez` branch at 0x21bd6d8 targets 0x21bb9dc, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0x21bd6f4 targets 0x21bd720, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0x21bd724 targets 0x21bd768, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x21bd760 targets 0x21bd72c, is taken when a0(?) != t8(=(([a3] << 0x2) + a5)), and falls through when a0(?) == t8(=(([a3] << 0x2) + a5)).
  The `beq` branch at 0x21bd768 targets 0x21bb9dc and is always taken.
  The return at 0x21bb9f8 has v0 = ?.
  The instructions from 0x21bbb04 to 0x21bbb0c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x21bbe04 to 0x21bbe0c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x21bc04c to 0x21bc04c are not reached by any path from the entry, and their branches are not listed.

- `DoDomain2WithDerivs` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21bd770 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21bd770-0x21bfffc (10380 bytes).
  It occupies 10380 bytes.
  The `lwc1` at 0x21bd784 loads 4 bytes from a3 (arg3 at entry) +0x10.
  The `lwc1` at 0x21bd788 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `lwc1` at 0x21bd7b8 loads 4 bytes from a3 (arg3 at entry) +0x14.
  The `lwc1` at 0x21bd7bc loads 4 bytes from a3 (arg3 at entry) +0x18.
  The `lwc1` at 0x21bd7e4 loads 4 bytes from a0 (arg0 at entry) +0x438.
  The `lw` at 0x21bd808 loads 4 bytes from a0 (arg0 at entry) +0x6c8.
  6 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0x21bd80c, `lw` at 0x21bd82c, `lw` at 0x21bd854.
  The `lw` at 0x21bd818 loads 4 bytes from a0 (arg0 at entry) +0x6c0.
  The `sw` at 0x21bd850 stores 4 bytes to a0 (arg0 at entry) +0x6c8.
  The `sw` at 0x21bd85c stores 4 bytes to a0 (arg0 at entry) +0x6c0.
  The `swc1` at 0x21bd860 stores 4 bytes to a0 (arg0 at entry) +0x438.
  The `lwc1` at 0x21bd868 loads 4 bytes from a0 (arg0 at entry) +0x43c.
  The `lw` at 0x21bd87c loads 4 bytes from a0 (arg0 at entry) +0x6cc.
  18 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0x21bd884, `lw` at 0x21bd89c, `lw` at 0x21bd8b4.
  The `lw` at 0x21bd888 loads 4 bytes from a0 (arg0 at entry) +0x6c4.
  The `sw` at 0x21bd8b0 stores 4 bytes to a0 (arg0 at entry) +0x6cc.
  The `sw` at 0x21bd8bc stores 4 bytes to a0 (arg0 at entry) +0x6c4.
  The `swc1` at 0x21bd8c0 stores 4 bytes to a0 (arg0 at entry) +0x43c.
  The `lw` at 0x21bd8d0 loads 4 bytes from a3 (arg3 at entry) +0x0.
  391 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x21bd9a0, `lwc1` at 0x21bd9a8, `lwc1` at 0x21bd9b8.
  45 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e4, including `lwc1` at 0x21bd9a4, `lwc1` at 0x21bda2c, `lwc1` at 0x21bdabc.
  63 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e0, including `lwc1` at 0x21bd9ac, `lwc1` at 0x21bda28, `lwc1` at 0x21bdab8.
  22 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e8, including `lwc1` at 0x21bd9b0, `lwc1` at 0x21bda34, `lwc1` at 0x21bdac4.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4ec, including `lwc1` at 0x21bd9c0, `lwc1` at 0x21bda44, `lwc1` at 0x21bdad4.
  66 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x440, including `lwc1` at 0x21bd9d0, `lwc1` at 0x21bda18, `lwc1` at 0x21bdf0c.
  180 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x21bd9d8, `swc1` at 0x21bd9e4, `swc1` at 0x21bda20.
  33 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x580, including `lwc1` at 0x21bd9dc, `lwc1` at 0x21bdf18, `lwc1` at 0x21be368.
  64 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x620, including `lwc1` at 0x21bd9ec, `lwc1` at 0x21bda78, `lwc1` at 0x21bdb08.
  45 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x624, including `lwc1` at 0x21bd9f0, `lwc1` at 0x21bda7c, `lwc1` at 0x21bdb0c.
  22 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x628, including `lwc1` at 0x21bd9f8, `lwc1` at 0x21bda84, `lwc1` at 0x21bdb14.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x62c, including `lwc1` at 0x21bda08, `lwc1` at 0x21bda94, `lwc1` at 0x21bdb24.
  28 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x444, including `lwc1` at 0x21bda54, `lwc1` at 0x21bdaa4, `lwc1` at 0x21bdfdc.
  14 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x584, including `lwc1` at 0x21bda64, `lwc1` at 0x21bdfe8, `lwc1` at 0x21be438.
  20 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x448, including `lwc1` at 0x21bdae4, `lwc1` at 0x21bdb34, `lwc1` at 0x21be0ac.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x588, including `lwc1` at 0x21bdaf4, `lwc1` at 0x21be0b8, `lwc1` at 0x21be278.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x44c, including `lwc1` at 0x21bdb74, `lwc1` at 0x21bdbd4, `lwc1` at 0x21be17c.
  5 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x58c, including `lwc1` at 0x21bdb84, `lwc1` at 0x21be188, `lwc1` at 0x21bebc0.
  4 such `lwc1` accesses load 4 bytes from (([a3] << 0x2) + a7) +0x0, including `lwc1` at 0x21bf858, `lwc1` at 0x21bf890, `lwc1` at 0x21bfb24.
  8 such `lwc1` accesses load 4 bytes from a7 (arg7 at entry) +0x0, including `lwc1` at 0x21bf860, `lwc1` at 0x21bf898, `lwc1` at 0x21bfb2c.
  2 such `lwc1` accesses load 4 bytes from ((([a3] + [a3]) << 0x2) + a7) +0x0, including `lwc1` at 0x21bf86c, `lwc1` at 0x21bf8a8.
  4 such `swc1` accesses store 4 bytes to a4 (arg4 at entry) +0x0, including `swc1` at 0x21bf880, `swc1` at 0x21bfb40, `swc1` at 0x21bfc9c.
  4 such `swc1` accesses store 4 bytes to a5 (arg5 at entry) +0x0, including `swc1` at 0x21bf88c, `swc1` at 0x21bfb4c, `swc1` at 0x21bfca8.
  4 such `swc1` accesses store 4 bytes to a6 (arg6 at entry) +0x0, including `swc1` at 0x21bf8d8, `swc1` at 0x21bfb88, `swc1` at 0x21bfcc0.
  The `lwc1` at 0x21bfcd4 loads 4 bytes from a4 (arg4 at entry) +0x0.
  The `lwc1` at 0x21bfce4 loads 4 bytes from a5 (arg5 at entry) +0x0.
  The `lwc1` at 0x21bfd00 loads 4 bytes from a6 (arg6 at entry) +0x0.
  The `bgezall` at 0x21bd848 calls PreEvaluateWithDeriv [0x21ba5e0] with a0=[a3+4], a1=a1 at entry (arg1), a2=a0+1088, a3=a0+1408.
  The `bgezall` at 0x21bd8a8 calls PreEvaluateWithDeriv [0x21ba5e0] with a0=[a3+8], a1=?, a2=a0+1248, a3=a0+1568.
  The `bc1t` branch at 0x21bd7b0 targets 0x21bdc24, is taken when f4(=[a3+12]) == f5(=[a3+16]) (c.eq.s at 0x21bd798), and falls through when not (f4(=[a3+12]) == f5(=[a3+16]) (c.eq.s at 0x21bd798)).
  The `bc1t` branch at 0x21bd7c4 targets 0x21bdc24, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `bc1f` branch at 0x21bd800 targets 0x21bd82c, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bne` branch at 0x21bd810 targets 0x21bd834, is taken when at(=[a0+1736]) != s2(=0x1), and falls through when at(=[a0+1736]) == s2(=0x1).
  The `beq` branch at 0x21bd81c targets 0x21bd868, is taken when v0(=[a0+1728]) == a0(=[a3+4]), and falls through when v0(=[a0+1728]) != a0(=[a3+4]).
  The `beq` branch at 0x21bd824 targets 0x21bd838 and is always taken.
  The `bc1f` branch at 0x21bd874 targets 0x21bd89c, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bne` branch at 0x21bd880 targets 0x21bd8a0, is taken when ra(=[a0+1740]) != s2(=0x1), and falls through when ra(=[a0+1740]) == s2(=0x1).
  The `beq` branch at 0x21bd88c targets 0x21bd8c4, is taken when at(=[a0+1732]) == a0(=[a3+8]), and falls through when at(=[a0+1732]) != a0(=[a3+8]).
  The `beq` branch at 0x21bd894 targets 0x21bd8a4 and is always taken.
  The `beq` branch at 0x21bd8cc targets 0x21bdd9c, is taken when a0(=[a3+4]) == a2(=0x4), and falls through when a0(=[a3+4]) != a2(=0x4).
  The `beq` branch at 0x21bd8d8 targets 0x21bdde4, is taken when a0(=[a3+4]) == a3(=0x3), and falls through when a0(=[a3+4]) != a3(=0x3).
  The `beq` branch at 0x21bd8e0 targets 0x21bde2c, is taken when a0(=[a3+4]) == t0(=0x2), and falls through when a0(=[a3+4]) != t0(=0x2).
  The `beq` branch at 0x21bd8e8 targets 0x21bde74, is taken when a0(=[a3+4]) == s2(=0x1), and falls through when a0(=[a3+4]) != s2(=0x1).
  The `blez` branch at 0x21bd8f0 targets 0x21bdc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `beq` branch at 0x21bd914 targets 0x21bdc74 and is always taken.
  The `blez` branch at 0x21bd91c targets 0x21bdc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `bne` branch at 0x21bdc1c targets 0x21bd9a0, is taken when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `beq` branch at 0x21bdc6c targets 0x21bdc24, is taken when ra(?) == s2(=(([a3] << 0x2) + a7)), and falls through when ra(?) != s2(=(([a3] << 0x2) + a7)).
  The `blez` branch at 0x21bdc84 targets 0x21bdc60, is taken when a6(=[a3+4]) <= 0 (signed), and falls through when a6(=[a3+4]) > 0 (signed).
  The `beq` branch at 0x21bdc90 targets 0x21bfff0 and is always taken.
  The `beq` branch at 0x21bdca0 targets 0x21bdcec, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x21bdce4 targets 0x21bdcb0, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0x21bdd20 targets 0x21bdc60, is taken when a3(?) >= a4(=[a3+4]) (signed), and falls through when a3(?) < a4(=[a3+4]) (signed).
  The `bne` branch at 0x21bdd50 targets 0x21bdcec, is taken when a6(=[a3+8]) < 0x2 (signed), and falls through when a6(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0x21bdd74 targets 0x21bdca0, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0x21bdd94 targets 0x21bdca0 and is always taken.
  The `beq` branch at 0x21bdda0 targets 0x21bd91c, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0x21bdda8 targets 0x21be9cc, is taken when a0(=[a3+8]) == v1(=0x3), and falls through when a0(=[a3+8]) != v1(=0x3).
  The `beq` branch at 0x21bddb0 targets 0x21bee34, is taken when a0(=[a3+8]) == a1(=0x2), and falls through when a0(=[a3+8]) != a1(=0x2).
  The `beq` branch at 0x21bddb8 targets 0x21bf58c, is taken when a0(=[a3+8]) == s2(=0x1), and falls through when a0(=[a3+8]) != s2(=0x1).
  The `blez` branch at 0x21bddc0 targets 0x21bdc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `beq` branch at 0x21bdddc targets 0x21be1b8 and is always taken.
  The `beq` branch at 0x21bdde8 targets 0x21be770, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0x21bddf0 targets 0x21bec4c, is taken when a0(=[a3+8]) == a3(=0x3), and falls through when a0(=[a3+8]) != a3(=0x3).
  The `beq` branch at 0x21bddf8 targets 0x21bf408, is taken when a0(=[a3+8]) == a2(=0x2), and falls through when a0(=[a3+8]) != a2(=0x2).
  The `beq` branch at 0x21bde00 targets 0x21bf6fc, is taken when a0(=[a3+8]) == s2(=0x1), and falls through when a0(=[a3+8]) != s2(=0x1).
  The `blez` branch at 0x21bde08 targets 0x21bdc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `beq` branch at 0x21bde24 targets 0x21be2a8 and is always taken.
  The `beq` branch at 0x21bde30 targets 0x21bf028, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0x21bde38 targets 0x21bf2b0, is taken when a0(=[a3+8]) == a3(=0x3), and falls through when a0(=[a3+8]) != a3(=0x3).
  The `beq` branch at 0x21bde40 targets 0x21bf9e4, is taken when a0(=[a3+8]) == t0(=0x2), and falls through when a0(=[a3+8]) != t0(=0x2).
  The `beq` branch at 0x21bde48 targets 0x21bfc60, is taken when a0(=[a3+8]) == s2(=0x1), and falls through when a0(=[a3+8]) != s2(=0x1).
  The `blez` branch at 0x21bde50 targets 0x21bdc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `beq` branch at 0x21bde6c targets 0x21be618 and is always taken.
  The `beq` branch at 0x21bde78 targets 0x21bf1c8, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0x21bde80 targets 0x21bf818, is taken when a0(=[a3+8]) == a3(=0x3), and falls through when a0(=[a3+8]) != a3(=0x3).
  The `beq` branch at 0x21bde88 targets 0x21bfaf4, is taken when a0(=[a3+8]) == t0(=0x2), and falls through when a0(=[a3+8]) != t0(=0x2).
  The `beq` branch at 0x21bde90 targets 0x21bfe50, is taken when a0(=[a3+8]) == s2(=0x1), and falls through when a0(=[a3+8]) != s2(=0x1).
  The `blez` branch at 0x21bde98 targets 0x21bdc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `beq` branch at 0x21bdeb8 targets 0x21be708 and is always taken.
  The `beq` branch at 0x21bdec4 targets 0x21bdf0c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x21bdf04 targets 0x21bded0, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0x21bdf4c targets 0x21bdfdc, is taken when a6(=[a3+8]) < 0x2 (signed), and falls through when a6(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0x21bdf70 targets 0x21bdf94, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0x21bdf98 targets 0x21bdfdc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x21bdfd4 targets 0x21bdfa0, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0x21be01c targets 0x21be0ac, is taken when a6(=[a3+8]) < 0x2 (signed), and falls through when a6(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0x21be040 targets 0x21be064, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0x21be068 targets 0x21be0ac, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x21be0a4 targets 0x21be070, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0x21be0ec targets 0x21be17c, is taken when a6(=[a3+8]) < 0x2 (signed), and falls through when a6(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0x21be110 targets 0x21be134, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0x21be138 targets 0x21be17c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x21be174 targets 0x21be140, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0x21be1b0 targets 0x21bdc24, is taken when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `bne` branch at 0x21be1d4 targets 0x21bdf0c, is taken when a6(=[a3+8]) < 0x2 (signed), and falls through when a6(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0x21be1f8 targets 0x21bdec0, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0x21be218 targets 0x21bdec0 and is always taken.
  The `beq` branch at 0x21be224 targets 0x21be26c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x21be264 targets 0x21be230, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0x21be2a0 targets 0x21bdc24, is taken when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `bne` branch at 0x21be2c4 targets 0x21be35c, is taken when a6(=[a3+8]) < 0x2 (signed), and falls through when a6(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0x21be2e8 targets 0x21be30c, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0x21be310 targets 0x21be35c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x21be354 targets 0x21be320, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0x21be39c targets 0x21be42c, is taken when a7(=[a3+8]) < 0x2 (signed), and falls through when a7(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0x21be3c0 targets 0x21be3e4, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0x21be3e8 targets 0x21be42c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x21be424 targets 0x21be3f0, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0x21be46c targets 0x21be26c, is taken when a7(=[a3+8]) < 0x2 (signed), and falls through when a7(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0x21be490 targets 0x21be220, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0x21be4b0 targets 0x21be220 and is always taken.
  The `beq` branch at 0x21be4bc targets 0x21be50c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x21be504 targets 0x21be4d0, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0x21be54c targets 0x21be5dc, is taken when a6(=[a3+8]) < 0x2 (signed), and falls through when a6(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0x21be570 targets 0x21be594, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0x21be598 targets 0x21be5dc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x21be5d4 targets 0x21be5a0, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0x21be610 targets 0x21bdc24, is taken when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `bne` branch at 0x21be634 targets 0x21be50c, is taken when a6(=[a3+8]) < 0x2 (signed), and falls through when a6(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0x21be658 targets 0x21be4b8, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0x21be678 targets 0x21be4b8 and is always taken.
  The `beq` branch at 0x21be684 targets 0x21be6cc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x21be6c4 targets 0x21be690, is taken when a4(?) < a5(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a5(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0x21be700 targets 0x21bdc24, is taken when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `bne` branch at 0x21be724 targets 0x21be6cc, is taken when a6(=[a3+8]) < 0x2 (signed), and falls through when a6(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0x21be748 targets 0x21be680, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0x21be768 targets 0x21be680 and is always taken.
  The `blez` branch at 0x21be770 targets 0x21bdc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `bne` branch at 0x21be9bc targets 0x21be7e0, is taken when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `beq` branch at 0x21be9c4 targets 0x21bdc28 and is always taken.
  The `blez` branch at 0x21be9cc targets 0x21bdc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `bne` branch at 0x21bec3c targets 0x21bea30, is taken when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `beq` branch at 0x21bec44 targets 0x21bdc28 and is always taken.
  The `blez` branch at 0x21bec4c targets 0x21bdc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `bne` branch at 0x21bee24 targets 0x21bec9c, is taken when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `beq` branch at 0x21bee2c targets 0x21bdc28 and is always taken.
  The `blez` branch at 0x21bee34 targets 0x21bdc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `bne` branch at 0x21bf018 targets 0x21bee7c, is taken when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `beq` branch at 0x21bf020 targets 0x21bdc28 and is always taken.
  The `blez` branch at 0x21bf028 targets 0x21bdc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `bne` branch at 0x21bf1b8 targets 0x21bf07c, is taken when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `beq` branch at 0x21bf1c0 targets 0x21bdc28 and is always taken.
  The `blez` branch at 0x21bf1c8 targets 0x21bdc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `bne` branch at 0x21bf2a0 targets 0x21bf204, is taken when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `beq` branch at 0x21bf2a8 targets 0x21bdc28 and is always taken.
  The `blez` branch at 0x21bf2b0 targets 0x21bdc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `bne` branch at 0x21bf3f8 targets 0x21bf2f4, is taken when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `beq` branch at 0x21bf400 targets 0x21bdc28 and is always taken.
  The `blez` branch at 0x21bf408 targets 0x21bdc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `bne` branch at 0x21bf57c targets 0x21bf448, is taken when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `beq` branch at 0x21bf584 targets 0x21bdc28 and is always taken.
  The `blez` branch at 0x21bf58c targets 0x21bdc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `bne` branch at 0x21bf6ec targets 0x21bf5c0, is taken when a3(?) != t0(=((((([a3] << 0x2) + a7) + ([a3] << 0x2)) + ([a3] << 0x2)) + ([a3] << 0x2))), and falls through when a3(?) == t0(=((((([a3] << 0x2) + a7) + ([a3] << 0x2)) + ([a3] << 0x2)) + ([a3] << 0x2))).
  The `beq` branch at 0x21bf6f4 targets 0x21bdc28 and is always taken.
  The `blez` branch at 0x21bf6fc targets 0x21bdc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `bne` branch at 0x21bf808 targets 0x21bf728, is taken when a2(?) != a3(=(((([a3] << 0x2) + a7) + ([a3] << 0x2)) + ([a3] << 0x2))), and falls through when a2(?) == a3(=(((([a3] << 0x2) + a7) + ([a3] << 0x2)) + ([a3] << 0x2))).
  The `beq` branch at 0x21bf810 targets 0x21bdc28 and is always taken.
  The `blez` branch at 0x21bf818 targets 0x21bdc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `beq` branch at 0x21bf84c targets 0x21bf8dc, is taken when (a6(=[a3]) & 0x1) == 0, and falls through when (a6(=[a3]) & 0x1) != 0.
  The `beq` branch at 0x21bf8e0 targets 0x21bf9dc, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x21bf9d4 targets 0x21bf8e8, is taken when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `beq` branch at 0x21bf9dc targets 0x21bdc28 and is always taken.
  The `blez` branch at 0x21bf9e4 targets 0x21bdc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `bne` branch at 0x21bfae4 targets 0x21bfa18, is taken when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `beq` branch at 0x21bfaec targets 0x21bdc28 and is always taken.
  The `blez` branch at 0x21bfaf4 targets 0x21bdc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `beq` branch at 0x21bfb18 targets 0x21bfb8c, is taken when (a6(=[a3]) & 0x1) == 0, and falls through when (a6(=[a3]) & 0x1) != 0.
  The `beq` branch at 0x21bfb90 targets 0x21bfc58, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x21bfc50 targets 0x21bfb98, is taken when a0(?) != a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))), and falls through when a0(?) == a3(=((([a3] << 0x2) + a7) + ([a3] << 0x2))).
  The `beq` branch at 0x21bfc58 targets 0x21bdc28 and is always taken.
  The `blez` branch at 0x21bfc60 targets 0x21bdc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `beq` branch at 0x21bfc80 targets 0x21bfd20, is taken when (a6(=[a3]) & 0x1) == 0, and falls through when (a6(=[a3]) & 0x1) != 0.
  The `beq` branch at 0x21bfd24 targets 0x21bfe48, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x21bfe40 targets 0x21bfd2c, is taken when ra(?) != s2(=(([a3] << 0x2) + a7)), and falls through when ra(?) == s2(=(([a3] << 0x2) + a7)).
  The `beq` branch at 0x21bfe48 targets 0x21bdc28 and is always taken.
  The `blez` branch at 0x21bfe50 targets 0x21bdc24, is taken when a6(=[a3]) <= 0 (signed), and falls through when a6(=[a3]) > 0 (signed).
  The `beq` branch at 0x21bfe70 targets 0x21bfecc, is taken when (a6(=[a3]) & 0x3) == 0, and falls through when (a6(=[a3]) & 0x3) != 0.
  The `bne` branch at 0x21bfec4 targets 0x21bfe78, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x21bfed0 targets 0x21bffdc, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x21bffd4 targets 0x21bfed8, is taken when ra(?) != s2(=(([a3] << 0x2) + a7)), and falls through when ra(?) == s2(=(([a3] << 0x2) + a7)).
  The `beq` branch at 0x21bffdc targets 0x21bdc28 and is always taken.
  The `beq` branch at 0x21bfff4 targets 0x21bdd2c and is always taken.
  The return at 0x21bdc4c has v0 = ?.
  The instructions from 0x21bdc54 to 0x21bdc5c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x21bdc98 to 0x21bdc9c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x21bffe4 to 0x21bffec are not reached by any path from the entry, and their branches are not listed.

- `DoEvalCoord2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21c0000 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21c0000-0x21c05b4 (1460 bytes).
  It occupies 1460 bytes.
  9 such `ld` accesses load 8 bytes from ?, including `ld` at 0x21c0054, `ld` at 0x21c007c, `ld` at 0x21c0090.
  9 such `sd` accesses store 8 bytes to ?, including `sd` at 0x21c0060, `sd` at 0x21c0084, `sd` at 0x21c0098.
  12 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x21c0118, `sw` at 0x21c01bc, `sw` at 0x21c0214.
  The `lw` at 0x21c011c loads 4 bytes from a0 (arg0 at entry) +0x808.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x81c, including `lw` at 0x21c0120, `lw` at 0x21c01c4, `lw` at 0x21c0218.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x9128, including `ld` at 0x21c016c, `ld` at 0x21c0478.
  14 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0x21c01b0, `lw` at 0x21c020c, `lw` at 0x21c0248.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xde5, including `lbu` at 0x21c01d0, `lbu` at 0x21c0598.
  The `ld` at 0x21c01fc loads 8 bytes from a0 (arg0 at entry) +0x90f0.
  The `ld` at 0x21c0238 loads 8 bytes from a0 (arg0 at entry) +0x9118.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x1ad8, including `ld` at 0x21c0260, `ld` at 0x21c0280, `ld` at 0x21c02a0.
  The `ld` at 0x21c0264 loads 8 bytes from [a0+6872]:8 +0xbb8.
  The `ld` at 0x21c0284 loads 8 bytes from [a0+6872]:8 +0xc28.
  The `ld` at 0x21c02a4 loads 8 bytes from [a0+6872]:8 +0xc88.
  The `ld` at 0x21c02c4 loads 8 bytes from [a0+6872]:8 +0xd88.
  The `ld` at 0x21c0324 loads 8 bytes from a0 (arg0 at entry) +0x9110.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xf2c, including `lwc1` at 0x21c0338, `lwc1` at 0x21c03f4, `lwc1` at 0x21c0528.
  3 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x30, including `swc1` at 0x21c0348, `swc1` at 0x21c0404, `swc1` at 0x21c0538.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x9120, including `ld` at 0x21c0374, `ld` at 0x21c0554.
  The `ld` at 0x21c03d8 loads 8 bytes from a0 (arg0 at entry) +0x9108.
  2 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x2c, including `swc1` at 0x21c03f0, `swc1` at 0x21c0520.
  The `ld` at 0x21c042c loads 8 bytes from a0 (arg0 at entry) +0x90f8.
  The `ld` at 0x21c04bc loads 8 bytes from a0 (arg0 at entry) +0x90e8.
  The `ld` at 0x21c0508 loads 8 bytes from a0 (arg0 at entry) +0x9100.
  The `swc1` at 0x21c0524 stores 4 bytes to a3 (arg3 at entry) +0x28.
  The `ld` at 0x21c0580 loads 8 bytes from [a0+6872]:8 +0xae8.
  The `ld` at 0x21c05a0 loads 8 bytes from [a0+6872]:8 +0xaa8.
  The `bgezall` at 0x21c0174 calls DoDomain2WithDerivs [0x21bd770] with a0=sp-1872, a1=?, a2=[a0+2076], a3=a0+36976, a4=a3+52, a5=sp-128, a6=sp-112, a7=[a0+37160]:8.
  The `bgezall` at 0x21c018c calls ComputeFirstPartials [0x21bb670] with a0=a3+52, a1=sp-128, a2=sp-112, a3=?.
  The `bgezall` at 0x21c01a8 calls ComputeNormal2 [0x21bb710] with a0=a0 at entry (arg0), a1=a3+20, a2=sp-128, a3=sp-112.
  The `bgezall` at 0x21c0204 calls DoDomain2 [0x21bb780] with a0=sp-1872, a1=?, a2=[a0+2076], a3=a0+36640, a4=a3+4, a5=[a0+37104]:8.
  The `bgezall` at 0x21c0240 calls DoDomain2 [0x21bb780] with a0=sp-1872, a1=?, a2=[a0+2076], a3=a0+36880, a4=a3+36, a5=[a0+37144]:8.
  The `jalr` at 0x21c0268 calls (unknown callee) with a0=a3+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x21c0288 calls (unknown callee) with a0=a3+4, a1=?, a2=?, a3=?.
  The `jalr` at 0x21c02a8 calls (unknown callee) with a0=a3+20, a1=?, a2=?, a3=?.
  The `jalr` at 0x21c02c8 calls (unknown callee) with a0=a3+36, a1=?, a2=?, a3=?.
  The `bgezall` at 0x21c032c calls DoDomain2 [0x21bb780] with a0=sp-1872, a1=?, a2=[a0+2076], a3=a0+36832, a4=a3+36, a5=[a0+37136]:8.
  The `bgezall` at 0x21c037c calls DoDomain2WithDerivs [0x21bd770] with a0=sp-1872, a1=?, a2=[a0+2076], a3=a0+36928, a4=a3+52, a5=sp-96, a6=sp-80, a7=[a0+37152]:8.
  The `bgezall` at 0x21c0398 calls ComputeNormal2 [0x21bb710] with a0=a0 at entry (arg0), a1=a3+20, a2=sp-96, a3=sp-80.
  The `bgezall` at 0x21c03e0 calls DoDomain2 [0x21bb780] with a0=sp-1872, a1=?, a2=[a0+2076], a3=a0+36784, a4=a3+36, a5=[a0+37128]:8.
  The `bgezall` at 0x21c0434 calls DoDomain2 [0x21bb780] with a0=sp-1872, a1=?, a2=0x21bb780, a3=a0+36688, a4=a3+20, a5=[a0+37112]:8, a6=sp-1872.
  The `bgezall` at 0x21c0480 calls DoDomain2 [0x21bb780] with a0=sp-1872, a1=?, a2=[a0+2076], a3=a0+36976, a4=a3+52, a5=[a0+37160]:8.
  The `bgezall` at 0x21c04c4 calls DoDomain2 [0x21bb780] with a0=sp-1872, a1=?, a2=[a0+2076], a3=a0+36592, a4=a3+4, a5=[a0+37096]:8.
  The `bgezall` at 0x21c0510 calls DoDomain2 [0x21bb780] with a0=sp-1872, a1=?, a2=[a0+2076], a3=a0+36736, a4=a3+36, a5=[a0+37120]:8.
  The `bgezall` at 0x21c055c calls DoDomain2 [0x21bb780] with a0=sp-1872, a1=?, a2=[a0+2076], a3=a0+36928, a4=a3+52, a5=[a0+37152]:8.
  The `jalr` at 0x21c0584 calls (unknown callee) with a0=a3+52, a1=?, a2=?, a3=?.
  The `jalr` at 0x21c05a4 calls (unknown callee) with a0=a3+52, a1=?, a2=?, a3=?.
  The `bne` branch at 0x21c005c targets 0x21c0044, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `bgtz` branch at 0x21c0110 targets 0x21c0070, is taken when a4(?) > 0 (signed), and falls through when a4(?) <= 0 (signed).
  The `bgez` branch at 0x21c0134 targets 0x21c0408, is taken when v0(=([a0+2056] << 0x28)) >= 0 (signed), and falls through when v0(=([a0+2056] << 0x28)) < 0 (signed).
  The `beq` branch at 0x21c0140 targets 0x21c034c, is taken when (a2(=[a0+2076]) & 0x100) == 0, and falls through when (a2(=[a0+2076]) & 0x100) != 0.
  The `beq` branch at 0x21c01d4 targets 0x21c04a0, is taken when t8(=[a0+3557]:1) == 0, and falls through when t8(=[a0+3557]:1) != 0.
  The `beq` branch at 0x21c01e0 targets 0x21c0220, is taken when (a2(=[a0+2076]) & 0x2) == 0, and falls through when (a2(=[a0+2076]) & 0x2) != 0.
  The `beq` branch at 0x21c0220 targets 0x21c0308, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x21c0258 targets 0x21c0278, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x21c0278 targets 0x21c0298, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x21c0298 targets 0x21c02b8, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x21c02b8 targets 0x21c02d4, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x21c02d4 targets 0x21c059c, is taken when s4(=one of -0x1, 0x3, 0x4) == ra(=0x3), and falls through when s4(=one of -0x1, 0x3, 0x4) != ra(=0x3).
  The `beq` branch at 0x21c02dc targets 0x21c057c, is taken when s4(=one of -0x1, 0x3, 0x4) == at(=0x4), and falls through when s4(=one of -0x1, 0x3, 0x4) != at(=0x4).
  The `beq` branch at 0x21c030c targets 0x21c03bc, is taken when (a2(=[a0+2076]) & 0x20) == 0, and falls through when (a2(=[a0+2076]) & 0x20) != 0.
  The `beq` branch at 0x21c0344 targets 0x21c0254 and is always taken.
  The `beq` branch at 0x21c034c targets 0x21c04e0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x21c03b4 targets 0x21c01c8 and is always taken.
  The `beq` branch at 0x21c03c0 targets 0x21c04e8, is taken when (a2(=[a0+2076]) & 0x10) == 0, and falls through when (a2(=[a0+2076]) & 0x10) != 0.
  The `beq` branch at 0x21c0400 targets 0x21c0254 and is always taken.
  The `beq` branch at 0x21c0408 targets 0x21c044c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x21c045c targets 0x21c053c, is taken when (a2(=[a0+2076]) & 0x100) == 0, and falls through when (a2(=[a0+2076]) & 0x100) != 0.
  The `beq` branch at 0x21c0498 targets 0x21c01d0 and is always taken.
  The `beq` branch at 0x21c04a0 targets 0x21c0220, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x21c04d8 targets 0x21c021c and is always taken.
  The `beq` branch at 0x21c04e0 targets 0x21c01c8 and is always taken.
  The `beq` branch at 0x21c04ec targets 0x21c0258, is taken when (a2(=[a0+2076]) & 0x8) == 0, and falls through when (a2(=[a0+2076]) & 0x8) != 0.
  The `beq` branch at 0x21c0534 targets 0x21c0254 and is always taken.
  The `beq` branch at 0x21c053c targets 0x21c0594, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x21c0574 targets 0x21c01d0 and is always taken.
  The `beq` branch at 0x21c058c targets 0x21c02e4 and is always taken.
  The `beq` branch at 0x21c0594 targets 0x21c01d4 and is always taken.
  The `beq` branch at 0x21c05ac targets 0x21c02e4 and is always taken.
  The return at 0x21c0300 has v0 = one of ?, ret(?).

- `sendChange` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21c08b0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21c08b0-0x21c09e0 (304 bytes).
  It occupies 304 bytes.
  The `ld` at 0x21c08b0 loads 8 bytes from a0 (arg0 at entry) +0x260.
  The `ld` at 0x21c08b8 loads 8 bytes from a0 (arg0 at entry) +0x268.
  6 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x21c08c0, `lw` at 0x21c08f4, `lw` at 0x21c0914.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x1ad8, including `ld` at 0x21c08e4, `ld` at 0x21c0904, `ld` at 0x21c0924.
  The `ld` at 0x21c08e8 loads 8 bytes from [a0+6872]:8 +0xbb8.
  The `ld` at 0x21c0908 loads 8 bytes from [a0+6872]:8 +0xd88.
  The `ld` at 0x21c0928 loads 8 bytes from [a0+6872]:8 +0xc88.
  The `ld` at 0x21c0948 loads 8 bytes from [a0+6872]:8 +0xaa8.
  The `lw` at 0x21c0964 loads 4 bytes from a0 (arg0 at entry) +0x808.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x48f8, including `ld` at 0x21c0974, `ld` at 0x21c0994.
  The `swc1` at 0x21c0990 stores 4 bytes to a0 (arg0 at entry) +0x26c.
  The `swc1` at 0x21c0998 stores 4 bytes to a0 (arg0 at entry) +0x268.
  The `swc1` at 0x21c099c stores 4 bytes to a0 (arg0 at entry) +0x264.
  The `swc1` at 0x21c09a8 stores 4 bytes to a0 (arg0 at entry) +0x260.
  The `ld` at 0x21c09cc loads 8 bytes from [a0+6872]:8 +0xae8.
  The `jalr` at 0x21c08ec calls (unknown callee) with a0=a1+4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a1].
  The `jalr` at 0x21c090c calls (unknown callee) with a0=a1+36, a1=?, a2=?, a3=[a1].
  The `jalr` at 0x21c092c calls (unknown callee) with a0=a1+20, a1=?, a2=?, a3=[a1].
  The `jalr` at 0x21c094c calls (unknown callee) with a0=a1+52, a1=?, a2=?, a3=[a1].
  The `jalr` at 0x21c0978 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a1].
  The `jalr` at 0x21c09a4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x21c09d0 calls (unknown callee) with a0=a1+52, a1=?, a2=?, a3=[a1].
  The `beq` branch at 0x21c08dc targets 0x21c08f8, is taken when (a3(=[a1]) & 0x1) == 0, and falls through when (a3(=[a1]) & 0x1) != 0.
  The `beq` branch at 0x21c08fc targets 0x21c091c, is taken when (a3(=[a1]) & 0x8) == 0, and falls through when (a3(=[a1]) & 0x8) != 0.
  The `beq` branch at 0x21c091c targets 0x21c093c, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x21c093c targets 0x21c09c0, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x21c095c targets 0x21c09b0, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x21c096c targets 0x21c09b0, is taken when (at(=[a0+2056]) & 0x80) == 0, and falls through when (at(=[a0+2056]) & 0x80) != 0.
  The `beq` branch at 0x21c09c0 targets 0x21c095c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x21c09d8 targets 0x21c0958 and is always taken.
  The return at 0x21c09b8 has v0 = one of ?, ret(?).

- `IsLegalRange` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22176d0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22176d0-0x2217748 (120 bytes).
  It occupies 120 bytes.
  The `jalr` at 0x2217720 calls __glSetError [0x227a070] with a0=0x501, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bltz` branch at 0x22176d8 targets 0x2217738, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `beq` branch at 0x22176e8 targets 0x2217738, is taken when a1 >= 0x2 (signed), and falls through when a1 < 0x2 (signed).
  The `bltz` branch at 0x22176f8 targets 0x221771c, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `bne` branch at 0x2217704 targets 0x221771c, is taken when (a0(?) & v1(?)) != 0, and falls through when (a0(?) & v1(?)) == 0.
  The `bne` branch at 0x221770c targets 0x2217720, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The return at 0x2217714 has v0 = 0x1.
  The return at 0x2217730 has v0 = 0x0.
  The return at 0x2217740 has v0 = 0x0.

- `vvec` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2235680 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2235680-0x223575c (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0x2235680 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0x2235688 loads 4 bytes from a2 (arg2 at entry) +0xc.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0x2235694, `lwc1` at 0x223573c.
  The `lwc1` at 0x22356a0 loads 4 bytes from a1 (arg1 at entry) +0xc.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0x22356a4, `lwc1` at 0x2235720, `lwc1` at 0x2235738.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0x22356a8, `lwc1` at 0x2235728, `lwc1` at 0x2235734.
  5 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `swc1` at 0x22356b4, `swc1` at 0x22356ec, `swc1` at 0x2235718.
  5 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `swc1` at 0x22356bc, `swc1` at 0x22356e4, `swc1` at 0x2235710.
  5 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `swc1` at 0x22356c0, `swc1` at 0x22356e0, `swc1` at 0x2235708.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lwc1` at 0x22356c4, `lwc1` at 0x22356f4.
  The `lwc1` at 0x22356c8 loads 4 bytes from a2 (arg2 at entry) +0xc.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lwc1` at 0x22356cc, `lwc1` at 0x22356fc.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lwc1` at 0x22356d0, `lwc1` at 0x22356f0.
  The `beq` branch at 0x223568c targets 0x22356f0, is taken when a5(=([a1+12] << 0x1)) == 0, and falls through when a5(=([a1+12] << 0x1)) != 0.
  The `beq` branch at 0x2235698 targets 0x223571c, is taken when a4(=([a2+12] << 0x1)) == 0, and falls through when a4(=([a2+12] << 0x1)) != 0.
  The `beq` branch at 0x22356f8 targets 0x2235734, is taken when a4(=([a2+12] << 0x1)) == 0, and falls through when a4(=([a2+12] << 0x1)) != 0.
  The return at 0x22356e8 has v0 = ?.
  The return at 0x2235714 has v0 = ?.
  The return at 0x223572c has v0 = ?.
  The return at 0x2235754 has v0 = ?.

- `Dot` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22366c0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22366c0-0x22366e8 (40 bytes).
  It occupies 40 bytes.
  The `lwc1` at 0x22366c0 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0x22366c4 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0x22366c8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0x22366cc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0x22366d0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lwc1` at 0x22366d8 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The return at 0x22366e0 has v0 = ?.

- `Clear` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22675d0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22675d0-0x2267904 (820 bytes).
  It occupies 820 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x22675e4, `ld` at 0x2267900.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x18, including `ld` at 0x22675f4, `ld` at 0x22678f8.
  The `lw` at 0x2267600 loads 4 bytes from [a0]:8 +0x9504.
  The `lw` at 0x226760c loads 4 bytes from [a0]:8 +0x94fc.
  The `lw` at 0x2267618 loads 4 bytes from [a0]:8 +0x94f8.
  The `lw` at 0x226761c loads 4 bytes from [a0]:8 +0x9500.
  The `lwc1` at 0x2267620 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `lwc1` at 0x2267624 loads 4 bytes from [a0]:8 +0x9a18.
  The `lwc1` at 0x2267628 loads 4 bytes from [a0]:8 +0x77c.
  The `lwc1` at 0x226762c loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `lwc1` at 0x2267630 loads 4 bytes from [a0]:8 +0x99f8.
  The `lwc1` at 0x2267634 loads 4 bytes from [a0]:8 +0x778.
  The `lwc1` at 0x2267638 loads 4 bytes from [a0]:8 +0x99f4.
  The `lw` at 0x226763c loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x2267640 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lwc1` at 0x2267648 loads 4 bytes from [a0]:8 +0x774.
  The `lwc1` at 0x2267654 loads 4 bytes from [a0]:8 +0x99f0.
  The `lwc1` at 0x2267660 loads 4 bytes from [a0]:8 +0x770.
  The `lwc1` at 0x2267668 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `lwc1` at 0x2267670 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0x22676ac loads 4 bytes from [a0]:8 +0xfb0.
  84 such `sh` accesses store 2 bytes to ?, including `sh` at 0x22676f4, `sh` at 0x22676f8, `sh` at 0x22676fc.
  The `ld` at 0x22678d0 loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0x22678e4 calls (unknown callee) with a0=[a0]:8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2267614 targets 0x22678d0, is taken when t0(=[a0+24]:8) == 0, and falls through when t0(=[a0+24]:8) != 0.
  The `beq` branch at 0x22676d0 targets 0x22678b4, is taken when s0(=[[a0]:8+38140]) >= s1(=[[a0]:8+38148]) (signed), and falls through when s0(=[[a0]:8+38140]) < s1(=[[a0]:8+38148]) (signed).
  The `beq` branch at 0x22676e4 targets 0x2267894 and is always taken.
  The `bne` branch at 0x2267738 targets 0x22676f0, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x2267740 targets 0x226785c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x2267854 targets 0x2267750, is taken when a0(?) != a1(=-0x1), and falls through when a0(?) == a1(=-0x1).
  The `bltz` branch at 0x2267860 targets 0x226788c, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The `bne` branch at 0x2267884 targets 0x2267870, is taken when a0(?) != a1(=-0x1), and falls through when a0(?) == a1(=-0x1).
  The `beq` branch at 0x226788c targets 0x22678b4, is taken when s0(?) == s1(=[[a0]:8+38148]), and falls through when s0(?) != s1(=[[a0]:8+38148]).
  The `bltz` branch at 0x2267894 targets 0x226785c, is taken when t2(?) < 0 (signed), and falls through when t2(?) >= 0 (signed).
  The `bne` branch at 0x22678a4 targets 0x22676f0, is taken when (t1(?) & 0x3) != 0, and falls through when (t1(?) & 0x3) == 0.
  The `beq` branch at 0x22678ac targets 0x2267740 and is always taken.
  The `beq` branch at 0x22678fc targets 0x226761c and is always taken.
  The return at 0x22678c8 has v0 = ?.
  The instructions from 0x22676ec to 0x22676ec are not reached by any path from the entry, and their branches are not listed.

- `Resize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x227d740 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x227d740-0x227d788 (72 bytes).
  It occupies 72 bytes.
  The `sb` at 0x227d778 stores 1 byte to a0 (arg0 at entry) +0x90.
  The `jalr` at 0x227d764 calls __glResizeBuffer [0x2273580] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x227d780 has v0 = 0x1.

- `__glNormalize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x229d670 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x229d670-0x229d704 (148 bytes).
  It occupies 148 bytes.
  3 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lwc1` at 0x229d670, `lwc1` at 0x229d6b4, `lwc1` at 0x229d6d8.
  The `lwc1` at 0x229d674 loads 4 bytes from a1 (arg1 at entry) +0x0.
  3 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lwc1` at 0x229d678, `lwc1` at 0x229d6bc, `lwc1` at 0x229d6e4.
  The `lwc1` at 0x229d6a0 loads 4 bytes from abs 0x23477a0.
  3 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `swc1` at 0x229d6b0, `swc1` at 0x229d6d4, `swc1` at 0x229d700.
  3 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `swc1` at 0x229d6b8, `swc1` at 0x229d6e0, `swc1` at 0x229d6f8.
  3 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `swc1` at 0x229d6c4, `swc1` at 0x229d6f0, `swc1` at 0x229d6f4.
  The `bc1t` branch at 0x229d698 targets 0x229d6f4, is taken when f4 <= f6(=[a1+8]) (c.le.s at 0x229d68c), and falls through when not (f4 <= f6(=[a1+8]) (c.le.s at 0x229d68c)).
  The `bc1f` branch at 0x229d6a8 targets 0x229d6c8, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The return at 0x229d6c0 has v0 = 0xa9848.
  The return at 0x229d6ec has v0 = 0xa9848.
  The return at 0x229d6fc has v0 = 0xa9848.

- `Coverage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22a44e0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22a44e0-0x22a4630 (336 bytes).
  It occupies 336 bytes.
  The `bc1f` branch at 0x22a4520 targets 0x22a452c, is taken when not (f9 <= f5 (c.le.s at 0x22a4518)), and falls through when f9 <= f5 (c.le.s at 0x22a4518).
  The `bc1f` branch at 0x22a4530 targets 0x22a453c, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x22a453c targets 0x22a4548, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x22a4548 targets 0x22a4554, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0x22a4560 targets 0x22a456c, is taken when not (f9 <= f5 (c.le.s at 0x22a455c)), and falls through when f9 <= f5 (c.le.s at 0x22a455c).
  The `bc1f` branch at 0x22a4570 targets 0x22a457c, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x22a4580 targets 0x22a458c, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x22a4590 targets 0x22a459c, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0x22a45ac targets 0x22a45b8, is taken when not (f9 <= f5 (c.le.s at 0x22a45a4)), and falls through when f9 <= f5 (c.le.s at 0x22a45a4).
  The `bc1f` branch at 0x22a45bc targets 0x22a45c8, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x22a45cc targets 0x22a45d8, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x22a45d8 targets 0x22a45e4, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0x22a45e8 targets 0x22a45f4, is taken when not (f9 <= f5 (c.le.s at 0x22a45e4)), and falls through when f9 <= f5 (c.le.s at 0x22a45e4).
  The `bc1f` branch at 0x22a45f8 targets 0x22a4604, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x22a4608 targets 0x22a4614, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x22a4618 targets 0x22a4628, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The return at 0x22a4620 has v0 = ?.
  The return at 0x22a4628 has v0 = ?.

- `SetInitialParameters` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22a6b60 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22a6b60-0x22a70fc (1436 bytes).
  It occupies 1436 bytes.
  The `lw` at 0x22a6b70 loads 4 bytes from a0 (arg0 at entry) +0x96d4.
  The `lw` at 0x22a6b74 loads 4 bytes from a0 (arg0 at entry) +0x96d0.
  The `lw` at 0x22a6b8c loads 4 bytes from a0 (arg0 at entry) +0x97fc.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9764, including `lwc1` at 0x22a6bcc, `lwc1` at 0x22a6db0, `lwc1` at 0x22a709c.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9774, including `lwc1` at 0x22a6bd0, `lwc1` at 0x22a6db4, `lwc1` at 0x22a70a0.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0x22a6bd4, `lwc1` at 0x22a6db8, `lwc1` at 0x22a70a4.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9778, including `lwc1` at 0x22a6be4, `lwc1` at 0x22a6dc8.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9768, including `lwc1` at 0x22a6be8, `lwc1` at 0x22a6dcc.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9718, including `swc1` at 0x22a6bec, `swc1` at 0x22a6dd0, `swc1` at 0x22a70c4.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9744, including `swc1` at 0x22a6bf0, `swc1` at 0x22a6dd4, `swc1` at 0x22a70b4.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9754, including `swc1` at 0x22a6bf8, `swc1` at 0x22a6ddc, `swc1` at 0x22a70bc.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0x22a6bfc, `lwc1` at 0x22a6de0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x977c, including `lwc1` at 0x22a6c0c, `lwc1` at 0x22a6df0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x976c, including `lwc1` at 0x22a6c10, `lwc1` at 0x22a6df4.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9748, including `swc1` at 0x22a6c14, `swc1` at 0x22a6dfc.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x971c, including `swc1` at 0x22a6c18, `swc1` at 0x22a6df8.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9758, including `swc1` at 0x22a6c20, `swc1` at 0x22a6e04.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0x22a6c24, `lwc1` at 0x22a6e08.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9780, including `lwc1` at 0x22a6c34, `lwc1` at 0x22a6e18.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9770, including `lwc1` at 0x22a6c38, `lwc1` at 0x22a6e1c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x974c, including `swc1` at 0x22a6c3c, `swc1` at 0x22a6e24.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9720, including `swc1` at 0x22a6c40, `swc1` at 0x22a6e20.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x975c, including `swc1` at 0x22a6c48, `swc1` at 0x22a6e2c.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lwc1` at 0x22a6c50, `lwc1` at 0x22a6e34.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9750, including `swc1` at 0x22a6c5c, `swc1` at 0x22a6e40.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9760, including `swc1` at 0x22a6c64, `swc1` at 0x22a6e48.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9724, including `swc1` at 0x22a6c68, `swc1` at 0x22a6e4c.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x94, including `lwc1` at 0x22a6c78, `lwc1` at 0x22a6e5c.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x38, including `lwc1` at 0x22a6c7c, `lwc1` at 0x22a6e60.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97c4, including `lwc1` at 0x22a6c80, `lwc1` at 0x22a6e64.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97d8, including `lwc1` at 0x22a6c84, `lwc1` at 0x22a6e68.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x979c, including `swc1` at 0x22a6c98, `swc1` at 0x22a6e80.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9728, including `swc1` at 0x22a6c9c, `swc1` at 0x22a6e7c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97b0, including `swc1` at 0x22a6ca4, `swc1` at 0x22a6e88.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x3c, including `lwc1` at 0x22a6ca8, `lwc1` at 0x22a6e8c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97c8, including `lwc1` at 0x22a6cac, `lwc1` at 0x22a6e90.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97dc, including `lwc1` at 0x22a6cb0, `lwc1` at 0x22a6e94.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97a0, including `swc1` at 0x22a6cc4, `swc1` at 0x22a6eac.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x972c, including `swc1` at 0x22a6cc8, `swc1` at 0x22a6ea8.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97b4, including `swc1` at 0x22a6cd0, `swc1` at 0x22a6eb4.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x40, including `lwc1` at 0x22a6cd4, `lwc1` at 0x22a6eb8.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97cc, including `lwc1` at 0x22a6cd8, `lwc1` at 0x22a6ebc.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97e0, including `lwc1` at 0x22a6cdc, `lwc1` at 0x22a6ec0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97a4, including `swc1` at 0x22a6cf0, `swc1` at 0x22a6ed8.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9730, including `swc1` at 0x22a6cf4, `swc1` at 0x22a6ed4.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97b8, including `swc1` at 0x22a6cfc, `swc1` at 0x22a6ee0.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x44, including `lwc1` at 0x22a6d00, `lwc1` at 0x22a6ee4.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97d0, including `lwc1` at 0x22a6d04, `lwc1` at 0x22a6ee8.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97e4, including `lwc1` at 0x22a6d08, `lwc1` at 0x22a6eec.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97e8, including `lwc1` at 0x22a6d1c, `lwc1` at 0x22a6f00.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97d4, including `lwc1` at 0x22a6d20, `lwc1` at 0x22a6f04.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97a8, including `swc1` at 0x22a6d24, `swc1` at 0x22a6f0c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9734, including `swc1` at 0x22a6d28, `swc1` at 0x22a6f08.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97bc, including `swc1` at 0x22a6d30, `swc1` at 0x22a6f14.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0xbc, including `lwc1` at 0x22a6d38, `lwc1` at 0x22a6f1c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97ac, including `swc1` at 0x22a6d44, `swc1` at 0x22a6f28.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97c0, including `swc1` at 0x22a6d4c, `swc1` at 0x22a6f30.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9738, including `swc1` at 0x22a6d50, `swc1` at 0x22a6f34.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x808, including `lw` at 0x22a6d5c, `lw` at 0x22a6f40.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9794, including `lwc1` at 0x22a6d90, `lwc1` at 0x22a6f74, `lwc1` at 0x22a6f88.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9798, including `lwc1` at 0x22a6d94, `lwc1` at 0x22a6f78, `lwc1` at 0x22a6f84.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x9714, including `sw` at 0x22a6d9c, `sw` at 0x22a6f80, `sw` at 0x22a6fa0.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x90, including `lwc1` at 0x22a6f8c, `lwc1` at 0x22a7008.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9784, including `swc1` at 0x22a6fb0, `swc1` at 0x22a702c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9788, including `swc1` at 0x22a6fb8, `swc1` at 0x22a7034.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97f8, including `lwc1` at 0x22a6fc4, `lwc1` at 0x22a7040.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x97f4, including `lwc1` at 0x22a6fc8, `lwc1` at 0x22a7044.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97ec, including `swc1` at 0x22a6fe4, `swc1` at 0x22a7060.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97f0, including `swc1` at 0x22a6fec, `swc1` at 0x22a7068.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x973c, including `swc1` at 0x22a6ff0, `swc1` at 0x22a706c.
  The `bgezall` at 0x22a6d7c calls __glPolygonOffsetZ [0x22a9130] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f14=f16, f15=f17.
  The `bgezall` at 0x22a6f60 calls __glPolygonOffsetZ [0x22a9130] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f14=f16, f15=f17.
  The `bc1f` branch at 0x22a6bb4 targets 0x22a6da0, is taken when not (f24 < f0 (c.lt.s at 0x22a6b90)), and falls through when f24 < f0 (c.lt.s at 0x22a6b90).
  The `beq` branch at 0x22a6bbc targets 0x22a7094, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x22a6bc4 targets 0x22a6c70, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x22a6c70 targets 0x22a6d54, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x22a6d54 targets 0x22a6fbc, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bgez` branch at 0x22a6d64 targets 0x22a6f84, is taken when t9(=([a0+2056] << 0x27)) >= 0 (signed), and falls through when t9(=([a0+2056] << 0x27)) < 0 (signed).
  The `beq` branch at 0x22a6d98 targets 0x22a6fa4 and is always taken.
  The `beq` branch at 0x22a6da0 targets 0x22a70c8, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x22a6da8 targets 0x22a6e54, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x22a6e54 targets 0x22a6f38, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x22a6f38 targets 0x22a7038, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bgez` branch at 0x22a6f48 targets 0x22a7000, is taken when v0(=([a0+2056] << 0x27)) >= 0 (signed), and falls through when v0(=([a0+2056] << 0x27)) < 0 (signed).
  The `beq` branch at 0x22a6f7c targets 0x22a7020 and is always taken.
  The `beq` branch at 0x22a6fbc targets 0x22a707c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x22a7038 targets 0x22a707c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x22a7094 targets 0x22a6d54, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x22a70c0 targets 0x22a6d54 and is always taken.
  The `beq` branch at 0x22a70c8 targets 0x22a6f38, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x22a70f4 targets 0x22a6f38 and is always taken.
  The return at 0x22a6ff8 has v0 = ?.
  The return at 0x22a7074 has v0 = ?.
  The return at 0x22a708c has v0 = ?.

- `__glDepthTestSpan` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22aeb30 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22aeb30-0x22aed30 (512 bytes).
  It occupies 512 bytes.
  The `ld` at 0x22aeb48 loads 8 bytes from a0 (arg0 at entry) +0x4928.
  The `ld` at 0x22aeb50 loads 8 bytes from a0 (arg0 at entry) +0x9800.
  The `lw` at 0x22aeb58 loads 4 bytes from a0 (arg0 at entry) +0x9714.
  The `lw` at 0x22aeb5c loads 4 bytes from a0 (arg0 at entry) +0x9d60.
  The `lw` at 0x22aeb60 loads 4 bytes from a0 (arg0 at entry) +0x9790.
  The `ld` at 0x22aeb64 loads 8 bytes from a0 (arg0 at entry) +0x9830.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9740, including `lw` at 0x22aeb78, `lw` at 0x22aecb4.
  The `lw` at 0x22aeb84 loads 4 bytes from a0 (arg0 at entry) +0x978c.
  The `lw` at 0x22aeb8c loads 4 bytes from a0 (arg0 at entry) +0x9d68.
  The `lw` at 0x22aebe8 loads 4 bytes from ?.
  The `sw` at 0x22aec38 stores 4 bytes to ?.
  The `sb` at 0x22aed08 stores 1 byte to a0 (arg0 at entry) +0x9838.
  The `jalr` at 0x22aebec calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x22aeb98 targets 0x22aed0c, is taken when at(=[a0+38720]) == 0, and falls through when at(=[a0+38720]) != 0.
  The `beq` branch at 0x22aebc0 targets 0x22aed24 and is always taken.
  The `bne` branch at 0x22aec14 targets 0x22aebe0, is taken when s3(?) != s8(=-0x1), and falls through when s3(?) == s8(=-0x1).
  The `beq` branch at 0x22aec40 targets 0x22aec90, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bgez` branch at 0x22aec80 targets 0x22aebd0, is taken when s3(?) >= 0 (signed), and falls through when s3(?) < 0 (signed).
  The `beq` branch at 0x22aec88 targets 0x22aec1c and is always taken.
  The `beq` branch at 0x22aeca4 targets 0x22aed0c, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `beq` branch at 0x22aecd4 targets 0x22aecf0, is taken when at(=[a0+38720]) == s5(?), and falls through when at(=[a0+38720]) != s5(?).
  The `beq` branch at 0x22aed1c targets 0x22aece4 and is always taken.
  The `beq` branch at 0x22aed28 targets 0x22aec4c and is always taken.
  The return at 0x22aece8 has v0 = one of 0x0, 0x1.
  The return at 0x22aed04 has v0 = 0x1.
  The instructions from 0x22aebc8 to 0x22aebcc are not reached by any path from the entry, and their branches are not listed.

- `__glDepthTestStippledSpan` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22aed30 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22aed30-0x22aef48 (536 bytes).
  It occupies 536 bytes.
  The `ld` at 0x22aed30 loads 8 bytes from a0 (arg0 at entry) +0x4928.
  The `ld` at 0x22aed68 loads 8 bytes from a0 (arg0 at entry) +0x9800.
  The `lw` at 0x22aed70 loads 4 bytes from a0 (arg0 at entry) +0x9d60.
  The `lw` at 0x22aed74 loads 4 bytes from a0 (arg0 at entry) +0x9790.
  The `lw` at 0x22aed80 loads 4 bytes from a0 (arg0 at entry) +0x9d68.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9740, including `lw` at 0x22aed88, `lw` at 0x22aeea4.
  The `lw` at 0x22aed90 loads 4 bytes from a0 (arg0 at entry) +0x978c.
  The `lw` at 0x22aed94 loads 4 bytes from a0 (arg0 at entry) +0x9714.
  The `ld` at 0x22aeda4 loads 8 bytes from a0 (arg0 at entry) +0x9830.
  The `sw` at 0x22aedf0 stores 4 bytes to ?.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x22aee44, `lw` at 0x22aee58.
  The `jalr` at 0x22aee5c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x22aedb0 targets 0x22aeee4, is taken when at(=[a0+38720]) == 0, and falls through when at(=[a0+38720]) != 0.
  The `beq` branch at 0x22aedc4 targets 0x22aef3c and is always taken.
  The `beq` branch at 0x22aedf8 targets 0x22aeea0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bltz` branch at 0x22aee40 targets 0x22aef1c, is taken when s3(?) < 0 (signed), and falls through when s3(?) >= 0 (signed).
  The `beq` branch at 0x22aee48 targets 0x22aef30 and is always taken.
  The `beq` branch at 0x22aee88 targets 0x22aedd0, is taken when s3(?) == s8(=-0x1), and falls through when s3(?) != s8(=-0x1).
  The `bne` branch at 0x22aee90 targets 0x22aee50, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x22aee98 targets 0x22aee78 and is always taken.
  The `beq` branch at 0x22aeea8 targets 0x22aeee4, is taken when a2(=[a0+38720]) == s4(?), and falls through when a2(=[a0+38720]) != s4(?).
  The `beq` branch at 0x22aef1c targets 0x22aedd4 and is always taken.
  The `beq` branch at 0x22aef34 targets 0x22aee90 and is always taken.
  The `beq` branch at 0x22aef40 targets 0x22aee04 and is always taken.
  The return at 0x22aeedc has v0 = 0x0.
  The return at 0x22aef14 has v0 = 0x1.
  The instructions from 0x22aedcc to 0x22aedcc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x22aef24 to 0x22aef2c are not reached by any path from the entry, and their branches are not listed.

- `__glDepthTestStencilSpan` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22aef50 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22aef50-0x22af19c (588 bytes).
  It occupies 588 bytes.
  The `ld` at 0x22aef6c loads 8 bytes from a0 (arg0 at entry) +0x4928.
  The `ld` at 0x22aef74 loads 8 bytes from a0 (arg0 at entry) +0x9c98.
  The `ld` at 0x22aef78 loads 8 bytes from a0 (arg0 at entry) +0x9810.
  The `ld` at 0x22aef7c loads 8 bytes from a0 (arg0 at entry) +0x9800.
  The `ld` at 0x22aef84 loads 8 bytes from a0 (arg0 at entry) +0x9c90.
  The `lw` at 0x22aef88 loads 4 bytes from a0 (arg0 at entry) +0x9714.
  The `lw` at 0x22aef8c loads 4 bytes from a0 (arg0 at entry) +0x9d60.
  The `lw` at 0x22aef90 loads 4 bytes from a0 (arg0 at entry) +0x9790.
  The `ld` at 0x22aef94 loads 8 bytes from a0 (arg0 at entry) +0x9830.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9740, including `lw` at 0x22aefac, `lw` at 0x22af124.
  The `lw` at 0x22aefb8 loads 4 bytes from a0 (arg0 at entry) +0x978c.
  The `lw` at 0x22aefc0 loads 4 bytes from a0 (arg0 at entry) +0x9d68.
  The `sw` at 0x22af020 stores 4 bytes to ?.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x22af084, `lbu` at 0x22af0bc, `lbu` at 0x22af0dc.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x22af088, `sb` at 0x22af0ec.
  The `lw` at 0x22af0a0 loads 4 bytes from ?.
  The `sb` at 0x22af170 stores 1 byte to a0 (arg0 at entry) +0x9838.
  The `jalr` at 0x22af0a4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x22aefcc targets 0x22af174, is taken when at(=[a0+38720]) == 0, and falls through when at(=[a0+38720]) != 0.
  The `beq` branch at 0x22aeff0 targets 0x22af190 and is always taken.
  The `beq` branch at 0x22af028 targets 0x22af0f8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bltz` branch at 0x22af06c targets 0x22af0f0, is taken when s4(?) < 0 (signed), and falls through when s4(?) >= 0 (signed).
  The `beq` branch at 0x22af074 targets 0x22af098 and is always taken.
  The `beq` branch at 0x22af090 targets 0x22af000, is taken when s4(?) == s8(=-0x1), and falls through when s4(?) != s8(=-0x1).
  The `bne` branch at 0x22af0b8 targets 0x22af080, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0x22af0e8 targets 0x22af08c and is always taken.
  The `beq` branch at 0x22af0f0 targets 0x22af000 and is always taken.
  The `beq` branch at 0x22af10c targets 0x22af174, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x22af144 targets 0x22af15c, is taken when a2(=[a0+38720]) == a3(?), and falls through when a2(=[a0+38720]) != a3(?).
  The `beq` branch at 0x22af188 targets 0x22af150 and is always taken.
  The `beq` branch at 0x22af194 targets 0x22af034 and is always taken.
  The return at 0x22af154 has v0 = one of 0x0, 0x1.
  The return at 0x22af16c has v0 = 0x1.
  The instructions from 0x22aeff8 to 0x22aeffc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x22af07c to 0x22af07c are not reached by any path from the entry, and their branches are not listed.

- `__glDepthTestStencilStippledSpan` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22af1a0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22af1a0-0x22af3f0 (592 bytes).
  It occupies 592 bytes.
  The `ld` at 0x22af1a0 loads 8 bytes from a0 (arg0 at entry) +0x4928.
  The `ld` at 0x22af1d8 loads 8 bytes from a0 (arg0 at entry) +0x9810.
  The `ld` at 0x22af1dc loads 8 bytes from a0 (arg0 at entry) +0x9800.
  The `ld` at 0x22af1e4 loads 8 bytes from a0 (arg0 at entry) +0x9c98.
  The `lw` at 0x22af1e8 loads 4 bytes from a0 (arg0 at entry) +0x9714.
  The `lw` at 0x22af1ec loads 4 bytes from a0 (arg0 at entry) +0x9d60.
  The `lw` at 0x22af1f0 loads 4 bytes from a0 (arg0 at entry) +0x9790.
  The `lw` at 0x22af204 loads 4 bytes from a0 (arg0 at entry) +0x9d68.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9740, including `lw` at 0x22af20c, `lw` at 0x22af364.
  The `lw` at 0x22af214 loads 4 bytes from a0 (arg0 at entry) +0x978c.
  The `ld` at 0x22af218 loads 8 bytes from a0 (arg0 at entry) +0x9c90.
  The `ld` at 0x22af228 loads 8 bytes from a0 (arg0 at entry) +0x9830.
  The `sw` at 0x22af274 stores 4 bytes to ?.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x22af2cc, `lw` at 0x22af2e8.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x22af2f8, `lbu` at 0x22af304, `lbu` at 0x22af350.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x22af308, `sb` at 0x22af35c.
  The `jalr` at 0x22af2ec calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x22af234 targets 0x22af3a4, is taken when at(=[a0+38720]) == 0, and falls through when at(=[a0+38720]) != 0.
  The `beq` branch at 0x22af248 targets 0x22af3e4 and is always taken.
  The `beq` branch at 0x22af27c targets 0x22af360, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bltz` branch at 0x22af2c8 targets 0x22af3dc, is taken when s4(?) < 0 (signed), and falls through when s4(?) >= 0 (signed).
  The `beq` branch at 0x22af2d0 targets 0x22af324 and is always taken.
  The `beq` branch at 0x22af2f4 targets 0x22af338, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x22af31c targets 0x22af250, is taken when s4(?) == s8(=-0x1), and falls through when s4(?) != s8(=-0x1).
  The `bne` branch at 0x22af328 targets 0x22af2e0, is taken when (s5(?) & s1(?)) != 0, and falls through when (s5(?) & s1(?)) == 0.
  The `beq` branch at 0x22af330 targets 0x22af30c and is always taken.
  The `beq` branch at 0x22af358 targets 0x22af30c and is always taken.
  The `beq` branch at 0x22af368 targets 0x22af3a4, is taken when a2(=[a0+38720]) == s7(?), and falls through when a2(=[a0+38720]) != s7(?).
  The `beq` branch at 0x22af3dc targets 0x22af250 and is always taken.
  The `beq` branch at 0x22af3e8 targets 0x22af288 and is always taken.
  The return at 0x22af39c has v0 = 0x0.
  The return at 0x22af3d4 has v0 = 0x1.
  The instructions from 0x22af2d8 to 0x22af2dc are not reached by any path from the entry, and their branches are not listed.

- `__glXForm2` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22e8980 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22e8980-0x22e89fc (124 bytes).
  It occupies 124 bytes.
  The `lwc1` at 0x22e8980 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0x22e8984 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0x22e8988 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lwc1` at 0x22e898c loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x22e8998 loads 4 bytes from a2 (arg2 at entry) +0x30.
  The `swc1` at 0x22e89a0 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `lwc1` at 0x22e89a4 loads 4 bytes from a2 (arg2 at entry) +0x14.
  The `lwc1` at 0x22e89a8 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0x22e89b4 loads 4 bytes from a2 (arg2 at entry) +0x34.
  The `swc1` at 0x22e89bc stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `lwc1` at 0x22e89c0 loads 4 bytes from a2 (arg2 at entry) +0x18.
  The `lwc1` at 0x22e89c4 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0x22e89d0 loads 4 bytes from a2 (arg2 at entry) +0x38.
  The `swc1` at 0x22e89d8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lwc1` at 0x22e89dc loads 4 bytes from a2 (arg2 at entry) +0x1c.
  The `lwc1` at 0x22e89e0 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0x22e89ec loads 4 bytes from a2 (arg2 at entry) +0x3c.
  The `swc1` at 0x22e89f8 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The return at 0x22e89f4 has v0 = ?.

- `__glXForm3` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22e8a00 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22e8a00-0x22e8aa0 (160 bytes).
  It occupies 160 bytes.
  The `lwc1` at 0x22e8a00 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0x22e8a04 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0x22e8a08 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lwc1` at 0x22e8a0c loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x22e8a10 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lwc1` at 0x22e8a14 loads 4 bytes from a2 (arg2 at entry) +0x20.
  The `lwc1` at 0x22e8a24 loads 4 bytes from a2 (arg2 at entry) +0x30.
  The `swc1` at 0x22e8a2c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `lwc1` at 0x22e8a30 loads 4 bytes from a2 (arg2 at entry) +0x14.
  The `lwc1` at 0x22e8a34 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0x22e8a38 loads 4 bytes from a2 (arg2 at entry) +0x24.
  The `lwc1` at 0x22e8a48 loads 4 bytes from a2 (arg2 at entry) +0x34.
  The `swc1` at 0x22e8a50 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `lwc1` at 0x22e8a54 loads 4 bytes from a2 (arg2 at entry) +0x18.
  The `lwc1` at 0x22e8a58 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0x22e8a5c loads 4 bytes from a2 (arg2 at entry) +0x28.
  The `lwc1` at 0x22e8a6c loads 4 bytes from a2 (arg2 at entry) +0x38.
  The `swc1` at 0x22e8a74 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `lwc1` at 0x22e8a78 loads 4 bytes from a2 (arg2 at entry) +0x1c.
  The `lwc1` at 0x22e8a7c loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0x22e8a84 loads 4 bytes from a2 (arg2 at entry) +0x2c.
  The `lwc1` at 0x22e8a90 loads 4 bytes from a2 (arg2 at entry) +0x3c.
  The `swc1` at 0x22e8a9c stores 4 bytes to a0 (arg0 at entry) +0xc.
  The return at 0x22e8a98 has v0 = ?.

- `__glXForm4` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22e8aa0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22e8aa0-0x22e8bd4 (308 bytes).
  It occupies 308 bytes.
  The `lwc1` at 0x22e8aa0 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0x22e8aa4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0x22e8aac loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x22e8ab4 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lwc1` at 0x22e8abc loads 4 bytes from abs 0x23477a0.
  The `lwc1` at 0x22e8ac0 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lwc1` at 0x22e8ac4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lwc1` at 0x22e8ac8 loads 4 bytes from a2 (arg2 at entry) +0x20.
  The `lwc1` at 0x22e8ad8 loads 4 bytes from a2 (arg2 at entry) +0x30.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `swc1` at 0x22e8ae8, `swc1` at 0x22e8b60.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x14, including `lwc1` at 0x22e8aec, `lwc1` at 0x22e8b64.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0x22e8af0, `lwc1` at 0x22e8b68.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x24, including `lwc1` at 0x22e8af4, `lwc1` at 0x22e8b6c.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x34, including `lwc1` at 0x22e8b04, `lwc1` at 0x22e8b78.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `swc1` at 0x22e8b0c, `swc1` at 0x22e8b84.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x18, including `lwc1` at 0x22e8b10, `lwc1` at 0x22e8b88.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0x22e8b14, `lwc1` at 0x22e8b8c.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x28, including `lwc1` at 0x22e8b18, `lwc1` at 0x22e8b90.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x38, including `lwc1` at 0x22e8b28, `lwc1` at 0x22e8b9c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `swc1` at 0x22e8b30, `swc1` at 0x22e8ba8.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x1c, including `lwc1` at 0x22e8b34, `lwc1` at 0x22e8bac.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lwc1` at 0x22e8b38, `lwc1` at 0x22e8bb0.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x2c, including `lwc1` at 0x22e8b3c, `lwc1` at 0x22e8bb4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x3c, including `lwc1` at 0x22e8b4c, `lwc1` at 0x22e8bc0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0xc, including `swc1` at 0x22e8b58, `swc1` at 0x22e8bd0.
  The `bc1f` branch at 0x22e8adc targets 0x22e8b5c, is taken when not (f9(=[a1+12]) == f12(=0x3f800000) (c.eq.s at 0x22e8ad0)), and falls through when f9(=[a1+12]) == f12(=0x3f800000) (c.eq.s at 0x22e8ad0).
  The return at 0x22e8b54 has v0 = 0x5e418.
  The return at 0x22e8bcc has v0 = 0x5e418.

- `__glXForm2_W` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22e8be0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22e8be0-0x22e8c54 (116 bytes).
  It occupies 116 bytes.
  The `lwc1` at 0x22e8be0 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0x22e8be4 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0x22e8be8 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lwc1` at 0x22e8bec loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x22e8bf8 loads 4 bytes from a2 (arg2 at entry) +0x30.
  The `swc1` at 0x22e8c00 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `lwc1` at 0x22e8c04 loads 4 bytes from a2 (arg2 at entry) +0x14.
  The `lwc1` at 0x22e8c08 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0x22e8c14 loads 4 bytes from a2 (arg2 at entry) +0x34.
  The `swc1` at 0x22e8c1c stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `lwc1` at 0x22e8c20 loads 4 bytes from a2 (arg2 at entry) +0x18.
  The `lwc1` at 0x22e8c24 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0x22e8c3c loads 4 bytes from a2 (arg2 at entry) +0x38.
  The `lwc1` at 0x22e8c40 loads 4 bytes from abs 0x23477a0.
  The `swc1` at 0x22e8c44 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `swc1` at 0x22e8c50 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The return at 0x22e8c4c has v0 = 0x5e2d8.

- `__glXForm3_W` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22e8c60 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22e8c60-0x22e8cf0 (144 bytes).
  It occupies 144 bytes.
  The `lwc1` at 0x22e8c60 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0x22e8c64 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0x22e8c68 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lwc1` at 0x22e8c6c loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x22e8c70 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lwc1` at 0x22e8c74 loads 4 bytes from a2 (arg2 at entry) +0x20.
  The `lwc1` at 0x22e8c84 loads 4 bytes from a2 (arg2 at entry) +0x30.
  The `swc1` at 0x22e8c8c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `lwc1` at 0x22e8c90 loads 4 bytes from a2 (arg2 at entry) +0x14.
  The `lwc1` at 0x22e8c94 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0x22e8c98 loads 4 bytes from a2 (arg2 at entry) +0x24.
  The `lwc1` at 0x22e8ca8 loads 4 bytes from a2 (arg2 at entry) +0x34.
  The `swc1` at 0x22e8cb0 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `lwc1` at 0x22e8cb4 loads 4 bytes from a2 (arg2 at entry) +0x18.
  The `lwc1` at 0x22e8cb8 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0x22e8cc0 loads 4 bytes from a2 (arg2 at entry) +0x28.
  The `lwc1` at 0x22e8cd8 loads 4 bytes from a2 (arg2 at entry) +0x38.
  The `lwc1` at 0x22e8cdc loads 4 bytes from abs 0x23477a0.
  The `swc1` at 0x22e8ce0 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `swc1` at 0x22e8cec stores 4 bytes to a0 (arg0 at entry) +0x8.
  The return at 0x22e8ce8 has v0 = 0x5e258.

- `__glXForm4_W` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22e8cf0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22e8cf0-0x22e8de4 (244 bytes).
  It occupies 244 bytes.
  The `lwc1` at 0x22e8cf0 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0x22e8cf4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0x22e8cfc loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x22e8d04 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lwc1` at 0x22e8d0c loads 4 bytes from abs 0x23477a0.
  The `lwc1` at 0x22e8d10 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lwc1` at 0x22e8d14 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lwc1` at 0x22e8d18 loads 4 bytes from a2 (arg2 at entry) +0x20.
  The `lwc1` at 0x22e8d28 loads 4 bytes from a2 (arg2 at entry) +0x30.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `swc1` at 0x22e8d38, `swc1` at 0x22e8d90.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x14, including `lwc1` at 0x22e8d3c, `lwc1` at 0x22e8d94.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0x22e8d40, `lwc1` at 0x22e8d98.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x24, including `lwc1` at 0x22e8d44, `lwc1` at 0x22e8d9c.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x34, including `lwc1` at 0x22e8d54, `lwc1` at 0x22e8da8.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `swc1` at 0x22e8d5c, `swc1` at 0x22e8db4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x18, including `lwc1` at 0x22e8d60, `lwc1` at 0x22e8db8.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0x22e8d64, `lwc1` at 0x22e8dbc.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x28, including `lwc1` at 0x22e8d68, `lwc1` at 0x22e8dc0.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x38, including `lwc1` at 0x22e8d78, `lwc1` at 0x22e8dcc.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0xc, including `swc1` at 0x22e8d7c, `swc1` at 0x22e8dd8.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `swc1` at 0x22e8d88, `swc1` at 0x22e8de0.
  The `bc1f` branch at 0x22e8d2c targets 0x22e8d8c, is taken when not (f8(=[a1+12]) == f12(=0x3f800000) (c.eq.s at 0x22e8d20)), and falls through when f8(=[a1+12]) == f12(=0x3f800000) (c.eq.s at 0x22e8d20).
  The return at 0x22e8d84 has v0 = 0x5e1c8.
  The return at 0x22e8ddc has v0 = 0x5e1c8.

- `__glXForm2_2DW` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22e8df0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22e8df0-0x22e8e50 (96 bytes).
  It occupies 96 bytes.
  The `lwc1` at 0x22e8df0 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0x22e8df4 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0x22e8df8 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lwc1` at 0x22e8dfc loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x22e8e08 loads 4 bytes from a2 (arg2 at entry) +0x30.
  The `swc1` at 0x22e8e10 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `lwc1` at 0x22e8e14 loads 4 bytes from a2 (arg2 at entry) +0x14.
  The `lwc1` at 0x22e8e18 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0x22e8e28 loads 4 bytes from a2 (arg2 at entry) +0x34.
  The `lwc1` at 0x22e8e34 loads 4 bytes from abs 0x23477a0.
  The `swc1` at 0x22e8e3c stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `lwc1` at 0x22e8e40 loads 4 bytes from a2 (arg2 at entry) +0x38.
  The `swc1` at 0x22e8e44 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `swc1` at 0x22e8e4c stores 4 bytes to a0 (arg0 at entry) +0x8.
  The return at 0x22e8e48 has v0 = 0x5e0c8.

- `__glXForm3_2DW` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22e8e50 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22e8e50-0x22e8ebc (108 bytes).
  It occupies 108 bytes.
  The `lwc1` at 0x22e8e50 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0x22e8e54 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0x22e8e58 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lwc1` at 0x22e8e5c loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x22e8e68 loads 4 bytes from a2 (arg2 at entry) +0x30.
  The `lwc1` at 0x22e8e6c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `swc1` at 0x22e8e74 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `lwc1` at 0x22e8e78 loads 4 bytes from a2 (arg2 at entry) +0x14.
  The `lwc1` at 0x22e8e7c loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0x22e8e88 loads 4 bytes from a2 (arg2 at entry) +0x34.
  The `swc1` at 0x22e8e90 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `lwc1` at 0x22e8e94 loads 4 bytes from a2 (arg2 at entry) +0x28.
  The `lwc1` at 0x22e8e9c loads 4 bytes from a2 (arg2 at entry) +0x38.
  The `lwc1` at 0x22e8eac loads 4 bytes from abs 0x23477a0.
  The `swc1` at 0x22e8eb0 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `swc1` at 0x22e8eb8 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The return at 0x22e8eb4 has v0 = 0x5e068.

- `__glXForm4_2DW` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22e8ec0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22e8ec0-0x22e8f78 (184 bytes).
  It occupies 184 bytes.
  The `lwc1` at 0x22e8ec4 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lwc1` at 0x22e8ecc loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lwc1` at 0x22e8ed4 loads 4 bytes from abs 0x23477a0.
  The `lwc1` at 0x22e8ed8 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0x22e8edc loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x22e8ee0 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0x22e8ee8 loads 4 bytes from a2 (arg2 at entry) +0x30.
  The `lwc1` at 0x22e8ef8 loads 4 bytes from a1 (arg1 at entry) +0x8.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `swc1` at 0x22e8f00, `swc1` at 0x22e8f3c.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x14, including `lwc1` at 0x22e8f04, `lwc1` at 0x22e8f40.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0x22e8f08, `lwc1` at 0x22e8f44.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x34, including `lwc1` at 0x22e8f14, `lwc1` at 0x22e8f48.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `swc1` at 0x22e8f1c, `swc1` at 0x22e8f58.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x28, including `lwc1` at 0x22e8f20, `lwc1` at 0x22e8f60.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x38, including `lwc1` at 0x22e8f24, `lwc1` at 0x22e8f5c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0xc, including `swc1` at 0x22e8f2c, `swc1` at 0x22e8f6c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `swc1` at 0x22e8f34, `swc1` at 0x22e8f74.
  The `bc1f` branch at 0x22e8ef4 targets 0x22e8f38, is taken when not (f8(=[a1+12]) == f9(=0x3f800000) (c.eq.s at 0x22e8ee4)), and falls through when f8(=[a1+12]) == f9(=0x3f800000) (c.eq.s at 0x22e8ee4).
  The return at 0x22e8f30 has v0 = 0x5dff8.
  The return at 0x22e8f70 has v0 = 0x5dff8.

- `__glXForm2_2DNRW` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22e8f80 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22e8f80-0x22e8fc8 (72 bytes).
  It occupies 72 bytes.
  The `lwc1` at 0x22e8f80 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x22e8f84 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0x22e8f88 loads 4 bytes from a2 (arg2 at entry) +0x30.
  The `lwc1` at 0x22e8f90 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0x22e8f94 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `lwc1` at 0x22e8f98 loads 4 bytes from a2 (arg2 at entry) +0x14.
  The `lwc1` at 0x22e8f9c loads 4 bytes from a2 (arg2 at entry) +0x34.
  The `lwc1` at 0x22e8fb0 loads 4 bytes from abs 0x23477a0.
  The `swc1` at 0x22e8fb4 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `lwc1` at 0x22e8fb8 loads 4 bytes from a2 (arg2 at entry) +0x38.
  The `swc1` at 0x22e8fbc stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `swc1` at 0x22e8fc4 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The return at 0x22e8fc0 has v0 = 0x5df38.

- `__glXForm3_2DNRW` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22e8fd0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22e8fd0-0x22e9024 (84 bytes).
  It occupies 84 bytes.
  The `lwc1` at 0x22e8fd0 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x22e8fd4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0x22e8fd8 loads 4 bytes from a2 (arg2 at entry) +0x30.
  The `lwc1` at 0x22e8fe0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lwc1` at 0x22e8fe4 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0x22e8fe8 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `lwc1` at 0x22e8fec loads 4 bytes from a2 (arg2 at entry) +0x14.
  The `lwc1` at 0x22e8ff0 loads 4 bytes from a2 (arg2 at entry) +0x34.
  The `swc1` at 0x22e8ff8 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `lwc1` at 0x22e8ffc loads 4 bytes from a2 (arg2 at entry) +0x28.
  The `lwc1` at 0x22e9004 loads 4 bytes from a2 (arg2 at entry) +0x38.
  The `lwc1` at 0x22e9014 loads 4 bytes from abs 0x23477a0.
  The `swc1` at 0x22e9018 stores 4 bytes to a0 (arg0 at entry) +0xc.
  The `swc1` at 0x22e9020 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The return at 0x22e901c has v0 = 0x5dee8.

- `__glXForm4_2DNRW` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22e9030 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22e9030-0x22e90cc (156 bytes).
  It occupies 156 bytes.
  The `lwc1` at 0x22e9038 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lwc1` at 0x22e9040 loads 4 bytes from abs 0x23477a0.
  The `lwc1` at 0x22e9044 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0x22e9048 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x22e9050 loads 4 bytes from a2 (arg2 at entry) +0x30.
  The `lwc1` at 0x22e9054 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lwc1` at 0x22e9058 loads 4 bytes from a1 (arg1 at entry) +0x4.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `swc1` at 0x22e9068, `swc1` at 0x22e9098.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x14, including `lwc1` at 0x22e906c, `lwc1` at 0x22e90a0.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x34, including `lwc1` at 0x22e9070, `lwc1` at 0x22e909c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `swc1` at 0x22e9078, `swc1` at 0x22e90ac.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x28, including `lwc1` at 0x22e907c, `lwc1` at 0x22e90b4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x38, including `lwc1` at 0x22e9080, `lwc1` at 0x22e90b0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0xc, including `swc1` at 0x22e9088, `swc1` at 0x22e90c0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `swc1` at 0x22e9090, `swc1` at 0x22e90c8.
  The `bc1f` branch at 0x22e905c targets 0x22e9094, is taken when not (f6(=[a1+12]) == f0(=0x3f800000) (c.eq.s at 0x22e904c)), and falls through when f6(=[a1+12]) == f0(=0x3f800000) (c.eq.s at 0x22e904c).
  The return at 0x22e908c has v0 = 0x5de88.
  The return at 0x22e90c4 has v0 = 0x5de88.

- `Store_8` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22ea1f0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22ea1f0-0x22ea36c (380 bytes).
  It occupies 380 bytes.
  The `ld` at 0x22ea1f0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x22ea1f4 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x22ea1f8 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x22ea1fc loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x22ea214 loads 4 bytes from [a0]:8 +0x80c.
  The `ld` at 0x22ea224 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x22ea230 loads 4 bytes from [a0]:8 +0x808.
  The `lw` at 0x22ea234 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x22ea248 loads 4 bytes from [a0]:8 +0xfb0.
  The `lb` at 0x22ea280 loads 1 byte from table(0x23392d0) +0x0.
  The `ld` at 0x22ea2b0 loads 8 bytes from [a0]:8 +0x4d08.
  2 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x22ea2d4, `lwc1` at 0x22ea2d8.
  The `lbu` at 0x22ea2fc loads 1 byte from ?.
  The `lw` at 0x22ea308 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lw` at 0x22ea310 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `lw` at 0x22ea318 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `lw` at 0x22ea320 loads 4 bytes from a0 (arg0 at entry) +0xd0.
  The `lw` at 0x22ea328 loads 4 bytes from a0 (arg0 at entry) +0xd4.
  The `sb` at 0x22ea34c stores 1 byte to ?.
  The `lwc1` at 0x22ea360 loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `lwc1` at 0x22ea368 loads 4 bytes from [a0]:8 +0xf28.
  The `jalr` at 0x22ea2bc calls (unknown callee) with a0=[a0]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-64, a4=[[a0]:8+2056], a5=[a0]:8, a6=[a1], a7=[a1+4].
  The `beq` branch at 0x22ea25c targets 0x22ea364, is taken when (a4(=[[a0]:8+2056]) & 0x8) == 0, and falls through when (a4(=[[a0]:8+2056]) & 0x8) != 0.
  The `bne` branch at 0x22ea2a0 targets 0x22ea2b0, is taken when (a4(=[[a0]:8+2056]) & 0x2) != 0, and falls through when (a4(=[[a0]:8+2056]) & 0x2) == 0.
  The `beq` branch at 0x22ea2a8 targets 0x22ea35c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x22ea35c targets 0x22ea2d0 and is always taken.
  The `beq` branch at 0x22ea364 targets 0x22ea298 and is always taken.
  The return at 0x22ea354 has v0 = ?.

- `Store_16` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22ea370 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22ea370-0x22ea4f8 (392 bytes).
  It occupies 392 bytes.
  The `ld` at 0x22ea370 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x22ea374 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x22ea378 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x22ea37c loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x22ea394 loads 4 bytes from [a0]:8 +0x80c.
  The `ld` at 0x22ea3a8 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x22ea3b4 loads 4 bytes from [a0]:8 +0x808.
  The `lw` at 0x22ea3bc loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x22ea3c4 loads 4 bytes from [a0]:8 +0xfb0.
  The `lb` at 0x22ea40c loads 1 byte from table(0x23392d0) +0x0.
  The `ld` at 0x22ea43c loads 8 bytes from [a0]:8 +0x4d08.
  2 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x22ea460, `lwc1` at 0x22ea464.
  The `lhu` at 0x22ea488 loads 2 bytes from ?.
  The `lw` at 0x22ea494 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lw` at 0x22ea49c loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `lw` at 0x22ea4a4 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `lw` at 0x22ea4ac loads 4 bytes from a0 (arg0 at entry) +0xd0.
  The `lw` at 0x22ea4b4 loads 4 bytes from a0 (arg0 at entry) +0xd4.
  The `sh` at 0x22ea4d8 stores 2 bytes to ?.
  The `lwc1` at 0x22ea4ec loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `lwc1` at 0x22ea4f4 loads 4 bytes from [a0]:8 +0xf28.
  The `jalr` at 0x22ea448 calls (unknown callee) with a0=[a0]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-64, a4=[[a0]:8+2056], a5=[a0]:8, a6=[a1+4], a7=[a1].
  The `beq` branch at 0x22ea3e8 targets 0x22ea4f0, is taken when (a4(=[[a0]:8+2056]) & 0x8) == 0, and falls through when (a4(=[[a0]:8+2056]) & 0x8) != 0.
  The `bne` branch at 0x22ea42c targets 0x22ea43c, is taken when (a4(=[[a0]:8+2056]) & 0x2) != 0, and falls through when (a4(=[[a0]:8+2056]) & 0x2) == 0.
  The `beq` branch at 0x22ea434 targets 0x22ea4e8, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x22ea4e8 targets 0x22ea45c and is always taken.
  The `beq` branch at 0x22ea4f0 targets 0x22ea424 and is always taken.
  The return at 0x22ea4e0 has v0 = ?.

- `Store_32` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22ea670 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22ea670-0x22ea7b8 (328 bytes).
  It occupies 328 bytes.
  The `ld` at 0x22ea678 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x22ea67c loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x22ea680 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x22ea684 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x22ea69c loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x22ea6a4 loads 4 bytes from [a0]:8 +0x80c.
  The `lw` at 0x22ea6ac loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x22ea6c0 loads 4 bytes from [a0]:8 +0x808.
  The `lw` at 0x22ea6c8 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x22ea700 loads 8 bytes from [a0]:8 +0x4d08.
  The `lwc1` at 0x22ea720 loads 4 bytes from [a0]:8 +0xf28.
  2 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x22ea728, `lwc1` at 0x22ea72c.
  The `lw` at 0x22ea750 loads 4 bytes from ?.
  The `lw` at 0x22ea75c loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lw` at 0x22ea764 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `lw` at 0x22ea76c loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `lw` at 0x22ea774 loads 4 bytes from a0 (arg0 at entry) +0xd0.
  The `lw` at 0x22ea77c loads 4 bytes from a0 (arg0 at entry) +0xd4.
  The `sw` at 0x22ea7a0 stores 4 bytes to ?.
  The `lwc1` at 0x22ea7b4 loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `jalr` at 0x22ea70c calls (unknown callee) with a0=[a0]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-64.
  The `bne` branch at 0x22ea6ec targets 0x22ea700, is taken when (at(=[[a0]:8+2056]) & 0x2) != 0, and falls through when (at(=[[a0]:8+2056]) & 0x2) == 0.
  The `beq` branch at 0x22ea6f8 targets 0x22ea7b0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x22ea7b0 targets 0x22ea720 and is always taken.
  The return at 0x22ea7a8 has v0 = one of ret(?), ([[a0]:8+4016] << 0x2).

- `Fetch_8` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22ea7c0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22ea7c0-0x22ea868 (168 bytes).
  It occupies 168 bytes.
  The `ld` at 0x22ea7c0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x22ea7c4 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x22ea7c8 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x22ea7d4 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x22ea7e0 loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x22ea7e8 loads 4 bytes from [a0]:8 +0xe18.
  The `lbu` at 0x22ea7f0 loads 1 byte from ?.
  The `lw` at 0x22ea7f4 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `swc1` at 0x22ea810 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0x22ea814 loads 4 bytes from [a0]:8 +0xe1c.
  The `lw` at 0x22ea818 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `swc1` at 0x22ea834 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lw` at 0x22ea838 loads 4 bytes from [a0]:8 +0xe20.
  The `lw` at 0x22ea83c loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `swc1` at 0x22ea858 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0x22ea85c loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `swc1` at 0x22ea864 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The return at 0x22ea860 has v0 = [a0+176].

- `Fetch_16` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22ea870 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22ea870-0x22ea924 (180 bytes).
  It occupies 180 bytes.
  The `ld` at 0x22ea870 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x22ea874 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x22ea878 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x22ea884 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x22ea88c loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x22ea8a4 loads 4 bytes from [a0]:8 +0xe18.
  The `lhu` at 0x22ea8ac loads 2 bytes from ?.
  The `lw` at 0x22ea8b0 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `swc1` at 0x22ea8cc stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0x22ea8d0 loads 4 bytes from [a0]:8 +0xe1c.
  The `lw` at 0x22ea8d4 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `swc1` at 0x22ea8f0 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lw` at 0x22ea8f4 loads 4 bytes from [a0]:8 +0xe20.
  The `lw` at 0x22ea8f8 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `swc1` at 0x22ea914 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0x22ea918 loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `swc1` at 0x22ea920 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The return at 0x22ea91c has v0 = [a0+176].

- `Fetch_32` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22eaa00 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22eaa00-0x22eaab4 (180 bytes).
  It occupies 180 bytes.
  The `ld` at 0x22eaa00 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x22eaa04 loads 4 bytes from [a0]:8 +0xfb4.
  The `lw` at 0x22eaa08 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x22eaa14 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x22eaa1c loads 4 bytes from [a0]:8 +0xfb0.
  The `lw` at 0x22eaa38 loads 4 bytes from [a0]:8 +0xe18.
  The `lw` at 0x22eaa3c loads 4 bytes from ?.
  The `lw` at 0x22eaa40 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `swc1` at 0x22eaa5c stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0x22eaa60 loads 4 bytes from [a0]:8 +0xe1c.
  The `lw` at 0x22eaa64 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `swc1` at 0x22eaa80 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lw` at 0x22eaa84 loads 4 bytes from [a0]:8 +0xe20.
  The `lw` at 0x22eaa88 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `swc1` at 0x22eaaa4 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0x22eaaa8 loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `swc1` at 0x22eaab0 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The return at 0x22eaaac has v0 = [a0+176].

- `glBlendColorEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318bc0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318bc0-0x2318bcc (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318bc0 loads 8 bytes from abs 0x15d0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318bc4).

- `glBlendEquationEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318bcc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318bcc-0x2318bd8 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318bcc loads 8 bytes from abs 0x15d8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318bd0).

- `glTexSubImage1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318be4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318be4-0x2318bf0 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318be4 loads 8 bytes from abs 0x15e8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318be8).

- `glTexSubImage2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318bf0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318bf0-0x2318bfc (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318bf0 loads 8 bytes from abs 0x15f0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318bf4).

- `glConvolutionFilter1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318bfc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318bfc-0x2318c08 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318bfc loads 8 bytes from abs 0x15f8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318c00).

- `glConvolutionFilter2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318c08 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318c08-0x2318c14 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318c08 loads 8 bytes from abs 0x1600.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318c0c).

- `glConvolutionParameterfEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318c14 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318c14-0x2318c20 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318c14 loads 8 bytes from abs 0x1608.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318c18).

- `glConvolutionParameterfvEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318c20 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318c20-0x2318c2c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318c20 loads 8 bytes from abs 0x1610.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318c24).

- `glConvolutionParameteriEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318c2c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318c2c-0x2318c38 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318c2c loads 8 bytes from abs 0x1618.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318c30).

- `glConvolutionParameterivEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318c38 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318c38-0x2318c44 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318c38 loads 8 bytes from abs 0x1620.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318c3c).

- `glCopyConvolutionFilter1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318c44 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318c44-0x2318c50 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318c44 loads 8 bytes from abs 0x1628.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318c48).

- `glCopyConvolutionFilter2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318c50 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318c50-0x2318c5c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318c50 loads 8 bytes from abs 0x1630.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318c54).

- `glSeparableFilter2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318c8c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318c8c-0x2318c98 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318c8c loads 8 bytes from abs 0x1658.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318c90).

- `glHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318ce0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318ce0-0x2318cec (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318ce0 loads 8 bytes from abs 0x1690.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318ce4).

- `glMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318cec (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318cec-0x2318cf8 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318cec loads 8 bytes from abs 0x1698.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318cf0).

- `glTexImage3DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318d10 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318d10-0x2318d1c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318d10 loads 8 bytes from abs 0x16b0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318d14).

- `glTexSubImage3DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318d1c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318d1c-0x2318d28 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318d1c loads 8 bytes from abs 0x16b8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318d20).

- `glArrayElementEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318d28 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318d28-0x2318d34 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318d28 loads 8 bytes from abs 0x16c0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318d2c).

- `glGetPointervEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318d58 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318d58-0x2318d64 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318d58 loads 8 bytes from abs 0x16e0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318d5c).

- `glCopyTexImage1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318ddc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318ddc-0x2318de8 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318ddc loads 8 bytes from abs 0x1738.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318de0).

- `glCopyTexImage2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318de8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318de8-0x2318df4 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318de8 loads 8 bytes from abs 0x1740.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318dec).

- `glCopyTexSubImage1DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318df4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318df4-0x2318e00 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318df4 loads 8 bytes from abs 0x1748.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318df8).

- `glCopyTexSubImage2DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318e00 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318e00-0x2318e0c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318e00 loads 8 bytes from abs 0x1750.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318e04).

- `glCopyTexSubImage3DEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318e0c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318e0c-0x2318e18 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318e0c loads 8 bytes from abs 0x1758.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318e10).

- `glColorTableSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318f08 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318f08-0x2318f14 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318f08 loads 8 bytes from abs 0x1800.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318f0c).

- `glColorTableParameterfvSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318f14 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318f14-0x2318f20 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318f14 loads 8 bytes from abs 0x1808.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318f18).

- `glColorTableParameterivSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318f20 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318f20-0x2318f2c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318f20 loads 8 bytes from abs 0x1810.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318f24).

- `glCopyColorTableSGI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318f2c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318f2c-0x2318f38 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318f2c loads 8 bytes from abs 0x1818.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318f30).

- `glPointParameterfSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318fc8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318fc8-0x2318fd4 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318fc8 loads 8 bytes from abs 0x1880.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318fcc).

- `glPointParameterfvSGIS` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318fd4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318fd4-0x2318fe0 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318fd4 loads 8 bytes from abs 0x1888.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318fd8).

- `glColor3b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2324000 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2324000-0x2324080 (128 bytes).
  It occupies 128 bytes.
  The `ld` at 0x2324000 loads 8 bytes from abs 0x1ba0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2324004).
  The instructions from 0x232400c to 0x232407c are not reached by any path from the entry, and their branches are not listed.

- `glVertex2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2326900 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2326900-0x2326a00 (256 bytes).
  It occupies 256 bytes.
  The `ld` at 0x2326900 loads 8 bytes from abs 0x1ae0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2326904).
  The instructions from 0x232690c to 0x23269fc are not reached by any path from the entry, and their branches are not listed.

- `sendBlenderColorTokensAccum31` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda2c11c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda2c11c-0xda2c1e4 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xda2c12c loads 4 bytes from abs 0x1010.
  The `lw` at 0xda2c13c loads 4 bytes from [0x1010] +0x7b58.
  The `lw` at 0xda2c174 loads 4 bytes from [0x1010] +0x7b5c.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7b58, including `sw` at 0xda2c188, `sw` at 0xda2c19c.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7b5c, including `sw` at 0xda2c1b0, `sw` at 0xda2c1b4.
  The `lw` at 0xda2c1bc loads 4 bytes from [0x1010] +0x168d0.
  The `sw` at 0xda2c1cc stores 4 bytes to [0x1010] +0x168d0.
  The `sw` at 0xda2c1d4 stores 4 bytes to abs 0x1018.
  The `lw` at 0xda2c1d8 loads 4 bytes from [0x1010] +0x2d44.
  The `sw` at 0xda2c1e0 stores 4 bytes to [0x1010] +0x2d44.
  The return at 0xda2c1dc has v0 = [0x1010].

- `__glOdyim_SoftAccum` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda2fda8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda2fda8-0xda2fed8 (304 bytes).
  It occupies 304 bytes.
  The `lw` at 0xda2fdcc loads 4 bytes from abs 0x1018.
  The `lw` at 0xda2fdd4 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda2fddc loads 4 bytes from [0x1010] +0x79e8.
  The `lw` at 0xda2fe0c loads 4 bytes from [0x1010] +0x7a5c.
  The `lw` at 0xda2fe44 loads 4 bytes from table(0xdbb8578) +0x0.
  The `lw` at 0xda2fea8 loads 4 bytes from [0x1010] +0xc7c.
  The `jalr` at 0xda2fde8 calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `jalr` at 0xda2fe14 calls (unknown callee) with a0=[0x1010], a1=[0x1010]+31192, a2=[0x1010], a3=a3 at entry (arg3).
  The `jalr` at 0xda2fe98 calls __glSetError [0xdb1ac34] with a0=0x500, a1=?, a2=[0x1010], a3=?.
  The `jalr` at 0xda2febc calls (unknown callee) with a0=[0x1010]+31192, a1=a1 at entry (arg1), a2=[0x1010], a3=?.
  The `bnel` branch at 0xda2fdd8 targets 0xda2fdfc, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1); its branch-likely delay slot `lw t7,31208(a2)` at 0xda2fddc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2fdf0 targets 0xda2fec8 and is always taken.
  The `bnel` branch at 0xda2fe00 targets 0xda2fe28, is taken when t7(=[[0x1010]+31208]) != 0, and falls through when t7(=[[0x1010]+31208]) == 0; its branch-likely delay slot `lw t8,48(sp)` at 0xda2fe04 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda2fe30 targets 0xda2fe90, is taken when t0(=a0-256) >= 0x5 (unsigned), and falls through when t0(=a0-256) < 0x5 (unsigned).
  The `beq` branch at 0xda2fe58 targets 0xda2fea8 and is always taken.
  The `beq` branch at 0xda2fe64 targets 0xda2fea8 and is always taken.
  The `beq` branch at 0xda2fe70 targets 0xda2fea8 and is always taken.
  The `beq` branch at 0xda2fe7c targets 0xda2fea8 and is always taken.
  The `beq` branch at 0xda2fe88 targets 0xda2fea8 and is always taken.
  The `beq` branch at 0xda2fea0 targets 0xda2fec8 and is always taken.
  The `bne` branch at 0xda2feb4 targets 0xda2fec8, is taken when t1(=[[0x1010]+3196]) != at(=0x1c00), and falls through when t1(=[[0x1010]+3196]) == at(=0x1c00).
  The return at 0xda2fed0 has v0 = one of ret(__glSetError), ?.
  The instructions from 0xda2fdf8 to 0xda2fdf8 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xda2fe4c uses the jump table at 0xdbb8578 with targets 0xda2fe54, 0xda2fe60, 0xda2fe6c, 0xda2fe78, 0xda2fe84.

- `hardLoad24` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda2fed8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda2fed8-0xda305a4 (1740 bytes).
  It occupies 1740 bytes.
  The `lw` at 0xda2feec loads 4 bytes from abs 0x1010.
  6 such `lw` accesses load 4 bytes from [0x1010] +0x95c4, including `lw` at 0xda2ff38, `lw` at 0xda3008c, `lw` at 0xda30404.
  6 such `sw` accesses store 4 bytes to [0x1010] +0x95c4, including `sw` at 0xda2ff4c, `sw` at 0xda300b4, `sw` at 0xda30418.
  10 such `lw` accesses load 4 bytes from [0x1010] +0x168d0, including `lw` at 0xda2ff58, `lw` at 0xda2ff94, `lw` at 0xda30038.
  10 such `sw` accesses store 4 bytes to [0x1010] +0x168d0, including `sw` at 0xda2ff70, `sw` at 0xda2ffa4, `sw` at 0xda30048.
  10 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xda2ff74, `sw` at 0xda2ffa8, `sw` at 0xda3004c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7b1c, including `lw` at 0xda2ff78, `lw` at 0xda303b4.
  10 such `lw` accesses load 4 bytes from [0x1010] +0x2d44, including `lw` at 0xda2ff7c, `lw` at 0xda2ffac, `lw` at 0xda30054.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7b1c, including `sw` at 0xda2ff8c, `sw` at 0xda303d4.
  10 such `sw` accesses store 4 bytes to [0x1010] +0x2d44, including `sw` at 0xda2ff90, `sw` at 0xda2ffb8, `sw` at 0xda30068.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c0c, including `lw` at 0xda2ffbc, `lw` at 0xda301a8, `lw` at 0xda30310.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c0c, including `sw` at 0xda2ffd0, `sw` at 0xda301e4, `sw` at 0xda30324.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c10, including `lw` at 0xda2ffd4, `lw` at 0xda301e8, `lw` at 0xda30328.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c10, including `sw` at 0xda2ffdc, `sw` at 0xda301f0, `sw` at 0xda30338.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c14, including `lw` at 0xda2ffe0, `lw` at 0xda301f4, `lw` at 0xda3033c.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c14, including `sw` at 0xda2ffec, `sw` at 0xda30200, `sw` at 0xda30348.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c18, including `lw` at 0xda2fff0, `lw` at 0xda30204, `lw` at 0xda3034c.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c18, including `sw` at 0xda2fff8, `sw` at 0xda3020c, `sw` at 0xda30354.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c1c, including `lw` at 0xda2fffc, `lw` at 0xda30210, `lw` at 0xda30358.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c1c, including `sw` at 0xda30008, `sw` at 0xda3021c, `sw` at 0xda30364.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c20, including `lw` at 0xda3000c, `lw` at 0xda30220, `lw` at 0xda30368.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c20, including `sw` at 0xda30014, `sw` at 0xda30228, `sw` at 0xda30370.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c24, including `lw` at 0xda30018, `lw` at 0xda3022c, `lw` at 0xda30374.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c24, including `sw` at 0xda30024, `sw` at 0xda30238, `sw` at 0xda30380.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c28, including `lw` at 0xda30028, `lw` at 0xda3023c, `lw` at 0xda30384.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c08, including `sw` at 0xda3002c, `sw` at 0xda30240, `sw` at 0xda30388.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c28, including `sw` at 0xda30034, `sw` at 0xda30248, `sw` at 0xda30390.
  The `jalr` at 0xda30080 calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73540, a1=[0x1010]+73004, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda300e4 calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda30274 calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73540, a1=[0x1010]+73540, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda30298 calls pow with a0=?, a1=?, a2=?, a3=?; fp f12=f30.
  The `jalr` at 0xda302b8 calls powf with a0=?, a1=?, a2=?, a3=?; fp f12=f26.
  The `jalr` at 0xda302e8 calls powf with a0=?, a1=?, a2=?, a3=?; fp f12=f26.
  The `jalr` at 0xda30468 calls sendBlenderOpTokens [0xda2c010] with a0=0x0, a1=0x28, a2=0x0, a3=?.
  The `jalr` at 0xda30480 calls sendBlenderColorTokensAccum24 [0xda2c090] with a0=0xfff, a1=?, a2=?, a3=?.
  The `jalr` at 0xda304ec calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73116, a1=[0x1010]+73540, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda30550 calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73172, a1=[0x1010]+73540, a2=[0x1010]+73456, a3=0x1.
  The `bne` branch at 0xda30108 targets 0xda30114, is taken when s7(?) != 0, and falls through when s7(?) == 0.
  The `bc1f` branch at 0xda30124 targets 0xda30130, is taken when not (f6 < f24 (c.lt.d at 0xda30114)), and falls through when f6 < f24 (c.lt.d at 0xda30114).
  The `blez` branch at 0xda30130 targets 0xda30310, is taken when s7(?) <= 0 (signed), and falls through when s7(?) > 0 (signed).
  The `bc1fl` branch at 0xda3016c targets 0xda30180, is taken when not (f24 < f0 (c.lt.d at 0xda30164)), and falls through when f24 < f0 (c.lt.d at 0xda30164); its branch-likely delay slot `mtc1 at,$f9` at 0xda30170 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda30174 targets 0xda301a0 and is always taken.
  The `bc1fl` branch at 0xda30190 targets 0xda301a4, is taken when not (f0 < f8 (c.lt.d at 0xda30188)), and falls through when f0 < f8 (c.lt.d at 0xda30188); its branch-likely delay slot `lui at,0x4580` at 0xda30194 runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xda30284 targets 0xda302dc, is taken when not (f22 < f28 (c.lt.d at 0xda3027c)), and falls through when f22 < f28 (c.lt.d at 0xda3027c).
  The `beq` branch at 0xda302d4 targets 0xda30304 and is always taken.
  The `bnel` branch at 0xda30308 targets 0xda30160, is taken when s3(?) != s7(?), and falls through when s3(?) == s7(?); its branch-likely delay slot `cvt.d.s $f0,$f2` at 0xda3030c runs only when taken and is annulled on fall-through.
  The return at 0xda3059c has v0 = ret(__glOdysseyImageMovePixelsCopy).
  The instructions from 0xda3017c to 0xda3017c are not reached by any path from the entry, and their branches are not listed.

- `hardAccumulate24` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda305a4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda305a4-0xda30c70 (1740 bytes).
  It occupies 1740 bytes.
  The `lw` at 0xda305b8 loads 4 bytes from abs 0x1010.
  6 such `lw` accesses load 4 bytes from [0x1010] +0x95c4, including `lw` at 0xda30604, `lw` at 0xda30758, `lw` at 0xda30ad0.
  6 such `sw` accesses store 4 bytes to [0x1010] +0x95c4, including `sw` at 0xda30618, `sw` at 0xda30780, `sw` at 0xda30ae4.
  10 such `lw` accesses load 4 bytes from [0x1010] +0x168d0, including `lw` at 0xda30624, `lw` at 0xda30660, `lw` at 0xda30704.
  10 such `sw` accesses store 4 bytes to [0x1010] +0x168d0, including `sw` at 0xda3063c, `sw` at 0xda30670, `sw` at 0xda30714.
  10 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xda30640, `sw` at 0xda30674, `sw` at 0xda30718.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7b1c, including `lw` at 0xda30644, `lw` at 0xda30a80.
  10 such `lw` accesses load 4 bytes from [0x1010] +0x2d44, including `lw` at 0xda30648, `lw` at 0xda30678, `lw` at 0xda30720.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7b1c, including `sw` at 0xda30658, `sw` at 0xda30aa0.
  10 such `sw` accesses store 4 bytes to [0x1010] +0x2d44, including `sw` at 0xda3065c, `sw` at 0xda30684, `sw` at 0xda30734.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c0c, including `lw` at 0xda30688, `lw` at 0xda30874, `lw` at 0xda309dc.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c0c, including `sw` at 0xda3069c, `sw` at 0xda308b0, `sw` at 0xda309f0.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c10, including `lw` at 0xda306a0, `lw` at 0xda308b4, `lw` at 0xda309f4.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c10, including `sw` at 0xda306a8, `sw` at 0xda308bc, `sw` at 0xda30a04.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c14, including `lw` at 0xda306ac, `lw` at 0xda308c0, `lw` at 0xda30a08.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c14, including `sw` at 0xda306b8, `sw` at 0xda308cc, `sw` at 0xda30a14.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c18, including `lw` at 0xda306bc, `lw` at 0xda308d0, `lw` at 0xda30a18.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c18, including `sw` at 0xda306c4, `sw` at 0xda308d8, `sw` at 0xda30a20.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c1c, including `lw` at 0xda306c8, `lw` at 0xda308dc, `lw` at 0xda30a24.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c1c, including `sw` at 0xda306d4, `sw` at 0xda308e8, `sw` at 0xda30a30.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c20, including `lw` at 0xda306d8, `lw` at 0xda308ec, `lw` at 0xda30a34.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c20, including `sw` at 0xda306e0, `sw` at 0xda308f4, `sw` at 0xda30a3c.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c24, including `lw` at 0xda306e4, `lw` at 0xda308f8, `lw` at 0xda30a40.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c24, including `sw` at 0xda306f0, `sw` at 0xda30904, `sw` at 0xda30a4c.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x8c28, including `lw` at 0xda306f4, `lw` at 0xda30908, `lw` at 0xda30a50.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c08, including `sw` at 0xda306f8, `sw` at 0xda3090c, `sw` at 0xda30a54.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x8c28, including `sw` at 0xda30700, `sw` at 0xda30914, `sw` at 0xda30a5c.
  The `jalr` at 0xda3074c calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73540, a1=[0x1010]+73004, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda307b0 calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda30940 calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73540, a1=[0x1010]+73540, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda30964 calls pow with a0=?, a1=?, a2=?, a3=?; fp f12=f30.
  The `jalr` at 0xda30984 calls powf with a0=?, a1=?, a2=?, a3=?; fp f12=f26.
  The `jalr` at 0xda309b4 calls powf with a0=?, a1=?, a2=?, a3=?; fp f12=f26.
  The `jalr` at 0xda30b34 calls sendBlenderOpTokens [0xda2c010] with a0=0x0, a1=0x28, a2=0x8, a3=?.
  The `jalr` at 0xda30b4c calls sendBlenderColorTokensAccum24 [0xda2c090] with a0=0xfff, a1=?, a2=?, a3=?.
  The `jalr` at 0xda30bb8 calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73116, a1=[0x1010]+73540, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda30c1c calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73172, a1=[0x1010]+73540, a2=[0x1010]+73456, a3=0x1.
  The `bne` branch at 0xda307d4 targets 0xda307e0, is taken when s7(?) != 0, and falls through when s7(?) == 0.
  The `bc1f` branch at 0xda307f0 targets 0xda307fc, is taken when not (f6 < f24 (c.lt.d at 0xda307e0)), and falls through when f6 < f24 (c.lt.d at 0xda307e0).
  The `blez` branch at 0xda307fc targets 0xda309dc, is taken when s7(?) <= 0 (signed), and falls through when s7(?) > 0 (signed).
  The `bc1fl` branch at 0xda30838 targets 0xda3084c, is taken when not (f24 < f0 (c.lt.d at 0xda30830)), and falls through when f24 < f0 (c.lt.d at 0xda30830); its branch-likely delay slot `mtc1 at,$f9` at 0xda3083c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda30840 targets 0xda3086c and is always taken.
  The `bc1fl` branch at 0xda3085c targets 0xda30870, is taken when not (f0 < f8 (c.lt.d at 0xda30854)), and falls through when f0 < f8 (c.lt.d at 0xda30854); its branch-likely delay slot `lui at,0x4580` at 0xda30860 runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xda30950 targets 0xda309a8, is taken when not (f22 < f28 (c.lt.d at 0xda30948)), and falls through when f22 < f28 (c.lt.d at 0xda30948).
  The `beq` branch at 0xda309a0 targets 0xda309d0 and is always taken.
  The `bnel` branch at 0xda309d4 targets 0xda3082c, is taken when s3(?) != s7(?), and falls through when s3(?) == s7(?); its branch-likely delay slot `cvt.d.s $f0,$f2` at 0xda309d8 runs only when taken and is annulled on fall-through.
  The return at 0xda30c68 has v0 = ret(__glOdysseyImageMovePixelsCopy).
  The instructions from 0xda30848 to 0xda30848 are not reached by any path from the entry, and their branches are not listed.

- `__glOdyim_HardAccum24` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda3313c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda3313c-0xda33318 (476 bytes).
  It occupies 476 bytes.
  The `lw` at 0xda3315c loads 4 bytes from abs 0x1018.
  The `lw` at 0xda33164 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda331a0 loads 4 bytes from table(0xdbb85b4) +0x0.
  The `lw` at 0xda33204 loads 4 bytes from [0x1010] +0xc7c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x95c4, including `lw` at 0xda33248, `lw` at 0xda33260.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x95c4, including `sw` at 0xda3325c, `sw` at 0xda3327c.
  The `lw` at 0xda33288 loads 4 bytes from [0x1010] +0x168d0.
  The `sw` at 0xda332a0 stores 4 bytes to [0x1010] +0x168d0.
  The `sw` at 0xda332a4 stores 4 bytes to abs 0x1018.
  The `lw` at 0xda332a8 loads 4 bytes from [0x1010] +0x2d44.
  The `sw` at 0xda332b4 stores 4 bytes to [0x1010] +0x2d44.
  The `lw` at 0xda332b8 loads 4 bytes from [0x1010] +0x11bc0.
  The `lw` at 0xda332c8 loads 4 bytes from [0x1010] +0x11c94.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x11bc0, including `sw` at 0xda332cc, `sw` at 0xda33304.
  The `jalr` at 0xda33178 calls __glSetError [0xdb1ac34] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda331f4 calls __glSetError [0xdb1ac34] with a0=0x500, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xda33224 calls initScratchBufAccum [0xda2c360] with a0=a0 at entry (arg0), a1=?, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xda332dc calls (unknown callee) with a0=[0x1010]+65536, a1=?, a2=a0 at entry (arg0), a3=?; fp f12=a1.
  The `bne` branch at 0xda33168 targets 0xda33188, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xda33180 targets 0xda33308 and is always taken.
  The `beq` branch at 0xda3318c targets 0xda331ec, is taken when t7(=a0-256) >= 0x5 (unsigned), and falls through when t7(=a0-256) < 0x5 (unsigned).
  The `beq` branch at 0xda331b4 targets 0xda33204 and is always taken.
  The `beq` branch at 0xda331c0 targets 0xda33204 and is always taken.
  The `beq` branch at 0xda331cc targets 0xda33204 and is always taken.
  The `beq` branch at 0xda331d8 targets 0xda33204 and is always taken.
  The `beq` branch at 0xda331e4 targets 0xda33204 and is always taken.
  The `beq` branch at 0xda331fc targets 0xda33308 and is always taken.
  The `bnel` branch at 0xda3320c targets 0xda3330c, is taken when t8(=[[0x1010]+3196]) != at(=0x1c00), and falls through when t8(=[[0x1010]+3196]) == at(=0x1c00); its branch-likely delay slot `lw ra,28(sp)` at 0xda33210 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda33238 targets 0xda33308, is taken when v0(=ret(initScratchBufAccum)) == 0, and falls through when v0(=ret(initScratchBufAccum)) != 0.
  The `beq` branch at 0xda332b0 targets 0xda332d0, is taken when a2(=a0) == at(=0x102), and falls through when a2(=a0) != at(=0x102).
  The `beq` branch at 0xda332f0 targets 0xda33308, is taken when a2(=a0) == at(=0x102), and falls through when a2(=a0) != at(=0x102).
  The return at 0xda33310 has v0 = one of 0x1000, ?.
  The indirect jump at 0xda331a8 uses the jump table at 0xdbb85b4 with targets 0xda331b0, 0xda331bc, 0xda331c8, 0xda331d4, 0xda331e0.

- `hardLoad31` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda33318 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda33318-0xda3386c (1364 bytes).
  It occupies 1364 bytes.
  The `lwc1` at 0xda333b8 loads 4 bytes from abs 0xdbb85c8.
  The `lw` at 0xda333cc loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7b1c, including `lw` at 0xda333e0, `lw` at 0xda336e0.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7b1c, including `sw` at 0xda333f4, `sw` at 0xda336f8.
  6 such `lw` accesses load 4 bytes from [0x1010] +0x168d0, including `lw` at 0xda333fc, `lw` at 0xda335ac, `lw` at 0xda33610.
  6 such `sw` accesses store 4 bytes to [0x1010] +0x168d0, including `sw` at 0xda3340c, `sw` at 0xda335bc, `sw` at 0xda33620.
  6 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xda33410, `sw` at 0xda335c0, `sw` at 0xda33624.
  6 such `lw` accesses load 4 bytes from [0x1010] +0x2d44, including `lw` at 0xda33418, `lw` at 0xda335c4, `lw` at 0xda33628.
  6 such `sw` accesses store 4 bytes to [0x1010] +0x2d44, including `sw` at 0xda3342c, `sw` at 0xda335d0, `sw` at 0xda33634.
  The `lw` at 0xda3346c loads 4 bytes from [0x1010] +0x11eec.
  The `swc1` at 0xda334f0 stores 4 bytes to ?.
  The `lw` at 0xda33580 loads 4 bytes from [0x1010] +0x7bf4.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7bf4, including `sw` at 0xda335a0, `sw` at 0xda335a8.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda335d8, `lw` at 0xda335e8, `lw` at 0xda335f0.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda335e4, `sw` at 0xda335ec, `sw` at 0xda335f8.
  The `sw` at 0xda3360c stores 4 bytes to [0x1010] +0x8b04.
  The `sw` at 0xda33648 stores 4 bytes to [0x1010] +0x8c0c.
  The `sw` at 0xda33654 stores 4 bytes to [0x1010] +0x8c10.
  The `sw` at 0xda3365c stores 4 bytes to [0x1010] +0x8c14.
  The `sw` at 0xda33664 stores 4 bytes to [0x1010] +0x8c18.
  The `sw` at 0xda3366c stores 4 bytes to [0x1010] +0x8c1c.
  The `sw` at 0xda33674 stores 4 bytes to [0x1010] +0x8c20.
  The `sw` at 0xda3367c stores 4 bytes to [0x1010] +0x8c24.
  The `sw` at 0xda33684 stores 4 bytes to [0x1010] +0x8c28.
  The `sw` at 0xda33688 stores 4 bytes to [0x1010] +0x8c08.
  The `sw` at 0xda336bc stores 4 bytes to [0x1010] +0x8c8c.
  The `sw` at 0xda336c4 stores 4 bytes to [0x1010] +0x8c90.
  The `sw` at 0xda336cc stores 4 bytes to [0x1010] +0x8c94.
  The `lw` at 0xda33750 loads 4 bytes from [0x1010] +0x95c4.
  The `sw` at 0xda3376c stores 4 bytes to [0x1010] +0x95c4.
  The `jalr` at 0xda33448 calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73540, a1=[0x1010]+73004, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda33464 calls memset with a0=sp-2988, a1=0x0, a2=0x40, a3=?.
  The `jalr` at 0xda33578 calls __glOdysseyProgramTexFilter [0xda99fac] with a0=sp-2916, a1=?, a2=?, a3=?.
  The `jalr` at 0xda33724 calls sendBlenderOpTokens [0xda2c010] with a0=0x0, a1=0x28, a2=0x0, a3=?.
  The `jalr` at 0xda3373c calls sendBlenderColorTokensAccum31 [0xda2c11c] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda337a4 calls __glOdysseyImageMovePixelsTexture [0xdaa043c] with a0=[0x1010]+73228, a1=[0x1010]+73540, a2=[0x1010]+73456, a3=0x0.
  The `jalr` at 0xda337c0 calls __glOdysseyImageMovePixelsTexture [0xdaa043c] with a0=[0x1010]+73284, a1=[0x1010]+73540, a2=[0x1010]+73456, a3=0x0.
  The `jalr` at 0xda337dc calls __glOdysseyImageMovePixelsTexture [0xdaa043c] with a0=[0x1010]+73340, a1=[0x1010]+73540, a2=[0x1010]+73456, a3=0x0.
  The `jalr` at 0xda337f8 calls __glOdysseyImageMovePixelsTexture [0xdaa043c] with a0=[0x1010]+73396, a1=[0x1010]+73540, a2=[0x1010]+73456, a3=0x0.
  The `jalr` at 0xda33810 calls __glSetError [0xdb1ac34] with a0=0x500, a1=?, a2=?, a3=?.
  The `bc1f` branch at 0xda33364 targets 0xda33390, is taken when not (f0 < f4 (c.lt.d at 0xda33338)), and falls through when f0 < f4 (c.lt.d at 0xda33338).
  The `beq` branch at 0xda33388 targets 0xda333cc and is always taken.
  The `bc1fl` branch at 0xda333a8 targets 0xda333c0, is taken when not (f16 <= f0 (c.le.d at 0xda333a0)), and falls through when f16 <= f0 (c.le.d at 0xda333a0); its branch-likely delay slot `mtc1 at,$f18` at 0xda333ac runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda333b4 targets 0xda333c8 and is always taken.
  The `blez` branch at 0xda33478 targets 0xda33838, is taken when t1(=[[0x1010]+73452]) <= 0 (signed), and falls through when t1(=[[0x1010]+73452]) > 0 (signed).
  The `bne` branch at 0xda334ec targets 0xda334e0, is taken when v0(?) < 0x4 (signed), and falls through when v0(?) >= 0x4 (signed).
  The `bne` branch at 0xda335f4 targets 0xda335d8, is taken when t8(?) != t1(=sp-2232), and falls through when t8(?) == t1(=sp-2232).
  The `beq` branch at 0xda33768 targets 0xda33798, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0xda33774 targets 0xda337b4, is taken when s3(?) == at(=0x1), and falls through when s3(?) != at(=0x1).
  The `beq` branch at 0xda3377c targets 0xda337d0, is taken when s3(?) == s2(=0x2), and falls through when s3(?) != s2(=0x2).
  The `beq` branch at 0xda33788 targets 0xda337ec, is taken when s3(?) == at(=0x3), and falls through when s3(?) != at(=0x3).
  The `beq` branch at 0xda33790 targets 0xda33808 and is always taken.
  The `beq` branch at 0xda337ac targets 0xda3381c and is always taken.
  The `beq` branch at 0xda337c8 targets 0xda3381c and is always taken.
  The `beq` branch at 0xda337e4 targets 0xda3381c and is always taken.
  The `beq` branch at 0xda33800 targets 0xda3381c and is always taken.
  The `bnel` branch at 0xda33830 targets 0xda334d8, is taken when s3(?) < t9(?) (signed), and falls through when s3(?) >= t9(?) (signed); its branch-likely delay slot `addiu t7,sp,156` at 0xda33834 runs only when taken and is annulled on fall-through.
  The return at 0xda33864 has v0 = one of ret(memset), ?.
  The instructions from 0xda333bc to 0xda333bc are not reached by any path from the entry, and their branches are not listed.

- `hardAccumulate31` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda3386c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda3386c-0xda33dc0 (1364 bytes).
  It occupies 1364 bytes.
  The `lwc1` at 0xda3390c loads 4 bytes from abs 0xdbb85cc.
  The `lw` at 0xda33920 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7b1c, including `lw` at 0xda33934, `lw` at 0xda33c34.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7b1c, including `sw` at 0xda33948, `sw` at 0xda33c4c.
  6 such `lw` accesses load 4 bytes from [0x1010] +0x168d0, including `lw` at 0xda33950, `lw` at 0xda33b00, `lw` at 0xda33b64.
  6 such `sw` accesses store 4 bytes to [0x1010] +0x168d0, including `sw` at 0xda33960, `sw` at 0xda33b10, `sw` at 0xda33b74.
  6 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xda33964, `sw` at 0xda33b14, `sw` at 0xda33b78.
  6 such `lw` accesses load 4 bytes from [0x1010] +0x2d44, including `lw` at 0xda3396c, `lw` at 0xda33b18, `lw` at 0xda33b7c.
  6 such `sw` accesses store 4 bytes to [0x1010] +0x2d44, including `sw` at 0xda33980, `sw` at 0xda33b24, `sw` at 0xda33b88.
  The `lw` at 0xda339c0 loads 4 bytes from [0x1010] +0x11eec.
  The `swc1` at 0xda33a44 stores 4 bytes to ?.
  The `lw` at 0xda33ad4 loads 4 bytes from [0x1010] +0x7bf4.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7bf4, including `sw` at 0xda33af4, `sw` at 0xda33afc.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda33b2c, `lw` at 0xda33b3c, `lw` at 0xda33b44.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda33b38, `sw` at 0xda33b40, `sw` at 0xda33b4c.
  The `sw` at 0xda33b60 stores 4 bytes to [0x1010] +0x8b04.
  The `sw` at 0xda33b9c stores 4 bytes to [0x1010] +0x8c0c.
  The `sw` at 0xda33ba8 stores 4 bytes to [0x1010] +0x8c10.
  The `sw` at 0xda33bb0 stores 4 bytes to [0x1010] +0x8c14.
  The `sw` at 0xda33bb8 stores 4 bytes to [0x1010] +0x8c18.
  The `sw` at 0xda33bc0 stores 4 bytes to [0x1010] +0x8c1c.
  The `sw` at 0xda33bc8 stores 4 bytes to [0x1010] +0x8c20.
  The `sw` at 0xda33bd0 stores 4 bytes to [0x1010] +0x8c24.
  The `sw` at 0xda33bd8 stores 4 bytes to [0x1010] +0x8c28.
  The `sw` at 0xda33bdc stores 4 bytes to [0x1010] +0x8c08.
  The `sw` at 0xda33c10 stores 4 bytes to [0x1010] +0x8c8c.
  The `sw` at 0xda33c18 stores 4 bytes to [0x1010] +0x8c90.
  The `sw` at 0xda33c20 stores 4 bytes to [0x1010] +0x8c94.
  The `lw` at 0xda33ca4 loads 4 bytes from [0x1010] +0x95c4.
  The `sw` at 0xda33cc0 stores 4 bytes to [0x1010] +0x95c4.
  The `jalr` at 0xda3399c calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73540, a1=[0x1010]+73004, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda339b8 calls memset with a0=sp-2988, a1=0x0, a2=0x40, a3=?.
  The `jalr` at 0xda33acc calls __glOdysseyProgramTexFilter [0xda99fac] with a0=sp-2916, a1=?, a2=?, a3=?.
  The `jalr` at 0xda33c78 calls sendBlenderOpTokens [0xda2c010] with a0=0x0, a1=0x28, a2=0x8, a3=?.
  The `jalr` at 0xda33c90 calls sendBlenderColorTokensAccum31 [0xda2c11c] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda33cf8 calls __glOdysseyImageMovePixelsTexture [0xdaa043c] with a0=[0x1010]+73228, a1=[0x1010]+73540, a2=[0x1010]+73456, a3=0x0.
  The `jalr` at 0xda33d14 calls __glOdysseyImageMovePixelsTexture [0xdaa043c] with a0=[0x1010]+73284, a1=[0x1010]+73540, a2=[0x1010]+73456, a3=0x0.
  The `jalr` at 0xda33d30 calls __glOdysseyImageMovePixelsTexture [0xdaa043c] with a0=[0x1010]+73340, a1=[0x1010]+73540, a2=[0x1010]+73456, a3=0x0.
  The `jalr` at 0xda33d4c calls __glOdysseyImageMovePixelsTexture [0xdaa043c] with a0=[0x1010]+73396, a1=[0x1010]+73540, a2=[0x1010]+73456, a3=0x0.
  The `jalr` at 0xda33d64 calls __glSetError [0xdb1ac34] with a0=0x500, a1=?, a2=?, a3=?.
  The `bc1f` branch at 0xda338b8 targets 0xda338e4, is taken when not (f0 < f4 (c.lt.d at 0xda3388c)), and falls through when f0 < f4 (c.lt.d at 0xda3388c).
  The `beq` branch at 0xda338dc targets 0xda33920 and is always taken.
  The `bc1fl` branch at 0xda338fc targets 0xda33914, is taken when not (f16 <= f0 (c.le.d at 0xda338f4)), and falls through when f16 <= f0 (c.le.d at 0xda338f4); its branch-likely delay slot `mtc1 at,$f18` at 0xda33900 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda33908 targets 0xda3391c and is always taken.
  The `blez` branch at 0xda339cc targets 0xda33d8c, is taken when t1(=[[0x1010]+73452]) <= 0 (signed), and falls through when t1(=[[0x1010]+73452]) > 0 (signed).
  The `bne` branch at 0xda33a40 targets 0xda33a34, is taken when v0(?) < 0x4 (signed), and falls through when v0(?) >= 0x4 (signed).
  The `bne` branch at 0xda33b48 targets 0xda33b2c, is taken when t8(?) != t1(=sp-2232), and falls through when t8(?) == t1(=sp-2232).
  The `beq` branch at 0xda33cbc targets 0xda33cec, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0xda33cc8 targets 0xda33d08, is taken when s3(?) == at(=0x1), and falls through when s3(?) != at(=0x1).
  The `beq` branch at 0xda33cd0 targets 0xda33d24, is taken when s3(?) == s2(=0x2), and falls through when s3(?) != s2(=0x2).
  The `beq` branch at 0xda33cdc targets 0xda33d40, is taken when s3(?) == at(=0x3), and falls through when s3(?) != at(=0x3).
  The `beq` branch at 0xda33ce4 targets 0xda33d5c and is always taken.
  The `beq` branch at 0xda33d00 targets 0xda33d70 and is always taken.
  The `beq` branch at 0xda33d1c targets 0xda33d70 and is always taken.
  The `beq` branch at 0xda33d38 targets 0xda33d70 and is always taken.
  The `beq` branch at 0xda33d54 targets 0xda33d70 and is always taken.
  The `bnel` branch at 0xda33d84 targets 0xda33a2c, is taken when s3(?) < t9(?) (signed), and falls through when s3(?) >= t9(?) (signed); its branch-likely delay slot `addiu t7,sp,156` at 0xda33d88 runs only when taken and is annulled on fall-through.
  The return at 0xda33db8 has v0 = one of ret(memset), ?.
  The instructions from 0xda33910 to 0xda33910 are not reached by any path from the entry, and their branches are not listed.

- `hardMult31` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda33dc0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda33dc0-0xda34014 (596 bytes).
  It occupies 596 bytes.
  The `lwc1` at 0xda33e54 loads 4 bytes from abs 0xdbb85d0.
  The `lw` at 0xda33e68 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda33eec loads 4 bytes from [0x1010] +0x95c4.
  The `sw` at 0xda33f08 stores 4 bytes to [0x1010] +0x95c4.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x11eec, including `lw` at 0xda33f0c, `lw` at 0xda33fdc.
  The `jalr` at 0xda33eac calls sendBlenderOpTokens [0xda2c010] with a0=0x0, a1=0x0, a2=0x28, a3=a3 at entry (arg3); fp f14=f12.
  The `jalr` at 0xda33ed4 calls sendBlenderColorTokensAccum31 [0xda2c11c] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda33f58 calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73228, a1=[0x1010]+73228, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda33f78 calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73284, a1=[0x1010]+73284, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda33f98 calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73340, a1=[0x1010]+73340, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda33fb8 calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73396, a1=[0x1010]+73396, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda33fd0 calls __glSetError [0xdb1ac34] with a0=0x500, a1=?, a2=?, a3=?.
  The `bc1f` branch at 0xda33e00 targets 0xda33e2c, is taken when not (f0 < f4 (c.lt.d at 0xda33de0)), and falls through when f0 < f4 (c.lt.d at 0xda33de0).
  The `beq` branch at 0xda33e24 targets 0xda33e68 and is always taken.
  The `bc1fl` branch at 0xda33e44 targets 0xda33e5c, is taken when not (f16 <= f0 (c.le.d at 0xda33e3c)), and falls through when f16 <= f0 (c.le.d at 0xda33e3c); its branch-likely delay slot `mtc1 at,$f18` at 0xda33e48 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda33e50 targets 0xda33e64 and is always taken.
  The `bc1tl` branch at 0xda33e94 targets 0xda33ff4, is taken when f4 == f0 (c.eq.d at 0xda33e8c), and falls through when not (f4 == f0 (c.eq.d at 0xda33e8c)); its branch-likely delay slot `lw ra,60(sp)` at 0xda33e98 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0xda33f18 targets 0xda33ff0, is taken when t0(=[[0x1010]+73452]) <= 0 (signed), and falls through when t0(=[[0x1010]+73452]) > 0 (signed).
  The `beq` branch at 0xda33f20 targets 0xda33f48, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0xda33f28 targets 0xda33f68, is taken when s1(?) == s2(=0x1), and falls through when s1(?) != s2(=0x1).
  The `beq` branch at 0xda33f30 targets 0xda33f88, is taken when s1(?) == s3(=0x2), and falls through when s1(?) != s3(=0x2).
  The `beq` branch at 0xda33f38 targets 0xda33fa8, is taken when s1(?) == s4(=0x3), and falls through when s1(?) != s4(=0x3).
  The `beq` branch at 0xda33f40 targets 0xda33fc8 and is always taken.
  The `beq` branch at 0xda33f60 targets 0xda33fdc and is always taken.
  The `beq` branch at 0xda33f80 targets 0xda33fdc and is always taken.
  The `beq` branch at 0xda33fa0 targets 0xda33fdc and is always taken.
  The `beq` branch at 0xda33fc0 targets 0xda33fdc and is always taken.
  The `bne` branch at 0xda33fe8 targets 0xda33f20, is taken when s1(?) < t1(=[[0x1010]+73452]) (signed), and falls through when s1(?) >= t1(=[[0x1010]+73452]) (signed).
  The return at 0xda3400c has v0 = one of [0x1010], ?.
  The instructions from 0xda33e58 to 0xda33e58 are not reached by any path from the entry, and their branches are not listed.

- `hardAdd31` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda34014 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda34014-0xda34258 (580 bytes).
  It occupies 580 bytes.
  The `lwc1` at 0xda340a8 loads 4 bytes from abs 0xdbb85d4.
  The `lw` at 0xda340c0 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda34130 loads 4 bytes from [0x1010] +0x95c4.
  The `sw` at 0xda3414c stores 4 bytes to [0x1010] +0x95c4.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x11eec, including `lw` at 0xda34150, `lw` at 0xda34220.
  The `jalr` at 0xda340f0 calls sendBlenderOpTokens [0xda2c010] with a0=0x0, a1=0x8, a2=0x8, a3=a3 at entry (arg3); fp f14=f12.
  The `jalr` at 0xda34118 calls sendBlenderColorTokensAccum31 [0xda2c11c] with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda3419c calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73228, a1=[0x1010]+73228, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda341bc calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73284, a1=[0x1010]+73284, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda341dc calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73340, a1=[0x1010]+73340, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda341fc calls __glOdysseyImageMovePixelsCopy [0xda9b494] with a0=[0x1010]+73396, a1=[0x1010]+73396, a2=[0x1010]+73456, a3=0x1.
  The `jalr` at 0xda34214 calls __glSetError [0xdb1ac34] with a0=0x500, a1=?, a2=?, a3=?.
  The `bc1f` branch at 0xda34054 targets 0xda34080, is taken when not (f0 < f16 (c.lt.d at 0xda34034)), and falls through when f0 < f16 (c.lt.d at 0xda34034).
  The `beq` branch at 0xda34078 targets 0xda340bc and is always taken.
  The `bc1fl` branch at 0xda34098 targets 0xda340b0, is taken when not (f10 <= f0 (c.le.d at 0xda34090)), and falls through when f10 <= f0 (c.le.d at 0xda34090); its branch-likely delay slot `mtc1 at,$f18` at 0xda3409c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda340a4 targets 0xda340b8 and is always taken.
  The `bc1t` branch at 0xda340d0 targets 0xda34234, is taken when f16 == f0 (c.eq.d at 0xda340bc), and falls through when not (f16 == f0 (c.eq.d at 0xda340bc)).
  The `blez` branch at 0xda3415c targets 0xda34234, is taken when t0(=[[0x1010]+73452]) <= 0 (signed), and falls through when t0(=[[0x1010]+73452]) > 0 (signed).
  The `beq` branch at 0xda34164 targets 0xda3418c, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0xda3416c targets 0xda341ac, is taken when s1(?) == s2(=0x1), and falls through when s1(?) != s2(=0x1).
  The `beq` branch at 0xda34174 targets 0xda341cc, is taken when s1(?) == s3(=0x2), and falls through when s1(?) != s3(=0x2).
  The `beq` branch at 0xda3417c targets 0xda341ec, is taken when s1(?) == s4(=0x3), and falls through when s1(?) != s4(=0x3).
  The `beq` branch at 0xda34184 targets 0xda3420c and is always taken.
  The `beq` branch at 0xda341a4 targets 0xda34220 and is always taken.
  The `beq` branch at 0xda341c4 targets 0xda34220 and is always taken.
  The `beq` branch at 0xda341e4 targets 0xda34220 and is always taken.
  The `beq` branch at 0xda34204 targets 0xda34220 and is always taken.
  The `bne` branch at 0xda3422c targets 0xda34164, is taken when s1(?) < t1(=[[0x1010]+73452]) (signed), and falls through when s1(?) >= t1(=[[0x1010]+73452]) (signed).
  The return at 0xda34250 has v0 = one of [0x1010], ?.
  The instructions from 0xda340ac to 0xda340ac are not reached by any path from the entry, and their branches are not listed.

- `hardClear31` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda34258 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda34258-0xda35508 (4784 bytes).
  It occupies 4784 bytes.
  The `lw` at 0xda3426c loads 4 bytes from abs 0x1010.
  The `lbu` at 0xda342b4 loads 1 byte from [0x1010] +0x16658.
  The `lw` at 0xda342c0 loads 4 bytes from [0x1010] +0x16650.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x7b40, including `lw` at 0xda342c4, `lw` at 0xda34330, `lw` at 0xda3438c.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7b40, including `sw` at 0xda342cc, `sw` at 0xda342e0.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x7b44, including `lw` at 0xda342d0, `lw` at 0xda34338, `lw` at 0xda343c0.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x16654, including `lw` at 0xda342d4, `lw` at 0xda342e4.
  2 such `lbu` accesses load 1 byte from [0x1010] +0x11fc1, including `lbu` at 0xda342dc, `lbu` at 0xda34438.
  The `sw` at 0xda342f0 stores 4 bytes to [0x1010] +0x7b44.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x9750, including `lw` at 0xda342f4, `lw` at 0xda34654, `lw` at 0xda34690.
  15 such `sw` accesses store 4 bytes to [0x1010] +0x9750, including `sw` at 0xda34310, `sw` at 0xda34668, `sw` at 0xda346a4.
  219 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xda34318, `sw` at 0xda34320, `sw` at 0xda34324.
  The `lw` at 0xda34340 loads 4 bytes from [0x1010] +0x7a90.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x168d4, including `lw` at 0xda3434c, `lw` at 0xda34414.
  The `lw` at 0xda34360 loads 4 bytes from abs 0xdbd1010.
  The `lw` at 0xda34370 loads 4 bytes from abs 0xdbd1014.
  The `lw` at 0xda3437c loads 4 bytes from abs 0xdbd1018.
  The `lw` at 0xda34384 loads 4 bytes from abs 0xdbd101c.
  The `sw` at 0xda34424 stores 4 bytes to [0x1010] +0x168d4.
  8 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xda3442c, `sw` at 0xda347a8, `sw` at 0xda347d0.
  8 such `lw` accesses load 4 bytes from [0x1010] +0x2d44, including `lw` at 0xda34430, `lw` at 0xda347ac, `lw` at 0xda347d4.
  8 such `sw` accesses store 4 bytes to [0x1010] +0x2d44, including `sw` at 0xda34434, `sw` at 0xda347b8, `sw` at 0xda347d8.
  The `lwc1` at 0xda344a0 loads 4 bytes from [0x1010] +0x670.
  The `lwc1` at 0xda344b0 loads 4 bytes from [0x1010] +0x674.
  The `lwc1` at 0xda344c0 loads 4 bytes from [0x1010] +0x678.
  The `lwc1` at 0xda344d0 loads 4 bytes from [0x1010] +0x67c.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x7b1c, including `lw` at 0xda344e0, `lw` at 0xda34550, `lw` at 0xda34624.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x7b20, including `lw` at 0xda344f0, `lw` at 0xda345e0, `lw` at 0xda346bc.
  The `lw` at 0xda34500 loads 4 bytes from [0x1010] +0x7b7c.
  9 such `lw` accesses load 4 bytes from [0x1010] +0x95bc, including `lw` at 0xda34510, `lw` at 0xda3481c, `lw` at 0xda34908.
  6 such `lw` accesses load 4 bytes from [0x1010] +0x95c0, including `lw` at 0xda34520, `lw` at 0xda346ec, `lw` at 0xda34914.
  16 such `lw` accesses load 4 bytes from [0x1010] +0x95c4, including `lw` at 0xda34530, `lw` at 0xda346cc, `lw` at 0xda34700.
  5 such `lw` accesses load 4 bytes from [0x1010] +0x95c8, including `lw` at 0xda34540, `lw` at 0xda34924, `lw` at 0xda34afc.
  15 such `sw` accesses store 4 bytes to [0x1010] +0x7b1c, including `sw` at 0xda3456c, `sw` at 0xda3457c, `sw` at 0xda3458c.
  6 such `sw` accesses store 4 bytes to [0x1010] +0x7b20, including `sw` at 0xda34604, `sw` at 0xda34608, `sw` at 0xda3461c.
  8 such `sw` accesses store 4 bytes to [0x1010] +0x95c4, including `sw` at 0xda346e4, `sw` at 0xda34718, `sw` at 0xda34730.
  The `lw` at 0xda346e8 loads 4 bytes from [0x1010] +0x16c84.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x95c0, including `sw` at 0xda346fc, `sw` at 0xda35030.
  7 such `lw` accesses load 4 bytes from [0x1010] +0x168d0, including `lw` at 0xda3478c, `lw` at 0xda347c4, `lw` at 0xda34838.
  7 such `sw` accesses store 4 bytes to [0x1010] +0x168d0, including `sw` at 0xda347a4, `sw` at 0xda347cc, `sw` at 0xda34850.
  The `lw` at 0xda347bc loads 4 bytes from [0x1010] +0x11c94.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7b7c, including `sw` at 0xda347c0, `sw` at 0xda3501c.
  The `lw` at 0xda347dc loads 4 bytes from [0x1010] +0x11eec.
  The `lw` at 0xda34820 loads 4 bytes from [0x1010] +0x16c78.
  5 such `sw` accesses store 4 bytes to [0x1010] +0x95bc, including `sw` at 0xda34834, `sw` at 0xda34a0c, `sw` at 0xda34be4.
  40 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xda3497c, `swc1` at 0xda34980, `swc1` at 0xda34984.
  The `lw` at 0xda34998 loads 4 bytes from [0x1010] +0x11e28.
  The `lw` at 0xda349bc loads 4 bytes from [0x1010] +0x11e2c.
  The `lw` at 0xda349f8 loads 4 bytes from [0x1010] +0x16c8c.
  The `lw` at 0xda34b70 loads 4 bytes from [0x1010] +0x11e60.
  The `lw` at 0xda34b94 loads 4 bytes from [0x1010] +0x11e64.
  The `lw` at 0xda34bd0 loads 4 bytes from [0x1010] +0x16ca0.
  The `lw` at 0xda34d48 loads 4 bytes from [0x1010] +0x11e98.
  The `lw` at 0xda34d6c loads 4 bytes from [0x1010] +0x11e9c.
  The `lw` at 0xda34da8 loads 4 bytes from [0x1010] +0x16cb4.
  The `lw` at 0xda34f20 loads 4 bytes from [0x1010] +0x11ed0.
  The `lw` at 0xda34f44 loads 4 bytes from [0x1010] +0x11ed4.
  The `lw` at 0xda34fe8 loads 4 bytes from ?.
  The `sw` at 0xda35040 stores 4 bytes to [0x1010] +0x95c8.
  The `jalr` at 0xda34400 calls __glOdysseyIoctl [0xdabf6b0] with a0=[0x1010], a1=0x6f64000d, a2=sp-76, a3=?.
  The `jalr` at 0xda34474 calls initBuffersForAccum [0xda2c948] with a0=?, a1=?, a2=?, a3=0x10443.
  The `jalr` at 0xda34f8c calls __glSetError [0xdb1ac34] with a0=0x500, a1=0x96, a2=?, a3=0x10443.
  The `bnel` branch at 0xda342b8 targets 0xda35068, is taken when t6(=[[0x1010]+91736]:1) != 0, and falls through when t6(=[[0x1010]+91736]:1) == 0; its branch-likely delay slot `lw ra,60(sp)` at 0xda342bc runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda342c8 targets 0xda342e4, is taken when t7(=[[0x1010]+31552]) != v0(=[[0x1010]+91728]), and falls through when t7(=[[0x1010]+31552]) == v0(=[[0x1010]+91728]); its branch-likely delay slot `sw v0,31552(s0)` at 0xda342cc runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda342d8 targets 0xda3443c, is taken when t8(=[[0x1010]+31556]) == t9(=[[0x1010]+91732]), and falls through when t8(=[[0x1010]+31556]) != t9(=[[0x1010]+91732]); its branch-likely delay slot `lbu t7,8129(t1)` at 0xda342dc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda34300 targets 0xda3432c, is taken when t7(=[[0x1010]+38736]) == 0, and falls through when t7(=[[0x1010]+38736]) != 0.
  The `bltzl` branch at 0xda34348 targets 0xda34418, is taken when t8(=([[0x1010]+31376] << 0xb)) < 0 (signed), and falls through when t8(=([[0x1010]+31376] << 0xb)) >= 0 (signed); its branch-likely delay slot `lw t8,26836(t1)` at 0xda3434c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda3445c targets 0xda344a0, is taken when t7(=[[0x1010]+73665]:1) != 0, and falls through when t7(=[[0x1010]+73665]:1) == 0.
  The `beq` branch at 0xda34660 targets 0xda3467c, is taken when t8(=[[0x1010]+38736]) == 0, and falls through when t8(=[[0x1010]+38736]) != 0.
  The `beq` branch at 0xda3469c targets 0xda346b8, is taken when t7(=[[0x1010]+38736]) == 0, and falls through when t7(=[[0x1010]+38736]) != 0.
  The `blezl` branch at 0xda347e0 targets 0xda35000, is taken when t9(=[[0x1010]+73452]) <= 0 (signed), and falls through when t9(=[[0x1010]+73452]) > 0 (signed); its branch-likely delay slot `lw t8,148(sp)` at 0xda347e4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda347f4 targets 0xda3481c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xda347fc targets 0xda349f4, is taken when a2(?) == at(=0x1), and falls through when a2(?) != at(=0x1).
  The `beq` branch at 0xda34804 targets 0xda34bcc, is taken when a2(?) == at(=0x2), and falls through when a2(?) != at(=0x2).
  The `beq` branch at 0xda3480c targets 0xda34da4, is taken when a2(?) == at(=0x3), and falls through when a2(?) != at(=0x3).
  The `beq` branch at 0xda34814 targets 0xda34f7c and is always taken.
  The `beql` branch at 0xda348b8 targets 0xda34904, is taken when (t6(?) & 0x1) == 0, and falls through when (t6(?) & 0x1) != 0; its branch-likely delay slot `sw t7,16384(zero)` at 0xda348bc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda348f8 targets 0xda34904 and is always taken.
  The `bgez` branch at 0xda349a4 targets 0xda349b8, is taken when t8(=[[0x1010]+73256]) >= 0 (signed), and falls through when t8(=[[0x1010]+73256]) < 0 (signed).
  The `bgez` branch at 0xda349c8 targets 0xda349dc, is taken when t6(=[[0x1010]+73260]) >= 0 (signed), and falls through when t6(=[[0x1010]+73260]) < 0 (signed).
  The `beq` branch at 0xda349ec targets 0xda34fe0 and is always taken.
  The `beql` branch at 0xda34a90 targets 0xda34adc, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0; its branch-likely delay slot `sw t7,16384(zero)` at 0xda34a94 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda34ad0 targets 0xda34adc and is always taken.
  The `bgez` branch at 0xda34b7c targets 0xda34b90, is taken when t6(=[[0x1010]+73312]) >= 0 (signed), and falls through when t6(=[[0x1010]+73312]) < 0 (signed).
  The `bgez` branch at 0xda34ba0 targets 0xda34bb4, is taken when t8(=[[0x1010]+73316]) >= 0 (signed), and falls through when t8(=[[0x1010]+73316]) < 0 (signed).
  The `beq` branch at 0xda34bc4 targets 0xda34fe0 and is always taken.
  The `beql` branch at 0xda34c68 targets 0xda34cb4, is taken when (t6(?) & 0x1) == 0, and falls through when (t6(?) & 0x1) != 0; its branch-likely delay slot `sw t7,16384(zero)` at 0xda34c6c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda34ca8 targets 0xda34cb4 and is always taken.
  The `bgez` branch at 0xda34d54 targets 0xda34d68, is taken when t8(=[[0x1010]+73368]) >= 0 (signed), and falls through when t8(=[[0x1010]+73368]) < 0 (signed).
  The `bgez` branch at 0xda34d78 targets 0xda34d8c, is taken when t6(=[[0x1010]+73372]) >= 0 (signed), and falls through when t6(=[[0x1010]+73372]) < 0 (signed).
  The `beq` branch at 0xda34d9c targets 0xda34fe0 and is always taken.
  The `beql` branch at 0xda34e40 targets 0xda34e8c, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0; its branch-likely delay slot `sw t7,16384(zero)` at 0xda34e44 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda34e80 targets 0xda34e8c and is always taken.
  The `bgez` branch at 0xda34f2c targets 0xda34f40, is taken when t6(=[[0x1010]+73424]) >= 0 (signed), and falls through when t6(=[[0x1010]+73424]) < 0 (signed).
  The `bgez` branch at 0xda34f50 targets 0xda34f64, is taken when t8(=[[0x1010]+73428]) >= 0 (signed), and falls through when t8(=[[0x1010]+73428]) < 0 (signed).
  The `beq` branch at 0xda34f74 targets 0xda34fe0 and is always taken.
  The `bne` branch at 0xda34ff0 targets 0xda347f4, is taken when a2(?) < t6(?) (signed), and falls through when a2(?) >= t6(?) (signed).
  The return at 0xda3508c has v0 = one of ?, 0x10046.
  The instructions from 0xda34900 to 0xda34900 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda34ad8 to 0xda34ad8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda34cb0 to 0xda34cb0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda34e88 to 0xda34e88 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda35094 to 0xda35504 are not reached by any path from the entry, and their branches are not listed.

- `__glOdyim_HardAccum31` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda35094 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda35094-0xda35264 (464 bytes).
  It occupies 464 bytes.
  The `lw` at 0xda350b4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda350c8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda35100 loads 4 bytes from table(0xdbb85d8) +0x0.
  The `lw` at 0xda35168 loads 4 bytes from [0x1010] +0xc7c.
  The `lw` at 0xda35178 loads 4 bytes from [0x1010] +0x7b1c.
  The `sw` at 0xda35194 stores 4 bytes to [0x1010] +0x7b1c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x168d0, including `lw` at 0xda3519c, `lw` at 0xda351d8.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x168d0, including `sw` at 0xda351ac, `sw` at 0xda351ec.
  2 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xda351b0, `sw` at 0xda351f0.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x2d44, including `lw` at 0xda351b4, `lw` at 0xda351f4.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x2d44, including `sw` at 0xda351c0, `sw` at 0xda35200.
  The `lw` at 0xda351c4 loads 4 bytes from [0x1010] +0x95c4.
  The `sw` at 0xda351d4 stores 4 bytes to [0x1010] +0x95c4.
  The `lw` at 0xda35204 loads 4 bytes from [0x1010] +0x11bc0.
  The `lw` at 0xda35214 loads 4 bytes from [0x1010] +0x11c94.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x11bc0, including `sw` at 0xda35218, `sw` at 0xda35250.
  The `jalr` at 0xda350d4 calls __glSetError [0xdb1ac34] with a0=0x502, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda35158 calls __glSetError [0xdb1ac34] with a0=0x500, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda35228 calls (unknown callee) with a0=a0 at entry (arg0), a1=0x2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xda350c4 targets 0xda350e4, is taken when t6(=[0x1018]) != at(=0x1), and falls through when t6(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xda350dc targets 0xda35254 and is always taken.
  The `beq` branch at 0xda350ec targets 0xda35150, is taken when t7(=a0-256) >= 0x5 (unsigned), and falls through when t7(=a0-256) < 0x5 (unsigned).
  The `beq` branch at 0xda35118 targets 0xda35168 and is always taken.
  The `beq` branch at 0xda35128 targets 0xda35168 and is always taken.
  The `beq` branch at 0xda35138 targets 0xda35168 and is always taken.
  The `beq` branch at 0xda35148 targets 0xda35168 and is always taken.
  The `beq` branch at 0xda35160 targets 0xda35254 and is always taken.
  The `bnel` branch at 0xda35170 targets 0xda35258, is taken when t2(=[[0x1010]+3196]) != at(=0x1c00), and falls through when t2(=[[0x1010]+3196]) == at(=0x1c00); its branch-likely delay slot `lw ra,28(sp)` at 0xda35174 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda351fc targets 0xda3521c, is taken when a0 == at(=0x102), and falls through when a0 != at(=0x102).
  The `beq` branch at 0xda3523c targets 0xda35254, is taken when a0 == at(=0x102), and falls through when a0 != at(=0x102).
  The return at 0xda3525c has v0 = one of [0x1010], ?.
  The indirect jump at 0xda35108 uses the jump table at 0xdbb85d8 with targets 0xda35110, 0xda35120, 0xda35168, 0xda35130, 0xda35140.

- `Store` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda43660 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda43660-0xda43724 (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0xda43680 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xda4368c loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xda43690 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda43694 loads 4 bytes from [a0] +0xdcc.
  The `lwc1` at 0xda43698 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0xda436a4 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xda436a8 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xda436bc loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lwc1` at 0xda436f0 loads 4 bytes from [a0] +0x6cc.
  The `lwc1` at 0xda436f4 loads 4 bytes from [a0] +0x6c8.
  The `jalr` at 0xda43708 calls fprintf with a0=sym(__iob)+32, a1=0xdbb9050, a2=?, a3=?.
  The `bgez` branch at 0xda436d8 targets 0xda436f0, is taken when t4(=[a1+8]) >= 0 (signed), and falls through when t4(=[a1+8]) < 0 (signed).
  The return at 0xda4371c has v0 = ret(fprintf).

- `Pick` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda43724 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda43724-0xda43730 (12 bytes).
  It occupies 12 bytes.
  The return at 0xda43728 has v0 = ?.

- `Fetch` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda43730 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda43730-0xda43744 (20 bytes).
  It occupies 20 bytes.
  The return at 0xda4373c has v0 = ?.

- `StoreStippledSpan` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda43744 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda43744-0xda4384c (264 bytes).
  It occupies 264 bytes.
  The `lw` at 0xda43780 loads 4 bytes from a0 (arg0 at entry) +0x7550.
  The `lw` at 0xda43784 loads 4 bytes from a0 (arg0 at entry) +0x7580.
  The `lw` at 0xda43788 loads 4 bytes from a0 (arg0 at entry) +0x7660.
  The `lw` at 0xda43790 loads 4 bytes from a0 (arg0 at entry) +0x754c.
  The `lw` at 0xda43794 loads 4 bytes from a0 (arg0 at entry) +0x7658.
  The `lw` at 0xda4379c loads 4 bytes from a0 (arg0 at entry) +0x7668.
  The `lw` at 0xda437c0 loads 4 bytes from ?.
  The `lwc1` at 0xda437dc loads 4 bytes from ?.
  The `lw` at 0xda437ec loads 4 bytes from [a0+30312] +0xa4.
  The `jalr` at 0xda437f0 calls (unknown callee) with a0=[a0+30312], a1=sp-56, a2=?, a3=?.
  The `beq` branch at 0xda43798 targets 0xda43818, is taken when s7(=[a0+30080]) == 0, and falls through when s7(=[a0+30080]) != 0.
  The `bne` branch at 0xda437ac targets 0xda437b8, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bltz` branch at 0xda437c4 targets 0xda43810, is taken when s0(?) < 0 (signed), and falls through when s0(?) >= 0 (signed).
  The `beql` branch at 0xda437d0 targets 0xda43800, is taken when (s5(?) & s1(?)) == 0, and falls through when (s5(?) & s1(?)) != 0; its branch-likely delay slot `addiu s0,s0,-1` at 0xda437d4 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xda43808 targets 0xda437cc, is taken when s0(?) >= 0 (signed), and falls through when s0(?) < 0 (signed).
  The `bnel` branch at 0xda43810 targets 0xda437a8, is taken when s7(?) != 0, and falls through when s7(?) == 0; its branch-likely delay slot `slti at,s7,33` at 0xda43814 runs only when taken and is annulled on fall-through.
  The return at 0xda43844 has v0 = 0x0.

- `StoreSpan` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda4384c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda4384c-0xda448a0 (4180 bytes).
  It occupies 4180 bytes.
  The `lw` at 0xda43878 loads 4 bytes from a0 (arg0 at entry) +0x7550.
  The `lw` at 0xda4387c loads 4 bytes from a0 (arg0 at entry) +0x7580.
  The `lw` at 0xda43888 loads 4 bytes from a0 (arg0 at entry) +0x754c.
  The `lw` at 0xda4388c loads 4 bytes from a0 (arg0 at entry) +0x7658.
  The `lw` at 0xda43890 loads 4 bytes from a0 (arg0 at entry) +0x7668.
  The `lwc1` at 0xda438a8 loads 4 bytes from ?.
  The `lw` at 0xda438b8 loads 4 bytes from [a0+30312] +0xa4.
  The `jalr` at 0xda438c0 calls (unknown callee) with a0=[a0+30312], a1=sp-64, a2=?, a3=?.
  The `beql` branch at 0xda4389c targets 0xda438dc, is taken when s0(=[a0+30028]) >= s3(=([a0+30028] + [a0+30080])) (signed), and falls through when s0(=[a0+30028]) < s3(=([a0+30028] + [a0+30080])) (signed); its branch-likely delay slot `lw ra,44(sp)` at 0xda438a0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda438d0 targets 0xda438a4, is taken when s0(?) < s3(=([a0+30028] + [a0+30080])) (signed), and falls through when s0(?) >= s3(=([a0+30028] + [a0+30080])) (signed).
  The return at 0xda438f4 has v0 = 0x0.
  The instructions from 0xda438fc to 0xda4489c are not reached by any path from the entry, and their branches are not listed.

- `ApplyScissor` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda4525c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda4525c-0xda45504 (680 bytes).
  It occupies 680 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xe44, including `lw` at 0xda4525c, `lw` at 0xda453f8, `lw` at 0xda45400.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x735c, including `lw` at 0xda45260, `lw` at 0xda453a4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xe48, including `lw` at 0xda45268, `lw` at 0xda45404.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7360, including `lw` at 0xda4526c, `lw` at 0xda453ac.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7364, including `lw` at 0xda45270, `lw` at 0xda453b0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7368, including `lw` at 0xda45274, `lw` at 0xda453bc.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x16654, including `sw` at 0xda4527c, `sw` at 0xda45314, `sw` at 0xda45340.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x16654, including `lw` at 0xda4528c, `lw` at 0xda452f8, `lw` at 0xda45318.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x16650, including `sw` at 0xda45298, `sw` at 0xda452d0, `sw` at 0xda452f4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x16650, including `lw` at 0xda4529c, `lw` at 0xda452d4.
  The `sb` at 0xda45360 stores 1 byte to a0 (arg0 at entry) +0x16658.
  The `swc1` at 0xda45374 stores 4 bytes to a0 (arg0 at entry) +0x11d1c.
  The `swc1` at 0xda45384 stores 4 bytes to a0 (arg0 at entry) +0x11d20.
  The `swc1` at 0xda45394 stores 4 bytes to a0 (arg0 at entry) +0x11d24.
  The `swc1` at 0xda453a0 stores 4 bytes to a0 (arg0 at entry) +0x11d28.
  The `lw` at 0xda453a8 loads 4 bytes from a0 (arg0 at entry) +0x736c.
  The `lw` at 0xda453c4 loads 4 bytes from a0 (arg0 at entry) +0x7370.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7374, including `lw` at 0xda453d0, `lw` at 0xda453d8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7378, including `lw` at 0xda453e4, `lw` at 0xda453ec.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x1664c, including `sw` at 0xda4544c, `sw` at 0xda454b8, `sw` at 0xda454d8.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1664c, including `lw` at 0xda45450, `lw` at 0xda4549c, `lw` at 0xda454bc.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x16648, including `sw` at 0xda4545c, `sw` at 0xda45478, `sw` at 0xda45498.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x16648, including `lw` at 0xda45460, `lw` at 0xda4547c.
  The `lw` at 0xda454dc loads 4 bytes from a0 (arg0 at entry) +0x168d4.
  The `sw` at 0xda454ec stores 4 bytes to a0 (arg0 at entry) +0x168d4.
  The `sw` at 0xda454f4 stores 4 bytes to abs 0x1018.
  The `lw` at 0xda454f8 loads 4 bytes from a0 (arg0 at entry) +0x2d44.
  The `sw` at 0xda45500 stores 4 bytes to a0 (arg0 at entry) +0x2d44.
  The `bne` branch at 0xda4533c targets 0xda45348, is taken when a3(?) < v0(?) (signed), and falls through when a3(?) >= v0(?) (signed).
  The `beq` branch at 0xda453b8 targets 0xda453c4, is taken when v0(=[a0+29532]) >= v1(=[a0+29548]) (signed), and falls through when v0(=[a0+29532]) < v1(=[a0+29548]) (signed).
  The `beql` branch at 0xda453cc targets 0xda453dc, is taken when a1(=[a0+29536]) >= v1(=[a0+29552]) (signed), and falls through when a1(=[a0+29536]) < v1(=[a0+29552]) (signed); its branch-likely delay slot `lw v1,29556(a0)` at 0xda453d0 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda453e0 targets 0xda453f0, is taken when v1(=[a0+29556]) >= a3(=[a0+29540]) (signed), and falls through when v1(=[a0+29556]) < a3(=[a0+29540]) (signed); its branch-likely delay slot `lw v1,29560(a0)` at 0xda453e4 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda453f4 targets 0xda45404, is taken when v1(=[a0+29560]) >= t0(=[a0+29544]) (signed), and falls through when v1(=[a0+29560]) < t0(=[a0+29544]) (signed); its branch-likely delay slot `lw v1,3652(a0)` at 0xda453f8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda45420 targets 0xda45430, is taken when a3(?) >= v0(?) (signed), and falls through when a3(?) < v0(?) (signed).
  The `beq` branch at 0xda45434 targets 0xda45444, is taken when t0(?) >= a1(?) (signed), and falls through when t0(?) < a1(?) (signed).
  The return at 0xda454fc has v0 = ?.

- `LoseCurrent` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda4b8cc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda4b8cc-0xda4b9d0 (260 bytes).
  It occupies 260 bytes.
  The `lw` at 0xda4b8e4 loads 4 bytes from a0 (arg0 at entry) +0xc7c.
  2 such `lw` accesses load 4 bytes from abs 0x1018, including `lw` at 0xda4b8f4, `lw` at 0xda4b928.
  The `sw` at 0xda4b930 stores 4 bytes to a0 (arg0 at entry) +0xc78.
  The `sw` at 0xda4b93c stores 4 bytes to abs 0x1010.
  The `lw` at 0xda4b948 loads 4 bytes from a0 (arg0 at entry) +0x17ec.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda4b960, `lw` at 0xda4b970, `lw` at 0xda4b978.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda4b96c, `sw` at 0xda4b974, `sw` at 0xda4b980.
  The `lw` at 0xda4b98c loads 4 bytes from a0 (arg0 at entry) +0x1374.
  The `lw` at 0xda4b99c loads 4 bytes from abs 0x1028.
  The `sw` at 0xda4b9a0 stores 4 bytes to a0 (arg0 at entry) +0x13b4.
  The `lw` at 0xda4b9a4 loads 4 bytes from abs 0x102c.
  The `sw` at 0xda4b9a8 stores 4 bytes to a0 (arg0 at entry) +0x13b8.
  The `lw` at 0xda4b9ac loads 4 bytes from abs 0x1030.
  The `sw` at 0xda4b9b0 stores 4 bytes to a0 (arg0 at entry) +0x13bc.
  The `lw` at 0xda4b9b4 loads 4 bytes from abs 0x1034.
  The `sw` at 0xda4b9b8 stores 4 bytes to a0 (arg0 at entry) +0x13c0.
  The `jalr` at 0xda4b918 calls __glLoseCurrentBuffers [0xdb1b28c] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4b938 calls FastDispatchInstall [0xda46bb0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xda4b8ec targets 0xda4b904, is taken when t6(=[a0+3196]) != at(=0x1c00), and falls through when t6(=[a0+3196]) == at(=0x1c00).
  The `bne` branch at 0xda4b8fc targets 0xda4b90c, is taken when t7(=[0x1018]) != at(=0x1), and falls through when t7(=[0x1018]) == at(=0x1).
  The `beq` branch at 0xda4b904 targets 0xda4b9c0 and is always taken.
  The `beq` branch at 0xda4b954 targets 0xda4b98c, is taken when t9(=a0+7952) == v0(=[a0+6124]), and falls through when t9(=a0+7952) != v0(=[a0+6124]).
  The `bne` branch at 0xda4b97c targets 0xda4b960, is taken when t2(?) != t4(=[a0+6124]+1812), and falls through when t2(?) == t4(=[a0+6124]+1812).
  The `beql` branch at 0xda4b994 targets 0xda4b9c0, is taken when t5(=[a0+4980]) == 0, and falls through when t5(=[a0+4980]) != 0; its branch-likely delay slot `addiu v0,zero,1` at 0xda4b998 runs only when taken and is annulled on fall-through.
  The return at 0xda4b9c8 has v0 = one of 0x0, 0x1.

- `MakeCurrent` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda4b9d0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda4b9d0-0xda4d340 (6512 bytes).
  It occupies 6512 bytes.
  The `lw` at 0xda4b9ec loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `lw` at 0xda4ba04 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `jalr` at 0xda4b9f0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda4ba08 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xda4ba28 calls MakeCurrentRead [0xda4abf8] with a0=a0 at entry (arg0), a1=ret(?), a2=ret(?), a3=?.
  The return at 0xda4ba3c has v0 = ret(MakeCurrentRead).
  The instructions from 0xda4ba44 to 0xda4d33c are not reached by any path from the entry, and their branches are not listed.

- `PreEvaluate` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda5456c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda5456c-0xda547cc (608 bytes).
  It occupies 608 bytes.
  6 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda545c8, `swc1` at 0xda54608, `swc1` at 0xda54620.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda545e0, `swc1` at 0xda54614, `swc1` at 0xda54628.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda545e4, `swc1` at 0xda5461c.
  The `swc1` at 0xda545f0 stores 4 bytes to a2 (arg2 at entry) +0xc.
  The `lwc1` at 0xda54644 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xda54678 loads 4 bytes from a2 (arg2 at entry) +0x4.
  9 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda54694, `lwc1` at 0xda546dc, `lwc1` at 0xda546e4.
  11 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda546a4, `swc1` at 0xda546c0, `swc1` at 0xda54720.
  The `beq` branch at 0xda54598 targets 0xda5462c, is taken when a0 == at(=0x1), and falls through when a0 != at(=0x1).
  The `beq` branch at 0xda545a4 targets 0xda54620, is taken when a0 == at(=0x2), and falls through when a0 != at(=0x2).
  The `beq` branch at 0xda545ac targets 0xda545f4, is taken when a0 == at(=0x3), and falls through when a0 != at(=0x3).
  The `bne` branch at 0xda545b4 targets 0xda54634, is taken when a0 != at(=0x4), and falls through when a0 == at(=0x4).
  The `beq` branch at 0xda545ec targets 0xda547bc and is always taken.
  The `beq` branch at 0xda54618 targets 0xda547bc and is always taken.
  The `beq` branch at 0xda54624 targets 0xda547bc and is always taken.
  The `beq` branch at 0xda5462c targets 0xda547bc and is always taken.
  The `bne` branch at 0xda5463c targets 0xda547bc, is taken when a0 < 0x3 (signed), and falls through when a0 >= 0x3 (signed).
  The `bne` branch at 0xda54660 targets 0xda547a8, is taken when v0(?) < 0x2 (signed), and falls through when v0(?) >= 0x2 (signed).
  The `beq` branch at 0xda54668 targets 0xda546c8, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xda54684 targets 0xda546b4, is taken when a3(?) == v1(=0x2), and falls through when a3(?) != v1(=0x2).
  The `bnel` branch at 0xda546ac targets 0xda54690, is taken when a3(?) != v1(?), and falls through when a3(?) == v1(?); its branch-likely delay slot `mul.s $f2,$f18,$f12` at 0xda546b0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda546c4 targets 0xda547a8, is taken when v1(?) == v0(?), and falls through when v1(?) != v0(?).
  The `beq` branch at 0xda546d8 targets 0xda5474c, is taken when v1(?) == v0(?), and falls through when v1(?) != v0(?).
  The `bne` branch at 0xda54744 targets 0xda546e0, is taken when v1(?) != v0(?), and falls through when v1(?) == v0(?).
  The `bne` branch at 0xda547b4 targets 0xda54644, is taken when v0(?) != a0, and falls through when v0(?) == a0.
  The return at 0xda547c4 has v0 = one of 0x2, ?.

- `PreEvaluateWithDeriv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda547cc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda547cc-0xda54c2c (1120 bytes).
  It occupies 1120 bytes.
  7 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda54828, `swc1` at 0xda54888, `swc1` at 0xda548b8.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda54844, `swc1` at 0xda54898, `swc1` at 0xda548bc.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda5484c, `swc1` at 0xda5489c.
  The `swc1` at 0xda54858 stores 4 bytes to a2 (arg2 at entry) +0xc.
  5 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `swc1` at 0xda5485c, `swc1` at 0xda548a0, `swc1` at 0xda548c8.
  3 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x4, including `swc1` at 0xda54860, `swc1` at 0xda548a4, `swc1` at 0xda548c0.
  2 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x8, including `swc1` at 0xda54864, `swc1` at 0xda548ac.
  The `swc1` at 0xda5486c stores 4 bytes to a3 (arg3 at entry) +0xc.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda548f0, `lwc1` at 0xda54a68, `lwc1` at 0xda54ab4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda54924, `lwc1` at 0xda54ae0.
  21 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda54940, `lwc1` at 0xda54988, `lwc1` at 0xda54990.
  24 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda54950, `swc1` at 0xda5496c, `swc1` at 0xda549cc.
  The `beq` branch at 0xda547f8 targets 0xda548cc, is taken when a0 == at(=0x1), and falls through when a0 != at(=0x1).
  The `beq` branch at 0xda54804 targets 0xda548b0, is taken when a0 == at(=0x2), and falls through when a0 != at(=0x2).
  The `beq` branch at 0xda5480c targets 0xda54870, is taken when a0 == at(=0x3), and falls through when a0 != at(=0x3).
  The `bne` branch at 0xda54814 targets 0xda548dc, is taken when a0 != at(=0x4), and falls through when a0 == at(=0x4).
  The `beq` branch at 0xda54868 targets 0xda54c1c and is always taken.
  The `beq` branch at 0xda548a8 targets 0xda54c1c and is always taken.
  The `beq` branch at 0xda548c4 targets 0xda54c1c and is always taken.
  The `beq` branch at 0xda548d4 targets 0xda54c1c and is always taken.
  The `bne` branch at 0xda548e8 targets 0xda54a68, is taken when v1(=a0-1) < 0x3 (signed), and falls through when v1(=a0-1) >= 0x3 (signed).
  The `bne` branch at 0xda5490c targets 0xda54a54, is taken when v0(?) < 0x2 (signed), and falls through when v0(?) >= 0x2 (signed).
  The `beq` branch at 0xda54914 targets 0xda54974, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0xda54930 targets 0xda54960, is taken when t0(?) == a0(=0x2), and falls through when t0(?) != a0(=0x2).
  The `bnel` branch at 0xda54958 targets 0xda5493c, is taken when t0(?) != a0(?), and falls through when t0(?) == a0(?); its branch-likely delay slot `mul.s $f2,$f18,$f12` at 0xda5495c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda54970 targets 0xda54a54, is taken when a0(?) == v0(?), and falls through when a0(?) != v0(?).
  The `beq` branch at 0xda54984 targets 0xda549f8, is taken when a0(?) == v0(?), and falls through when a0(?) != v0(?).
  The `bne` branch at 0xda549f0 targets 0xda5498c, is taken when a0(?) != v0(?), and falls through when a0(?) == v0(?).
  The `bne` branch at 0xda54a60 targets 0xda548f0, is taken when v0(?) != v1(=a0-1), and falls through when v0(?) == v1(=a0-1).
  The `bne` branch at 0xda54a9c targets 0xda54a80, is taken when a0(?) < v1(=a0-1) (signed), and falls through when a0(?) >= v1(=a0-1) (signed).
  The `bne` branch at 0xda54ac8 targets 0xda54c10, is taken when v0(?) < 0x2 (signed), and falls through when v0(?) >= 0x2 (signed).
  The `beq` branch at 0xda54ad0 targets 0xda54b30, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0xda54aec targets 0xda54b1c, is taken when v1(?) == a0(=0x2), and falls through when v1(?) != a0(=0x2).
  The `bnel` branch at 0xda54b14 targets 0xda54af8, is taken when v1(?) != a0(?), and falls through when v1(?) == a0(?); its branch-likely delay slot `mul.s $f2,$f18,$f12` at 0xda54b18 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda54b2c targets 0xda54c10, is taken when a0(?) == v0(?), and falls through when a0(?) != v0(?).
  The `beq` branch at 0xda54b40 targets 0xda54bb4, is taken when a0(?) == v0(?), and falls through when a0(?) != v0(?).
  The `bne` branch at 0xda54bac targets 0xda54b48, is taken when a0(?) != v0(?), and falls through when a0(?) == v0(?).
  The return at 0xda54c24 has v0 = one of 0x2, ?.

- `DoDomain1` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda54c2c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda54c2c-0xda55314 (1768 bytes).
  It occupies 1768 bytes.
  The `lwc1` at 0xda54c50 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0xda54c54 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0xda54c74 loads 4 bytes from a0 (arg0 at entry) +0x2f4.
  6 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0xda54c90, `lw` at 0xda54ca4, `lw` at 0xda54ccc.
  The `lw` at 0xda54c94 loads 4 bytes from a0 (arg0 at entry) +0x57c.
  The `sw` at 0xda54cc8 stores 4 bytes to a0 (arg0 at entry) +0x584.
  The `swc1` at 0xda54cd0 stores 4 bytes to a0 (arg0 at entry) +0x2f4.
  The `sw` at 0xda54cd4 stores 4 bytes to a0 (arg0 at entry) +0x57c.
  The `lw` at 0xda54ce4 loads 4 bytes from a2 (arg2 at entry) +0x0.
  21 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x2fc, including `lwc1` at 0xda54d4c, `lwc1` at 0xda54df0, `lwc1` at 0xda54e44.
  53 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda54d50, `lwc1` at 0xda54d58, `lwc1` at 0xda54d64.
  15 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x300, including `lwc1` at 0xda54d54, `lwc1` at 0xda54df8, `lwc1` at 0xda54e4c.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x304, including `lwc1` at 0xda54d60, `lwc1` at 0xda54e04, `lwc1` at 0xda54e58.
  5 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x308, including `lwc1` at 0xda54d70, `lwc1` at 0xda54e14, `lwc1` at 0xda54e68.
  22 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda54da4, `swc1` at 0xda54e40, `swc1` at 0xda54e80.
  The `jalr` at 0xda54cb4 calls PreEvaluate [0xda5456c] with a0=[a2+4], a1=?, a2=a0+764, a3=a3 at entry (arg3); fp f12=[a2+12].
  The `bc1tl` branch at 0xda54c68 targets 0xda55304, is taken when f0(=[a2+8]) == f12(=[a2+12]) (c.eq.s at 0xda54c60), and falls through when not (f0(=[a2+8]) == f12(=[a2+12]) (c.eq.s at 0xda54c60)); its branch-likely delay slot `lw ra,36(sp)` at 0xda54c6c runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xda54c88 targets 0xda54ca0, is taken when not (f2 == f8(=[a0+756]) (c.eq.s at 0xda54c80)), and falls through when f2 == f8(=[a0+756]) (c.eq.s at 0xda54c80).
  The `beql` branch at 0xda54c98 targets 0xda54ce0, is taken when v1(=[a2+4]) == t6(=[a0+1404]), and falls through when v1(=[a2+4]) != t6(=[a0+1404]); its branch-likely delay slot `addiu at,zero,1` at 0xda54c9c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda54ce0 targets 0xda551cc, is taken when v1(=[a2+4]) == at(=0x1), and falls through when v1(=[a2+4]) != at(=0x1).
  The `beq` branch at 0xda54cec targets 0xda550a4, is taken when v1(=[a2+4]) == at(=0x2), and falls through when v1(=[a2+4]) != at(=0x2).
  The `beq` branch at 0xda54cf4 targets 0xda54f10, is taken when v1(=[a2+4]) == at(=0x3), and falls through when v1(=[a2+4]) != at(=0x3).
  The `bne` branch at 0xda54cfc targets 0xda5528c, is taken when v1(=[a2+4]) != at(=0x4), and falls through when v1(=[a2+4]) == at(=0x4).
  The `blez` branch at 0xda54d04 targets 0xda55300, is taken when t0(=[a2]) <= 0 (signed), and falls through when t0(=[a2]) > 0 (signed).
  The `beq` branch at 0xda54d10 targets 0xda54db0, is taken when (t0(=[a2]) & 0x3) == 0, and falls through when (t0(=[a2]) & 0x3) != 0.
  The `bne` branch at 0xda54da0 targets 0xda54d4c, is taken when t1(?) != a3(?), and falls through when t1(?) == a3(?).
  The `beql` branch at 0xda54da8 targets 0xda55304, is taken when a3(?) == t0(=[a2]), and falls through when a3(?) != t0(=[a2]); its branch-likely delay slot `lw ra,36(sp)` at 0xda54dac runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda54f00 targets 0xda54df0, is taken when a1(?) != t1(=(([a2] << 0x2) + a3)), and falls through when a1(?) == t1(=(([a2] << 0x2) + a3)).
  The `beq` branch at 0xda54f08 targets 0xda55304 and is always taken.
  The `blez` branch at 0xda54f10 targets 0xda55300, is taken when t0(=[a2]) <= 0 (signed), and falls through when t0(=[a2]) > 0 (signed).
  The `beq` branch at 0xda54f1c targets 0xda54f98, is taken when (t0(=[a2]) & 0x3) == 0, and falls through when (t0(=[a2]) & 0x3) != 0.
  The `bne` branch at 0xda54f88 targets 0xda54f48, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The `beql` branch at 0xda54f90 targets 0xda55304, is taken when a3(?) == t0(=[a2]), and falls through when a3(?) != t0(=[a2]); its branch-likely delay slot `lw ra,36(sp)` at 0xda54f94 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda55094 targets 0xda54fc8, is taken when a1(?) != a0(=(([a2] << 0x2) + a3)), and falls through when a1(?) == a0(=(([a2] << 0x2) + a3)).
  The `beq` branch at 0xda5509c targets 0xda55304 and is always taken.
  The `blez` branch at 0xda550a4 targets 0xda55300, is taken when t0(=[a2]) <= 0 (signed), and falls through when t0(=[a2]) > 0 (signed).
  The `beq` branch at 0xda550b0 targets 0xda55110, is taken when (t0(=[a2]) & 0x3) == 0, and falls through when (t0(=[a2]) & 0x3) != 0.
  The `bne` branch at 0xda55100 targets 0xda550d4, is taken when v1(?) != a3(?), and falls through when v1(?) == a3(?).
  The `beql` branch at 0xda55108 targets 0xda55304, is taken when a3(?) == t0(=[a2]), and falls through when a3(?) != t0(=[a2]); its branch-likely delay slot `lw ra,36(sp)` at 0xda5510c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda551bc targets 0xda55134, is taken when a1(?) != v1(=(([a2] << 0x2) + a3)), and falls through when a1(?) == v1(=(([a2] << 0x2) + a3)).
  The `beq` branch at 0xda551c4 targets 0xda55304 and is always taken.
  The `blez` branch at 0xda551cc targets 0xda55300, is taken when t0(=[a2]) <= 0 (signed), and falls through when t0(=[a2]) > 0 (signed).
  The `beq` branch at 0xda551d8 targets 0xda5521c, is taken when (t0(=[a2]) & 0x3) == 0, and falls through when (t0(=[a2]) & 0x3) != 0.
  The `bne` branch at 0xda5520c targets 0xda551f4, is taken when v0(?) != a3(?), and falls through when v0(?) == a3(?).
  The `beql` branch at 0xda55214 targets 0xda55304, is taken when a3(?) == t0(=[a2]), and falls through when a3(?) != t0(=[a2]); its branch-likely delay slot `lw ra,36(sp)` at 0xda55218 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda5527c targets 0xda55238, is taken when a1(?) != v0(=(([a2] << 0x2) + a3)), and falls through when a1(?) == v0(=(([a2] << 0x2) + a3)).
  The `beq` branch at 0xda55284 targets 0xda55304 and is always taken.
  The `blez` branch at 0xda5528c targets 0xda55300, is taken when t0(=[a2]) <= 0 (signed), and falls through when t0(=[a2]) > 0 (signed).
  The `blez` branch at 0xda552b4 targets 0xda552f4, is taken when t9(=[a2+4]) <= 0 (signed), and falls through when t9(=[a2+4]) > 0 (signed).
  The `bnel` branch at 0xda552ec targets 0xda552c4, is taken when v1(?) < t4(=[a2+4]) (signed), and falls through when v1(?) >= t4(=[a2+4]) (signed); its branch-likely delay slot `lwc1 $f16,764(a0)` at 0xda552f0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda552f8 targets 0xda552a4, is taken when a1(?) != t1(=(([a2] << 0x2) + a3)), and falls through when a1(?) == t1(=(([a2] << 0x2) + a3)).
  The return at 0xda5530c has v0 = one of ?, (([a2] << 0x2) + a3).

- `DoEvalCoord1` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda556d4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda556d4-0xda55ac4 (1008 bytes).
  It occupies 1008 bytes.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda5570c, `lw` at 0xda5571c, `lw` at 0xda55724.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda55718, `sw` at 0xda55720, `sw` at 0xda5572c.
  The `lbu` at 0xda55738 loads 1 byte from a0 (arg0 at entry) +0xc8d.
  9 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x710, including `lw` at 0xda55740, `lw` at 0xda55744, `lw` at 0xda55794.
  The `lw` at 0xda55760 loads 4 bytes from a0 (arg0 at entry) +0x6fe8.
  9 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x17ec, including `lw` at 0xda55774, `lw` at 0xda557c8, `lw` at 0xda55818.
  The `lw` at 0xda55780 loads 4 bytes from [a0+6124] +0x5cc.
  The `lw` at 0xda557b4 loads 4 bytes from a0 (arg0 at entry) +0x6fe4.
  The `lw` at 0xda557d4 loads 4 bytes from [a0+6124] +0x594.
  The `lw` at 0xda557f8 loads 4 bytes from a0 (arg0 at entry) +0x6ffc.
  4 such `lw` accesses load 4 bytes from [a0+6124] +0x67c, including `lw` at 0xda55824, `lw` at 0xda5587c, `lw` at 0xda558dc.
  The `lw` at 0xda55848 loads 4 bytes from a0 (arg0 at entry) +0x6ff8.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xdd0, including `lwc1` at 0xda55868, `lwc1` at 0xda558d0, `lwc1` at 0xda55930.
  The `lw` at 0xda558a0 loads 4 bytes from a0 (arg0 at entry) +0x6ff4.
  The `lw` at 0xda55900 loads 4 bytes from a0 (arg0 at entry) +0x6ff0.
  The `lw` at 0xda55960 loads 4 bytes from a0 (arg0 at entry) +0x6fec.
  The `lw` at 0xda55988 loads 4 bytes from [a0+6124] +0x5fc.
  The `lw` at 0xda559ac loads 4 bytes from a0 (arg0 at entry) +0x7004.
  The `lw` at 0xda559d8 loads 4 bytes from [a0+6124] +0x52c.
  The `lw` at 0xda559f8 loads 4 bytes from a0 (arg0 at entry) +0x7000.
  The `lw` at 0xda55a20 loads 4 bytes from [a0+6124] +0x50c.
  The `jalr` at 0xda5576c calls DoDomain1 [0xda54c2c] with a0=sp-1428, a1=a1 at entry (arg1), a2=a0+28092, a3=sp-1444.
  The `jalr` at 0xda55784 calls (unknown callee) with a0=sp-1444, a1=?, a2=?, a3=?.
  The `jalr` at 0xda557c0 calls DoDomain1 [0xda54c2c] with a0=sp-1428, a1=a1 at entry (arg1), a2=a0+28068, a3=sp-1444.
  The `jalr` at 0xda557d8 calls (unknown callee) with a0=sp-1444, a1=?, a2=?, a3=?.
  The `jalr` at 0xda55810 calls DoDomain1 [0xda54c2c] with a0=sp-1428, a1=a1 at entry (arg1), a2=a0+28212, a3=sp-1460.
  The `jalr` at 0xda55828 calls (unknown callee) with a0=sp-1460, a1=?, a2=?, a3=?.
  The `jalr` at 0xda55860 calls DoDomain1 [0xda54c2c] with a0=sp-1428, a1=a1 at entry (arg1), a2=a0+28188, a3=sp-1460.
  The `jalr` at 0xda55880 calls (unknown callee) with a0=sp-1460, a1=?, a2=?, a3=?.
  The `jalr` at 0xda558b8 calls DoDomain1 [0xda54c2c] with a0=sp-1428, a1=a1 at entry (arg1), a2=a0+28164, a3=sp-1460.
  The `jalr` at 0xda558e0 calls (unknown callee) with a0=sp-1460, a1=?, a2=?, a3=?.
  The `jalr` at 0xda55914 calls DoDomain1 [0xda54c2c] with a0=sp-1428, a1=a1 at entry (arg1), a2=a0+28140, a3=sp-1460.
  The `jalr` at 0xda55940 calls (unknown callee) with a0=sp-1460, a1=?, a2=?, a3=?.
  The `jalr` at 0xda55974 calls DoDomain1 [0xda54c2c] with a0=sp-1428, a1=a1 at entry (arg1), a2=a0+28116, a3=sp-1476.
  The `jalr` at 0xda5598c calls (unknown callee) with a0=sp-1476, a1=?, a2=?, a3=?.
  The `jalr` at 0xda559c4 calls DoDomain1 [0xda54c2c] with a0=sp-1428, a1=a1 at entry (arg1), a2=a0+28260, a3=sp-1492.
  The `jalr` at 0xda559dc calls (unknown callee) with a0=sp-1492, a1=?, a2=?, a3=?.
  The `jalr` at 0xda55a0c calls DoDomain1 [0xda54c2c] with a0=sp-1428, a1=a1 at entry (arg1), a2=a0+28236, a3=sp-1492.
  The `jalr` at 0xda55a24 calls (unknown callee) with a0=sp-1492, a1=?, a2=?, a3=?.
  The `bne` branch at 0xda55728 targets 0xda5570c, is taken when t9(?) != t0(=a0+29484), and falls through when t9(?) == t0(=a0+29484).
  The `beql` branch at 0xda5573c targets 0xda5579c, is taken when t1(=[a0+3213]:1) == 0, and falls through when t1(=[a0+3213]:1) != 0; its branch-likely delay slot `lw v0,1808(s0)` at 0xda55740 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda55754 targets 0xda557e8, is taken when (v0(=[a0+1808]) & 0x2) == 0, and falls through when (v0(=[a0+1808]) & 0x2) != 0.
  The `beq` branch at 0xda55790 targets 0xda557e8 and is always taken.
  The `beq` branch at 0xda557a8 targets 0xda557e8, is taken when (v0(=[a0+1808]) & 0x1) == 0, and falls through when (v0(=[a0+1808]) & 0x1) != 0.
  The `beq` branch at 0xda557ec targets 0xda5583c, is taken when (v0(=[a0+1808]) & 0x40) == 0, and falls through when (v0(=[a0+1808]) & 0x40) != 0.
  The `beq` branch at 0xda55834 targets 0xda55950 and is always taken.
  The `beq` branch at 0xda5583c targets 0xda55894, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0xda5588c targets 0xda55950 and is always taken.
  The `beq` branch at 0xda55894 targets 0xda558f4, is taken when t5(?) == 0, and falls through when t5(?) != 0.
  The `beq` branch at 0xda558ec targets 0xda55950 and is always taken.
  The `beq` branch at 0xda558f4 targets 0xda55950, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xda55954 targets 0xda5599c, is taken when (v0(=[a0+1808]) & 0x4) == 0, and falls through when (v0(=[a0+1808]) & 0x4) != 0.
  The `beq` branch at 0xda559a0 targets 0xda559ec, is taken when (v0(=[a0+1808]) & 0x100) == 0, and falls through when (v0(=[a0+1808]) & 0x100) != 0.
  The `beq` branch at 0xda559e4 targets 0xda55a30 and is always taken.
  The `beq` branch at 0xda559ec targets 0xda55a30, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The return at 0xda55a3c has v0 = one of ret(?), [a0+1808].
  The instructions from 0xda55798 to 0xda55798 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda55a44 to 0xda55ac0 are not reached by any path from the entry, and their branches are not listed.

- `ComputeFirstPartials` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda55ac4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda55ac4-0xda55b78 (180 bytes).
  It occupies 180 bytes.
  The `lwc1` at 0xda55ac4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  6 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lwc1` at 0xda55ac8, `lwc1` at 0xda55ae8, `lwc1` at 0xda55b04.
  The `lwc1` at 0xda55acc loads 4 bytes from a1 (arg1 at entry) +0xc.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lwc1` at 0xda55ad0, `lwc1` at 0xda55b24.
  The `lwc1` at 0xda55ad8 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda55ae4 stores 4 bytes to a1 (arg1 at entry) +0x0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lwc1` at 0xda55aec, `lwc1` at 0xda55b44.
  The `lwc1` at 0xda55af4 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda55b00 stores 4 bytes to a1 (arg1 at entry) +0x4.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lwc1` at 0xda55b08, `lwc1` at 0xda55b60.
  The `swc1` at 0xda55b18 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lwc1` at 0xda55b20 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xda55b28 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0xda55b30 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `swc1` at 0xda55b3c stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xda55b4c loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `swc1` at 0xda55b58 stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `swc1` at 0xda55b74 stores 4 bytes to a2 (arg2 at entry) +0x8.
  The return at 0xda55b70 has v0 = ?.

- `ComputeNormal2` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda55b78 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda55b78-0xda55c1c (164 bytes).
  It occupies 164 bytes.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda55b94, `lwc1` at 0xda55be0.
  2 such `lwc1` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lwc1` at 0xda55b98, `lwc1` at 0xda55bc4.
  2 such `lwc1` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lwc1` at 0xda55b9c, `lwc1` at 0xda55bd8.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda55ba0, `lwc1` at 0xda55bbc.
  The `swc1` at 0xda55bb4 stores 4 bytes to a1 (arg1 at entry) +0x0.
  2 such `lwc1` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lwc1` at 0xda55bb8, `lwc1` at 0xda55be4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda55bc0, `lwc1` at 0xda55bdc.
  The `swc1` at 0xda55bd4 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda55bf4 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0xda55bfc loads 4 bytes from a0 (arg0 at entry) +0x2dd8.
  The `jalr` at 0xda55c00 calls (unknown callee) with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda55c14 has v0 = ret(?).

- `DoDomain2` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda55c1c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda55c1c-0xda5783c (7200 bytes).
  It occupies 7200 bytes.
  The `lwc1` at 0xda55c44 loads 4 bytes from a3 (arg3 at entry) +0x10.
  The `lwc1` at 0xda55c48 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `lwc1` at 0xda55c64 loads 4 bytes from a3 (arg3 at entry) +0x14.
  The `lwc1` at 0xda55c68 loads 4 bytes from a3 (arg3 at entry) +0x18.
  The `lwc1` at 0xda55c98 loads 4 bytes from a0 (arg0 at entry) +0x2f4.
  7 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0xda55cb4, `lw` at 0xda55cc8, `lw` at 0xda55cf4.
  The `lw` at 0xda55cb8 loads 4 bytes from a0 (arg0 at entry) +0x57c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x2f8, including `lwc1` at 0xda55cc0, `lwc1` at 0xda55d00.
  The `sw` at 0xda55cf0 stores 4 bytes to a0 (arg0 at entry) +0x584.
  The `swc1` at 0xda55cf8 stores 4 bytes to a0 (arg0 at entry) +0x2f4.
  The `sw` at 0xda55cfc stores 4 bytes to a0 (arg0 at entry) +0x57c.
  19 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0xda55d1c, `lw` at 0xda55d30, `lw` at 0xda55d54.
  The `lw` at 0xda55d20 loads 4 bytes from a0 (arg0 at entry) +0x580.
  The `sw` at 0xda55d50 stores 4 bytes to a0 (arg0 at entry) +0x588.
  The `swc1` at 0xda55d58 stores 4 bytes to a0 (arg0 at entry) +0x2f8.
  The `sw` at 0xda55d5c stores 4 bytes to a0 (arg0 at entry) +0x580.
  The `lw` at 0xda55d68 loads 4 bytes from a3 (arg3 at entry) +0x0.
  79 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x39c, including `lwc1` at 0xda55df0, `lwc1` at 0xda55e64, `lwc1` at 0xda55ebc.
  227 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda55df4, `lwc1` at 0xda55dfc, `lwc1` at 0xda55e08.
  46 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3a0, including `lwc1` at 0xda55df8, `lwc1` at 0xda55e6c, `lwc1` at 0xda55ec4.
  28 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3a4, including `lwc1` at 0xda55e04, `lwc1` at 0xda55e78, `lwc1` at 0xda55ed0.
  14 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3a8, including `lwc1` at 0xda55e14, `lwc1` at 0xda55e88, `lwc1` at 0xda55ee0.
  42 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x2fc, including `lwc1` at 0xda55e1c, `lwc1` at 0xda55fcc, `lwc1` at 0xda56120.
  80 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda55e60, `swc1` at 0xda55eb8, `swc1` at 0xda55f18.
  21 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x300, including `lwc1` at 0xda55e90, `lwc1` at 0xda5602c, `lwc1` at 0xda5616c.
  11 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x304, including `lwc1` at 0xda55ee8, `lwc1` at 0xda5606c, `lwc1` at 0xda5619c.
  5 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x308, including `lwc1` at 0xda55f48, `lwc1` at 0xda560b8, `lwc1` at 0xda561cc.
  The `jalr` at 0xda55cd8 calls PreEvaluate [0xda5456c] with a0=[a3+4], a1=?, a2=a0+764, a3=a3 at entry (arg3); fp f14=[a3+16].
  The `jalr` at 0xda55d3c calls PreEvaluate [0xda5456c] with a0=[a3+8], a1=?, a2=a0+924, a3=0x2.
  The `bc1tl` branch at 0xda55c5c targets 0xda5782c, is taken when f0(=[a3+12]) == f14(=[a3+16]) (c.eq.s at 0xda55c54), and falls through when not (f0(=[a3+12]) == f14(=[a3+16]) (c.eq.s at 0xda55c54)); its branch-likely delay slot `lw ra,36(sp)` at 0xda55c60 runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xda55c78 targets 0xda5782c, is taken when f2(=[a3+20]) == f16(=[a3+24]) (c.eq.s at 0xda55c70), and falls through when not (f2(=[a3+20]) == f16(=[a3+24]) (c.eq.s at 0xda55c70)); its branch-likely delay slot `lw ra,36(sp)` at 0xda55c7c runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xda55cac targets 0xda55cc4, is taken when not (f12 == f8(=[a0+756]) (c.eq.s at 0xda55ca4)), and falls through when f12 == f8(=[a0+756]) (c.eq.s at 0xda55ca4).
  The `beql` branch at 0xda55cbc targets 0xda55d04, is taken when t6(=[a3+4]) == t7(=[a0+1404]), and falls through when t6(=[a3+4]) != t7(=[a0+1404]); its branch-likely delay slot `lwc1 $f10,760(s0)` at 0xda55cc0 runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xda55d14 targets 0xda55d2c, is taken when not (f18 == f10(=[a0+760]) (c.eq.s at 0xda55d0c)), and falls through when f18 == f10(=[a0+760]) (c.eq.s at 0xda55d0c).
  The `beql` branch at 0xda55d24 targets 0xda55d64, is taken when t9(=[a3+8]) == t6(=[a0+1408]), and falls through when t9(=[a3+8]) != t6(=[a0+1408]); its branch-likely delay slot `lw v0,4(s1)` at 0xda55d28 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda55d6c targets 0xda57084, is taken when v0(=[a3+4]) == v1(=0x1), and falls through when v0(=[a3+4]) != v1(=0x1); its branch-likely delay slot `lw v0,8(s1)` at 0xda55d70 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda55d74 targets 0xda56a20, is taken when v0(=[a3+4]) == a3(=0x2), and falls through when v0(=[a3+4]) != a3(=0x2).
  The `beq` branch at 0xda55d7c targets 0xda56490, is taken when v0(=[a3+4]) == a0(=0x3), and falls through when v0(=[a3+4]) != a0(=0x3).
  The `bne` branch at 0xda55d84 targets 0xda57764, is taken when v0(=[a3+4]) != a1(=0x4), and falls through when v0(=[a3+4]) == a1(=0x4).
  The `beq` branch at 0xda55d90 targets 0xda561f4, is taken when v0(=[a3+8]) == v1(=0x1), and falls through when v0(=[a3+8]) != v1(=0x1).
  The `beq` branch at 0xda55d98 targets 0xda560e4, is taken when v0(=[a3+8]) == a3(=0x2), and falls through when v0(=[a3+8]) != a3(=0x2).
  The `beq` branch at 0xda55da0 targets 0xda55f78, is taken when v0(=[a3+8]) == a0(=0x3), and falls through when v0(=[a3+8]) != a0(=0x3).
  The `bne` branch at 0xda55da8 targets 0xda562a8, is taken when v0(=[a3+8]) != a1(=0x4), and falls through when v0(=[a3+8]) == a1(=0x4).
  The `blez` branch at 0xda55db0 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `bne` branch at 0xda55f68 targets 0xda55df0, is taken when t1(?) != s1(?), and falls through when t1(?) == s1(?).
  The `beq` branch at 0xda55f70 targets 0xda5782c and is always taken.
  The `blez` branch at 0xda55f78 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `bne` branch at 0xda560d4 targets 0xda55fac, is taken when t1(?) != t0(?), and falls through when t1(?) == t0(?).
  The `beq` branch at 0xda560dc targets 0xda5782c and is always taken.
  The `blez` branch at 0xda560e4 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `bne` branch at 0xda561e4 targets 0xda5610c, is taken when t1(?) != t0(?), and falls through when t1(?) == t0(?).
  The `beq` branch at 0xda561ec targets 0xda5782c and is always taken.
  The `blez` branch at 0xda561f4 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `bne` branch at 0xda56298 targets 0xda56210, is taken when t1(?) != a3(?), and falls through when t1(?) == a3(?).
  The `beq` branch at 0xda562a0 targets 0xda5782c and is always taken.
  The `blez` branch at 0xda562a8 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `blez` branch at 0xda562cc targets 0xda56320, is taken when t0(=[a3+8]) <= 0 (signed), and falls through when t0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda562ec targets 0xda56314, is taken when v0(=a0+4) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+4) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda5630c targets 0xda562f4, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xda5633c targets 0xda56388, is taken when t0(=[a3+8]) <= 0 (signed), and falls through when t0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda56354 targets 0xda5637c, is taken when v0(=a0+4) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+4) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda56374 targets 0xda5635c, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xda563ac targets 0xda563f8, is taken when t0(=[a3+8]) <= 0 (signed), and falls through when t0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda563c4 targets 0xda563ec, is taken when v0(=a0+4) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+4) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda563e4 targets 0xda563cc, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xda5641c targets 0xda56468, is taken when t0(=[a3+8]) <= 0 (signed), and falls through when t0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda56434 targets 0xda5645c, is taken when v0(=a0+4) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+4) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda56454 targets 0xda5643c, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda56480 targets 0xda562c0, is taken when t1(?) != a2(?), and falls through when t1(?) == a2(?).
  The `beq` branch at 0xda56488 targets 0xda5782c and is always taken.
  The `beq` branch at 0xda56494 targets 0xda56814, is taken when v0(=[a3+8]) == v1(=0x1), and falls through when v0(=[a3+8]) != v1(=0x1).
  The `beq` branch at 0xda5649c targets 0xda5673c, is taken when v0(=[a3+8]) == a3(=0x2), and falls through when v0(=[a3+8]) != a3(=0x2).
  The `beq` branch at 0xda564a4 targets 0xda5661c, is taken when v0(=[a3+8]) == a0(=0x3), and falls through when v0(=[a3+8]) != a0(=0x3).
  The `bne` branch at 0xda564ac targets 0xda568a4, is taken when v0(=[a3+8]) != a1(=0x4), and falls through when v0(=[a3+8]) == a1(=0x4).
  The `blez` branch at 0xda564b4 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `bne` branch at 0xda5660c targets 0xda564f4, is taken when t1(?) != s1(?), and falls through when t1(?) == s1(?).
  The `beq` branch at 0xda56614 targets 0xda5782c and is always taken.
  The `blez` branch at 0xda5661c targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `bne` branch at 0xda5672c targets 0xda56650, is taken when t1(?) != t0(?), and falls through when t1(?) == t0(?).
  The `beq` branch at 0xda56734 targets 0xda5782c and is always taken.
  The `blez` branch at 0xda5673c targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `bne` branch at 0xda56804 targets 0xda56764, is taken when t1(?) != a3(?), and falls through when t1(?) == a3(?).
  The `beq` branch at 0xda5680c targets 0xda5782c and is always taken.
  The `blez` branch at 0xda56814 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `bne` branch at 0xda56894 targets 0xda56830, is taken when t1(?) != a0(?), and falls through when t1(?) == a0(?).
  The `beq` branch at 0xda5689c targets 0xda5782c and is always taken.
  The `blez` branch at 0xda568a4 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `blez` branch at 0xda568c8 targets 0xda5691c, is taken when t0(=[a3+8]) <= 0 (signed), and falls through when t0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda568e8 targets 0xda56910, is taken when v0(=a0+4) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+4) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda56908 targets 0xda568f0, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xda56938 targets 0xda56984, is taken when t0(=[a3+8]) <= 0 (signed), and falls through when t0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda56950 targets 0xda56978, is taken when v0(=a0+4) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+4) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda56970 targets 0xda56958, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blezl` branch at 0xda569a8 targets 0xda569fc, is taken when t0(=[a3+8]) <= 0 (signed), and falls through when t0(=[a3+8]) > 0 (signed); its branch-likely delay slot `lwc1 $f6,772(s0)` at 0xda569ac runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda569c4 targets 0xda569ec, is taken when v0(=a0+4) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+4) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda569e4 targets 0xda569cc, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda56a10 targets 0xda568bc, is taken when t1(?) != a2(?), and falls through when t1(?) == a2(?).
  The `beq` branch at 0xda56a18 targets 0xda5782c and is always taken.
  The `beq` branch at 0xda56a24 targets 0xda56dc0, is taken when v0(=[a3+8]) == v1(=0x1), and falls through when v0(=[a3+8]) != v1(=0x1).
  The `beq` branch at 0xda56a2c targets 0xda56c20, is taken when v0(=[a3+8]) == a3(=0x2), and falls through when v0(=[a3+8]) != a3(=0x2).
  The `beq` branch at 0xda56a34 targets 0xda56b4c, is taken when v0(=[a3+8]) == a0(=0x3), and falls through when v0(=[a3+8]) != a0(=0x3).
  The `bne` branch at 0xda56a3c targets 0xda56f78, is taken when v0(=[a3+8]) != a1(=0x4), and falls through when v0(=[a3+8]) == a1(=0x4).
  The `blez` branch at 0xda56a44 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `bne` branch at 0xda56b3c targets 0xda56a84, is taken when t1(?) != a0(?), and falls through when t1(?) == a0(?).
  The `beq` branch at 0xda56b44 targets 0xda5782c and is always taken.
  The `blez` branch at 0xda56b4c targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `bne` branch at 0xda56c10 targets 0xda56b80, is taken when t1(?) != a0(?), and falls through when t1(?) == a0(?).
  The `beq` branch at 0xda56c18 targets 0xda5782c and is always taken.
  The `blez` branch at 0xda56c20 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `beql` branch at 0xda56c2c targets 0xda56cb8, is taken when (t5(=[a3]) & 0x1) == 0, and falls through when (t5(=[a3]) & 0x1) != 0; its branch-likely delay slot `lw t9,84(sp)` at 0xda56c30 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda56cac targets 0xda57828, is taken when t0(=0x1) == t5(=[a3]), and falls through when t0(=0x1) != t5(=[a3]).
  The `bne` branch at 0xda56db0 targets 0xda56ce8, is taken when t1(?) != t4(?), and falls through when t1(?) == t4(?).
  The `beq` branch at 0xda56db8 targets 0xda5782c and is always taken.
  The `blez` branch at 0xda56dc0 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `beq` branch at 0xda56dcc targets 0xda56e44, is taken when (t5(=[a3]) & 0x3) == 0, and falls through when (t5(=[a3]) & 0x3) != 0.
  The `bne` branch at 0xda56e34 targets 0xda56df0, is taken when v1(?) != t0(?), and falls through when v1(?) == t0(?).
  The `beql` branch at 0xda56e3c targets 0xda5782c, is taken when t0(?) == t5(=[a3]), and falls through when t0(?) != t5(=[a3]); its branch-likely delay slot `lw ra,36(sp)` at 0xda56e40 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda56f68 targets 0xda56e74, is taken when t1(?) != a2(?), and falls through when t1(?) == a2(?).
  The `beq` branch at 0xda56f70 targets 0xda5782c and is always taken.
  The `blez` branch at 0xda56f78 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `blez` branch at 0xda56f9c targets 0xda56ff0, is taken when t0(=[a3+8]) <= 0 (signed), and falls through when t0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda56fbc targets 0xda56fe4, is taken when v0(=a0+4) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+4) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda56fdc targets 0xda56fc4, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xda5700c targets 0xda57058, is taken when t0(=[a3+8]) <= 0 (signed), and falls through when t0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda57024 targets 0xda5704c, is taken when v0(=a0+4) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+4) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda57044 targets 0xda5702c, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda57070 targets 0xda56f90, is taken when t1(?) != a2(?), and falls through when t1(?) == a2(?).
  The `beq` branch at 0xda57078 targets 0xda5782c and is always taken.
  The `beq` branch at 0xda57084 targets 0xda575e4, is taken when v0(=[a3+8]) == v1(=0x1), and falls through when v0(=[a3+8]) != v1(=0x1).
  The `beq` branch at 0xda5708c targets 0xda57494, is taken when v0(=[a3+8]) == a3(=0x2), and falls through when v0(=[a3+8]) != a3(=0x2).
  The `beq` branch at 0xda57094 targets 0xda572d4, is taken when v0(=[a3+8]) == a0(=0x3), and falls through when v0(=[a3+8]) != a0(=0x3).
  The `bne` branch at 0xda5709c targets 0xda576cc, is taken when v0(=[a3+8]) != a1(=0x4), and falls through when v0(=[a3+8]) == a1(=0x4).
  The `blez` branch at 0xda570a4 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `beq` branch at 0xda570b0 targets 0xda57158, is taken when (t5(=[a3]) & 0x3) == 0, and falls through when (t5(=[a3]) & 0x3) != 0.
  The `bne` branch at 0xda57148 targets 0xda570ec, is taken when v0(?) != t0(?), and falls through when v0(?) == t0(?).
  The `beql` branch at 0xda57150 targets 0xda5782c, is taken when t0(?) == t5(=[a3]), and falls through when t0(?) != t5(=[a3]); its branch-likely delay slot `lw ra,36(sp)` at 0xda57154 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda572c4 targets 0xda57194, is taken when t1(?) != v0(?), and falls through when t1(?) == v0(?).
  The `beq` branch at 0xda572cc targets 0xda5782c and is always taken.
  The `blez` branch at 0xda572d4 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `beq` branch at 0xda572e0 targets 0xda57368, is taken when (t5(=[a3]) & 0x3) == 0, and falls through when (t5(=[a3]) & 0x3) != 0.
  The `bne` branch at 0xda57358 targets 0xda57310, is taken when v0(?) != t0(?), and falls through when v0(?) == t0(?).
  The `beql` branch at 0xda57360 targets 0xda5782c, is taken when t0(?) == t5(=[a3]), and falls through when t0(?) != t5(=[a3]); its branch-likely delay slot `lw ra,36(sp)` at 0xda57364 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda57484 targets 0xda57398, is taken when t1(?) != v0(?), and falls through when t1(?) == v0(?).
  The `beq` branch at 0xda5748c targets 0xda5782c and is always taken.
  The `blez` branch at 0xda57494 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `beq` branch at 0xda574a0 targets 0xda57508, is taken when (t5(=[a3]) & 0x3) == 0, and falls through when (t5(=[a3]) & 0x3) != 0.
  The `bne` branch at 0xda574f8 targets 0xda574c4, is taken when v0(?) != t0(?), and falls through when v0(?) == t0(?).
  The `beql` branch at 0xda57500 targets 0xda5782c, is taken when t0(?) == t5(=[a3]), and falls through when t0(?) != t5(=[a3]); its branch-likely delay slot `lw ra,36(sp)` at 0xda57504 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda575d4 targets 0xda5752c, is taken when t1(?) != v0(?), and falls through when t1(?) == v0(?).
  The `beq` branch at 0xda575dc targets 0xda5782c and is always taken.
  The `blez` branch at 0xda575e4 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `beq` branch at 0xda575f0 targets 0xda5763c, is taken when (t5(=[a3]) & 0x3) == 0, and falls through when (t5(=[a3]) & 0x3) != 0.
  The `bne` branch at 0xda5762c targets 0xda5760c, is taken when v0(?) != t0(?), and falls through when v0(?) == t0(?).
  The `beql` branch at 0xda57634 targets 0xda5782c, is taken when t0(?) == t5(=[a3]), and falls through when t0(?) != t5(=[a3]); its branch-likely delay slot `lw ra,36(sp)` at 0xda57638 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda576bc targets 0xda57658, is taken when t1(?) != v0(?), and falls through when t1(?) == v0(?).
  The `beq` branch at 0xda576c4 targets 0xda5782c and is always taken.
  The `blez` branch at 0xda576cc targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `blez` branch at 0xda576f0 targets 0xda57744, is taken when t0(=[a3+8]) <= 0 (signed), and falls through when t0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda57710 targets 0xda57738, is taken when v0(=a0+4) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+4) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda57730 targets 0xda57718, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda57754 targets 0xda576e4, is taken when t1(?) != a2(?), and falls through when t1(?) == a2(?).
  The `beq` branch at 0xda5775c targets 0xda5782c and is always taken.
  The `blez` branch at 0xda57764 targets 0xda57828, is taken when t5(=[a3]) <= 0 (signed), and falls through when t5(=[a3]) > 0 (signed).
  The `blez` branch at 0xda5778c targets 0xda5781c, is taken when t6(=[a3+4]) <= 0 (signed), and falls through when t6(=[a3+4]) > 0 (signed).
  The `blez` branch at 0xda577a0 targets 0xda577f0, is taken when t0(=[a3+8]) <= 0 (signed), and falls through when t0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda577bc targets 0xda577e4, is taken when v0(=a0+4) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+4) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda577dc targets 0xda577c4, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bnel` branch at 0xda57814 targets 0xda57798, is taken when a2(?) < t8(=[a3+4]) (signed), and falls through when a2(?) >= t8(=[a3+4]) (signed); its branch-likely delay slot `lw t0,8(s1)` at 0xda57818 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda57820 targets 0xda5777c, is taken when t1(?) != t3(?), and falls through when t1(?) == t3(?).
  The return at 0xda57834 has v0 = one of ?, (([a3] + [a3]) + [a3]), ([a3] + [a3]), [a3+8].
  The instructions from 0xda57080 to 0xda57080 are not reached by any path from the entry, and their branches are not listed.

- `DoDomain2WithDerivs` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda5783c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda5783c-0xda59f60 (10020 bytes).
  It occupies 10020 bytes.
  The `lwc1` at 0xda5786c loads 4 bytes from a3 (arg3 at entry) +0x10.
  The `lwc1` at 0xda57870 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `lwc1` at 0xda5788c loads 4 bytes from a3 (arg3 at entry) +0x14.
  The `lwc1` at 0xda57890 loads 4 bytes from a3 (arg3 at entry) +0x18.
  The `lwc1` at 0xda578c0 loads 4 bytes from a0 (arg0 at entry) +0x2f4.
  The `lw` at 0xda578dc loads 4 bytes from a0 (arg0 at entry) +0x584.
  7 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0xda578ec, `lw` at 0xda57900, `lw` at 0xda57930.
  The `lw` at 0xda578f0 loads 4 bytes from a0 (arg0 at entry) +0x57c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x2f8, including `lwc1` at 0xda578f8, `lwc1` at 0xda5793c.
  The `sw` at 0xda5792c stores 4 bytes to a0 (arg0 at entry) +0x584.
  The `swc1` at 0xda57934 stores 4 bytes to a0 (arg0 at entry) +0x2f4.
  The `sw` at 0xda57938 stores 4 bytes to a0 (arg0 at entry) +0x57c.
  The `lw` at 0xda57958 loads 4 bytes from a0 (arg0 at entry) +0x588.
  18 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0xda57964, `lw` at 0xda57978, `lw` at 0xda57998.
  The `lw` at 0xda57968 loads 4 bytes from a0 (arg0 at entry) +0x580.
  The `sw` at 0xda57994 stores 4 bytes to a0 (arg0 at entry) +0x588.
  The `swc1` at 0xda5799c stores 4 bytes to a0 (arg0 at entry) +0x2f8.
  The `sw` at 0xda579a0 stores 4 bytes to a0 (arg0 at entry) +0x580.
  The `lw` at 0xda579a8 loads 4 bytes from a3 (arg3 at entry) +0x0.
  60 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x39c, including `lwc1` at 0xda57a44, `lwc1` at 0xda57b08, `lwc1` at 0xda57bc0.
  350 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda57a48, `lwc1` at 0xda57a58, `lwc1` at 0xda57a84.
  43 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3a0, including `lwc1` at 0xda57a4c, `lwc1` at 0xda57b10, `lwc1` at 0xda57bc4.
  20 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3a4, including `lwc1` at 0xda57a68, `lwc1` at 0xda57b20, `lwc1` at 0xda57bec.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3a8, including `lwc1` at 0xda57a9c, `lwc1` at 0xda57b38, `lwc1` at 0xda57c04.
  54 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x2fc, including `lwc1` at 0xda57aa4, `lwc1` at 0xda57af8, `lwc1` at 0xda57dc0.
  174 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda57ab0, `swc1` at 0xda57abc, `swc1` at 0xda57b04.
  27 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x43c, including `lwc1` at 0xda57ab4, `lwc1` at 0xda57e00, `lwc1` at 0xda58098.
  57 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4dc, including `lwc1` at 0xda57ac0, `lwc1` at 0xda57b6c, `lwc1` at 0xda57c3c.
  43 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e0, including `lwc1` at 0xda57ac8, `lwc1` at 0xda57b74, `lwc1` at 0xda57c40.
  20 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e4, including `lwc1` at 0xda57ad8, `lwc1` at 0xda57b84, `lwc1` at 0xda57c50.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e8, including `lwc1` at 0xda57af0, `lwc1` at 0xda57b9c, `lwc1` at 0xda57c68.
  28 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x300, including `lwc1` at 0xda57b40, `lwc1` at 0xda57ba4, `lwc1` at 0xda57e64.
  14 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x440, including `lwc1` at 0xda57b58, `lwc1` at 0xda57e84, `lwc1` at 0xda580fc.
  20 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x304, including `lwc1` at 0xda57c0c, `lwc1` at 0xda57c70, `lwc1` at 0xda57f00.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x444, including `lwc1` at 0xda57c24, `lwc1` at 0xda57f20, `lwc1` at 0xda58174.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x308, including `lwc1` at 0xda57cd4, `lwc1` at 0xda57d38, `lwc1` at 0xda57fa0.
  5 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x448, including `lwc1` at 0xda57cec, `lwc1` at 0xda57fc0, `lwc1` at 0xda581f0.
  The `jalr` at 0xda57918 calls PreEvaluateWithDeriv [0xda547cc] with a0=[a3+4], a1=?, a2=a0+764, a3=a0+1084; fp f12=[a3+16], f14=[a3+24].
  The `jalr` at 0xda57984 calls PreEvaluateWithDeriv [0xda547cc] with a0=[a3+8], a1=?, a2=a0+924, a3=a0+1244.
  The `bc1tl` branch at 0xda57884 targets 0xda59f48, is taken when f0(=[a3+12]) == f12(=[a3+16]) (c.eq.s at 0xda5787c), and falls through when not (f0(=[a3+12]) == f12(=[a3+16]) (c.eq.s at 0xda5787c)); its branch-likely delay slot `lw ra,44(sp)` at 0xda57888 runs only when taken and is annulled on fall-through.
  The `bc1tl` branch at 0xda578a0 targets 0xda59f48, is taken when f2(=[a3+20]) == f14(=[a3+24]) (c.eq.s at 0xda57898), and falls through when not (f2(=[a3+20]) == f14(=[a3+24]) (c.eq.s at 0xda57898)); its branch-likely delay slot `lw ra,44(sp)` at 0xda578a4 runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xda578d4 targets 0xda578fc, is taken when not (f16 == f8(=[a0+756]) (c.eq.s at 0xda578cc)), and falls through when f16 == f8(=[a0+756]) (c.eq.s at 0xda578cc).
  The `bne` branch at 0xda578e4 targets 0xda578fc, is taken when s2(=0x1) != t6(=[a0+1412]), and falls through when s2(=0x1) == t6(=[a0+1412]).
  The `beql` branch at 0xda578f4 targets 0xda57940, is taken when t7(=[a3+4]) == t8(=[a0+1404]), and falls through when t7(=[a3+4]) != t8(=[a0+1404]); its branch-likely delay slot `lwc1 $f10,760(s0)` at 0xda578f8 runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xda57950 targets 0xda57974, is taken when not (f18 == f10(=[a0+760]) (c.eq.s at 0xda57948)), and falls through when f18 == f10(=[a0+760]) (c.eq.s at 0xda57948).
  The `bne` branch at 0xda5795c targets 0xda57974, is taken when s2(=0x1) != t6(=[a0+1416]), and falls through when s2(=0x1) == t6(=[a0+1416]).
  The `beql` branch at 0xda5796c targets 0xda579a8, is taken when t7(=[a3+8]) == t8(=[a0+1408]), and falls through when t7(=[a3+8]) != t8(=[a0+1408]); its branch-likely delay slot `lw v0,4(s1)` at 0xda57970 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda579b0 targets 0xda597c4, is taken when v0(=[a3+4]) == s2(=0x1), and falls through when v0(=[a3+4]) != s2(=0x1); its branch-likely delay slot `lw v0,8(s1)` at 0xda579b4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda579b8 targets 0xda590b8, is taken when v0(=[a3+4]) == v1(=0x2), and falls through when v0(=[a3+4]) != v1(=0x2).
  The `beq` branch at 0xda579c0 targets 0xda586b8, is taken when v0(=[a3+4]) == a0(=0x3), and falls through when v0(=[a3+4]) != a0(=0x3).
  The `bne` branch at 0xda579c8 targets 0xda59e10, is taken when v0(=[a3+4]) != a1(=0x4), and falls through when v0(=[a3+4]) == a1(=0x4).
  The `beq` branch at 0xda579d4 targets 0xda58240, is taken when v0(=[a3+8]) == s2(=0x1), and falls through when v0(=[a3+8]) != s2(=0x1).
  The `beq` branch at 0xda579dc targets 0xda58020, is taken when v0(=[a3+8]) == v1(=0x2), and falls through when v0(=[a3+8]) != v1(=0x2).
  The `beq` branch at 0xda579e4 targets 0xda57d64, is taken when v0(=[a3+8]) == a0(=0x3), and falls through when v0(=[a3+8]) != a0(=0x3).
  The `bne` branch at 0xda579ec targets 0xda583c4, is taken when v0(=[a3+8]) != a1(=0x4), and falls through when v0(=[a3+8]) == a1(=0x4).
  The `blez` branch at 0xda579f4 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bnel` branch at 0xda57d54 targets 0xda57a48, is taken when t1(?) != t6(?), and falls through when t1(?) == t6(?); its branch-likely delay slot `lwc1 $f4,924(s0)` at 0xda57d58 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda57d5c targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda57d64 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bne` branch at 0xda58010 targets 0xda57da0, is taken when t1(?) != t5(?), and falls through when t1(?) == t5(?).
  The `beq` branch at 0xda58018 targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda58020 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bne` branch at 0xda58230 targets 0xda58050, is taken when t1(?) != a1(?), and falls through when t1(?) == a1(?).
  The `beq` branch at 0xda58238 targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda58240 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bne` branch at 0xda583b4 targets 0xda58264, is taken when t1(?) != v1(?), and falls through when t1(?) == v1(?).
  The `beq` branch at 0xda583bc targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda583c4 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bne` branch at 0xda58404 targets 0xda58470, is taken when a3(=[a3+8]) < 0x2 (signed), and falls through when a3(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda58428 targets 0xda5845c, is taken when v0(=a0+8) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+8) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda58454 targets 0xda58430, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda584b4 targets 0xda5851c, is taken when a3(=[a3+8]) < 0x2 (signed), and falls through when a3(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda584d4 targets 0xda58508, is taken when v0(=a0+8) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+8) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda58500 targets 0xda584dc, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda58560 targets 0xda585c8, is taken when a3(=[a3+8]) < 0x2 (signed), and falls through when a3(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda58580 targets 0xda585b4, is taken when v0(=a0+8) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+8) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda585ac targets 0xda58588, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda5860c targets 0xda58674, is taken when a3(=[a3+8]) < 0x2 (signed), and falls through when a3(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda5862c targets 0xda58660, is taken when v0(=a0+8) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+8) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda58658 targets 0xda58634, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda586a8 targets 0xda583e8, is taken when t1(?) != a2(?), and falls through when t1(?) == a2(?).
  The `beq` branch at 0xda586b0 targets 0xda59f48 and is always taken.
  The `beq` branch at 0xda586bc targets 0xda58d44, is taken when v0(=[a3+8]) == s2(=0x1), and falls through when v0(=[a3+8]) != s2(=0x1).
  The `beq` branch at 0xda586c4 targets 0xda58ba0, is taken when v0(=[a3+8]) == v1(=0x2), and falls through when v0(=[a3+8]) != v1(=0x2).
  The `beq` branch at 0xda586cc targets 0xda58984, is taken when v0(=[a3+8]) == a0(=0x3), and falls through when v0(=[a3+8]) != a0(=0x3).
  The `bne` branch at 0xda586d4 targets 0xda58e70, is taken when v0(=[a3+8]) != a1(=0x4), and falls through when v0(=[a3+8]) == a1(=0x4).
  The `blez` branch at 0xda586dc targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bnel` branch at 0xda58974 targets 0xda58730, is taken when t1(?) != t6(?), and falls through when t1(?) == t6(?); its branch-likely delay slot `lwc1 $f10,924(s0)` at 0xda58978 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda5897c targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda58984 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bne` branch at 0xda58b90 targets 0xda589c0, is taken when t1(?) != t5(?), and falls through when t1(?) == t5(?).
  The `beq` branch at 0xda58b98 targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda58ba0 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bne` branch at 0xda58d34 targets 0xda58bd0, is taken when t1(?) != a1(?), and falls through when t1(?) == a1(?).
  The `beq` branch at 0xda58d3c targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda58d44 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bne` branch at 0xda58e60 targets 0xda58d68, is taken when t1(?) != v1(?), and falls through when t1(?) == v1(?).
  The `beq` branch at 0xda58e68 targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda58e70 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bne` branch at 0xda58eb0 targets 0xda58f1c, is taken when a3(=[a3+8]) < 0x2 (signed), and falls through when a3(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda58ed4 targets 0xda58f08, is taken when v0(=a0+8) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+8) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda58f00 targets 0xda58edc, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda58f60 targets 0xda58fc8, is taken when a3(=[a3+8]) < 0x2 (signed), and falls through when a3(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda58f80 targets 0xda58fb4, is taken when v0(=a0+8) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+8) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda58fac targets 0xda58f88, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda5900c targets 0xda59074, is taken when a3(=[a3+8]) < 0x2 (signed), and falls through when a3(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda5902c targets 0xda59060, is taken when v0(=a0+8) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+8) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda59058 targets 0xda59034, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda590a8 targets 0xda58e94, is taken when t1(?) != a2(?), and falls through when t1(?) == a2(?).
  The `beq` branch at 0xda590b0 targets 0xda59f48 and is always taken.
  The `beq` branch at 0xda590bc targets 0xda5955c, is taken when v0(=[a3+8]) == s2(=0x1), and falls through when v0(=[a3+8]) != s2(=0x1).
  The `beq` branch at 0xda590c4 targets 0xda59434, is taken when v0(=[a3+8]) == v1(=0x2), and falls through when v0(=[a3+8]) != v1(=0x2).
  The `beq` branch at 0xda590cc targets 0xda592b8, is taken when v0(=[a3+8]) == a0(=0x3), and falls through when v0(=[a3+8]) != a0(=0x3).
  The `bne` branch at 0xda590d4 targets 0xda59624, is taken when v0(=[a3+8]) != a1(=0x4), and falls through when v0(=[a3+8]) == a1(=0x4).
  The `blez` branch at 0xda590dc targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bnel` branch at 0xda592a8 targets 0xda5912c, is taken when t1(?) != t6(?), and falls through when t1(?) == t6(?); its branch-likely delay slot `lwc1 $f10,924(s0)` at 0xda592ac runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda592b0 targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda592b8 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bne` branch at 0xda59424 targets 0xda592f4, is taken when t1(?) != t5(?), and falls through when t1(?) == t5(?).
  The `beq` branch at 0xda5942c targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda59434 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bne` branch at 0xda5954c targets 0xda59464, is taken when t1(?) != a1(?), and falls through when t1(?) == a1(?).
  The `beq` branch at 0xda59554 targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda5955c targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bne` branch at 0xda59614 targets 0xda59578, is taken when t1(?) != v0(?), and falls through when t1(?) == v0(?).
  The `beq` branch at 0xda5961c targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda59624 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bne` branch at 0xda59664 targets 0xda596d0, is taken when a3(=[a3+8]) < 0x2 (signed), and falls through when a3(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda59688 targets 0xda596bc, is taken when v0(=a0+8) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+8) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda596b4 targets 0xda59690, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda59714 targets 0xda5977c, is taken when a3(=[a3+8]) < 0x2 (signed), and falls through when a3(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda59734 targets 0xda59768, is taken when v0(=a0+8) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+8) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda59760 targets 0xda5973c, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda597b0 targets 0xda59648, is taken when t1(?) != a2(?), and falls through when t1(?) == a2(?).
  The `beq` branch at 0xda597b8 targets 0xda59f48 and is always taken.
  The `beq` branch at 0xda597c8 targets 0xda59b54, is taken when v0(=[a3+8]) == s2(=0x1), and falls through when v0(=[a3+8]) != s2(=0x1).
  The `beq` branch at 0xda597d0 targets 0xda599b8, is taken when v0(=[a3+8]) == v1(=0x2), and falls through when v0(=[a3+8]) != v1(=0x2).
  The `beq` branch at 0xda597d8 targets 0xda598e8, is taken when v0(=[a3+8]) == a0(=0x3), and falls through when v0(=[a3+8]) != a0(=0x3).
  The `bne` branch at 0xda597e0 targets 0xda59d20, is taken when v0(=[a3+8]) != a1(=0x4), and falls through when v0(=[a3+8]) == a1(=0x4).
  The `blez` branch at 0xda597e8 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bne` branch at 0xda598d8 targets 0xda59824, is taken when t1(?) != v0(?), and falls through when t1(?) == v0(?).
  The `beq` branch at 0xda598e0 targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda598e8 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bne` branch at 0xda599a8 targets 0xda59918, is taken when t1(?) != v0(?), and falls through when t1(?) == v0(?).
  The `beq` branch at 0xda599b0 targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda599b8 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `beql` branch at 0xda599c4 targets 0xda59a4c, is taken when (s3(=[a3]) & 0x1) == 0, and falls through when (s3(=[a3]) & 0x1) != 0; its branch-likely delay slot `lw t9,204(sp)` at 0xda599c8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda59a40 targets 0xda59f44, is taken when a0(=0x1) == s3(=[a3]), and falls through when a0(=0x1) != s3(=[a3]).
  The `bne` branch at 0xda59b44 targets 0xda59a7c, is taken when t1(?) != v0(?), and falls through when t1(?) == v0(?).
  The `beq` branch at 0xda59b4c targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda59b54 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `beq` branch at 0xda59b60 targets 0xda59be8, is taken when (s3(=[a3]) & 0x3) == 0, and falls through when (s3(=[a3]) & 0x3) != 0.
  The `bne` branch at 0xda59bd8 targets 0xda59b8c, is taken when v0(?) != a0(?), and falls through when v0(?) == a0(?).
  The `beql` branch at 0xda59be0 targets 0xda59f48, is taken when a0(?) == s3(=[a3]), and falls through when a0(?) != s3(=[a3]); its branch-likely delay slot `lw ra,44(sp)` at 0xda59be4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda59d10 targets 0xda59c14, is taken when t1(?) != v0(?), and falls through when t1(?) == v0(?).
  The `beq` branch at 0xda59d18 targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda59d20 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `bne` branch at 0xda59d60 targets 0xda59dcc, is taken when a3(=[a3+8]) < 0x2 (signed), and falls through when a3(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda59d84 targets 0xda59db8, is taken when v0(=a0+8) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+8) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda59db0 targets 0xda59d8c, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda59e00 targets 0xda59d44, is taken when t1(?) != a2(?), and falls through when t1(?) == a2(?).
  The `beq` branch at 0xda59e08 targets 0xda59f48 and is always taken.
  The `blez` branch at 0xda59e10 targets 0xda59f44, is taken when s3(=[a3]) <= 0 (signed), and falls through when s3(=[a3]) > 0 (signed).
  The `blez` branch at 0xda59e48 targets 0xda59f30, is taken when t8(=[a3+4]) <= 0 (signed), and falls through when t8(=[a3+4]) > 0 (signed).
  The `bne` branch at 0xda59e70 targets 0xda59edc, is taken when a3(=[a3+8]) < 0x2 (signed), and falls through when a3(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda59e94 targets 0xda59ec8, is taken when v0(=a0+8) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(=a0+8) < v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda59ec0 targets 0xda59e9c, is taken when v0(?) < v1(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when v0(?) >= v1(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bnel` branch at 0xda59f28 targets 0xda59e58, is taken when a2(?) < t6(=[a3+4]) (signed), and falls through when a2(?) >= t6(=[a3+4]) (signed); its branch-likely delay slot `lwc1 $f0,0(a0)` at 0xda59f2c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xda59f3c targets 0xda59e30, is taken when t1(?) != t5(?), and falls through when t1(?) == t5(?).
  The return at 0xda59f58 has v0 = one of ?, [a3+8].
  The instructions from 0xda597c0 to 0xda597c0 are not reached by any path from the entry, and their branches are not listed.

- `DoEvalCoord2` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda59f60 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda59f60-0xda5a808 (2216 bytes).
  It occupies 2216 bytes.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda59f9c, `lw` at 0xda59fac, `lw` at 0xda59fb4.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda59fa8, `sw` at 0xda59fb0, `sw` at 0xda59fbc.
  12 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xda59fcc, `sw` at 0xda5a088, `sw` at 0xda5a10c.
  The `lw` at 0xda59fd4 loads 4 bytes from a0 (arg0 at entry) +0x700.
  9 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x714, including `lw` at 0xda59fe0, `lw` at 0xda59fe4, `lw` at 0xda5a094.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7028, including `lw` at 0xda5a00c, `lw` at 0xda5a180.
  15 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0xda5a078, `lw` at 0xda5a0fc, `lw` at 0xda5a154.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7024, including `lw` at 0xda5a0bc, `lw` at 0xda5a1d4.
  The `lw` at 0xda5a140 loads 4 bytes from a0 (arg0 at entry) +0x7010.
  The `lbu` at 0xda5a20c loads 1 byte from a0 (arg0 at entry) +0xc8d.
  The `lw` at 0xda5a234 loads 4 bytes from a0 (arg0 at entry) +0x700c.
  The `lw` at 0xda5a27c loads 4 bytes from a0 (arg0 at entry) +0x7008.
  The `lw` at 0xda5a2c4 loads 4 bytes from a0 (arg0 at entry) +0x7020.
  The `lw` at 0xda5a30c loads 4 bytes from a0 (arg0 at entry) +0x701c.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xdd0, including `lwc1` at 0xda5a330, `lwc1` at 0xda5a38c, `lwc1` at 0xda5a3e4.
  3 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x30, including `swc1` at 0xda5a344, `swc1` at 0xda5a39c, `swc1` at 0xda5a3f0.
  The `lw` at 0xda5a35c loads 4 bytes from a0 (arg0 at entry) +0x7018.
  2 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x2c, including `swc1` at 0xda5a388, `swc1` at 0xda5a3e0.
  The `lw` at 0xda5a3b4 loads 4 bytes from a0 (arg0 at entry) +0x7014.
  The `swc1` at 0xda5a3dc stores 4 bytes to a3 (arg3 at entry) +0x28.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x17ec, including `lw` at 0xda5a404, `lw` at 0xda5a42c, `lw` at 0xda5a454.
  The `lw` at 0xda5a40c loads 4 bytes from [a0+6124] +0x594.
  The `lw` at 0xda5a434 loads 4 bytes from [a0+6124] +0x5cc.
  The `lw` at 0xda5a45c loads 4 bytes from [a0+6124] +0x5fc.
  The `lw` at 0xda5a484 loads 4 bytes from [a0+6124] +0x67c.
  The `lw` at 0xda5a4b0 loads 4 bytes from [a0+6124] +0x50c.
  The `lw` at 0xda5a4d8 loads 4 bytes from [a0+6124] +0x52c.
  The `jalr` at 0xda5a02c calls DoDomain2WithDerivs [0xda5783c] with a0=sp-1432, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0+28604.
  The `jalr` at 0xda5a04c calls ComputeFirstPartials [0xda55ac4] with a0=a3+52, a1=sp-1448, a2=sp-1464, a3=?.
  The `jalr` at 0xda5a070 calls ComputeNormal2 [0xda55b78] with a0=a0 at entry (arg0), a1=a3+20, a2=sp-1448, a3=sp-1464.
  The `jalr` at 0xda5a0d0 calls DoDomain2WithDerivs [0xda5783c] with a0=sp-1432, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0+28564.
  The `jalr` at 0xda5a0f4 calls ComputeNormal2 [0xda55b78] with a0=a0 at entry (arg0), a1=a3+20, a2=sp-1476, a3=sp-1488.
  The `jalr` at 0xda5a14c calls DoDomain2 [0xda55c1c] with a0=sp-1432, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0+28364.
  The `jalr` at 0xda5a198 calls DoDomain2 [0xda55c1c] with a0=sp-1432, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0+28604.
  The `jalr` at 0xda5a1e8 calls DoDomain2 [0xda55c1c] with a0=sp-1432, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0+28564.
  The `jalr` at 0xda5a248 calls DoDomain2 [0xda55c1c] with a0=sp-1432, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0+28324.
  The `jalr` at 0xda5a290 calls DoDomain2 [0xda55c1c] with a0=sp-1432, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0+28284.
  The `jalr` at 0xda5a2dc calls DoDomain2 [0xda55c1c] with a0=sp-1432, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0+28524.
  The `jalr` at 0xda5a324 calls DoDomain2 [0xda55c1c] with a0=sp-1432, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0+28484.
  The `jalr` at 0xda5a374 calls DoDomain2 [0xda55c1c] with a0=sp-1432, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0+28444.
  The `jalr` at 0xda5a3c8 calls DoDomain2 [0xda55c1c] with a0=sp-1432, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a0+28404.
  The `jalr` at 0xda5a410 calls (unknown callee) with a0=a3+4, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a438 calls (unknown callee) with a0=a3+4, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a460 calls (unknown callee) with a0=a3+20, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a488 calls (unknown callee) with a0=a3+36, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a4b4 calls (unknown callee) with a0=a3+52, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a4dc calls (unknown callee) with a0=a3+52, a1=?, a2=?, a3=?.
  The `bne` branch at 0xda59fb8 targets 0xda59f9c, is taken when t9(?) != t0(=a0+1416), and falls through when t9(?) == t0(=a0+1416).
  The `bgezl` branch at 0xda59fdc targets 0xda5a120, is taken when t3(=([a0+1792] << 0x8)) >= 0 (signed), and falls through when t3(=([a0+1792] << 0x8)) < 0 (signed); its branch-likely delay slot `lw v0,1812(s1)` at 0xda59fe0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda59ff4 targets 0xda5a098, is taken when (v0(=[a0+1812]) & 0x100) == 0, and falls through when (v0(=[a0+1812]) & 0x100) != 0.
  The `beq` branch at 0xda5a090 targets 0xda5a20c and is always taken.
  The `beq` branch at 0xda5a098 targets 0xda5a20c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0xda5a114 targets 0xda5a20c and is always taken.
  The `beq` branch at 0xda5a12c targets 0xda5a168, is taken when (v0(=[a0+1812]) & 0x4) == 0, and falls through when (v0(=[a0+1812]) & 0x4) != 0.
  The `beq` branch at 0xda5a16c targets 0xda5a1c0, is taken when (v0(=[a0+1812]) & 0x100) == 0, and falls through when (v0(=[a0+1812]) & 0x100) != 0.
  The `beq` branch at 0xda5a1b8 targets 0xda5a20c and is always taken.
  The `beq` branch at 0xda5a1c0 targets 0xda5a20c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xda5a218 targets 0xda5a268, is taken when t0(=[a0+3213]:1) == 0, and falls through when t0(=[a0+3213]:1) != 0.
  The `beq` branch at 0xda5a220 targets 0xda5a2ac, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xda5a260 targets 0xda5a2ac and is always taken.
  The `beq` branch at 0xda5a268 targets 0xda5a2ac, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0xda5a2b0 targets 0xda5a2f8, is taken when (v0(=[a0+1812]) & 0x40) == 0, and falls through when (v0(=[a0+1812]) & 0x40) != 0.
  The `beq` branch at 0xda5a2f0 targets 0xda5a3f4 and is always taken.
  The `beq` branch at 0xda5a2f8 targets 0xda5a348, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0xda5a340 targets 0xda5a3f4 and is always taken.
  The `beq` branch at 0xda5a348 targets 0xda5a3a0, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0xda5a398 targets 0xda5a3f4 and is always taken.
  The `beq` branch at 0xda5a3a0 targets 0xda5a3f4, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beql` branch at 0xda5a3fc targets 0xda5a424, is taken when (v0(=[a3]) & 0x1) == 0, and falls through when (v0(=[a3]) & 0x1) != 0; its branch-likely delay slot `andi t7,v0,0x2` at 0xda5a400 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda5a424 targets 0xda5a44c, is taken when t7(?) == 0, and falls through when t7(?) != 0; its branch-likely delay slot `andi t1,v0,0x4` at 0xda5a428 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda5a44c targets 0xda5a474, is taken when t1(?) == 0, and falls through when t1(?) != 0; its branch-likely delay slot `andi t3,v0,0x8` at 0xda5a450 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda5a474 targets 0xda5a498, is taken when t3(?) == 0, and falls through when t3(?) != 0; its branch-likely delay slot `lw t5,1540(sp)` at 0xda5a478 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xda5a4a0 targets 0xda5a4c8, is taken when t5(?) != at(=0x3), and falls through when t5(?) == at(=0x3); its branch-likely delay slot `addiu at,zero,4` at 0xda5a4a4 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda5a4bc targets 0xda5a4e8 and is always taken.
  The `bnel` branch at 0xda5a4c8 targets 0xda5a4ec, is taken when t6(?) != at(=0x4), and falls through when t6(?) == at(=0x4); its branch-likely delay slot `lw ra,52(sp)` at 0xda5a4cc runs only when taken and is annulled on fall-through.
  The return at 0xda5a4f4 has v0 = one of ?, ret(?).
  The instructions from 0xda5a11c to 0xda5a11c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda5a4c4 to 0xda5a4c4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda5a4fc to 0xda5a804 are not reached by any path from the entry, and their branches are not listed.

- `sendChange` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xda5a808 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xda5a808-0xda5b430 (3112 bytes).
  It occupies 3112 bytes.
  The `lw` at 0xda5a830 loads 4 bytes from a0 (arg0 at entry) +0x1b0.
  The `lw` at 0xda5a840 loads 4 bytes from a0 (arg0 at entry) +0x1b4.
  The `lw` at 0xda5a84c loads 4 bytes from a0 (arg0 at entry) +0x1b8.
  The `lw` at 0xda5a854 loads 4 bytes from a0 (arg0 at entry) +0x1bc.
  6 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0xda5a85c, `lw` at 0xda5a884, `lw` at 0xda5a8ac.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x17ec, including `lw` at 0xda5a86c, `lw` at 0xda5a894, `lw` at 0xda5a8bc.
  The `lw` at 0xda5a874 loads 4 bytes from [a0+6124] +0x594.
  The `lw` at 0xda5a89c loads 4 bytes from [a0+6124] +0x67c.
  The `lw` at 0xda5a8c4 loads 4 bytes from [a0+6124] +0x5fc.
  The `lw` at 0xda5a8ec loads 4 bytes from [a0+6124] +0x50c.
  The `lw` at 0xda5a914 loads 4 bytes from [a0+6124] +0x52c.
  The `lw` at 0xda5a934 loads 4 bytes from a0 (arg0 at entry) +0x700.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2e38, including `lw` at 0xda5a944, `lw` at 0xda5a984.
  The `sw` at 0xda5a968 stores 4 bytes to a0 (arg0 at entry) +0x1b0.
  The `sw` at 0xda5a970 stores 4 bytes to a0 (arg0 at entry) +0x1b4.
  The `sw` at 0xda5a978 stores 4 bytes to a0 (arg0 at entry) +0x1b8.
  The `sw` at 0xda5a980 stores 4 bytes to a0 (arg0 at entry) +0x1bc.
  The `jalr` at 0xda5a878 calls (unknown callee) with a0=a1+4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda5a8a0 calls (unknown callee) with a0=a1+36, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a8c8 calls (unknown callee) with a0=a1+20, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a8f0 calls (unknown callee) with a0=a1+52, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a918 calls (unknown callee) with a0=a1+52, a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a94c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xda5a988 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beql` branch at 0xda5a864 targets 0xda5a88c, is taken when (v0(=[a1]) & 0x1) == 0, and falls through when (v0(=[a1]) & 0x1) != 0; its branch-likely delay slot `andi t3,v0,0x8` at 0xda5a868 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda5a88c targets 0xda5a8b4, is taken when t3(?) == 0, and falls through when t3(?) != 0; its branch-likely delay slot `andi t5,v0,0x4` at 0xda5a890 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda5a8b4 targets 0xda5a8dc, is taken when t5(?) == 0, and falls through when t5(?) != 0; its branch-likely delay slot `andi t7,v0,0x10` at 0xda5a8b8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda5a8dc targets 0xda5a904, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xda5a8fc targets 0xda5a928 and is always taken.
  The `beql` branch at 0xda5a904 targets 0xda5a92c, is taken when t0(?) == 0, and falls through when t0(?) != 0; its branch-likely delay slot `andi t2,v0,0x1` at 0xda5a908 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda5a92c targets 0xda5a998, is taken when t2(?) == 0, and falls through when t2(?) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xda5a930 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xda5a93c targets 0xda5a998, is taken when (t3(=[a0+1792]) & 0x80) == 0, and falls through when (t3(=[a0+1792]) & 0x80) != 0; its branch-likely delay slot `lw ra,36(sp)` at 0xda5a940 runs only when taken and is annulled on fall-through.
  The return at 0xda5a9a0 has v0 = one of [a1], ret(?).
  The instructions from 0xda5a9a8 to 0xda5b42c are not reached by any path from the entry, and their branches are not listed.

- `__glOdysseyValidateClipmap` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab8a98 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab8a98-0xdab97e8 (3408 bytes).
  It occupies 3408 bytes.
  The `lw` at 0xdab8aa4 loads 4 bytes from a0 (arg0 at entry) +0xe8c.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x5b4, including `lw` at 0xdab8ab4, `lw` at 0xdab8cd4.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x5b8, including `lw` at 0xdab8ac8, `lw` at 0xdab8cf0.
  13 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdab8af8, `lw` at 0xdab8b08, `lw` at 0xdab8b2c.
  5 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x10, including `sw` at 0xdab8b50, `sw` at 0xdab8ba8, `sw` at 0xdab8be0.
  The `sw` at 0xdab8b54 stores 4 bytes to a1 (arg1 at entry) +0xbc.
  The `lw` at 0xdab8b58 loads 4 bytes from a1 (arg1 at entry) +0x5b0.
  The `lwc1` at 0xdab8c24 loads 4 bytes from a1 (arg1 at entry) +0x48.
  The `lw` at 0xdab8c38 loads 4 bytes from a1 (arg1 at entry) +0xe0.
  The `lw` at 0xdab8c44 loads 4 bytes from a1 (arg1 at entry) +0xf4.
  The `lw` at 0xdab8c64 loads 4 bytes from a1 (arg1 at entry) +0xc4.
  The `sw` at 0xdab8c94 stores 4 bytes to a1 (arg1 at entry) +0xe0.
  The `lw` at 0xdab8c98 loads 4 bytes from a1 (arg1 at entry) +0xb0.
  The `sw` at 0xdab8ca8 stores 4 bytes to a1 (arg1 at entry) +0xf4.
  The `lw` at 0xdab8cb4 loads 4 bytes from a1 (arg1 at entry) +0xb4.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0xc4, including `sw` at 0xdab8cc8, `sw` at 0xdab8cf4.
  The `lw` at 0xdab8cdc loads 4 bytes from a1 (arg1 at entry) +0xc8.
  The `lw` at 0xdab8cfc loads 4 bytes from a1 (arg1 at entry) +0xcc.
  The `sw` at 0xdab8d08 stores 4 bytes to a1 (arg1 at entry) +0xc8.
  The `sw` at 0xdab8d18 stores 4 bytes to a1 (arg1 at entry) +0xcc.
  The `blezl` branch at 0xdab8aac targets 0xdab8b1c, is taken when v0(=[a0+3724]) <= 0 (signed), and falls through when v0(=[a0+3724]) > 0 (signed); its branch-likely delay slot `addiu t4,zero,68` at 0xdab8ab0 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xdab8ac0 targets 0xdab8b1c, is taken when t6(=[a1+1460]) < 0x2 (signed), and falls through when t6(=[a1+1460]) >= 0x2 (signed); its branch-likely delay slot `addiu t4,zero,68` at 0xdab8ac4 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xdab8ad4 targets 0xdab8b1c, is taken when t7(=[a1+1464]) < 0x2 (signed), and falls through when t7(=[a1+1464]) >= 0x2 (signed); its branch-likely delay slot `addiu t4,zero,68` at 0xdab8ad8 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdab8ae4 targets 0xdab8b1c, is taken when a2(?) >= v0(=[a0+3724]) (signed), and falls through when a2(?) < v0(=[a0+3724]) (signed); its branch-likely delay slot `addiu t4,zero,68` at 0xdab8ae8 runs only when taken and is annulled on fall-through.
  The `bnel` branch at 0xdab8b00 targets 0xdab8b1c, is taken when t9(?) < 0x2 (signed), and falls through when t9(?) >= 0x2 (signed); its branch-likely delay slot `addiu t4,zero,68` at 0xdab8b04 runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdab8b10 targets 0xdab8ae0, is taken when t5(?) >= 0x2 (signed), and falls through when t5(?) < 0x2 (signed); its branch-likely delay slot `addiu a2,a2,1` at 0xdab8b14 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdab8b30 targets 0xdab8b4c, is taken when v1(=0x1) != t7(?), and falls through when v1(=0x1) == t7(?).
  The `beq` branch at 0xdab8b44 targets 0xdab8b54, is taken when v1(=0x1) == t8(?), and falls through when v1(=0x1) != t8(?).
  The `bltz` branch at 0xdab8b60 targets 0xdab8c20, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The `bne` branch at 0xdab8b80 targets 0xdab8ba4, is taken when a3(=[a1+1456]) != t5(?), and falls through when a3(=[a1+1456]) == t5(?).
  The `bne` branch at 0xdab8b90 targets 0xdab8ba4, is taken when a2(?) != t3(?), and falls through when a2(?) == t3(?).
  The `beq` branch at 0xdab8b9c targets 0xdab8bac, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0xdab8bac targets 0xdab8be4, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xdab8bb4 targets 0xdab8bcc, is taken when t0(?) != a2(?), and falls through when t0(?) == a2(?).
  The `bne` branch at 0xdab8bbc targets 0xdab8bcc, is taken when t1(?) != t3(?), and falls through when t1(?) == t3(?).
  The `beq` branch at 0xdab8bc4 targets 0xdab8c10 and is always taken.
  The `bne` branch at 0xdab8bcc targets 0xdab8bdc, is taken when t7(?) != a2(?), and falls through when t7(?) == a2(?).
  The `beql` branch at 0xdab8bd4 targets 0xdab8c14, is taken when t8(?) == t3(?), and falls through when t8(?) != t3(?); its branch-likely delay slot `addiu t2,t2,-1` at 0xdab8bd8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdab8bf4 targets 0xdab8c08, is taken when a2(?) != t5(?), and falls through when a2(?) == t5(?).
  The `beql` branch at 0xdab8c00 targets 0xdab8c14, is taken when t3(?) == t6(?), and falls through when t3(?) != t6(?); its branch-likely delay slot `addiu t2,t2,-1` at 0xdab8c04 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0xdab8c18 targets 0xdab8b78, is taken when t2(?) >= 0 (signed), and falls through when t2(?) < 0 (signed).
  The return at 0xdab8b4c has v0 = one of [a0+3724], 0x0.
  The return at 0xdab8ba4 has v0 = ?.
  The return at 0xdab8bdc has v0 = ?.
  The return at 0xdab8c08 has v0 = ?.
  The return at 0xdab8d1c has v0 = one of 0x0, ?.
  The instructions from 0xdab8d24 to 0xdab97e4 are not reached by any path from the entry, and their branches are not listed.

- `IsLegalRange` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdab97e8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdab97e8-0xdab9868 (128 bytes).
  It occupies 128 bytes.
  The `jalr` at 0xdab9844 calls __glSetError [0xdb1ac34] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bltz` branch at 0xdab97fc targets 0xdab9810, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `bne` branch at 0xdab9808 targets 0xdab9818, is taken when a1 < 0x2 (signed), and falls through when a1 >= 0x2 (signed).
  The `beq` branch at 0xdab9810 targets 0xdab9858 and is always taken.
  The `bltz` branch at 0xdab981c targets 0xdab983c, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `bne` branch at 0xdab9828 targets 0xdab983c, is taken when (v0(?) & a0(?)) != 0, and falls through when (v0(?) & a0(?)) == 0.
  The `bne` branch at 0xdab9834 targets 0xdab9858, is taken when v0(?) < at(=0x8000) (signed), and falls through when v0(?) >= at(=0x8000) (signed).
  The `beq` branch at 0xdab9850 targets 0xdab9858 and is always taken.
  The return at 0xdab9860 has v0 = one of 0x0, 0x1.

- `Clampf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdabf438 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdabf438-0xdac07a4 (4972 bytes).
  It occupies 4972 bytes.
  The `bc1fl` branch at 0xdabf444 targets 0xdabf458, is taken when not (f12 < f14 (c.lt.s at 0xdabf438)), and falls through when f12 < f14 (c.lt.s at 0xdabf438); its branch-likely delay slot `c.lt.s $f4,$f12` at 0xdabf448 runs only when taken and is annulled on fall-through.
  The `bc1fl` branch at 0xdabf45c targets 0xdabf470, is taken when (condition not analyzed), and falls through when (condition not analyzed); its branch-likely delay slot `mov.s $f0,$f12` at 0xdabf460 runs only when taken and is annulled on fall-through.
  The return at 0xdabf44c has v0 = ?.
  The return at 0xdabf464 has v0 = ?.
  The return at 0xdabf470 has v0 = ?.
  The instructions from 0xdabf454 to 0xdabf454 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdabf46c to 0xdabf46c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdabf478 to 0xdac07a0 are not reached by any path from the entry, and their branches are not listed.

- `vvec` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad5360 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad5360-0xdad6650 (4848 bytes).
  It occupies 4848 bytes.
  The `lw` at 0xdad5360 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0xdad5364 loads 4 bytes from a2 (arg2 at entry) +0xc.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xdad537c, `lwc1` at 0xdad5384, `lwc1` at 0xdad540c.
  The `lwc1` at 0xdad5380 loads 4 bytes from a1 (arg1 at entry) +0xc.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xdad5388, `lwc1` at 0xdad53f4, `lwc1` at 0xdad543c.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xdad538c, `lwc1` at 0xdad53fc, `lwc1` at 0xdad5440.
  5 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `swc1` at 0xdad539c, `swc1` at 0xdad53d8, `swc1` at 0xdad53f0.
  The `lwc1` at 0xdad53a0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  5 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `swc1` at 0xdad53a4, `swc1` at 0xdad53dc, `swc1` at 0xdad53f8.
  The `lwc1` at 0xdad53a8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  5 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `swc1` at 0xdad53ac, `swc1` at 0xdad53e8, `swc1` at 0xdad5404.
  The `lwc1` at 0xdad53b0 loads 4 bytes from a2 (arg2 at entry) +0xc.
  3 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lwc1` at 0xdad53b4, `lwc1` at 0xdad5410, `lwc1` at 0xdad5444.
  3 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lwc1` at 0xdad53b8, `lwc1` at 0xdad5414, `lwc1` at 0xdad5448.
  3 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lwc1` at 0xdad53bc, `lwc1` at 0xdad5418, `lwc1` at 0xdad544c.
  The `lwc1` at 0xdad53d0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `beq` branch at 0xdad536c targets 0xdad5408, is taken when t6(=([a1+12] << 0x1)) == 0, and falls through when t6(=([a1+12] << 0x1)) != 0.
  The `beql` branch at 0xdad5378 targets 0xdad53f0, is taken when t7(=([a2+12] << 0x1)) == 0, and falls through when t7(=([a2+12] << 0x1)) != 0; its branch-likely delay slot `lwc1 $f4,0(a2)` at 0xdad537c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0xdad5408 targets 0xdad543c, is taken when t8(=([a2+12] << 0x1)) == 0, and falls through when t8(=([a2+12] << 0x1)) != 0; its branch-likely delay slot `lwc1 $f2,0(a2)` at 0xdad540c runs only when taken and is annulled on fall-through.
  The return at 0xdad53e4 has v0 = [a1+12].
  The return at 0xdad5400 has v0 = [a1+12].
  The return at 0xdad5430 has v0 = [a1+12].
  The return at 0xdad5468 has v0 = [a1+12].
  The instructions from 0xdad53ec to 0xdad53ec are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdad5438 to 0xdad5438 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdad5470 to 0xdad664c are not reached by any path from the entry, and their branches are not listed.

- `Dot` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdad6650 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdad6650-0xdad6680 (48 bytes).
  It occupies 48 bytes.
  The `lwc1` at 0xdad6650 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0xdad6654 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xdad6658 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xdad665c loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xdad6664 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lwc1` at 0xdad666c loads 4 bytes from a1 (arg1 at entry) +0x8.
  The return at 0xdad6678 has v0 = ?.

- `Clear` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb0933c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb0933c-0xdb0c0fc (11712 bytes).
  It occupies 11712 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xdb0935c, `lw` at 0xdb093ac.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0xdb09360, `lw` at 0xdb093b0.
  The `lw` at 0xdb0936c loads 4 bytes from [a0] +0x735c.
  The `lw` at 0xdb09370 loads 4 bytes from [a0] +0x7360.
  The `lw` at 0xdb09378 loads 4 bytes from [a0] +0x7368.
  The `lw` at 0xdb09388 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `lwc1` at 0xdb093bc loads 4 bytes from [a0] +0x7778.
  The `lwc1` at 0xdb093c0 loads 4 bytes from [a0] +0x670.
  The `lwc1` at 0xdb093c4 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0xdb093c8 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lwc1` at 0xdb093d0 loads 4 bytes from [a0] +0x777c.
  The `lwc1` at 0xdb093d4 loads 4 bytes from [a0] +0x674.
  The `lwc1` at 0xdb093e0 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `lwc1` at 0xdb093e8 loads 4 bytes from [a0] +0x7780.
  The `lwc1` at 0xdb093ec loads 4 bytes from [a0] +0x678.
  The `lwc1` at 0xdb093f8 loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lwc1` at 0xdb09404 loads 4 bytes from [a0] +0x77a0.
  The `lwc1` at 0xdb09408 loads 4 bytes from [a0] +0x67c.
  The `lwc1` at 0xdb0941c loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `lw` at 0xdb09424 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb09460 loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb09470 loads 4 bytes from [a0] +0x7364.
  20 such `sh` accesses store 2 bytes to ?, including `sh` at 0xdb094b4, `sh` at 0xdb094b8, `sh` at 0xdb094bc.
  The `jalr` at 0xdb09394 calls (unknown callee) with a0=[a0], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xdb09374 targets 0xdb093b4, is taken when t5(=[a0+16]) != 0, and falls through when t5(=[a0+16]) == 0.
  The `beq` branch at 0xdb09494 targets 0xdb09530, is taken when t0(=[[a0]+29536]) >= t4(=[[a0]+29544]) (signed), and falls through when t0(=[[a0]+29536]) < t4(=[[a0]+29544]) (signed).
  The `bltz` branch at 0xdb094a8 targets 0xdb094fc, is taken when t1(?) < 0 (signed), and falls through when t1(?) >= 0 (signed).
  The `bgez` branch at 0xdb094f4 targets 0xdb094b0, is taken when v1(?) >= 0 (signed), and falls through when v1(?) < 0 (signed).
  The `bltz` branch at 0xdb094fc targets 0xdb09520, is taken when t2(?) < 0 (signed), and falls through when t2(?) >= 0 (signed).
  The `bgez` branch at 0xdb09518 targets 0xdb09504, is taken when v1(?) >= 0 (signed), and falls through when v1(?) < 0 (signed).
  The `bne` branch at 0xdb09528 targets 0xdb094a8, is taken when t0(?) < t4(=[[a0]+29544]) (signed), and falls through when t0(?) >= t4(=[[a0]+29544]) (signed).
  The return at 0xdb0953c has v0 = ?.
  The instructions from 0xdb09544 to 0xdb0c0f8 are not reached by any path from the entry, and their branches are not listed.

- `Resize` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb1e048 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb1e048-0xdb23108 (20672 bytes).
  It occupies 20672 bytes.
  The `sb` at 0xdb1e078 stores 1 byte to a0 (arg0 at entry) +0x60.
  The `jalr` at 0xdb1e064 calls __glResizeBuffer [0xdb144b4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdb1e084 has v0 = ret(__glResizeBuffer).
  The instructions from 0xdb1e08c to 0xdb23104 are not reached by any path from the entry, and their branches are not listed.

- `Coverage` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb41c40 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb41c40-0xdb42bd0 (3984 bytes).
  It occupies 3984 bytes.
  The `bc1fl` branch at 0xdb41cb4 targets 0xdb41cc4, is taken when not (f20 <= f12 (c.le.s at 0xdb41cac)), and falls through when f20 <= f12 (c.le.s at 0xdb41cac); its branch-likely delay slot `mov.s $f14,$f18` at 0xdb41cb8 runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xdb41cd4 targets 0xdb41ce0, is taken when not (f4 <= f12 (c.le.s at 0xdb41cc8)), and falls through when f4 <= f12 (c.le.s at 0xdb41cc8).
  The `bc1fl` branch at 0xdb41ce8 targets 0xdb41cf8, is taken when not (f6 <= f12 (c.le.s at 0xdb41ce0)), and falls through when f6 <= f12 (c.le.s at 0xdb41ce0); its branch-likely delay slot `c.le.s $f8,$f12` at 0xdb41cec runs only when taken and is annulled on fall-through.
  The `bc1f` branch at 0xdb41cfc targets 0xdb41d08, is taken when not (f8 <= f12 (c.le.s at 0xdb41cf4)), and falls through when f8 <= f12 (c.le.s at 0xdb41cf4).
  The `bgez` branch at 0xdb41d08 targets 0xdb41c9c, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The return at 0xdb41d24 has v0 = ?.
  The instructions from 0xdb41d2c to 0xdb42bcc are not reached by any path from the entry, and their branches are not listed.

- `SetInitialParameters` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb45240 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb45240-0xdb46a70 (6192 bytes).
  It occupies 6192 bytes.
  The `lw` at 0xdb45268 loads 4 bytes from a0 (arg0 at entry) +0x7510.
  The `lw` at 0xdb4526c loads 4 bytes from a0 (arg0 at entry) +0x7514.
  The `lw` at 0xdb45270 loads 4 bytes from a0 (arg0 at entry) +0x763c.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75a4, including `lwc1` at 0xdb452c0, `lwc1` at 0xdb454dc, `lwc1` at 0xdb4569c.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75b4, including `lwc1` at 0xdb452c8, `lwc1` at 0xdb454e4, `lwc1` at 0xdb456a4.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xdb452d0, `lwc1` at 0xdb454ec, `lwc1` at 0xdb456ac.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75a8, including `lwc1` at 0xdb452d4, `lwc1` at 0xdb456b0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75b8, including `lwc1` at 0xdb452dc, `lwc1` at 0xdb456b8.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7558, including `swc1` at 0xdb452f0, `swc1` at 0xdb45504, `swc1` at 0xdb456cc.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75ac, including `lwc1` at 0xdb452f8, `lwc1` at 0xdb456d4.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7584, including `swc1` at 0xdb45300, `swc1` at 0xdb4550c, `swc1` at 0xdb456dc.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75b0, including `lwc1` at 0xdb45304, `lwc1` at 0xdb456e0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75c0, including `lwc1` at 0xdb45308, `lwc1` at 0xdb456e4.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7594, including `swc1` at 0xdb4530c, `swc1` at 0xdb45510, `swc1` at 0xdb456e8.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xdb45310, `lwc1` at 0xdb456ec.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x755c, including `swc1` at 0xdb45328, `swc1` at 0xdb45704.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75bc, including `lwc1` at 0xdb4532c, `lwc1` at 0xdb45708.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7588, including `swc1` at 0xdb45330, `swc1` at 0xdb4570c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7588, including `lwc1` at 0xdb45334, `lwc1` at 0xdb45710.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7598, including `swc1` at 0xdb45340, `swc1` at 0xdb4571c.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xdb45344, `lwc1` at 0xdb45720.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7560, including `swc1` at 0xdb4535c, `swc1` at 0xdb45738.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x758c, including `swc1` at 0xdb45368, `swc1` at 0xdb45744.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x759c, including `swc1` at 0xdb4536c, `swc1` at 0xdb45748.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lwc1` at 0xdb45370, `lwc1` at 0xdb4574c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7564, including `swc1` at 0xdb45388, `swc1` at 0xdb45764.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7590, including `swc1` at 0xdb45390, `swc1` at 0xdb4576c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75a0, including `swc1` at 0xdb45394, `swc1` at 0xdb45770.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x8c, including `lwc1` at 0xdb453a4, `lwc1` at 0xdb45780.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x30, including `lwc1` at 0xdb453a8, `lwc1` at 0xdb45784.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7604, including `lwc1` at 0xdb453b0, `lwc1` at 0xdb4578c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7618, including `lwc1` at 0xdb453b8, `lwc1` at 0xdb45794.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7608, including `lwc1` at 0xdb453bc, `lwc1` at 0xdb45798.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x761c, including `lwc1` at 0xdb453c4, `lwc1` at 0xdb457a0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7568, including `swc1` at 0xdb453dc, `swc1` at 0xdb457b8.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75dc, including `swc1` at 0xdb453e4, `swc1` at 0xdb457c0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75f0, including `swc1` at 0xdb453e8, `swc1` at 0xdb457c4.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x34, including `lwc1` at 0xdb453ec, `lwc1` at 0xdb457c8.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x756c, including `swc1` at 0xdb4540c, `swc1` at 0xdb457e8.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x760c, including `lwc1` at 0xdb45414, `lwc1` at 0xdb457f0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75e0, including `swc1` at 0xdb4541c, `swc1` at 0xdb457f8.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7620, including `lwc1` at 0xdb45420, `lwc1` at 0xdb457fc.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7624, including `lwc1` at 0xdb45424, `lwc1` at 0xdb45800.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75f4, including `swc1` at 0xdb45428, `swc1` at 0xdb45804.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x38, including `lwc1` at 0xdb45430, `lwc1` at 0xdb4580c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7614, including `lwc1` at 0xdb45434, `lwc1` at 0xdb45810.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7628, including `lwc1` at 0xdb45438, `lwc1` at 0xdb45814.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7570, including `swc1` at 0xdb45458, `swc1` at 0xdb45834.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75e4, including `swc1` at 0xdb45460, `swc1` at 0xdb4583c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7610, including `lwc1` at 0xdb45464, `lwc1` at 0xdb45840.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75f8, including `swc1` at 0xdb45468, `swc1` at 0xdb45844.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x3c, including `lwc1` at 0xdb45470, `lwc1` at 0xdb4584c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7574, including `swc1` at 0xdb45490, `swc1` at 0xdb4586c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75e8, including `swc1` at 0xdb4549c, `swc1` at 0xdb45878.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75fc, including `swc1` at 0xdb454a0, `swc1` at 0xdb4587c.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0xb4, including `lwc1` at 0xdb454a4, `lwc1` at 0xdb45880.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7578, including `swc1` at 0xdb454bc, `swc1` at 0xdb45898.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75ec, including `swc1` at 0xdb454c4, `swc1` at 0xdb458a0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7600, including `swc1` at 0xdb454cc, `swc1` at 0xdb458a8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x700, including `lw` at 0xdb45520, `lw` at 0xdb458fc.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75d8, including `lwc1` at 0xdb45530, `lwc1` at 0xdb45564, `lwc1` at 0xdb4590c.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x7554, including `sw` at 0xdb45560, `sw` at 0xdb45610, `sw` at 0xdb4593c.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75d4, including `lwc1` at 0xdb4556c, `lwc1` at 0xdb45574, `lwc1` at 0xdb45948.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x88, including `lwc1` at 0xdb45578, `lwc1` at 0xdb45954.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x75c4, including `sw` at 0xdb45634, `sw` at 0xdb45a10.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x75c8, including `sw` at 0xdb45638, `sw` at 0xdb45a14.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7638, including `lwc1` at 0xdb45648, `lwc1` at 0xdb45a24.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7634, including `lwc1` at 0xdb4564c, `lwc1` at 0xdb45a28.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x757c, including `swc1` at 0xdb4566c, `swc1` at 0xdb45a48.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x762c, including `swc1` at 0xdb45674, `swc1` at 0xdb45a50.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7630, including `swc1` at 0xdb4567c, `swc1` at 0xdb45a54.
  The `jalr` at 0xdb45548 calls __glPolygonOffsetZ [0xdb47e2c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xdb45924 calls __glPolygonOffsetZ [0xdb47e2c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `bc1f` branch at 0xdb45298 targets 0xdb45680, is taken when not (f20 < f0 (c.lt.s at 0xdb45290)), and falls through when f20 < f0 (c.lt.s at 0xdb45290).
  The `beq` branch at 0xdb452a4 targets 0xdb454d0, is taken when (t0(=[a0+30268]) & 0x1) == 0, and falls through when (t0(=[a0+30268]) & 0x1) != 0.
  The `beq` branch at 0xdb452b0 targets 0xdb45398, is taken when (t0(=[a0+30268]) & 0x2) == 0, and falls through when (t0(=[a0+30268]) & 0x2) != 0.
  The `beq` branch at 0xdb4539c targets 0xdb45514, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0xdb454c8 targets 0xdb45514 and is always taken.
  The `beq` branch at 0xdb454d0 targets 0xdb45514, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0xdb45518 targets 0xdb4563c, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bgezl` branch at 0xdb4552c targets 0xdb45574, is taken when t5(=([a0+1792] << 0x7)) >= 0 (signed), and falls through when t5(=([a0+1792] << 0x7)) < 0 (signed); its branch-likely delay slot `lwc1 $f0,200(v1)` at 0xdb45530 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdb45568 targets 0xdb45618 and is always taken.
  The `beql` branch at 0xdb455b0 targets 0xdb45600, is taken when (t7(?) & 0x78) == 0, and falls through when (t7(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t7,$f6` at 0xdb455b4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdb455dc targets 0xdb455f4, is taken when (t7(?) & 0x78) != 0, and falls through when (t7(?) & 0x78) == 0.
  The `beq` branch at 0xdb455ec targets 0xdb4560c and is always taken.
  The `beq` branch at 0xdb455f4 targets 0xdb4560c and is always taken.
  The `bltz` branch at 0xdb45604 targets 0xdb455f4, is taken when t7(?) < 0 (signed), and falls through when t7(?) >= 0 (signed).
  The `beq` branch at 0xdb45640 targets 0xdb45a58, is taken when (t0(=[a0+30268]) & 0x1000) == 0, and falls through when (t0(=[a0+30268]) & 0x1000) != 0.
  The `beq` branch at 0xdb45678 targets 0xdb45a58 and is always taken.
  The `beq` branch at 0xdb45680 targets 0xdb458ac, is taken when t4(?) == 0, and falls through when t4(?) != 0.
  The `beq` branch at 0xdb4568c targets 0xdb45774, is taken when (t0(=[a0+30268]) & 0x2) == 0, and falls through when (t0(=[a0+30268]) & 0x2) != 0.
  The `beq` branch at 0xdb45778 targets 0xdb458f0, is taken when t6(?) == 0, and falls through when t6(?) != 0.
  The `beq` branch at 0xdb458a4 targets 0xdb458f0 and is always taken.
  The `beq` branch at 0xdb458ac targets 0xdb458f0, is taken when t7(?) == 0, and falls through when t7(?) != 0.
  The `beq` branch at 0xdb458f4 targets 0xdb45a18, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bgezl` branch at 0xdb45908 targets 0xdb45950, is taken when t1(=([a0+1792] << 0x7)) >= 0 (signed), and falls through when t1(=([a0+1792] << 0x7)) < 0 (signed); its branch-likely delay slot `lwc1 $f0,200(v1)` at 0xdb4590c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xdb45944 targets 0xdb459f4 and is always taken.
  The `beql` branch at 0xdb4598c targets 0xdb459dc, is taken when (t3(?) & 0x78) == 0, and falls through when (t3(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t3,$f4` at 0xdb45990 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdb459b8 targets 0xdb459d0, is taken when (t3(?) & 0x78) != 0, and falls through when (t3(?) & 0x78) == 0.
  The `beq` branch at 0xdb459c8 targets 0xdb459e8 and is always taken.
  The `beq` branch at 0xdb459d0 targets 0xdb459e8 and is always taken.
  The `bltz` branch at 0xdb459e0 targets 0xdb459d0, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The `beq` branch at 0xdb45a1c targets 0xdb45a58, is taken when (t0(=[a0+30268]) & 0x1000) == 0, and falls through when (t0(=[a0+30268]) & 0x1000) != 0.
  The return at 0xdb45a68 has v0 = ?.
  The instructions from 0xdb45570 to 0xdb45570 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdb455fc to 0xdb455fc are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdb4594c to 0xdb4594c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdb459d8 to 0xdb459d8 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdb45a70 to 0xdb46a6c are not reached by any path from the entry, and their branches are not listed.

- `Store_8` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb86ae0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb86ae0-0xdb86dd4 (756 bytes).
  It occupies 756 bytes.
  The `lw` at 0xdb86b04 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb86b08 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xdb86b0c loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb86b10 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb86b14 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb86b18 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xdb86b24 loads 4 bytes from [a0] +0x700.
  The `lw` at 0xdb86b28 loads 4 bytes from [a0] +0xe44.
  The `lb` at 0xdb86b60 loads 1 byte from table(0xdbd3cd0) +0x0.
  The `lwc1` at 0xdb86b88 loads 4 bytes from [a0] +0xdcc.
  The `lw` at 0xdb86b98 loads 4 bytes from [a0] +0x704.
  The `lw` at 0xdb86bb8 loads 4 bytes from [a0] +0x3054.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xdb86be0, `lwc1` at 0xdb86c6c, `lwc1` at 0xdb86d00.
  The `lw` at 0xdb86c74 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `lw` at 0xdb86d08 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0xdb86d94 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lbu` at 0xdb86d98 loads 1 byte from ?.
  The `lw` at 0xdb86d9c loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0xdb86da0 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `sb` at 0xdb86dbc stores 1 byte to ?.
  The `jalr` at 0xdb86bc4 calls (unknown callee) with a0=[a0], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-24.
  The `beq` branch at 0xdb86b48 targets 0xdb86b88, is taken when (v1(=[[a0]+1792]) & 0x8) == 0, and falls through when (v1(=[[a0]+1792]) & 0x8) != 0.
  The `beq` branch at 0xdb86b80 targets 0xdb86b8c and is always taken.
  The `bne` branch at 0xdb86b90 targets 0xdb86bac, is taken when (v1(=[[a0]+1792]) & 0x2) != 0, and falls through when (v1(=[[a0]+1792]) & 0x2) == 0.
  The `beq` branch at 0xdb86ba4 targets 0xdb86be0, is taken when (t8(=[[a0]+1796]) & 0x800) == 0, and falls through when (t8(=[[a0]+1796]) & 0x800) != 0.
  The `beq` branch at 0xdb86bd8 targets 0xdb86be0 and is always taken.
  The `beql` branch at 0xdb86c0c targets 0xdb86c5c, is taken when (t1(?) & 0x78) == 0, and falls through when (t1(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t1,$f18` at 0xdb86c10 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdb86c38 targets 0xdb86c50, is taken when (t1(?) & 0x78) != 0, and falls through when (t1(?) & 0x78) == 0.
  The `beq` branch at 0xdb86c48 targets 0xdb86c68 and is always taken.
  The `beq` branch at 0xdb86c50 targets 0xdb86c68 and is always taken.
  The `bltz` branch at 0xdb86c60 targets 0xdb86c50, is taken when t1(?) < 0 (signed), and falls through when t1(?) >= 0 (signed).
  The `beql` branch at 0xdb86ca0 targets 0xdb86cf0, is taken when (t6(?) & 0x78) == 0, and falls through when (t6(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t6,$f8` at 0xdb86ca4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdb86ccc targets 0xdb86ce4, is taken when (t6(?) & 0x78) != 0, and falls through when (t6(?) & 0x78) == 0.
  The `beq` branch at 0xdb86cdc targets 0xdb86cfc and is always taken.
  The `beq` branch at 0xdb86ce4 targets 0xdb86cfc and is always taken.
  The `bltz` branch at 0xdb86cf4 targets 0xdb86ce4, is taken when t6(?) < 0 (signed), and falls through when t6(?) >= 0 (signed).
  The `beql` branch at 0xdb86d38 targets 0xdb86d88, is taken when (t1(?) & 0x78) == 0, and falls through when (t1(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t1,$f18` at 0xdb86d3c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdb86d64 targets 0xdb86d7c, is taken when (t1(?) & 0x78) != 0, and falls through when (t1(?) & 0x78) == 0.
  The `beq` branch at 0xdb86d74 targets 0xdb86d94 and is always taken.
  The `beq` branch at 0xdb86d7c targets 0xdb86d94 and is always taken.
  The `bltz` branch at 0xdb86d8c targets 0xdb86d7c, is taken when t1(?) < 0 (signed), and falls through when t1(?) >= 0 (signed).
  The return at 0xdb86dcc has v0 = ?.
  The instructions from 0xdb86c58 to 0xdb86c58 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdb86cec to 0xdb86cec are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdb86d84 to 0xdb86d84 are not reached by any path from the entry, and their branches are not listed.

- `Store_16` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb86dd4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb86dd4-0xdb870d4 (768 bytes).
  It occupies 768 bytes.
  The `lw` at 0xdb86df8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb86dfc loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xdb86e00 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb86e04 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb86e08 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb86e0c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xdb86e18 loads 4 bytes from [a0] +0x700.
  The `lw` at 0xdb86e1c loads 4 bytes from [a0] +0xe44.
  The `lb` at 0xdb86e60 loads 1 byte from table(0xdbd3cd0) +0x0.
  The `lwc1` at 0xdb86e88 loads 4 bytes from [a0] +0xdcc.
  The `lw` at 0xdb86e98 loads 4 bytes from [a0] +0x704.
  The `lw` at 0xdb86eb8 loads 4 bytes from [a0] +0x3054.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xdb86ee0, `lwc1` at 0xdb86f6c, `lwc1` at 0xdb87000.
  The `lw` at 0xdb86f74 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `lw` at 0xdb87008 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0xdb87094 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lhu` at 0xdb87098 loads 2 bytes from ?.
  The `lw` at 0xdb8709c loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0xdb870a0 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `sh` at 0xdb870bc stores 2 bytes to ?.
  The `jalr` at 0xdb86ec4 calls (unknown callee) with a0=[a0], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-24.
  The `beq` branch at 0xdb86e40 targets 0xdb86e88, is taken when (v1(=[[a0]+1792]) & 0x8) == 0, and falls through when (v1(=[[a0]+1792]) & 0x8) != 0.
  The `beq` branch at 0xdb86e80 targets 0xdb86e8c and is always taken.
  The `bne` branch at 0xdb86e90 targets 0xdb86eac, is taken when (v1(=[[a0]+1792]) & 0x2) != 0, and falls through when (v1(=[[a0]+1792]) & 0x2) == 0.
  The `beq` branch at 0xdb86ea4 targets 0xdb86ee0, is taken when (t3(=[[a0]+1796]) & 0x800) == 0, and falls through when (t3(=[[a0]+1796]) & 0x800) != 0.
  The `beq` branch at 0xdb86ed8 targets 0xdb86ee0 and is always taken.
  The `beql` branch at 0xdb86f0c targets 0xdb86f5c, is taken when (t4(?) & 0x78) == 0, and falls through when (t4(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t4,$f18` at 0xdb86f10 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdb86f38 targets 0xdb86f50, is taken when (t4(?) & 0x78) != 0, and falls through when (t4(?) & 0x78) == 0.
  The `beq` branch at 0xdb86f48 targets 0xdb86f68 and is always taken.
  The `beq` branch at 0xdb86f50 targets 0xdb86f68 and is always taken.
  The `bltz` branch at 0xdb86f60 targets 0xdb86f50, is taken when t4(?) < 0 (signed), and falls through when t4(?) >= 0 (signed).
  The `beql` branch at 0xdb86fa0 targets 0xdb86ff0, is taken when (t8(?) & 0x78) == 0, and falls through when (t8(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t8,$f8` at 0xdb86fa4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdb86fcc targets 0xdb86fe4, is taken when (t8(?) & 0x78) != 0, and falls through when (t8(?) & 0x78) == 0.
  The `beq` branch at 0xdb86fdc targets 0xdb86ffc and is always taken.
  The `beq` branch at 0xdb86fe4 targets 0xdb86ffc and is always taken.
  The `bltz` branch at 0xdb86ff4 targets 0xdb86fe4, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beql` branch at 0xdb87038 targets 0xdb87088, is taken when (t4(?) & 0x78) == 0, and falls through when (t4(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t4,$f18` at 0xdb8703c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdb87064 targets 0xdb8707c, is taken when (t4(?) & 0x78) != 0, and falls through when (t4(?) & 0x78) == 0.
  The `beq` branch at 0xdb87074 targets 0xdb87094 and is always taken.
  The `beq` branch at 0xdb8707c targets 0xdb87094 and is always taken.
  The `bltz` branch at 0xdb8708c targets 0xdb8707c, is taken when t4(?) < 0 (signed), and falls through when t4(?) >= 0 (signed).
  The return at 0xdb870cc has v0 = ?.
  The instructions from 0xdb86f58 to 0xdb86f58 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdb86fec to 0xdb86fec are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdb87084 to 0xdb87084 are not reached by any path from the entry, and their branches are not listed.

- `Store_32` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb87420 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb87420-0xdb876d4 (692 bytes).
  It occupies 692 bytes.
  The `lw` at 0xdb87440 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb87444 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xdb87448 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb8744c loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb87450 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xdb87454 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb87460 loads 4 bytes from [a0] +0x700.
  The `lw` at 0xdb87464 loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb8749c loads 4 bytes from [a0] +0x704.
  The `lw` at 0xdb874b8 loads 4 bytes from [a0] +0x3054.
  The `lwc1` at 0xdb874dc loads 4 bytes from [a0] +0xdcc.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xdb874e0, `lwc1` at 0xdb8756c, `lwc1` at 0xdb87600.
  The `lw` at 0xdb87574 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `lw` at 0xdb87608 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0xdb87694 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0xdb87698 loads 4 bytes from ?.
  The `lw` at 0xdb8769c loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0xdb876a0 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `sw` at 0xdb876bc stores 4 bytes to ?.
  The `jalr` at 0xdb874c4 calls (unknown callee) with a0=[a0], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-24.
  The `bne` branch at 0xdb87494 targets 0xdb874b0, is taken when (v1(=[[a0]+1792]) & 0x2) != 0, and falls through when (v1(=[[a0]+1792]) & 0x2) == 0.
  The `beq` branch at 0xdb874a8 targets 0xdb874dc, is taken when (t3(=[[a0]+1796]) & 0x800) == 0, and falls through when (t3(=[[a0]+1796]) & 0x800) != 0.
  The `beq` branch at 0xdb874d4 targets 0xdb874dc and is always taken.
  The `beql` branch at 0xdb8750c targets 0xdb8755c, is taken when (t4(?) & 0x78) == 0, and falls through when (t4(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t4,$f8` at 0xdb87510 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdb87538 targets 0xdb87550, is taken when (t4(?) & 0x78) != 0, and falls through when (t4(?) & 0x78) == 0.
  The `beq` branch at 0xdb87548 targets 0xdb87568 and is always taken.
  The `beq` branch at 0xdb87550 targets 0xdb87568 and is always taken.
  The `bltz` branch at 0xdb87560 targets 0xdb87550, is taken when t4(?) < 0 (signed), and falls through when t4(?) >= 0 (signed).
  The `beql` branch at 0xdb875a0 targets 0xdb875f0, is taken when (t1(?) & 0x78) == 0, and falls through when (t1(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t1,$f18` at 0xdb875a4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdb875cc targets 0xdb875e4, is taken when (t1(?) & 0x78) != 0, and falls through when (t1(?) & 0x78) == 0.
  The `beq` branch at 0xdb875dc targets 0xdb875fc and is always taken.
  The `beq` branch at 0xdb875e4 targets 0xdb875fc and is always taken.
  The `bltz` branch at 0xdb875f4 targets 0xdb875e4, is taken when t1(?) < 0 (signed), and falls through when t1(?) >= 0 (signed).
  The `beql` branch at 0xdb87638 targets 0xdb87688, is taken when (t4(?) & 0x78) == 0, and falls through when (t4(?) & 0x78) != 0; its branch-likely delay slot `mfc1 t4,$f8` at 0xdb8763c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xdb87664 targets 0xdb8767c, is taken when (t4(?) & 0x78) != 0, and falls through when (t4(?) & 0x78) == 0.
  The `beq` branch at 0xdb87674 targets 0xdb87694 and is always taken.
  The `beq` branch at 0xdb8767c targets 0xdb87694 and is always taken.
  The `bltz` branch at 0xdb8768c targets 0xdb8767c, is taken when t4(?) < 0 (signed), and falls through when t4(?) >= 0 (signed).
  The return at 0xdb876cc has v0 = ?.
  The instructions from 0xdb87558 to 0xdb87558 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdb875ec to 0xdb875ec are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xdb87684 to 0xdb87684 are not reached by any path from the entry, and their branches are not listed.

- `Fetch_8` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb876d4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb876d4-0xdb877ac (216 bytes).
  It occupies 216 bytes.
  The `lw` at 0xdb876e0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb876e4 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb876e8 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb876ec loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb876fc loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb87700 loads 4 bytes from [a0] +0xcc0.
  The `lbu` at 0xdb87714 loads 1 byte from ?.
  The `lw` at 0xdb87718 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `swc1` at 0xdb8773c stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0xdb87740 loads 4 bytes from [a0] +0xcc4.
  The `lw` at 0xdb87744 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `swc1` at 0xdb8776c stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lw` at 0xdb87770 loads 4 bytes from [a0] +0xcc8.
  The `lw` at 0xdb87774 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `swc1` at 0xdb8779c stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0xdb877a0 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `swc1` at 0xdb877a8 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `bgez` branch at 0xdb87728 targets 0xdb8773c, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `bgez` branch at 0xdb87758 targets 0xdb8776c, is taken when t7(?) >= 0 (signed), and falls through when t7(?) < 0 (signed).
  The `bgez` branch at 0xdb87788 targets 0xdb8779c, is taken when t4(?) >= 0 (signed), and falls through when t4(?) < 0 (signed).
  The return at 0xdb877a4 has v0 = [a0].

- `Fetch_16` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb877ac (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb877ac-0xdb87890 (228 bytes).
  It occupies 228 bytes.
  The `lw` at 0xdb877b8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb877bc loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb877c0 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb877c4 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb877d4 loads 4 bytes from [a0] +0xe44.
  The `lhu` at 0xdb877f4 loads 2 bytes from ?.
  The `lw` at 0xdb877f8 loads 4 bytes from [a0] +0xcc0.
  The `lw` at 0xdb877fc loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `swc1` at 0xdb87820 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0xdb87824 loads 4 bytes from [a0] +0xcc4.
  The `lw` at 0xdb87828 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `swc1` at 0xdb87850 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lw` at 0xdb87854 loads 4 bytes from [a0] +0xcc8.
  The `lw` at 0xdb87858 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `swc1` at 0xdb87880 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0xdb87884 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `swc1` at 0xdb8788c stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `bgez` branch at 0xdb8780c targets 0xdb87820, is taken when t6(?) >= 0 (signed), and falls through when t6(?) < 0 (signed).
  The `bgez` branch at 0xdb8783c targets 0xdb87850, is taken when t4(?) >= 0 (signed), and falls through when t4(?) < 0 (signed).
  The `bgez` branch at 0xdb8786c targets 0xdb87880, is taken when t8(?) >= 0 (signed), and falls through when t8(?) < 0 (signed).
  The return at 0xdb87888 has v0 = [a0].

- `Fetch_32` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdb8799c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdb8799c-0xdbb8550 (199604 bytes).
  It occupies 199604 bytes.
  The `lw` at 0xdb879a8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb879ac loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb879b0 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb879b4 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb879c8 loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb879e4 loads 4 bytes from ?.
  The `lw` at 0xdb879e8 loads 4 bytes from [a0] +0xcc0.
  The `lw` at 0xdb879ec loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `swc1` at 0xdb87a10 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0xdb87a14 loads 4 bytes from [a0] +0xcc4.
  The `lw` at 0xdb87a18 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `swc1` at 0xdb87a40 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lw` at 0xdb87a44 loads 4 bytes from [a0] +0xcc8.
  The `lw` at 0xdb87a48 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `swc1` at 0xdb87a70 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0xdb87a74 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `swc1` at 0xdb87a7c stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `bgez` branch at 0xdb879fc targets 0xdb87a10, is taken when t4(?) >= 0 (signed), and falls through when t4(?) < 0 (signed).
  The `bgez` branch at 0xdb87a2c targets 0xdb87a40, is taken when t8(?) >= 0 (signed), and falls through when t8(?) < 0 (signed).
  The `bgez` branch at 0xdb87a5c targets 0xdb87a70, is taken when t4(?) >= 0 (signed), and falls through when t4(?) < 0 (signed).
  The return at 0xdb87a78 has v0 = [a0].
  The instructions from 0xdb87a80 to 0xdbb854c are not reached by any path from the entry, and their branches are not listed.

- `glBlendColorEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba69f0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba69f0-0xdba69fc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba69f0 loads 4 bytes from abs 0x12f0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba69f4).

- `glBlendEquationEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba69fc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba69fc-0xdba6a08 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba69fc loads 4 bytes from abs 0x12f4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a00).

- `glTexSubImage1DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a14 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a14-0xdba6a20 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a14 loads 4 bytes from abs 0x12fc.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a18).

- `glTexSubImage2DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a20 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a20-0xdba6a2c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a20 loads 4 bytes from abs 0x1300.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a24).

- `glConvolutionFilter1DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a2c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a2c-0xdba6a38 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a2c loads 4 bytes from abs 0x1304.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a30).

- `glConvolutionFilter2DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a38 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a38-0xdba6a44 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a38 loads 4 bytes from abs 0x1308.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a3c).

- `glConvolutionParameterfEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a44 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a44-0xdba6a50 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a44 loads 4 bytes from abs 0x130c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a48).

- `glConvolutionParameterfvEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a50 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a50-0xdba6a5c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a50 loads 4 bytes from abs 0x1310.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a54).

- `glConvolutionParameteriEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a5c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a5c-0xdba6a68 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a5c loads 4 bytes from abs 0x1314.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a60).

- `glConvolutionParameterivEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a68 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a68-0xdba6a74 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a68 loads 4 bytes from abs 0x1318.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a6c).

- `glCopyConvolutionFilter1DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a74 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a74-0xdba6a80 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a74 loads 4 bytes from abs 0x131c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a78).

- `glCopyConvolutionFilter2DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a80 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a80-0xdba6a8c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a80 loads 4 bytes from abs 0x1320.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a84).

- `glGetConvolutionFilterEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a8c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a8c-0xdba6a98 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a8c loads 4 bytes from abs 0x1324.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a90).

- `glGetConvolutionParameterfvEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6a98 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6a98-0xdba6aa4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6a98 loads 4 bytes from abs 0x1328.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6a9c).

- `glGetConvolutionParameterivEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6aa4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6aa4-0xdba6ab0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6aa4 loads 4 bytes from abs 0x132c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6aa8).

- `glGetSeparableFilterEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6ab0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6ab0-0xdba6abc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6ab0 loads 4 bytes from abs 0x1330.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6ab4).

- `glSeparableFilter2DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6abc (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6abc-0xdba6ac8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6abc loads 4 bytes from abs 0x1334.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6ac0).

- `glGetHistogramEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6ac8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6ac8-0xdba6ad4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6ac8 loads 4 bytes from abs 0x1338.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6acc).

- `glGetHistogramParameterfvEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6ad4 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6ad4-0xdba6ae0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6ad4 loads 4 bytes from abs 0x133c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6ad8).

- `glGetHistogramParameterivEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6ae0 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6ae0-0xdba6aec (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6ae0 loads 4 bytes from abs 0x1340.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6ae4).

- `glGetMinmaxEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6aec (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6aec-0xdba6af8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6aec loads 4 bytes from abs 0x1344.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6af0).

- `glGetMinmaxParameterfvEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6af8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6af8-0xdba6b04 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6af8 loads 4 bytes from abs 0x1348.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6afc).

- `glGetMinmaxParameterivEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6b04 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6b04-0xdba6b10 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6b04 loads 4 bytes from abs 0x134c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6b08).

- `glHistogramEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6b10 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6b10-0xdba6b1c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6b10 loads 4 bytes from abs 0x1350.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6b14).

- `glMinmaxEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6b1c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6b1c-0xdba6b28 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6b1c loads 4 bytes from abs 0x1354.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6b20).

- `glTexImage3DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6b40 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6b40-0xdba6b4c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6b40 loads 4 bytes from abs 0x1360.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6b44).

- `glTexSubImage3DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6b4c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6b4c-0xdba6b58 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6b4c loads 4 bytes from abs 0x1364.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6b50).

- `glArrayElementEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6b58 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6b58-0xdba6b64 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6b58 loads 4 bytes from abs 0x1368.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6b5c).

- `glDrawArraysEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6b70 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6b70-0xdba6b7c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6b70 loads 4 bytes from abs 0x1370.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6b74).

- `glGetPointervEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6b88 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6b88-0xdba6b94 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6b88 loads 4 bytes from abs 0x1378.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6b8c).

- `glCopyTexImage1DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6c0c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6c0c-0xdba6c18 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6c0c loads 4 bytes from abs 0x13a4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6c10).

- `glCopyTexImage2DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6c18 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6c18-0xdba6c24 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6c18 loads 4 bytes from abs 0x13a8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6c1c).

- `glCopyTexSubImage1DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6c24 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6c24-0xdba6c30 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6c24 loads 4 bytes from abs 0x13ac.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6c28).

- `glCopyTexSubImage2DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6c30 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6c30-0xdba6c3c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6c30 loads 4 bytes from abs 0x13b0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6c34).

- `glCopyTexSubImage3DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6c3c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6c3c-0xdba6c48 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6c3c loads 4 bytes from abs 0x13b4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6c40).

- `glColorTableSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6d38 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6d38-0xdba6d44 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6d38 loads 4 bytes from abs 0x1408.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6d3c).

- `glColorTableParameterfvSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6d44 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6d44-0xdba6d50 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6d44 loads 4 bytes from abs 0x140c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6d48).

- `glColorTableParameterivSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6d50 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6d50-0xdba6d5c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6d50 loads 4 bytes from abs 0x1410.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6d54).

- `glCopyColorTableSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6d5c (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6d5c-0xdba6d68 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6d5c loads 4 bytes from abs 0x1414.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6d60).

- `glGetColorTableSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6d68 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6d68-0xdba6d74 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6d68 loads 4 bytes from abs 0x1418.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6d6c).

- `glGetColorTableParameterfvSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6d74 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6d74-0xdba6d80 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6d74 loads 4 bytes from abs 0x141c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6d78).

- `glGetColorTableParameterivSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6d80 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6d80-0xdba6d8c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6d80 loads 4 bytes from abs 0x1420.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6d84).

- `glPointParameterfSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6df8 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6df8-0xdba6e04 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6df8 loads 4 bytes from abs 0x1448.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6dfc).

- `glPointParameterfvSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdba6e04 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdba6e04-0xdba6e10 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdba6e04 loads 4 bytes from abs 0x144c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdba6e08).

- `glColor3b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbb0000 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbb0000-0xdbb0040 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdbb0000 loads 4 bytes from abs 0x1590.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbb0004).
  The instructions from 0xdbb000c to 0xdbb003c are not reached by any path from the entry, and their branches are not listed.

- `glVertex2d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so` at 0xdbb1500 (o32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY/libGLcore.so`.
  Range: 0xdbb1500-0xdbb1600 (256 bytes).
  It occupies 256 bytes.
  The `lw` at 0xdbb1500 loads 4 bytes from abs 0x1530.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbb1504).
  The instructions from 0xdbb150c to 0xdbb15fc are not reached by any path from the entry, and their branches are not listed.

- `__glOdyim_SoftAccum` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda42750 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda42750-0xda4289c (332 bytes).
  It occupies 332 bytes.
  The `lw` at 0xda42758 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda4275c loads 4 bytes from abs 0x1018.
  The `lw` at 0xda42784 loads 4 bytes from [0x1010] +0x79e8.
  The `lw` at 0xda427ec loads 4 bytes from [0x1010] +0xc7c.
  The `lw` at 0xda4281c loads 4 bytes from [0x1010] +0x7a5c.
  The `jalr` at 0xda427cc calls __glSetError [0xdb11f10] with a0=0x500, a1=0x103, a2=?, a3=?.
  The `jalr` at 0xda42828 calls (unknown callee) with a0=[0x1010], a1=[0x1010]+31192, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda42864 calls (unknown callee) with a0=[0x1010]+31192, a1=0x103, a2=?, a3=?.
  The `jalr` at 0xda4287c calls __glSetError [0xdb11f10] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda4277c targets 0xda42874, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xda42788 targets 0xda4281c, is taken when a1(=[[0x1010]+31208]) == 0, and falls through when a1(=[[0x1010]+31208]) != 0.
  The `beq` branch at 0xda4279c targets 0xda42810, is taken when s5(=a0) == at(=0x100), and falls through when s5(=a0) != at(=0x100).
  The `beq` branch at 0xda427a4 targets 0xda42838, is taken when s5(=a0) == v0(=0x101), and falls through when s5(=a0) != v0(=0x101).
  The `beq` branch at 0xda427ac targets 0xda42844, is taken when s5(=a0) == v1(=0x102), and falls through when s5(=a0) != v1(=0x102).
  The `beq` branch at 0xda427b4 targets 0xda42850, is taken when s5(=a0) == a1(=0x103), and falls through when s5(=a0) != a1(=0x103).
  The `beq` branch at 0xda427bc targets 0xda427ec, is taken when s5(=a0) == at(=0x104), and falls through when s5(=a0) != at(=0x104).
  The `beq` branch at 0xda427f4 targets 0xda4285c, is taken when at(=[[0x1010]+3196]) == v0(=0x1c00), and falls through when at(=[[0x1010]+3196]) != v0(=0x1c00).
  The `beq` branch at 0xda42814 targets 0xda427ec and is always taken.
  The `beq` branch at 0xda42830 targets 0xda4278c and is always taken.
  The `beq` branch at 0xda4283c targets 0xda427ec and is always taken.
  The `beq` branch at 0xda42848 targets 0xda427ec and is always taken.
  The `beq` branch at 0xda42854 targets 0xda427ec and is always taken.
  The `beq` branch at 0xda4286c targets 0xda427fc and is always taken.
  The return at 0xda427e4 has v0 = ret(__glSetError).
  The return at 0xda42808 has v0 = one of 0x1c00, ?.
  The return at 0xda42894 has v0 = ret(__glSetError).

- `__glOdyim_HardAccum24` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda44eb0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda44eb0-0xda45074 (452 bytes).
  It occupies 452 bytes.
  The `lw` at 0xda44eb8 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda44ed4 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda44f38 loads 4 bytes from [0x1010] +0xc7c.
  The `lw` at 0xda44fc0 loads 4 bytes from [0x1010] +0x95c4.
  The `lw` at 0xda44fd0 loads 4 bytes from [0x1010] +0x168d0.
  The `sw` at 0xda44fd8 stores 4 bytes to [0x1010] +0x95c4.
  The `sw` at 0xda44fe4 stores 4 bytes to [0x1010] +0x168d0.
  The `sw` at 0xda44ff0 stores 4 bytes to abs 0x1018.
  The `lw` at 0xda44ff8 loads 4 bytes from [0x1010] +0x11bc0.
  The `lw` at 0xda44ffc loads 4 bytes from [0x1010] +0x11c94.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x11bc0, including `sw` at 0xda45000, `sw` at 0xda45030.
  The `jalr` at 0xda44f18 calls __glSetError [0xdb11f10] with a0=0x500, a1=0x104, a2=[0x1010], a3=a3 at entry (arg3).
  The `bgezall` at 0xda44f9c calls initScratchBufAccum [0xda40330] with a0=?, a1=[[0x1010]+3196], a2=[0x1010], a3=a3 at entry (arg3).
  The `jalr` at 0xda45010 calls (unknown callee) with a0=[0x1010]+65536, a1=0x200000, a2=?, a3=?; fp f12=f13.
  The `jalr` at 0xda45048 calls __glSetError [0xdb11f10] with a0=0x502, a1=0x100, a2=[0x1010], a3=a3 at entry (arg3).
  The `beq` branch at 0xda44edc targets 0xda45040, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xda44ee8 targets 0xda44f60, is taken when s0(=a0) == a1(=0x100), and falls through when s0(=a0) != a1(=0x100).
  The `beq` branch at 0xda44ef0 targets 0xda44f6c, is taken when s0(=a0) == at(=0x101), and falls through when s0(=a0) != at(=0x101).
  The `beq` branch at 0xda44efc targets 0xda44f78, is taken when s0(=a0) == v0(=0x102), and falls through when s0(=a0) != v0(=0x102).
  The `beq` branch at 0xda44f04 targets 0xda44f84, is taken when s0(=a0) == v1(=0x103), and falls through when s0(=a0) != v1(=0x103).
  The `beq` branch at 0xda44f0c targets 0xda44f34, is taken when s0(=a0) == a1(=0x104), and falls through when s0(=a0) != a1(=0x104).
  The `beq` branch at 0xda44f48 targets 0xda44f90, is taken when a1(=[[0x1010]+3196]) == at(=0x1c00), and falls through when a1(=[[0x1010]+3196]) != at(=0x1c00).
  The `beq` branch at 0xda44f64 targets 0xda44f38 and is always taken.
  The `beq` branch at 0xda44f70 targets 0xda44f38 and is always taken.
  The `beq` branch at 0xda44f7c targets 0xda44f38 and is always taken.
  The `beq` branch at 0xda44f88 targets 0xda44f38 and is always taken.
  The `beq` branch at 0xda44fac targets 0xda45064, is taken when v0(=ret(initScratchBufAccum)) == 0, and falls through when v0(=ret(initScratchBufAccum)) != 0.
  The `beq` branch at 0xda44fec targets 0xda45008, is taken when at(=0x102) == s0(=a0), and falls through when at(=0x102) != s0(=a0).
  The `beq` branch at 0xda45024 targets 0xda45034, is taken when v1(=0x102) == s0(=a0), and falls through when v1(=0x102) != s0(=a0).
  The return at 0xda44f2c has v0 = ret(__glSetError).
  The return at 0xda44f58 has v0 = one of 0x1, 0x102.
  The return at 0xda45038 has v0 = ?.
  The return at 0xda4505c has v0 = ret(__glSetError).
  The return at 0xda4506c has v0 = ret(initScratchBufAccum).

- `__glOdyim_HardAccum31` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda46a00 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda46a00-0xda46ba8 (424 bytes).
  It occupies 424 bytes.
  The `lw` at 0xda46a08 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda46a24 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda46a8c loads 4 bytes from [0x1010] +0xc7c.
  The `lw` at 0xda46ab4 loads 4 bytes from [0x1010] +0x7b1c.
  The `sw` at 0xda46abc stores 4 bytes to [0x1010] +0x7b1c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x168d0, including `lw` at 0xda46ac0, `lw` at 0xda46ae4.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x168d0, including `sw` at 0xda46ac8, `sw` at 0xda46af8.
  2 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xda46ad0, `sw` at 0xda46b00.
  The `lw` at 0xda46ad8 loads 4 bytes from [0x1010] +0x95c4.
  The `sw` at 0xda46ae8 stores 4 bytes to [0x1010] +0x95c4.
  The `lw` at 0xda46b0c loads 4 bytes from [0x1010] +0x11bc0.
  The `lw` at 0xda46b10 loads 4 bytes from [0x1010] +0x11c94.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x11bc0, including `sw` at 0xda46b14, `sw` at 0xda46b48.
  The `jalr` at 0xda46a6c calls __glSetError [0xdb11f10] with a0=0x500, a1=0x104, a2=[0x1010], a3=a3 at entry (arg3).
  The `jalr` at 0xda46b28 calls (unknown callee) with a0=[0x1010]+65536, a1=0x102, a2=[0x1010], a3=a3 at entry (arg3); fp f12=f13.
  The `jalr` at 0xda46b8c calls __glSetError [0xdb11f10] with a0=0x502, a1=0x100, a2=[0x1010], a3=a3 at entry (arg3).
  The `beq` branch at 0xda46a28 targets 0xda46b84, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xda46a34 targets 0xda46b58, is taken when s3(=a0) == a1(=0x100), and falls through when s3(=a0) != a1(=0x100).
  The `beq` branch at 0xda46a3c targets 0xda46b64, is taken when s3(=a0) == at(=0x101), and falls through when s3(=a0) != at(=0x101).
  The `beq` branch at 0xda46a4c targets 0xda46a8c, is taken when s3(=a0) == v0(=0x102), and falls through when s3(=a0) != v0(=0x102).
  The `beq` branch at 0xda46a58 targets 0xda46b74, is taken when s3(=a0) == v1(=0x103), and falls through when s3(=a0) != v1(=0x103).
  The `beq` branch at 0xda46a60 targets 0xda46a88, is taken when s3(=a0) == a1(=0x104), and falls through when s3(=a0) != a1(=0x104).
  The `beq` branch at 0xda46a9c targets 0xda46ab4, is taken when v0(=[[0x1010]+3196]) == v1(=0x1c00), and falls through when v0(=[[0x1010]+3196]) != v1(=0x1c00).
  The `beq` branch at 0xda46afc targets 0xda46b1c, is taken when a1(=0x102) == s3(=a0), and falls through when a1(=0x102) != s3(=a0).
  The `beq` branch at 0xda46b3c targets 0xda46b4c, is taken when a1(=0x102) == s3(=a0), and falls through when a1(=0x102) != s3(=a0).
  The `beq` branch at 0xda46b5c targets 0xda46a8c and is always taken.
  The `beq` branch at 0xda46b6c targets 0xda46a8c and is always taken.
  The `beq` branch at 0xda46b7c targets 0xda46a8c and is always taken.
  The return at 0xda46a80 has v0 = ret(__glSetError).
  The return at 0xda46aac has v0 = [[0x1010]+3196].
  The return at 0xda46b50 has v0 = [0x1010]+65536.
  The return at 0xda46ba0 has v0 = ret(__glSetError).

- `glBlendColorEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad190 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad190-0xdbad19c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad190 loads 4 bytes from abs 0x12f0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad194).

- `glBlendEquationEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad19c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad19c-0xdbad1a8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad19c loads 4 bytes from abs 0x12f4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad1a0).

- `glTexSubImage1DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad1b4 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad1b4-0xdbad1c0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad1b4 loads 4 bytes from abs 0x12fc.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad1b8).

- `glTexSubImage2DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad1c0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad1c0-0xdbad1cc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad1c0 loads 4 bytes from abs 0x1300.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad1c4).

- `glConvolutionFilter1DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad1cc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad1cc-0xdbad1d8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad1cc loads 4 bytes from abs 0x1304.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad1d0).

- `glConvolutionFilter2DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad1d8 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad1d8-0xdbad1e4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad1d8 loads 4 bytes from abs 0x1308.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad1dc).

- `glConvolutionParameterfEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad1e4 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad1e4-0xdbad1f0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad1e4 loads 4 bytes from abs 0x130c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad1e8).

- `glConvolutionParameterfvEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad1f0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad1f0-0xdbad1fc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad1f0 loads 4 bytes from abs 0x1310.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad1f4).

- `glConvolutionParameteriEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad1fc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad1fc-0xdbad208 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad1fc loads 4 bytes from abs 0x1314.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad200).

- `glConvolutionParameterivEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad208 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad208-0xdbad214 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad208 loads 4 bytes from abs 0x1318.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad20c).

- `glCopyConvolutionFilter1DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad214 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad214-0xdbad220 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad214 loads 4 bytes from abs 0x131c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad218).

- `glCopyConvolutionFilter2DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad220 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad220-0xdbad22c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad220 loads 4 bytes from abs 0x1320.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad224).

- `glGetConvolutionFilterEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad22c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad22c-0xdbad238 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad22c loads 4 bytes from abs 0x1324.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad230).

- `glGetConvolutionParameterfvEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad238 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad238-0xdbad244 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad238 loads 4 bytes from abs 0x1328.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad23c).

- `glGetConvolutionParameterivEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad244 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad244-0xdbad250 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad244 loads 4 bytes from abs 0x132c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad248).

- `glGetSeparableFilterEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad250 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad250-0xdbad25c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad250 loads 4 bytes from abs 0x1330.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad254).

- `glSeparableFilter2DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad25c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad25c-0xdbad268 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad25c loads 4 bytes from abs 0x1334.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad260).

- `glGetHistogramEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad268 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad268-0xdbad274 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad268 loads 4 bytes from abs 0x1338.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad26c).

- `glGetHistogramParameterfvEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad274 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad274-0xdbad280 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad274 loads 4 bytes from abs 0x133c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad278).

Skipped routines: 161 duplicate header outputs were omitted, and 11 routines could not be rendered because their inventory addresses have no function symbol.
