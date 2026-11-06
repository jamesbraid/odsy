# Instruction readings from hostfacts

Each entry records selected software behavior from its exact binary range. These inferred software observations do not establish hardware behavior.

- `ApplyParameterF` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda4cb00 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda4cb00-0xda4cf24 (1060 bytes).
  It occupies 1060 bytes.
  The `lw` at 0xda4cb2c loads 4 bytes from abs 0x1010.
  11 such `lbu` accesses load 1 byte from [0x1010] +0xc8c, including `lbu` at 0xda4cb40, `lbu` at 0xda4cc18, `lbu` at 0xda4cc30.
  12 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xda4cb84, `sw` at 0xda4cbec, `sw` at 0xda4cd20.
  5 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda4cb88, `lwc1` at 0xda4cc98, `lwc1` at 0xda4ccb4.
  25 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xda4cb8c, `swc1` at 0xda4cb94, `swc1` at 0xda4cb9c.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda4cb90, `lwc1` at 0xda4cd88.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda4cb98, `lwc1` at 0xda4cc80.
  The `lwc1` at 0xda4cba0 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0xda4ccec loads 4 bytes from table(0x9734) +0x0.
  The `swc1` at 0xda4cd14 stores 4 bytes to table(0x9734) +0x0.
  2 such `lwc1` accesses load 4 bytes from [0x1010] +0x9734, including `lwc1` at 0xda4cd38, `lwc1` at 0xda4cd40.
  2 such `lwc1` accesses load 4 bytes from [0x1010] +0x9738, including `lwc1` at 0xda4cd4c, `lwc1` at 0xda4cd54.
  The `lw` at 0xda4cd70 loads 4 bytes from [0x1010] +0xa5c8.
  The `jalr` at 0xda4cd6c calls __glOdysseySetProgram [0xdaad4b0] with a0=[0x1010], a1=[[0x1010]+42440], a2=0xffffffff908091ea, a3=(one of 0x33, 0x39 | 0xffffffffd080c400), a4=0x10000, a5=0xffffffffd080c400, a7=0x39.
  The `bne` branch at 0xda4cb30 targets 0xda4cc04, is taken when a1 < 0x1600 (unsigned), and falls through when a1 >= 0x1600 (unsigned).
  The `beq` branch at 0xda4cb38 targets 0xda4cc34, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xda4cb6c targets 0xda4cbf0, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xda4cb74 targets 0xda4cbbc and is always taken.
  The `beq` branch at 0xda4cbb4 targets 0xda4cbf0, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xda4cbcc targets 0xda4cba8, is taken when (a6(?) & s0(?)) == 0, and falls through when (a6(?) & s0(?)) != 0.
  The `bne` branch at 0xda4cbd4 targets 0xda4cb80, is taken when s1(=a0) != 0, and falls through when s1(=a0) == 0.
  The `beq` branch at 0xda4cbe8 targets 0xda4cb88 and is always taken.
  The `bne` branch at 0xda4cc04 targets 0xda4cc24, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xda4cc10 targets 0xda4cc50, is taken when a1 >= 0x1202 (unsigned), and falls through when a1 < 0x1202 (unsigned).
  The `beq` branch at 0xda4cc1c targets 0xda4cb48 and is always taken.
  The `beq` branch at 0xda4cc24 targets 0xda4cc9c, is taken when a1 == v0(=0x1200), and falls through when a1 != v0(=0x1200).
  The `beq` branch at 0xda4cc2c targets 0xda4cb48 and is always taken.
  The `bne` branch at 0xda4cc34 targets 0xda4cc60, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xda4cc3c targets 0xda4cc70, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xda4cc48 targets 0xda4cb48 and is always taken.
  The `beq` branch at 0xda4cc50 targets 0xda4cca8, is taken when a1 == at(=0x1202), and falls through when a1 != at(=0x1202).
  The `beq` branch at 0xda4cc58 targets 0xda4cb48 and is always taken.
  The `beq` branch at 0xda4cc60 targets 0xda4ccb4, is taken when a1 == v0(=0x1601), and falls through when a1 != v0(=0x1601).
  The `beq` branch at 0xda4cc68 targets 0xda4cb48 and is always taken.
  The `bne` branch at 0xda4cc70 targets 0xda4cb48, is taken when a1 != v1(=0x1603), and falls through when a1 == v1(=0x1603).
  The `bne` branch at 0xda4cc78 targets 0xda4cb4c, is taken when a2(=[[0x1010]+3212]:1) != 0, and falls through when a2(=[[0x1010]+3212]:1) == 0.
  The `bc1t` branch at 0xda4cc8c targets 0xda4cd7c, is taken when f5(=[a2+8]) == f4(=0x0) (c.eq.s at 0xda4cc88), and falls through when not (f5(=[a2+8]) == f4(=0x0) (c.eq.s at 0xda4cc88)).
  The `beq` branch at 0xda4cc94 targets 0xda4cd7c and is always taken.
  The `beq` branch at 0xda4cca0 targets 0xda4cb48 and is always taken.
  The `beq` branch at 0xda4ccac targets 0xda4cb48 and is always taken.
  The `bc1f` branch at 0xda4ccc4 targets 0xda4ccd4, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0xda4ccf8 targets 0xda4cd08, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `beq` branch at 0xda4cd00 targets 0xda4cb48 and is always taken.
  The `beq` branch at 0xda4cd74 targets 0xda4cd00 and is always taken.
  The `bc1t` branch at 0xda4cd80 targets 0xda4cda4, is taken when f5 == f4(=0x0) (c.eq.s at 0xda4cd7c), and falls through when not (f5 == f4(=0x0) (c.eq.s at 0xda4cd7c)).
  The `beq` branch at 0xda4cd9c targets 0xda4cda8 and is always taken.
  The `bc1t` branch at 0xda4cdb0 targets 0xda4cdd0, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `beq` branch at 0xda4cdc8 targets 0xda4cdd4 and is always taken.
  The `beq` branch at 0xda4cdfc targets 0xda4ced4, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `beq` branch at 0xda4ce30 targets 0xda4cee8, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `beq` branch at 0xda4ce68 targets 0xda4cefc, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `beq` branch at 0xda4cea0 targets 0xda4cf10, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `beq` branch at 0xda4cecc targets 0xda4cb48 and is always taken.
  The `beq` branch at 0xda4cee0 targets 0xda4ce10 and is always taken.
  The `beq` branch at 0xda4cef4 targets 0xda4ce48 and is always taken.
  The `beq` branch at 0xda4cf08 targets 0xda4ce80 and is always taken.
  The `beq` branch at 0xda4cf1c targets 0xda4ceb8 and is always taken.
  The return at 0xda4cbfc has v0 = ?.
  The instructions from 0xda4cb7c to 0xda4cb7c are not reached by any path from the entry, and their branches are not listed.
- `ApplyParameterI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda4d190 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda4d190-0xda4d6fc (1388 bytes).
  It occupies 1388 bytes.
  The `lw` at 0xda4d1c0 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda4d1e0 loads 4 bytes from [0x1010] +0x9750.
  The `sw` at 0xda4d1fc stores 4 bytes to [0x1010] +0x9750.
  33 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xda4d200, `sw` at 0xda4d204, `sw` at 0xda4d208.
  The `lw` at 0xda4d21c loads 4 bytes from [0x1010] +0x7b90.
  The `lw` at 0xda4d224 loads 4 bytes from [0x1010] +0x7b94.
  The `lw` at 0xda4d22c loads 4 bytes from [0x1010] +0x7b98.
  The `lw` at 0xda4d234 loads 4 bytes from [0x1010] +0x7b9c.
  The `lw` at 0xda4d23c loads 4 bytes from [0x1010] +0x7ba0.
  The `lw` at 0xda4d244 loads 4 bytes from [0x1010] +0x7ba4.
  The `lw` at 0xda4d24c loads 4 bytes from [0x1010] +0x7ba8.
  The `lw` at 0xda4d254 loads 4 bytes from [0x1010] +0x7bac.
  The `lw` at 0xda4d25c loads 4 bytes from [0x1010] +0x7bb0.
  The `lw` at 0xda4d264 loads 4 bytes from [0x1010] +0x7bb4.
  The `lw` at 0xda4d26c loads 4 bytes from [0x1010] +0x7bb8.
  The `lw` at 0xda4d274 loads 4 bytes from [0x1010] +0x7bbc.
  The `lw` at 0xda4d27c loads 4 bytes from [0x1010] +0x7bc0.
  The `lw` at 0xda4d284 loads 4 bytes from [0x1010] +0x7bc4.
  The `lw` at 0xda4d28c loads 4 bytes from [0x1010] +0x7bc8.
  The `lw` at 0xda4d294 loads 4 bytes from [0x1010] +0x7bcc.
  2 such `lbu` accesses load 1 byte from [0x1010] +0xc8c, including `lbu` at 0xda4d2a0, `lbu` at 0xda4d518.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0xda4d2e8, `lw` at 0xda4d434, `lw` at 0xda4d53c.
  4 such `lwc1` accesses load 4 bytes from [0x1010] +0xde8, including `lwc1` at 0xda4d2f8, `lwc1` at 0xda4d314, `lwc1` at 0xda4d334.
  25 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xda4d300, `swc1` at 0xda4d320, `swc1` at 0xda4d340.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0xda4d304, `lw` at 0xda4d550.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0xda4d324, `lw` at 0xda4d530.
  The `lw` at 0xda4d344 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `swc1` at 0xda4d48c stores 4 bytes to table(0x9734) +0x0.
  2 such `lwc1` accesses load 4 bytes from [0x1010] +0x9734, including `lwc1` at 0xda4d4a8, `lwc1` at 0xda4d4b0.
  2 such `lwc1` accesses load 4 bytes from [0x1010] +0x9738, including `lwc1` at 0xda4d4bc, `lwc1` at 0xda4d4c4.
  The `lw` at 0xda4d4e0 loads 4 bytes from [0x1010] +0xa5c8.
  The `jalr` at 0xda4d4dc calls __glOdysseySetProgram [0xdaad4b0] with a0=[0x1010], a1=[[0x1010]+42440], a2=0xffffffffd080c400, a3=table(0x10000), a5=0x39, a6=0x10000.
  The `bne` branch at 0xda4d1c4 targets 0xda4d3c4, is taken when a1 < 0x1600 (unsigned), and falls through when a1 >= 0x1600 (unsigned).
  The `beq` branch at 0xda4d1cc targets 0xda4d3f8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xda4d1f4 targets 0xda4d210, is taken when v1(=[[0x1010]+38736]) == 0, and falls through when v1(=[[0x1010]+38736]) != 0.
  The `beq` branch at 0xda4d2d0 targets 0xda4d3ac, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xda4d2d8 targets 0xda4d37c and is always taken.
  The `beq` branch at 0xda4d370 targets 0xda4d3ac, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xda4d388 targets 0xda4d364, is taken when (a6(?) & s0(?)) == 0, and falls through when (a6(?) & s0(?)) != 0.
  The `bne` branch at 0xda4d390 targets 0xda4d2e0, is taken when s2(=a0) != 0, and falls through when s2(=a0) == 0.
  The `beq` branch at 0xda4d3a4 targets 0xda4d2e8 and is always taken.
  The `bne` branch at 0xda4d3c4 targets 0xda4d3e8, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xda4d3d0 targets 0xda4d418, is taken when a1 >= 0x1202 (unsigned), and falls through when a1 < 0x1202 (unsigned).
  The `beq` branch at 0xda4d3e0 targets 0xda4d1e0 and is always taken.
  The `beq` branch at 0xda4d3e8 targets 0xda4d500, is taken when a1 == v0(=0x1200), and falls through when a1 != v0(=0x1200).
  The `beq` branch at 0xda4d3f0 targets 0xda4d1e0 and is always taken.
  The `bne` branch at 0xda4d3f8 targets 0xda4d428, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xda4d400 targets 0xda4d4ec, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xda4d410 targets 0xda4d1e0 and is always taken.
  The `beq` branch at 0xda4d418 targets 0xda4d50c, is taken when a1 == at(=0x1202), and falls through when a1 != at(=0x1202).
  The `beq` branch at 0xda4d420 targets 0xda4d1e0 and is always taken.
  The `bne` branch at 0xda4d42c targets 0xda4d1e0, is taken when a1 != v0(=0x1601), and falls through when a1 == v0(=0x1601).
  The `bc1f` branch at 0xda4d44c targets 0xda4d460, is taken when not (f4 < f5(=0x4004000000000000) (c.lt.d at 0xda4d448)), and falls through when f4 < f5(=0x4004000000000000) (c.lt.d at 0xda4d448).
  The `beq` branch at 0xda4d4e4 targets 0xda4d1e0 and is always taken.
  The `beq` branch at 0xda4d4ec targets 0xda4d518, is taken when a1 == at(=0x1603), and falls through when a1 != at(=0x1603).
  The `beq` branch at 0xda4d4f8 targets 0xda4d1e0 and is always taken.
  The `beq` branch at 0xda4d504 targets 0xda4d1e0 and is always taken.
  The `beq` branch at 0xda4d510 targets 0xda4d1e0 and is always taken.
  The `beq` branch at 0xda4d51c targets 0xda4d530, is taken when v0(=[[0x1010]+3212]:1) == 0, and falls through when v0(=[[0x1010]+3212]:1) != 0.
  The `beq` branch at 0xda4d528 targets 0xda4d1e0 and is always taken.
  The `beq` branch at 0xda4d534 targets 0xda4d694, is taken when a0(=[a2+8]) == 0, and falls through when a0(=[a2+8]) != 0.
  The `beq` branch at 0xda4d548 targets 0xda4d69c, is taken when a0(=[a2+8]) == 0, and falls through when a0(=[a2+8]) != 0.
  The `beq` branch at 0xda4d570 targets 0xda4d6a4, is taken when a0(=[a2+8]) == 0, and falls through when a0(=[a2+8]) != 0.
  The `beq` branch at 0xda4d5bc targets 0xda4d6ac, is taken when s2(=a0) == 0, and falls through when s2(=a0) != 0.
  The `beq` branch at 0xda4d5f0 targets 0xda4d6c0, is taken when s2(=a0) == 0, and falls through when s2(=a0) != 0.
  The `beq` branch at 0xda4d628 targets 0xda4d6d4, is taken when s2(=a0) == 0, and falls through when s2(=a0) != 0.
  The `beq` branch at 0xda4d660 targets 0xda4d6e8, is taken when s2(=a0) == 0, and falls through when s2(=a0) != 0.
  The `beq` branch at 0xda4d68c targets 0xda4d524 and is always taken.
  The `beq` branch at 0xda4d694 targets 0xda4d540 and is always taken.
  The `beq` branch at 0xda4d69c targets 0xda4d56c and is always taken.
  The `beq` branch at 0xda4d6a4 targets 0xda4d590 and is always taken.
  The `beq` branch at 0xda4d6b8 targets 0xda4d5d0 and is always taken.
  The `beq` branch at 0xda4d6cc targets 0xda4d608 and is always taken.
  The `beq` branch at 0xda4d6e0 targets 0xda4d640 and is always taken.
  The `beq` branch at 0xda4d6f4 targets 0xda4d678 and is always taken.
  The return at 0xda4d3bc has v0 = one of [[0x1010]+31676], ?.
- `ApplyViewport` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda552a0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda552a0-0xda554a0 (512 bytes).
  It occupies 512 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xe70, including `lw` at 0xda552cc, `lw` at 0xda552e0, `lw` at 0xda5542c.
  The `lw` at 0xda552e8 loads 4 bytes from a0 (arg0 at entry) +0x69c.
  The `lw` at 0xda552f0 loads 4 bytes from a0 (arg0 at entry) +0x698.
  The `lw` at 0xda552f8 loads 4 bytes from a0 (arg0 at entry) +0x6a4.
  The `lw` at 0xda552fc loads 4 bytes from a0 (arg0 at entry) +0x6a0.
  The `lw` at 0xda55304 loads 4 bytes from a0 (arg0 at entry) +0xe6c.
  The `lwc1` at 0xda55310 loads 4 bytes from a0 (arg0 at entry) +0xdcc.
  The `lwc1` at 0xda55318 loads 4 bytes from a0 (arg0 at entry) +0xe54.
  The `lwc1` at 0xda5532c loads 4 bytes from a0 (arg0 at entry) +0x174.
  The `lwc1` at 0xda55350 loads 4 bytes from a0 (arg0 at entry) +0xe50.
  The `swc1` at 0xda55364 stores 4 bytes to a0 (arg0 at entry) +0x174.
  The `swc1` at 0xda55374 stores 4 bytes to a0 (arg0 at entry) +0x6c0.
  The `swc1` at 0xda55384 stores 4 bytes to a0 (arg0 at entry) +0x6c4.
  The `lw` at 0xda553a4 loads 4 bytes from a0 (arg0 at entry) +0x2de4.
  The `lbu` at 0xda553b0 loads 1 byte from a0 (arg0 at entry) +0x73e4.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x73e4, including `sb` at 0xda553fc, `sb` at 0xda5540c.
  The `sw` at 0xda55414 stores 4 bytes to abs 0x1018.
  The `lw` at 0xda55418 loads 4 bytes from a0 (arg0 at entry) +0x2d44.
  The `sw` at 0xda55420 stores 4 bytes to a0 (arg0 at entry) +0x2d44.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9748, including `lw` at 0xda55430, `lw` at 0xda55490.
  The `lw` at 0xda5543c loads 4 bytes from a0 (arg0 at entry) +0x9750.
  The `sw` at 0xda55454 stores 4 bytes to a0 (arg0 at entry) +0x9748.
  The `sw` at 0xda55464 stores 4 bytes to a0 (arg0 at entry) +0x9750.
  6 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xda5546c, `sw` at 0xda55474, `sw` at 0xda55484.
  The `bgezall` at 0xda552c8 calls __glOdysseyFindWindowSize [0xda55150] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda552d8 calls __glUpdateViewport [0xdb7bfd0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xda55380 calls __glOdysseyImageDescribeWindow [0xda75b60] with a0=a0+72856, a1=0x0, a2=[a0+1692], a3=[a0+3696].
  The `jalr` at 0xda5539c calls __glOdysseyImageDescribeWindow [0xda75b60] with a0=a0+72912, a1=0x1, a2=?, a3=?.
  The `jalr` at 0xda553a8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bltz` branch at 0xda553c4 targets 0xda55408, is taken when a1(=[a0+1688]) < 0 (signed), and falls through when a1(=[a0+1688]) >= 0 (signed).
  The `bltz` branch at 0xda553d4 targets 0xda55408, is taken when at(?) < 0 (signed), and falls through when at(?) >= 0 (signed).
  The `bne` branch at 0xda553e8 targets 0xda55408, is taken when v0(?) < v1(?) (signed), and falls through when v0(?) >= v1(?) (signed).
  The `bne` branch at 0xda553f0 targets 0xda55408, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0xda553f8 targets 0xda55424, is taken when a0(=[a0+29668]:1) == a2(=0x1), and falls through when a0(=[a0+29668]:1) != a2(=0x1).
  The `beq` branch at 0xda55400 targets 0xda55414 and is always taken.
  The `beq` branch at 0xda55408 targets 0xda55424, is taken when a0(=[a0+29668]:1) == 0, and falls through when a0(=[a0+29668]:1) != 0.
  The `beq` branch at 0xda55458 targets 0xda5548c, is taken when a1(=[a0+38736]) == 0, and falls through when a1(=[a0+38736]) != 0.
  The return at 0xda55498 has v0 = [a0+38728].
- `ApplyParameterF` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda4cb00 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda4cb00-0xda4cf24 (1060 bytes).
  It occupies 1060 bytes.
  The `lw` at 0xda4cb2c loads 4 bytes from abs 0x1010.
  11 such `lbu` accesses load 1 byte from [0x1010] +0xc8c, including `lbu` at 0xda4cb40, `lbu` at 0xda4cc18, `lbu` at 0xda4cc30.
  12 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xda4cb84, `sw` at 0xda4cbec, `sw` at 0xda4cd20.
  5 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda4cb88, `lwc1` at 0xda4cc98, `lwc1` at 0xda4ccb4.
  25 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xda4cb8c, `swc1` at 0xda4cb94, `swc1` at 0xda4cb9c.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda4cb90, `lwc1` at 0xda4cd88.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda4cb98, `lwc1` at 0xda4cc80.
  The `lwc1` at 0xda4cba0 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0xda4ccec loads 4 bytes from table(0x9734) +0x0.
  The `swc1` at 0xda4cd14 stores 4 bytes to table(0x9734) +0x0.
  2 such `lwc1` accesses load 4 bytes from [0x1010] +0x9734, including `lwc1` at 0xda4cd38, `lwc1` at 0xda4cd40.
  2 such `lwc1` accesses load 4 bytes from [0x1010] +0x9738, including `lwc1` at 0xda4cd4c, `lwc1` at 0xda4cd54.
  The `lw` at 0xda4cd70 loads 4 bytes from [0x1010] +0xa5c8.
  The `jalr` at 0xda4cd6c calls __glOdysseySetProgram [0xdaad4b0] with a0=[0x1010], a1=[[0x1010]+42440], a2=0xffffffff908091ea, a3=(one of 0x33, 0x39 | 0xffffffffd080c400), a4=0x10000, a5=0xffffffffd080c400, a7=0x39.
  The `bne` branch at 0xda4cb30 targets 0xda4cc04, is taken when a1 < 0x1600 (unsigned), and falls through when a1 >= 0x1600 (unsigned).
  The `beq` branch at 0xda4cb38 targets 0xda4cc34, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xda4cb6c targets 0xda4cbf0, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xda4cb74 targets 0xda4cbbc and is always taken.
  The `beq` branch at 0xda4cbb4 targets 0xda4cbf0, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xda4cbcc targets 0xda4cba8, is taken when (a6(?) & s0(?)) == 0, and falls through when (a6(?) & s0(?)) != 0.
  The `bne` branch at 0xda4cbd4 targets 0xda4cb80, is taken when s1(=a0) != 0, and falls through when s1(=a0) == 0.
  The `beq` branch at 0xda4cbe8 targets 0xda4cb88 and is always taken.
  The `bne` branch at 0xda4cc04 targets 0xda4cc24, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xda4cc10 targets 0xda4cc50, is taken when a1 >= 0x1202 (unsigned), and falls through when a1 < 0x1202 (unsigned).
  The `beq` branch at 0xda4cc1c targets 0xda4cb48 and is always taken.
  The `beq` branch at 0xda4cc24 targets 0xda4cc9c, is taken when a1 == v0(=0x1200), and falls through when a1 != v0(=0x1200).
  The `beq` branch at 0xda4cc2c targets 0xda4cb48 and is always taken.
  The `bne` branch at 0xda4cc34 targets 0xda4cc60, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xda4cc3c targets 0xda4cc70, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xda4cc48 targets 0xda4cb48 and is always taken.
  The `beq` branch at 0xda4cc50 targets 0xda4cca8, is taken when a1 == at(=0x1202), and falls through when a1 != at(=0x1202).
  The `beq` branch at 0xda4cc58 targets 0xda4cb48 and is always taken.
  The `beq` branch at 0xda4cc60 targets 0xda4ccb4, is taken when a1 == v0(=0x1601), and falls through when a1 != v0(=0x1601).
  The `beq` branch at 0xda4cc68 targets 0xda4cb48 and is always taken.
  The `bne` branch at 0xda4cc70 targets 0xda4cb48, is taken when a1 != v1(=0x1603), and falls through when a1 == v1(=0x1603).
  The `bne` branch at 0xda4cc78 targets 0xda4cb4c, is taken when a2(=[[0x1010]+3212]:1) != 0, and falls through when a2(=[[0x1010]+3212]:1) == 0.
  The `bc1t` branch at 0xda4cc8c targets 0xda4cd7c, is taken when f5(=[a2+8]) == f4(=0x0) (c.eq.s at 0xda4cc88), and falls through when not (f5(=[a2+8]) == f4(=0x0) (c.eq.s at 0xda4cc88)).
  The `beq` branch at 0xda4cc94 targets 0xda4cd7c and is always taken.
  The `beq` branch at 0xda4cca0 targets 0xda4cb48 and is always taken.
  The `beq` branch at 0xda4ccac targets 0xda4cb48 and is always taken.
  The `bc1f` branch at 0xda4ccc4 targets 0xda4ccd4, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0xda4ccf8 targets 0xda4cd08, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `beq` branch at 0xda4cd00 targets 0xda4cb48 and is always taken.
  The `beq` branch at 0xda4cd74 targets 0xda4cd00 and is always taken.
  The `bc1t` branch at 0xda4cd80 targets 0xda4cda4, is taken when f5 == f4(=0x0) (c.eq.s at 0xda4cd7c), and falls through when not (f5 == f4(=0x0) (c.eq.s at 0xda4cd7c)).
  The `beq` branch at 0xda4cd9c targets 0xda4cda8 and is always taken.
  The `bc1t` branch at 0xda4cdb0 targets 0xda4cdd0, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `beq` branch at 0xda4cdc8 targets 0xda4cdd4 and is always taken.
  The `beq` branch at 0xda4cdfc targets 0xda4ced4, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `beq` branch at 0xda4ce30 targets 0xda4cee8, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `beq` branch at 0xda4ce68 targets 0xda4cefc, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `beq` branch at 0xda4cea0 targets 0xda4cf10, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `beq` branch at 0xda4cecc targets 0xda4cb48 and is always taken.
  The `beq` branch at 0xda4cee0 targets 0xda4ce10 and is always taken.
  The `beq` branch at 0xda4cef4 targets 0xda4ce48 and is always taken.
  The `beq` branch at 0xda4cf08 targets 0xda4ce80 and is always taken.
  The `beq` branch at 0xda4cf1c targets 0xda4ceb8 and is always taken.
  The return at 0xda4cbfc has v0 = ?.
  The instructions from 0xda4cb7c to 0xda4cb7c are not reached by any path from the entry, and their branches are not listed.
- `ApplyParameterI` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda4d190 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda4d190-0xda4d6fc (1388 bytes).
  It occupies 1388 bytes.
  The `lw` at 0xda4d1c0 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda4d1e0 loads 4 bytes from [0x1010] +0x9750.
  The `sw` at 0xda4d1fc stores 4 bytes to [0x1010] +0x9750.
  33 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xda4d200, `sw` at 0xda4d204, `sw` at 0xda4d208.
  The `lw` at 0xda4d21c loads 4 bytes from [0x1010] +0x7b90.
  The `lw` at 0xda4d224 loads 4 bytes from [0x1010] +0x7b94.
  The `lw` at 0xda4d22c loads 4 bytes from [0x1010] +0x7b98.
  The `lw` at 0xda4d234 loads 4 bytes from [0x1010] +0x7b9c.
  The `lw` at 0xda4d23c loads 4 bytes from [0x1010] +0x7ba0.
  The `lw` at 0xda4d244 loads 4 bytes from [0x1010] +0x7ba4.
  The `lw` at 0xda4d24c loads 4 bytes from [0x1010] +0x7ba8.
  The `lw` at 0xda4d254 loads 4 bytes from [0x1010] +0x7bac.
  The `lw` at 0xda4d25c loads 4 bytes from [0x1010] +0x7bb0.
  The `lw` at 0xda4d264 loads 4 bytes from [0x1010] +0x7bb4.
  The `lw` at 0xda4d26c loads 4 bytes from [0x1010] +0x7bb8.
  The `lw` at 0xda4d274 loads 4 bytes from [0x1010] +0x7bbc.
  The `lw` at 0xda4d27c loads 4 bytes from [0x1010] +0x7bc0.
  The `lw` at 0xda4d284 loads 4 bytes from [0x1010] +0x7bc4.
  The `lw` at 0xda4d28c loads 4 bytes from [0x1010] +0x7bc8.
  The `lw` at 0xda4d294 loads 4 bytes from [0x1010] +0x7bcc.
  2 such `lbu` accesses load 1 byte from [0x1010] +0xc8c, including `lbu` at 0xda4d2a0, `lbu` at 0xda4d518.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0xda4d2e8, `lw` at 0xda4d434, `lw` at 0xda4d53c.
  4 such `lwc1` accesses load 4 bytes from [0x1010] +0xde8, including `lwc1` at 0xda4d2f8, `lwc1` at 0xda4d314, `lwc1` at 0xda4d334.
  25 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xda4d300, `swc1` at 0xda4d320, `swc1` at 0xda4d340.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0xda4d304, `lw` at 0xda4d550.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0xda4d324, `lw` at 0xda4d530.
  The `lw` at 0xda4d344 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `swc1` at 0xda4d48c stores 4 bytes to table(0x9734) +0x0.
  2 such `lwc1` accesses load 4 bytes from [0x1010] +0x9734, including `lwc1` at 0xda4d4a8, `lwc1` at 0xda4d4b0.
  2 such `lwc1` accesses load 4 bytes from [0x1010] +0x9738, including `lwc1` at 0xda4d4bc, `lwc1` at 0xda4d4c4.
  The `lw` at 0xda4d4e0 loads 4 bytes from [0x1010] +0xa5c8.
  The `jalr` at 0xda4d4dc calls __glOdysseySetProgram [0xdaad4b0] with a0=[0x1010], a1=[[0x1010]+42440], a2=0xffffffffd080c400, a3=table(0x10000), a5=0x39, a6=0x10000.
  The `bne` branch at 0xda4d1c4 targets 0xda4d3c4, is taken when a1 < 0x1600 (unsigned), and falls through when a1 >= 0x1600 (unsigned).
  The `beq` branch at 0xda4d1cc targets 0xda4d3f8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xda4d1f4 targets 0xda4d210, is taken when v1(=[[0x1010]+38736]) == 0, and falls through when v1(=[[0x1010]+38736]) != 0.
  The `beq` branch at 0xda4d2d0 targets 0xda4d3ac, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xda4d2d8 targets 0xda4d37c and is always taken.
  The `beq` branch at 0xda4d370 targets 0xda4d3ac, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xda4d388 targets 0xda4d364, is taken when (a6(?) & s0(?)) == 0, and falls through when (a6(?) & s0(?)) != 0.
  The `bne` branch at 0xda4d390 targets 0xda4d2e0, is taken when s2(=a0) != 0, and falls through when s2(=a0) == 0.
  The `beq` branch at 0xda4d3a4 targets 0xda4d2e8 and is always taken.
  The `bne` branch at 0xda4d3c4 targets 0xda4d3e8, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xda4d3d0 targets 0xda4d418, is taken when a1 >= 0x1202 (unsigned), and falls through when a1 < 0x1202 (unsigned).
  The `beq` branch at 0xda4d3e0 targets 0xda4d1e0 and is always taken.
  The `beq` branch at 0xda4d3e8 targets 0xda4d500, is taken when a1 == v0(=0x1200), and falls through when a1 != v0(=0x1200).
  The `beq` branch at 0xda4d3f0 targets 0xda4d1e0 and is always taken.
  The `bne` branch at 0xda4d3f8 targets 0xda4d428, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xda4d400 targets 0xda4d4ec, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xda4d410 targets 0xda4d1e0 and is always taken.
  The `beq` branch at 0xda4d418 targets 0xda4d50c, is taken when a1 == at(=0x1202), and falls through when a1 != at(=0x1202).
  The `beq` branch at 0xda4d420 targets 0xda4d1e0 and is always taken.
  The `bne` branch at 0xda4d42c targets 0xda4d1e0, is taken when a1 != v0(=0x1601), and falls through when a1 == v0(=0x1601).
  The `bc1f` branch at 0xda4d44c targets 0xda4d460, is taken when not (f4 < f5(=0x4004000000000000) (c.lt.d at 0xda4d448)), and falls through when f4 < f5(=0x4004000000000000) (c.lt.d at 0xda4d448).
  The `beq` branch at 0xda4d4e4 targets 0xda4d1e0 and is always taken.
  The `beq` branch at 0xda4d4ec targets 0xda4d518, is taken when a1 == at(=0x1603), and falls through when a1 != at(=0x1603).
  The `beq` branch at 0xda4d4f8 targets 0xda4d1e0 and is always taken.
  The `beq` branch at 0xda4d504 targets 0xda4d1e0 and is always taken.
  The `beq` branch at 0xda4d510 targets 0xda4d1e0 and is always taken.
  The `beq` branch at 0xda4d51c targets 0xda4d530, is taken when v0(=[[0x1010]+3212]:1) == 0, and falls through when v0(=[[0x1010]+3212]:1) != 0.
  The `beq` branch at 0xda4d528 targets 0xda4d1e0 and is always taken.
  The `beq` branch at 0xda4d534 targets 0xda4d694, is taken when a0(=[a2+8]) == 0, and falls through when a0(=[a2+8]) != 0.
  The `beq` branch at 0xda4d548 targets 0xda4d69c, is taken when a0(=[a2+8]) == 0, and falls through when a0(=[a2+8]) != 0.
  The `beq` branch at 0xda4d570 targets 0xda4d6a4, is taken when a0(=[a2+8]) == 0, and falls through when a0(=[a2+8]) != 0.
  The `beq` branch at 0xda4d5bc targets 0xda4d6ac, is taken when s2(=a0) == 0, and falls through when s2(=a0) != 0.
  The `beq` branch at 0xda4d5f0 targets 0xda4d6c0, is taken when s2(=a0) == 0, and falls through when s2(=a0) != 0.
  The `beq` branch at 0xda4d628 targets 0xda4d6d4, is taken when s2(=a0) == 0, and falls through when s2(=a0) != 0.
  The `beq` branch at 0xda4d660 targets 0xda4d6e8, is taken when s2(=a0) == 0, and falls through when s2(=a0) != 0.
  The `beq` branch at 0xda4d68c targets 0xda4d524 and is always taken.
  The `beq` branch at 0xda4d694 targets 0xda4d540 and is always taken.
  The `beq` branch at 0xda4d69c targets 0xda4d56c and is always taken.
  The `beq` branch at 0xda4d6a4 targets 0xda4d590 and is always taken.
  The `beq` branch at 0xda4d6b8 targets 0xda4d5d0 and is always taken.
  The `beq` branch at 0xda4d6cc targets 0xda4d608 and is always taken.
  The `beq` branch at 0xda4d6e0 targets 0xda4d640 and is always taken.
  The `beq` branch at 0xda4d6f4 targets 0xda4d678 and is always taken.
  The return at 0xda4d3bc has v0 = one of [[0x1010]+31676], ?.
- `ApplyViewport` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda552a0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda552a0-0xda554a0 (512 bytes).
  It occupies 512 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xe70, including `lw` at 0xda552cc, `lw` at 0xda552e0, `lw` at 0xda5542c.
  The `lw` at 0xda552e8 loads 4 bytes from a0 (arg0 at entry) +0x69c.
  The `lw` at 0xda552f0 loads 4 bytes from a0 (arg0 at entry) +0x698.
  The `lw` at 0xda552f8 loads 4 bytes from a0 (arg0 at entry) +0x6a4.
  The `lw` at 0xda552fc loads 4 bytes from a0 (arg0 at entry) +0x6a0.
  The `lw` at 0xda55304 loads 4 bytes from a0 (arg0 at entry) +0xe6c.
  The `lwc1` at 0xda55310 loads 4 bytes from a0 (arg0 at entry) +0xdcc.
  The `lwc1` at 0xda55318 loads 4 bytes from a0 (arg0 at entry) +0xe54.
  The `lwc1` at 0xda5532c loads 4 bytes from a0 (arg0 at entry) +0x174.
  The `lwc1` at 0xda55350 loads 4 bytes from a0 (arg0 at entry) +0xe50.
  The `swc1` at 0xda55364 stores 4 bytes to a0 (arg0 at entry) +0x174.
  The `swc1` at 0xda55374 stores 4 bytes to a0 (arg0 at entry) +0x6c0.
  The `swc1` at 0xda55384 stores 4 bytes to a0 (arg0 at entry) +0x6c4.
  The `lw` at 0xda553a4 loads 4 bytes from a0 (arg0 at entry) +0x2de4.
  The `lbu` at 0xda553b0 loads 1 byte from a0 (arg0 at entry) +0x73e4.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x73e4, including `sb` at 0xda553fc, `sb` at 0xda5540c.
  The `sw` at 0xda55414 stores 4 bytes to abs 0x1018.
  The `lw` at 0xda55418 loads 4 bytes from a0 (arg0 at entry) +0x2d44.
  The `sw` at 0xda55420 stores 4 bytes to a0 (arg0 at entry) +0x2d44.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9748, including `lw` at 0xda55430, `lw` at 0xda55490.
  The `lw` at 0xda5543c loads 4 bytes from a0 (arg0 at entry) +0x9750.
  The `sw` at 0xda55454 stores 4 bytes to a0 (arg0 at entry) +0x9748.
  The `sw` at 0xda55464 stores 4 bytes to a0 (arg0 at entry) +0x9750.
  6 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xda5546c, `sw` at 0xda55474, `sw` at 0xda55484.
  The `bgezall` at 0xda552c8 calls __glOdysseyFindWindowSize [0xda55150] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda552d8 calls __glUpdateViewport [0xdb7bfd0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xda55380 calls __glOdysseyImageDescribeWindow [0xda75b60] with a0=a0+72856, a1=0x0, a2=[a0+1692], a3=[a0+3696].
  The `jalr` at 0xda5539c calls __glOdysseyImageDescribeWindow [0xda75b60] with a0=a0+72912, a1=0x1, a2=?, a3=?.
  The `jalr` at 0xda553a8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bltz` branch at 0xda553c4 targets 0xda55408, is taken when a1(=[a0+1688]) < 0 (signed), and falls through when a1(=[a0+1688]) >= 0 (signed).
  The `bltz` branch at 0xda553d4 targets 0xda55408, is taken when at(?) < 0 (signed), and falls through when at(?) >= 0 (signed).
  The `bne` branch at 0xda553e8 targets 0xda55408, is taken when v0(?) < v1(?) (signed), and falls through when v0(?) >= v1(?) (signed).
  The `bne` branch at 0xda553f0 targets 0xda55408, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0xda553f8 targets 0xda55424, is taken when a0(=[a0+29668]:1) == a2(=0x1), and falls through when a0(=[a0+29668]:1) != a2(=0x1).
  The `beq` branch at 0xda55400 targets 0xda55414 and is always taken.
  The `beq` branch at 0xda55408 targets 0xda55424, is taken when a0(=[a0+29668]:1) == 0, and falls through when a0(=[a0+29668]:1) != 0.
  The `beq` branch at 0xda55458 targets 0xda5548c, is taken when a1(=[a0+38736]) == 0, and falls through when a1(=[a0+38736]) != 0.
  The return at 0xda55498 has v0 = [a0+38728].
- `_init` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8427a0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8427a0-0xd8427d8 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0xd8427c0 calls __glXInit [0xd80dfd8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd8427d0 has v0 = ret(__glXInit).
- `_init` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so` at 0x2177350 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x2177350-0x217738c (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0x2177370 calls __glXInit [0x2142b48] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2177384 has v0 = ret(__glXInit).
- `Store` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda53cb0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda53cb0-0xda53d4c (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xda53cb0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0xda53cb8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0xda53cc4 loads 4 bytes from [a0] +0x6cc.
  The `lwc1` at 0xda53ccc loads 4 bytes from [a0] +0x6c8.
  The `lw` at 0xda53cd4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xda53cdc loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda53ce0 loads 4 bytes from [a0] +0xdcc.
  The `lwc1` at 0xda53cec loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0xda53cf8 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xda53d0c loads 4 bytes from [a0] +0xe44.
  The `jalr` at 0xda53d34 calls fprintf with a0=sym(__iob)+32, a1=0xdbc0bb0, a2=?, a3=?, a6=[[a0]+3656], a7=0x18e358.
  The return at 0xda53d44 has v0 = ret(fprintf).
- `Pick` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda53d50 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda53d50-0xda53d58 (8 bytes).
  It occupies 8 bytes.
  The return at 0xda53d50 has v0 = ?.
- `Fetch` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda53d60 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda53d60-0xda53d68 (8 bytes).
  It occupies 8 bytes.
  The return at 0xda53d60 has v0 = ?.
- `StoreStippledSpan` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda53d70 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda53d70-0xda53ea8 (312 bytes).
  It occupies 312 bytes.
  The `lw` at 0xda53d84 loads 4 bytes from a0 (arg0 at entry) +0x7550.
  The `lw` at 0xda53d8c loads 4 bytes from a0 (arg0 at entry) +0x7660.
  The `lw` at 0xda53d94 loads 4 bytes from a0 (arg0 at entry) +0x7580.
  The `lw` at 0xda53da4 loads 4 bytes from a0 (arg0 at entry) +0x7668.
  The `lw` at 0xda53dac loads 4 bytes from a0 (arg0 at entry) +0x7658.
  The `lw` at 0xda53db8 loads 4 bytes from a0 (arg0 at entry) +0x754c.
  The `lw` at 0xda53e14 loads 4 bytes from ?.
  The `lwc1` at 0xda53e50 loads 4 bytes from ?.
  The `lw` at 0xda53e58 loads 4 bytes from [a0+30312] +0xa4.
  The `jalr` at 0xda53e60 calls (unknown callee) with a0=[a0+30312], a1=sp-176, a2=?, a3=?.
  The `beq` branch at 0xda53db4 targets 0xda53e84, is taken when s7(=[a0+30080]) == 0, and falls through when s7(=[a0+30080]) != 0.
  The `beq` branch at 0xda53dcc targets 0xda53df4 and is always taken.
  The `beq` branch at 0xda53df0 targets 0xda53e70, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `bltz` branch at 0xda53e18 targets 0xda53df0, is taken when s3(?) < 0 (signed), and falls through when s3(?) >= 0 (signed).
  The `beq` branch at 0xda53e28 targets 0xda53e3c and is always taken.
  The `beq` branch at 0xda53e34 targets 0xda53de0, is taken when s3(?) == s5(=-0x1), and falls through when s3(?) != s5(=-0x1).
  The `beq` branch at 0xda53e44 targets 0xda53e30, is taken when (s4(?) & s0(?)) == 0, and falls through when (s4(?) & s0(?)) != 0.
  The `beq` branch at 0xda53e68 targets 0xda53e34 and is always taken.
  The return at 0xda53ea0 has v0 = 0x0.
  The instructions from 0xda53dd4 to 0xda53ddc are not reached by any path from the entry, and their branches are not listed.
- `StoreSpan` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda53eb0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda53eb0-0xda53f4c (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xda53eb8 loads 4 bytes from a0 (arg0 at entry) +0x7550.
  The `lw` at 0xda53ec0 loads 4 bytes from a0 (arg0 at entry) +0x7580.
  The `lw` at 0xda53ecc loads 4 bytes from a0 (arg0 at entry) +0x754c.
  The `lw` at 0xda53eec loads 4 bytes from a0 (arg0 at entry) +0x7668.
  The `lw` at 0xda53ef8 loads 4 bytes from a0 (arg0 at entry) +0x7658.
  The `lwc1` at 0xda53f00 loads 4 bytes from ?.
  The `lw` at 0xda53f08 loads 4 bytes from [a0+30312] +0xa4.
  The `jalr` at 0xda53f18 calls (unknown callee) with a0=[a0+30312], a1=sp-128, a2=?, a3=?.
  The `beq` branch at 0xda53ef4 targets 0xda53f2c, is taken when s0(=[a0+30028]) >= s5(=([a0+30028] + [a0+30080])) (signed), and falls through when s0(=[a0+30028]) < s5(=([a0+30028] + [a0+30080])) (signed).
  The `bnel` branch at 0xda53f20 targets 0xda53f00, is taken when s5(=([a0+30028] + [a0+30080])) != s0(?), and falls through when s5(=([a0+30028] + [a0+30080])) == s0(?); its branch-likely delay slot `sw s0,0(sp)` at 0xda53f24 runs only when taken and is annulled on fall-through.
  The return at 0xda53f44 has v0 = 0x0.
- `ApplyScissor` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda55640 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda55640-0xda557d0 (400 bytes).
  It occupies 400 bytes.
  The `lw` at 0xda55640 loads 4 bytes from a0 (arg0 at entry) +0xe44.
  The `lw` at 0xda55644 loads 4 bytes from a0 (arg0 at entry) +0x735c.
  The `lw` at 0xda55648 loads 4 bytes from a0 (arg0 at entry) +0x7364.
  The `lw` at 0xda55658 loads 4 bytes from a0 (arg0 at entry) +0xe48.
  The `lw` at 0xda55664 loads 4 bytes from a0 (arg0 at entry) +0x7360.
  The `lw` at 0xda55670 loads 4 bytes from a0 (arg0 at entry) +0x7368.
  The `sw` at 0xda5569c stores 4 bytes to a0 (arg0 at entry) +0x16654.
  The `sw` at 0xda556d0 stores 4 bytes to a0 (arg0 at entry) +0x16650.
  The `sb` at 0xda556dc stores 1 byte to a0 (arg0 at entry) +0x16658.
  The `swc1` at 0xda556e4 stores 4 bytes to a0 (arg0 at entry) +0x11d24.
  The `swc1` at 0xda556ec stores 4 bytes to a0 (arg0 at entry) +0x11d1c.
  The `swc1` at 0xda556f8 stores 4 bytes to a0 (arg0 at entry) +0x11d20.
  The `swc1` at 0xda556fc stores 4 bytes to a0 (arg0 at entry) +0x11d28.
  The `lw` at 0xda55700 loads 4 bytes from a0 (arg0 at entry) +0x7374.
  The `lw` at 0xda55704 loads 4 bytes from a0 (arg0 at entry) +0x736c.
  The `lw` at 0xda55740 loads 4 bytes from a0 (arg0 at entry) +0x7378.
  The `lw` at 0xda55754 loads 4 bytes from a0 (arg0 at entry) +0x7370.
  The `sw` at 0xda55770 stores 4 bytes to a0 (arg0 at entry) +0x16648.
  The `lw` at 0xda55794 loads 4 bytes from a0 (arg0 at entry) +0x168d4.
  The `sw` at 0xda557ac stores 4 bytes to a0 (arg0 at entry) +0x168d4.
  The `sw` at 0xda557b8 stores 4 bytes to a0 (arg0 at entry) +0x1664c.
  The `sw` at 0xda557c4 stores 4 bytes to abs 0x1018.
  The `bne` branch at 0xda556cc targets 0xda556dc, is taken when t0(?) < a6(?) (signed), and falls through when t0(?) >= a6(?) (signed).
  The `beq` branch at 0xda556d4 targets 0xda557c8, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xda557c8 targets 0xda556dc and is always taken.
  The return at 0xda557c0 has v0 = ([a0+92372] | 0x2000).
- `InitBuffers` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda57280 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda57280-0xda57460 (480 bytes).
  It occupies 480 bytes.
  The `lbu` at 0xda57280 loads 1 byte from a0 (arg0 at entry) +0xc8e.
  The `sw` at 0xda57288 stores 4 bytes to a0 (arg0 at entry) +0x2d4c.
  The `sw` at 0xda57294 stores 4 bytes to a0 (arg0 at entry) +0x7718.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc8d, including `lbu` at 0xda572a0, `lbu` at 0xda57330, `lbu` at 0xda573e8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x2d48, including `sw` at 0xda572ac, `sw` at 0xda573f4.
  The `sw` at 0xda572b4 stores 4 bytes to a0 (arg0 at entry) +0x771c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x771c, including `lw` at 0xda572d4, `lw` at 0xda5742c.
  The `lw` at 0xda572dc loads 4 bytes from a0 (arg0 at entry) +0xcd8.
  The `lw` at 0xda57334 loads 4 bytes from a0 (arg0 at entry) +0x78d8.
  The `lbu` at 0xda5735c loads 1 byte from a0 (arg0 at entry) +0xc90.
  The `sw` at 0xda57364 stores 4 bytes to a0 (arg0 at entry) +0x12ec.
  The `sb` at 0xda57370 stores 1 byte to a0 (arg0 at entry) +0x12e8.
  The `lbu` at 0xda5738c loads 1 byte from a0 (arg0 at entry) +0xc91.
  The `lbu` at 0xda573a4 loads 1 byte from a0 (arg0 at entry) +0xc92.
  The `sw` at 0xda573b4 stores 4 bytes to a0 (arg0 at entry) +0x79a0.
  The `bgezall` at 0xda572c0 calls __glOdysseyInitCI [0xda53f50] with a0=a0+30496, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+30496.
  The `bgezall` at 0xda572d0 calls __glOdysseyInitCI [0xda53f50] with a0=[a0+30492], a1=a0 at entry (arg0), a2=?, a3=?.
  The `bgezall` at 0xda57314 calls __glOdysseyInitCI [0xda53f50] with a0=?, a1=a0 at entry (arg0), a2=[a0+3213]:1, a3=?.
  The `jalr` at 0xda57344 calls __glOdysseyInitRGB [0xdaae210] with a0=?, a1=a0 at entry (arg0), a2=[a0+3213]:1, a3=?.
  The `jalr` at 0xda5737c calls __glOdysseyInitAccum [0xda46bb0] with a0=a0+31192, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xda5739c calls __glInitDepth [0xdb15a90] with a0=a0+31060, a1=a0 at entry (arg0), a2=[a0+3217]:1, a3=?.
  The `jalr` at 0xda573c0 calls __glInitStencil8 [0xdb4b990] with a0=a0+30940, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xda573cc calls __glUpdateDepthRange [0xdb7ad80] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0xda57400 calls __glOdysseyInitCI [0xda53f50] with a0=a0+30496, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+30496.
  The `jalr` at 0xda57418 calls __glOdysseyInitRGB [0xdaae210] with a0=a0+30496, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+30496.
  The `jalr` at 0xda57428 calls __glOdysseyInitRGB [0xdaae210] with a0=[a0+30492], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xda57450 calls __glOdysseyInitRGB [0xdaae210] with a0=a0+30496, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+30496.
  The `beq` branch at 0xda57298 targets 0xda573e8, is taken when at(=[a0+3214]:1) == 0, and falls through when at(=[a0+3214]:1) != 0.
  The `beq` branch at 0xda572b0 targets 0xda57410, is taken when v0(=[a0+3213]:1) == 0, and falls through when v0(=[a0+3213]:1) != 0.
  The `blez` branch at 0xda572e0 targets 0xda5735c, is taken when a0(=[a0+3288]) <= 0 (signed), and falls through when a0(=[a0+3288]) > 0 (signed).
  The `beq` branch at 0xda57304 targets 0xda57330 and is always taken.
  The `beq` branch at 0xda57320 targets 0xda57354, is taken when s1(?) == s2(?), and falls through when s1(?) != s2(?).
  The `bne` branch at 0xda57338 targets 0xda57310, is taken when a2(=[a0+3213]:1) != 0, and falls through when a2(=[a0+3213]:1) == 0.
  The `beq` branch at 0xda5734c targets 0xda57320 and is always taken.
  The `beq` branch at 0xda5736c targets 0xda5738c, is taken when v0(=[a0+3216]:1) == 0, and falls through when v0(=[a0+3216]:1) != 0.
  The `beq` branch at 0xda57384 targets 0xda57438, is taken when v0(=ret(__glOdysseyInitAccum)) == 0, and falls through when v0(=ret(__glOdysseyInitAccum)) != 0.
  The `beq` branch at 0xda57390 targets 0xda573a4, is taken when a2(=[a0+3217]:1) == 0, and falls through when a2(=[a0+3217]:1) != 0.
  The `beq` branch at 0xda573b0 targets 0xda573c8, is taken when v0(=[a0+3218]:1) == 0, and falls through when v0(=[a0+3218]:1) != 0.
  The `beq` branch at 0xda573f0 targets 0xda57448, is taken when v0(=[a0+3213]:1) == 0, and falls through when v0(=[a0+3213]:1) != 0.
  The `beq` branch at 0xda57408 targets 0xda572dc and is always taken.
  The `beq` branch at 0xda57430 targets 0xda572dc and is always taken.
  The `beq` branch at 0xda57458 targets 0xda572dc and is always taken.
  The return at 0xda573e0 has v0 = 0x1.
  The return at 0xda57440 has v0 = 0x0.
  The instructions from 0xda5730c to 0xda5730c are not reached by any path from the entry, and their branches are not listed.
- `LoseCurrent` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda5afe0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda5afe0-0xda5b0dc (252 bytes).
  It occupies 252 bytes.
  The `lw` at 0xda5afe4 loads 4 bytes from a0 (arg0 at entry) +0xc7c.
  2 such `lw` accesses load 4 bytes from abs 0x1018, including `lw` at 0xda5b008, `lw` at 0xda5b02c.
  The `sw` at 0xda5b034 stores 4 bytes to a0 (arg0 at entry) +0xc78.
  The `sw` at 0xda5b040 stores 4 bytes to abs 0x1010.
  The `lw` at 0xda5b044 loads 4 bytes from a0 (arg0 at entry) +0x17ec.
  The `ld` at 0xda5b07c loads 8 bytes from ?.
  The `sd` at 0xda5b088 stores 8 bytes to ?.
  The `lw` at 0xda5b08c loads 4 bytes from a0 (arg0 at entry) +0x1374.
  The `lw` at 0xda5b098 loads 4 bytes from abs 0x1028.
  The `sw` at 0xda5b09c stores 4 bytes to a0 (arg0 at entry) +0x13b4.
  The `lw` at 0xda5b0a0 loads 4 bytes from abs 0x102c.
  The `sw` at 0xda5b0a4 stores 4 bytes to a0 (arg0 at entry) +0x13b8.
  The `lw` at 0xda5b0a8 loads 4 bytes from abs 0x1030.
  The `sw` at 0xda5b0ac stores 4 bytes to a0 (arg0 at entry) +0x13bc.
  The `lw` at 0xda5b0b0 loads 4 bytes from abs 0x1034.
  The `sw` at 0xda5b0b4 stores 4 bytes to a0 (arg0 at entry) +0x13c0.
  The `jalr` at 0xda5b020 calls __glLoseCurrentBuffers [0xdb12510] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xda5b03c calls FastDispatchInstall [0xda56cd0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xda5b000 targets 0xda5b0c8, is taken when at(=[a0+3196]) != v0(=0x1c00), and falls through when at(=[a0+3196]) == v0(=0x1c00).
  The `beq` branch at 0xda5b010 targets 0xda5b0c8, is taken when a1(=[0x1018]) == at(=0x1), and falls through when a1(=[0x1018]) != at(=0x1).
  The `beq` branch at 0xda5b060 targets 0xda5b08c, is taken when at(=a0+7952) == a5(=[a0+6124]), and falls through when at(=a0+7952) != a5(=[a0+6124]).
  The `bgtz` branch at 0xda5b084 targets 0xda5b070, is taken when a0(?) > 0 (signed), and falls through when a0(?) <= 0 (signed).
  The `beq` branch at 0xda5b090 targets 0xda5b0bc, is taken when v1(=[a0+4980]) == 0, and falls through when v1(=[a0+4980]) != 0.
  The return at 0xda5b0c0 has v0 = 0x1.
  The return at 0xda5b0d4 has v0 = 0x0.
- `MakeCurrent` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda5b0e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda5b0e0-0xda5b14c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xda5b0f4 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `lw` at 0xda5b10c loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `jalr` at 0xda5b104 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda5b114 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0xda5b12c calls MakeCurrentRead [0xda5a470] with a0=a0 at entry (arg0), a1=ret(?), a2=ret(?), a3=?.
  The return at 0xda5b144 has v0 = ret(MakeCurrentRead).
- `PreEvaluate` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda62ae0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda62ae0-0xda62c88 (424 bytes).
  It occupies 424 bytes.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda62b08, `swc1` at 0xda62c4c, `swc1` at 0xda62c74.
  6 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda62b18, `swc1` at 0xda62bf4, `swc1` at 0xda62c08.
  5 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda62b28, `lwc1` at 0xda62b60, `lwc1` at 0xda62b64.
  6 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda62b40, `swc1` at 0xda62b8c, `swc1` at 0xda62b94.
  The `lwc1` at 0xda62bcc loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xda62c04 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `swc1` at 0xda62c30 stores 4 bytes to a2 (arg2 at entry) +0xc.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda62c40, `swc1` at 0xda62c60.
  The `beq` branch at 0xda62ae4 targets 0xda62c14, is taken when a0 == at(=0x4), and falls through when a0 != at(=0x4).
  The `beq` branch at 0xda62af0 targets 0xda62c50, is taken when a0 == v0(=0x3), and falls through when a0 != v0(=0x3).
  The `beq` branch at 0xda62af8 targets 0xda62c78, is taken when a0 == v1(=0x2), and falls through when a0 != v1(=0x2).
  The `beq` branch at 0xda62b00 targets 0xda62c08, is taken when a0 == a1(=0x1), and falls through when a0 != a1(=0x1).
  The `bne` branch at 0xda62b14 targets 0xda62c0c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xda62b20 targets 0xda62bcc and is always taken.
  The `bne` branch at 0xda62b3c targets 0xda62b28, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0xda62b48 targets 0xda62bac, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xda62ba0 targets 0xda62b60, is taken when a3(?) != a4(?), and falls through when a3(?) == a4(?).
  The `beq` branch at 0xda62bc4 targets 0xda62c0c, is taken when a0 == a5(?), and falls through when a0 != a5(?).
  The `bne` branch at 0xda62bf0 targets 0xda62bb0, is taken when a5(?) < 0x2 (signed), and falls through when a5(?) >= 0x2 (signed).
  The `beq` branch at 0xda62bf8 targets 0xda62b44, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xda62c00 targets 0xda62b2c and is always taken.
  The return at 0xda62c0c has v0 = one of 0x3, ?.
  The return at 0xda62c48 has v0 = ?.
  The return at 0xda62c70 has v0 = 0x3.
  The return at 0xda62c80 has v0 = 0x3.
- `PreEvaluateWithDeriv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda62c90 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda62c90-0xda6301c (908 bytes).
  It occupies 908 bytes.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda62cc0, `swc1` at 0xda62f8c, `swc1` at 0xda62fdc.
  7 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda62cd0, `swc1` at 0xda62db4, `swc1` at 0xda62e9c.
  15 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda62ce4, `lwc1` at 0xda62d20, `lwc1` at 0xda62d24.
  15 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda62cfc, `swc1` at 0xda62d4c, `swc1` at 0xda62d54.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda62d8c, `lwc1` at 0xda62dcc, `lwc1` at 0xda62e08.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda62dc4, `lwc1` at 0xda62e0c.
  5 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `swc1` at 0xda62e04, `swc1` at 0xda62f64, `swc1` at 0xda62fbc.
  4 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x4, including `swc1` at 0xda62e1c, `swc1` at 0xda62fb0, `swc1` at 0xda62ff0.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda62f94, `swc1` at 0xda62fe4.
  The `swc1` at 0xda62f9c stores 4 bytes to a2 (arg2 at entry) +0xc.
  The `swc1` at 0xda62fa0 stores 4 bytes to a3 (arg3 at entry) +0xc.
  2 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x8, including `swc1` at 0xda62fa8, `swc1` at 0xda62fe8.
  The `beq` branch at 0xda62c94 targets 0xda62f68, is taken when a0 == at(=0x4), and falls through when a0 != at(=0x4).
  The `beq` branch at 0xda62ca0 targets 0xda62fc0, is taken when a0 == v0(=0x3), and falls through when a0 != v0(=0x3).
  The `beq` branch at 0xda62ca8 targets 0xda63000, is taken when a0 == v1(=0x2), and falls through when a0 != v1(=0x2).
  The `beq` branch at 0xda62cb0 targets 0xda62f5c, is taken when a0 == a1(=0x1), and falls through when a0 != a1(=0x1).
  The `bne` branch at 0xda62ccc targets 0xda62f54, is taken when a0 < 0x4 (signed), and falls through when a0 >= 0x4 (signed).
  The `beq` branch at 0xda62cdc targets 0xda62d8c and is always taken.
  The `bne` branch at 0xda62cf8 targets 0xda62ce4, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0xda62d04 targets 0xda62d6c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xda62d60 targets 0xda62d20, is taken when a4(?) != a5(?), and falls through when a4(?) == a5(?).
  The `beq` branch at 0xda62d84 targets 0xda62dc8, is taken when t3(=a0-1) == a6(?), and falls through when t3(=a0-1) != a6(?).
  The `bne` branch at 0xda62db0 targets 0xda62d70, is taken when a6(?) < 0x2 (signed), and falls through when a6(?) >= 0x2 (signed).
  The `beq` branch at 0xda62db8 targets 0xda62d00, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0xda62dc0 targets 0xda62ce8 and is always taken.
  The `beq` branch at 0xda62e00 targets 0xda62e20, is taken when (t1(?) & 0x1) == 0, and falls through when (t1(?) & 0x1) != 0.
  The `beq` branch at 0xda62e28 targets 0xda62e70, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda62e68 targets 0xda62e40, is taken when a0(?) < a5(=((a0-1 << 0x2) + a2)) (unsigned), and falls through when a0(?) >= a5(=((a0-1 << 0x2) + a2)) (unsigned).
  The `bne` branch at 0xda62e98 targets 0xda62f40, is taken when a6(?) < 0x2 (signed), and falls through when a6(?) >= 0x2 (signed).
  The `beq` branch at 0xda62eb0 targets 0xda62ed4, is taken when (a3(?) & 0x3) == 0, and falls through when (a3(?) & 0x3) != 0.
  The `bne` branch at 0xda62ecc targets 0xda62eb8, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xda62edc targets 0xda62f3c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda62f30 targets 0xda62ef0, is taken when a0(?) != a5(?), and falls through when a0(?) == a5(?).
  The `beq` branch at 0xda62f54 targets 0xda62dd0 and is always taken.
  The return at 0xda62f4c has v0 = one of a2+4, ?.
  The return at 0xda62f60 has v0 = 0x3.
  The return at 0xda62fb8 has v0 = ?.
  The return at 0xda62ff8 has v0 = 0x3.
  The return at 0xda63014 has v0 = 0x3.
- `DoDomain1` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda63020 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda63020-0xda63364 (836 bytes).
  It occupies 836 bytes.
  The `lwc1` at 0xda63020 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0xda63024 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0xda63050 loads 4 bytes from a0 (arg0 at entry) +0x2f4.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0xda6305c, `lw` at 0xda630a4, `lw` at 0xda630b4.
  The `lw` at 0xda63060 loads 4 bytes from a0 (arg0 at entry) +0x57c.
  The `sw` at 0xda6309c stores 4 bytes to a0 (arg0 at entry) +0x584.
  The `swc1` at 0xda630a8 stores 4 bytes to a0 (arg0 at entry) +0x2f4.
  The `sw` at 0xda630ac stores 4 bytes to a0 (arg0 at entry) +0x57c.
  The `lw` at 0xda630c4 loads 4 bytes from a2 (arg2 at entry) +0x0.
  7 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda63108, `swc1` at 0xda6313c, `swc1` at 0xda63208.
  13 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda63130, `lwc1` at 0xda63134, `lwc1` at 0xda631c0.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x300, including `lwc1` at 0xda631c4, `lwc1` at 0xda63244, `lwc1` at 0xda632a4.
  6 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x2fc, including `lwc1` at 0xda631cc, `lwc1` at 0xda6324c, `lwc1` at 0xda632ac.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x304, including `lwc1` at 0xda631d0, `lwc1` at 0xda63250.
  The `lwc1` at 0xda631e0 loads 4 bytes from a0 (arg0 at entry) +0x308.
  The `lwc1` at 0xda632f4 loads 4 bytes from a4 (arg4 at entry) +0x0.
  The `swc1` at 0xda63308 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `bgezall` at 0xda63088 calls PreEvaluate [0xda62ae0] with a0=[a2+4], a1=a1 at entry (arg1), a2=a0+764, a3=a3 at entry (arg3).
  The `bc1t` branch at 0xda6303c targets 0xda63170, is taken when f6(=[a2+8]) == f5(=[a2+12]) (c.eq.s at 0xda6302c), and falls through when not (f6(=[a2+8]) == f5(=[a2+12]) (c.eq.s at 0xda6302c)).
  The `bc1f` branch at 0xda63058 targets 0xda6306c, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0xda63064 targets 0xda630b8, is taken when at(=[a0+1404]) == a0(=[a2+4]), and falls through when at(=[a0+1404]) != a0(=[a2+4]).
  The `beq` branch at 0xda630c0 targets 0xda63180, is taken when a0(=[a2+4]) == v0(=0x4), and falls through when a0(=[a2+4]) != v0(=0x4).
  The `beq` branch at 0xda630cc targets 0xda63214, is taken when a2(=[a2+4]) == v1(=0x3), and falls through when a2(=[a2+4]) != v1(=0x3).
  The `beq` branch at 0xda630d4 targets 0xda63284, is taken when a2(=[a2+4]) == a1(=0x2), and falls through when a2(=[a2+4]) != a1(=0x2).
  The `beq` branch at 0xda630dc targets 0xda632d4, is taken when a2(=[a2+4]) == at(=0x1), and falls through when a2(=[a2+4]) != at(=0x1).
  The `blez` branch at 0xda630e4 targets 0xda63160, is taken when t1(=[a2]) <= 0 (signed), and falls through when t1(=[a2]) > 0 (signed).
  The `beq` branch at 0xda630f8 targets 0xda63108 and is always taken.
  The `beq` branch at 0xda63100 targets 0xda63160, is taken when a7(?) == t0(=(([a2] << 0x2) + a4)), and falls through when a7(?) != t0(=(([a2] << 0x2) + a4)).
  The `blez` branch at 0xda63120 targets 0xda63100, is taken when v0(=[a2+4]) <= 0 (signed), and falls through when v0(=[a2+4]) > 0 (signed).
  The `bne` branch at 0xda63150 targets 0xda63130, is taken when a0(?) < v1(=[a2+4]) (signed), and falls through when a0(?) >= v1(=[a2+4]) (signed).
  The `beq` branch at 0xda63158 targets 0xda63100 and is always taken.
  The `blez` branch at 0xda63180 targets 0xda63160, is taken when t1(=[a2]) <= 0 (signed), and falls through when t1(=[a2]) > 0 (signed).
  The `bne` branch at 0xda63204 targets 0xda631c0, is taken when a0(?) != a6(=(([a2] << 0x2) + (([a2] << 0x2) + a4))), and falls through when a0(?) == a6(=(([a2] << 0x2) + (([a2] << 0x2) + a4))).
  The `beq` branch at 0xda6320c targets 0xda63164 and is always taken.
  The `blez` branch at 0xda63214 targets 0xda63160, is taken when t1(=[a2]) <= 0 (signed), and falls through when t1(=[a2]) > 0 (signed).
  The `bne` branch at 0xda63274 targets 0xda63240, is taken when a0(?) != a6(=(([a2] << 0x2) + (([a2] << 0x2) + a4))), and falls through when a0(?) == a6(=(([a2] << 0x2) + (([a2] << 0x2) + a4))).
  The `beq` branch at 0xda6327c targets 0xda63164 and is always taken.
  The `blez` branch at 0xda63284 targets 0xda63160, is taken when t1(=[a2]) <= 0 (signed), and falls through when t1(=[a2]) > 0 (signed).
  The `bne` branch at 0xda632c4 targets 0xda632a0, is taken when a0(?) != a6(=(([a2] << 0x2) + (([a2] << 0x2) + a4))), and falls through when a0(?) == a6(=(([a2] << 0x2) + (([a2] << 0x2) + a4))).
  The `beq` branch at 0xda632cc targets 0xda63164 and is always taken.
  The `blez` branch at 0xda632d4 targets 0xda63160, is taken when t1(=[a2]) <= 0 (signed), and falls through when t1(=[a2]) > 0 (signed).
  The `beq` branch at 0xda632ec targets 0xda6330c, is taken when (t1(=[a2]) & 0x1) == 0, and falls through when (t1(=[a2]) & 0x1) != 0.
  The `beq` branch at 0xda63314 targets 0xda6335c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xda63354 targets 0xda63330, is taken when a0(?) != t0(=(([a2] << 0x2) + a4)), and falls through when a0(?) == t0(=(([a2] << 0x2) + a4)).
  The `beq` branch at 0xda6335c targets 0xda63164 and is always taken.
  The return at 0xda63168 has v0 = one of ?, 0x4.
  The return at 0xda63178 has v0 = ?.
- `DoEvalCoord1` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda636f0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda636f0-0xda63a14 (804 bytes).
  It occupies 804 bytes.
  The `lw` at 0xda6372c loads 4 bytes from ?.
  The `sw` at 0xda63738 stores 4 bytes to ?.
  The `lbu` at 0xda6373c loads 1 byte from a0 (arg0 at entry) +0xc8d.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x710, including `lw` at 0xda63744, `lw` at 0xda6378c, `lw` at 0xda637cc.
  The `lw` at 0xda6376c loads 4 bytes from a0 (arg0 at entry) +0x6fe8.
  9 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x17ec, including `lw` at 0xda6377c, `lw` at 0xda637bc, `lw` at 0xda637fc.
  The `lw` at 0xda63780 loads 4 bytes from [a0+6124] +0x5cc.
  The `lw` at 0xda637ac loads 4 bytes from a0 (arg0 at entry) +0x6ffc.
  4 such `lw` accesses load 4 bytes from [a0+6124] +0x67c, including `lw` at 0xda637c0, `lw` at 0xda638e8, `lw` at 0xda63948.
  The `lw` at 0xda637ec loads 4 bytes from a0 (arg0 at entry) +0x6fec.
  The `lw` at 0xda63800 loads 4 bytes from [a0+6124] +0x5fc.
  The `lw` at 0xda63830 loads 4 bytes from a0 (arg0 at entry) +0x7004.
  The `lw` at 0xda63844 loads 4 bytes from [a0+6124] +0x52c.
  The `lw` at 0xda63874 loads 4 bytes from a0 (arg0 at entry) +0x7000.
  The `lw` at 0xda63888 loads 4 bytes from [a0+6124] +0x50c.
  The `lw` at 0xda638cc loads 4 bytes from a0 (arg0 at entry) +0x6ff8.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xdd0, including `lwc1` at 0xda638dc, `lwc1` at 0xda6393c, `lwc1` at 0xda639e4.
  The `lw` at 0xda63924 loads 4 bytes from a0 (arg0 at entry) +0x6ff4.
  The `lw` at 0xda63984 loads 4 bytes from a0 (arg0 at entry) +0x6fe4.
  The `lw` at 0xda63998 loads 4 bytes from [a0+6124] +0x594.
  The `lw` at 0xda639c8 loads 4 bytes from a0 (arg0 at entry) +0x6ff0.
  The `bgezall` at 0xda63774 calls DoDomain1 [0xda63020] with a0=sp-1536, a1=a1 at entry (arg1), a2=a0+28092, a3=sp-112, a4=[a0+28648], a5=sp-1536.
  The `jalr` at 0xda63784 calls (unknown callee) with a0=sp-112, a1=?, a2=?, a3=?.
  The `bgezall` at 0xda637b4 calls DoDomain1 [0xda63020] with a0=sp-1536, a1=?, a2=a0+28212, a3=sp-96, a4=[a0+28668].
  The `jalr` at 0xda637c4 calls (unknown callee) with a0=sp-96, a1=?, a2=?, a3=?.
  The `bgezall` at 0xda637f4 calls DoDomain1 [0xda63020] with a0=sp-1536, a1=?, a2=a0+28116, a3=sp-80, a4=[a0+28652].
  The `jalr` at 0xda63804 calls (unknown callee) with a0=sp-80, a1=?, a2=?, a3=?.
  The `bgezall` at 0xda63838 calls DoDomain1 [0xda63020] with a0=sp-1536, a1=?, a2=a0+28260, a3=sp-64, a4=[a0+28676].
  The `jalr` at 0xda63850 calls (unknown callee) with a0=sp-64, a1=?, a2=?, a3=?.
  The `bgezall` at 0xda6387c calls DoDomain1 [0xda63020] with a0=sp-1536, a1=?, a2=a0+28236, a3=sp-64, a4=[a0+28672].
  The `jalr` at 0xda63894 calls (unknown callee) with a0=sp-64, a1=?, a2=?, a3=?.
  The `bgezall` at 0xda638d4 calls DoDomain1 [0xda63020] with a0=sp-1536, a1=?, a2=a0+28188, a3=sp-96, a4=[a0+28664].
  The `jalr` at 0xda638ec calls (unknown callee) with a0=sp-96, a1=?, a2=?, a3=?.
  The `bgezall` at 0xda6392c calls DoDomain1 [0xda63020] with a0=sp-1536, a1=?, a2=a0+28164, a3=sp-96, a4=[a0+28660].
  The `jalr` at 0xda6394c calls (unknown callee) with a0=sp-96, a1=?, a2=?, a3=?.
  The `bgezall` at 0xda6398c calls DoDomain1 [0xda63020] with a0=sp-1536, a1=a1 at entry (arg1), a2=a0+28068, a3=sp-112, a4=[a0+28644], a5=sp-1536.
  The `jalr` at 0xda6399c calls (unknown callee) with a0=sp-112, a1=?, a2=?, a3=?.
  The `bgezall` at 0xda639d0 calls DoDomain1 [0xda63020] with a0=sp-1536, a1=?, a2=a0+28140, a3=sp-96, a4=[a0+28656].
  The `jalr` at 0xda639f4 calls (unknown callee) with a0=sp-96, a1=?, a2=?, a3=?.
  The `bgtz` branch at 0xda63734 targets 0xda63720, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The `beq` branch at 0xda63740 targets 0xda63960, is taken when v0(=[a0+3213]:1) == 0, and falls through when v0(=[a0+3213]:1) != 0.
  The `beq` branch at 0xda6374c targets 0xda63900, is taken when (a0(=[a0+1808]) & 0x2) == 0, and falls through when (a0(=[a0+1808]) & 0x2) != 0.
  The `beq` branch at 0xda63798 targets 0xda638b4, is taken when (a0(=[a0+1808]) & 0x40) == 0, and falls through when (a0(=[a0+1808]) & 0x40) != 0.
  The `beq` branch at 0xda637d8 targets 0xda63814, is taken when (a0(=[a0+1808]) & 0x4) == 0, and falls through when (a0(=[a0+1808]) & 0x4) != 0.
  The `beq` branch at 0xda63818 targets 0xda63860, is taken when (a0(=[a0+1808]) & 0x100) == 0, and falls through when (a0(=[a0+1808]) & 0x100) != 0.
  The `beq` branch at 0xda63858 targets 0xda638a0 and is always taken.
  The `beq` branch at 0xda63860 targets 0xda638a0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xda638b8 targets 0xda6390c, is taken when (a0(=[a0+1808]) & 0x20) == 0, and falls through when (a0(=[a0+1808]) & 0x20) != 0.
  The `beq` branch at 0xda638f8 targets 0xda637d4 and is always taken.
  The `beq` branch at 0xda63904 targets 0xda63794 and is always taken.
  The `beq` branch at 0xda63910 targets 0xda639b0, is taken when (a0(=[a0+1808]) & 0x10) == 0, and falls through when (a0(=[a0+1808]) & 0x10) != 0.
  The `beq` branch at 0xda63958 targets 0xda637d4 and is always taken.
  The `beq` branch at 0xda63964 targets 0xda63a08, is taken when (a0(=[a0+1808]) & 0x1) == 0, and falls through when (a0(=[a0+1808]) & 0x1) != 0.
  The `beq` branch at 0xda639a8 targets 0xda63794 and is always taken.
  The `beq` branch at 0xda639b4 targets 0xda637d4, is taken when (a0(=[a0+1808]) & 0x8) == 0, and falls through when (a0(=[a0+1808]) & 0x8) != 0.
  The `beq` branch at 0xda63a00 targets 0xda637d4 and is always taken.
  The `beq` branch at 0xda63a0c targets 0xda63794 and is always taken.
  The return at 0xda638ac has v0 = one of ret(?), ?.
- `ComputeFirstPartials` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda63aa0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda63aa0-0xda63b3c (156 bytes).
  It occupies 156 bytes.
  The `lwc1` at 0xda63aa0 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda63aa4 loads 4 bytes from a1 (arg1 at entry) +0xc.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lwc1` at 0xda63aa8, `lwc1` at 0xda63af4.
  6 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lwc1` at 0xda63aac, `lwc1` at 0xda63ac4, `lwc1` at 0xda63adc.
  The `lwc1` at 0xda63ab8 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda63abc stores 4 bytes to a1 (arg1 at entry) +0x0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lwc1` at 0xda63ac0, `lwc1` at 0xda63b0c.
  The `lwc1` at 0xda63ad0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda63ad4 stores 4 bytes to a1 (arg1 at entry) +0x4.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lwc1` at 0xda63ad8, `lwc1` at 0xda63b24.
  The `swc1` at 0xda63ae8 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lwc1` at 0xda63aec loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xda63af0 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0xda63b04 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `swc1` at 0xda63b08 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xda63b1c loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `swc1` at 0xda63b20 stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `swc1` at 0xda63b38 stores 4 bytes to a2 (arg2 at entry) +0x8.
  The return at 0xda63b34 has v0 = ?.
- `ComputeNormal2` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda63b40 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda63b40-0xda63bb8 (120 bytes).
  It occupies 120 bytes.
  2 such `lwc1` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lwc1` at 0xda63b40, `lwc1` at 0xda63b60.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda63b44, `lwc1` at 0xda63b68.
  2 such `lwc1` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lwc1` at 0xda63b48, `lwc1` at 0xda63b84.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda63b4c, `lwc1` at 0xda63b7c.
  The `swc1` at 0xda63b58 stores 4 bytes to a1 (arg1 at entry) +0x0.
  2 such `lwc1` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lwc1` at 0xda63b5c, `lwc1` at 0xda63b80.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda63b64, `lwc1` at 0xda63b78.
  The `swc1` at 0xda63b74 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda63b90 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0xda63b98 loads 4 bytes from a0 (arg0 at entry) +0x2dd8.
  The `jalr` at 0xda63ba4 calls (unknown callee) with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda63bb0 has v0 = ret(?).
- `DoDomain2` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda63bc0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda63bc0-0xda65ba8 (8168 bytes).
  It occupies 8168 bytes.
  The `lwc1` at 0xda63bc0 loads 4 bytes from a3 (arg3 at entry) +0x10.
  The `lwc1` at 0xda63bc4 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `lwc1` at 0xda63bec loads 4 bytes from a3 (arg3 at entry) +0x14.
  The `lwc1` at 0xda63bf0 loads 4 bytes from a3 (arg3 at entry) +0x18.
  The `lwc1` at 0xda63c18 loads 4 bytes from a0 (arg0 at entry) +0x2f4.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0xda63c20, `lw` at 0xda63c8c, `lw` at 0xda63d00.
  The `lw` at 0xda63c2c loads 4 bytes from a0 (arg0 at entry) +0x57c.
  The `lwc1` at 0xda63c44 loads 4 bytes from a0 (arg0 at entry) +0x2f8.
  17 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0xda63c50, `lw` at 0xda63c80, `lw` at 0xda63dd0.
  The `lw` at 0xda63c54 loads 4 bytes from a0 (arg0 at entry) +0x580.
  The `sw` at 0xda63c78 stores 4 bytes to a0 (arg0 at entry) +0x588.
  The `swc1` at 0xda63c84 stores 4 bytes to a0 (arg0 at entry) +0x2f8.
  The `sw` at 0xda63c88 stores 4 bytes to a0 (arg0 at entry) +0x580.
  The `lw` at 0xda63c98 loads 4 bytes from a3 (arg3 at entry) +0x0.
  69 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda63cfc, `swc1` at 0xda63dbc, `swc1` at 0xda63ed8.
  237 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda63d1c, `lwc1` at 0xda63d20, `lwc1` at 0xda63d60.
  76 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x39c, including `lwc1` at 0xda63e08, `lwc1` at 0xda63ea0, `lwc1` at 0xda63ee0.
  44 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3a0, including `lwc1` at 0xda63ea8, `lwc1` at 0xda63ee8, `lwc1` at 0xda63f30.
  24 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3a4, including `lwc1` at 0xda63eb0, `lwc1` at 0xda63ef0, `lwc1` at 0xda63f38.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3a8, including `lwc1` at 0xda63ec4, `lwc1` at 0xda63f00, `lwc1` at 0xda63f48.
  34 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x2fc, including `lwc1` at 0xda63ed0, `lwc1` at 0xda64474, `lwc1` at 0xda64714.
  27 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x300, including `lwc1` at 0xda63f14, `lwc1` at 0xda641f4, `lwc1` at 0xda64564.
  16 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x304, including `lwc1` at 0xda63f5c, `lwc1` at 0xda642c4, `lwc1` at 0xda64630.
  7 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x308, including `lwc1` at 0xda63fc4, `lwc1` at 0xda64390, `lwc1` at 0xda64b1c.
  The `sw` at 0xda64048 stores 4 bytes to a0 (arg0 at entry) +0x584.
  The `swc1` at 0xda64054 stores 4 bytes to a0 (arg0 at entry) +0x2f4.
  The `sw` at 0xda64058 stores 4 bytes to a0 (arg0 at entry) +0x57c.
  7 such `lwc1` accesses load 4 bytes from a5 (arg5 at entry) +0x0, including `lwc1` at 0xda65038, `lwc1` at 0xda65200, `lwc1` at 0xda6541c.
  17 such `swc1` accesses store 4 bytes to a4 (arg4 at entry) +0x0, including `swc1` at 0xda6504c, `swc1` at 0xda65064, `swc1` at 0xda6507c.
  6 such `lwc1` accesses load 4 bytes from (([a3] << 0x2) + a5) +0x0, including `lwc1` at 0xda65050, `lwc1` at 0xda65208, `lwc1` at 0xda65424.
  2 such `lwc1` accesses load 4 bytes from (([a3] << 0x2) + (([a3] << 0x2) + a5)) +0x0, including `lwc1` at 0xda65068, `lwc1` at 0xda656c0.
  The `lwc1` at 0xda65080 loads 4 bytes from (([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a5))) +0x0.
  3 such `lwc1` accesses load 4 bytes from (a5 + (([a3] + [a3]) << 0x2)) +0x0, including `lwc1` at 0xda65224, `lwc1` at 0xda65434, `lwc1` at 0xda6581c.
  2 such `lwc1` accesses load 4 bytes from (([a3] << 0x2) + (a5 + (([a3] + [a3]) << 0x2))) +0x0, including `lwc1` at 0xda6522c, `lwc1` at 0xda65824.
  The `lwc1` at 0xda65248 loads 4 bytes from ((([a3] + [a3]) << 0x2) + (a5 + (([a3] + [a3]) << 0x2))) +0x0.
  The `lwc1` at 0xda65250 loads 4 bytes from (([a3] << 0x2) + ((([a3] + [a3]) << 0x2) + (a5 + (([a3] + [a3]) << 0x2)))) +0x0.
  The `lwc1` at 0xda6544c loads 4 bytes from (a5 + ((([a3] + [a3]) + [a3]) << 0x2)) +0x0.
  The `lwc1` at 0xda65454 loads 4 bytes from (([a3] << 0x2) + (a5 + ((([a3] + [a3]) + [a3]) << 0x2))) +0x0.
  The `lwc1` at 0xda65464 loads 4 bytes from ((([a3] + [a3]) << 0x2) + (a5 + ((([a3] + [a3]) + [a3]) << 0x2))) +0x0.
  The `bgezall` at 0xda63c68 calls PreEvaluate [0xda62ae0] with a0=[a3+8], a1=?, a2=a0+924, a3=0xda62ae0.
  The `bgezall` at 0xda64038 calls PreEvaluate [0xda62ae0] with a0=[a3+4], a1=a1 at entry (arg1), a2=a0+764, a3=a3 at entry (arg3).
  The `bc1t` branch at 0xda63be4 targets 0xda63cd8, is taken when f5(=[a3+12]) == f6(=[a3+16]) (c.eq.s at 0xda63bd0), and falls through when not (f5(=[a3+12]) == f6(=[a3+16]) (c.eq.s at 0xda63bd0)).
  The `bc1t` branch at 0xda63bf8 targets 0xda63cd8, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `bc1f` branch at 0xda63c24 targets 0xda64024, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bne` branch at 0xda63c30 targets 0xda64024, is taken when at(=[a0+1404]) != a0(=[a3+4]), and falls through when at(=[a0+1404]) == a0(=[a3+4]).
  The `bc1f` branch at 0xda63c4c targets 0xda63c5c, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `beq` branch at 0xda63c58 targets 0xda63c8c, is taken when at(=[a0+1408]) == a0(=[a3+8]), and falls through when at(=[a0+1408]) != a0(=[a3+8]).
  The `beq` branch at 0xda63c94 targets 0xda64068, is taken when a0(=[a3+4]) == a2(=0x4), and falls through when a0(=[a3+4]) != a2(=0x4).
  The `beq` branch at 0xda63ca0 targets 0xda640ac, is taken when a0(=[a3+4]) == a3(=0x3), and falls through when a0(=[a3+4]) != a3(=0x3).
  The `beq` branch at 0xda63ca8 targets 0xda640f0, is taken when a0(=[a3+4]) == a5(=0x2), and falls through when a0(=[a3+4]) != a5(=0x2).
  The `beq` branch at 0xda63cb0 targets 0xda64134, is taken when a0(=[a3+4]) == a6(=0x1), and falls through when a0(=[a3+4]) != a6(=0x1).
  The `blez` branch at 0xda63cb8 targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xda63cd0 targets 0xda63cfc and is always taken.
  The `beq` branch at 0xda63cf4 targets 0xda64014, is taken when a3(?) == t2(=(([a3] << 0x2) + a5)), and falls through when a3(?) != t2(=(([a3] << 0x2) + a5)).
  The `blez` branch at 0xda63d0c targets 0xda63cf0, is taken when at(=[a3+4]) <= 0 (signed), and falls through when at(=[a3+4]) > 0 (signed).
  The `beq` branch at 0xda63d14 targets 0xda63dd0 and is always taken.
  The `bne` branch at 0xda63d30 targets 0xda63d1c, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xda63d44 targets 0xda63db4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xda63da4 targets 0xda63d60, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xda63dc8 targets 0xda63cf0, is taken when t1(?) >= a1(=[a3+4]) (signed), and falls through when t1(?) < a1(=[a3+4]) (signed).
  The `blez` branch at 0xda63de0 targets 0xda63db4, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda63dfc targets 0xda63d38, is taken when (t8(?) & 0x3) == 0, and falls through when (t8(?) & 0x3) != 0.
  The `beq` branch at 0xda63e04 targets 0xda63d20 and is always taken.
  The `blez` branch at 0xda63e14 targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xda64004 targets 0xda63ea0, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xda64060 targets 0xda63c40 and is always taken.
  The `beq` branch at 0xda6406c targets 0xda63e0c, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0xda64074 targets 0xda649ec, is taken when a0(=[a3+8]) == at(=0x3), and falls through when a0(=[a3+8]) != at(=0x3).
  The `beq` branch at 0xda6407c targets 0xda64ce0, is taken when a0(=[a3+8]) == v0(=0x2), and falls through when a0(=[a3+8]) != v0(=0x2).
  The `beq` branch at 0xda64084 targets 0xda64ffc, is taken when a0(=[a3+8]) == v1(=0x1), and falls through when a0(=[a3+8]) != v1(=0x1).
  The `blez` branch at 0xda6408c targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xda640a4 targets 0xda643a8 and is always taken.
  The `beq` branch at 0xda640b0 targets 0xda64b68, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0xda640b8 targets 0xda64de0, is taken when a0(=[a3+8]) == a3(=0x3), and falls through when a0(=[a3+8]) != a3(=0x3).
  The `beq` branch at 0xda640c0 targets 0xda651bc, is taken when a0(=[a3+8]) == at(=0x2), and falls through when a0(=[a3+8]) != at(=0x2).
  The `beq` branch at 0xda640c8 targets 0xda6565c, is taken when a0(=[a3+8]) == v0(=0x1), and falls through when a0(=[a3+8]) != v0(=0x1).
  The `blez` branch at 0xda640d0 targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xda640e8 targets 0xda64648 and is always taken.
  The `beq` branch at 0xda640f4 targets 0xda64ef8, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0xda640fc targets 0xda653d0, is taken when a0(=[a3+8]) == a3(=0x3), and falls through when a0(=[a3+8]) != a3(=0x3).
  The `beq` branch at 0xda64104 targets 0xda657bc, is taken when a0(=[a3+8]) == a5(=0x2), and falls through when a0(=[a3+8]) != a5(=0x2).
  The `beq` branch at 0xda6410c targets 0xda659ac, is taken when a0(=[a3+8]) == at(=0x1), and falls through when a0(=[a3+8]) != at(=0x1).
  The `blez` branch at 0xda64114 targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xda6412c targets 0xda647e8 and is always taken.
  The `beq` branch at 0xda64138 targets 0xda655c8, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0xda64140 targets 0xda65934, is taken when a0(=[a3+8]) == a3(=0x3), and falls through when a0(=[a3+8]) != a3(=0x3).
  The `beq` branch at 0xda64148 targets 0xda65aac, is taken when a0(=[a3+8]) == a5(=0x2), and falls through when a0(=[a3+8]) != a5(=0x2).
  The `beq` branch at 0xda64150 targets 0xda65b08, is taken when a0(=[a3+8]) == a6(=0x1), and falls through when a0(=[a3+8]) != a6(=0x1).
  The `blez` branch at 0xda64158 targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xda64170 targets 0xda64998 and is always taken.
  The `beq` branch at 0xda64184 targets 0xda641f4, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda641e4 targets 0xda641a0, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xda64204 targets 0xda642c4, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda64224 targets 0xda64248, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xda64240 targets 0xda6422c, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xda64254 targets 0xda642c4, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda642b4 targets 0xda64270, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xda642d4 targets 0xda64390, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda642f4 targets 0xda64318, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xda64310 targets 0xda642fc, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xda64324 targets 0xda64390, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda64384 targets 0xda64340, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xda643a0 targets 0xda64014, is taken when a3(?) == t2(=(([a3] << 0x2) + a5)), and falls through when a3(?) != t2(=(([a3] << 0x2) + a5)).
  The `blez` branch at 0xda643b0 targets 0xda64474, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda643d0 targets 0xda643f4, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xda643ec targets 0xda643d8, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xda64400 targets 0xda64474, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda64464 targets 0xda64420, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xda64484 targets 0xda641f4, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda644a4 targets 0xda64178, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xda644c0 targets 0xda644ac, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xda644c8 targets 0xda6417c and is always taken.
  The `bne` branch at 0xda644e4 targets 0xda644d0, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xda644f8 targets 0xda64564, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda64554 targets 0xda64510, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xda64574 targets 0xda64630, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda64594 targets 0xda645b8, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xda645b0 targets 0xda6459c, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xda645c4 targets 0xda64630, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda64624 targets 0xda645e0, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xda64640 targets 0xda64014, is taken when a3(?) == t2(=(([a3] << 0x2) + a5)), and falls through when a3(?) != t2(=(([a3] << 0x2) + a5)).
  The `blez` branch at 0xda64650 targets 0xda64714, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda64670 targets 0xda64694, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xda6468c targets 0xda64678, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xda646a0 targets 0xda64714, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda64704 targets 0xda646c0, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xda64724 targets 0xda64564, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda64744 targets 0xda644ec, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `beq` branch at 0xda6474c targets 0xda644d4 and is always taken.
  The `beq` branch at 0xda64760 targets 0xda647d0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda647c4 targets 0xda64780, is taken when a0(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a0(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xda647e0 targets 0xda64014, is taken when a3(?) == t2(=(([a3] << 0x2) + a5)), and falls through when a3(?) != t2(=(([a3] << 0x2) + a5)).
  The `blez` branch at 0xda647f0 targets 0xda648b4, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda64810 targets 0xda64834, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xda6482c targets 0xda64818, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xda64840 targets 0xda648b4, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda648a4 targets 0xda64860, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xda648c4 targets 0xda647d0, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda648e4 targets 0xda64754, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xda64900 targets 0xda648ec, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xda64908 targets 0xda64758 and is always taken.
  The `beq` branch at 0xda6491c targets 0xda64980, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda64974 targets 0xda64930, is taken when a0(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a0(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xda64990 targets 0xda64014, is taken when a3(?) == t2(=(([a3] << 0x2) + a5)), and falls through when a3(?) != t2(=(([a3] << 0x2) + a5)).
  The `blez` branch at 0xda649a0 targets 0xda64980, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda649c0 targets 0xda64910, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xda649dc targets 0xda649c8, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xda649e4 targets 0xda64914 and is always taken.
  The `blez` branch at 0xda649ec targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xda64b58 targets 0xda64a50, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xda64b60 targets 0xda64018 and is always taken.
  The `blez` branch at 0xda64b6c targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xda64ccc targets 0xda64bd0, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xda64cd8 targets 0xda64014 and is always taken.
  The `blez` branch at 0xda64ce0 targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xda64dd0 targets 0xda64d20, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xda64dd8 targets 0xda64018 and is always taken.
  The `blez` branch at 0xda64de0 targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xda64ee8 targets 0xda64e2c, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xda64ef0 targets 0xda64018 and is always taken.
  The `blez` branch at 0xda64ef8 targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xda64fec targets 0xda64f48, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xda64ff4 targets 0xda64018 and is always taken.
  The `blez` branch at 0xda64ffc targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xda65030 targets 0xda650ac, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xda650c0 targets 0xda651b4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xda651ac targets 0xda650dc, is taken when a0(?) != a6(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a5))))), and falls through when a0(?) == a6(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a5))))).
  The `beq` branch at 0xda651b4 targets 0xda64018 and is always taken.
  The `blez` branch at 0xda651bc targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xda651f8 targets 0xda65288, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xda652ac targets 0xda653c8, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda653c0 targets 0xda652d0, is taken when t1(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when t1(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xda653c8 targets 0xda64018 and is always taken.
  The `blez` branch at 0xda653d0 targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xda65414 targets 0xda65498, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xda654bc targets 0xda655c0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda655b8 targets 0xda654e0, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xda655c0 targets 0xda64018 and is always taken.
  The `blez` branch at 0xda655c8 targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xda6564c targets 0xda65600, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xda65654 targets 0xda64018 and is always taken.
  The `blez` branch at 0xda6565c targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xda65688 targets 0xda656e8, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xda656f8 targets 0xda657b4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xda657ac targets 0xda65710, is taken when a0(?) != a5(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a5)))), and falls through when a0(?) == a5(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a5)))).
  The `beq` branch at 0xda657b4 targets 0xda64018 and is always taken.
  The `blez` branch at 0xda657bc targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xda657f0 targets 0xda65854, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xda65868 targets 0xda6592c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda65924 targets 0xda65884, is taken when a3(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a3(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xda6592c targets 0xda64018 and is always taken.
  The `blez` branch at 0xda65934 targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xda6599c targets 0xda65960, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xda659a4 targets 0xda64018 and is always taken.
  The `blez` branch at 0xda659ac targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xda659d0 targets 0xda65a14, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xda65a20 targets 0xda65aa4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xda65a9c targets 0xda65a34, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xda65aa4 targets 0xda64018 and is always taken.
  The `blez` branch at 0xda65aac targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xda65af8 targets 0xda65acc, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xda65b00 targets 0xda64018 and is always taken.
  The `blez` branch at 0xda65b08 targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xda65b24 targets 0xda65b4c, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xda65b54 targets 0xda65ba0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xda65b98 targets 0xda65b64, is taken when a2(?) != t2(=(([a3] << 0x2) + a5)), and falls through when a2(?) == t2(=(([a3] << 0x2) + a5)).
  The `beq` branch at 0xda65ba0 targets 0xda64018 and is always taken.
  The return at 0xda63ce0 has v0 = ?.
  The return at 0xda6401c has v0 = one of ?, 0x2, (([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a5))), (([a3] << 0x2) + (([a3] << 0x2) + a5)), (([a3] << 0x2) + a5).
  The instructions from 0xda63ce8 to 0xda63cec are not reached by any path from the entry, and their branches are not listed.
- `DoDomain2WithDerivs` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda65bb0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda65bb0-0xda687cc (11292 bytes).
  It occupies 11292 bytes.
  The `lwc1` at 0xda65bb0 loads 4 bytes from a3 (arg3 at entry) +0x10.
  The `lwc1` at 0xda65bb8 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `lwc1` at 0xda65be4 loads 4 bytes from a3 (arg3 at entry) +0x14.
  The `lwc1` at 0xda65be8 loads 4 bytes from a3 (arg3 at entry) +0x18.
  The `lwc1` at 0xda65c10 loads 4 bytes from a0 (arg0 at entry) +0x2f4.
  The `lw` at 0xda65c28 loads 4 bytes from a0 (arg0 at entry) +0x584.
  6 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0xda65c30, `lw` at 0xda65c4c, `lw` at 0xda65c7c.
  The `lw` at 0xda65c34 loads 4 bytes from a0 (arg0 at entry) +0x57c.
  The `sw` at 0xda65c74 stores 4 bytes to a0 (arg0 at entry) +0x584.
  The `swc1` at 0xda65c80 stores 4 bytes to a0 (arg0 at entry) +0x2f4.
  The `sw` at 0xda65c84 stores 4 bytes to a0 (arg0 at entry) +0x57c.
  The `lwc1` at 0xda65c94 loads 4 bytes from a0 (arg0 at entry) +0x2f8.
  The `lw` at 0xda65ca4 loads 4 bytes from a0 (arg0 at entry) +0x588.
  18 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0xda65cac, `lw` at 0xda65cc8, `lw` at 0xda65cf4.
  The `lw` at 0xda65cb0 loads 4 bytes from a0 (arg0 at entry) +0x580.
  The `sw` at 0xda65cec stores 4 bytes to a0 (arg0 at entry) +0x588.
  The `swc1` at 0xda65cf8 stores 4 bytes to a0 (arg0 at entry) +0x2f8.
  The `sw` at 0xda65cfc stores 4 bytes to a0 (arg0 at entry) +0x580.
  The `lw` at 0xda65d0c loads 4 bytes from a3 (arg3 at entry) +0x0.
  171 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda65d84, `swc1` at 0xda65d88, `swc1` at 0xda65d8c.
  385 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda65df0, `lwc1` at 0xda65df4, `lwc1` at 0xda65df8.
  61 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4dc, including `lwc1` at 0xda65e78, `lwc1` at 0xda65fcc, `lwc1` at 0xda66070.
  61 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x39c, including `lwc1` at 0xda65e8c, `lwc1` at 0xda65f80, `lwc1` at 0xda66014.
  45 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e0, including `lwc1` at 0xda65ec8, `lwc1` at 0xda65fd4, `lwc1` at 0xda66078.
  45 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3a0, including `lwc1` at 0xda65ecc, `lwc1` at 0xda65f88, `lwc1` at 0xda6601c.
  22 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3a4, including `lwc1` at 0xda65f90, `lwc1` at 0xda66024, `lwc1` at 0xda660cc.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3a8, including `lwc1` at 0xda65fa4, `lwc1` at 0xda66034, `lwc1` at 0xda660dc.
  62 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x2fc, including `lwc1` at 0xda65fb0, `lwc1` at 0xda66000, `lwc1` at 0xda66558.
  31 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x43c, including `lwc1` at 0xda65fbc, `lwc1` at 0xda66564, `lwc1` at 0xda66974.
  22 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e4, including `lwc1` at 0xda65fdc, `lwc1` at 0xda66080, `lwc1` at 0xda66128.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e8, including `lwc1` at 0xda65fec, `lwc1` at 0xda66090, `lwc1` at 0xda66138.
  28 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x300, including `lwc1` at 0xda66048, `lwc1` at 0xda660a4, `lwc1` at 0xda66658.
  14 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x440, including `lwc1` at 0xda6605c, `lwc1` at 0xda66664, `lwc1` at 0xda66a74.
  20 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x304, including `lwc1` at 0xda660f0, `lwc1` at 0xda6614c, `lwc1` at 0xda66758.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x444, including `lwc1` at 0xda66104, `lwc1` at 0xda66764, `lwc1` at 0xda66860.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x308, including `lwc1` at 0xda661a8, `lwc1` at 0xda66224, `lwc1` at 0xda66444.
  5 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x448, including `lwc1` at 0xda661bc, `lwc1` at 0xda66450, `lwc1` at 0xda67050.
  10 such `lwc1` accesses load 4 bytes from a7 (arg7 at entry) +0x0, including `lwc1` at 0xda68140, `lwc1` at 0xda6817c, `lwc1` at 0xda68324.
  4 such `lwc1` accesses load 4 bytes from (([a3] << 0x2) + a7) +0x0, including `lwc1` at 0xda68148, `lwc1` at 0xda68184, `lwc1` at 0xda68540.
  2 such `lwc1` accesses load 4 bytes from (a7 + (([a3] + [a3]) << 0x2)) +0x0, including `lwc1` at 0xda68158, `lwc1` at 0xda68194.
  5 such `swc1` accesses store 4 bytes to a4 (arg4 at entry) +0x0, including `swc1` at 0xda6816c, `swc1` at 0xda68338, `swc1` at 0xda68378.
  5 such `swc1` accesses store 4 bytes to a5 (arg5 at entry) +0x0, including `swc1` at 0xda68178, `swc1` at 0xda68344, `swc1` at 0xda68388.
  5 such `swc1` accesses store 4 bytes to a6 (arg6 at entry) +0x0, including `swc1` at 0xda681c0, `swc1` at 0xda6835c, `swc1` at 0xda683b4.
  The `lwc1` at 0xda68370 loads 4 bytes from a4 (arg4 at entry) +0x0.
  The `lwc1` at 0xda68380 loads 4 bytes from a5 (arg5 at entry) +0x0.
  The `lwc1` at 0xda6839c loads 4 bytes from a6 (arg6 at entry) +0x0.
  The `bgezall` at 0xda65c64 calls PreEvaluateWithDeriv [0xda62c90] with a0=[a3+4], a1=a1 at entry (arg1), a2=a0+764, a3=a0+1084.
  The `bgezall` at 0xda65cdc calls PreEvaluateWithDeriv [0xda62c90] with a0=[a3+8], a1=?, a2=a0+924, a3=a0+1244.
  The `bc1t` branch at 0xda65bdc targets 0xda65d54, is taken when f4(=[a3+12]) == f5(=[a3+16]) (c.eq.s at 0xda65bc8), and falls through when not (f4(=[a3+12]) == f5(=[a3+16]) (c.eq.s at 0xda65bc8)).
  The `bc1t` branch at 0xda65bf0 targets 0xda65d54, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `bc1f` branch at 0xda65c20 targets 0xda65c48, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bne` branch at 0xda65c2c targets 0xda65c50, is taken when at(=[a0+1412]) != a2(=0x1), and falls through when at(=[a0+1412]) == a2(=0x1).
  The `bne` branch at 0xda65c38 targets 0xda65c50, is taken when v0(=[a0+1404]) != a0(=[a3+4]), and falls through when v0(=[a0+1404]) == a0(=[a3+4]).
  The `beq` branch at 0xda65c40 targets 0xda65c90 and is always taken.
  The `bc1f` branch at 0xda65c9c targets 0xda65cc4, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bne` branch at 0xda65ca8 targets 0xda65ccc, is taken when at(=[a0+1416]) != a2(=0x1), and falls through when at(=[a0+1416]) == a2(=0x1).
  The `beq` branch at 0xda65cb4 targets 0xda65d00, is taken when v0(=[a0+1408]) == a0(=[a3+8]), and falls through when v0(=[a0+1408]) != a0(=[a3+8]).
  The `beq` branch at 0xda65cbc targets 0xda65ccc and is always taken.
  The `beq` branch at 0xda65d08 targets 0xda66290, is taken when a0(=[a3+4]) == a3(=0x4), and falls through when a0(=[a3+4]) != a3(=0x4).
  The `beq` branch at 0xda65d14 targets 0xda662e0, is taken when a0(=[a3+4]) == a4(=0x3), and falls through when a0(=[a3+4]) != a4(=0x3).
  The `beq` branch at 0xda65d1c targets 0xda66330, is taken when a0(=[a3+4]) == a5(=0x2), and falls through when a0(=[a3+4]) != a5(=0x2).
  The `beq` branch at 0xda65d24 targets 0xda66380, is taken when a0(=[a3+4]) == a2(=0x1), and falls through when a0(=[a3+4]) != a2(=0x1).
  The `blez` branch at 0xda65d2c targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xda65d4c targets 0xda65d84 and is always taken.
  The `beq` branch at 0xda65d7c targets 0xda66280, is taken when t1(?) == t2(=(([a3] << 0x2) + a7)), and falls through when t1(?) != t2(=(([a3] << 0x2) + a7)).
  The `blez` branch at 0xda65d98 targets 0xda65d70, is taken when at(=[a3+4]) <= 0 (signed), and falls through when at(=[a3+4]) > 0 (signed).
  The `beq` branch at 0xda65da0 targets 0xda65e78 and is always taken.
  The `beq` branch at 0xda65dd8 targets 0xda65e38, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xda65e24 targets 0xda65df0, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xda65e70 targets 0xda65d70, is taken when t3(?) >= a1(=[a3+4]) (signed), and falls through when t3(?) < a1(=[a3+4]) (signed).
  The `bne` branch at 0xda65eac targets 0xda65e38, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda65ebc targets 0xda65db0, is taken when (t9(?) & 0x1) == 0, and falls through when (t9(?) & 0x1) != 0.
  The `beq` branch at 0xda65ee0 targets 0xda65db0 and is always taken.
  The `blez` branch at 0xda65ef0 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xda66270 targets 0xda65f80, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xda66294 targets 0xda65ee8, is taken when a0(=[a3+8]) == a3(=0x4), and falls through when a0(=[a3+8]) != a3(=0x4).
  The `beq` branch at 0xda6629c targets 0xda66e18, is taken when a0(=[a3+8]) == a1(=0x3), and falls through when a0(=[a3+8]) != a1(=0x3).
  The `beq` branch at 0xda662a4 targets 0xda6739c, is taken when a0(=[a3+8]) == at(=0x2), and falls through when a0(=[a3+8]) != at(=0x2).
  The `beq` branch at 0xda662ac targets 0xda67970, is taken when a0(=[a3+8]) == a2(=0x1), and falls through when a0(=[a3+8]) != a2(=0x1).
  The `blez` branch at 0xda662b4 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xda662d8 targets 0xda66480 and is always taken.
  The `beq` branch at 0xda662e4 targets 0xda670ec, is taken when a0(=[a3+8]) == a3(=0x4), and falls through when a0(=[a3+8]) != a3(=0x4).
  The `beq` branch at 0xda662ec targets 0xda67590, is taken when a0(=[a3+8]) == a4(=0x3), and falls through when a0(=[a3+8]) != a4(=0x3).
  The `beq` branch at 0xda662f4 targets 0xda67ae4, is taken when a0(=[a3+8]) == at(=0x2), and falls through when a0(=[a3+8]) != at(=0x2).
  The `beq` branch at 0xda662fc targets 0xda67ecc, is taken when a0(=[a3+8]) == a2(=0x1), and falls through when a0(=[a3+8]) != a2(=0x1).
  The `blez` branch at 0xda66304 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xda66328 targets 0xda66890 and is always taken.
  The `beq` branch at 0xda66334 targets 0xda6779c, is taken when a0(=[a3+8]) == a3(=0x4), and falls through when a0(=[a3+8]) != a3(=0x4).
  The `beq` branch at 0xda6633c targets 0xda67c68, is taken when a0(=[a3+8]) == a4(=0x3), and falls through when a0(=[a3+8]) != a4(=0x3).
  The `beq` branch at 0xda66344 targets 0xda67fec, is taken when a0(=[a3+8]) == a5(=0x2), and falls through when a0(=[a3+8]) != a5(=0x2).
  The `beq` branch at 0xda6634c targets 0xda682f8, is taken when a0(=[a3+8]) == a2(=0x1), and falls through when a0(=[a3+8]) != a2(=0x1).
  The `blez` branch at 0xda66354 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xda66378 targets 0xda66ba0 and is always taken.
  The `beq` branch at 0xda66384 targets 0xda67dd4, is taken when a0(=[a3+8]) == a3(=0x4), and falls through when a0(=[a3+8]) != a3(=0x4).
  The `beq` branch at 0xda6638c targets 0xda68100, is taken when a0(=[a3+8]) == a4(=0x3), and falls through when a0(=[a3+8]) != a4(=0x3).
  The `beq` branch at 0xda66394 targets 0xda68504, is taken when a0(=[a3+8]) == a5(=0x2), and falls through when a0(=[a3+8]) != a5(=0x2).
  The `beq` branch at 0xda6639c targets 0xda68698, is taken when a0(=[a3+8]) == a2(=0x1), and falls through when a0(=[a3+8]) != a2(=0x1).
  The `blez` branch at 0xda663a4 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xda663c8 targets 0xda66db0 and is always taken.
  The `beq` branch at 0xda663e4 targets 0xda66444, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda66434 targets 0xda66400, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xda66478 targets 0xda66280, is taken when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `bne` branch at 0xda6649c targets 0xda66558, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda664c0 targets 0xda664e4, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xda664f8 targets 0xda66558, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xda66544 targets 0xda66510, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda66598 targets 0xda66658, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda665bc targets 0xda665e0, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xda665f4 targets 0xda66658, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xda66644 targets 0xda66610, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda66698 targets 0xda66758, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda666bc targets 0xda666e0, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xda666f4 targets 0xda66758, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xda66744 targets 0xda66710, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda66798 targets 0xda66444, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda667bc targets 0xda663d0, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xda667dc targets 0xda663d0 and is always taken.
  The `beq` branch at 0xda667f8 targets 0xda66854, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xda66844 targets 0xda66810, is taken when a0(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a0(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xda66888 targets 0xda66280, is taken when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `bne` branch at 0xda668ac targets 0xda66968, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda668d0 targets 0xda668f4, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xda66908 targets 0xda66968, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xda66954 targets 0xda66920, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda669a8 targets 0xda66a68, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda669cc targets 0xda669f0, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xda66a04 targets 0xda66a68, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xda66a54 targets 0xda66a20, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda66aa8 targets 0xda66854, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda66acc targets 0xda667e4, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xda66aec targets 0xda667e4 and is always taken.
  The `beq` branch at 0xda66b08 targets 0xda66b64, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xda66b54 targets 0xda66b20, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xda66b98 targets 0xda66280, is taken when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `bne` branch at 0xda66bbc targets 0xda66c78, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda66be0 targets 0xda66c04, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xda66c18 targets 0xda66c78, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xda66c64 targets 0xda66c30, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda66cb8 targets 0xda66b64, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda66cdc targets 0xda66af4, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xda66cfc targets 0xda66af4 and is always taken.
  The `beq` branch at 0xda66d18 targets 0xda66d74, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xda66d64 targets 0xda66d30, is taken when a0(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a0(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xda66da8 targets 0xda66280, is taken when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `bne` branch at 0xda66dcc targets 0xda66d74, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda66df0 targets 0xda66d04, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xda66e10 targets 0xda66d04 and is always taken.
  The `blez` branch at 0xda66e18 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xda670dc targets 0xda66e90, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xda670e4 targets 0xda66284 and is always taken.
  The `blez` branch at 0xda670f4 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xda67388 targets 0xda67170, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xda67394 targets 0xda66280 and is always taken.
  The `blez` branch at 0xda6739c targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xda67580 targets 0xda673e4, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xda67588 targets 0xda66284 and is always taken.
  The `blez` branch at 0xda67590 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xda6778c targets 0xda675e4, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xda67794 targets 0xda66284 and is always taken.
  The `blez` branch at 0xda6779c targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xda6795c targets 0xda677fc, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xda67968 targets 0xda66280 and is always taken.
  The `blez` branch at 0xda67970 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xda67ad4 targets 0xda679a8, is taken when a4(?) != a5(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a7))))), and falls through when a4(?) == a5(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a7))))).
  The `beq` branch at 0xda67adc targets 0xda66284 and is always taken.
  The `blez` branch at 0xda67ae4 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xda67c58 targets 0xda67b24, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xda67c60 targets 0xda66284 and is always taken.
  The `blez` branch at 0xda67c68 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xda67dc4 targets 0xda67cb0, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xda67dcc targets 0xda66284 and is always taken.
  The `blez` branch at 0xda67dd4 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xda67ebc targets 0xda67e14, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xda67ec4 targets 0xda66284 and is always taken.
  The `blez` branch at 0xda67ecc targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xda67fdc targets 0xda67efc, is taken when a0(?) != a4(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a7)))), and falls through when a0(?) == a4(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a7)))).
  The `beq` branch at 0xda67fe4 targets 0xda66284 and is always taken.
  The `blez` branch at 0xda67fec targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xda680f0 targets 0xda68024, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xda680f8 targets 0xda66284 and is always taken.
  The `blez` branch at 0xda68100 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xda68138 targets 0xda681c4, is taken when (a7(=[a3]) & 0x1) == 0, and falls through when (a7(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xda681dc targets 0xda682f0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xda682e8 targets 0xda681fc, is taken when a2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when a2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xda682f0 targets 0xda66284 and is always taken.
  The `blez` branch at 0xda682f8 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xda6831c targets 0xda683b8, is taken when (a7(=[a3]) & 0x1) == 0, and falls through when (a7(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xda683c8 targets 0xda684fc, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xda684f4 targets 0xda683e0, is taken when a0(?) != t2(=(([a3] << 0x2) + a7)), and falls through when a0(?) == t2(=(([a3] << 0x2) + a7)).
  The `beq` branch at 0xda684fc targets 0xda66284 and is always taken.
  The `blez` branch at 0xda68504 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xda68530 targets 0xda685a0, is taken when (a7(=[a3]) & 0x1) == 0, and falls through when (a7(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xda685b4 targets 0xda68690, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xda68688 targets 0xda685d0, is taken when t0(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t0(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xda68690 targets 0xda66284 and is always taken.
  The `blez` branch at 0xda68698 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xda686bc targets 0xda68710, is taken when (a7(=[a3]) & 0x1) == 0, and falls through when (a7(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xda68720 targets 0xda687c4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xda687bc targets 0xda68738, is taken when a3(?) != t2(=(([a3] << 0x2) + a7)), and falls through when a3(?) == t2(=(([a3] << 0x2) + a7)).
  The `beq` branch at 0xda687c4 targets 0xda66284 and is always taken.
  The return at 0xda65d5c has v0 = ?.
  The return at 0xda66288 has v0 = one of ?, a7.
  The instructions from 0xda65d64 to 0xda65d6c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda65da8 to 0xda65dac are not reached by any path from the entry, and their branches are not listed.
- `DoEvalCoord2` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda687d0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda687d0-0xda68d00 (1328 bytes).
  It occupies 1328 bytes.
  The `lw` at 0xda6881c loads 4 bytes from ?.
  The `sw` at 0xda68828 stores 4 bytes to ?.
  12 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xda6882c, `sw` at 0xda688c8, `sw` at 0xda68920.
  The `lw` at 0xda68830 loads 4 bytes from a0 (arg0 at entry) +0x700.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x714, including `lw` at 0xda68848, `lw` at 0xda688d4, `lw` at 0xda68928.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7028, including `lw` at 0xda68878, `lw` at 0xda68bb4.
  14 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0xda688bc, `lw` at 0xda68918, `lw` at 0xda68958.
  The `lbu` at 0xda688e4 loads 1 byte from a0 (arg0 at entry) +0xc8d.
  The `lw` at 0xda68908 loads 4 bytes from a0 (arg0 at entry) +0x700c.
  The `lw` at 0xda68948 loads 4 bytes from a0 (arg0 at entry) +0x7020.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x17ec, including `lw` at 0xda6897c, `lw` at 0xda689a4, `lw` at 0xda689cc.
  The `lw` at 0xda68980 loads 4 bytes from [a0+6124] +0x594.
  The `lw` at 0xda689a8 loads 4 bytes from [a0+6124] +0x5cc.
  The `lw` at 0xda689d0 loads 4 bytes from [a0+6124] +0x5fc.
  The `lw` at 0xda689f8 loads 4 bytes from [a0+6124] +0x67c.
  The `lw` at 0xda68a50 loads 4 bytes from a0 (arg0 at entry) +0x701c.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xdd0, including `lwc1` at 0xda68a60, `lwc1` at 0xda68b28, `lwc1` at 0xda68c60.
  3 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x30, including `swc1` at 0xda68a78, `swc1` at 0xda68b3c, `swc1` at 0xda68c74.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7024, including `lw` at 0xda68aa4, `lw` at 0xda68c94.
  The `lw` at 0xda68b0c loads 4 bytes from a0 (arg0 at entry) +0x7018.
  2 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x2c, including `swc1` at 0xda68b24, `swc1` at 0xda68c58.
  The `lw` at 0xda68b68 loads 4 bytes from a0 (arg0 at entry) +0x7010.
  The `lw` at 0xda68bfc loads 4 bytes from a0 (arg0 at entry) +0x7008.
  The `lw` at 0xda68c40 loads 4 bytes from a0 (arg0 at entry) +0x7014.
  The `swc1` at 0xda68c5c stores 4 bytes to a3 (arg3 at entry) +0x28.
  The `lw` at 0xda68cc4 loads 4 bytes from [a0+6124] +0x52c.
  The `lw` at 0xda68ce4 loads 4 bytes from [a0+6124] +0x50c.
  The `bgezall` at 0xda68880 calls DoDomain2WithDerivs [0xda65bb0] with a0=sp-1584, a1=?, a2=[a0+1812], a3=a0+28604, a4=a3+52, a5=sp-160, a6=sp-144, a7=[a0+28712].
  The `bgezall` at 0xda68898 calls ComputeFirstPartials [0xda63aa0] with a0=a3+52, a1=sp-160, a2=sp-144, a3=?.
  The `bgezall` at 0xda688b4 calls ComputeNormal2 [0xda63b40] with a0=a0 at entry (arg0), a1=a3+20, a2=sp-160, a3=sp-144.
  The `bgezall` at 0xda68910 calls DoDomain2 [0xda63bc0] with a0=sp-1584, a1=?, a2=[a0+1812], a3=a0+28324, a4=a3+4, a5=[a0+28684].
  The `bgezall` at 0xda68950 calls DoDomain2 [0xda63bc0] with a0=sp-1584, a1=?, a2=[a0+1812], a3=a0+28524, a4=a3+36, a5=[a0+28704].
  The `jalr` at 0xda68988 calls (unknown callee) with a0=a3+4, a1=?, a2=?, a3=?.
  The `jalr` at 0xda689b0 calls (unknown callee) with a0=a3+4, a1=?, a2=?, a3=?.
  The `jalr` at 0xda689d8 calls (unknown callee) with a0=a3+20, a1=?, a2=?, a3=?.
  The `jalr` at 0xda68a00 calls (unknown callee) with a0=a3+36, a1=?, a2=?, a3=?.
  The `bgezall` at 0xda68a58 calls DoDomain2 [0xda63bc0] with a0=sp-1584, a1=?, a2=[a0+1812], a3=a0+28484, a4=a3+36, a5=[a0+28700].
  The `bgezall` at 0xda68aac calls DoDomain2WithDerivs [0xda65bb0] with a0=sp-1584, a1=?, a2=[a0+1812], a3=a0+28564, a4=a3+52, a5=sp-128, a6=sp-112, a7=[a0+28708].
  The `bgezall` at 0xda68ac8 calls ComputeNormal2 [0xda63b40] with a0=a0 at entry (arg0), a1=a3+20, a2=sp-128, a3=sp-112.
  The `bgezall` at 0xda68b14 calls DoDomain2 [0xda63bc0] with a0=sp-1584, a1=?, a2=[a0+1812], a3=a0+28444, a4=a3+36, a5=[a0+28696].
  The `bgezall` at 0xda68b70 calls DoDomain2 [0xda63bc0] with a0=sp-1584, a1=?, a2=[a0+1812], a3=a0+28364, a4=a3+20, a5=[a0+28688], a6=sp-1584.
  The `bgezall` at 0xda68bbc calls DoDomain2 [0xda63bc0] with a0=sp-1584, a1=?, a2=[a0+1812], a3=a0+28604, a4=a3+52, a5=[a0+28712].
  The `bgezall` at 0xda68c04 calls DoDomain2 [0xda63bc0] with a0=sp-1584, a1=?, a2=[a0+1812], a3=a0+28284, a4=a3+4, a5=[a0+28680].
  The `bgezall` at 0xda68c48 calls DoDomain2 [0xda63bc0] with a0=sp-1584, a1=?, a2=[a0+1812], a3=a0+28404, a4=a3+36, a5=[a0+28692].
  The `bgezall` at 0xda68c9c calls DoDomain2 [0xda63bc0] with a0=sp-1584, a1=?, a2=[a0+1812], a3=a0+28564, a4=a3+52, a5=[a0+28708].
  The `jalr` at 0xda68cd0 calls (unknown callee) with a0=a3+52, a1=?, a2=?, a3=?.
  The `jalr` at 0xda68cf0 calls (unknown callee) with a0=a3+52, a1=?, a2=?, a3=?.
  The `bgtz` branch at 0xda68824 targets 0xda68810, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The `beq` branch at 0xda68844 targets 0xda68b40, is taken when (v0(=[a0+1792]) & v1(=0x800000)) == 0, and falls through when (v0(=[a0+1792]) & v1(=0x800000)) != 0.
  The `beq` branch at 0xda68850 targets 0xda68a7c, is taken when (a2(=[a0+1812]) & 0x100) == 0, and falls through when (a2(=[a0+1812]) & 0x100) != 0.
  The `beq` branch at 0xda688e8 targets 0xda68be0, is taken when at(=[a0+3213]:1) == 0, and falls through when at(=[a0+3213]:1) != 0.
  The `beq` branch at 0xda688f0 targets 0xda6892c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xda68930 targets 0xda68a34, is taken when (a2(=[a0+1812]) & 0x40) == 0, and falls through when (a2(=[a0+1812]) & 0x40) != 0.
  The `beq` branch at 0xda68974 targets 0xda68998, is taken when (a0(?) & 0x1) == 0, and falls through when (a0(?) & 0x1) != 0.
  The `beq` branch at 0xda6899c targets 0xda689c4, is taken when (a0(?) & 0x2) == 0, and falls through when (a0(?) & 0x2) != 0.
  The `beq` branch at 0xda689c4 targets 0xda689ec, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xda689ec targets 0xda68a10, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xda68a14 targets 0xda68ce0, is taken when s2(=one of -0x1, 0x3, 0x4) == at(=0x3), and falls through when s2(=one of -0x1, 0x3, 0x4) != at(=0x3).
  The `beq` branch at 0xda68a1c targets 0xda68cc0, is taken when v0(=one of -0x1, 0x3, 0x4) == v1(=0x4), and falls through when v0(=one of -0x1, 0x3, 0x4) != v1(=0x4).
  The `beq` branch at 0xda68a38 targets 0xda68af0, is taken when (a2(=[a0+1812]) & 0x20) == 0, and falls through when (a2(=[a0+1812]) & 0x20) != 0.
  The `beq` branch at 0xda68a74 targets 0xda68968 and is always taken.
  The `beq` branch at 0xda68a80 targets 0xda688d8, is taken when (a2(=[a0+1812]) & 0x80) == 0, and falls through when (a2(=[a0+1812]) & 0x80) != 0.
  The `beq` branch at 0xda68ae8 targets 0xda688d8 and is always taken.
  The `beq` branch at 0xda68af4 targets 0xda68c24, is taken when (a2(=[a0+1812]) & 0x10) == 0, and falls through when (a2(=[a0+1812]) & 0x10) != 0.
  The `beq` branch at 0xda68b38 targets 0xda68968 and is always taken.
  The `beq` branch at 0xda68b44 targets 0xda68b90, is taken when (a2(=[a0+1812]) & 0x4) == 0, and falls through when (a2(=[a0+1812]) & 0x4) != 0.
  The `beq` branch at 0xda68b88 targets 0xda68b98 and is always taken.
  The `beq` branch at 0xda68b9c targets 0xda68c78, is taken when (a2(=[a0+1812]) & 0x100) == 0, and falls through when (a2(=[a0+1812]) & 0x100) != 0.
  The `beq` branch at 0xda68bd8 targets 0xda688e4 and is always taken.
  The `beq` branch at 0xda68be4 targets 0xda6892c, is taken when (a2(=[a0+1812]) & 0x1) == 0, and falls through when (a2(=[a0+1812]) & 0x1) != 0.
  The `beq` branch at 0xda68c1c targets 0xda6892c and is always taken.
  The `beq` branch at 0xda68c28 targets 0xda68968, is taken when (a2(=[a0+1812]) & 0x8) == 0, and falls through when (a2(=[a0+1812]) & 0x8) != 0.
  The `beq` branch at 0xda68c70 targets 0xda68968 and is always taken.
  The `beq` branch at 0xda68c7c targets 0xda688e4, is taken when (a2(=[a0+1812]) & 0x80) == 0, and falls through when (a2(=[a0+1812]) & 0x80) != 0.
  The `beq` branch at 0xda68cb8 targets 0xda688e4 and is always taken.
  The `beq` branch at 0xda68cd8 targets 0xda68a24 and is always taken.
  The `beq` branch at 0xda68cf8 targets 0xda68a24 and is always taken.
  The return at 0xda68a2c has v0 = one of -0x1, 0x3, 0x4, ret(?).
- `sendChange` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda69030 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda69030-0xda69194 (356 bytes).
  It occupies 356 bytes.
  The `lwc1` at 0xda69030 loads 4 bytes from a0 (arg0 at entry) +0x1b0.
  The `lwc1` at 0xda69034 loads 4 bytes from a0 (arg0 at entry) +0x1b4.
  The `lwc1` at 0xda69038 loads 4 bytes from a0 (arg0 at entry) +0x1b8.
  The `lwc1` at 0xda6903c loads 4 bytes from a0 (arg0 at entry) +0x1bc.
  6 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0xda6904c, `lw` at 0xda69084, `lw` at 0xda690ac.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x17ec, including `lw` at 0xda69070, `lw` at 0xda69098, `lw` at 0xda690c0.
  The `lw` at 0xda69074 loads 4 bytes from [a0+6124] +0x594.
  The `lw` at 0xda6909c loads 4 bytes from [a0+6124] +0x67c.
  The `lw` at 0xda690c4 loads 4 bytes from [a0+6124] +0x5fc.
  The `lw` at 0xda690ec loads 4 bytes from [a0+6124] +0x50c.
  The `lw` at 0xda69110 loads 4 bytes from a0 (arg0 at entry) +0x700.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2e38, including `lw` at 0xda69120, `lw` at 0xda69144.
  The `swc1` at 0xda69140 stores 4 bytes to a0 (arg0 at entry) +0x1bc.
  The `swc1` at 0xda69148 stores 4 bytes to a0 (arg0 at entry) +0x1b8.
  The `swc1` at 0xda6914c stores 4 bytes to a0 (arg0 at entry) +0x1b4.
  The `swc1` at 0xda69158 stores 4 bytes to a0 (arg0 at entry) +0x1b0.
  The `lw` at 0xda69178 loads 4 bytes from [a0+6124] +0x52c.
  The `jalr` at 0xda6907c calls (unknown callee) with a0=a1+4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a1].
  The `jalr` at 0xda690a4 calls (unknown callee) with a0=a1+36, a1=?, a2=?, a3=[a1].
  The `jalr` at 0xda690cc calls (unknown callee) with a0=a1+20, a1=?, a2=?, a3=[a1].
  The `jalr` at 0xda690f4 calls (unknown callee) with a0=a1+52, a1=?, a2=?, a3=[a1].
  The `jalr` at 0xda69128 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a1].
  The `jalr` at 0xda69154 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xda69180 calls (unknown callee) with a0=a1+52, a1=?, a2=?, a3=[a1].
  The `beq` branch at 0xda69068 targets 0xda6908c, is taken when (a3(=[a1]) & 0x1) == 0, and falls through when (a3(=[a1]) & 0x1) != 0.
  The `beq` branch at 0xda69090 targets 0xda690b8, is taken when (a3(=[a1]) & 0x8) == 0, and falls through when (a3(=[a1]) & 0x8) != 0.
  The `beq` branch at 0xda690b8 targets 0xda690e0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xda690e0 targets 0xda6916c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xda69108 targets 0xda69160, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xda69118 targets 0xda69160, is taken when (v0(=[a0+1792]) & 0x80) == 0, and falls through when (v0(=[a0+1792]) & 0x80) != 0.
  The `beq` branch at 0xda6916c targets 0xda69108, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xda6918c targets 0xda69104 and is always taken.
  The return at 0xda69164 has v0 = one of ?, ret(?).
- `IsLegalRange` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab63f0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdab63f0-0xdab6460 (112 bytes).
  It occupies 112 bytes.
  The `jalr` at 0xdab643c calls __glSetError [0xdb11f10] with a0=0x501, a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `bltz` branch at 0xdab63f0 targets 0xdab6454, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `beq` branch at 0xdab63fc targets 0xdab6454, is taken when a1 >= 0x2 (signed), and falls through when a1 < 0x2 (signed).
  The `bltz` branch at 0xdab6410 targets 0xdab6434, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `bne` branch at 0xdab6418 targets 0xdab6434, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xdab6424 targets 0xdab6438, is taken when a2(=0x8000) < a0(?) (signed), and falls through when a2(=0x8000) >= a0(?) (signed).
  The return at 0xdab642c has v0 = 0x1.
  The return at 0xdab644c has v0 = 0x0.
  The return at 0xdab6458 has v0 = 0x0.
- `Clampf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabc5e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdabc5e0-0xdabc610 (48 bytes).
  It occupies 48 bytes.
  The `bc1t` branch at 0xdabc5e4 targets 0xdabc608, is taken when f12 < f13 (c.lt.s at 0xdabc5e0), and falls through when not (f12 < f13 (c.lt.s at 0xdabc5e0)).
  The `bc1f` branch at 0xdabc5f0 targets 0xdabc600, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The return at 0xdabc5f8 has v0 = ?.
  The return at 0xdabc600 has v0 = ?.
  The return at 0xdabc608 has v0 = ?.
- `vvec` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad07e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad07e0-0xdad08bc (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0xdad07e0 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0xdad07e8 loads 4 bytes from a2 (arg2 at entry) +0xc.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xdad07f8, `lwc1` at 0xdad089c.
  The `lwc1` at 0xdad07fc loads 4 bytes from a1 (arg1 at entry) +0xc.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xdad0800, `lwc1` at 0xdad0880, `lwc1` at 0xdad0898.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xdad0804, `lwc1` at 0xdad0888, `lwc1` at 0xdad0894.
  5 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `swc1` at 0xdad0814, `swc1` at 0xdad083c, `swc1` at 0xdad0868.
  5 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `swc1` at 0xdad0818, `swc1` at 0xdad0840, `swc1` at 0xdad0870.
  5 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `swc1` at 0xdad081c, `swc1` at 0xdad0844, `swc1` at 0xdad0878.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lwc1` at 0xdad0820, `lwc1` at 0xdad0854.
  The `lwc1` at 0xdad0824 loads 4 bytes from a2 (arg2 at entry) +0xc.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lwc1` at 0xdad0828, `lwc1` at 0xdad085c.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lwc1` at 0xdad082c, `lwc1` at 0xdad0850.
  The `beq` branch at 0xdad07ec targets 0xdad0850, is taken when at(=([a1+12] << 0x1)) == 0, and falls through when at(=([a1+12] << 0x1)) != 0.
  The `beq` branch at 0xdad07f4 targets 0xdad087c, is taken when a4(=([a2+12] << 0x1)) == 0, and falls through when a4(=([a2+12] << 0x1)) != 0.
  The `beq` branch at 0xdad0858 targets 0xdad0894, is taken when a4(=([a2+12] << 0x1)) == 0, and falls through when a4(=([a2+12] << 0x1)) != 0.
  The return at 0xdad0848 has v0 = ?.
  The return at 0xdad0874 has v0 = ?.
  The return at 0xdad088c has v0 = ?.
  The return at 0xdad08b4 has v0 = ?.
- `Dot` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad17e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad17e0-0xdad1808 (40 bytes).
  It occupies 40 bytes.
  The `lwc1` at 0xdad17e0 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xdad17e4 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xdad17e8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xdad17ec loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0xdad17f0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lwc1` at 0xdad17f8 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The return at 0xdad1800 has v0 = ?.
- `SphereGen` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad1810 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad1810-0xdad18fc (236 bytes).
  It occupies 236 bytes.
  The `lw` at 0xdad181c loads 4 bytes from a0 (arg0 at entry) +0x2dd8.
  The `lwc1` at 0xdad1854 loads 4 bytes from a1 (arg1 at entry) +0x28.
  The `lwc1` at 0xdad185c loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `lwc1` at 0xdad1860 loads 4 bytes from a1 (arg1 at entry) +0x20.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xdcc, including `lwc1` at 0xdad18ac, `lwc1` at 0xdad18cc, `lwc1` at 0xdad18e4.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xdad18c8, `swc1` at 0xdad18e0.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xdad18d8, `swc1` at 0xdad18e8.
  The `jalr` at 0xdad1838 calls (unknown callee) with a0=sp-80, a1=a1+96, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xdad184c calls Dot [0xdad17e0] with a0=a1+32, a1=sp-80, a2=?, a3=?.
  The `bc1t` branch at 0xdad18b4 targets 0xdad18dc, is taken when f6 == f0(=0x0) (c.eq.s at 0xdad18a8), and falls through when not (f6 == f0(=0x0) (c.eq.s at 0xdad18a8)).
  The `beq` branch at 0xdad18d4 targets 0xdad18ec and is always taken.
  The return at 0xdad18f4 has v0 = ret(Dot).
- `Clear` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaffc40 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdaffc40-0xdaffed4 (660 bytes).
  It occupies 660 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xdaffc54, `lw` at 0xdaffec8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0xdaffc68, `lw` at 0xdaffec4.
  The `lw` at 0xdaffc70 loads 4 bytes from [a0] +0x7368.
  The `lw` at 0xdaffc7c loads 4 bytes from [a0] +0x7360.
  The `lw` at 0xdaffc88 loads 4 bytes from [a0] +0x735c.
  The `lw` at 0xdaffc8c loads 4 bytes from [a0] +0x7364.
  The `lw` at 0xdaffc90 loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdaffc94 loads 4 bytes from [a0] +0xe48.
  The `lwc1` at 0xdaffc98 loads 4 bytes from [a0] +0x7780.
  The `lwc1` at 0xdaffc9c loads 4 bytes from [a0] +0x678.
  The `lwc1` at 0xdaffca0 loads 4 bytes from [a0] +0x77a0.
  The `lwc1` at 0xdaffca4 loads 4 bytes from [a0] +0x67c.
  The `lwc1` at 0xdaffca8 loads 4 bytes from [a0] +0x674.
  The `lwc1` at 0xdaffcac loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `lwc1` at 0xdaffcb4 loads 4 bytes from [a0] +0x777c.
  The `lwc1` at 0xdaffcbc loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lwc1` at 0xdaffcc4 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `lwc1` at 0xdaffcd0 loads 4 bytes from [a0] +0x7778.
  The `lwc1` at 0xdaffcdc loads 4 bytes from [a0] +0x670.
  The `lw` at 0xdaffce8 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lwc1` at 0xdaffcf8 loads 4 bytes from a0 (arg0 at entry) +0x48.
  28 such `sh` accesses store 2 bytes to ?, including `sh` at 0xdaffdc4, `sh` at 0xdaffdc8, `sh` at 0xdaffdcc.
  The `lw` at 0xdaffeb0 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `jalr` at 0xdaffebc calls (unknown callee) with a0=[a0], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=[a0].
  The `beq` branch at 0xdaffc84 targets 0xdaffeb0, is taken when t1(=[a0+16]) == 0, and falls through when t1(=[a0+16]) != 0.
  The `beq` branch at 0xdaffd68 targets 0xdaffe94, is taken when s0(=[[a0]+29536]) >= s1(=[[a0]+29544]) (signed), and falls through when s0(=[[a0]+29536]) < s1(=[[a0]+29544]) (signed).
  The `beq` branch at 0xdaffd9c targets 0xdaffdf8 and is always taken.
  The `beq` branch at 0xdaffdac targets 0xdaffdf0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xdaffde4 targets 0xdaffdc0, is taken when a0(?) != a7(=-0x1), and falls through when a0(?) == a7(=-0x1).
  The `beq` branch at 0xdaffdf0 targets 0xdaffe94, is taken when s0(?) == s1(=[[a0]+29544]), and falls through when s0(?) != s1(=[[a0]+29544]).
  The `beq` branch at 0xdaffe00 targets 0xdaffe5c, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `bne` branch at 0xdaffe54 targets 0xdaffe10, is taken when a1(?) != a7(=-0x1), and falls through when a1(?) == a7(=-0x1).
  The `beq` branch at 0xdaffe5c targets 0xdaffdf0, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `beq` branch at 0xdaffe6c targets 0xdaffda8, is taken when (t9(?) & 0x1) == 0, and falls through when (t9(?) & 0x1) != 0.
  The `beq` branch at 0xdaffe8c targets 0xdaffda4 and is always taken.
  The `beq` branch at 0xdaffecc targets 0xdaffc8c and is always taken.
  The return at 0xdaffea8 has v0 = ?.
- `Resize` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb156e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb156e0-0xdb15724 (68 bytes).
  It occupies 68 bytes.
  The `sb` at 0xdb15714 stores 1 byte to a0 (arg0 at entry) +0x60.
  The `jalr` at 0xdb15700 calls __glResizeBuffer [0xdb0b530] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdb1571c has v0 = 0x1.
- `Coverage` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb3c4e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb3c4e0-0xdb3c620 (320 bytes).
  It occupies 320 bytes.
  The `bc1f` branch at 0xdb3c528 targets 0xdb3c534, is taken when not (f10 <= f5 (c.le.s at 0xdb3c524)), and falls through when f10 <= f5 (c.le.s at 0xdb3c524).
  The `bc1f` branch at 0xdb3c534 targets 0xdb3c540, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0xdb3c540 targets 0xdb3c54c, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0xdb3c558 targets 0xdb3c564, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0xdb3c568 targets 0xdb3c574, is taken when not (f10 <= f5 (c.le.s at 0xdb3c564)), and falls through when f10 <= f5 (c.le.s at 0xdb3c564).
  The `bc1f` branch at 0xdb3c574 targets 0xdb3c580, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0xdb3c580 targets 0xdb3c58c, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0xdb3c598 targets 0xdb3c5a4, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0xdb3c5ac targets 0xdb3c5b8, is taken when not (f10 <= f5 (c.le.s at 0xdb3c5a4)), and falls through when f10 <= f5 (c.le.s at 0xdb3c5a4).
  The `bc1f` branch at 0xdb3c5b8 targets 0xdb3c5c4, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0xdb3c5c4 targets 0xdb3c5d0, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0xdb3c5d4 targets 0xdb3c5e0, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0xdb3c5e8 targets 0xdb3c5f4, is taken when not (f10 <= f5 (c.le.s at 0xdb3c5e0)), and falls through when f10 <= f5 (c.le.s at 0xdb3c5e0).
  The `bc1f` branch at 0xdb3c5f4 targets 0xdb3c600, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0xdb3c600 targets 0xdb3c60c, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0xdb3c60c targets 0xdb3c618, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The return at 0xdb3c618 has v0 = ?.
- `SetInitialParameters` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb3eac0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb3eac0-0xdb3f044 (1412 bytes).
  It occupies 1412 bytes.
  The `lw` at 0xdb3eac0 loads 4 bytes from a0 (arg0 at entry) +0x7514.
  The `lw` at 0xdb3eac4 loads 4 bytes from a0 (arg0 at entry) +0x7510.
  The `lw` at 0xdb3eadc loads 4 bytes from a0 (arg0 at entry) +0x763c.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75a4, including `lwc1` at 0xdb3eb34, `lwc1` at 0xdb3ed14, `lwc1` at 0xdb3efe4.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75b4, including `lwc1` at 0xdb3eb38, `lwc1` at 0xdb3ed18, `lwc1` at 0xdb3efe8.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xdb3eb3c, `lwc1` at 0xdb3ed1c, `lwc1` at 0xdb3eff0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75b8, including `lwc1` at 0xdb3eb4c, `lwc1` at 0xdb3ed2c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75a8, including `lwc1` at 0xdb3eb50, `lwc1` at 0xdb3ed30.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7584, including `swc1` at 0xdb3eb54, `swc1` at 0xdb3ed38, `swc1` at 0xdb3effc.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7558, including `swc1` at 0xdb3eb58, `swc1` at 0xdb3ed34, `swc1` at 0xdb3f00c.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7594, including `swc1` at 0xdb3eb60, `swc1` at 0xdb3ed40, `swc1` at 0xdb3f004.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xdb3eb64, `lwc1` at 0xdb3ed44.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75bc, including `lwc1` at 0xdb3eb74, `lwc1` at 0xdb3ed54.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75ac, including `lwc1` at 0xdb3eb78, `lwc1` at 0xdb3ed58.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7588, including `swc1` at 0xdb3eb7c, `swc1` at 0xdb3ed60.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x755c, including `swc1` at 0xdb3eb80, `swc1` at 0xdb3ed5c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7598, including `swc1` at 0xdb3eb88, `swc1` at 0xdb3ed68.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xdb3eb8c, `lwc1` at 0xdb3ed6c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75c0, including `lwc1` at 0xdb3eb9c, `lwc1` at 0xdb3ed7c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75b0, including `lwc1` at 0xdb3eba0, `lwc1` at 0xdb3ed80.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x758c, including `swc1` at 0xdb3eba4, `swc1` at 0xdb3ed88.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7560, including `swc1` at 0xdb3eba8, `swc1` at 0xdb3ed84.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x759c, including `swc1` at 0xdb3ebb0, `swc1` at 0xdb3ed90.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lwc1` at 0xdb3ebb8, `lwc1` at 0xdb3ed98.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7590, including `swc1` at 0xdb3ebc4, `swc1` at 0xdb3eda4.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75a0, including `swc1` at 0xdb3ebcc, `swc1` at 0xdb3edac.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7564, including `swc1` at 0xdb3ebd0, `swc1` at 0xdb3edb0.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x8c, including `lwc1` at 0xdb3ebe0, `lwc1` at 0xdb3edc0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7604, including `lwc1` at 0xdb3ebe4, `lwc1` at 0xdb3edc4.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x30, including `lwc1` at 0xdb3ebe8, `lwc1` at 0xdb3edc8.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7618, including `lwc1` at 0xdb3ebec, `lwc1` at 0xdb3edcc.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7608, including `lwc1` at 0xdb3ec00, `lwc1` at 0xdb3ede0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75dc, including `swc1` at 0xdb3ec04, `swc1` at 0xdb3ede8.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7568, including `swc1` at 0xdb3ec08, `swc1` at 0xdb3ede4.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75f0, including `swc1` at 0xdb3ec10, `swc1` at 0xdb3edf0.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x34, including `lwc1` at 0xdb3ec14, `lwc1` at 0xdb3edf4.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x761c, including `lwc1` at 0xdb3ec1c, `lwc1` at 0xdb3edf8.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x760c, including `lwc1` at 0xdb3ec2c, `lwc1` at 0xdb3ee0c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75e0, including `swc1` at 0xdb3ec30, `swc1` at 0xdb3ee14.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x756c, including `swc1` at 0xdb3ec34, `swc1` at 0xdb3ee10.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75f4, including `swc1` at 0xdb3ec3c, `swc1` at 0xdb3ee1c.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x38, including `lwc1` at 0xdb3ec40, `lwc1` at 0xdb3ee20.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7620, including `lwc1` at 0xdb3ec44, `lwc1` at 0xdb3ee28.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7610, including `lwc1` at 0xdb3ec58, `lwc1` at 0xdb3ee38.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75e4, including `swc1` at 0xdb3ec5c, `swc1` at 0xdb3ee40.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7570, including `swc1` at 0xdb3ec60, `swc1` at 0xdb3ee3c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75f8, including `swc1` at 0xdb3ec68, `swc1` at 0xdb3ee48.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x3c, including `lwc1` at 0xdb3ec6c, `lwc1` at 0xdb3ee4c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7624, including `lwc1` at 0xdb3ec74, `lwc1` at 0xdb3ee50.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7628, including `lwc1` at 0xdb3ec84, `lwc1` at 0xdb3ee64.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7614, including `lwc1` at 0xdb3ec88, `lwc1` at 0xdb3ee68.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75e8, including `swc1` at 0xdb3ec8c, `swc1` at 0xdb3ee70.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7574, including `swc1` at 0xdb3ec90, `swc1` at 0xdb3ee6c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75fc, including `swc1` at 0xdb3ec98, `swc1` at 0xdb3ee78.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0xb4, including `lwc1` at 0xdb3eca0, `lwc1` at 0xdb3ee80.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75ec, including `swc1` at 0xdb3ecac, `swc1` at 0xdb3ee8c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7600, including `swc1` at 0xdb3ecb4, `swc1` at 0xdb3ee94.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7578, including `swc1` at 0xdb3ecb8, `swc1` at 0xdb3ee98.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x700, including `lw` at 0xdb3ecc4, `lw` at 0xdb3eea4.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75d4, including `lwc1` at 0xdb3ecec, `lwc1` at 0xdb3eecc, `lwc1` at 0xdb3eee8.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75d8, including `lwc1` at 0xdb3ecf0, `lwc1` at 0xdb3eed0, `lwc1` at 0xdb3eee4.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x7554, including `sw` at 0xdb3ecf4, `sw` at 0xdb3eed4, `sw` at 0xdb3ef00.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x88, including `lwc1` at 0xdb3eeec, `lwc1` at 0xdb3ef5c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x75c4, including `sw` at 0xdb3ef18, `sw` at 0xdb3ef88.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x75c8, including `sw` at 0xdb3ef20, `sw` at 0xdb3ef90.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7638, including `lwc1` at 0xdb3ef2c, `lwc1` at 0xdb3ef9c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7634, including `lwc1` at 0xdb3ef30, `lwc1` at 0xdb3efa0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x762c, including `swc1` at 0xdb3ef40, `swc1` at 0xdb3efb0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7630, including `swc1` at 0xdb3ef48, `swc1` at 0xdb3efb8.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x757c, including `swc1` at 0xdb3ef50, `swc1` at 0xdb3efbc.
  The `bgezall` at 0xdb3ece4 calls __glPolygonOffsetZ [0xdb41110] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?, a7=[a0+30268]; fp f14=f16, f15=f17.
  The `bgezall` at 0xdb3eec4 calls __glPolygonOffsetZ [0xdb41110] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1000000, a7=[a0+30268]; fp f14=f16, f15=f17.
  The `bc1f` branch at 0xdb3eb1c targets 0xdb3ed04, is taken when not (f24 < f0 (c.lt.s at 0xdb3eaf4)), and falls through when f24 < f0 (c.lt.s at 0xdb3eaf4).
  The `beq` branch at 0xdb3eb24 targets 0xdb3efdc, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xdb3eb2c targets 0xdb3ebd8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xdb3ebd8 targets 0xdb3ecbc, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xdb3ecbc targets 0xdb3ef24, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xdb3eccc targets 0xdb3eee4, is taken when (a3(=[a0+1792]) & at(=0x1000000)) == 0, and falls through when (a3(=[a0+1792]) & at(=0x1000000)) != 0.
  The `beq` branch at 0xdb3ecfc targets 0xdb3ef04 and is always taken.
  The `beq` branch at 0xdb3ed04 targets 0xdb3f010, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xdb3ed0c targets 0xdb3edb8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xdb3edb8 targets 0xdb3ee9c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xdb3ee9c targets 0xdb3ef94, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xdb3eeac targets 0xdb3ef54, is taken when (v1(=[a0+1792]) & a3(=0x1000000)) == 0, and falls through when (v1(=[a0+1792]) & a3(=0x1000000)) != 0.
  The `beq` branch at 0xdb3eedc targets 0xdb3ef74 and is always taken.
  The `beq` branch at 0xdb3ef24 targets 0xdb3efc0, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `beq` branch at 0xdb3ef4c targets 0xdb3efc0 and is always taken.
  The `beq` branch at 0xdb3ef94 targets 0xdb3efc0, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `beq` branch at 0xdb3efdc targets 0xdb3ecbc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xdb3f008 targets 0xdb3ecbc and is always taken.
  The `beq` branch at 0xdb3f010 targets 0xdb3ee9c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xdb3f03c targets 0xdb3ee9c and is always taken.
  The return at 0xdb3efd4 has v0 = ?.
- `Store_8` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb7e120 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb7e120-0xdb7e2a8 (392 bytes).
  It occupies 392 bytes.
  The `lw` at 0xdb7e120 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb7e124 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xdb7e128 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb7e130 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb7e150 loads 4 bytes from [a0] +0x700.
  The `lw` at 0xdb7e158 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb7e15c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xdb7e170 loads 4 bytes from [a0] +0xe44.
  The `lb` at 0xdb7e1a4 loads 1 byte from table(0xdbd6cf0) +0x0.
  The `lw` at 0xdb7e1c8 loads 4 bytes from [a0] +0x704.
  The `lw` at 0xdb7e1d8 loads 4 bytes from [a0] +0x3054.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xdb7e204, `lwc1` at 0xdb7e208, `lwc1` at 0xdb7e210.
  The `lw` at 0xdb7e230 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `lw` at 0xdb7e23c loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0xdb7e250 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lbu` at 0xdb7e258 loads 1 byte from ?.
  The `lw` at 0xdb7e264 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0xdb7e26c loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `sb` at 0xdb7e290 stores 1 byte to ?.
  The `lwc1` at 0xdb7e29c loads 4 bytes from [a0] +0xdcc.
  The `jalr` at 0xdb7e1f0 calls (unknown callee) with a0=[a0], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-80, a4=[[a0]+1792], a5=[a1], a6=[a0], a7=[a1+4].
  The `beq` branch at 0xdb7e184 targets 0xdb7e29c, is taken when (a4(=[[a0]+1792]) & 0x8) == 0, and falls through when (a4(=[[a0]+1792]) & 0x8) != 0.
  The `bne` branch at 0xdb7e1c0 targets 0xdb7e1d8, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xdb7e1d0 targets 0xdb7e294, is taken when (at(=[[a0]+1796]) & 0x800) == 0, and falls through when (at(=[[a0]+1796]) & 0x800) != 0.
  The `beq` branch at 0xdb7e294 targets 0xdb7e1fc and is always taken.
  The `beq` branch at 0xdb7e2a0 targets 0xdb7e1c0 and is always taken.
  The return at 0xdb7e28c has v0 = ?.
- `Store_16` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb7e2b0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb7e2b0-0xdb7e444 (404 bytes).
  It occupies 404 bytes.
  The `lw` at 0xdb7e2b0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb7e2b4 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xdb7e2b8 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb7e2bc loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb7e2d0 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb7e2dc loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb7e2f0 loads 4 bytes from [a0] +0x700.
  The `lw` at 0xdb7e2f4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lb` at 0xdb7e340 loads 1 byte from table(0xdbd6cf0) +0x0.
  The `lw` at 0xdb7e364 loads 4 bytes from [a0] +0x704.
  The `lw` at 0xdb7e374 loads 4 bytes from [a0] +0x3054.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xdb7e3a0, `lwc1` at 0xdb7e3a4, `lwc1` at 0xdb7e3ac.
  The `lw` at 0xdb7e3cc loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `lw` at 0xdb7e3d8 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0xdb7e3ec loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lhu` at 0xdb7e3f4 loads 2 bytes from ?.
  The `lw` at 0xdb7e400 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0xdb7e408 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `sh` at 0xdb7e42c stores 2 bytes to ?.
  The `lwc1` at 0xdb7e438 loads 4 bytes from [a0] +0xdcc.
  The `jalr` at 0xdb7e38c calls (unknown callee) with a0=[a0], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-80, a4=[[a0]+1792], a5=[a1+4], a6=[a0], a7=[a1].
  The `beq` branch at 0xdb7e320 targets 0xdb7e438, is taken when (a4(=[[a0]+1792]) & 0x8) == 0, and falls through when (a4(=[[a0]+1792]) & 0x8) != 0.
  The `bne` branch at 0xdb7e35c targets 0xdb7e374, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xdb7e36c targets 0xdb7e430, is taken when (at(=[[a0]+1796]) & 0x800) == 0, and falls through when (at(=[[a0]+1796]) & 0x800) != 0.
  The `beq` branch at 0xdb7e430 targets 0xdb7e398 and is always taken.
  The `beq` branch at 0xdb7e43c targets 0xdb7e35c and is always taken.
  The return at 0xdb7e428 has v0 = ?.
- `Store_32` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb7e5c0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb7e5c0-0xdb7e708 (328 bytes).
  It occupies 328 bytes.
  The `lw` at 0xdb7e5c4 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xdb7e5d0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb7e5d8 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb7e5e0 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb7e5f4 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb7e5fc loads 4 bytes from [a0] +0x700.
  The `lw` at 0xdb7e604 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xdb7e60c loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb7e634 loads 4 bytes from [a0] +0x704.
  The `lw` at 0xdb7e644 loads 4 bytes from [a0] +0x3054.
  The `lwc1` at 0xdb7e66c loads 4 bytes from [a0] +0xdcc.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xdb7e670, `lwc1` at 0xdb7e678, `lwc1` at 0xdb7e67c.
  The `lw` at 0xdb7e694 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0xdb7e6a8 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `lw` at 0xdb7e6b0 loads 4 bytes from ?.
  The `lw` at 0xdb7e6bc loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0xdb7e6c4 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0xdb7e6d0 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `sw` at 0xdb7e6fc stores 4 bytes to ?.
  The `jalr` at 0xdb7e65c calls (unknown callee) with a0=[a0], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-80.
  The `bne` branch at 0xdb7e62c targets 0xdb7e644, is taken when (at(=[[a0]+1792]) & 0x2) != 0, and falls through when (at(=[[a0]+1792]) & 0x2) == 0.
  The `beq` branch at 0xdb7e63c targets 0xdb7e700, is taken when (at(=[[a0]+1796]) & 0x800) == 0, and falls through when (at(=[[a0]+1796]) & 0x800) != 0.
  The `beq` branch at 0xdb7e700 targets 0xdb7e668 and is always taken.
  The return at 0xdb7e6f8 has v0 = ?.
- `Fetch_8` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb7e710 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb7e710-0xdb7e7b8 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0xdb7e710 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb7e714 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb7e718 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb7e724 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb7e730 loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb7e738 loads 4 bytes from [a0] +0xcc0.
  The `lbu` at 0xdb7e740 loads 1 byte from ?.
  The `lw` at 0xdb7e744 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `swc1` at 0xdb7e760 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0xdb7e764 loads 4 bytes from [a0] +0xcc4.
  The `lw` at 0xdb7e768 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `swc1` at 0xdb7e784 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lw` at 0xdb7e788 loads 4 bytes from [a0] +0xcc8.
  The `lw` at 0xdb7e78c loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `swc1` at 0xdb7e7a8 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0xdb7e7ac loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `swc1` at 0xdb7e7b4 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The return at 0xdb7e7b0 has v0 = [a0+120].
- `Fetch_16` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb7e7c0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb7e7c0-0xdb7e874 (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0xdb7e7c0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb7e7c4 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb7e7c8 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb7e7d4 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb7e7dc loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb7e7f8 loads 4 bytes from [a0] +0xcc0.
  The `lhu` at 0xdb7e7fc loads 2 bytes from ?.
  The `lw` at 0xdb7e800 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `swc1` at 0xdb7e81c stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0xdb7e820 loads 4 bytes from [a0] +0xcc4.
  The `lw` at 0xdb7e824 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `swc1` at 0xdb7e840 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lw` at 0xdb7e844 loads 4 bytes from [a0] +0xcc8.
  The `lw` at 0xdb7e848 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `swc1` at 0xdb7e864 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0xdb7e868 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `swc1` at 0xdb7e870 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The return at 0xdb7e86c has v0 = [a0+120].
- `Fetch_32` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb7e950 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb7e950-0xdb7ea04 (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0xdb7e950 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb7e954 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb7e958 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb7e964 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb7e96c loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb7e988 loads 4 bytes from [a0] +0xcc0.
  The `lw` at 0xdb7e98c loads 4 bytes from ?.
  The `lw` at 0xdb7e990 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `swc1` at 0xdb7e9ac stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0xdb7e9b0 loads 4 bytes from [a0] +0xcc4.
  The `lw` at 0xdb7e9b4 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `swc1` at 0xdb7e9d0 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lw` at 0xdb7e9d4 loads 4 bytes from [a0] +0xcc8.
  The `lw` at 0xdb7e9d8 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `swc1` at 0xdb7e9f4 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0xdb7e9f8 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `swc1` at 0xdb7ea00 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The return at 0xdb7e9fc has v0 = [a0+120].
- `Store` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda53cb0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda53cb0-0xda53d4c (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xda53cb0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0xda53cb8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0xda53cc4 loads 4 bytes from [a0] +0x6cc.
  The `lwc1` at 0xda53ccc loads 4 bytes from [a0] +0x6c8.
  The `lw` at 0xda53cd4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xda53cdc loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xda53ce0 loads 4 bytes from [a0] +0xdcc.
  The `lwc1` at 0xda53cec loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0xda53cf8 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xda53d0c loads 4 bytes from [a0] +0xe44.
  The `jalr` at 0xda53d34 calls fprintf with a0=sym(__iob)+32, a1=0xdbc0bb0, a2=?, a3=?, a6=[[a0]+3656], a7=0x18e358.
  The return at 0xda53d44 has v0 = ret(fprintf).
- `Pick` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda53d50 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda53d50-0xda53d58 (8 bytes).
  It occupies 8 bytes.
  The return at 0xda53d50 has v0 = ?.
- `Fetch` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda53d60 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda53d60-0xda53d68 (8 bytes).
  It occupies 8 bytes.
  The return at 0xda53d60 has v0 = ?.
- `StoreStippledSpan` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda53d70 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda53d70-0xda53ea8 (312 bytes).
  It occupies 312 bytes.
  The `lw` at 0xda53d84 loads 4 bytes from a0 (arg0 at entry) +0x7550.
  The `lw` at 0xda53d8c loads 4 bytes from a0 (arg0 at entry) +0x7660.
  The `lw` at 0xda53d94 loads 4 bytes from a0 (arg0 at entry) +0x7580.
  The `lw` at 0xda53da4 loads 4 bytes from a0 (arg0 at entry) +0x7668.
  The `lw` at 0xda53dac loads 4 bytes from a0 (arg0 at entry) +0x7658.
  The `lw` at 0xda53db8 loads 4 bytes from a0 (arg0 at entry) +0x754c.
  The `lw` at 0xda53e14 loads 4 bytes from ?.
  The `lwc1` at 0xda53e50 loads 4 bytes from ?.
  The `lw` at 0xda53e58 loads 4 bytes from [a0+30312] +0xa4.
  The `jalr` at 0xda53e60 calls (unknown callee) with a0=[a0+30312], a1=sp-176, a2=?, a3=?.
  The `beq` branch at 0xda53db4 targets 0xda53e84, is taken when s7(=[a0+30080]) == 0, and falls through when s7(=[a0+30080]) != 0.
  The `beq` branch at 0xda53dcc targets 0xda53df4 and is always taken.
  The `beq` branch at 0xda53df0 targets 0xda53e70, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `bltz` branch at 0xda53e18 targets 0xda53df0, is taken when s3(?) < 0 (signed), and falls through when s3(?) >= 0 (signed).
  The `beq` branch at 0xda53e28 targets 0xda53e3c and is always taken.
  The `beq` branch at 0xda53e34 targets 0xda53de0, is taken when s3(?) == s5(=-0x1), and falls through when s3(?) != s5(=-0x1).
  The `beq` branch at 0xda53e44 targets 0xda53e30, is taken when (s4(?) & s0(?)) == 0, and falls through when (s4(?) & s0(?)) != 0.
  The `beq` branch at 0xda53e68 targets 0xda53e34 and is always taken.
  The return at 0xda53ea0 has v0 = 0x0.
  The instructions from 0xda53dd4 to 0xda53ddc are not reached by any path from the entry, and their branches are not listed.
- `StoreSpan` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda53eb0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda53eb0-0xda53f4c (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xda53eb8 loads 4 bytes from a0 (arg0 at entry) +0x7550.
  The `lw` at 0xda53ec0 loads 4 bytes from a0 (arg0 at entry) +0x7580.
  The `lw` at 0xda53ecc loads 4 bytes from a0 (arg0 at entry) +0x754c.
  The `lw` at 0xda53eec loads 4 bytes from a0 (arg0 at entry) +0x7668.
  The `lw` at 0xda53ef8 loads 4 bytes from a0 (arg0 at entry) +0x7658.
  The `lwc1` at 0xda53f00 loads 4 bytes from ?.
  The `lw` at 0xda53f08 loads 4 bytes from [a0+30312] +0xa4.
  The `jalr` at 0xda53f18 calls (unknown callee) with a0=[a0+30312], a1=sp-128, a2=?, a3=?.
  The `beq` branch at 0xda53ef4 targets 0xda53f2c, is taken when s0(=[a0+30028]) >= s5(=([a0+30028] + [a0+30080])) (signed), and falls through when s0(=[a0+30028]) < s5(=([a0+30028] + [a0+30080])) (signed).
  The `bnel` branch at 0xda53f20 targets 0xda53f00, is taken when s5(=([a0+30028] + [a0+30080])) != s0(?), and falls through when s5(=([a0+30028] + [a0+30080])) == s0(?); its branch-likely delay slot `sw s0,0(sp)` at 0xda53f24 runs only when taken and is annulled on fall-through.
  The return at 0xda53f44 has v0 = 0x0.
- `ApplyScissor` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda55640 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda55640-0xda557d0 (400 bytes).
  It occupies 400 bytes.
  The `lw` at 0xda55640 loads 4 bytes from a0 (arg0 at entry) +0xe44.
  The `lw` at 0xda55644 loads 4 bytes from a0 (arg0 at entry) +0x735c.
  The `lw` at 0xda55648 loads 4 bytes from a0 (arg0 at entry) +0x7364.
  The `lw` at 0xda55658 loads 4 bytes from a0 (arg0 at entry) +0xe48.
  The `lw` at 0xda55664 loads 4 bytes from a0 (arg0 at entry) +0x7360.
  The `lw` at 0xda55670 loads 4 bytes from a0 (arg0 at entry) +0x7368.
  The `sw` at 0xda5569c stores 4 bytes to a0 (arg0 at entry) +0x16654.
  The `sw` at 0xda556d0 stores 4 bytes to a0 (arg0 at entry) +0x16650.
  The `sb` at 0xda556dc stores 1 byte to a0 (arg0 at entry) +0x16658.
  The `swc1` at 0xda556e4 stores 4 bytes to a0 (arg0 at entry) +0x11d24.
  The `swc1` at 0xda556ec stores 4 bytes to a0 (arg0 at entry) +0x11d1c.
  The `swc1` at 0xda556f8 stores 4 bytes to a0 (arg0 at entry) +0x11d20.
  The `swc1` at 0xda556fc stores 4 bytes to a0 (arg0 at entry) +0x11d28.
  The `lw` at 0xda55700 loads 4 bytes from a0 (arg0 at entry) +0x7374.
  The `lw` at 0xda55704 loads 4 bytes from a0 (arg0 at entry) +0x736c.
  The `lw` at 0xda55740 loads 4 bytes from a0 (arg0 at entry) +0x7378.
  The `lw` at 0xda55754 loads 4 bytes from a0 (arg0 at entry) +0x7370.
  The `sw` at 0xda55770 stores 4 bytes to a0 (arg0 at entry) +0x16648.
  The `lw` at 0xda55794 loads 4 bytes from a0 (arg0 at entry) +0x168d4.
  The `sw` at 0xda557ac stores 4 bytes to a0 (arg0 at entry) +0x168d4.
  The `sw` at 0xda557b8 stores 4 bytes to a0 (arg0 at entry) +0x1664c.
  The `sw` at 0xda557c4 stores 4 bytes to abs 0x1018.
  The `bne` branch at 0xda556cc targets 0xda556dc, is taken when t0(?) < a6(?) (signed), and falls through when t0(?) >= a6(?) (signed).
  The `beq` branch at 0xda556d4 targets 0xda557c8, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xda557c8 targets 0xda556dc and is always taken.
  The return at 0xda557c0 has v0 = ([a0+92372] | 0x2000).
- `InitBuffers` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda57280 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda57280-0xda57460 (480 bytes).
  It occupies 480 bytes.
  The `lbu` at 0xda57280 loads 1 byte from a0 (arg0 at entry) +0xc8e.
  The `sw` at 0xda57288 stores 4 bytes to a0 (arg0 at entry) +0x2d4c.
  The `sw` at 0xda57294 stores 4 bytes to a0 (arg0 at entry) +0x7718.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc8d, including `lbu` at 0xda572a0, `lbu` at 0xda57330, `lbu` at 0xda573e8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x2d48, including `sw` at 0xda572ac, `sw` at 0xda573f4.
  The `sw` at 0xda572b4 stores 4 bytes to a0 (arg0 at entry) +0x771c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x771c, including `lw` at 0xda572d4, `lw` at 0xda5742c.
  The `lw` at 0xda572dc loads 4 bytes from a0 (arg0 at entry) +0xcd8.
  The `lw` at 0xda57334 loads 4 bytes from a0 (arg0 at entry) +0x78d8.
  The `lbu` at 0xda5735c loads 1 byte from a0 (arg0 at entry) +0xc90.
  The `sw` at 0xda57364 stores 4 bytes to a0 (arg0 at entry) +0x12ec.
  The `sb` at 0xda57370 stores 1 byte to a0 (arg0 at entry) +0x12e8.
  The `lbu` at 0xda5738c loads 1 byte from a0 (arg0 at entry) +0xc91.
  The `lbu` at 0xda573a4 loads 1 byte from a0 (arg0 at entry) +0xc92.
  The `sw` at 0xda573b4 stores 4 bytes to a0 (arg0 at entry) +0x79a0.
  The `bgezall` at 0xda572c0 calls __glOdysseyInitCI [0xda53f50] with a0=a0+30496, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+30496.
  The `bgezall` at 0xda572d0 calls __glOdysseyInitCI [0xda53f50] with a0=[a0+30492], a1=a0 at entry (arg0), a2=?, a3=?.
  The `bgezall` at 0xda57314 calls __glOdysseyInitCI [0xda53f50] with a0=?, a1=a0 at entry (arg0), a2=[a0+3213]:1, a3=?.
  The `jalr` at 0xda57344 calls __glOdysseyInitRGB [0xdaae210] with a0=?, a1=a0 at entry (arg0), a2=[a0+3213]:1, a3=?.
  The `jalr` at 0xda5737c calls __glOdysseyInitAccum [0xda46bb0] with a0=a0+31192, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xda5739c calls __glInitDepth [0xdb15a90] with a0=a0+31060, a1=a0 at entry (arg0), a2=[a0+3217]:1, a3=?.
  The `jalr` at 0xda573c0 calls __glInitStencil8 [0xdb4b990] with a0=a0+30940, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xda573cc calls __glUpdateDepthRange [0xdb7ad80] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0xda57400 calls __glOdysseyInitCI [0xda53f50] with a0=a0+30496, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+30496.
  The `jalr` at 0xda57418 calls __glOdysseyInitRGB [0xdaae210] with a0=a0+30496, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+30496.
  The `jalr` at 0xda57428 calls __glOdysseyInitRGB [0xdaae210] with a0=[a0+30492], a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xda57450 calls __glOdysseyInitRGB [0xdaae210] with a0=a0+30496, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+30496.
  The `beq` branch at 0xda57298 targets 0xda573e8, is taken when at(=[a0+3214]:1) == 0, and falls through when at(=[a0+3214]:1) != 0.
  The `beq` branch at 0xda572b0 targets 0xda57410, is taken when v0(=[a0+3213]:1) == 0, and falls through when v0(=[a0+3213]:1) != 0.
  The `blez` branch at 0xda572e0 targets 0xda5735c, is taken when a0(=[a0+3288]) <= 0 (signed), and falls through when a0(=[a0+3288]) > 0 (signed).
  The `beq` branch at 0xda57304 targets 0xda57330 and is always taken.
  The `beq` branch at 0xda57320 targets 0xda57354, is taken when s1(?) == s2(?), and falls through when s1(?) != s2(?).
  The `bne` branch at 0xda57338 targets 0xda57310, is taken when a2(=[a0+3213]:1) != 0, and falls through when a2(=[a0+3213]:1) == 0.
  The `beq` branch at 0xda5734c targets 0xda57320 and is always taken.
  The `beq` branch at 0xda5736c targets 0xda5738c, is taken when v0(=[a0+3216]:1) == 0, and falls through when v0(=[a0+3216]:1) != 0.
  The `beq` branch at 0xda57384 targets 0xda57438, is taken when v0(=ret(__glOdysseyInitAccum)) == 0, and falls through when v0(=ret(__glOdysseyInitAccum)) != 0.
  The `beq` branch at 0xda57390 targets 0xda573a4, is taken when a2(=[a0+3217]:1) == 0, and falls through when a2(=[a0+3217]:1) != 0.
  The `beq` branch at 0xda573b0 targets 0xda573c8, is taken when v0(=[a0+3218]:1) == 0, and falls through when v0(=[a0+3218]:1) != 0.
  The `beq` branch at 0xda573f0 targets 0xda57448, is taken when v0(=[a0+3213]:1) == 0, and falls through when v0(=[a0+3213]:1) != 0.
  The `beq` branch at 0xda57408 targets 0xda572dc and is always taken.
  The `beq` branch at 0xda57430 targets 0xda572dc and is always taken.
  The `beq` branch at 0xda57458 targets 0xda572dc and is always taken.
  The return at 0xda573e0 has v0 = 0x1.
  The return at 0xda57440 has v0 = 0x0.
  The instructions from 0xda5730c to 0xda5730c are not reached by any path from the entry, and their branches are not listed.
- `LoseCurrent` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda5afe0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda5afe0-0xda5b0dc (252 bytes).
  It occupies 252 bytes.
  The `lw` at 0xda5afe4 loads 4 bytes from a0 (arg0 at entry) +0xc7c.
  2 such `lw` accesses load 4 bytes from abs 0x1018, including `lw` at 0xda5b008, `lw` at 0xda5b02c.
  The `sw` at 0xda5b034 stores 4 bytes to a0 (arg0 at entry) +0xc78.
  The `sw` at 0xda5b040 stores 4 bytes to abs 0x1010.
  The `lw` at 0xda5b044 loads 4 bytes from a0 (arg0 at entry) +0x17ec.
  The `ld` at 0xda5b07c loads 8 bytes from ?.
  The `sd` at 0xda5b088 stores 8 bytes to ?.
  The `lw` at 0xda5b08c loads 4 bytes from a0 (arg0 at entry) +0x1374.
  The `lw` at 0xda5b098 loads 4 bytes from abs 0x1028.
  The `sw` at 0xda5b09c stores 4 bytes to a0 (arg0 at entry) +0x13b4.
  The `lw` at 0xda5b0a0 loads 4 bytes from abs 0x102c.
  The `sw` at 0xda5b0a4 stores 4 bytes to a0 (arg0 at entry) +0x13b8.
  The `lw` at 0xda5b0a8 loads 4 bytes from abs 0x1030.
  The `sw` at 0xda5b0ac stores 4 bytes to a0 (arg0 at entry) +0x13bc.
  The `lw` at 0xda5b0b0 loads 4 bytes from abs 0x1034.
  The `sw` at 0xda5b0b4 stores 4 bytes to a0 (arg0 at entry) +0x13c0.
  The `jalr` at 0xda5b020 calls __glLoseCurrentBuffers [0xdb12510] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xda5b03c calls FastDispatchInstall [0xda56cd0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xda5b000 targets 0xda5b0c8, is taken when at(=[a0+3196]) != v0(=0x1c00), and falls through when at(=[a0+3196]) == v0(=0x1c00).
  The `beq` branch at 0xda5b010 targets 0xda5b0c8, is taken when a1(=[0x1018]) == at(=0x1), and falls through when a1(=[0x1018]) != at(=0x1).
  The `beq` branch at 0xda5b060 targets 0xda5b08c, is taken when at(=a0+7952) == a5(=[a0+6124]), and falls through when at(=a0+7952) != a5(=[a0+6124]).
  The `bgtz` branch at 0xda5b084 targets 0xda5b070, is taken when a0(?) > 0 (signed), and falls through when a0(?) <= 0 (signed).
  The `beq` branch at 0xda5b090 targets 0xda5b0bc, is taken when v1(=[a0+4980]) == 0, and falls through when v1(=[a0+4980]) != 0.
  The return at 0xda5b0c0 has v0 = 0x1.
  The return at 0xda5b0d4 has v0 = 0x0.
- `MakeCurrent` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda5b0e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda5b0e0-0xda5b14c (108 bytes).
  It occupies 108 bytes.
  The `lw` at 0xda5b0f4 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `lw` at 0xda5b10c loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `jalr` at 0xda5b104 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda5b114 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0xda5b12c calls MakeCurrentRead [0xda5a470] with a0=a0 at entry (arg0), a1=ret(?), a2=ret(?), a3=?.
  The return at 0xda5b144 has v0 = ret(MakeCurrentRead).
- `PreEvaluate` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda62ae0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda62ae0-0xda62c88 (424 bytes).
  It occupies 424 bytes.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda62b08, `swc1` at 0xda62c4c, `swc1` at 0xda62c74.
  6 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda62b18, `swc1` at 0xda62bf4, `swc1` at 0xda62c08.
  5 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda62b28, `lwc1` at 0xda62b60, `lwc1` at 0xda62b64.
  6 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda62b40, `swc1` at 0xda62b8c, `swc1` at 0xda62b94.
  The `lwc1` at 0xda62bcc loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xda62c04 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `swc1` at 0xda62c30 stores 4 bytes to a2 (arg2 at entry) +0xc.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda62c40, `swc1` at 0xda62c60.
  The `beq` branch at 0xda62ae4 targets 0xda62c14, is taken when a0 == at(=0x4), and falls through when a0 != at(=0x4).
  The `beq` branch at 0xda62af0 targets 0xda62c50, is taken when a0 == v0(=0x3), and falls through when a0 != v0(=0x3).
  The `beq` branch at 0xda62af8 targets 0xda62c78, is taken when a0 == v1(=0x2), and falls through when a0 != v1(=0x2).
  The `beq` branch at 0xda62b00 targets 0xda62c08, is taken when a0 == a1(=0x1), and falls through when a0 != a1(=0x1).
  The `bne` branch at 0xda62b14 targets 0xda62c0c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xda62b20 targets 0xda62bcc and is always taken.
  The `bne` branch at 0xda62b3c targets 0xda62b28, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0xda62b48 targets 0xda62bac, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xda62ba0 targets 0xda62b60, is taken when a3(?) != a4(?), and falls through when a3(?) == a4(?).
  The `beq` branch at 0xda62bc4 targets 0xda62c0c, is taken when a0 == a5(?), and falls through when a0 != a5(?).
  The `bne` branch at 0xda62bf0 targets 0xda62bb0, is taken when a5(?) < 0x2 (signed), and falls through when a5(?) >= 0x2 (signed).
  The `beq` branch at 0xda62bf8 targets 0xda62b44, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xda62c00 targets 0xda62b2c and is always taken.
  The return at 0xda62c0c has v0 = one of 0x3, ?.
  The return at 0xda62c48 has v0 = ?.
  The return at 0xda62c70 has v0 = 0x3.
  The return at 0xda62c80 has v0 = 0x3.
- `PreEvaluateWithDeriv` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda62c90 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda62c90-0xda6301c (908 bytes).
  It occupies 908 bytes.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xda62cc0, `swc1` at 0xda62f8c, `swc1` at 0xda62fdc.
  7 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xda62cd0, `swc1` at 0xda62db4, `swc1` at 0xda62e9c.
  15 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda62ce4, `lwc1` at 0xda62d20, `lwc1` at 0xda62d24.
  15 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda62cfc, `swc1` at 0xda62d4c, `swc1` at 0xda62d54.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda62d8c, `lwc1` at 0xda62dcc, `lwc1` at 0xda62e08.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda62dc4, `lwc1` at 0xda62e0c.
  5 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `swc1` at 0xda62e04, `swc1` at 0xda62f64, `swc1` at 0xda62fbc.
  4 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x4, including `swc1` at 0xda62e1c, `swc1` at 0xda62fb0, `swc1` at 0xda62ff0.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xda62f94, `swc1` at 0xda62fe4.
  The `swc1` at 0xda62f9c stores 4 bytes to a2 (arg2 at entry) +0xc.
  The `swc1` at 0xda62fa0 stores 4 bytes to a3 (arg3 at entry) +0xc.
  2 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x8, including `swc1` at 0xda62fa8, `swc1` at 0xda62fe8.
  The `beq` branch at 0xda62c94 targets 0xda62f68, is taken when a0 == at(=0x4), and falls through when a0 != at(=0x4).
  The `beq` branch at 0xda62ca0 targets 0xda62fc0, is taken when a0 == v0(=0x3), and falls through when a0 != v0(=0x3).
  The `beq` branch at 0xda62ca8 targets 0xda63000, is taken when a0 == v1(=0x2), and falls through when a0 != v1(=0x2).
  The `beq` branch at 0xda62cb0 targets 0xda62f5c, is taken when a0 == a1(=0x1), and falls through when a0 != a1(=0x1).
  The `bne` branch at 0xda62ccc targets 0xda62f54, is taken when a0 < 0x4 (signed), and falls through when a0 >= 0x4 (signed).
  The `beq` branch at 0xda62cdc targets 0xda62d8c and is always taken.
  The `bne` branch at 0xda62cf8 targets 0xda62ce4, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0xda62d04 targets 0xda62d6c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xda62d60 targets 0xda62d20, is taken when a4(?) != a5(?), and falls through when a4(?) == a5(?).
  The `beq` branch at 0xda62d84 targets 0xda62dc8, is taken when t3(=a0-1) == a6(?), and falls through when t3(=a0-1) != a6(?).
  The `bne` branch at 0xda62db0 targets 0xda62d70, is taken when a6(?) < 0x2 (signed), and falls through when a6(?) >= 0x2 (signed).
  The `beq` branch at 0xda62db8 targets 0xda62d00, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0xda62dc0 targets 0xda62ce8 and is always taken.
  The `beq` branch at 0xda62e00 targets 0xda62e20, is taken when (t1(?) & 0x1) == 0, and falls through when (t1(?) & 0x1) != 0.
  The `beq` branch at 0xda62e28 targets 0xda62e70, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda62e68 targets 0xda62e40, is taken when a0(?) < a5(=((a0-1 << 0x2) + a2)) (unsigned), and falls through when a0(?) >= a5(=((a0-1 << 0x2) + a2)) (unsigned).
  The `bne` branch at 0xda62e98 targets 0xda62f40, is taken when a6(?) < 0x2 (signed), and falls through when a6(?) >= 0x2 (signed).
  The `beq` branch at 0xda62eb0 targets 0xda62ed4, is taken when (a3(?) & 0x3) == 0, and falls through when (a3(?) & 0x3) != 0.
  The `bne` branch at 0xda62ecc targets 0xda62eb8, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xda62edc targets 0xda62f3c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda62f30 targets 0xda62ef0, is taken when a0(?) != a5(?), and falls through when a0(?) == a5(?).
  The `beq` branch at 0xda62f54 targets 0xda62dd0 and is always taken.
  The return at 0xda62f4c has v0 = one of a2+4, ?.
  The return at 0xda62f60 has v0 = 0x3.
  The return at 0xda62fb8 has v0 = ?.
  The return at 0xda62ff8 has v0 = 0x3.
  The return at 0xda63014 has v0 = 0x3.
- `DoDomain1` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda63020 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda63020-0xda63364 (836 bytes).
  It occupies 836 bytes.
  The `lwc1` at 0xda63020 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0xda63024 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0xda63050 loads 4 bytes from a0 (arg0 at entry) +0x2f4.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0xda6305c, `lw` at 0xda630a4, `lw` at 0xda630b4.
  The `lw` at 0xda63060 loads 4 bytes from a0 (arg0 at entry) +0x57c.
  The `sw` at 0xda6309c stores 4 bytes to a0 (arg0 at entry) +0x584.
  The `swc1` at 0xda630a8 stores 4 bytes to a0 (arg0 at entry) +0x2f4.
  The `sw` at 0xda630ac stores 4 bytes to a0 (arg0 at entry) +0x57c.
  The `lw` at 0xda630c4 loads 4 bytes from a2 (arg2 at entry) +0x0.
  7 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda63108, `swc1` at 0xda6313c, `swc1` at 0xda63208.
  13 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda63130, `lwc1` at 0xda63134, `lwc1` at 0xda631c0.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x300, including `lwc1` at 0xda631c4, `lwc1` at 0xda63244, `lwc1` at 0xda632a4.
  6 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x2fc, including `lwc1` at 0xda631cc, `lwc1` at 0xda6324c, `lwc1` at 0xda632ac.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x304, including `lwc1` at 0xda631d0, `lwc1` at 0xda63250.
  The `lwc1` at 0xda631e0 loads 4 bytes from a0 (arg0 at entry) +0x308.
  The `lwc1` at 0xda632f4 loads 4 bytes from a4 (arg4 at entry) +0x0.
  The `swc1` at 0xda63308 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `bgezall` at 0xda63088 calls PreEvaluate [0xda62ae0] with a0=[a2+4], a1=a1 at entry (arg1), a2=a0+764, a3=a3 at entry (arg3).
  The `bc1t` branch at 0xda6303c targets 0xda63170, is taken when f6(=[a2+8]) == f5(=[a2+12]) (c.eq.s at 0xda6302c), and falls through when not (f6(=[a2+8]) == f5(=[a2+12]) (c.eq.s at 0xda6302c)).
  The `bc1f` branch at 0xda63058 targets 0xda6306c, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0xda63064 targets 0xda630b8, is taken when at(=[a0+1404]) == a0(=[a2+4]), and falls through when at(=[a0+1404]) != a0(=[a2+4]).
  The `beq` branch at 0xda630c0 targets 0xda63180, is taken when a0(=[a2+4]) == v0(=0x4), and falls through when a0(=[a2+4]) != v0(=0x4).
  The `beq` branch at 0xda630cc targets 0xda63214, is taken when a2(=[a2+4]) == v1(=0x3), and falls through when a2(=[a2+4]) != v1(=0x3).
  The `beq` branch at 0xda630d4 targets 0xda63284, is taken when a2(=[a2+4]) == a1(=0x2), and falls through when a2(=[a2+4]) != a1(=0x2).
  The `beq` branch at 0xda630dc targets 0xda632d4, is taken when a2(=[a2+4]) == at(=0x1), and falls through when a2(=[a2+4]) != at(=0x1).
  The `blez` branch at 0xda630e4 targets 0xda63160, is taken when t1(=[a2]) <= 0 (signed), and falls through when t1(=[a2]) > 0 (signed).
  The `beq` branch at 0xda630f8 targets 0xda63108 and is always taken.
  The `beq` branch at 0xda63100 targets 0xda63160, is taken when a7(?) == t0(=(([a2] << 0x2) + a4)), and falls through when a7(?) != t0(=(([a2] << 0x2) + a4)).
  The `blez` branch at 0xda63120 targets 0xda63100, is taken when v0(=[a2+4]) <= 0 (signed), and falls through when v0(=[a2+4]) > 0 (signed).
  The `bne` branch at 0xda63150 targets 0xda63130, is taken when a0(?) < v1(=[a2+4]) (signed), and falls through when a0(?) >= v1(=[a2+4]) (signed).
  The `beq` branch at 0xda63158 targets 0xda63100 and is always taken.
  The `blez` branch at 0xda63180 targets 0xda63160, is taken when t1(=[a2]) <= 0 (signed), and falls through when t1(=[a2]) > 0 (signed).
  The `bne` branch at 0xda63204 targets 0xda631c0, is taken when a0(?) != a6(=(([a2] << 0x2) + (([a2] << 0x2) + a4))), and falls through when a0(?) == a6(=(([a2] << 0x2) + (([a2] << 0x2) + a4))).
  The `beq` branch at 0xda6320c targets 0xda63164 and is always taken.
  The `blez` branch at 0xda63214 targets 0xda63160, is taken when t1(=[a2]) <= 0 (signed), and falls through when t1(=[a2]) > 0 (signed).
  The `bne` branch at 0xda63274 targets 0xda63240, is taken when a0(?) != a6(=(([a2] << 0x2) + (([a2] << 0x2) + a4))), and falls through when a0(?) == a6(=(([a2] << 0x2) + (([a2] << 0x2) + a4))).
  The `beq` branch at 0xda6327c targets 0xda63164 and is always taken.
  The `blez` branch at 0xda63284 targets 0xda63160, is taken when t1(=[a2]) <= 0 (signed), and falls through when t1(=[a2]) > 0 (signed).
  The `bne` branch at 0xda632c4 targets 0xda632a0, is taken when a0(?) != a6(=(([a2] << 0x2) + (([a2] << 0x2) + a4))), and falls through when a0(?) == a6(=(([a2] << 0x2) + (([a2] << 0x2) + a4))).
  The `beq` branch at 0xda632cc targets 0xda63164 and is always taken.
  The `blez` branch at 0xda632d4 targets 0xda63160, is taken when t1(=[a2]) <= 0 (signed), and falls through when t1(=[a2]) > 0 (signed).
  The `beq` branch at 0xda632ec targets 0xda6330c, is taken when (t1(=[a2]) & 0x1) == 0, and falls through when (t1(=[a2]) & 0x1) != 0.
  The `beq` branch at 0xda63314 targets 0xda6335c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xda63354 targets 0xda63330, is taken when a0(?) != t0(=(([a2] << 0x2) + a4)), and falls through when a0(?) == t0(=(([a2] << 0x2) + a4)).
  The `beq` branch at 0xda6335c targets 0xda63164 and is always taken.
  The return at 0xda63168 has v0 = one of ?, 0x4.
  The return at 0xda63178 has v0 = ?.
- `DoEvalCoord1` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda636f0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda636f0-0xda63a14 (804 bytes).
  It occupies 804 bytes.
  The `lw` at 0xda6372c loads 4 bytes from ?.
  The `sw` at 0xda63738 stores 4 bytes to ?.
  The `lbu` at 0xda6373c loads 1 byte from a0 (arg0 at entry) +0xc8d.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x710, including `lw` at 0xda63744, `lw` at 0xda6378c, `lw` at 0xda637cc.
  The `lw` at 0xda6376c loads 4 bytes from a0 (arg0 at entry) +0x6fe8.
  9 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x17ec, including `lw` at 0xda6377c, `lw` at 0xda637bc, `lw` at 0xda637fc.
  The `lw` at 0xda63780 loads 4 bytes from [a0+6124] +0x5cc.
  The `lw` at 0xda637ac loads 4 bytes from a0 (arg0 at entry) +0x6ffc.
  4 such `lw` accesses load 4 bytes from [a0+6124] +0x67c, including `lw` at 0xda637c0, `lw` at 0xda638e8, `lw` at 0xda63948.
  The `lw` at 0xda637ec loads 4 bytes from a0 (arg0 at entry) +0x6fec.
  The `lw` at 0xda63800 loads 4 bytes from [a0+6124] +0x5fc.
  The `lw` at 0xda63830 loads 4 bytes from a0 (arg0 at entry) +0x7004.
  The `lw` at 0xda63844 loads 4 bytes from [a0+6124] +0x52c.
  The `lw` at 0xda63874 loads 4 bytes from a0 (arg0 at entry) +0x7000.
  The `lw` at 0xda63888 loads 4 bytes from [a0+6124] +0x50c.
  The `lw` at 0xda638cc loads 4 bytes from a0 (arg0 at entry) +0x6ff8.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xdd0, including `lwc1` at 0xda638dc, `lwc1` at 0xda6393c, `lwc1` at 0xda639e4.
  The `lw` at 0xda63924 loads 4 bytes from a0 (arg0 at entry) +0x6ff4.
  The `lw` at 0xda63984 loads 4 bytes from a0 (arg0 at entry) +0x6fe4.
  The `lw` at 0xda63998 loads 4 bytes from [a0+6124] +0x594.
  The `lw` at 0xda639c8 loads 4 bytes from a0 (arg0 at entry) +0x6ff0.
  The `bgezall` at 0xda63774 calls DoDomain1 [0xda63020] with a0=sp-1536, a1=a1 at entry (arg1), a2=a0+28092, a3=sp-112, a4=[a0+28648], a5=sp-1536.
  The `jalr` at 0xda63784 calls (unknown callee) with a0=sp-112, a1=?, a2=?, a3=?.
  The `bgezall` at 0xda637b4 calls DoDomain1 [0xda63020] with a0=sp-1536, a1=?, a2=a0+28212, a3=sp-96, a4=[a0+28668].
  The `jalr` at 0xda637c4 calls (unknown callee) with a0=sp-96, a1=?, a2=?, a3=?.
  The `bgezall` at 0xda637f4 calls DoDomain1 [0xda63020] with a0=sp-1536, a1=?, a2=a0+28116, a3=sp-80, a4=[a0+28652].
  The `jalr` at 0xda63804 calls (unknown callee) with a0=sp-80, a1=?, a2=?, a3=?.
  The `bgezall` at 0xda63838 calls DoDomain1 [0xda63020] with a0=sp-1536, a1=?, a2=a0+28260, a3=sp-64, a4=[a0+28676].
  The `jalr` at 0xda63850 calls (unknown callee) with a0=sp-64, a1=?, a2=?, a3=?.
  The `bgezall` at 0xda6387c calls DoDomain1 [0xda63020] with a0=sp-1536, a1=?, a2=a0+28236, a3=sp-64, a4=[a0+28672].
  The `jalr` at 0xda63894 calls (unknown callee) with a0=sp-64, a1=?, a2=?, a3=?.
  The `bgezall` at 0xda638d4 calls DoDomain1 [0xda63020] with a0=sp-1536, a1=?, a2=a0+28188, a3=sp-96, a4=[a0+28664].
  The `jalr` at 0xda638ec calls (unknown callee) with a0=sp-96, a1=?, a2=?, a3=?.
  The `bgezall` at 0xda6392c calls DoDomain1 [0xda63020] with a0=sp-1536, a1=?, a2=a0+28164, a3=sp-96, a4=[a0+28660].
  The `jalr` at 0xda6394c calls (unknown callee) with a0=sp-96, a1=?, a2=?, a3=?.
  The `bgezall` at 0xda6398c calls DoDomain1 [0xda63020] with a0=sp-1536, a1=a1 at entry (arg1), a2=a0+28068, a3=sp-112, a4=[a0+28644], a5=sp-1536.
  The `jalr` at 0xda6399c calls (unknown callee) with a0=sp-112, a1=?, a2=?, a3=?.
  The `bgezall` at 0xda639d0 calls DoDomain1 [0xda63020] with a0=sp-1536, a1=?, a2=a0+28140, a3=sp-96, a4=[a0+28656].
  The `jalr` at 0xda639f4 calls (unknown callee) with a0=sp-96, a1=?, a2=?, a3=?.
  The `bgtz` branch at 0xda63734 targets 0xda63720, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The `beq` branch at 0xda63740 targets 0xda63960, is taken when v0(=[a0+3213]:1) == 0, and falls through when v0(=[a0+3213]:1) != 0.
  The `beq` branch at 0xda6374c targets 0xda63900, is taken when (a0(=[a0+1808]) & 0x2) == 0, and falls through when (a0(=[a0+1808]) & 0x2) != 0.
  The `beq` branch at 0xda63798 targets 0xda638b4, is taken when (a0(=[a0+1808]) & 0x40) == 0, and falls through when (a0(=[a0+1808]) & 0x40) != 0.
  The `beq` branch at 0xda637d8 targets 0xda63814, is taken when (a0(=[a0+1808]) & 0x4) == 0, and falls through when (a0(=[a0+1808]) & 0x4) != 0.
  The `beq` branch at 0xda63818 targets 0xda63860, is taken when (a0(=[a0+1808]) & 0x100) == 0, and falls through when (a0(=[a0+1808]) & 0x100) != 0.
  The `beq` branch at 0xda63858 targets 0xda638a0 and is always taken.
  The `beq` branch at 0xda63860 targets 0xda638a0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xda638b8 targets 0xda6390c, is taken when (a0(=[a0+1808]) & 0x20) == 0, and falls through when (a0(=[a0+1808]) & 0x20) != 0.
  The `beq` branch at 0xda638f8 targets 0xda637d4 and is always taken.
  The `beq` branch at 0xda63904 targets 0xda63794 and is always taken.
  The `beq` branch at 0xda63910 targets 0xda639b0, is taken when (a0(=[a0+1808]) & 0x10) == 0, and falls through when (a0(=[a0+1808]) & 0x10) != 0.
  The `beq` branch at 0xda63958 targets 0xda637d4 and is always taken.
  The `beq` branch at 0xda63964 targets 0xda63a08, is taken when (a0(=[a0+1808]) & 0x1) == 0, and falls through when (a0(=[a0+1808]) & 0x1) != 0.
  The `beq` branch at 0xda639a8 targets 0xda63794 and is always taken.
  The `beq` branch at 0xda639b4 targets 0xda637d4, is taken when (a0(=[a0+1808]) & 0x8) == 0, and falls through when (a0(=[a0+1808]) & 0x8) != 0.
  The `beq` branch at 0xda63a00 targets 0xda637d4 and is always taken.
  The `beq` branch at 0xda63a0c targets 0xda63794 and is always taken.
  The return at 0xda638ac has v0 = one of ret(?), ?.
- `ComputeFirstPartials` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda63aa0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda63aa0-0xda63b3c (156 bytes).
  It occupies 156 bytes.
  The `lwc1` at 0xda63aa0 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xda63aa4 loads 4 bytes from a1 (arg1 at entry) +0xc.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lwc1` at 0xda63aa8, `lwc1` at 0xda63af4.
  6 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lwc1` at 0xda63aac, `lwc1` at 0xda63ac4, `lwc1` at 0xda63adc.
  The `lwc1` at 0xda63ab8 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda63abc stores 4 bytes to a1 (arg1 at entry) +0x0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lwc1` at 0xda63ac0, `lwc1` at 0xda63b0c.
  The `lwc1` at 0xda63ad0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `swc1` at 0xda63ad4 stores 4 bytes to a1 (arg1 at entry) +0x4.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lwc1` at 0xda63ad8, `lwc1` at 0xda63b24.
  The `swc1` at 0xda63ae8 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lwc1` at 0xda63aec loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xda63af0 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0xda63b04 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `swc1` at 0xda63b08 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xda63b1c loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `swc1` at 0xda63b20 stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `swc1` at 0xda63b38 stores 4 bytes to a2 (arg2 at entry) +0x8.
  The return at 0xda63b34 has v0 = ?.
- `ComputeNormal2` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda63b40 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda63b40-0xda63bb8 (120 bytes).
  It occupies 120 bytes.
  2 such `lwc1` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lwc1` at 0xda63b40, `lwc1` at 0xda63b60.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xda63b44, `lwc1` at 0xda63b68.
  2 such `lwc1` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lwc1` at 0xda63b48, `lwc1` at 0xda63b84.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xda63b4c, `lwc1` at 0xda63b7c.
  The `swc1` at 0xda63b58 stores 4 bytes to a1 (arg1 at entry) +0x0.
  2 such `lwc1` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lwc1` at 0xda63b5c, `lwc1` at 0xda63b80.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xda63b64, `lwc1` at 0xda63b78.
  The `swc1` at 0xda63b74 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `swc1` at 0xda63b90 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0xda63b98 loads 4 bytes from a0 (arg0 at entry) +0x2dd8.
  The `jalr` at 0xda63ba4 calls (unknown callee) with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda63bb0 has v0 = ret(?).
- `DoDomain2` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda63bc0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda63bc0-0xda65ba8 (8168 bytes).
  It occupies 8168 bytes.
  The `lwc1` at 0xda63bc0 loads 4 bytes from a3 (arg3 at entry) +0x10.
  The `lwc1` at 0xda63bc4 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `lwc1` at 0xda63bec loads 4 bytes from a3 (arg3 at entry) +0x14.
  The `lwc1` at 0xda63bf0 loads 4 bytes from a3 (arg3 at entry) +0x18.
  The `lwc1` at 0xda63c18 loads 4 bytes from a0 (arg0 at entry) +0x2f4.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0xda63c20, `lw` at 0xda63c8c, `lw` at 0xda63d00.
  The `lw` at 0xda63c2c loads 4 bytes from a0 (arg0 at entry) +0x57c.
  The `lwc1` at 0xda63c44 loads 4 bytes from a0 (arg0 at entry) +0x2f8.
  17 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0xda63c50, `lw` at 0xda63c80, `lw` at 0xda63dd0.
  The `lw` at 0xda63c54 loads 4 bytes from a0 (arg0 at entry) +0x580.
  The `sw` at 0xda63c78 stores 4 bytes to a0 (arg0 at entry) +0x588.
  The `swc1` at 0xda63c84 stores 4 bytes to a0 (arg0 at entry) +0x2f8.
  The `sw` at 0xda63c88 stores 4 bytes to a0 (arg0 at entry) +0x580.
  The `lw` at 0xda63c98 loads 4 bytes from a3 (arg3 at entry) +0x0.
  69 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda63cfc, `swc1` at 0xda63dbc, `swc1` at 0xda63ed8.
  237 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda63d1c, `lwc1` at 0xda63d20, `lwc1` at 0xda63d60.
  76 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x39c, including `lwc1` at 0xda63e08, `lwc1` at 0xda63ea0, `lwc1` at 0xda63ee0.
  44 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3a0, including `lwc1` at 0xda63ea8, `lwc1` at 0xda63ee8, `lwc1` at 0xda63f30.
  24 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3a4, including `lwc1` at 0xda63eb0, `lwc1` at 0xda63ef0, `lwc1` at 0xda63f38.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3a8, including `lwc1` at 0xda63ec4, `lwc1` at 0xda63f00, `lwc1` at 0xda63f48.
  34 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x2fc, including `lwc1` at 0xda63ed0, `lwc1` at 0xda64474, `lwc1` at 0xda64714.
  27 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x300, including `lwc1` at 0xda63f14, `lwc1` at 0xda641f4, `lwc1` at 0xda64564.
  16 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x304, including `lwc1` at 0xda63f5c, `lwc1` at 0xda642c4, `lwc1` at 0xda64630.
  7 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x308, including `lwc1` at 0xda63fc4, `lwc1` at 0xda64390, `lwc1` at 0xda64b1c.
  The `sw` at 0xda64048 stores 4 bytes to a0 (arg0 at entry) +0x584.
  The `swc1` at 0xda64054 stores 4 bytes to a0 (arg0 at entry) +0x2f4.
  The `sw` at 0xda64058 stores 4 bytes to a0 (arg0 at entry) +0x57c.
  7 such `lwc1` accesses load 4 bytes from a5 (arg5 at entry) +0x0, including `lwc1` at 0xda65038, `lwc1` at 0xda65200, `lwc1` at 0xda6541c.
  17 such `swc1` accesses store 4 bytes to a4 (arg4 at entry) +0x0, including `swc1` at 0xda6504c, `swc1` at 0xda65064, `swc1` at 0xda6507c.
  6 such `lwc1` accesses load 4 bytes from (([a3] << 0x2) + a5) +0x0, including `lwc1` at 0xda65050, `lwc1` at 0xda65208, `lwc1` at 0xda65424.
  2 such `lwc1` accesses load 4 bytes from (([a3] << 0x2) + (([a3] << 0x2) + a5)) +0x0, including `lwc1` at 0xda65068, `lwc1` at 0xda656c0.
  The `lwc1` at 0xda65080 loads 4 bytes from (([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a5))) +0x0.
  3 such `lwc1` accesses load 4 bytes from (a5 + (([a3] + [a3]) << 0x2)) +0x0, including `lwc1` at 0xda65224, `lwc1` at 0xda65434, `lwc1` at 0xda6581c.
  2 such `lwc1` accesses load 4 bytes from (([a3] << 0x2) + (a5 + (([a3] + [a3]) << 0x2))) +0x0, including `lwc1` at 0xda6522c, `lwc1` at 0xda65824.
  The `lwc1` at 0xda65248 loads 4 bytes from ((([a3] + [a3]) << 0x2) + (a5 + (([a3] + [a3]) << 0x2))) +0x0.
  The `lwc1` at 0xda65250 loads 4 bytes from (([a3] << 0x2) + ((([a3] + [a3]) << 0x2) + (a5 + (([a3] + [a3]) << 0x2)))) +0x0.
  The `lwc1` at 0xda6544c loads 4 bytes from (a5 + ((([a3] + [a3]) + [a3]) << 0x2)) +0x0.
  The `lwc1` at 0xda65454 loads 4 bytes from (([a3] << 0x2) + (a5 + ((([a3] + [a3]) + [a3]) << 0x2))) +0x0.
  The `lwc1` at 0xda65464 loads 4 bytes from ((([a3] + [a3]) << 0x2) + (a5 + ((([a3] + [a3]) + [a3]) << 0x2))) +0x0.
  The `bgezall` at 0xda63c68 calls PreEvaluate [0xda62ae0] with a0=[a3+8], a1=?, a2=a0+924, a3=0xda62ae0.
  The `bgezall` at 0xda64038 calls PreEvaluate [0xda62ae0] with a0=[a3+4], a1=a1 at entry (arg1), a2=a0+764, a3=a3 at entry (arg3).
  The `bc1t` branch at 0xda63be4 targets 0xda63cd8, is taken when f5(=[a3+12]) == f6(=[a3+16]) (c.eq.s at 0xda63bd0), and falls through when not (f5(=[a3+12]) == f6(=[a3+16]) (c.eq.s at 0xda63bd0)).
  The `bc1t` branch at 0xda63bf8 targets 0xda63cd8, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `bc1f` branch at 0xda63c24 targets 0xda64024, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bne` branch at 0xda63c30 targets 0xda64024, is taken when at(=[a0+1404]) != a0(=[a3+4]), and falls through when at(=[a0+1404]) == a0(=[a3+4]).
  The `bc1f` branch at 0xda63c4c targets 0xda63c5c, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `beq` branch at 0xda63c58 targets 0xda63c8c, is taken when at(=[a0+1408]) == a0(=[a3+8]), and falls through when at(=[a0+1408]) != a0(=[a3+8]).
  The `beq` branch at 0xda63c94 targets 0xda64068, is taken when a0(=[a3+4]) == a2(=0x4), and falls through when a0(=[a3+4]) != a2(=0x4).
  The `beq` branch at 0xda63ca0 targets 0xda640ac, is taken when a0(=[a3+4]) == a3(=0x3), and falls through when a0(=[a3+4]) != a3(=0x3).
  The `beq` branch at 0xda63ca8 targets 0xda640f0, is taken when a0(=[a3+4]) == a5(=0x2), and falls through when a0(=[a3+4]) != a5(=0x2).
  The `beq` branch at 0xda63cb0 targets 0xda64134, is taken when a0(=[a3+4]) == a6(=0x1), and falls through when a0(=[a3+4]) != a6(=0x1).
  The `blez` branch at 0xda63cb8 targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xda63cd0 targets 0xda63cfc and is always taken.
  The `beq` branch at 0xda63cf4 targets 0xda64014, is taken when a3(?) == t2(=(([a3] << 0x2) + a5)), and falls through when a3(?) != t2(=(([a3] << 0x2) + a5)).
  The `blez` branch at 0xda63d0c targets 0xda63cf0, is taken when at(=[a3+4]) <= 0 (signed), and falls through when at(=[a3+4]) > 0 (signed).
  The `beq` branch at 0xda63d14 targets 0xda63dd0 and is always taken.
  The `bne` branch at 0xda63d30 targets 0xda63d1c, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xda63d44 targets 0xda63db4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xda63da4 targets 0xda63d60, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xda63dc8 targets 0xda63cf0, is taken when t1(?) >= a1(=[a3+4]) (signed), and falls through when t1(?) < a1(=[a3+4]) (signed).
  The `blez` branch at 0xda63de0 targets 0xda63db4, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda63dfc targets 0xda63d38, is taken when (t8(?) & 0x3) == 0, and falls through when (t8(?) & 0x3) != 0.
  The `beq` branch at 0xda63e04 targets 0xda63d20 and is always taken.
  The `blez` branch at 0xda63e14 targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xda64004 targets 0xda63ea0, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xda64060 targets 0xda63c40 and is always taken.
  The `beq` branch at 0xda6406c targets 0xda63e0c, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0xda64074 targets 0xda649ec, is taken when a0(=[a3+8]) == at(=0x3), and falls through when a0(=[a3+8]) != at(=0x3).
  The `beq` branch at 0xda6407c targets 0xda64ce0, is taken when a0(=[a3+8]) == v0(=0x2), and falls through when a0(=[a3+8]) != v0(=0x2).
  The `beq` branch at 0xda64084 targets 0xda64ffc, is taken when a0(=[a3+8]) == v1(=0x1), and falls through when a0(=[a3+8]) != v1(=0x1).
  The `blez` branch at 0xda6408c targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xda640a4 targets 0xda643a8 and is always taken.
  The `beq` branch at 0xda640b0 targets 0xda64b68, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0xda640b8 targets 0xda64de0, is taken when a0(=[a3+8]) == a3(=0x3), and falls through when a0(=[a3+8]) != a3(=0x3).
  The `beq` branch at 0xda640c0 targets 0xda651bc, is taken when a0(=[a3+8]) == at(=0x2), and falls through when a0(=[a3+8]) != at(=0x2).
  The `beq` branch at 0xda640c8 targets 0xda6565c, is taken when a0(=[a3+8]) == v0(=0x1), and falls through when a0(=[a3+8]) != v0(=0x1).
  The `blez` branch at 0xda640d0 targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xda640e8 targets 0xda64648 and is always taken.
  The `beq` branch at 0xda640f4 targets 0xda64ef8, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0xda640fc targets 0xda653d0, is taken when a0(=[a3+8]) == a3(=0x3), and falls through when a0(=[a3+8]) != a3(=0x3).
  The `beq` branch at 0xda64104 targets 0xda657bc, is taken when a0(=[a3+8]) == a5(=0x2), and falls through when a0(=[a3+8]) != a5(=0x2).
  The `beq` branch at 0xda6410c targets 0xda659ac, is taken when a0(=[a3+8]) == at(=0x1), and falls through when a0(=[a3+8]) != at(=0x1).
  The `blez` branch at 0xda64114 targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xda6412c targets 0xda647e8 and is always taken.
  The `beq` branch at 0xda64138 targets 0xda655c8, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0xda64140 targets 0xda65934, is taken when a0(=[a3+8]) == a3(=0x3), and falls through when a0(=[a3+8]) != a3(=0x3).
  The `beq` branch at 0xda64148 targets 0xda65aac, is taken when a0(=[a3+8]) == a5(=0x2), and falls through when a0(=[a3+8]) != a5(=0x2).
  The `beq` branch at 0xda64150 targets 0xda65b08, is taken when a0(=[a3+8]) == a6(=0x1), and falls through when a0(=[a3+8]) != a6(=0x1).
  The `blez` branch at 0xda64158 targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xda64170 targets 0xda64998 and is always taken.
  The `beq` branch at 0xda64184 targets 0xda641f4, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda641e4 targets 0xda641a0, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xda64204 targets 0xda642c4, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda64224 targets 0xda64248, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xda64240 targets 0xda6422c, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xda64254 targets 0xda642c4, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda642b4 targets 0xda64270, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xda642d4 targets 0xda64390, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda642f4 targets 0xda64318, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xda64310 targets 0xda642fc, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xda64324 targets 0xda64390, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda64384 targets 0xda64340, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xda643a0 targets 0xda64014, is taken when a3(?) == t2(=(([a3] << 0x2) + a5)), and falls through when a3(?) != t2(=(([a3] << 0x2) + a5)).
  The `blez` branch at 0xda643b0 targets 0xda64474, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda643d0 targets 0xda643f4, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xda643ec targets 0xda643d8, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xda64400 targets 0xda64474, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda64464 targets 0xda64420, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xda64484 targets 0xda641f4, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda644a4 targets 0xda64178, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xda644c0 targets 0xda644ac, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xda644c8 targets 0xda6417c and is always taken.
  The `bne` branch at 0xda644e4 targets 0xda644d0, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xda644f8 targets 0xda64564, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda64554 targets 0xda64510, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xda64574 targets 0xda64630, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda64594 targets 0xda645b8, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xda645b0 targets 0xda6459c, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xda645c4 targets 0xda64630, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda64624 targets 0xda645e0, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xda64640 targets 0xda64014, is taken when a3(?) == t2(=(([a3] << 0x2) + a5)), and falls through when a3(?) != t2(=(([a3] << 0x2) + a5)).
  The `blez` branch at 0xda64650 targets 0xda64714, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda64670 targets 0xda64694, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xda6468c targets 0xda64678, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xda646a0 targets 0xda64714, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda64704 targets 0xda646c0, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xda64724 targets 0xda64564, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda64744 targets 0xda644ec, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `beq` branch at 0xda6474c targets 0xda644d4 and is always taken.
  The `beq` branch at 0xda64760 targets 0xda647d0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda647c4 targets 0xda64780, is taken when a0(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a0(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xda647e0 targets 0xda64014, is taken when a3(?) == t2(=(([a3] << 0x2) + a5)), and falls through when a3(?) != t2(=(([a3] << 0x2) + a5)).
  The `blez` branch at 0xda647f0 targets 0xda648b4, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda64810 targets 0xda64834, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xda6482c targets 0xda64818, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xda64840 targets 0xda648b4, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda648a4 targets 0xda64860, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xda648c4 targets 0xda647d0, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda648e4 targets 0xda64754, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xda64900 targets 0xda648ec, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xda64908 targets 0xda64758 and is always taken.
  The `beq` branch at 0xda6491c targets 0xda64980, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda64974 targets 0xda64930, is taken when a0(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a0(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xda64990 targets 0xda64014, is taken when a3(?) == t2(=(([a3] << 0x2) + a5)), and falls through when a3(?) != t2(=(([a3] << 0x2) + a5)).
  The `blez` branch at 0xda649a0 targets 0xda64980, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xda649c0 targets 0xda64910, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xda649dc targets 0xda649c8, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xda649e4 targets 0xda64914 and is always taken.
  The `blez` branch at 0xda649ec targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xda64b58 targets 0xda64a50, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xda64b60 targets 0xda64018 and is always taken.
  The `blez` branch at 0xda64b6c targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xda64ccc targets 0xda64bd0, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xda64cd8 targets 0xda64014 and is always taken.
  The `blez` branch at 0xda64ce0 targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xda64dd0 targets 0xda64d20, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xda64dd8 targets 0xda64018 and is always taken.
  The `blez` branch at 0xda64de0 targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xda64ee8 targets 0xda64e2c, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xda64ef0 targets 0xda64018 and is always taken.
  The `blez` branch at 0xda64ef8 targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xda64fec targets 0xda64f48, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xda64ff4 targets 0xda64018 and is always taken.
  The `blez` branch at 0xda64ffc targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xda65030 targets 0xda650ac, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xda650c0 targets 0xda651b4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xda651ac targets 0xda650dc, is taken when a0(?) != a6(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a5))))), and falls through when a0(?) == a6(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a5))))).
  The `beq` branch at 0xda651b4 targets 0xda64018 and is always taken.
  The `blez` branch at 0xda651bc targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xda651f8 targets 0xda65288, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xda652ac targets 0xda653c8, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda653c0 targets 0xda652d0, is taken when t1(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when t1(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xda653c8 targets 0xda64018 and is always taken.
  The `blez` branch at 0xda653d0 targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xda65414 targets 0xda65498, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xda654bc targets 0xda655c0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda655b8 targets 0xda654e0, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xda655c0 targets 0xda64018 and is always taken.
  The `blez` branch at 0xda655c8 targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xda6564c targets 0xda65600, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xda65654 targets 0xda64018 and is always taken.
  The `blez` branch at 0xda6565c targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xda65688 targets 0xda656e8, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xda656f8 targets 0xda657b4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xda657ac targets 0xda65710, is taken when a0(?) != a5(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a5)))), and falls through when a0(?) == a5(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a5)))).
  The `beq` branch at 0xda657b4 targets 0xda64018 and is always taken.
  The `blez` branch at 0xda657bc targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xda657f0 targets 0xda65854, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xda65868 targets 0xda6592c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda65924 targets 0xda65884, is taken when a3(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a3(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xda6592c targets 0xda64018 and is always taken.
  The `blez` branch at 0xda65934 targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xda6599c targets 0xda65960, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xda659a4 targets 0xda64018 and is always taken.
  The `blez` branch at 0xda659ac targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xda659d0 targets 0xda65a14, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xda65a20 targets 0xda65aa4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xda65a9c targets 0xda65a34, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xda65aa4 targets 0xda64018 and is always taken.
  The `blez` branch at 0xda65aac targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xda65af8 targets 0xda65acc, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xda65b00 targets 0xda64018 and is always taken.
  The `blez` branch at 0xda65b08 targets 0xda64014, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xda65b24 targets 0xda65b4c, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xda65b54 targets 0xda65ba0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xda65b98 targets 0xda65b64, is taken when a2(?) != t2(=(([a3] << 0x2) + a5)), and falls through when a2(?) == t2(=(([a3] << 0x2) + a5)).
  The `beq` branch at 0xda65ba0 targets 0xda64018 and is always taken.
  The return at 0xda63ce0 has v0 = ?.
  The return at 0xda6401c has v0 = one of ?, 0x2, (([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a5))), (([a3] << 0x2) + (([a3] << 0x2) + a5)), (([a3] << 0x2) + a5).
  The instructions from 0xda63ce8 to 0xda63cec are not reached by any path from the entry, and their branches are not listed.
- `DoDomain2WithDerivs` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda65bb0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda65bb0-0xda687cc (11292 bytes).
  It occupies 11292 bytes.
  The `lwc1` at 0xda65bb0 loads 4 bytes from a3 (arg3 at entry) +0x10.
  The `lwc1` at 0xda65bb8 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `lwc1` at 0xda65be4 loads 4 bytes from a3 (arg3 at entry) +0x14.
  The `lwc1` at 0xda65be8 loads 4 bytes from a3 (arg3 at entry) +0x18.
  The `lwc1` at 0xda65c10 loads 4 bytes from a0 (arg0 at entry) +0x2f4.
  The `lw` at 0xda65c28 loads 4 bytes from a0 (arg0 at entry) +0x584.
  6 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0xda65c30, `lw` at 0xda65c4c, `lw` at 0xda65c7c.
  The `lw` at 0xda65c34 loads 4 bytes from a0 (arg0 at entry) +0x57c.
  The `sw` at 0xda65c74 stores 4 bytes to a0 (arg0 at entry) +0x584.
  The `swc1` at 0xda65c80 stores 4 bytes to a0 (arg0 at entry) +0x2f4.
  The `sw` at 0xda65c84 stores 4 bytes to a0 (arg0 at entry) +0x57c.
  The `lwc1` at 0xda65c94 loads 4 bytes from a0 (arg0 at entry) +0x2f8.
  The `lw` at 0xda65ca4 loads 4 bytes from a0 (arg0 at entry) +0x588.
  18 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0xda65cac, `lw` at 0xda65cc8, `lw` at 0xda65cf4.
  The `lw` at 0xda65cb0 loads 4 bytes from a0 (arg0 at entry) +0x580.
  The `sw` at 0xda65cec stores 4 bytes to a0 (arg0 at entry) +0x588.
  The `swc1` at 0xda65cf8 stores 4 bytes to a0 (arg0 at entry) +0x2f8.
  The `sw` at 0xda65cfc stores 4 bytes to a0 (arg0 at entry) +0x580.
  The `lw` at 0xda65d0c loads 4 bytes from a3 (arg3 at entry) +0x0.
  171 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda65d84, `swc1` at 0xda65d88, `swc1` at 0xda65d8c.
  385 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xda65df0, `lwc1` at 0xda65df4, `lwc1` at 0xda65df8.
  61 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4dc, including `lwc1` at 0xda65e78, `lwc1` at 0xda65fcc, `lwc1` at 0xda66070.
  61 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x39c, including `lwc1` at 0xda65e8c, `lwc1` at 0xda65f80, `lwc1` at 0xda66014.
  45 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e0, including `lwc1` at 0xda65ec8, `lwc1` at 0xda65fd4, `lwc1` at 0xda66078.
  45 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3a0, including `lwc1` at 0xda65ecc, `lwc1` at 0xda65f88, `lwc1` at 0xda6601c.
  22 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3a4, including `lwc1` at 0xda65f90, `lwc1` at 0xda66024, `lwc1` at 0xda660cc.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x3a8, including `lwc1` at 0xda65fa4, `lwc1` at 0xda66034, `lwc1` at 0xda660dc.
  62 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x2fc, including `lwc1` at 0xda65fb0, `lwc1` at 0xda66000, `lwc1` at 0xda66558.
  31 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x43c, including `lwc1` at 0xda65fbc, `lwc1` at 0xda66564, `lwc1` at 0xda66974.
  22 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e4, including `lwc1` at 0xda65fdc, `lwc1` at 0xda66080, `lwc1` at 0xda66128.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e8, including `lwc1` at 0xda65fec, `lwc1` at 0xda66090, `lwc1` at 0xda66138.
  28 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x300, including `lwc1` at 0xda66048, `lwc1` at 0xda660a4, `lwc1` at 0xda66658.
  14 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x440, including `lwc1` at 0xda6605c, `lwc1` at 0xda66664, `lwc1` at 0xda66a74.
  20 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x304, including `lwc1` at 0xda660f0, `lwc1` at 0xda6614c, `lwc1` at 0xda66758.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x444, including `lwc1` at 0xda66104, `lwc1` at 0xda66764, `lwc1` at 0xda66860.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x308, including `lwc1` at 0xda661a8, `lwc1` at 0xda66224, `lwc1` at 0xda66444.
  5 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x448, including `lwc1` at 0xda661bc, `lwc1` at 0xda66450, `lwc1` at 0xda67050.
  10 such `lwc1` accesses load 4 bytes from a7 (arg7 at entry) +0x0, including `lwc1` at 0xda68140, `lwc1` at 0xda6817c, `lwc1` at 0xda68324.
  4 such `lwc1` accesses load 4 bytes from (([a3] << 0x2) + a7) +0x0, including `lwc1` at 0xda68148, `lwc1` at 0xda68184, `lwc1` at 0xda68540.
  2 such `lwc1` accesses load 4 bytes from (a7 + (([a3] + [a3]) << 0x2)) +0x0, including `lwc1` at 0xda68158, `lwc1` at 0xda68194.
  5 such `swc1` accesses store 4 bytes to a4 (arg4 at entry) +0x0, including `swc1` at 0xda6816c, `swc1` at 0xda68338, `swc1` at 0xda68378.
  5 such `swc1` accesses store 4 bytes to a5 (arg5 at entry) +0x0, including `swc1` at 0xda68178, `swc1` at 0xda68344, `swc1` at 0xda68388.
  5 such `swc1` accesses store 4 bytes to a6 (arg6 at entry) +0x0, including `swc1` at 0xda681c0, `swc1` at 0xda6835c, `swc1` at 0xda683b4.
  The `lwc1` at 0xda68370 loads 4 bytes from a4 (arg4 at entry) +0x0.
  The `lwc1` at 0xda68380 loads 4 bytes from a5 (arg5 at entry) +0x0.
  The `lwc1` at 0xda6839c loads 4 bytes from a6 (arg6 at entry) +0x0.
  The `bgezall` at 0xda65c64 calls PreEvaluateWithDeriv [0xda62c90] with a0=[a3+4], a1=a1 at entry (arg1), a2=a0+764, a3=a0+1084.
  The `bgezall` at 0xda65cdc calls PreEvaluateWithDeriv [0xda62c90] with a0=[a3+8], a1=?, a2=a0+924, a3=a0+1244.
  The `bc1t` branch at 0xda65bdc targets 0xda65d54, is taken when f4(=[a3+12]) == f5(=[a3+16]) (c.eq.s at 0xda65bc8), and falls through when not (f4(=[a3+12]) == f5(=[a3+16]) (c.eq.s at 0xda65bc8)).
  The `bc1t` branch at 0xda65bf0 targets 0xda65d54, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `bc1f` branch at 0xda65c20 targets 0xda65c48, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bne` branch at 0xda65c2c targets 0xda65c50, is taken when at(=[a0+1412]) != a2(=0x1), and falls through when at(=[a0+1412]) == a2(=0x1).
  The `bne` branch at 0xda65c38 targets 0xda65c50, is taken when v0(=[a0+1404]) != a0(=[a3+4]), and falls through when v0(=[a0+1404]) == a0(=[a3+4]).
  The `beq` branch at 0xda65c40 targets 0xda65c90 and is always taken.
  The `bc1f` branch at 0xda65c9c targets 0xda65cc4, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bne` branch at 0xda65ca8 targets 0xda65ccc, is taken when at(=[a0+1416]) != a2(=0x1), and falls through when at(=[a0+1416]) == a2(=0x1).
  The `beq` branch at 0xda65cb4 targets 0xda65d00, is taken when v0(=[a0+1408]) == a0(=[a3+8]), and falls through when v0(=[a0+1408]) != a0(=[a3+8]).
  The `beq` branch at 0xda65cbc targets 0xda65ccc and is always taken.
  The `beq` branch at 0xda65d08 targets 0xda66290, is taken when a0(=[a3+4]) == a3(=0x4), and falls through when a0(=[a3+4]) != a3(=0x4).
  The `beq` branch at 0xda65d14 targets 0xda662e0, is taken when a0(=[a3+4]) == a4(=0x3), and falls through when a0(=[a3+4]) != a4(=0x3).
  The `beq` branch at 0xda65d1c targets 0xda66330, is taken when a0(=[a3+4]) == a5(=0x2), and falls through when a0(=[a3+4]) != a5(=0x2).
  The `beq` branch at 0xda65d24 targets 0xda66380, is taken when a0(=[a3+4]) == a2(=0x1), and falls through when a0(=[a3+4]) != a2(=0x1).
  The `blez` branch at 0xda65d2c targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xda65d4c targets 0xda65d84 and is always taken.
  The `beq` branch at 0xda65d7c targets 0xda66280, is taken when t1(?) == t2(=(([a3] << 0x2) + a7)), and falls through when t1(?) != t2(=(([a3] << 0x2) + a7)).
  The `blez` branch at 0xda65d98 targets 0xda65d70, is taken when at(=[a3+4]) <= 0 (signed), and falls through when at(=[a3+4]) > 0 (signed).
  The `beq` branch at 0xda65da0 targets 0xda65e78 and is always taken.
  The `beq` branch at 0xda65dd8 targets 0xda65e38, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xda65e24 targets 0xda65df0, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xda65e70 targets 0xda65d70, is taken when t3(?) >= a1(=[a3+4]) (signed), and falls through when t3(?) < a1(=[a3+4]) (signed).
  The `bne` branch at 0xda65eac targets 0xda65e38, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda65ebc targets 0xda65db0, is taken when (t9(?) & 0x1) == 0, and falls through when (t9(?) & 0x1) != 0.
  The `beq` branch at 0xda65ee0 targets 0xda65db0 and is always taken.
  The `blez` branch at 0xda65ef0 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xda66270 targets 0xda65f80, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xda66294 targets 0xda65ee8, is taken when a0(=[a3+8]) == a3(=0x4), and falls through when a0(=[a3+8]) != a3(=0x4).
  The `beq` branch at 0xda6629c targets 0xda66e18, is taken when a0(=[a3+8]) == a1(=0x3), and falls through when a0(=[a3+8]) != a1(=0x3).
  The `beq` branch at 0xda662a4 targets 0xda6739c, is taken when a0(=[a3+8]) == at(=0x2), and falls through when a0(=[a3+8]) != at(=0x2).
  The `beq` branch at 0xda662ac targets 0xda67970, is taken when a0(=[a3+8]) == a2(=0x1), and falls through when a0(=[a3+8]) != a2(=0x1).
  The `blez` branch at 0xda662b4 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xda662d8 targets 0xda66480 and is always taken.
  The `beq` branch at 0xda662e4 targets 0xda670ec, is taken when a0(=[a3+8]) == a3(=0x4), and falls through when a0(=[a3+8]) != a3(=0x4).
  The `beq` branch at 0xda662ec targets 0xda67590, is taken when a0(=[a3+8]) == a4(=0x3), and falls through when a0(=[a3+8]) != a4(=0x3).
  The `beq` branch at 0xda662f4 targets 0xda67ae4, is taken when a0(=[a3+8]) == at(=0x2), and falls through when a0(=[a3+8]) != at(=0x2).
  The `beq` branch at 0xda662fc targets 0xda67ecc, is taken when a0(=[a3+8]) == a2(=0x1), and falls through when a0(=[a3+8]) != a2(=0x1).
  The `blez` branch at 0xda66304 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xda66328 targets 0xda66890 and is always taken.
  The `beq` branch at 0xda66334 targets 0xda6779c, is taken when a0(=[a3+8]) == a3(=0x4), and falls through when a0(=[a3+8]) != a3(=0x4).
  The `beq` branch at 0xda6633c targets 0xda67c68, is taken when a0(=[a3+8]) == a4(=0x3), and falls through when a0(=[a3+8]) != a4(=0x3).
  The `beq` branch at 0xda66344 targets 0xda67fec, is taken when a0(=[a3+8]) == a5(=0x2), and falls through when a0(=[a3+8]) != a5(=0x2).
  The `beq` branch at 0xda6634c targets 0xda682f8, is taken when a0(=[a3+8]) == a2(=0x1), and falls through when a0(=[a3+8]) != a2(=0x1).
  The `blez` branch at 0xda66354 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xda66378 targets 0xda66ba0 and is always taken.
  The `beq` branch at 0xda66384 targets 0xda67dd4, is taken when a0(=[a3+8]) == a3(=0x4), and falls through when a0(=[a3+8]) != a3(=0x4).
  The `beq` branch at 0xda6638c targets 0xda68100, is taken when a0(=[a3+8]) == a4(=0x3), and falls through when a0(=[a3+8]) != a4(=0x3).
  The `beq` branch at 0xda66394 targets 0xda68504, is taken when a0(=[a3+8]) == a5(=0x2), and falls through when a0(=[a3+8]) != a5(=0x2).
  The `beq` branch at 0xda6639c targets 0xda68698, is taken when a0(=[a3+8]) == a2(=0x1), and falls through when a0(=[a3+8]) != a2(=0x1).
  The `blez` branch at 0xda663a4 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xda663c8 targets 0xda66db0 and is always taken.
  The `beq` branch at 0xda663e4 targets 0xda66444, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda66434 targets 0xda66400, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xda66478 targets 0xda66280, is taken when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `bne` branch at 0xda6649c targets 0xda66558, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda664c0 targets 0xda664e4, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xda664f8 targets 0xda66558, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xda66544 targets 0xda66510, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda66598 targets 0xda66658, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda665bc targets 0xda665e0, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xda665f4 targets 0xda66658, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xda66644 targets 0xda66610, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda66698 targets 0xda66758, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda666bc targets 0xda666e0, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xda666f4 targets 0xda66758, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xda66744 targets 0xda66710, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda66798 targets 0xda66444, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda667bc targets 0xda663d0, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xda667dc targets 0xda663d0 and is always taken.
  The `beq` branch at 0xda667f8 targets 0xda66854, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xda66844 targets 0xda66810, is taken when a0(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a0(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xda66888 targets 0xda66280, is taken when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `bne` branch at 0xda668ac targets 0xda66968, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda668d0 targets 0xda668f4, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xda66908 targets 0xda66968, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xda66954 targets 0xda66920, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda669a8 targets 0xda66a68, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda669cc targets 0xda669f0, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xda66a04 targets 0xda66a68, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xda66a54 targets 0xda66a20, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda66aa8 targets 0xda66854, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda66acc targets 0xda667e4, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xda66aec targets 0xda667e4 and is always taken.
  The `beq` branch at 0xda66b08 targets 0xda66b64, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xda66b54 targets 0xda66b20, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xda66b98 targets 0xda66280, is taken when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `bne` branch at 0xda66bbc targets 0xda66c78, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda66be0 targets 0xda66c04, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xda66c18 targets 0xda66c78, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xda66c64 targets 0xda66c30, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xda66cb8 targets 0xda66b64, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda66cdc targets 0xda66af4, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xda66cfc targets 0xda66af4 and is always taken.
  The `beq` branch at 0xda66d18 targets 0xda66d74, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xda66d64 targets 0xda66d30, is taken when a0(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a0(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xda66da8 targets 0xda66280, is taken when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `bne` branch at 0xda66dcc targets 0xda66d74, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xda66df0 targets 0xda66d04, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xda66e10 targets 0xda66d04 and is always taken.
  The `blez` branch at 0xda66e18 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xda670dc targets 0xda66e90, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xda670e4 targets 0xda66284 and is always taken.
  The `blez` branch at 0xda670f4 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xda67388 targets 0xda67170, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xda67394 targets 0xda66280 and is always taken.
  The `blez` branch at 0xda6739c targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xda67580 targets 0xda673e4, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xda67588 targets 0xda66284 and is always taken.
  The `blez` branch at 0xda67590 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xda6778c targets 0xda675e4, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xda67794 targets 0xda66284 and is always taken.
  The `blez` branch at 0xda6779c targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xda6795c targets 0xda677fc, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xda67968 targets 0xda66280 and is always taken.
  The `blez` branch at 0xda67970 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xda67ad4 targets 0xda679a8, is taken when a4(?) != a5(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a7))))), and falls through when a4(?) == a5(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a7))))).
  The `beq` branch at 0xda67adc targets 0xda66284 and is always taken.
  The `blez` branch at 0xda67ae4 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xda67c58 targets 0xda67b24, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xda67c60 targets 0xda66284 and is always taken.
  The `blez` branch at 0xda67c68 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xda67dc4 targets 0xda67cb0, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xda67dcc targets 0xda66284 and is always taken.
  The `blez` branch at 0xda67dd4 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xda67ebc targets 0xda67e14, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xda67ec4 targets 0xda66284 and is always taken.
  The `blez` branch at 0xda67ecc targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xda67fdc targets 0xda67efc, is taken when a0(?) != a4(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a7)))), and falls through when a0(?) == a4(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a7)))).
  The `beq` branch at 0xda67fe4 targets 0xda66284 and is always taken.
  The `blez` branch at 0xda67fec targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xda680f0 targets 0xda68024, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xda680f8 targets 0xda66284 and is always taken.
  The `blez` branch at 0xda68100 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xda68138 targets 0xda681c4, is taken when (a7(=[a3]) & 0x1) == 0, and falls through when (a7(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xda681dc targets 0xda682f0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xda682e8 targets 0xda681fc, is taken when a2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when a2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xda682f0 targets 0xda66284 and is always taken.
  The `blez` branch at 0xda682f8 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xda6831c targets 0xda683b8, is taken when (a7(=[a3]) & 0x1) == 0, and falls through when (a7(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xda683c8 targets 0xda684fc, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xda684f4 targets 0xda683e0, is taken when a0(?) != t2(=(([a3] << 0x2) + a7)), and falls through when a0(?) == t2(=(([a3] << 0x2) + a7)).
  The `beq` branch at 0xda684fc targets 0xda66284 and is always taken.
  The `blez` branch at 0xda68504 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xda68530 targets 0xda685a0, is taken when (a7(=[a3]) & 0x1) == 0, and falls through when (a7(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xda685b4 targets 0xda68690, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xda68688 targets 0xda685d0, is taken when t0(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t0(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xda68690 targets 0xda66284 and is always taken.
  The `blez` branch at 0xda68698 targets 0xda66280, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xda686bc targets 0xda68710, is taken when (a7(=[a3]) & 0x1) == 0, and falls through when (a7(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xda68720 targets 0xda687c4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xda687bc targets 0xda68738, is taken when a3(?) != t2(=(([a3] << 0x2) + a7)), and falls through when a3(?) == t2(=(([a3] << 0x2) + a7)).
  The `beq` branch at 0xda687c4 targets 0xda66284 and is always taken.
  The return at 0xda65d5c has v0 = ?.
  The return at 0xda66288 has v0 = one of ?, a7.
  The instructions from 0xda65d64 to 0xda65d6c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xda65da8 to 0xda65dac are not reached by any path from the entry, and their branches are not listed.
- `DoEvalCoord2` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda687d0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda687d0-0xda68d00 (1328 bytes).
  It occupies 1328 bytes.
  The `lw` at 0xda6881c loads 4 bytes from ?.
  The `sw` at 0xda68828 stores 4 bytes to ?.
  12 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xda6882c, `sw` at 0xda688c8, `sw` at 0xda68920.
  The `lw` at 0xda68830 loads 4 bytes from a0 (arg0 at entry) +0x700.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x714, including `lw` at 0xda68848, `lw` at 0xda688d4, `lw` at 0xda68928.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7028, including `lw` at 0xda68878, `lw` at 0xda68bb4.
  14 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0xda688bc, `lw` at 0xda68918, `lw` at 0xda68958.
  The `lbu` at 0xda688e4 loads 1 byte from a0 (arg0 at entry) +0xc8d.
  The `lw` at 0xda68908 loads 4 bytes from a0 (arg0 at entry) +0x700c.
  The `lw` at 0xda68948 loads 4 bytes from a0 (arg0 at entry) +0x7020.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x17ec, including `lw` at 0xda6897c, `lw` at 0xda689a4, `lw` at 0xda689cc.
  The `lw` at 0xda68980 loads 4 bytes from [a0+6124] +0x594.
  The `lw` at 0xda689a8 loads 4 bytes from [a0+6124] +0x5cc.
  The `lw` at 0xda689d0 loads 4 bytes from [a0+6124] +0x5fc.
  The `lw` at 0xda689f8 loads 4 bytes from [a0+6124] +0x67c.
  The `lw` at 0xda68a50 loads 4 bytes from a0 (arg0 at entry) +0x701c.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xdd0, including `lwc1` at 0xda68a60, `lwc1` at 0xda68b28, `lwc1` at 0xda68c60.
  3 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x30, including `swc1` at 0xda68a78, `swc1` at 0xda68b3c, `swc1` at 0xda68c74.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7024, including `lw` at 0xda68aa4, `lw` at 0xda68c94.
  The `lw` at 0xda68b0c loads 4 bytes from a0 (arg0 at entry) +0x7018.
  2 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x2c, including `swc1` at 0xda68b24, `swc1` at 0xda68c58.
  The `lw` at 0xda68b68 loads 4 bytes from a0 (arg0 at entry) +0x7010.
  The `lw` at 0xda68bfc loads 4 bytes from a0 (arg0 at entry) +0x7008.
  The `lw` at 0xda68c40 loads 4 bytes from a0 (arg0 at entry) +0x7014.
  The `swc1` at 0xda68c5c stores 4 bytes to a3 (arg3 at entry) +0x28.
  The `lw` at 0xda68cc4 loads 4 bytes from [a0+6124] +0x52c.
  The `lw` at 0xda68ce4 loads 4 bytes from [a0+6124] +0x50c.
  The `bgezall` at 0xda68880 calls DoDomain2WithDerivs [0xda65bb0] with a0=sp-1584, a1=?, a2=[a0+1812], a3=a0+28604, a4=a3+52, a5=sp-160, a6=sp-144, a7=[a0+28712].
  The `bgezall` at 0xda68898 calls ComputeFirstPartials [0xda63aa0] with a0=a3+52, a1=sp-160, a2=sp-144, a3=?.
  The `bgezall` at 0xda688b4 calls ComputeNormal2 [0xda63b40] with a0=a0 at entry (arg0), a1=a3+20, a2=sp-160, a3=sp-144.
  The `bgezall` at 0xda68910 calls DoDomain2 [0xda63bc0] with a0=sp-1584, a1=?, a2=[a0+1812], a3=a0+28324, a4=a3+4, a5=[a0+28684].
  The `bgezall` at 0xda68950 calls DoDomain2 [0xda63bc0] with a0=sp-1584, a1=?, a2=[a0+1812], a3=a0+28524, a4=a3+36, a5=[a0+28704].
  The `jalr` at 0xda68988 calls (unknown callee) with a0=a3+4, a1=?, a2=?, a3=?.
  The `jalr` at 0xda689b0 calls (unknown callee) with a0=a3+4, a1=?, a2=?, a3=?.
  The `jalr` at 0xda689d8 calls (unknown callee) with a0=a3+20, a1=?, a2=?, a3=?.
  The `jalr` at 0xda68a00 calls (unknown callee) with a0=a3+36, a1=?, a2=?, a3=?.
  The `bgezall` at 0xda68a58 calls DoDomain2 [0xda63bc0] with a0=sp-1584, a1=?, a2=[a0+1812], a3=a0+28484, a4=a3+36, a5=[a0+28700].
  The `bgezall` at 0xda68aac calls DoDomain2WithDerivs [0xda65bb0] with a0=sp-1584, a1=?, a2=[a0+1812], a3=a0+28564, a4=a3+52, a5=sp-128, a6=sp-112, a7=[a0+28708].
  The `bgezall` at 0xda68ac8 calls ComputeNormal2 [0xda63b40] with a0=a0 at entry (arg0), a1=a3+20, a2=sp-128, a3=sp-112.
  The `bgezall` at 0xda68b14 calls DoDomain2 [0xda63bc0] with a0=sp-1584, a1=?, a2=[a0+1812], a3=a0+28444, a4=a3+36, a5=[a0+28696].
  The `bgezall` at 0xda68b70 calls DoDomain2 [0xda63bc0] with a0=sp-1584, a1=?, a2=[a0+1812], a3=a0+28364, a4=a3+20, a5=[a0+28688], a6=sp-1584.
  The `bgezall` at 0xda68bbc calls DoDomain2 [0xda63bc0] with a0=sp-1584, a1=?, a2=[a0+1812], a3=a0+28604, a4=a3+52, a5=[a0+28712].
  The `bgezall` at 0xda68c04 calls DoDomain2 [0xda63bc0] with a0=sp-1584, a1=?, a2=[a0+1812], a3=a0+28284, a4=a3+4, a5=[a0+28680].
  The `bgezall` at 0xda68c48 calls DoDomain2 [0xda63bc0] with a0=sp-1584, a1=?, a2=[a0+1812], a3=a0+28404, a4=a3+36, a5=[a0+28692].
  The `bgezall` at 0xda68c9c calls DoDomain2 [0xda63bc0] with a0=sp-1584, a1=?, a2=[a0+1812], a3=a0+28564, a4=a3+52, a5=[a0+28708].
  The `jalr` at 0xda68cd0 calls (unknown callee) with a0=a3+52, a1=?, a2=?, a3=?.
  The `jalr` at 0xda68cf0 calls (unknown callee) with a0=a3+52, a1=?, a2=?, a3=?.
  The `bgtz` branch at 0xda68824 targets 0xda68810, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The `beq` branch at 0xda68844 targets 0xda68b40, is taken when (v0(=[a0+1792]) & v1(=0x800000)) == 0, and falls through when (v0(=[a0+1792]) & v1(=0x800000)) != 0.
  The `beq` branch at 0xda68850 targets 0xda68a7c, is taken when (a2(=[a0+1812]) & 0x100) == 0, and falls through when (a2(=[a0+1812]) & 0x100) != 0.
  The `beq` branch at 0xda688e8 targets 0xda68be0, is taken when at(=[a0+3213]:1) == 0, and falls through when at(=[a0+3213]:1) != 0.
  The `beq` branch at 0xda688f0 targets 0xda6892c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xda68930 targets 0xda68a34, is taken when (a2(=[a0+1812]) & 0x40) == 0, and falls through when (a2(=[a0+1812]) & 0x40) != 0.
  The `beq` branch at 0xda68974 targets 0xda68998, is taken when (a0(?) & 0x1) == 0, and falls through when (a0(?) & 0x1) != 0.
  The `beq` branch at 0xda6899c targets 0xda689c4, is taken when (a0(?) & 0x2) == 0, and falls through when (a0(?) & 0x2) != 0.
  The `beq` branch at 0xda689c4 targets 0xda689ec, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xda689ec targets 0xda68a10, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xda68a14 targets 0xda68ce0, is taken when s2(=one of -0x1, 0x3, 0x4) == at(=0x3), and falls through when s2(=one of -0x1, 0x3, 0x4) != at(=0x3).
  The `beq` branch at 0xda68a1c targets 0xda68cc0, is taken when v0(=one of -0x1, 0x3, 0x4) == v1(=0x4), and falls through when v0(=one of -0x1, 0x3, 0x4) != v1(=0x4).
  The `beq` branch at 0xda68a38 targets 0xda68af0, is taken when (a2(=[a0+1812]) & 0x20) == 0, and falls through when (a2(=[a0+1812]) & 0x20) != 0.
  The `beq` branch at 0xda68a74 targets 0xda68968 and is always taken.
  The `beq` branch at 0xda68a80 targets 0xda688d8, is taken when (a2(=[a0+1812]) & 0x80) == 0, and falls through when (a2(=[a0+1812]) & 0x80) != 0.
  The `beq` branch at 0xda68ae8 targets 0xda688d8 and is always taken.
  The `beq` branch at 0xda68af4 targets 0xda68c24, is taken when (a2(=[a0+1812]) & 0x10) == 0, and falls through when (a2(=[a0+1812]) & 0x10) != 0.
  The `beq` branch at 0xda68b38 targets 0xda68968 and is always taken.
  The `beq` branch at 0xda68b44 targets 0xda68b90, is taken when (a2(=[a0+1812]) & 0x4) == 0, and falls through when (a2(=[a0+1812]) & 0x4) != 0.
  The `beq` branch at 0xda68b88 targets 0xda68b98 and is always taken.
  The `beq` branch at 0xda68b9c targets 0xda68c78, is taken when (a2(=[a0+1812]) & 0x100) == 0, and falls through when (a2(=[a0+1812]) & 0x100) != 0.
  The `beq` branch at 0xda68bd8 targets 0xda688e4 and is always taken.
  The `beq` branch at 0xda68be4 targets 0xda6892c, is taken when (a2(=[a0+1812]) & 0x1) == 0, and falls through when (a2(=[a0+1812]) & 0x1) != 0.
  The `beq` branch at 0xda68c1c targets 0xda6892c and is always taken.
  The `beq` branch at 0xda68c28 targets 0xda68968, is taken when (a2(=[a0+1812]) & 0x8) == 0, and falls through when (a2(=[a0+1812]) & 0x8) != 0.
  The `beq` branch at 0xda68c70 targets 0xda68968 and is always taken.
  The `beq` branch at 0xda68c7c targets 0xda688e4, is taken when (a2(=[a0+1812]) & 0x80) == 0, and falls through when (a2(=[a0+1812]) & 0x80) != 0.
  The `beq` branch at 0xda68cb8 targets 0xda688e4 and is always taken.
  The `beq` branch at 0xda68cd8 targets 0xda68a24 and is always taken.
  The `beq` branch at 0xda68cf8 targets 0xda68a24 and is always taken.
  The return at 0xda68a2c has v0 = one of -0x1, 0x3, 0x4, ret(?).
- `sendChange` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda69030 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda69030-0xda69194 (356 bytes).
  It occupies 356 bytes.
  The `lwc1` at 0xda69030 loads 4 bytes from a0 (arg0 at entry) +0x1b0.
  The `lwc1` at 0xda69034 loads 4 bytes from a0 (arg0 at entry) +0x1b4.
  The `lwc1` at 0xda69038 loads 4 bytes from a0 (arg0 at entry) +0x1b8.
  The `lwc1` at 0xda6903c loads 4 bytes from a0 (arg0 at entry) +0x1bc.
  6 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0xda6904c, `lw` at 0xda69084, `lw` at 0xda690ac.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x17ec, including `lw` at 0xda69070, `lw` at 0xda69098, `lw` at 0xda690c0.
  The `lw` at 0xda69074 loads 4 bytes from [a0+6124] +0x594.
  The `lw` at 0xda6909c loads 4 bytes from [a0+6124] +0x67c.
  The `lw` at 0xda690c4 loads 4 bytes from [a0+6124] +0x5fc.
  The `lw` at 0xda690ec loads 4 bytes from [a0+6124] +0x50c.
  The `lw` at 0xda69110 loads 4 bytes from a0 (arg0 at entry) +0x700.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2e38, including `lw` at 0xda69120, `lw` at 0xda69144.
  The `swc1` at 0xda69140 stores 4 bytes to a0 (arg0 at entry) +0x1bc.
  The `swc1` at 0xda69148 stores 4 bytes to a0 (arg0 at entry) +0x1b8.
  The `swc1` at 0xda6914c stores 4 bytes to a0 (arg0 at entry) +0x1b4.
  The `swc1` at 0xda69158 stores 4 bytes to a0 (arg0 at entry) +0x1b0.
  The `lw` at 0xda69178 loads 4 bytes from [a0+6124] +0x52c.
  The `jalr` at 0xda6907c calls (unknown callee) with a0=a1+4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a1].
  The `jalr` at 0xda690a4 calls (unknown callee) with a0=a1+36, a1=?, a2=?, a3=[a1].
  The `jalr` at 0xda690cc calls (unknown callee) with a0=a1+20, a1=?, a2=?, a3=[a1].
  The `jalr` at 0xda690f4 calls (unknown callee) with a0=a1+52, a1=?, a2=?, a3=[a1].
  The `jalr` at 0xda69128 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a1].
  The `jalr` at 0xda69154 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xda69180 calls (unknown callee) with a0=a1+52, a1=?, a2=?, a3=[a1].
  The `beq` branch at 0xda69068 targets 0xda6908c, is taken when (a3(=[a1]) & 0x1) == 0, and falls through when (a3(=[a1]) & 0x1) != 0.
  The `beq` branch at 0xda69090 targets 0xda690b8, is taken when (a3(=[a1]) & 0x8) == 0, and falls through when (a3(=[a1]) & 0x8) != 0.
  The `beq` branch at 0xda690b8 targets 0xda690e0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xda690e0 targets 0xda6916c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xda69108 targets 0xda69160, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xda69118 targets 0xda69160, is taken when (v0(=[a0+1792]) & 0x80) == 0, and falls through when (v0(=[a0+1792]) & 0x80) != 0.
  The `beq` branch at 0xda6916c targets 0xda69108, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xda6918c targets 0xda69104 and is always taken.
  The return at 0xda69164 has v0 = one of ?, ret(?).
- `IsLegalRange` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab63f0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdab63f0-0xdab6460 (112 bytes).
  It occupies 112 bytes.
  The `jalr` at 0xdab643c calls __glSetError [0xdb11f10] with a0=0x501, a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `bltz` branch at 0xdab63f0 targets 0xdab6454, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `beq` branch at 0xdab63fc targets 0xdab6454, is taken when a1 >= 0x2 (signed), and falls through when a1 < 0x2 (signed).
  The `bltz` branch at 0xdab6410 targets 0xdab6434, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `bne` branch at 0xdab6418 targets 0xdab6434, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xdab6424 targets 0xdab6438, is taken when a2(=0x8000) < a0(?) (signed), and falls through when a2(=0x8000) >= a0(?) (signed).
  The return at 0xdab642c has v0 = 0x1.
  The return at 0xdab644c has v0 = 0x0.
  The return at 0xdab6458 has v0 = 0x0.
- `Clampf` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabc5e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdabc5e0-0xdabc610 (48 bytes).
  It occupies 48 bytes.
  The `bc1t` branch at 0xdabc5e4 targets 0xdabc608, is taken when f12 < f13 (c.lt.s at 0xdabc5e0), and falls through when not (f12 < f13 (c.lt.s at 0xdabc5e0)).
  The `bc1f` branch at 0xdabc5f0 targets 0xdabc600, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The return at 0xdabc5f8 has v0 = ?.
  The return at 0xdabc600 has v0 = ?.
  The return at 0xdabc608 has v0 = ?.
- `vvec` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad07e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad07e0-0xdad08bc (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0xdad07e0 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0xdad07e8 loads 4 bytes from a2 (arg2 at entry) +0xc.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xdad07f8, `lwc1` at 0xdad089c.
  The `lwc1` at 0xdad07fc loads 4 bytes from a1 (arg1 at entry) +0xc.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xdad0800, `lwc1` at 0xdad0880, `lwc1` at 0xdad0898.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xdad0804, `lwc1` at 0xdad0888, `lwc1` at 0xdad0894.
  5 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `swc1` at 0xdad0814, `swc1` at 0xdad083c, `swc1` at 0xdad0868.
  5 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `swc1` at 0xdad0818, `swc1` at 0xdad0840, `swc1` at 0xdad0870.
  5 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `swc1` at 0xdad081c, `swc1` at 0xdad0844, `swc1` at 0xdad0878.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lwc1` at 0xdad0820, `lwc1` at 0xdad0854.
  The `lwc1` at 0xdad0824 loads 4 bytes from a2 (arg2 at entry) +0xc.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lwc1` at 0xdad0828, `lwc1` at 0xdad085c.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lwc1` at 0xdad082c, `lwc1` at 0xdad0850.
  The `beq` branch at 0xdad07ec targets 0xdad0850, is taken when at(=([a1+12] << 0x1)) == 0, and falls through when at(=([a1+12] << 0x1)) != 0.
  The `beq` branch at 0xdad07f4 targets 0xdad087c, is taken when a4(=([a2+12] << 0x1)) == 0, and falls through when a4(=([a2+12] << 0x1)) != 0.
  The `beq` branch at 0xdad0858 targets 0xdad0894, is taken when a4(=([a2+12] << 0x1)) == 0, and falls through when a4(=([a2+12] << 0x1)) != 0.
  The return at 0xdad0848 has v0 = ?.
  The return at 0xdad0874 has v0 = ?.
  The return at 0xdad088c has v0 = ?.
  The return at 0xdad08b4 has v0 = ?.
- `Dot` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad17e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad17e0-0xdad1808 (40 bytes).
  It occupies 40 bytes.
  The `lwc1` at 0xdad17e0 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xdad17e4 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xdad17e8 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xdad17ec loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0xdad17f0 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lwc1` at 0xdad17f8 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The return at 0xdad1800 has v0 = ?.
- `SphereGen` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdad1810 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdad1810-0xdad18fc (236 bytes).
  It occupies 236 bytes.
  The `lw` at 0xdad181c loads 4 bytes from a0 (arg0 at entry) +0x2dd8.
  The `lwc1` at 0xdad1854 loads 4 bytes from a1 (arg1 at entry) +0x28.
  The `lwc1` at 0xdad185c loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `lwc1` at 0xdad1860 loads 4 bytes from a1 (arg1 at entry) +0x20.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xdcc, including `lwc1` at 0xdad18ac, `lwc1` at 0xdad18cc, `lwc1` at 0xdad18e4.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xdad18c8, `swc1` at 0xdad18e0.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xdad18d8, `swc1` at 0xdad18e8.
  The `jalr` at 0xdad1838 calls (unknown callee) with a0=sp-80, a1=a1+96, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xdad184c calls Dot [0xdad17e0] with a0=a1+32, a1=sp-80, a2=?, a3=?.
  The `bc1t` branch at 0xdad18b4 targets 0xdad18dc, is taken when f6 == f0(=0x0) (c.eq.s at 0xdad18a8), and falls through when not (f6 == f0(=0x0) (c.eq.s at 0xdad18a8)).
  The `beq` branch at 0xdad18d4 targets 0xdad18ec and is always taken.
  The return at 0xdad18f4 has v0 = ret(Dot).
- `Clear` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaffc40 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdaffc40-0xdaffed4 (660 bytes).
  It occupies 660 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0xdaffc54, `lw` at 0xdaffec8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0xdaffc68, `lw` at 0xdaffec4.
  The `lw` at 0xdaffc70 loads 4 bytes from [a0] +0x7368.
  The `lw` at 0xdaffc7c loads 4 bytes from [a0] +0x7360.
  The `lw` at 0xdaffc88 loads 4 bytes from [a0] +0x735c.
  The `lw` at 0xdaffc8c loads 4 bytes from [a0] +0x7364.
  The `lw` at 0xdaffc90 loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdaffc94 loads 4 bytes from [a0] +0xe48.
  The `lwc1` at 0xdaffc98 loads 4 bytes from [a0] +0x7780.
  The `lwc1` at 0xdaffc9c loads 4 bytes from [a0] +0x678.
  The `lwc1` at 0xdaffca0 loads 4 bytes from [a0] +0x77a0.
  The `lwc1` at 0xdaffca4 loads 4 bytes from [a0] +0x67c.
  The `lwc1` at 0xdaffca8 loads 4 bytes from [a0] +0x674.
  The `lwc1` at 0xdaffcac loads 4 bytes from a0 (arg0 at entry) +0x54.
  The `lwc1` at 0xdaffcb4 loads 4 bytes from [a0] +0x777c.
  The `lwc1` at 0xdaffcbc loads 4 bytes from a0 (arg0 at entry) +0x50.
  The `lwc1` at 0xdaffcc4 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `lwc1` at 0xdaffcd0 loads 4 bytes from [a0] +0x7778.
  The `lwc1` at 0xdaffcdc loads 4 bytes from [a0] +0x670.
  The `lw` at 0xdaffce8 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lwc1` at 0xdaffcf8 loads 4 bytes from a0 (arg0 at entry) +0x48.
  28 such `sh` accesses store 2 bytes to ?, including `sh` at 0xdaffdc4, `sh` at 0xdaffdc8, `sh` at 0xdaffdcc.
  The `lw` at 0xdaffeb0 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `jalr` at 0xdaffebc calls (unknown callee) with a0=[a0], a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=[a0].
  The `beq` branch at 0xdaffc84 targets 0xdaffeb0, is taken when t1(=[a0+16]) == 0, and falls through when t1(=[a0+16]) != 0.
  The `beq` branch at 0xdaffd68 targets 0xdaffe94, is taken when s0(=[[a0]+29536]) >= s1(=[[a0]+29544]) (signed), and falls through when s0(=[[a0]+29536]) < s1(=[[a0]+29544]) (signed).
  The `beq` branch at 0xdaffd9c targets 0xdaffdf8 and is always taken.
  The `beq` branch at 0xdaffdac targets 0xdaffdf0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xdaffde4 targets 0xdaffdc0, is taken when a0(?) != a7(=-0x1), and falls through when a0(?) == a7(=-0x1).
  The `beq` branch at 0xdaffdf0 targets 0xdaffe94, is taken when s0(?) == s1(=[[a0]+29544]), and falls through when s0(?) != s1(=[[a0]+29544]).
  The `beq` branch at 0xdaffe00 targets 0xdaffe5c, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `bne` branch at 0xdaffe54 targets 0xdaffe10, is taken when a1(?) != a7(=-0x1), and falls through when a1(?) == a7(=-0x1).
  The `beq` branch at 0xdaffe5c targets 0xdaffdf0, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `beq` branch at 0xdaffe6c targets 0xdaffda8, is taken when (t9(?) & 0x1) == 0, and falls through when (t9(?) & 0x1) != 0.
  The `beq` branch at 0xdaffe8c targets 0xdaffda4 and is always taken.
  The `beq` branch at 0xdaffecc targets 0xdaffc8c and is always taken.
  The return at 0xdaffea8 has v0 = ?.
- `Resize` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb156e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb156e0-0xdb15724 (68 bytes).
  It occupies 68 bytes.
  The `sb` at 0xdb15714 stores 1 byte to a0 (arg0 at entry) +0x60.
  The `jalr` at 0xdb15700 calls __glResizeBuffer [0xdb0b530] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdb1571c has v0 = 0x1.
- `Coverage` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb3c4e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb3c4e0-0xdb3c620 (320 bytes).
  It occupies 320 bytes.
  The `bc1f` branch at 0xdb3c528 targets 0xdb3c534, is taken when not (f10 <= f5 (c.le.s at 0xdb3c524)), and falls through when f10 <= f5 (c.le.s at 0xdb3c524).
  The `bc1f` branch at 0xdb3c534 targets 0xdb3c540, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0xdb3c540 targets 0xdb3c54c, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0xdb3c558 targets 0xdb3c564, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0xdb3c568 targets 0xdb3c574, is taken when not (f10 <= f5 (c.le.s at 0xdb3c564)), and falls through when f10 <= f5 (c.le.s at 0xdb3c564).
  The `bc1f` branch at 0xdb3c574 targets 0xdb3c580, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0xdb3c580 targets 0xdb3c58c, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0xdb3c598 targets 0xdb3c5a4, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0xdb3c5ac targets 0xdb3c5b8, is taken when not (f10 <= f5 (c.le.s at 0xdb3c5a4)), and falls through when f10 <= f5 (c.le.s at 0xdb3c5a4).
  The `bc1f` branch at 0xdb3c5b8 targets 0xdb3c5c4, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0xdb3c5c4 targets 0xdb3c5d0, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0xdb3c5d4 targets 0xdb3c5e0, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0xdb3c5e8 targets 0xdb3c5f4, is taken when not (f10 <= f5 (c.le.s at 0xdb3c5e0)), and falls through when f10 <= f5 (c.le.s at 0xdb3c5e0).
  The `bc1f` branch at 0xdb3c5f4 targets 0xdb3c600, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0xdb3c600 targets 0xdb3c60c, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0xdb3c60c targets 0xdb3c618, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The return at 0xdb3c618 has v0 = ?.
- `SetInitialParameters` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb3eac0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb3eac0-0xdb3f044 (1412 bytes).
  It occupies 1412 bytes.
  The `lw` at 0xdb3eac0 loads 4 bytes from a0 (arg0 at entry) +0x7514.
  The `lw` at 0xdb3eac4 loads 4 bytes from a0 (arg0 at entry) +0x7510.
  The `lw` at 0xdb3eadc loads 4 bytes from a0 (arg0 at entry) +0x763c.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75a4, including `lwc1` at 0xdb3eb34, `lwc1` at 0xdb3ed14, `lwc1` at 0xdb3efe4.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75b4, including `lwc1` at 0xdb3eb38, `lwc1` at 0xdb3ed18, `lwc1` at 0xdb3efe8.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xdb3eb3c, `lwc1` at 0xdb3ed1c, `lwc1` at 0xdb3eff0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75b8, including `lwc1` at 0xdb3eb4c, `lwc1` at 0xdb3ed2c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75a8, including `lwc1` at 0xdb3eb50, `lwc1` at 0xdb3ed30.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7584, including `swc1` at 0xdb3eb54, `swc1` at 0xdb3ed38, `swc1` at 0xdb3effc.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7558, including `swc1` at 0xdb3eb58, `swc1` at 0xdb3ed34, `swc1` at 0xdb3f00c.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7594, including `swc1` at 0xdb3eb60, `swc1` at 0xdb3ed40, `swc1` at 0xdb3f004.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xdb3eb64, `lwc1` at 0xdb3ed44.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75bc, including `lwc1` at 0xdb3eb74, `lwc1` at 0xdb3ed54.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75ac, including `lwc1` at 0xdb3eb78, `lwc1` at 0xdb3ed58.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7588, including `swc1` at 0xdb3eb7c, `swc1` at 0xdb3ed60.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x755c, including `swc1` at 0xdb3eb80, `swc1` at 0xdb3ed5c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7598, including `swc1` at 0xdb3eb88, `swc1` at 0xdb3ed68.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xdb3eb8c, `lwc1` at 0xdb3ed6c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75c0, including `lwc1` at 0xdb3eb9c, `lwc1` at 0xdb3ed7c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75b0, including `lwc1` at 0xdb3eba0, `lwc1` at 0xdb3ed80.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x758c, including `swc1` at 0xdb3eba4, `swc1` at 0xdb3ed88.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7560, including `swc1` at 0xdb3eba8, `swc1` at 0xdb3ed84.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x759c, including `swc1` at 0xdb3ebb0, `swc1` at 0xdb3ed90.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lwc1` at 0xdb3ebb8, `lwc1` at 0xdb3ed98.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7590, including `swc1` at 0xdb3ebc4, `swc1` at 0xdb3eda4.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75a0, including `swc1` at 0xdb3ebcc, `swc1` at 0xdb3edac.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7564, including `swc1` at 0xdb3ebd0, `swc1` at 0xdb3edb0.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x8c, including `lwc1` at 0xdb3ebe0, `lwc1` at 0xdb3edc0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7604, including `lwc1` at 0xdb3ebe4, `lwc1` at 0xdb3edc4.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x30, including `lwc1` at 0xdb3ebe8, `lwc1` at 0xdb3edc8.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7618, including `lwc1` at 0xdb3ebec, `lwc1` at 0xdb3edcc.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7608, including `lwc1` at 0xdb3ec00, `lwc1` at 0xdb3ede0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75dc, including `swc1` at 0xdb3ec04, `swc1` at 0xdb3ede8.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7568, including `swc1` at 0xdb3ec08, `swc1` at 0xdb3ede4.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75f0, including `swc1` at 0xdb3ec10, `swc1` at 0xdb3edf0.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x34, including `lwc1` at 0xdb3ec14, `lwc1` at 0xdb3edf4.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x761c, including `lwc1` at 0xdb3ec1c, `lwc1` at 0xdb3edf8.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x760c, including `lwc1` at 0xdb3ec2c, `lwc1` at 0xdb3ee0c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75e0, including `swc1` at 0xdb3ec30, `swc1` at 0xdb3ee14.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x756c, including `swc1` at 0xdb3ec34, `swc1` at 0xdb3ee10.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75f4, including `swc1` at 0xdb3ec3c, `swc1` at 0xdb3ee1c.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x38, including `lwc1` at 0xdb3ec40, `lwc1` at 0xdb3ee20.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7620, including `lwc1` at 0xdb3ec44, `lwc1` at 0xdb3ee28.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7610, including `lwc1` at 0xdb3ec58, `lwc1` at 0xdb3ee38.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75e4, including `swc1` at 0xdb3ec5c, `swc1` at 0xdb3ee40.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7570, including `swc1` at 0xdb3ec60, `swc1` at 0xdb3ee3c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75f8, including `swc1` at 0xdb3ec68, `swc1` at 0xdb3ee48.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x3c, including `lwc1` at 0xdb3ec6c, `lwc1` at 0xdb3ee4c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7624, including `lwc1` at 0xdb3ec74, `lwc1` at 0xdb3ee50.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7628, including `lwc1` at 0xdb3ec84, `lwc1` at 0xdb3ee64.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7614, including `lwc1` at 0xdb3ec88, `lwc1` at 0xdb3ee68.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75e8, including `swc1` at 0xdb3ec8c, `swc1` at 0xdb3ee70.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7574, including `swc1` at 0xdb3ec90, `swc1` at 0xdb3ee6c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75fc, including `swc1` at 0xdb3ec98, `swc1` at 0xdb3ee78.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0xb4, including `lwc1` at 0xdb3eca0, `lwc1` at 0xdb3ee80.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x75ec, including `swc1` at 0xdb3ecac, `swc1` at 0xdb3ee8c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7600, including `swc1` at 0xdb3ecb4, `swc1` at 0xdb3ee94.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7578, including `swc1` at 0xdb3ecb8, `swc1` at 0xdb3ee98.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x700, including `lw` at 0xdb3ecc4, `lw` at 0xdb3eea4.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75d4, including `lwc1` at 0xdb3ecec, `lwc1` at 0xdb3eecc, `lwc1` at 0xdb3eee8.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x75d8, including `lwc1` at 0xdb3ecf0, `lwc1` at 0xdb3eed0, `lwc1` at 0xdb3eee4.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x7554, including `sw` at 0xdb3ecf4, `sw` at 0xdb3eed4, `sw` at 0xdb3ef00.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x88, including `lwc1` at 0xdb3eeec, `lwc1` at 0xdb3ef5c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x75c4, including `sw` at 0xdb3ef18, `sw` at 0xdb3ef88.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x75c8, including `sw` at 0xdb3ef20, `sw` at 0xdb3ef90.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7638, including `lwc1` at 0xdb3ef2c, `lwc1` at 0xdb3ef9c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7634, including `lwc1` at 0xdb3ef30, `lwc1` at 0xdb3efa0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x762c, including `swc1` at 0xdb3ef40, `swc1` at 0xdb3efb0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x7630, including `swc1` at 0xdb3ef48, `swc1` at 0xdb3efb8.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x757c, including `swc1` at 0xdb3ef50, `swc1` at 0xdb3efbc.
  The `bgezall` at 0xdb3ece4 calls __glPolygonOffsetZ [0xdb41110] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?, a7=[a0+30268]; fp f14=f16, f15=f17.
  The `bgezall` at 0xdb3eec4 calls __glPolygonOffsetZ [0xdb41110] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1000000, a7=[a0+30268]; fp f14=f16, f15=f17.
  The `bc1f` branch at 0xdb3eb1c targets 0xdb3ed04, is taken when not (f24 < f0 (c.lt.s at 0xdb3eaf4)), and falls through when f24 < f0 (c.lt.s at 0xdb3eaf4).
  The `beq` branch at 0xdb3eb24 targets 0xdb3efdc, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xdb3eb2c targets 0xdb3ebd8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xdb3ebd8 targets 0xdb3ecbc, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xdb3ecbc targets 0xdb3ef24, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xdb3eccc targets 0xdb3eee4, is taken when (a3(=[a0+1792]) & at(=0x1000000)) == 0, and falls through when (a3(=[a0+1792]) & at(=0x1000000)) != 0.
  The `beq` branch at 0xdb3ecfc targets 0xdb3ef04 and is always taken.
  The `beq` branch at 0xdb3ed04 targets 0xdb3f010, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xdb3ed0c targets 0xdb3edb8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xdb3edb8 targets 0xdb3ee9c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xdb3ee9c targets 0xdb3ef94, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xdb3eeac targets 0xdb3ef54, is taken when (v1(=[a0+1792]) & a3(=0x1000000)) == 0, and falls through when (v1(=[a0+1792]) & a3(=0x1000000)) != 0.
  The `beq` branch at 0xdb3eedc targets 0xdb3ef74 and is always taken.
  The `beq` branch at 0xdb3ef24 targets 0xdb3efc0, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `beq` branch at 0xdb3ef4c targets 0xdb3efc0 and is always taken.
  The `beq` branch at 0xdb3ef94 targets 0xdb3efc0, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `beq` branch at 0xdb3efdc targets 0xdb3ecbc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xdb3f008 targets 0xdb3ecbc and is always taken.
  The `beq` branch at 0xdb3f010 targets 0xdb3ee9c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xdb3f03c targets 0xdb3ee9c and is always taken.
  The return at 0xdb3efd4 has v0 = ?.
- `Store_8` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb7e120 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb7e120-0xdb7e2a8 (392 bytes).
  It occupies 392 bytes.
  The `lw` at 0xdb7e120 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb7e124 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xdb7e128 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb7e130 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb7e150 loads 4 bytes from [a0] +0x700.
  The `lw` at 0xdb7e158 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb7e15c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xdb7e170 loads 4 bytes from [a0] +0xe44.
  The `lb` at 0xdb7e1a4 loads 1 byte from table(0xdbd6cf0) +0x0.
  The `lw` at 0xdb7e1c8 loads 4 bytes from [a0] +0x704.
  The `lw` at 0xdb7e1d8 loads 4 bytes from [a0] +0x3054.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xdb7e204, `lwc1` at 0xdb7e208, `lwc1` at 0xdb7e210.
  The `lw` at 0xdb7e230 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `lw` at 0xdb7e23c loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0xdb7e250 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lbu` at 0xdb7e258 loads 1 byte from ?.
  The `lw` at 0xdb7e264 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0xdb7e26c loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `sb` at 0xdb7e290 stores 1 byte to ?.
  The `lwc1` at 0xdb7e29c loads 4 bytes from [a0] +0xdcc.
  The `jalr` at 0xdb7e1f0 calls (unknown callee) with a0=[a0], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-80, a4=[[a0]+1792], a5=[a1], a6=[a0], a7=[a1+4].
  The `beq` branch at 0xdb7e184 targets 0xdb7e29c, is taken when (a4(=[[a0]+1792]) & 0x8) == 0, and falls through when (a4(=[[a0]+1792]) & 0x8) != 0.
  The `bne` branch at 0xdb7e1c0 targets 0xdb7e1d8, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xdb7e1d0 targets 0xdb7e294, is taken when (at(=[[a0]+1796]) & 0x800) == 0, and falls through when (at(=[[a0]+1796]) & 0x800) != 0.
  The `beq` branch at 0xdb7e294 targets 0xdb7e1fc and is always taken.
  The `beq` branch at 0xdb7e2a0 targets 0xdb7e1c0 and is always taken.
  The return at 0xdb7e28c has v0 = ?.
- `Store_16` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb7e2b0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb7e2b0-0xdb7e444 (404 bytes).
  It occupies 404 bytes.
  The `lw` at 0xdb7e2b0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb7e2b4 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xdb7e2b8 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb7e2bc loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb7e2d0 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb7e2dc loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb7e2f0 loads 4 bytes from [a0] +0x700.
  The `lw` at 0xdb7e2f4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lb` at 0xdb7e340 loads 1 byte from table(0xdbd6cf0) +0x0.
  The `lw` at 0xdb7e364 loads 4 bytes from [a0] +0x704.
  The `lw` at 0xdb7e374 loads 4 bytes from [a0] +0x3054.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xdb7e3a0, `lwc1` at 0xdb7e3a4, `lwc1` at 0xdb7e3ac.
  The `lw` at 0xdb7e3cc loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `lw` at 0xdb7e3d8 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0xdb7e3ec loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lhu` at 0xdb7e3f4 loads 2 bytes from ?.
  The `lw` at 0xdb7e400 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0xdb7e408 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `sh` at 0xdb7e42c stores 2 bytes to ?.
  The `lwc1` at 0xdb7e438 loads 4 bytes from [a0] +0xdcc.
  The `jalr` at 0xdb7e38c calls (unknown callee) with a0=[a0], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-80, a4=[[a0]+1792], a5=[a1+4], a6=[a0], a7=[a1].
  The `beq` branch at 0xdb7e320 targets 0xdb7e438, is taken when (a4(=[[a0]+1792]) & 0x8) == 0, and falls through when (a4(=[[a0]+1792]) & 0x8) != 0.
  The `bne` branch at 0xdb7e35c targets 0xdb7e374, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xdb7e36c targets 0xdb7e430, is taken when (at(=[[a0]+1796]) & 0x800) == 0, and falls through when (at(=[[a0]+1796]) & 0x800) != 0.
  The `beq` branch at 0xdb7e430 targets 0xdb7e398 and is always taken.
  The `beq` branch at 0xdb7e43c targets 0xdb7e35c and is always taken.
  The return at 0xdb7e428 has v0 = ?.
- `Store_32` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb7e5c0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb7e5c0-0xdb7e708 (328 bytes).
  It occupies 328 bytes.
  The `lw` at 0xdb7e5c4 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xdb7e5d0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb7e5d8 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb7e5e0 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb7e5f4 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb7e5fc loads 4 bytes from [a0] +0x700.
  The `lw` at 0xdb7e604 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xdb7e60c loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb7e634 loads 4 bytes from [a0] +0x704.
  The `lw` at 0xdb7e644 loads 4 bytes from [a0] +0x3054.
  The `lwc1` at 0xdb7e66c loads 4 bytes from [a0] +0xdcc.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xdb7e670, `lwc1` at 0xdb7e678, `lwc1` at 0xdb7e67c.
  The `lw` at 0xdb7e694 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `lw` at 0xdb7e6a8 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `lw` at 0xdb7e6b0 loads 4 bytes from ?.
  The `lw` at 0xdb7e6bc loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `lw` at 0xdb7e6c4 loads 4 bytes from a0 (arg0 at entry) +0x9c.
  The `lw` at 0xdb7e6d0 loads 4 bytes from a0 (arg0 at entry) +0x98.
  The `sw` at 0xdb7e6fc stores 4 bytes to ?.
  The `jalr` at 0xdb7e65c calls (unknown callee) with a0=[a0], a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-80.
  The `bne` branch at 0xdb7e62c targets 0xdb7e644, is taken when (at(=[[a0]+1792]) & 0x2) != 0, and falls through when (at(=[[a0]+1792]) & 0x2) == 0.
  The `beq` branch at 0xdb7e63c targets 0xdb7e700, is taken when (at(=[[a0]+1796]) & 0x800) == 0, and falls through when (at(=[[a0]+1796]) & 0x800) != 0.
  The `beq` branch at 0xdb7e700 targets 0xdb7e668 and is always taken.
  The return at 0xdb7e6f8 has v0 = ?.
- `Fetch_8` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb7e710 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb7e710-0xdb7e7b8 (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0xdb7e710 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb7e714 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb7e718 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb7e724 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb7e730 loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb7e738 loads 4 bytes from [a0] +0xcc0.
  The `lbu` at 0xdb7e740 loads 1 byte from ?.
  The `lw` at 0xdb7e744 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `swc1` at 0xdb7e760 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0xdb7e764 loads 4 bytes from [a0] +0xcc4.
  The `lw` at 0xdb7e768 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `swc1` at 0xdb7e784 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lw` at 0xdb7e788 loads 4 bytes from [a0] +0xcc8.
  The `lw` at 0xdb7e78c loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `swc1` at 0xdb7e7a8 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0xdb7e7ac loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `swc1` at 0xdb7e7b4 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The return at 0xdb7e7b0 has v0 = [a0+120].
- `Fetch_16` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb7e7c0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb7e7c0-0xdb7e874 (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0xdb7e7c0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb7e7c4 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb7e7c8 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb7e7d4 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb7e7dc loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb7e7f8 loads 4 bytes from [a0] +0xcc0.
  The `lhu` at 0xdb7e7fc loads 2 bytes from ?.
  The `lw` at 0xdb7e800 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `swc1` at 0xdb7e81c stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0xdb7e820 loads 4 bytes from [a0] +0xcc4.
  The `lw` at 0xdb7e824 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `swc1` at 0xdb7e840 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lw` at 0xdb7e844 loads 4 bytes from [a0] +0xcc8.
  The `lw` at 0xdb7e848 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `swc1` at 0xdb7e864 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0xdb7e868 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `swc1` at 0xdb7e870 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The return at 0xdb7e86c has v0 = [a0+120].
- `Fetch_32` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb7e950 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb7e950-0xdb7ea04 (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0xdb7e950 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb7e954 loads 4 bytes from [a0] +0xe48.
  The `lw` at 0xdb7e958 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0xdb7e964 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xdb7e96c loads 4 bytes from [a0] +0xe44.
  The `lw` at 0xdb7e988 loads 4 bytes from [a0] +0xcc0.
  The `lw` at 0xdb7e98c loads 4 bytes from ?.
  The `lw` at 0xdb7e990 loads 4 bytes from a0 (arg0 at entry) +0x70.
  The `swc1` at 0xdb7e9ac stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0xdb7e9b0 loads 4 bytes from [a0] +0xcc4.
  The `lw` at 0xdb7e9b4 loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `swc1` at 0xdb7e9d0 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lw` at 0xdb7e9d4 loads 4 bytes from [a0] +0xcc8.
  The `lw` at 0xdb7e9d8 loads 4 bytes from a0 (arg0 at entry) +0x78.
  The `swc1` at 0xdb7e9f4 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0xdb7e9f8 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `swc1` at 0xdb7ea00 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The return at 0xdb7e9fc has v0 = [a0+120].
- `_init` in `usr/gfx/arch/IP30ODSY32/libGL.so` at 0xd8427a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY32/libGL.so`.
  Range: 0xd8427a0-0xd8427d8 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0xd8427c0 calls __glXInit [0xd80dfd8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd8427d0 has v0 = ret(__glXInit).
- `_init` in `usr/gfx/arch/IP30ODSY64/libGL.so` at 0x55c7350 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP30ODSY64/libGL.so`.
  Range: 0x55c7350-0x55c738c (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0x55c7370 calls __glXInit [0x5592b48] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x55c7384 has v0 = ret(__glXInit).
- `_init` in `usr/gfx/arch/IP35ODSY32/libGL.so` at 0xd8427a0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY32/libGL.so`.
  Range: 0xd8427a0-0xd8427d8 (56 bytes).
  It occupies 56 bytes.
  The `jalr` at 0xd8427c0 calls __glXInit [0xd80dfd8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd8427d0 has v0 = ret(__glXInit).
- `_init` in `usr/gfx/arch/IP35ODSY64/libGL.so` at 0x2177350 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGL.so`.
  Range: 0x2177350-0x217738c (60 bytes).
  It occupies 60 bytes.
  The `jalr` at 0x2177370 calls __glXInit [0x2142b48] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2177384 has v0 = ret(__glXInit).

Skipped no routines.
