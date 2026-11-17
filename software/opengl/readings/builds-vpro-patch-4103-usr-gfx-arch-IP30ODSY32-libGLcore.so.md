# Readings: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`

One entry per routine, filed here from the reading batches by binary.

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

- `LoadAndSendStippledQuads` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda4fb80 (n32).
  The routine calls ceil four times (0xda4fbc8, 0xda4fbf4, 0xda4fc2c, 0xda500d0) and memset (0xda501d4). One call has an unresolved target (0xda5032c). Its return value is either a ceil result or an unresolved value. Its shape matches the o32 copy at 0xda3ef20, so the two are probably one routine built for two ABIs.
  Grade: inferred.
  Reviewed: 2026-11-12

- `LoadAndSendStippledQuads` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda4fb80
  **Inferred.** It calls `ceil` at 0xda4fbc8, 0xda4fbf4, 0xda4fc2c and 0xda500d0, `memset` at 0xda501d4 (a stack buffer, value 0, length 4) and one call with an unresolved callee at 0xda5032c (a0 = `[a0+91328]`, a2 = 0x806f). It loads `[a0+38736]` and tests it against zero at 0xda4fe34, and returns either a `ceil` result or an unresolved value at 0xda50368. Role (from name): loading a stipple pattern and sending quads; the sizes and the unresolved call's target are not established.
  Reviewed: 2026-11-12

- `DrawBitmapUsingPolyStipple` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda50370 (n32).
  The routine calls __glOdysseyUpdateRasterPos (0xda504d8) and __glOdysseyImageCalcOdyEyeSpaceRasterPosZ (0xda504e4). It also calls __glSetError (0xda50ad4) and makes one __glOdysseyIoctl call (0xda50b58). Thirty-five indirect calls with unresolved targets lie between 0xda50a30 and 0xda50dbc, and these facts do not name them. The bitmap-to-stipple mapping is therefore only partly open.
  Grade: inferred.
  Reviewed: 2026-11-12

- `DrawBitmapUsingPolyStipple` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda50370
  Evidence grade: inferred.
  `DrawBitmapUsingPolyStipple` updates the raster position through `__glOdysseyUpdateRasterPos` and `__glOdysseyImageCalcOdyEyeSpaceRasterPosZ`. It validates hardware state with `__glOdysseyValidateHardware` and hands the quad work to `LoadAndSendStippledQuads` at 0xda4fb80. Errors go through `__glSetError`, and kernel-side work goes through `__glOdysseyIoctl`. The control flow between these calls is not fully traced.
  Reviewed: 2026-11-12

- `__glOdylc_Color3b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda50eb0 (n32).
  Appends a four-word record built from a0, a1, a2 and a constant header to the buffer whose write
  pointer is the word at absolute 0x1030, making room first through `__glSPDlistSpace` when the word
  at 0x1028 is too small. At entry the word at +0x13cc of the record that the word at 0x1010 points
  to is loaded (0xda50ebc), has 0x10000 ORed in, and is stored back (`sw` at 0xda50ec8). The routine
  then computes a pad of 1 word when bit 0x4 of the pointer at 0x1030 is set and the word at 0x1034
  is zero, else 0 (between 0xda50ed8 and 0xda50ee8). If the word at 0x1028, as a signed value, is
  below 4 plus the pad, the call at 0xda50f18 runs with a0 zero and a1 to a3 unchanged; a zero
  return (`beq` at 0xda50f38) jumps to 0xda50fa4, where the `sw` stores the old pointer less 4 to
  0x1030, the `sw` at 0xda50fc0 adds 1 to the word at 0x1028, and the routine returns the callee's
  value. A nonzero return falls to 0xda50f40, which reloads the pointer at 0x1030 and sets the pad
  to 1 when bit 0x4 of it is set, else keeps the earlier pad. When the word at 0x1028 is large
  enough (`beq` at 0xda50efc taken) the call is skipped. The shared block at 0xda50f50 stores a2, a1
  and a0 at +0xc, +0x8 and +0x4 of the pointer plus four times the pad, and stores the constant
  0xffffffffc580cc0b (built from 0xc580 and 0xcc0b) at +0x0 (`sw` at 0xda50f64, 0xda50f68, 0xda50f70
  and 0xda50f78). The `sw` at 0xda50f80 then writes the word at 0x1028 (or the callee's return) less
  the pad less 4 to 0x1028, the `sw` at 0xda50f88 writes the record address plus 0x10 to 0x1030, and
  the `sw` at 0xda50fa0, in the delay slot of the return, adds 4 to the word at 0x1034. This path
  returns the word loaded from 0x1028 when the call was skipped, otherwise the callee's value.
  Inferred: 0x1030 holds a write pointer into a display-list buffer and 0x1028 a count of free
  words, since a record moves the pointer on by 0x10, takes the pad plus 4 off the count, and a
  short count leads to `__glSPDlistSpace`.
  Unknown: how the header word 0xffffffffc580cc0b divides into fields; a header-field table in the
  board's command-format datasheet would settle it.
  Evidence grade: inferred.

- `__glOdylc_Color3b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda50eb0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda50eb0-0xda50fc4 (276 bytes).
  It occupies 276 bytes.
  The `lw` at 0xda50eb4 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda50ebc loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda50ec8 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda50ecc, `lw` at 0xda50f40.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda50ed4, `lw` at 0xda50f8c.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda50ee0, `lw` at 0xda50fac.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda50f64, `sw` at 0xda50f68, `sw` at 0xda50f70.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda50f80, `sw` at 0xda50fc0.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda50f88, `sw` at 0xda50fa4.
  The `sw` at 0xda50fa0 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda50f18 calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda50efc targets 0xda50f50, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xda50f38 targets 0xda50fa4, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xda50f9c has v0 = one of [0x1028], ret(__glSPDlistSpace).
  The return at 0xda50fbc has v0 = ret(__glSPDlistSpace).

- `__glOdylc_Color3s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda51790 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda51790-0xda518a4 (276 bytes).
  It occupies 276 bytes.
  The `lw` at 0xda51794 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda5179c loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda517a8 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda517ac, `lw` at 0xda51820.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda517b4, `lw` at 0xda5186c.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda517c0, `lw` at 0xda5188c.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda51844, `sw` at 0xda51848, `sw` at 0xda51850.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda51860, `sw` at 0xda518a0.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda51868, `sw` at 0xda51884.
  The `sw` at 0xda51880 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda517f8 calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda517dc targets 0xda51830, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xda51818 targets 0xda51884, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xda5187c has v0 = one of [0x1028], ret(__glSPDlistSpace).
  The return at 0xda5189c has v0 = ret(__glSPDlistSpace).

- `__glOdylc_Color3s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda51790
  **Inferred.** A display-list entry that tests `[0x1028]` against another value (branch at 0xda517dc); when `[0x1028]` is the lower one it calls `__glSPDlistSpace` at 0xda517f8 with a0 = 0, and the branch at 0xda51818 tests that result against zero. The return at 0xda5187c is either `[0x1028]` or the call's result, and the return at 0xda5189c is the call's result. Role (from name): `Color3s` fits a short colour entry point of a display-list compiler; the facts do not show which values the routine stores.
  Reviewed: 2026-11-12

- `__glOdylc_Color3ui` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda51bf0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda51bf0-0xda51d04 (276 bytes).
  It occupies 276 bytes.
  The `lw` at 0xda51bf4 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda51bfc loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda51c08 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda51c0c, `lw` at 0xda51c80.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda51c14, `lw` at 0xda51ccc.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda51c20, `lw` at 0xda51cec.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda51ca4, `sw` at 0xda51ca8, `sw` at 0xda51cb0.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda51cc0, `sw` at 0xda51d00.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda51cc8, `sw` at 0xda51ce4.
  The `sw` at 0xda51ce0 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda51c58 calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51c3c targets 0xda51c90, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xda51c78 targets 0xda51ce4, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xda51cdc has v0 = one of [0x1028], ret(__glSPDlistSpace).
  The return at 0xda51cfc has v0 = ret(__glSPDlistSpace).

- `__glOdylc_Color3ui` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda51bf0
  **Inferred.** It has one call, `__glSPDlistSpace`, and is 276 bytes, like `__glOdylc_Color3s` at 0xda51790; the returns are either `[0x1028]` or that call's result. The bodies were not compared instruction by instruction. Role (from name): an unsigned-int variant of the 3-component colour entry.
  Reviewed: 2026-11-12

- `__glOdylc_Color3us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda51e20 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda51e20-0xda51f34 (276 bytes).
  It occupies 276 bytes.
  The `lw` at 0xda51e24 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda51e2c loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda51e38 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda51e3c, `lw` at 0xda51eb0.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda51e44, `lw` at 0xda51efc.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda51e50, `lw` at 0xda51f1c.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda51ed4, `sw` at 0xda51ed8, `sw` at 0xda51ee0.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda51ef0, `sw` at 0xda51f30.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda51ef8, `sw` at 0xda51f14.
  The `sw` at 0xda51f10 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda51e88 calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda51e6c targets 0xda51ec0, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xda51ea8 targets 0xda51f14, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xda51f0c has v0 = one of [0x1028], ret(__glSPDlistSpace).
  The return at 0xda51f2c has v0 = ret(__glSPDlistSpace).

- `__glOdylc_Color3us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda51e20
  **Inferred.** It has one call, `__glSPDlistSpace`, and is 276 bytes, like `__glOdylc_Color3s` at 0xda51790; the returns are either `[0x1028]` or that call's result. The bodies were not compared instruction by instruction. Role (from name): an unsigned-short variant of the 3-component colour entry.
  Reviewed: 2026-11-12

- `__glOdylc_Color4b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda52050 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda52050-0xda52170 (288 bytes).
  It occupies 288 bytes.
  The `lw` at 0xda52054 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda5205c loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda52068 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda5206c, `lw` at 0xda520e8.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda52074, `lw` at 0xda52138.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda52080, `lw` at 0xda52158.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda5210c, `sw` at 0xda52110, `sw` at 0xda52114.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda5212c, `sw` at 0xda5216c.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda52134, `sw` at 0xda52150.
  The `sw` at 0xda5214c stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda520bc calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5209c targets 0xda520f8, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xda520e0 targets 0xda52150, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xda52148 has v0 = one of [0x1028], ret(__glSPDlistSpace).
  The return at 0xda52168 has v0 = ret(__glSPDlistSpace).

- `__glOdylc_Color4b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda52050
  **Inferred.** It has one call, `__glSPDlistSpace`, and is 288 bytes; the returns are either `[0x1028]` or that call's result. The bodies were not compared against the other Color4 entries. Role (from name): a signed-byte variant of the 4-component colour entry.
  Reviewed: 2026-11-12

- `__glOdylc_Color4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda52750 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda52750-0xda52870 (288 bytes).
  It occupies 288 bytes.
  The `lw` at 0xda52754 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda5275c loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda52768 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda5276c, `lw` at 0xda527e8.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda52774, `lw` at 0xda52838.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda52780, `lw` at 0xda52858.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda5280c, `sw` at 0xda52810, `sw` at 0xda52814.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda5282c, `sw` at 0xda5286c.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda52834, `sw` at 0xda52850.
  The `sw` at 0xda5284c stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda527bc calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5279c targets 0xda527f8, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xda527e0 targets 0xda52850, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xda52848 has v0 = one of [0x1028], ret(__glSPDlistSpace).
  The return at 0xda52868 has v0 = ret(__glSPDlistSpace).

- `__glOdylc_Color4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda52750
  **Inferred.** It has one call, `__glSPDlistSpace`, and is 288 bytes; the returns are either `[0x1028]` or that call's result. The bodies were not compared against the other Color4 entries. Role (from name): a signed-int variant of the 4-component colour entry.
  Reviewed: 2026-11-12

- `__glOdylc_Color4s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda52990 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda52990-0xda52ab0 (288 bytes).
  It occupies 288 bytes.
  The `lw` at 0xda52994 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda5299c loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda529a8 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda529ac, `lw` at 0xda52a28.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda529b4, `lw` at 0xda52a78.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda529c0, `lw` at 0xda52a98.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda52a4c, `sw` at 0xda52a50, `sw` at 0xda52a54.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda52a6c, `sw` at 0xda52aac.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda52a74, `sw` at 0xda52a90.
  The `sw` at 0xda52a8c stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda529fc calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda529dc targets 0xda52a38, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xda52a20 targets 0xda52a90, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xda52a88 has v0 = one of [0x1028], ret(__glSPDlistSpace).
  The return at 0xda52aa8 has v0 = ret(__glSPDlistSpace).

- `__glOdylc_Color4s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda52990
  **Inferred.** It has one call, `__glSPDlistSpace`, and is 288 bytes; the returns are either `[0x1028]` or that call's result. The bodies were not compared against the other Color4 entries. Role (from name): a signed-short variant of the 4-component colour entry.
  Reviewed: 2026-11-12

- `__glOdylc_Color4ub` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda52bd0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda52bd0-0xda52cf0 (288 bytes).
  It occupies 288 bytes.
  The `lw` at 0xda52bd4 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda52bdc loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda52be8 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda52bec, `lw` at 0xda52c68.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda52bf4, `lw` at 0xda52cb8.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda52c00, `lw` at 0xda52cd8.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda52c8c, `sw` at 0xda52c90, `sw` at 0xda52c94.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda52cac, `sw` at 0xda52cec.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda52cb4, `sw` at 0xda52cd0.
  The `sw` at 0xda52ccc stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda52c3c calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52c1c targets 0xda52c78, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xda52c60 targets 0xda52cd0, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xda52cc8 has v0 = one of [0x1028], ret(__glSPDlistSpace).
  The return at 0xda52ce8 has v0 = ret(__glSPDlistSpace).

- `__glOdylc_Color4ub` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda52bd0
  **Inferred.** It has one call, `__glSPDlistSpace`, and is 288 bytes; the returns are either `[0x1028]` or that call's result. The bodies were not compared against the other Color4 entries. Role (from name): an unsigned-byte variant of the 4-component colour entry.
  Reviewed: 2026-11-12

- `__glOdylc_Color4ui` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda52e10 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda52e10-0xda52f30 (288 bytes).
  It occupies 288 bytes.
  The `lw` at 0xda52e14 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda52e1c loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda52e28 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda52e2c, `lw` at 0xda52ea8.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda52e34, `lw` at 0xda52ef8.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda52e40, `lw` at 0xda52f18.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda52ecc, `sw` at 0xda52ed0, `sw` at 0xda52ed4.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda52eec, `sw` at 0xda52f2c.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda52ef4, `sw` at 0xda52f10.
  The `sw` at 0xda52f0c stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda52e7c calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda52e5c targets 0xda52eb8, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xda52ea0 targets 0xda52f10, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xda52f08 has v0 = one of [0x1028], ret(__glSPDlistSpace).
  The return at 0xda52f28 has v0 = ret(__glSPDlistSpace).

- `__glOdylc_Color4us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda53050 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda53050-0xda53170 (288 bytes).
  It occupies 288 bytes.
  The `lw` at 0xda53054 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda5305c loads 4 bytes from [0x1010] +0x13cc.
  The `sw` at 0xda53068 stores 4 bytes to [0x1010] +0x13cc.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xda5306c, `lw` at 0xda530e8.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xda53074, `lw` at 0xda53138.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xda53080, `lw` at 0xda53158.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda5310c, `sw` at 0xda53110, `sw` at 0xda53114.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xda5312c, `sw` at 0xda5316c.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xda53134, `sw` at 0xda53150.
  The `sw` at 0xda5314c stores 4 bytes to abs 0x1034.
  The `jalr` at 0xda530bc calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xda5309c targets 0xda530f8, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xda530e0 targets 0xda53150, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xda53148 has v0 = one of [0x1028], ret(__glSPDlistSpace).
  The return at 0xda53168 has v0 = ret(__glSPDlistSpace).

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

- `__glOdyim_Clear` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda54070 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda54070-0xda54674 (1540 bytes).
  It occupies 1540 bytes.
  The `lw` at 0xda54074 loads 4 bytes from abs 0x1018.
  The `lw` at 0xda5408c loads 4 bytes from abs 0x1010.
  The `lw` at 0xda540c4 loads 4 bytes from [0x1010] +0x2d60.
  5 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xda540d0, `sw` at 0xda54228, `sw` at 0xda54340.
  The `lw` at 0xda5411c loads 4 bytes from [0x1010] +0xc7c.
  The `lbu` at 0xda54140 loads 1 byte from [0x1010] +0xc90.
  The `lw` at 0xda5414c loads 4 bytes from [0x1010] +0x7a44.
  The `lbu` at 0xda54178 loads 1 byte from [0x1010] +0x16658.
  The `lw` at 0xda54194 loads 4 bytes from [0x1010] +0x16650.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x7b40, including `lw` at 0xda54198, `lw` at 0xda541f4, `lw` at 0xda545c0.
  The `lw` at 0xda541a0 loads 4 bytes from [0x1010] +0x16654.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x7b44, including `lw` at 0xda541a4, `lw` at 0xda541fc, `lw` at 0xda545dc.
  The `sw` at 0xda541b0 stores 4 bytes to [0x1010] +0x7b40.
  The `sw` at 0xda541b4 stores 4 bytes to [0x1010] +0x7b44.
  The `lw` at 0xda541b8 loads 4 bytes from [0x1010] +0x9750.
  The `sw` at 0xda541c4 stores 4 bytes to [0x1010] +0x9750.
  7 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xda541cc, `sw` at 0xda541d8, `sw` at 0xda541e0.
  The `lw` at 0xda54204 loads 4 bytes from [0x1010] +0x7a90.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda54218, `lw` at 0xda54330, `lw` at 0xda54358.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda54220, `sw` at 0xda54338, `sw` at 0xda54364.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7b1c, including `lw` at 0xda54234, `lw` at 0xda54348.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7b7c, including `lw` at 0xda54238, `lw` at 0xda54278.
  The `lbu` at 0xda5424c loads 1 byte from [0x1010] +0xc8c.
  The `lwc1` at 0xda54258 loads 4 bytes from [0x1010] +0x744.
  The `lwc1` at 0xda54260 loads 4 bytes from [0x1010] +0x748.
  The `lwc1` at 0xda54268 loads 4 bytes from [0x1010] +0x74c.
  The `lwc1` at 0xda54270 loads 4 bytes from [0x1010] +0x750.
  2 such `lbu` accesses load 1 byte from [0x1010] +0xc91, including `lbu` at 0xda5427c, `lbu` at 0xda54634.
  The `lbu` at 0xda54290 loads 1 byte from [0x1010] +0x664.
  2 such `lbu` accesses load 1 byte from [0x1010] +0xc92, including `lbu` at 0xda542a8, `lbu` at 0xda54650.
  The `lh` at 0xda542c0 loads 2 bytes from [0x1010] +0x68a.
  4 such `sw` accesses store 4 bytes to [0x1010] +0x7b7c, including `sw` at 0xda5432c, `sw` at 0xda543dc, `sw` at 0xda54570.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7b1c, including `sw` at 0xda54354, `sw` at 0xda543d8.
  The `ldc1` at 0xda5436c loads 8 bytes from [0x1010] +0x668.
  The `lw` at 0xda54378 loads 4 bytes from [0x1010] +0xcdc.
  The `lbu` at 0xda54388 loads 1 byte from [0x1010] +0x7a94.
  2 such `lw` accesses load 4 bytes from [0x1010] +0xe70, including `lw` at 0xda543a4, `lw` at 0xda544bc.
  2 such `lw` accesses load 4 bytes from [0x1010] +0xe6c, including `lw` at 0xda543b0, `lw` at 0xda544c4.
  2 such `lh` accesses load 2 bytes from [0x1010] +0x684, including `lh` at 0xda543bc, `lh` at 0xda544cc.
  The `lw` at 0xda54454 loads 4 bytes from [0x1010] +0x760.
  The `lwc1` at 0xda5452c loads 4 bytes from [0x1010] +0x754.
  The `lbu` at 0xda54664 loads 1 byte from [0x1010] +0xc8f.
  The `jalr` at 0xda540a8 calls __glSetError [0xdb11f10] with a0=0x502, a1=[0x1018], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda540c8 calls (unknown callee) with a0=[0x1010], a1=[0x1018], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xda540f8 calls __glSetError [0xdb11f10] with a0=0x501, a1=?, a2=?, a3=?.
  The `jalr` at 0xda54158 calls (unknown callee) with a0=[0x1010]+31192, a1=0x10000, a2=?, a3=?, a5=[[0x1010]+3196].
  The `jalr` at 0xda54370 calls __glOdysseyWindowToNormalizedEyeZ [0xdac7ad0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=one of 0x0, 0x1, a6=0x2.
  The `bgezall` at 0xda543c8 calls __glOdysseyClear [0xda54680] with a0=[0x1010], a1=sp-144, a2=?, a3=[[0x1010]+1668]:2, a4=0x0, a5=0x0, a6=[[0x1010]+3692], a7=[[0x1010]+3696].
  The `jalr` at 0xda544b4 calls __glOdysseySetDrawbuf [0xdabd510] with a0=[0x1010], a1=0x0, a2=0x0, a3=one of 0x0, 0x1.
  The `bgezall` at 0xda544fc calls __glOdysseyClear [0xda54680] with a0=[0x1010], a1=sp-144, a2=?, a3=[[0x1010]+1668]:2, a4=0x0, a5=0x0, a6=[[0x1010]+3692], a7=[[0x1010]+3696]; fp f15=0x41fffff800000000.
  The `jalr` at 0xda54518 calls __glOdysseySetDrawbuf [0xdabd510] with a0=[0x1010], a1=?, a2=?, a3=0x0, a4=0x0.
  The `jalr` at 0xda54614 calls __glOdysseyIoctl [0xdabc870] with a0=[0x1010], a1=0x6f64000d, a2=sp-160, a3=?, a5=[[0x1010]+31552].
  The `beq` branch at 0xda54090 targets 0xda540dc, is taken when a1(=[0x1018]) == 0, and falls through when a1(=[0x1018]) != 0.
  The `beq` branch at 0xda5409c targets 0xda540c4, is taken when a1(=[0x1018]) == v0(=0x2), and falls through when a1(=[0x1018]) != v0(=0x2).
  The `beq` branch at 0xda540e8 targets 0xda54114, is taken when (a0 & v1(=-0x4701)) == 0, and falls through when (a0 & v1(=-0x4701)) != 0.
  The `beq` branch at 0xda54114 targets 0xda54128, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0xda54120 targets 0xda54138, is taken when a5(=[[0x1010]+3196]) == at(=0x1c00), and falls through when a5(=[[0x1010]+3196]) != at(=0x1c00).
  The `beq` branch at 0xda54138 targets 0xda54174, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xda54144 targets 0xda54174, is taken when v1(=[[0x1010]+3216]:1) == 0, and falls through when v1(=[[0x1010]+3216]:1) != 0.
  The `beq` branch at 0xda54168 targets 0xda54588, is taken when (a0 & 0x4500) == 0, and falls through when (a0 & 0x4500) != 0.
  The `beq` branch at 0xda5417c targets 0xda54194, is taken when at(=[[0x1010]+91736]:1) == 0, and falls through when at(=[[0x1010]+91736]:1) != 0.
  The `bne` branch at 0xda5419c targets 0xda541b0, is taken when a2(=[[0x1010]+31552]) != a3(=[[0x1010]+91728]), and falls through when a2(=[[0x1010]+31552]) == a3(=[[0x1010]+91728]).
  The `beq` branch at 0xda541a8 targets 0xda5422c, is taken when a5(=[[0x1010]+31556]) == a2(=[[0x1010]+91732]), and falls through when a5(=[[0x1010]+31556]) != a2(=[[0x1010]+91732]).
  The `beq` branch at 0xda541bc targets 0xda541e8, is taken when at(=[[0x1010]+38736]) == 0, and falls through when at(=[[0x1010]+38736]) != 0.
  The `beq` branch at 0xda54210 targets 0xda545b0, is taken when (at(=[[0x1010]+31376]) & v0(=0x100000)) == 0, and falls through when (at(=[[0x1010]+31376]) & v0(=0x100000)) != 0.
  The `beq` branch at 0xda54244 targets 0xda54544, is taken when (a0 & 0x4000) == 0, and falls through when (a0 & 0x4000) != 0.
  The `beq` branch at 0xda54250 targets 0xda5452c, is taken when v1(=[[0x1010]+3212]:1) == 0, and falls through when v1(=[[0x1010]+3212]:1) != 0.
  The `beq` branch at 0xda54280 targets 0xda542a4, is taken when t0(=[[0x1010]+3217]:1) == 0, and falls through when t0(=[[0x1010]+3217]:1) != 0.
  The `beq` branch at 0xda54288 targets 0xda542a8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xda54294 targets 0xda542a8, is taken when at(=[[0x1010]+1636]:1) == 0, and falls through when at(=[[0x1010]+1636]:1) != 0.
  The `beq` branch at 0xda5429c targets 0xda542a8 and is always taken.
  The `beq` branch at 0xda542ac targets 0xda5440c, is taken when t1(=[[0x1010]+3218]:1) == 0, and falls through when t1(=[[0x1010]+3218]:1) != 0.
  The `beq` branch at 0xda542b8 targets 0xda5440c, is taken when (a0 & 0x400) == 0, and falls through when (a0 & 0x400) != 0.
  The `beq` branch at 0xda542c4 targets 0xda54414, is taken when t0(=[[0x1010]+3217]:1) == 0, and falls through when t0(=[[0x1010]+3217]:1) != 0.
  The `beq` branch at 0xda5437c targets 0xda54428, is taken when v0(=[[0x1010]+3292]) == 0, and falls through when v0(=[[0x1010]+3292]) != 0.
  The `beq` branch at 0xda5438c targets 0xda54454, is taken when v1(=[[0x1010]+31380]:1) == 0, and falls through when v1(=[[0x1010]+31380]:1) != 0.
  The `beq` branch at 0xda5440c targets 0xda542c4 and is always taken.
  The `beq` branch at 0xda54420 targets 0xda542e8 and is always taken.
  The `beq` branch at 0xda5442c targets 0xda54384, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xda54438 targets 0xda54634, is taken when (v1(=a0) & 0x100) == 0, and falls through when (v1(=a0) & 0x100) != 0.
  The `beq` branch at 0xda54444 targets 0xda54650, is taken when (a5(=a0) & 0x400) == 0, and falls through when (a5(=a0) & 0x400) != 0.
  The `beq` branch at 0xda5444c targets 0xda54388 and is always taken.
  The `beq` branch at 0xda54460 targets 0xda5462c, is taken when a3(=[[0x1010]+1888]) == at(=0x406), and falls through when a3(=[[0x1010]+1888]) != at(=0x406).
  The `beq` branch at 0xda5446c targets 0xda54648, is taken when a3(=[[0x1010]+1888]) == v0(=0x407), and falls through when a3(=[[0x1010]+1888]) != v0(=0x407).
  The `beq` branch at 0xda54474 targets 0xda54664, is taken when a3(=[[0x1010]+1888]) == v1(=0x408), and falls through when a3(=[[0x1010]+1888]) != v1(=0x408).
  The `bne` branch at 0xda5447c targets 0xda54490, is taken when a1(=one of 0x0, 0x1) != 0, and falls through when a1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xda54488 targets 0xda54598, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xda54524 targets 0xda543a4 and is always taken.
  The `beq` branch at 0xda5453c targets 0xda54278 and is always taken.
  The `beq` branch at 0xda54580 targets 0xda5427c and is always taken.
  The `beq` branch at 0xda545a8 targets 0xda543a4 and is always taken.
  The `beq` branch at 0xda54624 targets 0xda54218 and is always taken.
  The `beq` branch at 0xda5462c targets 0xda5447c and is always taken.
  The `bne` branch at 0xda54638 targets 0xda54388, is taken when a5(=[[0x1010]+3217]:1) != 0, and falls through when a5(=[[0x1010]+3217]:1) == 0.
  The `beq` branch at 0xda54640 targets 0xda54440 and is always taken.
  The `beq` branch at 0xda54648 targets 0xda5447c and is always taken.
  The `bne` branch at 0xda54654 targets 0xda54388, is taken when at(=[[0x1010]+3218]:1) != 0, and falls through when at(=[[0x1010]+3218]:1) == 0.
  The `beq` branch at 0xda5465c targets 0xda5444c and is always taken.
  The `beq` branch at 0xda5466c targets 0xda5447c and is always taken.
  The return at 0xda540bc has v0 = ret(__glSetError).
  The return at 0xda5410c has v0 = ret(__glSetError).
  The return at 0xda54130 has v0 = ?.
  The return at 0xda5418c has v0 = ?.
  The return at 0xda54404 has v0 = ret(__glOdysseyClear).
  The return at 0xda54590 has v0 = ret(?).

- `__glOdysseyClear` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda54680 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda54680-0xda54da8 (1832 bytes).
  It occupies 1832 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7b1c, including `lw` at 0xda546a4, `lw` at 0xda547f8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7b20, including `lw` at 0xda546b4, `lw` at 0xda54748.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x95c4, including `lw` at 0xda546dc, `lw` at 0xda5491c.
  5 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x7b1c, including `sw` at 0xda5470c, `sw` at 0xda54718, `sw` at 0xda54724.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7b50, including `lw` at 0xda54728, `lw` at 0xda54828, `lw` at 0xda548d0.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x168d0, including `lw` at 0xda5472c, `lw` at 0xda54798, `lw` at 0xda549d8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7b4c, including `lw` at 0xda54730, `lw` at 0xda547dc, `lw` at 0xda54914.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x168d0, including `sw` at 0xda54738, `sw` at 0xda547a8, `sw` at 0xda549ec.
  4 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xda54740, `sw` at 0xda547b4, `sw` at 0xda549f0.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x7b20, including `sw` at 0xda5477c, `sw` at 0xda54790, `sw` at 0xda54b54.
  The `lw` at 0xda547c8 loads 4 bytes from a0 (arg0 at entry) +0x7b7c.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x7b4c, including `sw` at 0xda5483c, `sw` at 0xda5485c, `sw` at 0xda54b40.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x7b50, including `sw` at 0xda54848, `sw` at 0xda54b44.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9750, including `lw` at 0xda54874, `lw` at 0xda548d8, `lw` at 0xda54a18.
  8 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x9750, including `sw` at 0xda548a0, `sw` at 0xda548ec, `sw` at 0xda54a30.
  44 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xda548a8, `sw` at 0xda548b4, `sw` at 0xda548bc.
  The `lw` at 0xda54920 loads 4 bytes from a0 (arg0 at entry) +0x7a90.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x95c4, including `sw` at 0xda549e4, `sw` at 0xda54b3c.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x7b24, including `lw` at 0xda549f4, `lw` at 0xda54a54, `lw` at 0xda54bc0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x7b24, including `sw` at 0xda54a14, `sw` at 0xda54b48.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lwc1` at 0xda54af0, `lwc1` at 0xda54cd4.
  20 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xda54af4, `swc1` at 0xda54afc, `swc1` at 0xda54b04.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lwc1` at 0xda54af8, `lwc1` at 0xda54cdc.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lwc1` at 0xda54b00, `lwc1` at 0xda54ce4.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lwc1` at 0xda54b08, `lwc1` at 0xda54cec.
  The `bgezall` at 0xda54a6c calls __glOdysseyValidateHardware [0xda57700] with a0=a0 at entry (arg0), a1=[a0+38340], a2=0x10415, a3=one of 0x0, 0x1, a5=-0x100.
  The `beq` branch at 0xda54894 targets 0xda548c4, is taken when at(=[a0+38736]) == 0, and falls through when at(=[a0+38736]) != 0.
  The `beq` branch at 0xda548e0 targets 0xda54910, is taken when a2(=[a0+38736]) == 0, and falls through when a2(=[a0+38736]) != 0.
  The `beq` branch at 0xda54938 targets 0xda54c78, is taken when (v0(?) & 0x1) == 0, and falls through when (v0(?) & 0x1) != 0.
  The `beq` branch at 0xda54940 targets 0xda54c64, is taken when t1(?) == a2(=0xfff), and falls through when t1(?) != a2(=0xfff).
  The `beq` branch at 0xda54948 targets 0xda54c64, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0xda54958 targets 0xda54d5c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xda54964 targets 0xda54d20, is taken when t0(?) == v0(=0xff), and falls through when t0(?) != v0(=0xff).
  The `beq` branch at 0xda5496c targets 0xda54d4c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0xda54974 targets 0xda54d30, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xda54990 targets 0xda54d44, is taken when (a0(=[a0+31376]) & 0x40) == 0, and falls through when (a0(=[a0+31376]) & 0x40) != 0.
  The `beq` branch at 0xda54998 targets 0xda54c70, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0xda549a0 targets 0xda54c70, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xda54a28 targets 0xda54a48, is taken when a2(=[a0+38736]) == 0, and falls through when a2(=[a0+38736]) != 0.
  The `beq` branch at 0xda54a60 targets 0xda54a7c, is taken when v0(=[a0+92368]) == 0, and falls through when v0(=[a0+92368]) != 0.
  The `beq` branch at 0xda54ad0 targets 0xda54cbc, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0xda54b80 targets 0xda54bb4, is taken when v0(=[a0+38736]) == 0, and falls through when v0(=[a0+38736]) != 0.
  The `beq` branch at 0xda54bcc targets 0xda54c00, is taken when at(=[a0+38736]) == 0, and falls through when at(=[a0+38736]) != 0.
  The `beq` branch at 0xda54c24 targets 0xda54c48, is taken when v1(=[a0+38736]) == 0, and falls through when v1(=[a0+38736]) != 0.
  The `beq` branch at 0xda54c68 targets 0xda54958 and is always taken.
  The `beq` branch at 0xda54c70 targets 0xda549a8 and is always taken.
  The `bne` branch at 0xda54c80 targets 0xda54cac, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `bne` branch at 0xda54c8c targets 0xda54cac, is taken when a2(?) != at(?), and falls through when a2(?) == at(?).
  The `bne` branch at 0xda54c98 targets 0xda54cac, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0xda54ca4 targets 0xda54cb4 and is always taken.
  The `beq` branch at 0xda54cb4 targets 0xda54960 and is always taken.
  The `beq` branch at 0xda54d18 targets 0xda54b34 and is always taken.
  The `beq` branch at 0xda54d20 targets 0xda5496c, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0xda54d28 targets 0xda54974 and is always taken.
  The `bne` branch at 0xda54d34 targets 0xda54980, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xda54d3c targets 0xda54980 and is always taken.
  The `beq` branch at 0xda54d44 targets 0xda549ac and is always taken.
  The `bne` branch at 0xda54d4c targets 0xda54974, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0xda54d54 targets 0xda54d28 and is always taken.
  The `beq` branch at 0xda54d68 targets 0xda54d78, is taken when (at(?) & 0x7) == 0, and falls through when (at(?) & 0x7) != 0.
  The `beq` branch at 0xda54d70 targets 0xda54960 and is always taken.
  The `beq` branch at 0xda54d78 targets 0xda54d98, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0xda54d80 targets 0xda54d70, is taken when t2(=0x2) != a3(?), and falls through when t2(=0x2) == a3(?).
  The `beq` branch at 0xda54d88 targets 0xda54964, is taken when a4(?) == v0(=0x4), and falls through when a4(?) != v0(=0x4).
  The `beq` branch at 0xda54d90 targets 0xda54d70 and is always taken.
  The `beq` branch at 0xda54d98 targets 0xda54964, is taken when v1(=0x1) == a4(?), and falls through when v1(=0x1) != a4(?).
  The `beq` branch at 0xda54da0 targets 0xda54d80 and is always taken.
  The return at 0xda54c5c has v0 = one of 0x10000, 0x10046.

- `__glOdysseyFindWindowSize` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda55150 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda55150-0xda55298 (328 bytes).
  It occupies 328 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xe6c, including `lw` at 0xda55154, `lw` at 0xda551d0, `lw` at 0xda55268.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xe70, including `lw` at 0xda5515c, `lw` at 0xda551dc, `lw` at 0xda55274.
  The `lw` at 0xda55174 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lwc1` at 0xda551a8 loads 4 bytes from a0 (arg0 at entry) +0x19cb4.
  The `swc1` at 0xda551b4 stores 4 bytes to a0 (arg0 at entry) +0x19cac.
  The `swc1` at 0xda551c8 stores 4 bytes to a0 (arg0 at entry) +0x19cb0.
  The `lw` at 0xda551f0 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0xda55208 loads 4 bytes from a0 (arg0 at entry) +0xe74.
  The `lw` at 0xda55214 loads 4 bytes from a0 (arg0 at entry) +0xe78.
  The `lw` at 0xda55238 loads 4 bytes from a0 (arg0 at entry) +0x168f0.
  The `lw` at 0xda55244 loads 4 bytes from a0 (arg0 at entry) +0x6a4.
  The `lw` at 0xda55250 loads 4 bytes from a0 (arg0 at entry) +0x6a0.
  The `lbu` at 0xda55254 loads 1 byte from a0 (arg0 at entry) +0xc90.
  The `sb` at 0xda55288 stores 1 byte to ?.
  The `jalr` at 0xda55190 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-72, a2=sp-68, a3=sp-80, a4=sp-76.
  The `jalr` at 0xda551e8 calls __glChangeWindowSize [0xdb12190] with a0=a0 at entry (arg0), a1=?, a2=?, a3=a0+131072.
  The `jalr` at 0xda551fc calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-64, a2=sp-60, a3=?.
  The `jalr` at 0xda55224 calls __glChangeReadWindowSize [0xdb12290] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xda5524c calls __glChangeWindowSize [0xdb12190] with a0=a0 at entry (arg0), a1=[a0+1696], a2=[a0+1700], a3=?.
  The `bne` branch at 0xda551d4 targets 0xda551e4, is taken when a2(=[a0+3692]) != a1(?), and falls through when a2(=[a0+3692]) == a1(?).
  The `beq` branch at 0xda551e0 targets 0xda551f0, is taken when v0(=[a0+3696]) == a2(?), and falls through when v0(=[a0+3696]) != a2(?).
  The `bne` branch at 0xda5520c targets 0xda55220, is taken when v1(=[a0+3700]) != a1(?), and falls through when v1(=[a0+3700]) == a1(?).
  The `beq` branch at 0xda55218 targets 0xda55230, is taken when a3(=[a0+3704]) == a2(?), and falls through when a3(=[a0+3704]) != a2(?).
  The `beq` branch at 0xda5523c targets 0xda55254, is taken when at(=[a0+92400]) == 0, and falls through when at(=[a0+92400]) != 0.
  The `beq` branch at 0xda55260 targets 0xda5528c, is taken when v0(=[a0+3216]:1) == 0, and falls through when v0(=[a0+3216]:1) != 0.
  The `bne` branch at 0xda5526c targets 0xda55280, is taken when v1(=[a0+3692]) != a3(?), and falls through when v1(=[a0+3692]) == a3(?).
  The `beq` branch at 0xda55278 targets 0xda55290, is taken when at(=[a0+3696]) == v0(?), and falls through when at(=[a0+3696]) != v0(?).
  The return at 0xda55290 has v0 = ?.

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
  The `bltz` branch at 0xda553d4 targets 0xda55408, is taken when at(=[a0+1692]) < 0 (signed), and falls through when at(=[a0+1692]) >= 0 (signed).
  The `bne` branch at 0xda553e8 targets 0xda55408, is taken when v0(=[a0+3692]) < v1(=([a0+1696] + [a0+1688])) (signed), and falls through when v0(=[a0+3692]) >= v1(=([a0+1696] + [a0+1688])) (signed).
  The `bne` branch at 0xda553f0 targets 0xda55408, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0xda553f8 targets 0xda55424, is taken when a0(=[a0+29668]:1) == a2(=0x1), and falls through when a0(=[a0+29668]:1) != a2(=0x1).
  The `beq` branch at 0xda55400 targets 0xda55414 and is always taken.
  The `beq` branch at 0xda55408 targets 0xda55424, is taken when a0(=[a0+29668]:1) == 0, and falls through when a0(=[a0+29668]:1) != 0.
  The `beq` branch at 0xda55458 targets 0xda5548c, is taken when a1(=[a0+38736]) == 0, and falls through when a1(=[a0+38736]) != 0.
  The return at 0xda55498 has v0 = [a0+38728].

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

- `__glOdysseyInitDefaultValues` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda59020 (n32).
  Role (from name): sets default GL state. The routine makes a long run of per-state setter calls: twenty __glOdyim_Disable calls, plus Enable, CullFace, FrontFace, ShadeModel, LightModeli, Fogfv and Fogi, ColorMask, DepthMask, StencilMask, PolygonMode, the alpha, stencil, depth, logic-op and blend setters, line, point and polygon-offset setters, and the material and fragment-lighting setters. Among them it calls the image initializer (0xda59528) early, and the lighting, fragment-lighting, fragment-material and texture-driver initializers (0xda59b90, 0xda59b9c, 0xda59ba8, 0xda59bb4) after the fragment-lighting setters. It reads an environment variable with getenv (0xda59ce4), makes further setter calls after it, and returns 0 or 1.
  Grade: inferred.
  Reviewed: 2026-11-12

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

- `__glsplc_Begin` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda61370 (n32).
  Puts a three-word entry into a growing buffer. The buffer's write pointer is the word at absolute
  0x1030, the room left is counted at absolute 0x1028, a running total sits at absolute 0x1034, and
  the state block is addressed by the word at absolute 0x1010. A shortcut applies only if six
  conditions hold; the first failure jumps to 0xda6143c, which calls `__glSPDlalloc` with 4 and 3.
  The conditions: the byte at state +0x16950 is set (the `beq` at 0xda61398); the word at +0x16954 is
  1 (0xda613a8); absolute 0x1034 is 0 (0xda613b4); the word at +0x13d4 is 3 or more unsigned
  (0xda613c4); the table entry found from the word at +0x13d0 and eight times that count has its
  word at -0x10 equal to the state word at +0x13b0 (0xda613dc); and its word at -0x8 equals the word
  at +0x58 of the record behind the state word at +0x13ac (0xda613f0).
  The allocation branch behaves as follows. A zero return exits at 0xda614a4 with nothing more
  written. A nonzero return receives the entry `a0` in its first word (the `sw` at 0xda61454). The
  word at +0x16954 is then tested (the `blez` at 0xda6145c): positive means it is cleared (the `sw` at 0xda61464) and the
  byte at +0x16950 is set to 1 (the `sb` at 0xda61468); otherwise only that
  byte is cleared (the `sb` at 0xda614b8).
  The shortcut branch starts with the `beq` at 0xda61410, which compares absolute 0x1030 against the
  entry's word at -0xc plus four times the word that points to plus 8. When they match, the pointed-to
  word is added to absolute 0x1034, 4 is taken from absolute 0x1030, 1 is added to absolute 0x1028
  (the delay slot of the `bgezall` at 0xda614e0) and `RemoveIlists` is called with 2. When they differ,
  `RemoveIlists` is called with 1 (the `bgezall` at 0xda61420). Both reach 0xda614ec, which computes
  R: 1 if bit 0x4 of absolute 0x1030 is set and absolute 0x1034 is zero, else 0. A room count under
  3 plus R (the `bnez` at 0xda6150c) triggers `__glSPDlistSpace` with 0 (the `jalr` at 0xda6156c).
  If that returns zero, the routine stores the old absolute 0x1030 less 4 (the `sw` at 0xda615a4),
  stores absolute 0x1028 plus 1 in the delay slot of the `jr` at 0xda615b8, and returns zero. If it
  returns nonzero, that value is the new room count, and R becomes 1 when bit 0x4 of the reloaded
  absolute 0x1030 is set (the `movn` at 0xda61598), else it is unchanged.
  The entry is then written starting at the write pointer plus 4R: 0x10001, 0x10400, then `a0` (the
  `sw` at 0xda61528, 0xda61530 and 0xda61534). Afterwards absolute 0x1030 points past those three
  words, absolute 0x1028 becomes the room count minus R minus 3, absolute 0x1034 gains 3, and the word
  at +0x16954 is zeroed (the `sw` at 0xda6155c).
  Every path ends at 0xda6146c. When the byte at +0x16948 is set (the `beq` at 0xda61474), six
  single-precision values are stored: 0xff7fffff (about -3.4e38) at +0x1690c, +0x16904 and +0x168fc,
  and 0x7f7fffff (about +3.4e38) at +0x16908, +0x16900 and +0x168f8. The routine then returns.
  Unknown: the content of `RemoveIlists` (0xda612f0) and `__glSPDlistSpace` (0xdadafc0) in this build,
  which no committed note covers; notes for those routines would settle it.
  Evidence grade: established.

- `__glOdysplc_LoadMatrixf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda61c80 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda61c80-0xda61cc4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xda61c90 loads 4 bytes from abs 0x1010.
  The `sb` at 0xda61cb0 stores 1 byte to [0x1010] +0x16948.
  The `jalr` at 0xda61cac calls __glsplc_LoadMatrixf [0xdb98790] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda61cbc has v0 = ret(__glsplc_LoadMatrixf).

- `__glOdysplc_LoadMatrixd` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda61cd0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda61cd0-0xda61d14 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xda61ce0 loads 4 bytes from abs 0x1010.
  The `sb` at 0xda61d00 stores 1 byte to [0x1010] +0x16948.
  The `jalr` at 0xda61cfc calls __glsplc_LoadMatrixd [0xdb98800] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda61d0c has v0 = ret(__glsplc_LoadMatrixd).

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

- `ApplyMaterialF` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda6fb60 (n32).
  The routine loads a global pointer from abs 0x1010 and reads floats from its third argument (lwc1 at +0x0, +0x4, +0x8 and +0xc). It writes words at arg0 +0x0 through +0x1c and a block reached through the global pointer at +0x9750, and it makes 21 stores to abs 0x4000. The return value is read through the global pointer chain [[0x1010]+31676]. Role (from name): applies a float material value. The facts do not say which material fields it targets, so that part is open.
  Grade: inferred.
  Reviewed: 2026-11-12

- `ApplyMaterialI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda70250 (n32).
  This is the sibling of ApplyMaterialF at 0xda6fb60, with the same global-pointer and abs 0x4000 structure. The difference in the facts is that its third argument is read with integer loads (lw at +0x0, +0x4, +0x8 and +0xc) and it also reads floats from [0x1010] +0xde8, alongside the abs float reads the F variant makes. The return value comes from the same chain as the F variant. The integer-to-material mapping is not visible in the facts.
  Grade: inferred.
  Reviewed: 2026-11-12

- `AddConvolutionBorders` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda85ce0 (n32).
  The routine is about 9.5 KB long and makes seven calls to __glOdysseyProgramTexFilter (for example 0xda85e3c, 0xda861d4), twenty-six calls to __glOdysseyImageMovePixelsTexture (for example 0xda85f20, 0xda86050), and over a hundred floorf and ceilf calls. Role (from name): adds border texels for convolution, perhaps by moving pixel rows or columns into a border region. The facts do not show which edge each call fills, so the per-edge mapping is open.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdySpanEyeZ24ToWindowZ` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda8c030 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda8c030-0xda8c178 (328 bytes).
  It occupies 328 bytes.
  The `ldc1` at 0xda8c030 loads 8 bytes from a1 (arg1 at entry) +0x200.
  The `lw` at 0xda8c034 loads 4 bytes from a1 (arg1 at entry) +0x1f4.
  The `lw` at 0xda8c03c loads 4 bytes from a1 (arg1 at entry) +0xa8.
  The `ldc1` at 0xda8c048 loads 8 bytes from [a1+500] +0x40.
  The `ldc1` at 0xda8c058 loads 8 bytes from abs 0xdbde678.
  The `ldc1` at 0xda8c064 loads 8 bytes from [a1+500] +0x30.
  The `ldc1` at 0xda8c070 loads 8 bytes from abs 0xdbde668.
  The `ldc1` at 0xda8c07c loads 8 bytes from [a1+500] +0x0.
  The `ldc1` at 0xda8c08c loads 8 bytes from [a1+500] +0x48.
  The `ldc1` at 0xda8c098 loads 8 bytes from [a1+500] +0x38.
  The `ldc1` at 0xda8c0a8 loads 8 bytes from abs 0xdbde670.
  The `lwc1` at 0xda8c0ac loads 4 bytes from abs 0xdbde448.
  The `lwc1` at 0xda8c0b8 loads 4 bytes from abs 0xdbde444.
  2 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda8c0c0, `swc1` at 0xda8c16c.
  The `lw` at 0xda8c0d0 loads 4 bytes from ?.
  The `blez` branch at 0xda8c09c targets 0xda8c170, is taken when t8(=[a1+168]) <= 0 (signed), and falls through when t8(=[a1+168]) > 0 (signed).
  The `beq` branch at 0xda8c0b4 targets 0xda8c0d0 and is always taken.
  The `beq` branch at 0xda8c0c8 targets 0xda8c170, is taken when t8(=[a1+168]) == a5(?), and falls through when t8(=[a1+168]) != a5(?).
  The `bc1t` branch at 0xda8c130 targets 0xda8c0c0, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `bc1t` branch at 0xda8c150 targets 0xda8c164, is taken when FP condition code 2 is true, and falls through when FP condition code 2 is false.
  The `beq` branch at 0xda8c168 targets 0xda8c0c8 and is always taken.
  The return at 0xda8c170 has v0 = one of [a1+500], ?.
  The instructions from 0xda8c0bc to 0xda8c0bc are not reached by any path from the entry, and their branches are not listed.

- `__glOdySpanEyeZ16ToWindowZ` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda8c180 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda8c180-0xda8c2bc (316 bytes).
  It occupies 316 bytes.
  The `ldc1` at 0xda8c180 loads 8 bytes from a1 (arg1 at entry) +0x200.
  The `lw` at 0xda8c184 loads 4 bytes from a1 (arg1 at entry) +0x1f4.
  The `lw` at 0xda8c18c loads 4 bytes from a1 (arg1 at entry) +0xa8.
  The `ldc1` at 0xda8c194 loads 8 bytes from [a1+500] +0x40.
  The `ldc1` at 0xda8c19c loads 8 bytes from abs 0xdbde678.
  The `ldc1` at 0xda8c1a8 loads 8 bytes from [a1+500] +0x30.
  The `ldc1` at 0xda8c1b4 loads 8 bytes from abs 0xdbde668.
  The `ldc1` at 0xda8c1c0 loads 8 bytes from [a1+500] +0x0.
  The `ldc1` at 0xda8c1d0 loads 8 bytes from [a1+500] +0x48.
  The `ldc1` at 0xda8c1dc loads 8 bytes from [a1+500] +0x38.
  The `ldc1` at 0xda8c1ec loads 8 bytes from abs 0xdbde670.
  The `lwc1` at 0xda8c1f0 loads 4 bytes from abs 0xdbde448.
  The `lwc1` at 0xda8c1f8 loads 4 bytes from abs 0xdbde444.
  2 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xda8c200, `swc1` at 0xda8c2b0.
  The `lhu` at 0xda8c210 loads 2 bytes from ?.
  The `blez` branch at 0xda8c1e0 targets 0xda8c2b4, is taken when t2(=[a1+168]) <= 0 (signed), and falls through when t2(=[a1+168]) > 0 (signed).
  The `beq` branch at 0xda8c1f4 targets 0xda8c210 and is always taken.
  The `beq` branch at 0xda8c208 targets 0xda8c2b4, is taken when t2(=[a1+168]) == a5(?), and falls through when t2(=[a1+168]) != a5(?).
  The `bc1t` branch at 0xda8c274 targets 0xda8c200, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `bc1t` branch at 0xda8c294 targets 0xda8c2a8, is taken when FP condition code 2 is true, and falls through when FP condition code 2 is false.
  The `beq` branch at 0xda8c2ac targets 0xda8c208 and is always taken.
  The return at 0xda8c2b4 has v0 = one of [a1+500], ?.
  The instructions from 0xda8c1fc to 0xda8c1fc are not reached by any path from the entry, and their branches are not listed.

- `__glOdySpanWindowZToEyeZ24` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda8cbd0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda8cbd0-0xda8cd24 (340 bytes).
  It occupies 340 bytes.
  The `ldc1` at 0xda8cbd0 loads 8 bytes from a1 (arg1 at entry) +0x200.
  The `lw` at 0xda8cbd4 loads 4 bytes from a1 (arg1 at entry) +0x1f4.
  The `lw` at 0xda8cbd8 loads 4 bytes from a1 (arg1 at entry) +0xa8.
  The `ldc1` at 0xda8cbdc loads 8 bytes from [a1+500] +0x48.
  The `ldc1` at 0xda8cbe4 loads 8 bytes from [a1+500] +0x38.
  The `ldc1` at 0xda8cbec loads 8 bytes from [a1+500] +0x30.
  The `ldc1` at 0xda8cbf4 loads 8 bytes from abs 0xdbde6b8.
  The `ldc1` at 0xda8cbf8 loads 8 bytes from [a1+500] +0x40.
  The `ldc1` at 0xda8cc00 loads 8 bytes from a1 (arg1 at entry) +0x1f8.
  The `ldc1` at 0xda8cc0c loads 8 bytes from [a1+500] +0x0.
  The `ldc1` at 0xda8cc18 loads 8 bytes from abs 0xdbde670.
  The `ldc1` at 0xda8cc38 loads 8 bytes from abs 0xdbde6e8.
  The `sw` at 0xda8cc88 stores 4 bytes to ?.
  The `lwc1` at 0xda8cc8c loads 4 bytes from ?.
  The `lwc1` at 0xda8ccac loads 4 bytes from a1 (arg1 at entry) +0x208.
  The `lbu` at 0xda8ccbc loads 1 byte from a1 (arg1 at entry) +0x212.
  The `lbu` at 0xda8ccd4 loads 1 byte from a1 (arg1 at entry) +0x213.
  The `lwc1` at 0xda8ccec loads 4 bytes from a1 (arg1 at entry) +0x20c.
  The `blez` branch at 0xda8cc20 targets 0xda8cd1c, is taken when t8(=[a1+168]) <= 0 (signed), and falls through when t8(=[a1+168]) > 0 (signed).
  The `beq` branch at 0xda8cc3c targets 0xda8cc8c and is always taken.
  The `bltz` branch at 0xda8cc70 targets 0xda8cd14, is taken when a7(?) < 0 (signed), and falls through when a7(?) >= 0 (signed).
  The `beq` branch at 0xda8cc84 targets 0xda8cd1c, is taken when t8(=[a1+168]) == a5(?), and falls through when t8(=[a1+168]) != a5(?).
  The `bc1f` branch at 0xda8cca4 targets 0xda8ccb8, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0xda8ccb0 targets 0xda8cc54 and is always taken.
  The `beq` branch at 0xda8ccc0 targets 0xda8ccd4, is taken when v0(=[a1+530]:1) == 0, and falls through when v0(=[a1+530]:1) != 0.
  The `bc1t` branch at 0xda8cccc targets 0xda8ccec, is taken when FP condition code 2 is true, and falls through when FP condition code 2 is false.
  The `beq` branch at 0xda8ccd8 targets 0xda8ccf8, is taken when v1(=[a1+531]:1) == 0, and falls through when v1(=[a1+531]:1) != 0.
  The `bc1f` branch at 0xda8cce4 targets 0xda8ccf8, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `beq` branch at 0xda8ccf0 targets 0xda8cc54 and is always taken.
  The `bc1f` branch at 0xda8cd04 targets 0xda8cc44, is taken when not (f4 < f7(=0x0) (c.lt.d at 0xda8cd00)), and falls through when f4 < f7(=0x0) (c.lt.d at 0xda8cd00).
  The `beq` branch at 0xda8cd0c targets 0xda8cc4c and is always taken.
  The `beq` branch at 0xda8cd14 targets 0xda8cc84 and is always taken.
  The return at 0xda8cd1c has v0 = one of [a1+500], ?.

- `__glOdySpanPackPioStencil` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda8ece0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda8ece0-0xda8ed4c (108 bytes).
  It occupies 108 bytes.
  The `lwc1` at 0xda8ece0 loads 4 bytes from a1 (arg1 at entry) +0x14c.
  The `lwc1` at 0xda8ecf4 loads 4 bytes from a1 (arg1 at entry) +0x13c.
  2 such `swc1` accesses store 4 bytes to a1 (arg1 at entry) +0x14c, including `swc1` at 0xda8ed1c, `swc1` at 0xda8ed3c.
  2 such `swc1` accesses store 4 bytes to a1 (arg1 at entry) +0x13c, including `swc1` at 0xda8ed24, `swc1` at 0xda8ed2c.
  The `bgezall` at 0xda8ed20 calls __glOdySpanShiftOffsetIndex [0xda8e0e0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xda8ed44 has v0 = ret(__glOdySpanShiftOffsetIndex).

- `__glOdysseyImageMovePixelsCopy` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda9b990 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda9b990-0xda9d978 (8168 bytes).
  It occupies 8168 bytes.
  The `lw` at 0xda9b9fc loads 4 bytes from abs 0x1010.
  The `lwc1` at 0xda9ba24 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xda9ba50 loads 4 bytes from a2 (arg2 at entry) +0x14.
  The `lwc1` at 0xda9ba74 loads 4 bytes from a2 (arg2 at entry) +0x18.
  The `lwc1` at 0xda9ba9c loads 4 bytes from a2 (arg2 at entry) +0x1c.
  The `lwc1` at 0xda9bac0 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xda9bad0 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0xda9bae0 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0xda9baf0 loads 4 bytes from a2 (arg2 at entry) +0xc.
  6 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x8, including `lbu` at 0xda9bb00, `lbu` at 0xda9bb8c, `lbu` at 0xda9bca0.
  The `lw` at 0xda9bb14 loads 4 bytes from [0x1010] +0xa5f8.
  The `lbu` at 0xda9bb38 loads 1 byte from a1 (arg1 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0xda9bb58, `lw` at 0xda9c8e4.
  The `lw` at 0xda9bb60 loads 4 bytes from a1 (arg1 at entry) +0x30.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x28, including `lw` at 0xda9bb64, `lw` at 0xda9bc94.
  The `lw` at 0xda9bbf8 loads 4 bytes from [0x1010] +0x169d0.
  2 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x9, including `lbu` at 0xda9bc10, `lbu` at 0xda9bdc8.
  The `lw` at 0xda9bc34 loads 4 bytes from [0x1010] +0x4d4.
  The `lw` at 0xda9bc88 loads 4 bytes from a1 (arg1 at entry) +0x2c.
  The `lw` at 0xda9bcac loads 4 bytes from [0x1010] +0x760.
  The `lw` at 0xda9bd04 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0xda9bd10 loads 4 bytes from a0 (arg0 at entry) +0x28.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x10, including `lw` at 0xda9bd20, `lw` at 0xda9bd44, `lw` at 0xda9c674.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lw` at 0xda9bd2c, `lw` at 0xda9c67c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0xda9bd48, `lw` at 0xda9c694.
  The `lw` at 0xda9bd5c loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `lw` at 0xda9bd64 loads 4 bytes from (([a1+16] << 0x2) + sp-704) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0xda9bd70, `lw` at 0xda9c6a0.
  The `lw` at 0xda9bd98 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lw` at 0xda9be78 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xda9bee4 loads 4 bytes from a1 (arg1 at entry) +0x18.
  The `lw` at 0xda9bf18 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `lw` at 0xda9bfe0 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0xda9c058 loads 4 bytes from [0x1010] +0x95c8.
  The `lw` at 0xda9c05c loads 4 bytes from [0x1010] +0x95c4.
  The `lw` at 0xda9c060 loads 4 bytes from [0x1010] +0x95c0.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x95bc, including `lw` at 0xda9c064, `lw` at 0xda9c1f0.
  The `lw` at 0xda9c068 loads 4 bytes from [0x1010] +0x9628.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x9624, including `lw` at 0xda9c06c, `lw` at 0xda9c1d8.
  The `lw` at 0xda9c070 loads 4 bytes from [0x1010] +0x7b58.
  The `lw` at 0xda9c074 loads 4 bytes from [0x1010] +0x7b54.
  The `lw` at 0xda9c078 loads 4 bytes from [0x1010] +0x7b1c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x95d0, including `lw` at 0xda9c07c, `lw` at 0xda9c164.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x95d4, including `lw` at 0xda9c080, `lw` at 0xda9c170.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x95d8, including `lw` at 0xda9c084, `lw` at 0xda9c17c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x95dc, including `lw` at 0xda9c088, `lw` at 0xda9c188.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x95cc, including `lw` at 0xda9c090, `lw` at 0xda9c0c0, `lw` at 0xda9c158.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x9750, including `lw` at 0xda9c098, `lw` at 0xda9c488, `lw` at 0xda9d19c.
  The `lw` at 0xda9c0c4 loads 4 bytes from [0x1010] +0x7b5c.
  The `lw` at 0xda9c0d4 loads 4 bytes from [0x1010] +0x7b7c.
  The `sw` at 0xda9c0e4 stores 4 bytes to [0x1010] +0x95cc.
  4 such `sw` accesses store 4 bytes to [0x1010] +0x9750, including `sw` at 0xda9c114, `sw` at 0xda9c190, `sw` at 0xda9c494.
  67 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xda9c118, `sw` at 0xda9c11c, `sw` at 0xda9c120.
  The `sw` at 0xda9c1c0 stores 4 bytes to [0x1010] +0x9624.
  5 such `lw` accesses load 4 bytes from [0x1010] +0x168d0, including `lw` at 0xda9c1e8, `lw` at 0xda9c348, `lw` at 0xda9c3d4.
  4 such `sw` accesses store 4 bytes to [0x1010] +0x168d0, including `sw` at 0xda9c208, `sw` at 0xda9c350, `sw` at 0xda9c3dc.
  The `sw` at 0xda9c218 stores 4 bytes to [0x1010] +0x95bc.
  8 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xda9c220, `sw` at 0xda9c354, `sw` at 0xda9c3e0.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lw` at 0xda9c224, `lw` at 0xda9c8f8.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xa, including `lbu` at 0xda9c320, `lbu` at 0xda9c7e4, `lbu` at 0xda9c904.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x11bc0, including `lw` at 0xda9c340, `lw` at 0xda9c910.
  The `sw` at 0xda9c344 stores 4 bytes to [0x1010] +0x7b7c.
  5 such `lw` accesses load 4 bytes from [0x1010] +0x7b40, including `lw` at 0xda9c368, `lw` at 0xda9d178, `lw` at 0xda9d1cc.
  5 such `lw` accesses load 4 bytes from [0x1010] +0x7b44, including `lw` at 0xda9c39c, `lw` at 0xda9d188, `lw` at 0xda9d1d4.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7b40, including `sw` at 0xda9c3c0, `sw` at 0xda9d194.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x7b44, including `sw` at 0xda9c3d0, `sw` at 0xda9d198.
  The `lw` at 0xda9c400 loads 4 bytes from [0x1010] +0xa118.
  The `sw` at 0xda9c404 stores 4 bytes to [0x1010] +0x9614.
  The `sw` at 0xda9c410 stores 4 bytes to [0x1010] +0xa118.
  The `lw` at 0xda9c4c8 loads 4 bytes from [0x1010] +0xa5fc.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7a90, including `lw` at 0xda9c4dc, `lw` at 0xda9d1dc.
  The `lw` at 0xda9c520 loads 4 bytes from [0x1010] +0x21de4.
  11 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda9c638, `lw` at 0xda9c6d4, `lw` at 0xda9c728.
  29 such `sw` accesses store 4 bytes to ?, including `sw` at 0xda9c644, `sw` at 0xda9c66c, `sw` at 0xda9c6bc.
  The `lw` at 0xda9c8f4 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda9c914 loads 4 bytes from [0x1010] +0x11c94.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x16650, including `lw` at 0xda9d17c, `lw` at 0xda9d204.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x16654, including `lw` at 0xda9d184, `lw` at 0xda9d200.
  The `lw` at 0xda9d1f0 loads 4 bytes from [0x1010] +0x168d4.
  The `sw` at 0xda9d1f8 stores 4 bytes to [0x1010] +0x168d4.
  The `lbu` at 0xda9d284 loads 1 byte from [0x1010] +0xc91.
  The `lw` at 0xda9d2ac loads 4 bytes from [0x1010] +0x700.
  The `jalr` at 0xda9ba04 calls memset with a0=sp-808, a1=0x0, a2=0x20, a3=a3 at entry (arg3).
  The `jalr` at 0xda9ba1c calls memset with a0=sp-776, a1=0x0, a2=0x1c, a3=?.
  The `jalr` at 0xda9ba3c calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9ba60 calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9ba88 calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9baac calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xda9bb78 calls (unnamed) [0xdaa0f30] with a0=[a1+48], a1=[a0+48], a2=sp-776, a3=?.
  The `bgezall` at 0xda9bc90 calls (unnamed) [0xdaa2ab0] with a0=[a1+40], a1=[a1+44], a2=one of 0x0, 0x1, a3=0x0, a4=sp-832, a5=sp-828.
  The `bgezall` at 0xda9bd0c calls (unnamed) [0xdaa2ab0] with a0=[a0+40], a1=[a0+44], a2=one of 0x0, 0x1, a3=0x0, a4=sp-824, a5=sp-820.
  The `jalr` at 0xda9bd30 calls __glOdysseyOpenPMObjReference [0xdaaa8c0] with a0=[0x1010], a1=[a1+12], a2=[a1+16], a3=[a1+16], a4=sp-704, a5=0x0.
  The `jalr` at 0xda9bd78 calls __glOdysseyOpenPMObjWriteReference [0xdaaab50] with a0=[0x1010], a1=[a0+12], a2=[a0+16], a3=sp-816.
  The `bgezall` at 0xda9c1e0 calls __glOdysseyImageCalcPixelModeFields [0xdaa2fe0] with a0=[0x1010]+38332, a1=a0 at entry (arg0), a2=?, a3=0x13c00, a4=[[0x1010]+38436], a5=[[0x1010]+38364], a6=[[0x1010]+38360], a7=[[0x1010]+38356].
  The `jalr` at 0xda9c3f8 calls __glOdysseyValidateHardware [0xda57700] with a0=[0x1010], a1=?, a2=?, a3=[[0x1010]+31552], a4=0x2, a5=([[0x1010]+92368] | 0x10).
  The `jalr` at 0xda9c42c calls __glSetError [0xdb11f10] with a0=0x502, a1=[a1+4], a2=0x1, a3=?, a4=0x2.
  The `bgezall` at 0xda9c604 calls (unnamed) [0xda9b600] with a0=sp-808, a1=sp-504, a2=sp-488, a3=?, a6=0x1.
  The `jalr` at 0xda9c680 calls __glOdysseyClosePMObjReference [0xdaaaf20] with a0=?, a1=[a1+12], a2=[a1+16], a3=[a1+16].
  The `jalr` at 0xda9c69c calls __glOdysseyClosePMObjWriteReference [0xdaaadc0] with a0=?, a1=[a0+12], a2=[a0+16], a3=?.
  The `jalr` at 0xda9cca4 calls __glSetError [0xdb11f10] with a0=0x505, a1=?, a2=?, a3=?.
  The `bgezall` at 0xda9ce44 calls (unnamed) [0xda9b600] with a0=sp-808, a1=sp-504, a2=sp-488, a3=?, a6=0x1.
  The `bgezall` at 0xda9cef4 calls (unnamed) [0xda9b600] with a0=sp-808, a1=sp-504, a2=sp-488, a3=?, a6=0x1.
  The `bgezall` at 0xda9d044 calls (unnamed) [0xda9b600] with a0=sp-808, a1=sp-520, a2=sp-536, a3=?, a6=0x1.
  The `bgezall` at 0xda9d0e4 calls (unnamed) [0xda9b600] with a0=sp-808, a1=sp-504, a2=sp-488, a3=?, a6=0x1.
  The `jalr` at 0xda9d144 calls __glSetError [0xdb11f10] with a0=0x502, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9d2bc calls __glOdysseyImageCalcOdyEyeSpaceRasterPosZ [0xdaa5ab0] with a0=[[0x1010]+91732], a1=[[0x1010]+91728], a2=[[0x1010]+3217]:1, a3=?, a4=0x2.
  The `bgezall` at 0xda9d2e4 calls (unnamed) [0xdaa3df0] with a0=?, a1=[0x1010]+31516, a2=[0x1010]+31572, a3=[0x1010]+31576, a4=[0x1010]+31580, a5=[0x1010]+31612.
  The `jalr` at 0xda9d320 calls __glSetError [0xdb11f10] with a0=0x505, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9d360 calls __glSetError [0xdb11f10] with a0=0x505, a1=?, a2=?, a3=?.
  The `bgezall` at 0xda9d3b4 calls (unnamed) [0xda9b600] with a0=sp-808, a1=sp-728, a2=sp-744, a3=?, a6=0x0.
  The `bgezall` at 0xda9d544 calls (unnamed) [0xda9b600] with a0=sp-808, a1=sp-520, a2=sp-536, a3=?, a6=0x1.
  The `bgezall` at 0xda9d708 calls (unnamed) [0xda9b600] with a0=sp-808, a1=sp-520, a2=sp-536, a3=?, a6=0x1.
  The `jalr` at 0xda9d790 calls __glSetError [0xdb11f10] with a0=0x505, a1=?, a2=?, a3=?.
  The `bgezall` at 0xda9d880 calls (unnamed) [0xda9b600] with a0=sp-808, a1=sp-520, a2=sp-536, a3=?, a6=0x1.
  The `jalr` at 0xda9d968 calls __glOdysseyIoctl [0xdabc870] with a0=[0x1010], a1=0x6f64000d, a2=sp-568, a3=?.
  The `beq` branch at 0xda9bb04 targets 0xda9bb58, is taken when v1(=[a0+8]:1) == 0, and falls through when v1(=[a0+8]:1) != 0.
  The `beq` branch at 0xda9bb1c targets 0xda9bb58, is taken when (a2(=[[0x1010]+42488]) & 0x1000) == 0, and falls through when (a2(=[[0x1010]+42488]) & 0x1000) != 0.
  The `beq` branch at 0xda9bb40 targets 0xda9bb58, is taken when a3(=[a1+8]:1) == 0, and falls through when a3(=[a1+8]:1) != 0.
  The `beq` branch at 0xda9bb84 targets 0xda9d144, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xda9bb90 targets 0xda9c8e4, is taken when v0(=[a0+8]:1) == 0, and falls through when v0(=[a0+8]:1) != 0.
  The `bne` branch at 0xda9bbac targets 0xda9bbc8, is taken when a5(?) < v1(?) (signed), and falls through when a5(?) >= v1(?) (signed).
  The `bne` branch at 0xda9bbb8 targets 0xda9bbcc, is taken when a3(?) < a5(?) (signed), and falls through when a3(?) >= a5(?) (signed).
  The `beq` branch at 0xda9bbc0 targets 0xda9bbcc and is always taken.
  The `bne` branch at 0xda9bbd8 targets 0xda9bbf4, is taken when a6(?) < at(?) (signed), and falls through when a6(?) >= at(?) (signed).
  The `bne` branch at 0xda9bbe4 targets 0xda9bbf8, is taken when v0(?) < a6(?) (signed), and falls through when v0(?) >= a6(?) (signed).
  The `beq` branch at 0xda9bbec targets 0xda9bbf8 and is always taken.
  The `beq` branch at 0xda9bc2c targets 0xda9c928, is taken when v1(=[a1+9]:1) == 0, and falls through when v1(=[a1+9]:1) != 0.
  The `beq` branch at 0xda9bc40 targets 0xda9bc5c, is taken when a0(=[[0x1010]+1236]) == v0(=0x405), and falls through when a0(=[[0x1010]+1236]) != v0(=0x405).
  The `beq` branch at 0xda9bc4c targets 0xda9bc5c, is taken when a0(=[[0x1010]+1236]) == v1(=0x402), and falls through when a0(=[[0x1010]+1236]) != v1(=0x402).
  The `bne` branch at 0xda9bc54 targets 0xda9bc64, is taken when a0(=[[0x1010]+1236]) != a3(=0x403), and falls through when a0(=[[0x1010]+1236]) == a3(=0x403).
  The `beq` branch at 0xda9bc64 targets 0xda9c460, is taken when a0(=[[0x1010]+1236]) == at(=0x407), and falls through when a0(=[[0x1010]+1236]) != at(=0x407).
  The `beq` branch at 0xda9bc6c targets 0xda9c460, is taken when a0(=[[0x1010]+1236]) == v0(=0x401), and falls through when a0(=[[0x1010]+1236]) != v0(=0x401).
  The `beq` branch at 0xda9bc74 targets 0xda9c460, is taken when a0(=[[0x1010]+1236]) == v1(=0x403), and falls through when a0(=[[0x1010]+1236]) != v1(=0x403).
  The `beq` branch at 0xda9bc98 targets 0xda9cc68, is taken when v0(=ret(0xdaa2ab0)) == 0, and falls through when v0(=ret(0xdaa2ab0)) != 0.
  The `beq` branch at 0xda9bca4 targets 0xda9c934, is taken when at(=[a0+8]:1) == 0, and falls through when at(=[a0+8]:1) != 0.
  The `beq` branch at 0xda9bcb8 targets 0xda9bcd4, is taken when a1(=[[0x1010]+1888]) == v0(=0x405), and falls through when a1(=[[0x1010]+1888]) != v0(=0x405).
  The `beq` branch at 0xda9bcc4 targets 0xda9bcd4, is taken when a1(=[[0x1010]+1888]) == v1(=0x402), and falls through when a1(=[[0x1010]+1888]) != v1(=0x402).
  The `bne` branch at 0xda9bccc targets 0xda9bcdc, is taken when a1(=[[0x1010]+1888]) != a3(=0x403), and falls through when a1(=[[0x1010]+1888]) == a3(=0x403).
  The `beq` branch at 0xda9bcdc targets 0xda9c468, is taken when a1(=[[0x1010]+1888]) == at(=0x407), and falls through when a1(=[[0x1010]+1888]) != at(=0x407).
  The `beq` branch at 0xda9bce4 targets 0xda9c468, is taken when a1(=[[0x1010]+1888]) == v0(=0x401), and falls through when a1(=[[0x1010]+1888]) != v0(=0x401).
  The `beq` branch at 0xda9bcec targets 0xda9c468, is taken when a1(=[[0x1010]+1888]) == v1(=0x403), and falls through when a1(=[[0x1010]+1888]) != v1(=0x403).
  The `beq` branch at 0xda9bd14 targets 0xda9c8b0, is taken when v0(=ret(0xdaa2ab0)) == 0, and falls through when v0(=ret(0xdaa2ab0)) != 0.
  The `beq` branch at 0xda9bd3c targets 0xda9cc9c, is taken when (v0(=ret(__glOdysseyOpenPMObjReference)) & 0xff) == 0, and falls through when (v0(=ret(__glOdysseyOpenPMObjReference)) & 0xff) != 0.
  The `beq` branch at 0xda9bd84 targets 0xda9d354, is taken when (v0(=ret(__glOdysseyOpenPMObjWriteReference)) & 0xff) == 0, and falls through when (v0(=ret(__glOdysseyOpenPMObjWriteReference)) & 0xff) != 0.
  The `beq` branch at 0xda9c050 targets 0xda9c474, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `beq` branch at 0xda9c0e0 targets 0xda9c128, is taken when at(=[[0x1010]+38736]) == 0, and falls through when at(=[[0x1010]+38736]) != 0.
  The `beq` branch at 0xda9c228 targets 0xda9c940, is taken when a1(=[a1+4]) == 0, and falls through when a1(=[a1+4]) != 0.
  The `beq` branch at 0xda9c234 targets 0xda9c9b8, is taken when a1(=[a1+4]) == a2(=0x1), and falls through when a1(=[a1+4]) != a2(=0x1).
  The `beq` branch at 0xda9c23c targets 0xda9ca28, is taken when a1(=[a1+4]) == 0, and falls through when a1(=[a1+4]) != 0.
  The `beq` branch at 0xda9c244 targets 0xda9ca9c, is taken when a1(=[a1+4]) == a2(=0x1), and falls through when a1(=[a1+4]) != a2(=0x1).
  The `beq` branch at 0xda9c24c targets 0xda9cb0c, is taken when a1(=[a1+4]) == 0, and falls through when a1(=[a1+4]) != 0.
  The `beq` branch at 0xda9c254 targets 0xda9cb80, is taken when a1(=[a1+4]) == a2(=0x1), and falls through when a1(=[a1+4]) != a2(=0x1).
  The `beq` branch at 0xda9c25c targets 0xda9cbf0, is taken when a1(=[a1+4]) == 0, and falls through when a1(=[a1+4]) != 0.
  The `bne` branch at 0xda9c264 targets 0xda9c424, is taken when a1(=[a1+4]) != a2(=0x1), and falls through when a1(=[a1+4]) == a2(=0x1).
  The `bne` branch at 0xda9c26c targets 0xda9c420, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0xda9c274 targets 0xda9c424, is taken when a2(=0x1) != a3(?), and falls through when a2(=0x1) == a3(?).
  The `beq` branch at 0xda9c2e0 targets 0xda9c2f4, is taken when a3(=[a0+8]:1) == 0, and falls through when a3(=[a0+8]:1) != 0.
  The `beq` branch at 0xda9c2ec targets 0xda9d178, is taken when at(=a4) == v0(=0x1), and falls through when at(=a4) != v0(=0x1).
  The `beq` branch at 0xda9c338 targets 0xda9c358, is taken when v1(=[a0+10]:1) == 0, and falls through when v1(=[a0+10]:1) != 0.
  The `beq` branch at 0xda9c3ec targets 0xda9c400, is taken when v0(=[[0x1010]+92368]) == 0, and falls through when v0(=[[0x1010]+92368]) != 0.
  The `beq` branch at 0xda9c418 targets 0xda9c480 and is always taken.
  The `beq` branch at 0xda9c460 targets 0xda9bc78 and is always taken.
  The `beq` branch at 0xda9c46c targets 0xda9bcf4 and is always taken.
  The `beq` branch at 0xda9c480 targets 0xda9c4d0, is taken when s8(=one of 0x0, 0x1) == 0, and falls through when s8(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xda9c48c targets 0xda9c4b8, is taken when a3(=[[0x1010]+38736]) == 0, and falls through when a3(=[[0x1010]+38736]) != 0.
  The `beq` branch at 0xda9c4d0 targets 0xda9d394, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `beq` branch at 0xda9c50c targets 0xda9ccd8, is taken when (v1(=[[0x1010]+31376]) & 0x2) == 0, and falls through when (v1(=[[0x1010]+31376]) & 0x2) != 0.
  The `beq` branch at 0xda9c568 targets 0xda9cdc8, is taken when s7(?) == t3(=0x3), and falls through when s7(?) != t3(=0x3).
  The `beq` branch at 0xda9c574 targets 0xda9ce70, is taken when s7(?) == at(=0x2), and falls through when s7(?) != at(=0x2).
  The `beq` branch at 0xda9c57c targets 0xda9d06c, is taken when s7(?) == v0(=0x1), and falls through when s7(?) != v0(=0x1).
  The `blez` branch at 0xda9c598 targets 0xda9c62c, is taken when s8(?) <= 0 (signed), and falls through when s8(?) > 0 (signed).
  The `bne` branch at 0xda9c620 targets 0xda9c5c0, is taken when s8(?) != s4(?), and falls through when s8(?) == s4(?).
  The `beq` branch at 0xda9c68c targets 0xda9d318, is taken when (v0(=ret(__glOdysseyClosePMObjReference)) & 0xff) == 0, and falls through when (v0(=ret(__glOdysseyClosePMObjReference)) & 0xff) != 0.
  The `beq` branch at 0xda9c6a8 targets 0xda9d78c, is taken when (v0(=ret(__glOdysseyClosePMObjWriteReference)) & 0xff) == 0, and falls through when (v0(=ret(__glOdysseyClosePMObjWriteReference)) & 0xff) != 0.
  The `beq` branch at 0xda9c6b0 targets 0xda9c804, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `beq` branch at 0xda9c6f4 targets 0xda9c710, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xda9c7cc targets 0xda9c7e4, is taken when at(=[a0+8]:1) == 0, and falls through when at(=[a0+8]:1) != 0.
  The `beq` branch at 0xda9c7dc targets 0xda9d110, is taken when a3(=a4) == at(=0x1), and falls through when a3(=a4) != at(=0x1).
  The `beq` branch at 0xda9c7e8 targets 0xda9c804, is taken when v0(=[a0+10]:1) == 0, and falls through when v0(=[a0+10]:1) != 0.
  The `beq` branch at 0xda9c804 targets 0xda9c884, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `beq` branch at 0xda9c820 targets 0xda9c83c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda9c8ec targets 0xda9cc60, is taken when v1(=[a0+48]) != a3(?), and falls through when v1(=[a0+48]) == a3(?).
  The `bne` branch at 0xda9c8fc targets 0xda9cdc0, is taken when at(=[a0+4]) != v0(=[a1+4]), and falls through when at(=[a0+4]) == v0(=[a1+4]).
  The `beq` branch at 0xda9c908 targets 0xda9bba0, is taken when v1(=[a0+10]:1) == 0, and falls through when v1(=[a0+10]:1) != 0.
  The `beq` branch at 0xda9c918 targets 0xda9bba4, is taken when a3(=[[0x1010]+72640]) == at(=[[0x1010]+72852]), and falls through when a3(=[[0x1010]+72640]) != at(=[[0x1010]+72852]).
  The `beq` branch at 0xda9c920 targets 0xda9bba0 and is always taken.
  The `beq` branch at 0xda9c92c targets 0xda9bc78 and is always taken.
  The `beq` branch at 0xda9c938 targets 0xda9bcf4 and is always taken.
  The `bne` branch at 0xda9c940 targets 0xda9c234, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0xda9c94c targets 0xda9c234, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xda9c9b0 targets 0xda9c2dc and is always taken.
  The `bne` branch at 0xda9c9b8 targets 0xda9c23c, is taken when a2(=0x1) != a0(?), and falls through when a2(=0x1) == a0(?).
  The `bne` branch at 0xda9c9c0 targets 0xda9c23c, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xda9ca20 targets 0xda9c9b0 and is always taken.
  The `bne` branch at 0xda9ca28 targets 0xda9c244, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0xda9ca30 targets 0xda9c244, is taken when a2(=0x1) != v1(?), and falls through when a2(=0x1) == v1(?).
  The `beq` branch at 0xda9ca94 targets 0xda9c2dc and is always taken.
  The `bne` branch at 0xda9ca9c targets 0xda9c24c, is taken when a2(=0x1) != a0(?), and falls through when a2(=0x1) == a0(?).
  The `bne` branch at 0xda9caa4 targets 0xda9c24c, is taken when a2(=0x1) != v1(?), and falls through when a2(=0x1) == v1(?).
  The `beq` branch at 0xda9cb04 targets 0xda9ca94 and is always taken.
  The `bne` branch at 0xda9cb0c targets 0xda9c254, is taken when a2(=0x1) != a0(?), and falls through when a2(=0x1) == a0(?).
  The `bne` branch at 0xda9cb14 targets 0xda9c254, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xda9cb78 targets 0xda9c2dc and is always taken.
  The `bne` branch at 0xda9cb80 targets 0xda9c25c, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0xda9cb88 targets 0xda9c25c, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xda9cbe8 targets 0xda9cb78 and is always taken.
  The `bne` branch at 0xda9cbf0 targets 0xda9c264, is taken when a2(=0x1) != a0(?), and falls through when a2(=0x1) == a0(?).
  The `bne` branch at 0xda9cbf8 targets 0xda9c264, is taken when a2(=0x1) != v1(?), and falls through when a2(=0x1) == v1(?).
  The `beq` branch at 0xda9cc58 targets 0xda9c2d8 and is always taken.
  The `beq` branch at 0xda9cc60 targets 0xda9bb9c and is always taken.
  The `beq` branch at 0xda9cd3c targets 0xda9d3c4, is taken when s7(?) == t3(=0x3), and falls through when s7(?) != t3(=0x3).
  The `beq` branch at 0xda9cd48 targets 0xda9d57c, is taken when s7(?) == at(=0x2), and falls through when s7(?) != at(=0x2).
  The `beq` branch at 0xda9cd50 targets 0xda9d72c, is taken when s7(?) == a2(=0x1), and falls through when s7(?) != a2(=0x1).
  The `blez` branch at 0xda9cd70 targets 0xda9c62c, is taken when v0(?) <= 0 (signed), and falls through when v0(?) > 0 (signed).
  The `beq` branch at 0xda9cdb8 targets 0xda9cf64 and is always taken.
  The `beq` branch at 0xda9cdc0 targets 0xda9bb9c and is always taken.
  The `blez` branch at 0xda9cde0 targets 0xda9c62c, is taken when s8(?) <= 0 (signed), and falls through when s8(?) > 0 (signed).
  The `bne` branch at 0xda9ce60 targets 0xda9ce00, is taken when s8(?) != s4(?), and falls through when s8(?) == s4(?).
  The `beq` branch at 0xda9ce68 targets 0xda9c62c and is always taken.
  The `blez` branch at 0xda9ce88 targets 0xda9c62c, is taken when s8(?) <= 0 (signed), and falls through when s8(?) > 0 (signed).
  The `bne` branch at 0xda9cf10 targets 0xda9ceb0, is taken when s8(?) != s4(?), and falls through when s8(?) == s4(?).
  The `beq` branch at 0xda9cf18 targets 0xda9c62c and is always taken.
  The `beq` branch at 0xda9cf5c targets 0xda9d064, is taken when v1(?) == a3(?), and falls through when v1(?) != a3(?).
  The `blez` branch at 0xda9cf78 targets 0xda9cf20, is taken when v1(?) <= 0 (signed), and falls through when v1(?) > 0 (signed).
  The `bnel` branch at 0xda9d054 targets 0xda9cf90, is taken when at(?) != s4(?), and falls through when at(?) == s4(?); its branch-likely delay slot `sw s1,296(sp)` at 0xda9d058 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda9d05c targets 0xda9cf20 and is always taken.
  The `beq` branch at 0xda9d064 targets 0xda9c62c and is always taken.
  The `blez` branch at 0xda9d080 targets 0xda9c62c, is taken when s8(?) <= 0 (signed), and falls through when s8(?) > 0 (signed).
  The `bne` branch at 0xda9d100 targets 0xda9d0a0, is taken when s8(?) != s4(?), and falls through when s8(?) == s4(?).
  The `beq` branch at 0xda9d108 targets 0xda9c62c and is always taken.
  The `beq` branch at 0xda9d13c targets 0xda9c804 and is always taken.
  The `bne` branch at 0xda9d180 targets 0xda9d194, is taken when a0(=[[0x1010]+31552]) != a1(=[[0x1010]+91728]), and falls through when a0(=[[0x1010]+31552]) == a1(=[[0x1010]+91728]).
  The `beq` branch at 0xda9d18c targets 0xda9d20c, is taken when a3(=[[0x1010]+31556]) == a0(=[[0x1010]+91732]), and falls through when a3(=[[0x1010]+31556]) != a0(=[[0x1010]+91732]).
  The `beq` branch at 0xda9d1a0 targets 0xda9d1c4, is taken when at(=[[0x1010]+38736]) == 0, and falls through when at(=[[0x1010]+38736]) != 0.
  The `beq` branch at 0xda9d1e8 targets 0xda9d910, is taken when (v1(=[[0x1010]+31376]) & a3(=0x100000)) == 0, and falls through when (v1(=[[0x1010]+31376]) & a3(=0x100000)) != 0.
  The `beq` branch at 0xda9d2a4 targets 0xda9d2c8, is taken when a2(=[[0x1010]+3217]:1) == 0, and falls through when a2(=[[0x1010]+3217]:1) != 0.
  The `beq` branch at 0xda9d2b4 targets 0xda9d2c8, is taken when (at(=[[0x1010]+1792]) & 0x10) == 0, and falls through when (at(=[[0x1010]+1792]) & 0x10) != 0.
  The `beq` branch at 0xda9d310 targets 0xda9c358 and is always taken.
  The `beq` branch at 0xda9d3bc targets 0xda9c670 and is always taken.
  The `blez` branch at 0xda9d3e0 targets 0xda9c62c, is taken when at(?) <= 0 (signed), and falls through when at(?) > 0 (signed).
  The `beq` branch at 0xda9d420 targets 0xda9d460 and is always taken.
  The `beq` branch at 0xda9d458 targets 0xda9d574, is taken when at(?) == v0(?), and falls through when at(?) != v0(?).
  The `blez` branch at 0xda9d474 targets 0xda9d428, is taken when v0(?) <= 0 (signed), and falls through when v0(?) > 0 (signed).
  The `bne` branch at 0xda9d564 targets 0xda9d490, is taken when at(?) != s4(?), and falls through when at(?) == s4(?).
  The `beq` branch at 0xda9d56c targets 0xda9d42c and is always taken.
  The `beq` branch at 0xda9d574 targets 0xda9c62c and is always taken.
  The `blez` branch at 0xda9d598 targets 0xda9c62c, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `beq` branch at 0xda9d5e0 targets 0xda9d62c and is always taken.
  The `beq` branch at 0xda9d624 targets 0xda9d724, is taken when at(?) == v0(?), and falls through when at(?) != v0(?).
  The `blez` branch at 0xda9d640 targets 0xda9d5e8, is taken when at(?) <= 0 (signed), and falls through when at(?) > 0 (signed).
  The `bnel` branch at 0xda9d714 targets 0xda9d650, is taken when a3(?) != s4(?), and falls through when a3(?) == s4(?); its branch-likely delay slot `sw s0,312(sp)` at 0xda9d718 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0xda9d71c targets 0xda9d5ec and is always taken.
  The `beq` branch at 0xda9d724 targets 0xda9c62c and is always taken.
  The `blez` branch at 0xda9d744 targets 0xda9c62c, is taken when at(?) <= 0 (signed), and falls through when at(?) > 0 (signed).
  The `beq` branch at 0xda9d784 targets 0xda9d8e8 and is always taken.
  The `bne` branch at 0xda9d8a4 targets 0xda9d7d0, is taken when at(?) != s4(?), and falls through when at(?) == s4(?).
  The `beq` branch at 0xda9d8e0 targets 0xda9d908, is taken when a3(?) == at(?), and falls through when a3(?) != at(?).
  The `blez` branch at 0xda9d8f8 targets 0xda9d8ac, is taken when at(?) <= 0 (signed), and falls through when at(?) > 0 (signed).
  The `beq` branch at 0xda9d900 targets 0xda9d7c4 and is always taken.
  The `beq` branch at 0xda9d908 targets 0xda9c62c and is always taken.
  The `beq` branch at 0xda9d970 targets 0xda9d1f0 and is always taken.
  The return at 0xda9c458 has v0 = ret(__glSetError).
  The return at 0xda9c8a8 has v0 = one of ?, 0xffffffff90008116.
  The return at 0xda9c8dc has v0 = ret(0xdaa2ab0).
  The return at 0xda9cc94 has v0 = ret(0xdaa2ab0).
  The return at 0xda9ccd0 has v0 = ret(__glSetError).
  The return at 0xda9d170 has v0 = ret(__glSetError).
  The return at 0xda9d34c has v0 = ret(__glSetError).
  The return at 0xda9d38c has v0 = ret(__glSetError).
  The return at 0xda9d7bc has v0 = ret(__glSetError).

- `__glOdysseyImageMovePixelsDMAtoGfx` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda9e1e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda9e1e0-0xda9f970 (6032 bytes).
  It occupies 6032 bytes.
  The `lw` at 0xda9e248 loads 4 bytes from abs 0x1010.
  The `lw` at 0xda9e268 loads 4 bytes from [0x1010] +0x21dd4.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x718, including `lw` at 0xda9e29c, `lw` at 0xda9e2b8.
  The `lw` at 0xda9e2ac loads 4 bytes from [0x1010] +0x21dd0.
  The `lwc1` at 0xda9e300 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xda9e320 loads 4 bytes from a2 (arg2 at entry) +0x14.
  The `lwc1` at 0xda9e340 loads 4 bytes from a2 (arg2 at entry) +0x18.
  The `lwc1` at 0xda9e364 loads 4 bytes from a2 (arg2 at entry) +0x1c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0xda9e388, `lw` at 0xda9e3f8.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lw` at 0xda9e38c, `lw` at 0xda9e42c, `lw` at 0xda9e444.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lw` at 0xda9e390, `lw` at 0xda9e434, `lw` at 0xda9e65c.
  The `lwc1` at 0xda9e394 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0xda9e398 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0xda9e3a0 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0xda9e3a4 loads 4 bytes from a2 (arg2 at entry) +0x0.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xa, including `lbu` at 0xda9e404, `lbu` at 0xda9ed00, `lbu` at 0xda9f294.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x11bc0, including `lw` at 0xda9e414, `lw` at 0xda9ed10.
  The `lw` at 0xda9e418 loads 4 bytes from [0x1010] +0x11c94.
  The `lw` at 0xda9e450 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `lw` at 0xda9e45c loads 4 bytes from a1 (arg1 at entry) +0x18.
  The `sw` at 0xda9e47c stores 4 bytes to a1 (arg1 at entry) +0x18.
  The `lw` at 0xda9e480 loads 4 bytes from a1 (arg1 at entry) +0x10.
  2 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x0, including `lbu` at 0xda9e4c0, `lbu` at 0xda9e9fc.
  4 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x8, including `lbu` at 0xda9e588, `lbu` at 0xda9e7e8, `lbu` at 0xda9ec6c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0xa5f8, including `lw` at 0xda9e59c, `lw` at 0xda9e5d8.
  The `lw` at 0xda9e600 loads 4 bytes from [0x1010] +0x760.
  The `lw` at 0xda9e694 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `lw` at 0xda9e6a0 loads 4 bytes from a0 (arg0 at entry) +0x28.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lw` at 0xda9e6ac, `lw` at 0xda9ec64.
  The `lw` at 0xda9e6b0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0xda9e750, `lw` at 0xda9f104, `lw` at 0xda9f6d8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0xda9e754, `lw` at 0xda9f108, `lw` at 0xda9f6e0.
  The `lw` at 0xda9e758 loads 4 bytes from a1 (arg1 at entry) +0x28.
  The `lw` at 0xda9e7b0 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lw` at 0xda9e8f0 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xda9e954 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lbu` at 0xda9e9e8 loads 1 byte from [0x1010] +0x4a4.
  The `lw` at 0xda9ea78 loads 4 bytes from [0x1010] +0x7b1c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x95bc, including `lw` at 0xda9ea8c, `lw` at 0xda9ec0c.
  The `lw` at 0xda9ea90 loads 4 bytes from [0x1010] +0x7b54.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x95d8, including `lw` at 0xda9ea98, `lw` at 0xda9eb8c, `lw` at 0xda9f200.
  The `lw` at 0xda9eaa4 loads 4 bytes from [0x1010] +0x95c8.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x95d0, including `lw` at 0xda9eaa8, `lw` at 0xda9eb7c, `lw` at 0xda9f1ec.
  The `lw` at 0xda9eab0 loads 4 bytes from [0x1010] +0x95c4.
  The `lw` at 0xda9eab8 loads 4 bytes from [0x1010] +0x7b58.
  The `lw` at 0xda9eabc loads 4 bytes from [0x1010] +0x7b5c.
  The `lw` at 0xda9eac0 loads 4 bytes from [0x1010] +0x7b7c.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x95d4, including `lw` at 0xda9ead0, `lw` at 0xda9eb84, `lw` at 0xda9f1f4.
  4 such `lw` accesses load 4 bytes from [0x1010] +0x95cc, including `lw` at 0xda9ead8, `lw` at 0xda9eafc, `lw` at 0xda9eb74.
  3 such `lw` accesses load 4 bytes from [0x1010] +0x95dc, including `lw` at 0xda9eadc, `lw` at 0xda9eb94, `lw` at 0xda9f20c.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x9624, including `lw` at 0xda9eae0, `lw` at 0xda9ebe8.
  The `lw` at 0xda9eae4 loads 4 bytes from [0x1010] +0x9628.
  5 such `lw` accesses load 4 bytes from [0x1010] +0x9750, including `lw` at 0xda9eaec, `lw` at 0xda9ee00, `lw` at 0xda9f090.
  The `lw` at 0xda9eb0c loads 4 bytes from [0x1010] +0x95c0.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x95cc, including `sw` at 0xda9eb3c, `sw` at 0xda9f1b4.
  11 such `sw` accesses store 4 bytes to [0x1010] +0x9750, including `sw` at 0xda9eb40, `sw` at 0xda9eba0, `sw` at 0xda9ee0c.
  86 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xda9eb44, `sw` at 0xda9eb48, `sw` at 0xda9eb4c.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x9624, including `sw` at 0xda9ebd0, `sw` at 0xda9f228.
  9 such `lw` accesses load 4 bytes from [0x1010] +0x168d0, including `lw` at 0xda9ec20, `lw` at 0xda9ecf0, `lw` at 0xda9ed18.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x95bc, including `sw` at 0xda9ec2c, `sw` at 0xda9f238.
  8 such `sw` accesses store 4 bytes to [0x1010] +0x168d0, including `sw` at 0xda9ec34, `sw` at 0xda9ecf8, `sw` at 0xda9ed20.
  9 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xda9ec3c, `sw` at 0xda9ecfc, `sw` at 0xda9ed24.
  The `lw` at 0xda9ec44 loads 4 bytes from [0x1010] +0xf4.
  The `lwc1` at 0xda9ec4c loads 4 bytes from [[0x1010]+244] +0xc.
  The `lwc1` at 0xda9ec50 loads 4 bytes from [[0x1010]+244] +0x8.
  The `lwc1` at 0xda9ec58 loads 4 bytes from [[0x1010]+244] +0x4.
  The `lwc1` at 0xda9ec78 loads 4 bytes from [[0x1010]+244] +0x0.
  8 such `lw` accesses load 4 bytes from [0x1010] +0x7b40, including `lw` at 0xda9ecc8, `lw` at 0xda9ed34, `lw` at 0xda9f4c4.
  4 such `sw` accesses store 4 bytes to [0x1010] +0x7b40, including `sw` at 0xda9ecd4, `sw` at 0xda9ed90, `sw` at 0xda9f254.
  6 such `lw` accesses load 4 bytes from [0x1010] +0x7b44, including `lw` at 0xda9ecdc, `lw` at 0xda9f4d4, `lw` at 0xda9f530.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x7b44, including `sw` at 0xda9ecec, `sw` at 0xda9f25c, `sw` at 0xda9f4e4.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x7b7c, including `sw` at 0xda9ed14, `sw` at 0xda9f2a0, `sw` at 0xda9f664.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xda9edc8, `lw` at 0xda9ef14.
  The `lw` at 0xda9ee40 loads 4 bytes from [0x1010] +0xa5fc.
  2 such `lw` accesses load 4 bytes from [0x1010] +0xa118, including `lw` at 0xda9ee80, `lw` at 0xda9f320.
  3 such `sw` accesses store 4 bytes to [0x1010] +0xa118, including `sw` at 0xda9ee88, `sw` at 0xda9f150, `sw` at 0xda9f328.
  3 such `sw` accesses store 4 bytes to [0x1010] +0x9614, including `sw` at 0xda9ee90, `sw` at 0xda9f160, `sw` at 0xda9f330.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x9618, including `sw` at 0xda9ee9c, `sw` at 0xda9f340.
  2 such `swc1` accesses store 4 bytes to [0x1010] +0x95f0, including `swc1` at 0xda9eea0, `swc1` at 0xda9f34c.
  2 such `swc1` accesses store 4 bytes to [0x1010] +0x95ec, including `swc1` at 0xda9eea4, `swc1` at 0xda9f350.
  2 such `swc1` accesses store 4 bytes to [0x1010] +0x95e8, including `swc1` at 0xda9eea8, `swc1` at 0xda9f354.
  2 such `swc1` accesses store 4 bytes to [0x1010] +0x95e4, including `swc1` at 0xda9eeb0, `swc1` at 0xda9f358.
  3 such `swc1` accesses store 4 bytes to [0x1010] +0x9608, including `swc1` at 0xda9ef74, `swc1` at 0xda9f378, `swc1` at 0xda9f69c.
  3 such `swc1` accesses store 4 bytes to [0x1010] +0x9604, including `swc1` at 0xda9ef7c, `swc1` at 0xda9f37c, `swc1` at 0xda9f6a0.
  3 such `swc1` accesses store 4 bytes to [0x1010] +0x9600, including `swc1` at 0xda9ef84, `swc1` at 0xda9f344, `swc1` at 0xda9f688.
  3 such `swc1` accesses store 4 bytes to [0x1010] +0x95fc, including `swc1` at 0xda9ef88, `swc1` at 0xda9f380, `swc1` at 0xda9f6a4.
  3 such `swc1` accesses store 4 bytes to [0x1010] +0x95f8, including `swc1` at 0xda9ef90, `swc1` at 0xda9f384, `swc1` at 0xda9f6a8.
  3 such `swc1` accesses store 4 bytes to [0x1010] +0x95f4, including `swc1` at 0xda9ef94, `swc1` at 0xda9f348, `swc1` at 0xda9f68c.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x9610, including `sw` at 0xda9ef9c, `sw` at 0xda9f360.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x960c, including `sw` at 0xda9efa4, `sw` at 0xda9f38c.
  2 such `lwc1` accesses load 4 bytes from [0x1010] +0x95e4, including `lwc1` at 0xda9efc4, `lwc1` at 0xda9f3c8.
  20 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xda9efc8, `swc1` at 0xda9efd0, `swc1` at 0xda9efd8.
  2 such `lwc1` accesses load 4 bytes from [0x1010] +0x95e8, including `lwc1` at 0xda9efcc, `lwc1` at 0xda9f3d0.
  2 such `lwc1` accesses load 4 bytes from [0x1010] +0x95ec, including `lwc1` at 0xda9efd4, `lwc1` at 0xda9f3d8.
  2 such `lwc1` accesses load 4 bytes from [0x1010] +0x95f0, including `lwc1` at 0xda9efdc, `lwc1` at 0xda9f3e0.
  2 such `lwc1` accesses load 4 bytes from [0x1010] +0x95f4, including `lwc1` at 0xda9efe4, `lwc1` at 0xda9f3e8.
  2 such `lwc1` accesses load 4 bytes from [0x1010] +0x95f8, including `lwc1` at 0xda9efec, `lwc1` at 0xda9f3f0.
  2 such `lwc1` accesses load 4 bytes from [0x1010] +0x95fc, including `lwc1` at 0xda9eff4, `lwc1` at 0xda9f3f8.
  2 such `lwc1` accesses load 4 bytes from [0x1010] +0x9600, including `lwc1` at 0xda9effc, `lwc1` at 0xda9f400.
  2 such `lwc1` accesses load 4 bytes from [0x1010] +0x9604, including `lwc1` at 0xda9f008, `lwc1` at 0xda9f408.
  2 such `lwc1` accesses load 4 bytes from [0x1010] +0x9608, including `lwc1` at 0xda9f010, `lwc1` at 0xda9f414.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x9620, including `sw` at 0xda9f04c, `sw` at 0xda9f43c.
  2 such `sw` accesses store 4 bytes to [0x1010] +0x961c, including `sw` at 0xda9f058, `sw` at 0xda9f448.
  The `lw` at 0xda9f130 loads 4 bytes from [0x1010] +0x9614.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x7a90, including `lw` at 0xda9f164, `lw` at 0xda9f538.
  The `sw` at 0xda9f178 stores 4 bytes to [0x1010] +0x95dc.
  The `sw` at 0xda9f180 stores 4 bytes to [0x1010] +0x95d8.
  The `sw` at 0xda9f188 stores 4 bytes to [0x1010] +0x95d4.
  The `sw` at 0xda9f19c stores 4 bytes to [0x1010] +0x95d0.
  The `sw` at 0xda9f230 stores 4 bytes to [0x1010] +0x9628.
  The `sw` at 0xda9f240 stores 4 bytes to [0x1010] +0x95c0.
  The `sw` at 0xda9f248 stores 4 bytes to [0x1010] +0x95c4.
  The `sw` at 0xda9f250 stores 4 bytes to [0x1010] +0x95c8.
  The `lw` at 0xda9f484 loads 4 bytes from [0x1010] +0x4b4.
  The `lw` at 0xda9f4c8 loads 4 bytes from [0x1010] +0x16650.
  The `lw` at 0xda9f4d0 loads 4 bytes from [0x1010] +0x16654.
  The `lw` at 0xda9f54c loads 4 bytes from [0x1010] +0x168d4.
  The `sw` at 0xda9f554 stores 4 bytes to [0x1010] +0x168d4.
  The `lbu` at 0xda9f564 loads 1 byte from [0x1010] +0xc91.
  The `lw` at 0xda9f574 loads 4 bytes from [0x1010] +0x700.
  The `sw` at 0xda9f644 stores 4 bytes to [0x1010] +0x7b1c.
  The `sw` at 0xda9f64c stores 4 bytes to [0x1010] +0x7b54.
  The `sw` at 0xda9f654 stores 4 bytes to [0x1010] +0x7b58.
  The `sw` at 0xda9f65c stores 4 bytes to [0x1010] +0x7b5c.
  2 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x32, including `lhu` at 0xda9f6b8, `lhu` at 0xda9f758.
  The `lw` at 0xda9f7ec loads 4 bytes from [0x1010] +0x10.
  The `jalr` at 0xda9e2e0 calls memset with a0=sp-656, a1=0x0, a2=0x20, a3=a3 at entry (arg3).
  The `jalr` at 0xda9e2f8 calls memset with a0=sp-624, a1=0x0, a2=0x14, a3=?.
  The `jalr` at 0xda9e318 calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9e338 calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9e35c calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9e380 calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xda9e3e4 calls __glOdysseyImageCalcXferWriteParams [0xdaa1710] with a0=[a1+8], a1=[a1+12], a2=[a0+48], a3=sp-624.
  The `jalr` at 0xda9e430 calls __glSpecElementsPerGroup [0xdaf13d0] with a0=[a1+8], a1=[a1+12], a2=?, a3=?.
  The `jalr` at 0xda9e440 calls __glSpecBytesPerElement [0xdaf15a0] with a0=[a1+12], a1=?, a2=?, a3=?.
  The `jalr` at 0xda9e4b4 calls ceilf with a0=?, a1=?, a2=[a1+16], a3=?.
  The `bgezall` at 0xda9e69c calls (unnamed) [0xdaa2ab0] with a0=[a0+40], a1=[a0+44], a2=?, a3=one of 0x0, 0x1, a4=sp-672, a5=sp-668.
  The `jalr` at 0xda9e788 calls __glOdysseyOpenPMObjWriteReference [0xdaaab50] with a0=[0x1010], a1=[a0+12], a2=[a0+16], a3=sp-664.
  The `bgezall` at 0xda9e9b0 calls (unnamed) [0xdaa3150] with a0=?, a1=?, a2=?, a3=?, a4=0x1.
  The `bgezall` at 0xda9ebf0 calls __glOdysseyImageCalcPixelModeFields [0xdaa2fe0] with a0=[0x1010]+38332, a1=a0 at entry (arg0), a2=?, a3=0x13c00, a4=0x10046, a5=0xfa, a6=0x10443, a7=[[0x1010]+38364].
  The `jalr` at 0xda9edb8 calls __glOdysseyValidateHardware [0xda57700] with a0=[0x1010], a1=?, a2=?, a3=?, a5=[[0x1010]+92368].
  The `bgezall` at 0xda9f054 calls (unnamed) [0xda9d980] with a0=?, a1=?, a2=sp-496, a3=0xa, a4=0x14400.
  The `jalr` at 0xda9f110 calls __glOdysseyClosePMObjWriteReference [0xdaaadc0] with a0=[0x1010], a1=[a0+12], a2=[a0+16], a3=?.
  The `bgezall` at 0xda9f444 calls (unnamed) [0xda9d980] with a0=?, a1=?, a2=sp-656, a3=?, a7=[0x1010]+65536; fp f12=[[0x1010]+38376], f13=[[0x1010]+38372].
  The `bgezall` at 0xda9f584 calls __glOdysseyImageCalcOdyEyeSpaceRasterPosZ [0xdaa5ab0] with a0=?, a1=[[0x1010]+31552], a2=[[0x1010]+31556], a3=?, a5=[[0x1010]+3217]:1.
  The `bgezall` at 0xda9f5ac calls (unnamed) [0xdaa3df0] with a0=?, a1=[0x1010]+31516, a2=[0x1010]+31572, a3=[0x1010]+31576, a4=[0x1010]+31580, a5=[0x1010]+31612.
  The `jalr` at 0xda9f6e4 calls __glOdysseyAssignToPMObj [0xdaaa370] with a0=[0x1010], a1=[a0+12], a2=[a0+16], a3=?, a5=((([a0+50]:2 << 0x10) | one of 0x0, 0x2) | 0x9), a6=0x0, a7=sp-656.
  The `jalr` at 0xda9f6fc calls __glSetError [0xdb11f10] with a0=0x505, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9f78c calls __glOdysseyAssignToPMObj [0xdaaa370] with a0=[0x1010], a1=[a0+12], a2=[a0+16], a3=?, a5=(((([a0+50]:2 << 0x10) | one of 0x0, 0x8) | one of 0x0, 0x2) | 0x1), a6=0x0, a7=sp-656.
  The `jalr` at 0xda9f7a0 calls __glSetError [0xdb11f10] with a0=0x505, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9f800 calls (unknown callee) with a0=[0x1010], a1=0xdbd30e8, a2=?, a3=?.
  The `jalr` at 0xda9f80c calls __glSetError [0xdb11f10] with a0=0x505, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9f85c calls __glSetError [0xdb11f10] with a0=0x501, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9f8c0 calls __glSetError [0xdb11f10] with a0=0x505, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9f960 calls __glOdysseyIoctl [0xdabc870] with a0=[0x1010], a1=0x6f64000d, a2=sp-520, a3=?, a5=0x100000, a6=[[0x1010]+31556].
  The `beq` branch at 0xda9e294 targets 0xda9e2a8, is taken when at(=[[0x1010]+138708]) == 0, and falls through when at(=[[0x1010]+138708]) != 0.
  The `bne` branch at 0xda9e2a4 targets 0xda9e2c8, is taken when (v1(=[[0x1010]+1816]) & 0x2) != 0, and falls through when (v1(=[[0x1010]+1816]) & 0x2) == 0.
  The `beq` branch at 0xda9e2b0 targets 0xda9e2d4, is taken when a5(=[[0x1010]+138704]) == 0, and falls through when a5(=[[0x1010]+138704]) != 0.
  The `beq` branch at 0xda9e2c0 targets 0xda9e2d4, is taken when (a6(=[[0x1010]+1816]) & 0x1) == 0, and falls through when (a6(=[[0x1010]+1816]) & 0x1) != 0.
  The `beq` branch at 0xda9e3f0 targets 0xda9f854, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xda9e3fc targets 0xda9e424, is taken when v1(=[a0+48]) != a5(?), and falls through when v1(=[a0+48]) == a5(?).
  The `beq` branch at 0xda9e408 targets 0xda9e428, is taken when a6(=[a0+10]:1) == 0, and falls through when a6(=[a0+10]:1) != 0.
  The `beq` branch at 0xda9e41c targets 0xda9e42c, is taken when at(=[[0x1010]+72640]) == v1(=[[0x1010]+72852]), and falls through when at(=[[0x1010]+72640]) != v1(=[[0x1010]+72852]).
  The `beq` branch at 0xda9e470 targets 0xda9e480, is taken when a0(=[a1+24]) >= s3(?) (unsigned), and falls through when a0(=[a1+24]) < s3(?) (unsigned).
  The `beq` branch at 0xda9e4d4 targets 0xda9f484, is taken when a5(=[a1]:1) == 0, and falls through when a5(=[a1]:1) != 0.
  The `beq` branch at 0xda9e540 targets 0xda9e57c, is taken when at(=0x9000) >= v1(?) (unsigned), and falls through when at(=0x9000) < v1(?) (unsigned).
  The `bne` branch at 0xda9e570 targets 0xda9e57c, is taken when s7(?) < a6(?) (unsigned), and falls through when s7(?) >= a6(?) (unsigned).
  The `bne` branch at 0xda9e578 targets 0xda9f4b4, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0xda9e584 targets 0xda9e5cc, is taken when a2(=one of 0x0, 0x1) == 0, and falls through when a2(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xda9e58c targets 0xda9e654, is taken when a1(=[a0+8]:1) == 0, and falls through when a1(=[a0+8]:1) != 0.
  The `beq` branch at 0xda9e5a4 targets 0xda9e5cc, is taken when (a2(=[[0x1010]+42488]) & 0x1000) == 0, and falls through when (a2(=[[0x1010]+42488]) & 0x1000) != 0.
  The `beq` branch at 0xda9e5cc targets 0xda9e654, is taken when a1(=[a0+8]:1) == 0, and falls through when a1(=[a0+8]:1) != 0.
  The `beq` branch at 0xda9e5e0 targets 0xda9e650, is taken when (a2(=[[0x1010]+42488]) & 0x1000) == 0, and falls through when (a2(=[[0x1010]+42488]) & 0x1000) != 0.
  The `beq` branch at 0xda9e5f8 targets 0xda9e654, is taken when a1(=[a0+8]:1) == 0, and falls through when a1(=[a0+8]:1) != 0.
  The `beq` branch at 0xda9e60c targets 0xda9e628, is taken when a1(=[[0x1010]+1888]) == t0(=0x405), and falls through when a1(=[[0x1010]+1888]) != t0(=0x405).
  The `beq` branch at 0xda9e618 targets 0xda9e628, is taken when a1(=[[0x1010]+1888]) == at(=0x402), and falls through when a1(=[[0x1010]+1888]) != at(=0x402).
  The `bne` branch at 0xda9e620 targets 0xda9e630, is taken when a1(=[[0x1010]+1888]) != v1(=0x403), and falls through when a1(=[[0x1010]+1888]) == v1(=0x403).
  The `beq` branch at 0xda9e630 targets 0xda9e648, is taken when a1(=[[0x1010]+1888]) == a5(=0x407), and falls through when a1(=[[0x1010]+1888]) != a5(=0x407).
  The `beq` branch at 0xda9e638 targets 0xda9e648, is taken when a1(=[[0x1010]+1888]) == a6(=0x401), and falls through when a1(=[[0x1010]+1888]) != a6(=0x401).
  The `bne` branch at 0xda9e640 targets 0xda9e65c, is taken when a1(=[[0x1010]+1888]) != at(=0x403), and falls through when a1(=[[0x1010]+1888]) == at(=0x403).
  The `beq` branch at 0xda9e648 targets 0xda9e65c and is always taken.
  The `bne` branch at 0xda9e650 targets 0xda9e600, is taken when a1(=[a0+8]:1) != 0, and falls through when a1(=[a0+8]:1) == 0.
  The `beq` branch at 0xda9e664 targets 0xda9f2f0, is taken when a1(=[a1+8]) == v1(=0x1902), and falls through when a1(=[a1+8]) != v1(=0x1902).
  The `beq` branch at 0xda9e66c targets 0xda9f2f0, is taken when a1(=[a1+8]) == a5(=0x1901), and falls through when a1(=[a1+8]) != a5(=0x1901).
  The `beq` branch at 0xda9e6a4 targets 0xda9f5fc, is taken when v0(=ret(0xdaa2ab0)) == 0, and falls through when v0(=ret(0xdaa2ab0)) != 0.
  The `beq` branch at 0xda9e6b4 targets 0xda9e6c8, is taken when at(=[a0+4]) == v1(=[a1+4]), and falls through when at(=[a0+4]) != v1(=[a1+4]).
  The `bne` branch at 0xda9e6bc targets 0xda9e6d4, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0xda9e6c8 targets 0xda9e6dc, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xda9e798 targets 0xda9f7e8, is taken when (v0(=ret(__glOdysseyOpenPMObjWriteReference)) & 0xff) == 0, and falls through when (v0(=ret(__glOdysseyOpenPMObjWriteReference)) & 0xff) != 0.
  The `beq` branch at 0xda9e9f4 targets 0xda9ea04, is taken when at(=[[0x1010]+1188]:1) == 0, and falls through when at(=[[0x1010]+1188]:1) != 0.
  The `beq` branch at 0xda9ea00 targets 0xda9f4bc, is taken when a5(=[a1]:1) == 0, and falls through when a5(=[a1]:1) != 0.
  The `beq` branch at 0xda9ea70 targets 0xda9edec, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xda9eb38 targets 0xda9eb54, is taken when a2(=[[0x1010]+38736]) == 0, and falls through when a2(=[[0x1010]+38736]) != 0.
  The `beq` branch at 0xda9ec94 targets 0xda9eca8, is taken when at(=[a0+8]:1) == 0, and falls through when at(=[a0+8]:1) != 0.
  The `beq` branch at 0xda9eca4 targets 0xda9f4c4, is taken when a6(=a4) == at(=0x1), and falls through when a6(=a4) != at(=0x1).
  The `beq` branch at 0xda9ed08 targets 0xda9ed28, is taken when v1(=[a0+10]:1) == 0, and falls through when v1(=[a0+10]:1) != 0.
  The `beq` branch at 0xda9ed2c targets 0xda9eda4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xda9eda8 targets 0xda9edc0, is taken when a5(=[[0x1010]+92368]) == 0, and falls through when a5(=[[0x1010]+92368]) != 0.
  The `beq` branch at 0xda9edc0 targets 0xda9edec, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xda9edf0 targets 0xda9ee4c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xda9ee04 targets 0xda9ee30, is taken when a6(=[[0x1010]+38736]) == 0, and falls through when a6(=[[0x1010]+38736]) != 0.
  The `beq` branch at 0xda9ee60 targets 0xda9f304, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xda9eeac targets 0xda9f67c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `blez` branch at 0xda9eef4 targets 0xda9f07c, is taken when s4(?) <= 0 (signed), and falls through when s4(?) > 0 (signed).
  The `bgtz` branch at 0xda9f074 targets 0xda9ef10, is taken when s4(?) > 0 (signed), and falls through when s4(?) <= 0 (signed).
  The `beq` branch at 0xda9f088 targets 0xda9f100, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xda9f0a4 targets 0xda9f0c0, is taken when a5(=[[0x1010]+38736]) == 0, and falls through when a5(=[[0x1010]+38736]) != 0.
  The `beq` branch at 0xda9f11c targets 0xda9f8bc, is taken when (v0(=ret(__glOdysseyClosePMObjWriteReference)) & 0xff) == 0, and falls through when (v0(=ret(__glOdysseyClosePMObjWriteReference)) & 0xff) != 0.
  The `beq` branch at 0xda9f124 targets 0xda9f2b4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xda9f15c targets 0xda9f170, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xda9f16c targets 0xda9f5e4, is taken when (at(=[[0x1010]+31376]) & 0x400) == 0, and falls through when (at(=[[0x1010]+31376]) & 0x400) != 0.
  The `beq` branch at 0xda9f1b0 targets 0xda9f1cc, is taken when a5(=[[0x1010]+38736]) == 0, and falls through when a5(=[[0x1010]+38736]) != 0.
  The `beq` branch at 0xda9f280 targets 0xda9f294, is taken when at(=[a0+8]:1) == 0, and falls through when at(=[a0+8]:1) != 0.
  The `beq` branch at 0xda9f28c targets 0xda9f644, is taken when a5(=a4) == a6(=0x1), and falls through when a5(=a4) != a6(=0x1).
  The `beq` branch at 0xda9f298 targets 0xda9f2b4, is taken when at(=[a0+10]:1) == 0, and falls through when at(=[a0+10]:1) != 0.
  The `beq` branch at 0xda9f2fc targets 0xda9e684 and is always taken.
  The `beq` branch at 0xda9f308 targets 0xda9f394, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xda9f338 targets 0xda9f8a4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xda9f398 targets 0xda9f744, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xda9f44c targets 0xda9f100, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xda9f458 targets 0xda9f100, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xda9f47c targets 0xda9f100 and is always taken.
  The `beq` branch at 0xda9f4ac targets 0xda9e4dc and is always taken.
  The `beq` branch at 0xda9f4b4 targets 0xda9e580 and is always taken.
  The `beq` branch at 0xda9f4bc targets 0xda9ea08 and is always taken.
  The `bne` branch at 0xda9f4cc targets 0xda9f4e0, is taken when a1(=[[0x1010]+31552]) != a4(=[[0x1010]+91728]), and falls through when a1(=[[0x1010]+31552]) == a4(=[[0x1010]+91728]).
  The `beq` branch at 0xda9f4d8 targets 0xda9f564, is taken when a2(=[[0x1010]+31556]) == a3(=[[0x1010]+91732]), and falls through when a2(=[[0x1010]+31556]) != a3(=[[0x1010]+91732]).
  The `beq` branch at 0xda9f4ec targets 0xda9f520, is taken when v1(=[[0x1010]+38736]) == 0, and falls through when v1(=[[0x1010]+38736]) != 0.
  The `beq` branch at 0xda9f544 targets 0xda9f908, is taken when (v1(=[[0x1010]+31376]) & a5(=0x100000)) == 0, and falls through when (v1(=[[0x1010]+31376]) & a5(=0x100000)) != 0.
  The `beq` branch at 0xda9f56c targets 0xda9f590, is taken when a5(=[[0x1010]+3217]:1) == 0, and falls through when a5(=[[0x1010]+3217]:1) != 0.
  The `beq` branch at 0xda9f57c targets 0xda9f590, is taken when (a6(=[[0x1010]+1792]) & 0x10) == 0, and falls through when (a6(=[[0x1010]+1792]) & 0x10) != 0.
  The `beq` branch at 0xda9f5d4 targets 0xda9eda4, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xda9f5dc targets 0xda9ed38 and is always taken.
  The `beq` branch at 0xda9f5f4 targets 0xda9f170 and is always taken.
  The `beq` branch at 0xda9f674 targets 0xda9f2b4 and is always taken.
  The `bne` branch at 0xda9f6f0 targets 0xda9f080, is taken when (v0(=ret(__glOdysseyAssignToPMObj)) & 0xff) != 0, and falls through when (v0(=ret(__glOdysseyAssignToPMObj)) & 0xff) == 0.
  The `bne` branch at 0xda9f798 targets 0xda9f44c, is taken when (v0(=ret(__glOdysseyAssignToPMObj)) & 0xff) != 0, and falls through when (v0(=ret(__glOdysseyAssignToPMObj)) & 0xff) == 0.
  The `beq` branch at 0xda9f8b4 targets 0xda9f340 and is always taken.
  The `beq` branch at 0xda9f968 targets 0xda9f54c and is always taken.
  The return at 0xda9f2e8 has v0 = one of ret(__glOdysseyClosePMObjWriteReference), 0x10046.
  The return at 0xda9f63c has v0 = ret(0xdaa2ab0).
  The return at 0xda9f73c has v0 = ret(__glSetError).
  The return at 0xda9f7e0 has v0 = ret(__glSetError).
  The return at 0xda9f84c has v0 = ret(__glSetError).
  The return at 0xda9f89c has v0 = ret(__glSetError).
  The return at 0xda9f900 has v0 = ret(__glSetError).

- `__glOdysseyImageMovePixelsDMAtoHost` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xda9f970 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xda9f970-0xdaa0180 (2064 bytes).
  It occupies 2064 bytes.
  The `lw` at 0xda9f9c0 loads 4 bytes from abs 0x1010.
  The `lwc1` at 0xda9f9d8 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0xda9f9e8 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0xda9f9f0 loads 4 bytes from a2 (arg2 at entry) +0x4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x24, including `lw` at 0xda9f9f8, `lw` at 0xda9fb60.
  The `lwc1` at 0xda9f9fc loads 4 bytes from a2 (arg2 at entry) +0x14.
  The `lwc1` at 0xda9fa10 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xda9fa20 loads 4 bytes from a2 (arg2 at entry) +0x18.
  The `lwc1` at 0xda9fa30 loads 4 bytes from a2 (arg2 at entry) +0x1c.
  The `lwc1` at 0xda9fa48 loads 4 bytes from a2 (arg2 at entry) +0x0.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x0, including `lbu` at 0xda9fa68, `lbu` at 0xda9fc20.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0xda9fa7c, `lw` at 0xda9fb2c, `lw` at 0xda9fb54.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0xda9fa88, `lw` at 0xda9fae8, `lw` at 0xda9fb34.
  2 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x9, including `lbu` at 0xda9fa98, `lbu` at 0xda9fd0c.
  The `lw` at 0xda9faa8 loads 4 bytes from [0x1010] +0x4d4.
  The `lw` at 0xda9fb0c loads 4 bytes from a1 (arg1 at entry) +0x2c.
  The `lw` at 0xda9fb18 loads 4 bytes from a1 (arg1 at entry) +0x28.
  The `lw` at 0xda9fb24 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xda9fb28 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xda9fb6c loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `sw` at 0xda9fb8c stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `lw` at 0xda9fb90 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xda9fc88 loads 4 bytes from a0 (arg0 at entry) +0x28.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x10, including `lw` at 0xda9fc94, `lw` at 0xda9fcd4, `lw` at 0xda9fff8.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lw` at 0xda9fcb0, `lw` at 0xdaa0004, `lw` at 0xdaa0028.
  The `lw` at 0xda9fcf8 loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `lw` at 0xda9fd04 loads 4 bytes from (([a1+16] << 0x2) + sp-288) +0x0.
  The `lw` at 0xda9fdd0 loads 4 bytes from a1 (arg1 at entry) +0x18.
  The `lw` at 0xda9feb0 loads 4 bytes from a1 (arg1 at entry) +0x24.
  The `lw` at 0xda9ff94 loads 4 bytes from [0x1010] +0x7a90.
  The `lw` at 0xda9ffb8 loads 4 bytes from [0x1010] +0x21dd8.
  The `lw` at 0xda9ffc4 loads 4 bytes from [0x1010] +0x718.
  The `lw` at 0xdaa007c loads 4 bytes from [0x1010] +0x488.
  The `jalr` at 0xda9f9bc calls memset with a0=sp-344, a1=0x0, a2=0x20, a3=a3 at entry (arg3).
  The `jalr` at 0xda9f9d0 calls memset with a0=sp-312, a1=0x0, a2=0x14, a3=?.
  The `bgezall` at 0xda9fa84 calls __glOdysseyImageCalcXferReadParams [0xdaa3170] with a0=[a0+8], a1=[a0+12], a2=a1 at entry (arg1), a3=sp-312.
  The `bgezall` at 0xda9fb14 calls (unnamed) [0xdaa2ab0] with a0=[a1+40], a1=[a1+44], a2=one of 0x0, 0x1, a3=one of 0x0, 0x1, a4=sp-352, a5=sp-348, a6=0x1902.
  The `jalr` at 0xda9fb3c calls __glSpecElementsPerGroup [0xdaf13d0] with a0=[a0+8], a1=[a0+12], a2=?, a3=?.
  The `jalr` at 0xda9fb50 calls __glSpecBytesPerElement [0xdaf15a0] with a0=[a0+12], a1=?, a2=?, a3=?.
  The `jalr` at 0xda9fbd0 calls ceilf with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xda9fcc0 calls __glOdysseyOpenPMObjReference [0xdaaa8c0] with a0=[0x1010], a1=[a1+12], a2=[a1+16], a3=[a1+16], a4=sp-288, a5=0x0.
  The `bgezall` at 0xda9ff28 calls (unnamed) [0xdaa3150] with a0=?, a1=?, a2=?, a3=?, a4=[a1+9]:1, a5=0xfffffffff0ffffff.
  The `jalr` at 0xdaa0008 calls __glOdysseyReadFromPMObj [0xdaaa4f0] with a0=[0x1010], a1=[a1+12], a2=[a1+16], a3=?, a5=one of 0x0, 0x2, a6=0x0, a7=sp-344.
  The `jalr` at 0xdaa002c calls __glOdysseyClosePMObjReference [0xdaaaf20] with a0=[0x1010], a1=[a1+12], a2=[a1+16], a3=[a1+16].
  The `jalr` at 0xdaa00c8 calls __glSetError [0xdb11f10] with a0=0x505, a1=?, a2=?, a3=?.
  The `jalr` at 0xdaa00f0 calls __glSetError [0xdb11f10] with a0=0x505, a1=?, a2=?, a3=?.
  The `jalr` at 0xdaa011c calls __glSetError [0xdb11f10] with a0=0x501, a1=?, a2=0x405, a3=?.
  The `jalr` at 0xdaa0158 calls __glSetError [0xdb11f10] with a0=0x505, a1=?, a2=?, a3=?.
  The `beq` branch at 0xda9fa90 targets 0xdaa0118, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xda9faa0 targets 0xdaa0070, is taken when v1(=[a1+9]:1) == 0, and falls through when v1(=[a1+9]:1) != 0.
  The `beq` branch at 0xda9fab0 targets 0xda9facc, is taken when v0(=[[0x1010]+1236]) == a2(=0x405), and falls through when v0(=[[0x1010]+1236]) != a2(=0x405).
  The `beq` branch at 0xda9fabc targets 0xda9facc, is taken when v0(=[[0x1010]+1236]) == a4(=0x402), and falls through when v0(=[[0x1010]+1236]) != a4(=0x402).
  The `bne` branch at 0xda9fac4 targets 0xda9fad0, is taken when v0(=[[0x1010]+1236]) != a6(=0x403), and falls through when v0(=[[0x1010]+1236]) == a6(=0x403).
  The `beq` branch at 0xda9fad0 targets 0xdaa0060, is taken when v0(=[[0x1010]+1236]) == at(=0x407), and falls through when v0(=[[0x1010]+1236]) != at(=0x407).
  The `beq` branch at 0xda9fad8 targets 0xdaa0060, is taken when v0(=[[0x1010]+1236]) == v1(=0x401), and falls through when v0(=[[0x1010]+1236]) != v1(=0x401).
  The `beq` branch at 0xda9fae0 targets 0xdaa0060, is taken when v0(=[[0x1010]+1236]) == a4(=0x403), and falls through when v0(=[[0x1010]+1236]) != a4(=0x403).
  The `beq` branch at 0xda9faf0 targets 0xdaa0068, is taken when v0(=[a0+8]) == a6(=0x1902), and falls through when v0(=[a0+8]) != a6(=0x1902).
  The `beq` branch at 0xda9faf8 targets 0xdaa0068, is taken when v0(=[a0+8]) == at(=0x1901), and falls through when v0(=[a0+8]) != at(=0x1901).
  The `beq` branch at 0xda9fb1c targets 0xdaa00a0, is taken when v0(=ret(0xdaa2ab0)) == 0, and falls through when v0(=ret(0xdaa2ab0)) != 0.
  The `beq` branch at 0xda9fb80 targets 0xda9fb90, is taken when a0(=[a0+24]) >= s4(?) (unsigned), and falls through when a0(=[a0+24]) < s4(?) (unsigned).
  The `beq` branch at 0xda9fc38 targets 0xdaa007c, is taken when at(=[a0]:1) == 0, and falls through when at(=[a0]:1) != 0.
  The `beq` branch at 0xda9fccc targets 0xdaa0144, is taken when (v0(=ret(__glOdysseyOpenPMObjReference)) & 0xff) == 0, and falls through when (v0(=ret(__glOdysseyOpenPMObjReference)) & 0xff) != 0.
  The `beq` branch at 0xda9ffa4 targets 0xda9ffdc, is taken when (a4(=[[0x1010]+31376]) & 0x400) == 0, and falls through when (a4(=[[0x1010]+31376]) & 0x400) != 0.
  The `beq` branch at 0xda9ffbc targets 0xda9ffe0, is taken when a4(=[[0x1010]+138712]) == 0, and falls through when a4(=[[0x1010]+138712]) != 0.
  The `beq` branch at 0xda9ffcc targets 0xda9ffe0, is taken when (a6(=[[0x1010]+1816]) & 0x4) == 0, and falls through when (a6(=[[0x1010]+1816]) & 0x4) != 0.
  The `beq` branch at 0xda9ffd4 targets 0xda9ffe0 and is always taken.
  The `beq` branch at 0xdaa0014 targets 0xdaa00c4, is taken when (v0(=ret(__glOdysseyReadFromPMObj)) & 0xff) == 0, and falls through when (v0(=ret(__glOdysseyReadFromPMObj)) & 0xff) != 0.
  The `beq` branch at 0xdaa0038 targets 0xdaa00f0, is taken when (v0(=ret(__glOdysseyClosePMObjReference)) & 0xff) == 0, and falls through when (v0(=ret(__glOdysseyClosePMObjReference)) & 0xff) != 0.
  The `beq` branch at 0xdaa0060 targets 0xda9fae8 and is always taken.
  The `beq` branch at 0xdaa0068 targets 0xda9fb00 and is always taken.
  The `beq` branch at 0xdaa0074 targets 0xda9fae8 and is always taken.
  The `beq` branch at 0xdaa0098 targets 0xda9fc40 and is always taken.
  The return at 0xdaa0058 has v0 = ?.
  The return at 0xdaa00bc has v0 = ret(0xdaa2ab0).
  The return at 0xdaa00e8 has v0 = ret(__glSetError).
  The return at 0xdaa0110 has v0 = ret(__glSetError).
  The return at 0xdaa013c has v0 = ret(__glSetError).
  The return at 0xdaa0178 has v0 = ret(__glSetError).

- `__glOdysseyInitLighting` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaa5b30 (n32).
  Fills a block of fields in the context at a0 with fixed starting values and, in the same pass, writes a long
  fixed run of words and single floats to the one absolute address 0x4000 (base register zero): 22 word stores and 51
  `swc1` stores, each to the same address, so the order of the writes is what carries the data.
  Context fields: the `sw` at 0xdaa5b54 and 0xdaa5b58 store 0xff to +0x168dc and +0x168d8; the `sw` at 0xdaa5c7c and
  0xdaa5cac store 0xf0 then 0xf4 to +0xa138; 0x18 goes to +0xa13c at 0xdaa5cd0; the word at +0xa118 is loaded at
  0xdaa5cd4, replaced by 0x19a at 0xdaa5cdc and stored back as loaded at 0xdaa5d90; later 0x10 goes to +0xa0f8,
  zero to +0xa138, 3 to +0xa0f4 and zero to +0xa13c (0xdaa5d7c to 0xdaa5d8c).
  Float fields +0xa0d4, +0xa0d8, +0xa0dc and +0xa0e0 depend on the byte at +0xc8c (the `lbu` at 0xdaa5ce0). When it is
  zero the `beq` at 0xdaa5cec jumps to 0xdaa5e28, which stores 0x3f800000 to +0xa0e0, zero to +0xa0dc and +0xa0d8,
  and, in the delay slot of the jump back at 0xdaa5e34, 0x3f800000 to +0xa0d4. When it is nonzero the fall-through
  stores 0x3f800000 to +0xa0e0 and 0x3e4ccccd to +0xa0dc, +0xa0d8 and +0xa0d4. Both paths join at 0xdaa5d04, and
  the four floats are later reloaded in the order +0xa0d4, +0xa0d8, +0xa0dc, +0xa0e0 and each written to 0x4000
  (0xdaa5d4c to 0xdaa5d70).
  The stream to 0x4000 is a repeating pattern: a constant word (the first, at 0xdaa5b68, is the sign-extended
  0xffffffffc18093ff; the next is 0xffffffffc180cc19; others are loaded the same way) followed by three or four floats drawn from zero,
  0x3f800000, 0x3e4ccccd and 0x3f4ccccd. Later words are built from context fields: the field's low 10 bits
  ORed with the field shifted right 10 and left 23, ORed with a constant (0x29008000 for the +0xa118 word that
  was loaded at 0xdaa5cd4, 0x32008000 for the two +0xa13c words, 0x20008000 for +0xa0f4, 0x31008000 for +0xa138,
  0x21008000 for +0xa0f8). The first such store, at 0xdaa5d14, writes 0x2900819a, which is the constant 0x19a
  merged the same way.
  The routine makes no calls. It returns at 0xdaa5e20 with the final 0x4000 store in the delay slot at 0xdaa5e24,
  so v0 at return holds that last word.
  Unknown: which device or board window address 0x4000 reaches in the process; the linked mmio rows list windows at
  0x110000 and 0x120000 only, and the mapping of this address needs the caller or the loader's mapping setup.
  Evidence grade: established.

- `__glOdysseyInitLighting` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaa5b30 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdaa5b30-0xdaa5e3c (780 bytes).
  It occupies 780 bytes.
  The `lwc1` at 0xdaa5b3c loads 4 bytes from abs 0xdbde4b0.
  The `lwc1` at 0xdaa5b40 loads 4 bytes from abs 0xdbde55c.
  The `lwc1` at 0xdaa5b48 loads 4 bytes from abs 0xdbde444.
  The `sw` at 0xdaa5b54 stores 4 bytes to a0 (arg0 at entry) +0x168dc.
  The `sw` at 0xdaa5b58 stores 4 bytes to a0 (arg0 at entry) +0x168d8.
  The `lwc1` at 0xdaa5b60 loads 4 bytes from abs 0xdbde448.
  22 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdaa5b68, `sw` at 0xdaa5b84, `sw` at 0xdaa5b9c.
  51 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdaa5b6c, `swc1` at 0xdaa5b70, `swc1` at 0xdaa5b74.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xa138, including `sw` at 0xdaa5c7c, `sw` at 0xdaa5cac, `sw` at 0xdaa5d80.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xa13c, including `sw` at 0xdaa5cd0, `sw` at 0xdaa5d8c.
  The `lw` at 0xdaa5cd4 loads 4 bytes from a0 (arg0 at entry) +0xa118.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xa118, including `sw` at 0xdaa5cdc, `sw` at 0xdaa5d90.
  The `lbu` at 0xdaa5ce0 loads 1 byte from a0 (arg0 at entry) +0xc8c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0xa0e0, including `swc1` at 0xdaa5cf4, `swc1` at 0xdaa5e28.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0xa0dc, including `swc1` at 0xdaa5cf8, `swc1` at 0xdaa5e2c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0xa0d8, including `swc1` at 0xdaa5cfc, `swc1` at 0xdaa5e30.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0xa0d4, including `swc1` at 0xdaa5d00, `swc1` at 0xdaa5e38.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xa13c, including `lw` at 0xdaa5d18, `lw` at 0xdaa5d9c.
  The `lwc1` at 0xdaa5d48 loads 4 bytes from a0 (arg0 at entry) +0xa0d4.
  The `lwc1` at 0xdaa5d50 loads 4 bytes from a0 (arg0 at entry) +0xa0d8.
  The `lwc1` at 0xdaa5d58 loads 4 bytes from a0 (arg0 at entry) +0xa0dc.
  The `lwc1` at 0xdaa5d60 loads 4 bytes from a0 (arg0 at entry) +0xa0e0.
  The `sw` at 0xdaa5d7c stores 4 bytes to a0 (arg0 at entry) +0xa0f8.
  The `sw` at 0xdaa5d88 stores 4 bytes to a0 (arg0 at entry) +0xa0f4.
  The `lw` at 0xdaa5db8 loads 4 bytes from a0 (arg0 at entry) +0xa0f4.
  The `lw` at 0xdaa5ddc loads 4 bytes from a0 (arg0 at entry) +0xa138.
  The `lw` at 0xdaa5e00 loads 4 bytes from a0 (arg0 at entry) +0xa0f8.
  The `beq` branch at 0xdaa5cec targets 0xdaa5e28, is taken when v0(=[a0+3212]:1) == 0, and falls through when v0(=[a0+3212]:1) != 0.
  The `beq` branch at 0xdaa5e34 targets 0xdaa5d04 and is always taken.
  The return at 0xdaa5e20 has v0 = ?.

- `__glOdylc_Normal3b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaa87a0 (n32).
  Queues one four-word record (a constant header plus a0, a1 and a2) at the pointer held in the word
  at absolute 0x1030, after making room through `__glSPDlistSpace` if the word at 0x1028 is short.
  It first loads the pointer at 0xdaa87a8, the word at 0x1034 and the word at 0x1028, and works out
  a pad of 1 word when bit 0x4 of the pointer is set and the word at 0x1034 is zero, else 0 (from
  0xdaa87b4 on). The `beq` at 0xdaa87d8 avoids the call if the signed word at 0x1028 is 4 plus the
  pad or more. Otherwise the call at 0xdaa87f4 runs with a0 zeroed and a1 and a2 restored from the
  frame. A zero return (`beq` at 0xdaa880c) jumps to 0xdaa8878, where the `sw` at 0xdaa8880 writes
  the pointer loaded at 0xdaa87a8, less 4, to 0x1030 and the `sw` at 0xdaa889c adds 1 to the word at
  0x1028, with `jr ra` at 0xdaa8898 returning the callee's value. After a nonzero return the pointer
  is read again at 0xdaa8814; bit 0x4 of it sets the pad to 1, and without that bit the earlier pad
  stays. At 0xdaa8824 the record address `a3` is the pointer plus four times the pad (0xdaa882c).
  The header 0xffffffffc180cc16 (built at 0xdaa883c and 0xdaa8840 from 0xc180 and 0xcc16) goes to
  +0x0 (`sw` at 0xdaa8844) and a0, a1 and a2 go to +0x4, +0x8 and +0xc (`sw`s at 0xdaa8848,
  0xdaa884c and 0xdaa8850). The `sw` at 0xdaa8858 stores `a3` plus 0x10 to 0x1030, the `sw` at
  0xdaa8864 stores the space value (the word at 0x1028, or the callee's return) less the pad less 4
  to 0x1028, and the `sw` at 0xdaa8874 in the return's delay slot writes the word at 0x1034 plus 4,
  which is also left in v0.
  Inferred: a display-list write pointer sits at 0x1030 and the number of free words at 0x1028; the
  evidence is the cursor step of 0x10, the counter drop of the pad plus 4 and the `__glSPDlistSpace`
  call on a low count.
  Unknown: which parts of the leading word 0xffffffffc180cc16 select the record type and size; the
  board's datasheet table of command words would settle it.
  Evidence grade: inferred.

- `__glOdylc_Normal3b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaa87a0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdaa87a0-0xdaa88a0 (256 bytes).
  It occupies 256 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xdaa87a8, `lw` at 0xdaa8814.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xdaa87b0, `lw` at 0xdaa885c.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xdaa87bc, `lw` at 0xdaa8888.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdaa8844, `sw` at 0xdaa8848, `sw` at 0xdaa884c.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xdaa8858, `sw` at 0xdaa8880.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xdaa8864, `sw` at 0xdaa889c.
  The `sw` at 0xdaa8874 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xdaa87f4 calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaa87d8 targets 0xdaa8824, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xdaa880c targets 0xdaa8878, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xdaa8870 has v0 = [0x1034]+4.
  The return at 0xdaa8898 has v0 = ret(__glSPDlistSpace).

- `__glOdylc_Normal3s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaa8fe0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdaa8fe0-0xdaa90e0 (256 bytes).
  It occupies 256 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xdaa8fe8, `lw` at 0xdaa9054.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xdaa8ff0, `lw` at 0xdaa909c.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xdaa8ffc, `lw` at 0xdaa90c8.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdaa9084, `sw` at 0xdaa9088, `sw` at 0xdaa908c.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xdaa9098, `sw` at 0xdaa90c0.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xdaa90a4, `sw` at 0xdaa90dc.
  The `sw` at 0xdaa90b4 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xdaa9034 calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaa9018 targets 0xdaa9064, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xdaa904c targets 0xdaa90b8, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xdaa90b0 has v0 = [0x1034]+4.
  The return at 0xdaa90d8 has v0 = ret(__glSPDlistSpace).

- `__glOdysseyCreatePMObj` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaa9e70 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdaa9e70-0xdaaa050 (480 bytes).
  It occupies 480 bytes.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0xdaa9e90, `lw` at 0xdaa9f18, `lw` at 0xdaa9fc0.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdaa9ecc, `lw` at 0xdaa9f4c, `lw` at 0xdaa9fac.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdaa9ed8, `sw` at 0xdaaa028.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x16ba4, including `lw` at 0xdaa9f3c, `lw` at 0xdaaa01c.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0xdaa9f80, `sw` at 0xdaa9ff8.
  The `jalr` at 0xdaa9ef0 calls __glOdysseyIoctl [0xdabc870] with a0=a0 at entry (arg0), a1=0x6f640001, a2=sp-160, a3=?.
  The `bgezall` at 0xdaa9f38 calls InitCSetCursor [0xdaabad0] with a0=[a0+93092], a1=?, a2=?, a3=[a2].
  The `bgezall` at 0xdaa9f50 calls NextCSetElem [0xdaabaf0] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xdaa9fa8 calls NextCSetElem [0xdaabaf0] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xdaa9fc4 calls LookupKnownGroup [0xdaab0a0] with a0=ret(NextCSetElem), a1=[a2], a2=0x0, a3=?.
  The `bgezall` at 0xdaa9fe0 calls RemoveKnownGroup [0xdaab590] with a0=ret(NextCSetElem), a1=ret(LookupKnownGroup), a2=?, a3=?.
  The `bgtz` branch at 0xdaa9ed4 targets 0xdaa9ec0, is taken when a6(?) > 0 (signed), and falls through when a6(?) <= 0 (signed).
  The `beq` branch at 0xdaa9f08 targets 0xdaa9ff0, is taken when v0(=ret(__glOdysseyIoctl)) == 0, and falls through when v0(=ret(__glOdysseyIoctl)) != 0.
  The `bne` branch at 0xdaa9f10 targets 0xdaa9f88, is taken when a0(=-0x1) != a1(?), and falls through when a0(=-0x1) == a1(?).
  The `beq` branch at 0xdaa9f1c targets 0xdaa9f88, is taken when a3(=[a2]) == a0(=-0x1), and falls through when a3(=[a2]) != a0(=-0x1).
  The `beq` branch at 0xdaa9f60 targets 0xdaa9f7c, is taken when v0(=ret(NextCSetElem)) == 0, and falls through when v0(=ret(NextCSetElem)) != 0.
  The `beq` branch at 0xdaa9f6c targets 0xdaa9fb8 and is always taken.
  The `beq` branch at 0xdaa9fb0 targets 0xdaa9f74, is taken when v0(=ret(NextCSetElem)) == 0, and falls through when v0(=ret(NextCSetElem)) != 0.
  The `beq` branch at 0xdaa9fcc targets 0xdaa9fa4, is taken when v0(=ret(LookupKnownGroup)) == 0, and falls through when v0(=ret(LookupKnownGroup)) != 0.
  The `beq` branch at 0xdaa9fe8 targets 0xdaa9fa4 and is always taken.
  The `beq` branch at 0xdaa9ff0 targets 0xdaaa038, is taken when a0(=-0x1) == a1(?), and falls through when a0(=-0x1) != a1(?).
  The `beq` branch at 0xdaaa010 targets 0xdaaa02c, is taken when (at(?) & 0x2) == 0, and falls through when (at(?) & 0x2) != 0.
  The return at 0xdaa9f98 has v0 = 0x0.
  The return at 0xdaaa030 has v0 = 0x1.
  The return at 0xdaaa048 has v0 = 0x0.
  The instructions from 0xdaa9fa0 to 0xdaa9fa0 are not reached by any path from the entry, and their branches are not listed.

- `__glOdysseyDestroyPMObjGroup` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaaa050 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdaaa050-0xdaaa198 (328 bytes).
  It occupies 328 bytes.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x16ba4, including `lw` at 0xdaaa094, `lw` at 0xdaaa0a4, `lw` at 0xdaaa0d4.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0xdaaa0f0, `lw` at 0xdaaa13c.
  The `sw` at 0xdaaa180 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `bgezall` at 0xdaaa090 calls (unnamed) [0xdaabad0] with a0=[a0+93092], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xdaaa0a8 calls (unnamed) [0xdaabaf0] with a0=[a0+93092], a1=?, a2=?, a3=?.
  The `bgezall` at 0xdaaa0d8 calls (unnamed) [0xdaabaf0] with a0=[a0+93092], a1=?, a2=?, a3=?.
  The `bgezall` at 0xdaaa0f4 calls (unnamed) [0xdaab0a0] with a0=ret(0xdaabaf0), a1=[a1], a2=0x0, a3=?.
  The `bgezall` at 0xdaaa108 calls (unnamed) [0xdaab590] with a0=ret(0xdaabaf0), a1=ret(0xdaab0a0), a2=?, a3=?.
  The `jalr` at 0xdaaa144 calls __glOdysseyIoctl [0xdabc870] with a0=a0 at entry (arg0), a1=0x6f640002, a2=sp-160, a3=?.
  The `beq` branch at 0xdaaa0b8 targets 0xdaaa120, is taken when v0(=ret(0xdaabaf0)) == 0, and falls through when v0(=ret(0xdaabaf0)) != 0.
  The `beq` branch at 0xdaaa0cc targets 0xdaaa0e8 and is always taken.
  The `beq` branch at 0xdaaa0e0 targets 0xdaaa118, is taken when v0(=ret(0xdaabaf0)) == 0, and falls through when v0(=ret(0xdaabaf0)) != 0.
  The `beq` branch at 0xdaaa0fc targets 0xdaaa0d4, is taken when v0(=ret(0xdaab0a0)) == 0, and falls through when v0(=ret(0xdaab0a0)) != 0.
  The `beq` branch at 0xdaaa110 targets 0xdaaa0d8 and is always taken.
  The `beq` branch at 0xdaaa154 targets 0xdaaa174, is taken when v0(=ret(__glOdysseyIoctl)) == 0, and falls through when v0(=ret(__glOdysseyIoctl)) != 0.
  The return at 0xdaaa16c has v0 = 0x0.
  The return at 0xdaaa190 has v0 = 0x1.

- `__glOdysseyDestroyPMObj` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaaa1a0 (n32).
  Sends private board request 0x6f640002 through `__glOdysseyIoctl` with the context in a0 and, when
  that succeeds and a frame flag is zero, walks a cursor set held in the context, calling `LookupKnownGroup`
  and `RemoveKnownGroup` on its elements.
  Inferred: the linked ioctl row for 0x6f640002 is a private handler named `gfP_OdsyMMdealloc`, so the
  request is a deallocation request.
  Request buffer: the word at a1 +0 is copied to +4 of the 160-byte frame (`lw` at 0xdaaa1b8, `sw` at
  0xdaaa1d0) and the low halfword of a2 to +8 (`sh` at 0xdaaa1c4). The frame start is passed as the third
  call argument, with request 0x6f640002 and 1 as the fourth argument (call at 0xdaaa204). The word at frame
  +0x34 is preset to 1 (`sw` at 0xdaaa1a8) and reloaded after the call (0xdaaa224).
  Only a2 in the range 0 to 0x10 reaches the call: the `bltz` at 0xdaaa1cc (a2 negative) and the `bne` at
  0xdaaa1d8 (not taken when a2 is at least 0x11) both lead to returning 0 at 0xdaaa1e8.
  A nonzero ioctl result returns 0 at 0xdaaa21c (`beq` at 0xdaaa20c). On a zero result the `beq` at
  0xdaaa228 tests the reloaded +0x34 word: nonzero returns 1 at 0xdaaa234, zero starts the cleanup walk at
  0xdaaa23c.
  The walk calls `InitCSetCursor` with the word at ctx +0x16ba4 (a0 plus 0x10000 plus 0x6ba4) and a1 still
  holding 0x10000, then `NextCSetElem` on the same word. While `NextCSetElem` returns an element, it is
  saved at frame +0x50 and passed to `LookupKnownGroup` with the word at a1 +0 and a2 zero. A zero lookup
  skips to the next element; a nonzero lookup is passed to `RemoveKnownGroup` together with the element
  (a1 = the lookup result), after which `NextCSetElem` runs again. Each `bgezall` in the walk tests the zero
  register, which is never negative, so every one of those calls is always made and its delay-slot load of a0
  always runs.
  When `NextCSetElem` returns zero (`beq` at 0xdaaa274 or 0xdaaa298), the `sw` at 0xdaaa2f0 writes -1 to the
  word at a1 +0 in the delay slot of the branch at 0xdaaa2ec, and the routine returns 1.
  Unknown: the results of `InitCSetCursor`, `NextCSetElem`, `LookupKnownGroup` and `RemoveKnownGroup`; their
  bodies at 0xdaabad0, 0xdaabaf0, 0xdaab0a0 and 0xdaab590 are not in this bundle, so their own entries settle it.
  Unknown: whether the ioctl handler writes the +0x34 word the reload reads, which would change the branch at
  0xdaaa228; the handler's own entry settles it.
  Evidence grade: inferred.

- `__glOdysseyDestroyPMObj` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaaa1a0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdaaa1a0-0xdaaa2f4 (340 bytes).
  It occupies 340 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0xdaaa1b8, `lw` at 0xdaaa2b8.
  The `lw` at 0xdaaa258 loads 4 bytes from a0 (arg0 at entry) +0x16ba4.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdaaa26c, `lw` at 0xdaaa294.
  The `sw` at 0xdaaa2f0 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jalr` at 0xdaaa204 calls __glOdysseyIoctl [0xdabc870] with a0=a0 at entry (arg0), a1=0x6f640002, a2=sp-160, a3=0x1.
  The `bgezall` at 0xdaaa254 calls InitCSetCursor [0xdaabad0] with a0=[a0+93092], a1=0x10000, a2=?, a3=?.
  The `bgezall` at 0xdaaa268 calls NextCSetElem [0xdaabaf0] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xdaaa290 calls NextCSetElem [0xdaabaf0] with a0=?, a1=?, a2=?, a3=?.
  The `bgezall` at 0xdaaa2b4 calls LookupKnownGroup [0xdaab0a0] with a0=ret(NextCSetElem), a1=[a1], a2=0x0, a3=?.
  The `bgezall` at 0xdaaa2d0 calls RemoveKnownGroup [0xdaab590] with a0=?, a1=ret(LookupKnownGroup), a2=?, a3=?.
  The `bltz` branch at 0xdaaa1cc targets 0xdaaa1e0, is taken when a2 < 0 (signed), and falls through when a2 >= 0 (signed).
  The `bne` branch at 0xdaaa1d8 targets 0xdaaa1f0, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0xdaaa20c targets 0xdaaa224, is taken when v0(=ret(__glOdysseyIoctl)) == 0, and falls through when v0(=ret(__glOdysseyIoctl)) != 0.
  The `beq` branch at 0xdaaa228 targets 0xdaaa23c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xdaaa274 targets 0xdaaa2e4, is taken when v0(=ret(NextCSetElem)) == 0, and falls through when v0(=ret(NextCSetElem)) != 0.
  The `beq` branch at 0xdaaa27c targets 0xdaaa2a4 and is always taken.
  The `beq` branch at 0xdaaa298 targets 0xdaaa2e0, is taken when v0(=ret(NextCSetElem)) == 0, and falls through when v0(=ret(NextCSetElem)) != 0.
  The `beq` branch at 0xdaaa2bc targets 0xdaaa288, is taken when v0(=ret(LookupKnownGroup)) == 0, and falls through when v0(=ret(LookupKnownGroup)) != 0.
  The `beq` branch at 0xdaaa2d8 targets 0xdaaa288 and is always taken.
  The `beq` branch at 0xdaaa2ec targets 0xdaaa22c and is always taken.
  The return at 0xdaaa1e8 has v0 = 0x0.
  The return at 0xdaaa21c has v0 = 0x0.
  The return at 0xdaaa234 has v0 = 0x1.
  The instructions from 0xdaaa284 to 0xdaaa284 are not reached by any path from the entry, and their branches are not listed.

- `__glOdysseyAssignToPMObj` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaaa370 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdaaa370-0xdaaa4ec (380 bytes).
  It occupies 380 bytes.
  The `lw` at 0xdaaa3dc loads 4 bytes from a7 (arg7 at entry) +0x14.
  The `sw` at 0xdaaa3ec stores 4 bytes to a7 (arg7 at entry) +0x14.
  The `lw` at 0xdaaa42c loads 4 bytes from ?.
  The `sw` at 0xdaaa438 stores 4 bytes to ?.
  The `sw` at 0xdaaa4b4 stores 4 bytes to a0 (arg0 at entry) +0x21de0.
  The `jalr` at 0xdaaa3c8 calls bzero with a0=sp-240, a1=0x50, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xdaaa450 calls (unnamed) [0xdaaa300] with a0=sp-240, a1=a7 at entry (arg7), a2=sp-212, a3=?.
  The `jalr` at 0xdaaa474 calls __glOdysseyIoctl [0xdabc870] with a0=a0 at entry (arg0), a1=0x6f640006, a2=sp-240, a3=?.
  The `bgtz` branch at 0xdaaa434 targets 0xdaaa420, is taken when a0(?) > 0 (signed), and falls through when a0(?) <= 0 (signed).
  The `beq` branch at 0xdaaa45c targets 0xdaaa4cc, is taken when v0(=ret(0xdaaa300)) == 0, and falls through when v0(=ret(0xdaaa300)) != 0.
  The `beq` branch at 0xdaaa494 targets 0xdaaa4a4, is taken when v0(=ret(__glOdysseyIoctl)) == 0, and falls through when v0(=ret(__glOdysseyIoctl)) != 0.
  The `beq` branch at 0xdaaa49c targets 0xdaaa4b8 and is always taken.
  The return at 0xdaaa4c4 has v0 = one of 0x0, 0x1.
  The return at 0xdaaa4e4 has v0 = 0x0.

- `__glOdysseyReadFromPMObj` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaaa4f0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdaaa4f0-0xdaaa60c (284 bytes).
  It occupies 284 bytes.
  The `lw` at 0xdaaa4fc loads 4 bytes from a7 (arg7 at entry) +0x14.
  The `sw` at 0xdaaa510 stores 4 bytes to a7 (arg7 at entry) +0x14.
  The `lw` at 0xdaaa56c loads 4 bytes from ?.
  The `sw` at 0xdaaa578 stores 4 bytes to ?.
  The `sw` at 0xdaaa5dc stores 4 bytes to a0 (arg0 at entry) +0x21de0.
  The `bgezall` at 0xdaaa588 calls (unnamed) [0xdaaa300] with a0=sp-176, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdaaa5a8 calls __glOdysseyIoctl [0xdabc870] with a0=a0 at entry (arg0), a1=0x6f640006, a2=sp-176, a3=?.
  The `bgtz` branch at 0xdaaa574 targets 0xdaaa560, is taken when t2(?) > 0 (signed), and falls through when t2(?) <= 0 (signed).
  The `beq` branch at 0xdaaa590 targets 0xdaaa5f4, is taken when v0(=ret(0xdaaa300)) == 0, and falls through when v0(=ret(0xdaaa300)) != 0.
  The `beq` branch at 0xdaaa5bc targets 0xdaaa5cc, is taken when v0(=ret(__glOdysseyIoctl)) == 0, and falls through when v0(=ret(__glOdysseyIoctl)) != 0.
  The `beq` branch at 0xdaaa5c4 targets 0xdaaa5e0 and is always taken.
  The return at 0xdaaa5ec has v0 = one of 0x0, 0x1.
  The return at 0xdaaa604 has v0 = 0x0.

- `OpenPipeMemReference` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaaa610 (n32).
  The routine makes three stores to arg0 +0x9750 and 17 stores to abs 0x4000. It calls __glOdysseyMIPS_SYNC twice (0xdaaa71c, 0xdaaa7a8) with one __glOdysseyIoctl (0xdaaa780) between them in address order. It returns 1 on one path and 0 on another. The name suggests a reference taken on a pipe memory object. The facts do not show the object's layout or the order in which the calls run.
  Grade: inferred.
  Reviewed: 2026-11-12

- `LookupKnownGroup` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaab0a0 (n32).
  The routine calls LookupCSetId (0xdaab0ec), AddKnownGroup (0xdaab168), LookupCoresidRange (0xdaab188) and RemoveKnownGroup (0xdaab208). It clears a 0x54-byte record with bzero (0xdaab150) and calls __glSetError with code 0x505 (0xdaab1d8). It returns 0 on four paths and a call result on two (the LookupCSetId result at 0xdaab110 and an unresolved value at 0xdaab1a8). Role (from name): find, add or remove over a table of groups. The exact mode selection is open.
  Grade: inferred.
  Reviewed: 2026-11-12

- `LookupCoresidRange` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaab230 (n32).
  The routine indexes a table by (a2 << 2) + a1 at +0xc (0xdaab240), clears a structure with bzero (0xdaab2b8), and makes an ioctl call (0xdaab318). It writes three fields through arg1 (+0x4, +0x8 and +0x50, at 0xdaab3e4, 0xdaab410 and 0xdaab418) and calls __glSetError (0xdaab37c). Role (from name): looks up a range in a coresident group. The table's fields are not labelled, so the meaning of each field is partly open.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdyim_Begin` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaabd00 (n32).
  Inferred: T, the word at abs 0x1010, is the context pointer, since the `__glSetError` note reads its context from the process-page word at address 4112 (0x1010); this routine also reads the word at abs 0x1018 (`lw` at 0xdaabd20) as a state word S, and the word at T+0x168d4 (`lw` at 0xdaabd0c).
  When the word at T+0x168d4 is nonzero and S is zero, S is replaced by 2 (the conditional move between 0xdaabd24 and 0xdaabd38); otherwise S is used as read.
  Effective state 0 (`beq` at 0xdaabd38) and arg0 at 0xa or above (`beq` at 0xdaabd7c) calls `__glSetError` with 0x500 (`jalr` at 0xdaabdf4) and returns its value.
  Effective state 0 and arg0 under 0xa: the constant 0x14400 goes to abs 0x4000 (`sw` at 0xdaabd90) and the constant 1 to abs 0x1018 (`sw` at 0xdaabd98).
  Next, arg0 itself is written to abs 0x4000 (`sw` at 0xdaabd9c).
  The routine then returns 1 (`jr ra` at 0xdaabda4); the delay-slot `swc1` at 0xdaabda8 stores to T+0x19ca8 the float literal at 0xdbde448, which is 0.0.
  In state 2 (`beq` at 0xdaabd4c) it stores byte 1 at T+0x168e4 (`sb` at 0xdaabdb0), calls through the word at +0x2d60 of T with T as a0 (`jalr` at 0xdaabdbc), clears abs 0x1018 (`sw` at 0xdaabdc4), calls through the word at +0x1c of the object at T+0x17ec with arg0 (`jalr` at 0xdaabdd4), and returns with that call's value.
  A remaining state value calls `__glSetError` with 0x502 (`jalr` at 0xdaabd58) and returns its value.
  Unknown: the code behind the two indirect calls through T+0x2d60 and T+0x17ec, which only a note on the targets would give.
  Evidence grade: inferred.

- `__glOdysseySetProgram` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaad4b0 (n32).
  Takes the context in a0 and an index in a1 that selects a 32-byte record at a0 + (a1 << 0x5), and streams packed
  words for that record to the one absolute address 0x4000 (base register zero), updating bookkeeping fields in
  the context as it goes. It makes no calls.
  Early exits: when the byte at +0x21dec is nonzero (`lbu` at 0xdaad4c0, falls through the `beq` at 0xdaad4d4), the
  routine returns the constant 0x29808062 and stores that same constant to 0x4000 in the return's delay slot
  (0xdaad4e0). When that byte is zero and the word at +0xa574 is zero (`beq` at 0xdaad4fc), it returns the same
  constant at 0xdaad960 with no store.
  Otherwise the first stores go to 0x4000. The word at +0xa5d0 gives the first header: its low 10 bits, plus the
  bits from bit 10 up moved to start at bit 23, ORed with 0x27008000 (0xdaad544). Six more words follow
  (0xdaad564 to 0xdaad5fc), each built the same way from a halfword read downward from a pointer, with 0x40008000
  ORed in. The pointer is the table pointer at +0x16c44 plus 0xc bytes per entry plus 0xa; the entry number is the
  +0xa5d0 word, unless the word at +0xa5cc is nonzero and at or below it (unsigned compare at 0xdaad510), in which case it is the
  +0xa5d0 word minus the +0xa5cc word plus 0x738 (0xdaad518 and 0xdaad51c).
  The routine then stores a1 to +0xa5c8 (0xdaad600), reads the record word at +0xa58c and sets a1 to 0x738 in the
  branch delay slot (0xdaad60c); the record pointer was computed before that (the load at 0xdaad604 already used it), so the record loads after
  that point still use the original index. A zero record word goes to the tail at 0xdaad754 (via 0xdaad954); a record
  word equal to the +0xa5cc word also goes to the tail (via 0xdaad74c), and in both cases +0xa5cc is not written.
  Loop path: the count is the word at +0x16c48 minus the record word, clamped to at most 0xc7. If it is not above zero (`blez` at 0xdaad640) the loop is skipped. Otherwise each pass
  stores a header word built from a1 (0x738 on the first pass, one more each pass) ORed with 0x27008000, then six
  packed words from six halfwords below a pointer that starts at the table pointer plus 0xc bytes per record
  plus 0xa and steps by 0xc each pass (0xdaad674 to 0xdaad72c). When the loop ends, the record word is stored to
  +0xa5cc (`sw` in the delay slot at 0xdaad748).
  Tail: the record word at +0xa590 is copied to +0xa5d0 (0xdaad758), then a header of that word ORed with 0x27008000
  and six halfword-packed words (0xdaad788 to 0xdaad844, the pointer using the record word at +0xa594) go to
  0x4000. The record word at +0xa588 plus one is stored to +0xa140 (0xdaad850). The word at a0 + 4 * the +0xa588
  word, +0xa174, is stored to +0xa118 (0xdaad874) and packed with 0x29008000 to 0x4000, then the +0xa140 word is
  packed with 0x33008000 and stored, followed by 0xffffffff90808800 and two zero words (0xdaad8a8 to 0xdaad8b0).
  Last, the record words at +0xa584, +0xa578, +0xa57c and +0xa580 are copied to +0xa140, +0xa118, +0xa11c and
  +0xa124 (0xdaad8b8 to 0xdaad8e0), and each is packed to 0x4000 with the constants 0x33008000, 0x29008000,
  0x2a008000 and 0x2c008000. The last of those is the `sw` at 0xdaad950 in the return's delay slot, and v0 at
  the return holds that packed word.
  Unknown: which device or board window the absolute address 0x4000 falls in, and the device-side result of these
  packed words; the bundle links no register row or datasheet excerpt for that address.
  Evidence grade: established.

- `__glOdysseySetProgram` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaad4b0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdaad4b0-0xdaad968 (1208 bytes).
  It occupies 1208 bytes.
  The `lbu` at 0xdaad4c0 loads 1 byte from a0 (arg0 at entry) +0x21dec.
  The `lw` at 0xdaad4cc loads 4 bytes from a0 (arg0 at entry) +0xa5cc.
  The `lw` at 0xdaad4d8 loads 4 bytes from a0 (arg0 at entry) +0xa5d0.
  31 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdaad4e0, `sw` at 0xdaad544, `sw` at 0xdaad564.
  The `lw` at 0xdaad4e8 loads 4 bytes from a0 (arg0 at entry) +0xa574.
  The `lw` at 0xdaad528 loads 4 bytes from a0 (arg0 at entry) +0x16c44.
  18 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0xdaad54c, `lhu` at 0xdaad568, `lhu` at 0xdaad584.
  The `sw` at 0xdaad600 stores 4 bytes to a0 (arg0 at entry) +0xa5c8.
  2 such `lw` accesses load 4 bytes from ((a1 << 0x5) + a0) +0xa58c, including `lw` at 0xdaad604, `lw` at 0xdaad73c.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x16c40, including `ld` at 0xdaad614, `ld` at 0xdaad738, `ld` at 0xdaad74c.
  The `lw` at 0xdaad620 loads 4 bytes from a0 (arg0 at entry) +0x16c48.
  The `sw` at 0xdaad748 stores 4 bytes to a0 (arg0 at entry) +0xa5cc.
  2 such `lw` accesses load 4 bytes from ((a1 << 0x5) + a0) +0xa590, including `lw` at 0xdaad754, `lw` at 0xdaad75c.
  The `sw` at 0xdaad758 stores 4 bytes to a0 (arg0 at entry) +0xa5d0.
  The `lw` at 0xdaad760 loads 4 bytes from ((a1 << 0x5) + a0) +0xa594.
  2 such `lw` accesses load 4 bytes from ((a1 << 0x5) + a0) +0xa588, including `lw` at 0xdaad848, `lw` at 0xdaad854.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xa140, including `sw` at 0xdaad850, `sw` at 0xdaad8b8.
  The `lw` at 0xdaad864 loads 4 bytes from (([((a1 << 0x5) + a0)+42376] << 0x2) + a0) +0xa174.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0xa118, including `sw` at 0xdaad874, `sw` at 0xdaad8c0.
  The `lw` at 0xdaad884 loads 4 bytes from a0 (arg0 at entry) +0xa140.
  The `lw` at 0xdaad8b4 loads 4 bytes from ((a1 << 0x5) + a0) +0xa584.
  The `lw` at 0xdaad8bc loads 4 bytes from ((a1 << 0x5) + a0) +0xa578.
  The `lw` at 0xdaad8c4 loads 4 bytes from ((a1 << 0x5) + a0) +0xa57c.
  The `sw` at 0xdaad8c8 stores 4 bytes to a0 (arg0 at entry) +0xa11c.
  The `lw` at 0xdaad8d8 loads 4 bytes from ((a1 << 0x5) + a0) +0xa580.
  The `sw` at 0xdaad8e0 stores 4 bytes to a0 (arg0 at entry) +0xa124.
  The `lw` at 0xdaad8ec loads 4 bytes from a0 (arg0 at entry) +0xa118.
  The `lw` at 0xdaad908 loads 4 bytes from a0 (arg0 at entry) +0xa11c.
  The `lw` at 0xdaad92c loads 4 bytes from a0 (arg0 at entry) +0xa124.
  The `beq` branch at 0xdaad4d4 targets 0xdaad4e4, is taken when at(=[a0+138732]:1) == 0, and falls through when at(=[a0+138732]:1) != 0.
  The `beq` branch at 0xdaad4fc targets 0xdaad960, is taken when v1(=[a0+42356]) == 0, and falls through when v1(=[a0+42356]) != 0.
  The `beq` branch at 0xdaad508 targets 0xdaad520, is taken when a3(=[a0+42444]) == 0, and falls through when a3(=[a0+42444]) != 0.
  The `bne` branch at 0xdaad510 targets 0xdaad520, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0xdaad608 targets 0xdaad954, is taken when a5(=[((a1 << 0x5) + a0)+42380]) == 0, and falls through when a5(=[((a1 << 0x5) + a0)+42380]) != 0.
  The `beq` branch at 0xdaad618 targets 0xdaad74c, is taken when a5(=[((a1 << 0x5) + a0)+42380]) == a3(=[a0+42444]), and falls through when a5(=[((a1 << 0x5) + a0)+42380]) != a3(=[a0+42444]).
  The `blez` branch at 0xdaad640 targets 0xdaad744, is taken when t1(?) <= 0 (signed), and falls through when t1(?) > 0 (signed).
  The `bne` branch at 0xdaad730 targets 0xdaad660, is taken when t1(?) != a4(?), and falls through when t1(?) == a4(?).
  The `beq` branch at 0xdaad744 targets 0xdaad754 and is always taken.
  The `beq` branch at 0xdaad958 targets 0xdaad754 and is always taken.
  The return at 0xdaad4dc has v0 = 0x29808062.
  The return at 0xdaad94c has v0 = ?.
  The return at 0xdaad960 has v0 = 0x29808062.

- `__glOdylc_TexCoord1d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaaf900 (n32).
  Queues a two-word record, a constant header and the double-precision argument in `$f12` narrowed
  to single precision, at the pointer held in the word at absolute 0x1030, after making room through
  `__glSPDlistSpace` if the word at 0x1028 is short. The routine loads the pointer (0xdaaf908), the
  word at 0x1034 (0xdaaf910) and the word at 0x1028 (0xdaaf91c), and sets a pad of 1 word when bit
  0x4 of the pointer is set and the word at 0x1034 is zero, else 0. A signed 0x1028 word of at least
  2 plus the pad takes the `beq` at 0xdaaf93c past the call. Otherwise the call at 0xdaaf950 runs
  with a0 zeroed and the double saved in the frame (`sdc1` at 0xdaaf94c, reloaded at 0xdaaf958).
  Returning zero from the callee (`beq` at 0xdaaf960) ends at 0xdaaf9c8, which restores 0x1030 to
  the old pointer less 4 (`sw` at 0xdaaf9d0), bumps the 0x1028 word by 1 (`sw` at 0xdaaf9ec), and
  passes the zero back in v0. The pointer reloaded at 0xdaaf968 after a nonzero return raises the
  pad to 1 when bit 0x4 is set and leaves the earlier pad otherwise. Here `a0` is the append
  address, the pointer with the pad word count scaled by 4 added. The header 0xffffffffc380c41f
  (built at 0xdaaf990 and 0xdaaf998 from 0xc380 and 0xc41f) goes to +0x0 (`sw` at 0xdaaf99c) and the
  narrowed double (converted into `$f0` just before the header `ori`) goes to +0x4 (`swc1` at
  0xdaaf9a0). The `sw` at 0xdaaf9a8 stores the record address plus 8 to 0x1030, the `sw` at
  0xdaaf9b4 stores the space value (the word at 0x1028, or the callee's return) less the pad less 2
  to 0x1028, and the `sw` at 0xdaaf9c4 in the return's delay slot writes the word at 0x1034 plus 2,
  which `jr ra` at 0xdaaf9c0 returns in v0.
  Inferred: the routine treats 0x1030 as the next free slot of a display list and 0x1028 as the room
  left, since the slot moves by 8, the room shrinks by the pad plus 2, and `__glSPDlistSpace` is
  called when the room is short.
  Unknown: the field breakdown of 0xffffffffc380c41f, the first word of the record; the command-
  format datasheet for the board would settle it.
  Evidence grade: inferred.

- `__glOdylc_TexCoord1d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaaf900 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdaaf900-0xdaaf9f0 (240 bytes).
  It occupies 240 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xdaaf908, `lw` at 0xdaaf968.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xdaaf910, `lw` at 0xdaaf9ac.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xdaaf91c, `lw` at 0xdaaf9d8.
  The `sw` at 0xdaaf99c stores 4 bytes to ?.
  The `swc1` at 0xdaaf9a0 stores 4 bytes to ?.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xdaaf9a8, `sw` at 0xdaaf9d0.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xdaaf9b4, `sw` at 0xdaaf9ec.
  The `sw` at 0xdaaf9c4 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xdaaf950 calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdaaf93c targets 0xdaaf978, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xdaaf960 targets 0xdaaf9c8, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xdaaf9c0 has v0 = [0x1034]+2.
  The return at 0xdaaf9e8 has v0 = ret(__glSPDlistSpace).

- `__glOdylc_TexCoord1dv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaaf9f0 (n32).
  Appends a two-word record to the buffer addressed by the word at absolute 0x1030: a constant
  header, then the double that a0 points to rounded to single precision. `__glSPDlistSpace` is
  called beforehand if the word at 0x1028 is too small. The routine loads the pointer (0xdaaf9f8),
  the word at 0x1034 (0xdaafa00) and the word at 0x1028 (0xdaafa0c), and sets a pad of 1 when bit
  0x4 of the pointer is set and the word at 0x1034 is zero, else 0. At 0xdaafa28 a `beq` jumps over
  the call when the 0x1028 word, signed, is not below 2 plus the pad. Otherwise the call at
  0xdaafa3c runs with a0 zeroed, and a0 is reloaded from the frame afterwards (0xdaafa44). If the
  callee returns zero (`beq` at 0xdaafa4c), 0xdaafab8 runs; it stores the old pointer less 4 to
  0x1030 (`sw` at 0xdaafac0), increments the 0x1028 word (`sw` at 0xdaafadc) and hands back the
  callee's value. A nonzero return reloads the pointer at 0xdaafa54 and sets the pad to 1 when its
  bit 0x4 is set. In `a1` the record address is built as pointer + (pad << 2). The `sw` at 0xdaafa74
  stores the header 0xffffffffc380c41f at +0x0; the `ldc1` at 0xdaafa78 loads the double from a0 and
  the `swc1` at 0xdaafa90 stores the narrowed value at +0x4. The `sw` at 0xdaafa98 stores the record
  address plus 8 to 0x1030, the `sw` at 0xdaafaa4 stores the space value (the word at 0x1028, or the
  callee's return) less the pad less 2 to 0x1028, and the `sw` at 0xdaafab4 in the return's delay
  slot writes the word at 0x1034 plus 2, which is also left in v0.
  Inferred: this is a buffer append, with the pointer at 0x1030 stepping 8 per record and the free-
  word count at 0x1028 falling by the pad plus 2; the `__glSPDlistSpace` call on a short count is
  the reason for that reading.
  Unknown: what bit layout 0xffffffffc380c41f has as a command word; a section of the board
  datasheet on command encodings would settle it.
  Evidence grade: inferred.

- `__glOdylc_TexCoord1iv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaafdb0 (n32).
  Queues one 32-bit value from the array a0 points to. The absolute word 0x1030 acts as the cursor; the entry
  occupies two words there, a header and the payload.
  The header word is the constant 0xffffffffc380c41e, of which the `sw` at 0xdaafe40 stores the low 32 bits.
  The payload is the word at a0 +0, loaded at 0xdaafe48 and stored unchanged by the `sw` at 0xdaafe4c, 4 bytes
  after the header.
  The entry starts at the cursor plus 4 times a pad flag. The flag is 1 only if bit 0x4 of the cursor is set
  (the mask at 0xdaafdc4) and the word at 0x1034 is zero, because a conditional move zeroes it when 0x1034 is
  nonzero. After a refill call that returns nonzero, the flag becomes 1 whenever the reloaded cursor has bit 0x4
  set (0xdaafe14 to 0xdaafe20), whatever 0x1034 holds.
  Bookkeeping after the stores: 0x1030 gets the entry base plus 8 (`sw` at 0xdaafe54), 0x1028 gets its word
  minus the flag minus 2 (`sw` at 0xdaafe60), and 0x1034 gets its word plus 2 (`sw` at 0xdaafe70), which the
  `jr ra` at 0xdaafe6c returns in v0.
  The `beq` at 0xdaafde8 jumps straight to that path when the signed 0x1028 word is at least the flag plus 2.
  If not, `__glSPDlistSpace` runs at 0xdaafdfc with a0 zero. A zero result (`beq` at 0xdaafe0c) abandons the
  entry: 0x1030 is set to the cursor value read at entry minus 4 (`sw` at 0xdaafe7c), 0x1028 to its reread word
  plus 1 (`sw` at 0xdaafe98), and the zero comes back in v0.
  Inferred: reading 0x1030 as a write cursor, 0x1028 as a space counter and 0x1034 as a running count fits the strides (8 per entry; 2 plus pad; 2); no label in the bundle names them.
  Unknown: the handling inside `__glSPDlistSpace` in this build; its one committed note is for the IP30ODSY64 build and reads the doubleword at absolute 0x1020.
  Evidence grade: inferred.

- `__glOdylc_TexCoord1sv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaaff90 (n32).
  Queues a signed halfword. It loads the
  halfword at a0 +0 (`lh` at 0xdab0028) and stores it widened to a full word 4 bytes into the entry (`sw` at
  0xdab002c); a header constant, 0xffffffffc380c41e in its low 32 bits, goes in front of it (`sw` at 0xdab0020).
  The entry base is the cursor in the absolute word 0x1030 plus 4 times a pad flag. The flag is 1 only when the
  cursor has bit 0x4 set and the word at 0x1034 is zero; a nonzero 0x1034 word clears it through a conditional move. After a refill call returns nonzero, the flag is forced to 1 if the reloaded cursor has bit 0x4
  set (reload at 0xdaafff4).
  On the write path the routine finishes with: 0x1030 takes the entry base plus 8 (`sw` at 0xdab0034), 0x1028 takes its word less the
  flag less 2 (`sw` at 0xdab0040), and 0x1034 takes its word plus 2 and also leaves in v0 (`sw` at 0xdab0050,
  `jr ra` at 0xdab004c).
  The refill is bypassed by the `beq` at 0xdaaffc8 when the signed 0x1028 word is at least the flag plus 2;
  when it is not, the routine calls `__glSPDlistSpace` at 0xdaaffdc, passing a0 as zero. When it returns zero (`beq` at 0xdaaffec)
  the entry is dropped: 0x1030 becomes the entry-time cursor minus 4 (`sw` at 0xdab005c), 0x1028 becomes its
  reread word plus 1 (`sw` at 0xdab0078), and v0 is zero.
  Inferred: the stride pattern (cursor up 8, 0x1028 down 2 plus pad) fits a command-buffer write pointer and its free-space count; the bundle gives no register name for either word.
  Unknown: the result `__glSPDlistSpace` computes in this build; no committed note covers it.
  Evidence grade: inferred.

- `__glOdylc_TexCoord2d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab0080 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdab0080-0xdab0184 (260 bytes).
  It occupies 260 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xdab0088, `lw` at 0xdab00f4.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xdab0090, `lw` at 0xdab0140.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xdab009c, `lw` at 0xdab016c.
  The `sw` at 0xdab0128 stores 4 bytes to ?.
  2 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xdab0130, `swc1` at 0xdab0134.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xdab013c, `sw` at 0xdab0164.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xdab0148, `sw` at 0xdab0180.
  The `sw` at 0xdab0158 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xdab00d8 calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdab00c0 targets 0xdab0104, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xdab00ec targets 0xdab015c, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xdab0154 has v0 = [0x1034]+3.
  The return at 0xdab017c has v0 = ret(__glSPDlistSpace).

- `__glOdylc_TexCoord2i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab0490 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdab0490-0xdab0584 (244 bytes).
  It occupies 244 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xdab0498, `lw` at 0xdab04fc.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xdab04a0, `lw` at 0xdab0540.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xdab04ac, `lw` at 0xdab056c.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdab052c, `sw` at 0xdab0530, `sw` at 0xdab0534.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xdab053c, `sw` at 0xdab0564.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xdab0548, `sw` at 0xdab0580.
  The `sw` at 0xdab0558 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xdab04e0 calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdab04c8 targets 0xdab050c, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xdab04f4 targets 0xdab055c, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xdab0554 has v0 = [0x1034]+3.
  The return at 0xdab057c has v0 = ret(__glSPDlistSpace).

- `__glOdylc_TexCoord3i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab0cd0 (n32).
  Queues three integer components, passed in a0, a1 and a2, as a four-word entry at the cursor in the
  absolute word 0x1030. The header word at +0 is the constant 0xffffffffc380cc22 (low 32 bits, `sw` at 0xdab0d74);
  the components follow at +4, +8 and +0xc (`sw`s at 0xdab0d78 to 0xdab0d80). The base, held in a3, is the
  cursor plus 4 times a pad flag.
  The flag is 1 when bit 0x4 of the cursor is set and the word at 0x1034 is zero; a conditional move zeroes it if 0x1034 is nonzero. Following a refill call that returned nonzero, a reloaded cursor with bit 0x4 set
  forces the flag to 1 (0xdab0d44 to 0xdab0d50).
  The `beq` at 0xdab0d08 skips the refill when the signed 0x1028 word is at least the flag plus 4. Otherwise
  `__glSPDlistSpace` runs at 0xdab0d24 with a0 zero, and a0 to a2 are reloaded from the frame (0xdab0d2c to
  0xdab0d34), so the entry holds the caller's values on every path.
  If the refill call returns zero (`beq` at 0xdab0d3c) nothing is written and 0x1030 becomes the entry-time cursor minus 4 (`sw` at
  0xdab0db0), 0x1028 its reread word plus 1 (`sw` at 0xdab0dcc), and zero is returned.
  On the write path 0x1030 takes the base plus 0x10 (`sw` at 0xdab0d88), 0x1028 takes the working word less the flag
  less 4 (`sw` at 0xdab0d94), and 0x1034 takes its word plus 4, the value the `jr ra` at 0xdab0da0 returns
  (`sw` at 0xdab0da4).
  Inferred: a cursor advancing 16 with a counter dropping 4 plus pad reads as a command-buffer pointer and free-space count; the bundle carries no name for either.
  Unknown: the device-side result of the refill call `__glSPDlistSpace` in this build.
  Evidence grade: inferred.

- `__glOdylc_TexCoord3i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab0cd0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdab0cd0-0xdab0dd0 (256 bytes).
  It occupies 256 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xdab0cd8, `lw` at 0xdab0d44.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xdab0ce0, `lw` at 0xdab0d8c.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xdab0cec, `lw` at 0xdab0db8.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdab0d74, `sw` at 0xdab0d78, `sw` at 0xdab0d7c.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xdab0d88, `sw` at 0xdab0db0.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xdab0d94, `sw` at 0xdab0dcc.
  The `sw` at 0xdab0da4 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xdab0d24 calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdab0d08 targets 0xdab0d54, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xdab0d3c targets 0xdab0da8, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xdab0da0 has v0 = [0x1034]+4.
  The return at 0xdab0dc8 has v0 = ret(__glSPDlistSpace).

- `__glOdylc_TexCoord4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab1550 (n32).
  Writes a five-word record for four integer components (a0 to a3) to the buffer whose cursor is the absolute
  word 0x1030. Word 0 is the constant 0xffffffffc380d024 (low 32 bits, `sw` at 0xdab15fc); words 1 to 4 are
  a0, a1, a2 and a3 (`sw`s at 0xdab1600 to 0xdab160c). The record base sits in t0 and equals the cursor plus
  4 times a pad flag.
  The flag is 1 when the cursor has bit 0x4 set and the word at 0x1034 is zero, and a conditional move zeroes
  it otherwise. A call that returns nonzero reloads the cursor (0xdab15cc) and sets the flag to 1 if bit 0x4
  of the reloaded value is set.
  The `beq` at 0xdab1588 avoids the refill when the signed 0x1028 word is at least the flag plus 5.
  If the space is short, the routine calls `__glSPDlistSpace` at 0xdab15a8 with a0 passed as zero; a0 to a3 come back from the frame
  (0xdab15b0 to 0xdab15bc), so the record carries the caller's values on every path.
  When the refill call returns zero (`beq` at 0xdab15c4) the record is skipped and 0x1030 becomes the entry-time cursor minus 4 (`sw` at
  0xdab163c), 0x1028 becomes its reread word plus 1 (`sw` at 0xdab1658), and zero is returned.
  On the write path 0x1030 takes the base plus 0x14 (`sw` at 0xdab1614), 0x1028 takes the working word less the flag
  less 5 (`sw` at 0xdab1620), and 0x1034 takes its word plus 5, which `jr ra` at 0xdab162c returns
  (`sw` at 0xdab1630).
  Inferred: the cursor moves 20 per record while the counter drops 5 plus pad, which fits a buffer pointer and free-space count; no name for either word appears in the bundle.
  Unknown: the handling inside `__glSPDlistSpace` in this build, which only another build's note covers.
  Evidence grade: inferred.

- `__glOdylc_TexCoord4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab1550 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdab1550-0xdab165c (268 bytes).
  It occupies 268 bytes.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xdab1558, `lw` at 0xdab15cc.
  2 such `lw` accesses load 4 bytes from abs 0x1034, including `lw` at 0xdab1560, `lw` at 0xdab1618.
  2 such `lw` accesses load 4 bytes from abs 0x1028, including `lw` at 0xdab156c, `lw` at 0xdab1644.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdab15fc, `sw` at 0xdab1600, `sw` at 0xdab1604.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0xdab1614, `sw` at 0xdab163c.
  2 such `sw` accesses store 4 bytes to abs 0x1028, including `sw` at 0xdab1620, `sw` at 0xdab1658.
  The `sw` at 0xdab1630 stores 4 bytes to abs 0x1034.
  The `jalr` at 0xdab15a8 calls __glSPDlistSpace [0xdadafc0] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdab1588 targets 0xdab15dc, is taken when v0(=[0x1028]) >= at(?) (signed), and falls through when v0(=[0x1028]) < at(?) (signed).
  The `beq` branch at 0xdab15c4 targets 0xdab1634, is taken when v0(=ret(__glSPDlistSpace)) == 0, and falls through when v0(=ret(__glSPDlistSpace)) != 0.
  The return at 0xdab162c has v0 = [0x1034]+5.
  The return at 0xdab1654 has v0 = ret(__glSPDlistSpace).

- `__glOdysseyTextureDriverDestroy` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab29d0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdab29d0-0xdab2a90 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0xdab29e0 loads 4 bytes from a0 (arg0 at entry) +0x164ac.
  The `lw` at 0xdab29e4 loads 4 bytes from [a0+91308] +0x8.
  The `lw` at 0xdab2a18 loads 4 bytes from a0 (arg0 at entry) +0x164b0.
  The `lw` at 0xdab2a1c loads 4 bytes from [a0+91312] +0x8.
  The `lw` at 0xdab2a38 loads 4 bytes from a0 (arg0 at entry) +0x164b4.
  The `lw` at 0xdab2a3c loads 4 bytes from [a0+91316] +0x8.
  The `lw` at 0xdab2a58 loads 4 bytes from a0 (arg0 at entry) +0x164b8.
  The `lw` at 0xdab2a5c loads 4 bytes from [a0+91320] +0x8.
  The `jalr` at 0xdab2a0c calls __glNamesUnlockData [0xdb38c70] with a0=a0 at entry (arg0), a1=[a0+91308], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdab2a2c calls __glNamesUnlockData [0xdb38c70] with a0=a0 at entry (arg0), a1=[a0+91312], a2=?, a3=?.
  The `jalr` at 0xdab2a4c calls __glNamesUnlockData [0xdb38c70] with a0=a0 at entry (arg0), a1=[a0+91316], a2=?, a3=?.
  The `jalr` at 0xdab2a74 calls __glNamesUnlockData [0xdb38c70] with a0=a0 at entry (arg0), a1=[a0+91320], a2=?, a3=?.
  The `beq` branch at 0xdab29fc targets 0xdab2a18, is taken when at(=[[a0+91308]+8]) == 0, and falls through when at(=[[a0+91308]+8]) != 0.
  The `beq` branch at 0xdab2a20 targets 0xdab2a38, is taken when at(=[[a0+91312]+8]) == 0, and falls through when at(=[[a0+91312]+8]) != 0.
  The `beq` branch at 0xdab2a40 targets 0xdab2a58, is taken when v0(=[[a0+91316]+8]) == 0, and falls through when v0(=[[a0+91316]+8]) != 0.
  The `beq` branch at 0xdab2a60 targets 0xdab2a80, is taken when v1(=[[a0+91320]+8]) == 0, and falls through when v1(=[[a0+91320]+8]) != 0.
  The return at 0xdab2a88 has v0 = one of ?, ret(__glNamesUnlockData).

- `__glOdysseyGetCurrentTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab2b70 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdab2b70-0xdab2c50 (224 bytes).
  It occupies 224 bytes.
  The `lw` at 0xdab2bbc loads 4 bytes from a0 (arg0 at entry) +0x164b8.
  The `lw` at 0xdab2c18 loads 4 bytes from a0 (arg0 at entry) +0x164b4.
  The `lw` at 0xdab2c38 loads 4 bytes from a0 (arg0 at entry) +0x164b0.
  The `lw` at 0xdab2c4c loads 4 bytes from a0 (arg0 at entry) +0x164ac.
  The `bne` branch at 0xdab2b84 targets 0xdab2bc0, is taken when a1 < a3(=0x8064) (unsigned), and falls through when a1 >= a3(=0x8064) (unsigned).
  The `beq` branch at 0xdab2b8c targets 0xdab2c1c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xdab2b98 targets 0xdab2c00, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xdab2ba0 targets 0xdab2c3c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0xdab2bb0 targets 0xdab2bf8, is taken when a1 != at(=0x8095), and falls through when a1 == at(=0x8095).
  The `bne` branch at 0xdab2bc0 targets 0xdab2be4, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xdab2bc8 targets 0xdab2c2c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0xdab2bd4 targets 0xdab2bf8, is taken when a1 != at(=0x8063), and falls through when a1 == at(=0x8063).
  The `beq` branch at 0xdab2bf0 targets 0xdab2c48, is taken when a1 == v1(=0xde0), and falls through when a1 != v1(=0xde0).
  The `bne` branch at 0xdab2c0c targets 0xdab2bf8, is taken when a1 != a2(=0x806f), and falls through when a1 == a2(=0x806f).
  The return at 0xdab2bb8 has v0 = [a0+91320].
  The return at 0xdab2bdc has v0 = a0+83748.
  The return at 0xdab2bf8 has v0 = 0x0.
  The return at 0xdab2c14 has v0 = [a0+91316].
  The return at 0xdab2c24 has v0 = a0+86268.
  The return at 0xdab2c34 has v0 = [a0+91312].
  The return at 0xdab2c40 has v0 = a0+88788.
  The return at 0xdab2c48 has v0 = [a0+91308].

- `DownsampleTextureThruHW` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab4350 (n32).
  The routine reads fields of the global pointer block at +0x7ed8, +0x7ed4, +0x7ed0, +0x7f00, +0x7b20 and +0x168d0, and it calls __glOdysseyImageLogBase2 twice (0xdab448c, 0xdab44b8) and __glOdysseyImageCalcFieldFormat (0xdab4778). Its last call is __glOdysseyValidateHardware (0xdab4954). The facts do not show the downsample dispatch itself, so this reads as a preparation step, and the step that actually runs the downsample is not in the facts.
  Grade: inferred.
  Reviewed: 2026-11-12

- `__glOdysseyTextureDeactivate` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdab5590 (n32).
  The routine reads three fields of arg1 (+0x534, +0x53c, +0x540) and writes arg1 fields +0x538 and +0x558 through +0x594. It calls __glOdysseyClosePMObjReference twice (0xdab55b4, 0xdab563c) and calls __glSetError with code 0x505 at two sites (0xdab56b4, 0xdab56c8). Role (from name): releases a texture's reference to an object and clears its state fields. The field names are not in the facts, so the exact state cleared is open.
  Grade: inferred.
  Reviewed: 2026-11-12

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

- `__glOdyim_BindTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabbd10 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdabbd10-0xdabc010 (768 bytes).
  It occupies 768 bytes.
  The `lw` at 0xdabbd28 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdabbd44 loads 4 bytes from abs 0x1010.
  2 such `lw` accesses load 4 bytes from [0x1010] +0x164bc, including `lw` at 0xdabbe08, `lw` at 0xdabbf48.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdabbe1c, `lw` at 0xdabbe3c, `lw` at 0xdabbe40.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0xdabbe5c, `sw` at 0xdabbe70.
  The `lw` at 0xdabbe74 loads 4 bytes from [0x1010] +0x168d4.
  The `sw` at 0xdabbe7c stores 4 bytes to [0x1010] +0x168d4.
  The `sw` at 0xdabbe84 stores 4 bytes to abs 0x1018.
  The `lw` at 0xdabbe88 loads 4 bytes from [0x1010] +0x164c0.
  The `sw` at 0xdabbecc stores 4 bytes to [0x1010] +0x164c0.
  The `lw` at 0xdabbef0 loads 4 bytes from [0x1010] +0x0.
  The `lw` at 0xdabbf5c loads 4 bytes from ret(?) +0x0.
  The `sw` at 0xdabbf68 stores 4 bytes to ret(?) +0x0.
  The `jalr` at 0xdabbd74 calls __glSetError [0xdb11f10] with a0=0x500, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x2, a5=0xde1.
  The `jalr` at 0xdabbe04 calls __glNamesLockData [0xdb38050] with a0=[0x1010], a1=[[0x1010]+91324], a2=a1 at entry (arg1), a3=a3 at entry (arg3), a4=one of 0x2, 0xde0, a5=0xde1.
  The `jalr` at 0xdabbe50 calls __glNamesUnlockData [0xdb38c70] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `bgezall` at 0xdabbec4 calls __glOdysseyTextureDeactivate [0xdab5590] with a0=[0x1010], a1=[[0x1010]+91328], a2=?, a3=?, a4=0x116200.
  The `jalr` at 0xdabbefc calls (unknown callee) with a0=[0x1010], a1=0x9d8, a2=?, a3=?.
  The `jalr` at 0xdabbf24 calls InitTextureObject [0xdab25e0] with a0=ret(?), a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=?, a4=ret(?).
  The `jalr` at 0xdabbf44 calls __glNamesNewData [0xdb37aa0] with a0=[0x1010], a1=[[0x1010]+91324], a2=a1 at entry (arg1), a3=ret(?).
  The `jalr` at 0xdabbf78 calls __glSetError [0xdb11f10] with a0=0x502, a1=?, a2=?, a3=?.
  The `jalr` at 0xdabbfa4 calls __glSetError [0xdb11f10] with a0=0x505, a1=?, a2=?, a3=?, a4=ret(?).
  The `jalr` at 0xdabbfd0 calls __glSetError [0xdb11f10] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0xde0, a5=0xde1.
  The `beq` branch at 0xdabbd48 targets 0xdabbfc8, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xdabbd50 targets 0xdabbddc, is taken when s0(=a0) == a4(=0xde0), and falls through when s0(=a0) != a4(=0xde0).
  The `beq` branch at 0xdabbd58 targets 0xdabbed8, is taken when s0(=a0) == a5(=0xde1), and falls through when s0(=a0) != a5(=0xde1).
  The `beq` branch at 0xdabbd60 targets 0xdabbee4, is taken when s0(=a0) == at(=0x8095), and falls through when s0(=a0) != at(=0x8095).
  The `beq` branch at 0xdabbd68 targets 0xdabbd98, is taken when s0(=a0) == v1(=0x806f), and falls through when s0(=a0) != v1(=0x806f).
  The `bne` branch at 0xdabbd9c targets 0xdabbde8, is taken when s3(=a1) != 0, and falls through when s3(=a1) == 0.
  The `beq` branch at 0xdabbdd4 targets 0xdabbe14 and is always taken.
  The `beq` branch at 0xdabbddc targets 0xdabbda4, is taken when s3(=a1) == 0, and falls through when s3(=a1) != 0.
  The `beq` branch at 0xdabbe14 targets 0xdabbef0, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `bne` branch at 0xdabbe20 targets 0xdabbf6c, is taken when a4(?) != s0(=a0), and falls through when a4(?) == s0(=a0).
  The `beq` branch at 0xdabbe44 targets 0xdabbe5c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xdabbe8c targets 0xdabbe9c, is taken when a1(=[[0x1010]+91328]) == 0, and falls through when a1(=[[0x1010]+91328]) != 0.
  The `bne` branch at 0xdabbe94 targets 0xdabbeb8, is taken when a1(=[[0x1010]+91328]) != s2(?), and falls through when a1(=[[0x1010]+91328]) == s2(?).
  The `beq` branch at 0xdabbed0 targets 0xdabbe9c and is always taken.
  The `beq` branch at 0xdabbedc targets 0xdabbd9c and is always taken.
  The `beq` branch at 0xdabbee8 targets 0xdabbd9c and is always taken.
  The `beq` branch at 0xdabbf0c targets 0xdabbf9c, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0xdabbf54 targets 0xdabbff4, is taken when (v0(=ret(__glNamesNewData)) & 0xff) == 0, and falls through when (v0(=ret(__glNamesNewData)) & 0xff) != 0.
  The `beq` branch at 0xdabbf64 targets 0xdabbe2c and is always taken.
  The return at 0xdabbd90 has v0 = ret(__glSetError).
  The return at 0xdabbeb0 has v0 = one of ?, ret(__glOdysseyTextureDeactivate).
  The return at 0xdabbf94 has v0 = ret(__glSetError).
  The return at 0xdabbfc0 has v0 = ret(__glSetError).
  The return at 0xdabbfec has v0 = ret(__glSetError).
  The return at 0xdabc008 has v0 = ret(__glNamesNewData).

- `__glOdyim_DeleteTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabc010 (n32).
  Inferred: T, the word at abs 0x1010, is the context pointer, because the `__glSetError` note reads its context from the process-page word at address 4112 (0x1010); arg0 is a count and arg1 an array of 4-byte names, since the loop steps a pointer by 4 per name until it reaches arg1 plus arg0 shifted left 2 (`beq` at 0xdabc128).
  If the word at abs 0x1018 is 1 (`beq` at 0xdabc040) it calls `__glSetError` with 0x502 (`jalr` at 0xdabc278) and returns that value (`jr ra` at 0xdabc294).
  A negative count (`bltz` at 0xdabc048) calls `__glSetError` with 0x501 (`jalr` at 0xdabc258) and then continues like a zero count: a count of zero or less (`blez` at 0xdabc070) skips the loop and goes to the final step at 0xdabc1f8.
  For each name e, the routine loads the pointer P at T+0x164c0 (`lw` at 0xdabc130); if P is nonzero and the word at P+0x8 equals e (`beq` at 0xdabc144), it calls `__glOdysseyTextureDeactivate` with T and P (`bgezall` at 0xdabc1a4, always linking since its operand is the zero register) and then stores 0 to T+0x164c0 (`sw` at 0xdabc1ac).
  A nonzero e then scans four slots, a pointer starting at T+0x164ac and stepping 4 per pass for a pass counter that ends at 4 (`bne` at 0xdabc168); a slot whose object has the word at +0x8 equal to e (`beq` at 0xdabc15c) calls `__glNamesUnlockData` with T in a0 (`jalr` at 0xdabc0b0).
  On that match the slot is rewritten with the address of entry i in the table at T+0x11fc4, i being the pass counter (`sw` at 0xdabc0f4 and 0xdabc0f8, value built by the shifts at 0xdabc0b8 to 0xdabc0f4); the routine ORs 0x116200 into the word at T+0x168d0 (`lw` at 0xdabc100, `sw` at 0xdabc10c) and writes 2 to abs 0x1018 (`sw` at 0xdabc114).
  Inferred: consecutive names are batched, because the running value in s1 goes up by 1 per element (`addiu` at 0xdabc12c) and each element is compared with it (`bne` at 0xdabc11c); on a break the routine calls `__glNamesDeleteRange` with T, the word saved from T+0x164bc, the saved first value of the run in a2, and s1 minus that value in a3 (`jalr` at 0xdabc188 and 0xdabc1d0), then starts a new run from the current element.
  The final step makes the same `__glNamesDeleteRange` call for the last run (`jalr` at 0xdabc20c), ORs 0x200 into the word at T+0x168d4 (`lw` at 0xdabc21c, `sw` at 0xdabc228), writes 2 to abs 0x1018 (`sw` at 0xdabc23c) and returns the callee's value (`jr ra` at 0xdabc244).
  Unknown: the content of the routines `__glOdysseyTextureDeactivate` and `__glNamesUnlockData`, since no callee note covers them; their bodies would settle it.
  Evidence grade: inferred.

- `__glOdyim_DeleteTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabc010 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdabc010-0xdabc29c (652 bytes).
  It occupies 652 bytes.
  The `lw` at 0xdabc020 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdabc03c loads 4 bytes from abs 0x1010.
  The `lw` at 0xdabc058 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xdabc068 loads 4 bytes from [0x1010] +0x164bc.
  The `sw` at 0xdabc0f4 stores 4 bytes to table(0x164ac) +0x0.
  The `sw` at 0xdabc0f8 stores 4 bytes to ?.
  The `lw` at 0xdabc100 loads 4 bytes from [0x1010] +0x168d0.
  The `sw` at 0xdabc10c stores 4 bytes to [0x1010] +0x168d0.
  2 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xdabc114, `sw` at 0xdabc23c.
  7 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdabc118, `lw` at 0xdabc13c, `lw` at 0xdabc154.
  The `lw` at 0xdabc130 loads 4 bytes from [0x1010] +0x164c0.
  The `lw` at 0xdabc140 loads 4 bytes from [[0x1010]+91328] +0x8.
  The `sw` at 0xdabc1ac stores 4 bytes to [0x1010] +0x164c0.
  The `lw` at 0xdabc21c loads 4 bytes from [0x1010] +0x168d4.
  The `sw` at 0xdabc228 stores 4 bytes to [0x1010] +0x168d4.
  The `jalr` at 0xdabc0b0 calls __glNamesUnlockData [0xdb38c70] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xdabc188 calls __glNamesDeleteRange [0xdb391d0] with a0=[0x1010], a1=[[0x1010]+91324], a2=?, a3=?.
  The `bgezall` at 0xdabc1a4 calls __glOdysseyTextureDeactivate [0xdab5590] with a0=[0x1010], a1=[[0x1010]+91328], a2=?, a3=?.
  The `jalr` at 0xdabc1d0 calls __glNamesDeleteRange [0xdb391d0] with a0=[0x1010], a1=[[0x1010]+91324], a2=?, a3=?.
  The `jalr` at 0xdabc20c calls __glNamesDeleteRange [0xdb391d0] with a0=[0x1010], a1=[[0x1010]+91324], a2=?, a3=?.
  The `jalr` at 0xdabc258 calls __glSetError [0xdb11f10] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdabc278 calls __glSetError [0xdb11f10] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdabc040 targets 0xdabc270, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `bltz` branch at 0xdabc048 targets 0xdabc254, is taken when s5(=a0) < 0 (signed), and falls through when s5(=a0) >= 0 (signed).
  The `blez` branch at 0xdabc070 targets 0xdabc24c, is taken when s5(=a0) <= 0 (signed), and falls through when s5(=a0) > 0 (signed).
  The `beq` branch at 0xdabc0a0 targets 0xdabc130 and is always taken.
  The `bne` branch at 0xdabc11c targets 0xdabc178, is taken when a0(?) != s1(?), and falls through when a0(?) == s1(?).
  The `beq` branch at 0xdabc128 targets 0xdabc1e8, is taken when s0(?) == s8(=((a0 << 0x2) + a1)), and falls through when s0(?) != s8(=((a0 << 0x2) + a1)).
  The `beq` branch at 0xdabc138 targets 0xdabc14c, is taken when a1(=[[0x1010]+91328]) == 0, and falls through when a1(=[[0x1010]+91328]) != 0.
  The `beq` branch at 0xdabc144 targets 0xdabc1a0, is taken when v0(=[[[0x1010]+91328]+8]) == a0(?), and falls through when v0(=[[[0x1010]+91328]+8]) != a0(?).
  The `beq` branch at 0xdabc14c targets 0xdabc1bc, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0xdabc15c targets 0xdabc0b0, is taken when v1(?) == a0(?), and falls through when v1(?) != a0(?).
  The `bne` branch at 0xdabc168 targets 0xdabc154, is taken when s7(=0x4) != s6(?), and falls through when s7(=0x4) == s6(?).
  The `beq` branch at 0xdabc170 targets 0xdabc11c and is always taken.
  The `beq` branch at 0xdabc198 targets 0xdabc124 and is always taken.
  The `bne` branch at 0xdabc1b4 targets 0xdabc154, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xdabc1e0 targets 0xdabc124 and is always taken.
  The `beq` branch at 0xdabc24c targets 0xdabc1f8 and is always taken.
  The `beq` branch at 0xdabc268 targets 0xdabc050 and is always taken.
  The return at 0xdabc244 has v0 = ret(__glNamesDeleteRange).
  The return at 0xdabc294 has v0 = ret(__glSetError).
  The instructions from 0xdabc0a8 to 0xdabc0ac are not reached by any path from the entry, and their branches are not listed.

- `__glOdyim_GenTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabc2a0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdabc2a0-0xdabc358 (184 bytes).
  It occupies 184 bytes.
  The `lw` at 0xdabc2a8 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdabc2c0 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdabc2fc loads 4 bytes from [0x1010] +0x164bc.
  The `jalr` at 0xdabc2f8 calls __glNamesGenNames [0xdb39730] with a0=[0x1010], a1=[[0x1010]+91324], a2=a0 at entry (arg0), a3=a1 at entry (arg1), a5=[0x1010].
  The `jalr` at 0xdabc324 calls __glSetError [0xdb11f10] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1), a5=[0x1010].
  The `jalr` at 0xdabc340 calls __glSetError [0xdb11f10] with a0=0x501, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a1 at entry (arg1), a5=[0x1010].
  The `beq` branch at 0xdabc2c4 targets 0xdabc31c, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `bltz` branch at 0xdabc2cc targets 0xdabc33c, is taken when a2(=a0) < 0 (signed), and falls through when a2(=a0) >= 0 (signed).
  The `beq` branch at 0xdabc2d4 targets 0xdabc310, is taken when a3(=a1) == 0, and falls through when a3(=a1) != 0.
  The `beq` branch at 0xdabc2dc targets 0xdabc310, is taken when a2(=a0) == 0, and falls through when a2(=a0) != 0.
  The return at 0xdabc308 has v0 = ret(__glNamesGenNames).
  The return at 0xdabc314 has v0 = 0x1.
  The return at 0xdabc334 has v0 = ret(__glSetError).
  The return at 0xdabc350 has v0 = ret(__glSetError).

- `__glOdyim_AreTexturesResident` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabc3d0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdabc3d0-0xdabc5e0 (528 bytes).
  It occupies 528 bytes.
  The `lw` at 0xdabc3e8 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdabc404 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdabc44c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xdabc464 loads 4 bytes from [0x1010] +0x164bc.
  The `sb` at 0xdabc4a8 stores 1 byte to ?.
  The `lw` at 0xdabc4b8 loads 4 bytes from ?.
  The `jalr` at 0xdabc460 calls __glNamesLockData [0xdb38050] with a0=[0x1010], a1=[[0x1010]+91324], a2=?, a3=?.
  The `bgezall` at 0xdabc478 calls __glOdysseyIsTextureResident [0xdabc360] with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=?.
  The `jalr` at 0xdabc4a4 calls __glNamesUnlockData [0xdb38c70] with a0=[0x1010], a1=ret(__glNamesLockData), a2=one of 0x0, 0x1, a3=?, a4=0x1.
  The `jalr` at 0xdabc4f8 calls __glSetError [0xdb11f10] with a0=0x501, a1=?, a2=?, a3=?.
  The `jalr` at 0xdabc53c calls __glSetError [0xdb11f10] with a0=0x501, a1=?, a2=?, a3=?.
  The `jalr` at 0xdabc584 calls __glSetError [0xdb11f10] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdabc5b4 calls __glSetError [0xdb11f10] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdabc408 targets 0xdabc57c, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `bltz` branch at 0xdabc410 targets 0xdabc5b0, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `blez` branch at 0xdabc43c targets 0xdabc4bc, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0xdabc450 targets 0xdabc4f4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xdabc468 targets 0xdabc538, is taken when v0(=ret(__glNamesLockData)) == 0, and falls through when v0(=ret(__glNamesLockData)) != 0.
  The `bnel` branch at 0xdabc4b4 targets 0xdabc450, is taken when at(=((a0 << 0x2) + a1)) != s1(?), and falls through when at(=((a0 << 0x2) + a1)) == s1(?); its branch-likely delay slot `lw a2,0(s1)` at 0xdabc4b8 runs only when taken and is annulled on fall-through.
  The return at 0xdabc4ec has v0 = one of 0x0, 0x1.
  The return at 0xdabc530 has v0 = 0x0.
  The return at 0xdabc574 has v0 = 0x0.
  The return at 0xdabc5a8 has v0 = 0x0.
  The return at 0xdabc5d8 has v0 = 0x0.

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

- `__glOdyim_PrioritizeTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabc610 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdabc610-0xdabc794 (388 bytes).
  It occupies 388 bytes.
  The `lw` at 0xdabc624 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdabc640 loads 4 bytes from abs 0x1010.
  The `swc1` at 0xdabc6ac stores 4 bytes to ret(__glNamesLockData) +0x3c.
  The `lw` at 0xdabc6b8 loads 4 bytes from ?.
  The `lw` at 0xdabc6d0 loads 4 bytes from [0x1010] +0x164bc.
  The `lwc1` at 0xdabc6dc loads 4 bytes from [0x1010] +0xdd0.
  The `lwc1` at 0xdabc6f0 loads 4 bytes from ?.
  The `lw` at 0xdabc720 loads 4 bytes from [0x1010] +0x168d4.
  The `sw` at 0xdabc72c stores 4 bytes to [0x1010] +0x168d4.
  The `sw` at 0xdabc740 stores 4 bytes to abs 0x1018.
  The `jalr` at 0xdabc6a8 calls __glNamesUnlockData [0xdb38c70] with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=?.
  The `jalr` at 0xdabc6cc calls __glNamesLockData [0xdb38050] with a0=[0x1010], a1=[[0x1010]+91324], a2=?, a3=?.
  The `bgezall` at 0xdabc6ec calls (unnamed) [0xdabc5e0] with a0=?, a1=?, a2=?, a3=?; fp f13=0x0, f14=[[0x1010]+3536].
  The `jalr` at 0xdabc74c calls __glSetError [0xdb11f10] with a0=0x501, a1=0x120000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdabc770 calls __glSetError [0xdb11f10] with a0=0x502, a1=0x120000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdabc644 targets 0xdabc768, is taken when at(=[0x1018]) == v1(=0x1), and falls through when at(=[0x1018]) != v1(=0x1).
  The `bltz` branch at 0xdabc64c targets 0xdabc744, is taken when s4(=a0) < 0 (signed), and falls through when s4(=a0) >= 0 (signed).
  The `blez` branch at 0xdabc658 targets 0xdabc760, is taken when s4(=a0) <= 0 (signed), and falls through when s4(=a0) > 0 (signed).
  The `beq` branch at 0xdabc694 targets 0xdabc6b8 and is always taken.
  The `beq` branch at 0xdabc6b0 targets 0xdabc6fc, is taken when s1(?) == s3(=((a0 << 0x2) + a1)), and falls through when s1(?) != s3(=((a0 << 0x2) + a1)).
  The `beq` branch at 0xdabc6bc targets 0xdabc6b0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xdabc6d4 targets 0xdabc6b0, is taken when v0(=ret(__glNamesLockData)) == 0, and falls through when v0(=ret(__glNamesLockData)) != 0.
  The `beq` branch at 0xdabc6f4 targets 0xdabc6a0 and is always taken.
  The `beq` branch at 0xdabc758 targets 0xdabc654 and is always taken.
  The `beq` branch at 0xdabc760 targets 0xdabc714 and is always taken.
  The return at 0xdabc73c has v0 = ([[0x1010]+92372] | 0x200).
  The return at 0xdabc78c has v0 = ret(__glSetError).
  The instructions from 0xdabc69c to 0xdabc69c are not reached by any path from the entry, and their branches are not listed.

- `__glOdyim_IsTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabc7a0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdabc7a0-0xdabc870 (208 bytes).
  It occupies 208 bytes.
  The `lw` at 0xdabc7a4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdabc7c0 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdabc7ec loads 4 bytes from [0x1010] +0x164bc.
  The `jalr` at 0xdabc7e8 calls __glNamesLockData [0xdb38050] with a0=[0x1010], a1=[[0x1010]+91324], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xdabc814 calls __glNamesUnlockData [0xdb38c70] with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=?.
  The `jalr` at 0xdabc850 calls __glSetError [0xdb11f10] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdabc7c4 targets 0xdabc848, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xdabc7cc targets 0xdabc834, is taken when a2(=a0) == 0, and falls through when a2(=a0) != 0.
  The `bne` branch at 0xdabc7f0 targets 0xdabc80c, is taken when v0(=ret(__glNamesLockData)) != 0, and falls through when v0(=ret(__glNamesLockData)) == 0.
  The return at 0xdabc804 has v0 = 0x0.
  The return at 0xdabc82c has v0 = 0x1.
  The return at 0xdabc840 has v0 = 0x0.
  The return at 0xdabc868 has v0 = 0x0.

- `__glOdysseyGetHardwareShadow` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabc8f0 (n32).
  Inferred: request 0x6f64000c is the linked row `gfP_OdsySaveHwShadow`, and the string at 0xdbc1240 is
  a failure message for a save-hardware-shadow step, so the routine asks the board to save the hardware shadow for the
  context in a0 and has a failure path for that request.
  The `bgezall` at 0xdabc918 calls `__glOdysseyIoctl` with request 0x6f64000c, a0 as the first argument,
  the caller's a1 moved into a2, and the caller's a3 passed through in a3, and stores a0 at +8 of the frame in its
  delay slot.
  A negative result (`bltz` at 0xdabc920) takes the failure path, which loads the pointer at a0 +0x14
  (`lw` at 0xdabc93c) and calls through it with a0 and the string at 0xdbc1240 as a1 (`jalr` at
  0xdabc944); a non-negative result goes to the return at 0xdabc92c.
  The return at 0xdabc92c passes back v0 from either path, so the caller receives the ioctl's result or
  whatever the routine called through the pointer returned (the `beq` at 0xdabc94c always joins the
  return).
  Unknown: the routine behind the pointer at a0 +0x14, which has no entry in this bundle; its own entry
  settles it.
  The `bgezall` at 0xdabc918 tests the zero register, which is never negative, so the call is always made
  and its delay-slot store of a0 always runs.
  Evidence grade: inferred.

- `__glOdysseyGetHardwareShadow` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabc8f0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdabc8f0-0xdabc954 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0xdabc93c loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `bgezall` at 0xdabc918 calls __glOdysseyIoctl [0xdabc870] with a0=a0 at entry (arg0), a1=0x6f64000c, a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jalr` at 0xdabc944 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xdbc1240, a2=?, a3=?.
  The `bltz` branch at 0xdabc920 targets 0xdabc934, is taken when v0(=ret(__glOdysseyIoctl)) < 0 (signed), and falls through when v0(=ret(__glOdysseyIoctl)) >= 0 (signed).
  The `beq` branch at 0xdabc94c targets 0xdabc928 and is always taken.
  The return at 0xdabc92c has v0 = one of ret(__glOdysseyIoctl), ret(?).

- `__glOdysseyDriverMakeCurrent` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabd290 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdabd290-0xdabd504 (628 bytes).
  It occupies 628 bytes.
  The `lw` at 0xdabd2a0 loads 4 bytes from a0 (arg0 at entry) +0xcdc.
  The `lw` at 0xdabd2cc loads 4 bytes from a0 (arg0 at entry) +0xd7c.
  The `lbu` at 0xdabd2e0 loads 1 byte from a0 (arg0 at entry) +0xc8c.
  The `lbu` at 0xdabd2ec loads 1 byte from a0 (arg0 at entry) +0xd2c.
  The `sw` at 0xdabd32c stores 4 bytes to a0 (arg0 at entry) +0x16c50.
  The `sw` at 0xdabd334 stores 4 bytes to a0 (arg0 at entry) +0x16c54.
  The `sw` at 0xdabd33c stores 4 bytes to a0 (arg0 at entry) +0x16c58.
  The `sw` at 0xdabd344 stores 4 bytes to a0 (arg0 at entry) +0x16c5c.
  The `sw` at 0xdabd34c stores 4 bytes to a0 (arg0 at entry) +0x16c60.
  The `sw` at 0xdabd370 stores 4 bytes to a0 (arg0 at entry) +0x16c64.
  The `sw` at 0xdabd378 stores 4 bytes to a0 (arg0 at entry) +0x16c68.
  The `sw` at 0xdabd380 stores 4 bytes to a0 (arg0 at entry) +0x16c6c.
  The `sw` at 0xdabd38c stores 4 bytes to a0 (arg0 at entry) +0x16c70.
  The `sw` at 0xdabd39c stores 4 bytes to a0 (arg0 at entry) +0x16c74.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x16c78, including `sw` at 0xdabd3c4, `sw` at 0xdabd490.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x16c7c, including `sw` at 0xdabd3cc, `sw` at 0xdabd498.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x16c80, including `sw` at 0xdabd3d4, `sw` at 0xdabd4a0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x16c84, including `sw` at 0xdabd3dc, `sw` at 0xdabd4a8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x16c8c, including `sw` at 0xdabd3e4, `sw` at 0xdabd4b0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x16c90, including `sw` at 0xdabd3ec, `sw` at 0xdabd4b8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x16c94, including `sw` at 0xdabd3f4, `sw` at 0xdabd4c4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x16c98, including `sw` at 0xdabd3fc, `sw` at 0xdabd4e0.
  The `sw` at 0xdabd404 stores 4 bytes to a0 (arg0 at entry) +0x16ca0.
  The `sw` at 0xdabd40c stores 4 bytes to a0 (arg0 at entry) +0x16ca4.
  The `sw` at 0xdabd414 stores 4 bytes to a0 (arg0 at entry) +0x16ca8.
  The `sw` at 0xdabd41c stores 4 bytes to a0 (arg0 at entry) +0x16cac.
  The `sw` at 0xdabd424 stores 4 bytes to a0 (arg0 at entry) +0x16cb4.
  The `sw` at 0xdabd42c stores 4 bytes to a0 (arg0 at entry) +0x16cb8.
  The `sw` at 0xdabd434 stores 4 bytes to a0 (arg0 at entry) +0x16cbc.
  The `sw` at 0xdabd440 stores 4 bytes to a0 (arg0 at entry) +0x16cc0.
  The `lw` at 0xdabd444 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `bgezall` at 0xdabd30c calls __glOdysseyIoctl [0xdabc870] with a0=a0 at entry (arg0), a1=0x6f640008, a2=sp-128, a3=one of 0x0, 0x2.
  The `jalr` at 0xdabd450 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xdbc1298, a2=?, a3=?.
  The `jalr` at 0xdabd480 calls bzero with a0=a0+93304, a1=0x50, a2=?, a3=?.
  The `jalr` at 0xdabd4dc calls bzero with a0=a0+93344, a1=0x14, a2=?, a3=?.
  The `jalr` at 0xdabd4f4 calls bzero with a0=a0+93364, a1=0x14, a2=?, a3=?.
  The `blez` branch at 0xdabd2bc targets 0xdabd2cc, is taken when at(=[a0+3292]) <= 0 (signed), and falls through when at(=[a0+3292]) > 0 (signed).
  The `blez` branch at 0xdabd2d0 targets 0xdabd2e0, is taken when v1(=[a0+3452]) <= 0 (signed), and falls through when v1(=[a0+3452]) > 0 (signed).
  The `beq` branch at 0xdabd2e4 targets 0xdabd3ac, is taken when a1(=[a0+3212]:1) == 0, and falls through when a1(=[a0+3212]:1) != 0.
  The `beq` branch at 0xdabd2f0 targets 0xdabd3b4, is taken when at(=[a0+3372]:1) == 0, and falls through when at(=[a0+3372]:1) != 0.
  The `bltz` branch at 0xdabd314 targets 0xdabd444, is taken when v0(=ret(__glOdysseyIoctl)) < 0 (signed), and falls through when v0(=ret(__glOdysseyIoctl)) >= 0 (signed).
  The `beq` branch at 0xdabd358 targets 0xdabd470, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0xdabd360 targets 0xdabd490, is taken when a0(?) == at(=0x1), and falls through when a0(?) != at(=0x1).
  The `beq` branch at 0xdabd368 targets 0xdabd3c0, is taken when a0(?) == v0(=0x2), and falls through when a0(?) != v0(=0x2).
  The `beq` branch at 0xdabd3ac targets 0xdabd2ec and is always taken.
  The `beq` branch at 0xdabd3b8 targets 0xdabd2f8 and is always taken.
  The `beq` branch at 0xdabd43c targets 0xdabd36c and is always taken.
  The `beq` branch at 0xdabd488 targets 0xdabd36c and is always taken.
  The `beq` branch at 0xdabd4fc targets 0xdabd36c and is always taken.
  The return at 0xdabd3a4 has v0 = 0x1.
  The return at 0xdabd468 has v0 = 0x0.

- `__glOdysseySetDrawbuf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabd510 (n32).
  Sends a private board request for the context in a0 and then writes a fixed run of words to the one absolute
  address 0x4000 (base register zero), mixing constants with words copied from the context.
  The request: the four arguments a1 to a4 are each tested against zero (the `beq` at 0xdabd530, 0xdabd53c,
  0xdabd548 and 0xdabd554, with the re-tests at 0xdabd840, 0xdabd848 and 0xdabd850 entering the same chain at
  other points), and a word at sp+0 collects one bit per argument that is nonzero: 1 for a1, 2 for a2, 4 for a3
  and 8 for a4 (the `ori` steps at 0xdabd538, 0xdabd544, 0xdabd550 and 0xdabd560). It is zeroed at 0xdabd52c, and the
  `bgezall` at 0xdabd57c then calls `__glOdysseyIoctl` with a1 = 0x6f640009 (set in the delay slot at 0xdabd580)
  and a2 pointing at that word. A nonzero result (the `beq` at 0xdabd584 falls through) calls the function pointer at
  context +0x14 (the `lw` at 0xdabd58c, the `jalr` at 0xdabd598) with the string " can't set drawbuf" at
  0xdbc12b8 as its second argument; a zero result skips that. Either way the routine continues; the result is not
  returned.
  Writes to 0x4000: the sequence stores 0x10443, then 0xfa or 0x96, then 0x10046 words (for example 0xdabd5b8,
  0xdabd5c4, 0xdabd5cc), each such group preceded by a store of zero to context +0x9750 (the `sw` at 0xdabd5b0,
  0xdabd5e0, 0xdabd600). Bit 0x1b of the word at context +0x95c4 (loaded at 0xdabd614 and again at 0xdabd778)
  chooses between two forms, twice. When the bit is set the stores 0xdabd638 to 0xdabd68c (0x10841, 0x1204b,
  0xffffff and zeros, then 0x10840) and later 0xdabd79c to 0xdabd7e0 run; when it is clear the `beq` at 0xdabd630
  and 0xdabd794 skip them and a single store of 0xffffffff90008116 (0xdabd868 and 0xdabd880) is made instead.
  The words at context +0x95bc, +0x95c0, +0x95c4 and +0x95c8 are copied unchanged to 0x4000 at 0xdabd698, 0xdabd6a0,
  0xdabd6a8 and 0xdabd6b0 and again at 0xdabd7ec to 0xdabd804, and a later copy at 0xdabd724 ORs 0x800000 into the
  +0x95c4 word before storing it.
  The routine ends at 0xdabd838 with the store of 0x10046 in the delay slot, and returns the +0x95c4 word loaded
  at 0xdabd7f8.
  Inferred: the linked ioctl row for 0x6f640009 shows a private handler with a draw-buffer name, and the string at
  0xdbc12b8 reports failure to set the draw buffer, so the request asks the board to set the draw buffer.
  Unknown: which device or board window the absolute address 0x4000 falls in, and which fields of the word at
  +0x95c4 bit 0x1b and the 0x800000 bit belong to; no linked row or datasheet excerpt covers either.
  Evidence grade: inferred.

- `__glOdysseySetDrawbuf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdabd510 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdabd510-0xdabd884 (884 bytes).
  It occupies 884 bytes.
  The `lw` at 0xdabd58c loads 4 bytes from a0 (arg0 at entry) +0x14.
  10 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x9750, including `sw` at 0xdabd5b0, `sw` at 0xdabd5e0, `sw` at 0xdabd600.
  102 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdabd5b8, `sw` at 0xdabd5c4, `sw` at 0xdabd5cc.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x95c4, including `lw` at 0xdabd614, `lw` at 0xdabd6a4, `lw` at 0xdabd718.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x95bc, including `lw` at 0xdabd694, `lw` at 0xdabd6e8, `lw` at 0xdabd708.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x95c0, including `lw` at 0xdabd69c, `lw` at 0xdabd6f0, `lw` at 0xdabd710.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x95c8, including `lw` at 0xdabd6ac, `lw` at 0xdabd6fc, `lw` at 0xdabd728.
  The `bgezall` at 0xdabd57c calls __glOdysseyIoctl [0xdabc870] with a0=a0 at entry (arg0), a1=0x6f640009, a2=sp-80, a3=a3 at entry (arg3).
  The `jalr` at 0xdabd598 calls (unknown callee) with a0=a0 at entry (arg0), a1=0xdbc12b8, a2=?, a3=?.
  The `beq` branch at 0xdabd530 targets 0xdabd840, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0xdabd53c targets 0xdabd848, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0xdabd548 targets 0xdabd850, is taken when a3 == 0, and falls through when a3 != 0.
  The `beq` branch at 0xdabd554 targets 0xdabd568, is taken when a4 == 0, and falls through when a4 != 0.
  The `beq` branch at 0xdabd584 targets 0xdabd5a4, is taken when v0(=ret(__glOdysseyIoctl)) == 0, and falls through when v0(=ret(__glOdysseyIoctl)) != 0.
  The `beq` branch at 0xdabd630 targets 0xdabd860, is taken when (at(?) & 0x1) == 0, and falls through when (at(?) & 0x1) != 0.
  The `beq` branch at 0xdabd794 targets 0xdabd874, is taken when (a1(?) & 0x1) == 0, and falls through when (a1(?) & 0x1) != 0.
  The `bne` branch at 0xdabd840 targets 0xdabd544, is taken when a2 != 0, and falls through when a2 == 0.
  The `bne` branch at 0xdabd848 targets 0xdabd550, is taken when a3 != 0, and falls through when a3 == 0.
  The `beq` branch at 0xdabd850 targets 0xdabd56c, is taken when a4 == 0, and falls through when a4 != 0.
  The `beq` branch at 0xdabd858 targets 0xdabd560 and is always taken.
  The `beq` branch at 0xdabd86c targets 0xdabd690 and is always taken.
  The `beq` branch at 0xdabd87c targets 0xdabd7e4 and is always taken.
  The return at 0xdabd838 has v0 = [a0+38340].

- `__glOdyim_LoadMatrixf` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdac7150 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdac7150-0xdac71c4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdac7150 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdac7158 loads 4 bytes from abs 0x1018.
  The `jalr` at 0xdac7180 calls __glim_LoadMatrixf [0xdb7b340] with a0=a0 at entry (arg0), a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xdac7190 calls dirtyMatrix [0xdac6dd0] with a0=[0x1010], a1=?, a2=?, a3=?.
  The `jalr` at 0xdac71ac calls __glSetError [0xdb11f10] with a0=0x502, a1=[0x1010], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdac7174 targets 0xdac71a8, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The return at 0xdac71a0 has v0 = ret(dirtyMatrix).
  The return at 0xdac71bc has v0 = ret(__glSetError).

- `__glOdyim_LoadMatrixd` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdac71d0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdac71d0-0xdac7294 (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0xdac71dc loads 4 bytes from abs 0x1018.
  The `lw` at 0xdac71f8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdac7210 loads 4 bytes from [0x1010] +0x6d0.
  The `ldc1` at 0xdac7244 loads 8 bytes from a0 (arg0 at entry) +0x50.
  The `sdc1` at 0xdac7250 stores 8 bytes to [0x1010] +0x16690.
  The `ldc1` at 0xdac7254 loads 8 bytes from a0 (arg0 at entry) +0x58.
  The `sdc1` at 0xdac7258 stores 8 bytes to [0x1010] +0x16698.
  The `ldc1` at 0xdac725c loads 8 bytes from a0 (arg0 at entry) +0x70.
  The `sdc1` at 0xdac7260 stores 8 bytes to [0x1010] +0x166a0.
  The `ldc1` at 0xdac7264 loads 8 bytes from a0 (arg0 at entry) +0x78.
  The `sdc1` at 0xdac726c stores 8 bytes to [0x1010] +0x166a8.
  The `jalr` at 0xdac7208 calls __glim_LoadMatrixd [0xdb7b430] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xdac7224 calls (unnamed) [0xdac6dd0] with a0=[0x1010], a1=[[0x1010]+1744], a2=?, a3=?.
  The `jalr` at 0xdac7274 calls __glSetError [0xdb11f10] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdac71fc targets 0xdac7270, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xdac7218 targets 0xdac7244, is taken when a1(=[[0x1010]+1744]) == at(=0x1701), and falls through when a1(=[[0x1010]+1744]) != at(=0x1701).
  The `beq` branch at 0xdac7268 targets 0xdac721c and is always taken.
  The return at 0xdac723c has v0 = ret(0xdac6dd0).
  The return at 0xdac728c has v0 = ret(__glSetError).

- `__glOdysseyWindowToNormalizedEyeZ` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdac7ad0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdac7ad0-0xdac7b60 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xdac7af4 loads 4 bytes from abs 0x1010.
  The `ldc1` at 0xdac7b00 loads 8 bytes from [0x1010] +0x16660.
  The `ldc1` at 0xdac7b08 loads 8 bytes from [0x1010] +0x16668.
  The `bgezall` at 0xdac7af0 calls __glOdysseyWindowToEyeZ [0xdac7940] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bc1t` branch at 0xdac7b34 targets 0xdac7b54, is taken when f6 < f0(=0x0) (c.lt.d at 0xdac7b28), and falls through when not (f6 < f0(=0x0) (c.lt.d at 0xdac7b28)).
  The `beq` branch at 0xdac7b58 targets 0xdac7b44 and is always taken.
  The return at 0xdac7b4c has v0 = [0x1010]+65536.

- `__glOdysseySoftClipBeginTriangles` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdac95e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdac95e0-0xdac9614 (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0xdac95f4 stores 4 bytes to a0 (arg0 at entry) +0x30e8.
  The `lw` at 0xdac95fc loads 4 bytes from abs 0xdbdaaf8.
  The `lw` at 0xdac9600 loads 4 bytes from abs 0xdbda044.
  The `sw` at 0xdac9604 stores 4 bytes to a0 (arg0 at entry) +0x2e4c.
  The `sw` at 0xdac9610 stores 4 bytes to a0 (arg0 at entry) +0x2e04.
  The return at 0xdac960c has v0 = 0xdac95a0.

- `RGBSendFc` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaca820 (n32).
  A straight-line run of eleven stores to the absolute address 0x4000, with no calls and no branches.
  It opens with a header word whose top byte is 0x10 when the byte at +0xb8 of the argument (`lbu` at 0xdaca820) is zero and 0xf when it is not, shifted left 24 and ORed with 0x2000c02e (`sw` at 0xdaca848), then the constant 0xffffffffc580d015 (`sw` at 0xdaca850).
  Four words from the argument at +0x90, +0x94, +0x98 and +0x9c pass through $f2, $f1, $f0 and $f4 (`lwc1` at 0xdaca854, 0xdaca85c, 0xdaca864 and 0xdaca86c; `swc1` at 0xdaca858, 0xdaca860, 0xdaca868 and 0xdaca874).
  After the constant 0xffffffff8080d005 (`sw` at 0xdaca87c), the words at +0x10, +0x14, +0x18 and +0x1c pass through $f3, $f2, $f1 and $f0 (`swc1` at 0xdaca884, 0xdaca88c, 0xdaca894 and 0xdaca8a0).
  The return at 0xdaca89c gives v0 as 0xffffffffc580d015 and $f0 as the word at +0x1c.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the target of the stores to 0x4000 in this entry, since no linked row or excerpt matches that address and the windows at 0x110000 and 0x120000 do not contain it.
  Evidence grade: established.

- `RGBSendClippedBmFmTN` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacb950 (n32).
  The routine reads a byte flag at arg0 +0xb8, reads float fields at arg0 +0x90 through +0xac among others, and loads one float from abs 0xdbde448. It emits 95 stores to abs 0x4000 (20 word stores and 75 float stores). The return value is the constant 0xffffffff8080d005, and the facts do not explain it. Role (from name): sends a clipped bitmap in RGB form. The meaning of the 0x4000 window is unknown.
  Grade: inferred.
  Reviewed: 2026-11-12

- `RGBSendClippedBmFmTN` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacb950 (n32)
  **Inferred.** Reads a byte at a0+0xb8 and single-precision values from a0 at +0x10 to +0x1c, +0x30 to +0x3c, +0x90 to +0xac, +0xc0 to +0xc8 and +0x170 to +0x188, and makes no calls. A compare of [[0x1010]+1416] with 0x81fa at 0xdacb9d4 splits the code. The equal side branches to 0xdacbb18 and the other side runs to a return at 0xdacbb10 of 0xffffffff8080d005. Across both sides the render lists 75 single-precision and 20 word stores, with a base register it leaves unresolved, so those counts are not a per-path figure and the destination is not established. Role (from name): the name suggests a clipped bitmap send; the record layout and the meaning of the byte at +0xb8 are not traced.
  Reviewed: 2026-11-12

- `CISendFc` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacbc00 (n32).
  Writes eight words to the absolute address 0x4000 and makes no calls and no conditional branches.
  The first store writes a header word whose top byte is 0x10 when the byte at +0xb8 of the argument (`lbu` at 0xdacbc00) is zero and 0xf when it is not, shifted left 24 and ORed with 0x2000c02e (`sw` at 0xdacbc28); the second writes the constant 0xffffffffc580c407 (`sw` at 0xdacbc30).
  The word at +0x90 of the argument goes out through $f4 (`lwc1` at 0xdacbc34, `swc1` at 0xdacbc3c), then the constant 0xffffffff8080d005 is written (`sw` at 0xdacbc44), then the words at +0x10, +0x14, +0x18 and +0x1c go out through $f3, $f2, $f1 and $f0 (`swc1` at 0xdacbc4c, 0xdacbc54, 0xdacbc5c and 0xdacbc68).
  The return at 0xdacbc64 leaves v0 at 0xffffffffc580c407 and $f0 at the word at +0x1c, with the last store in its delay slot.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the device behind the absolute address 0x4000, given that the linked mmio rows cover the windows at 0x110000 and 0x120000 only and no datasheet excerpt covers 0x4000.
  Evidence grade: established.

- `CISendClippedBmFmN` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacc140 (n32).
  Role (from name): the color-index sibling of RGBSendClippedBmFmTN at 0xdacb950. The routine reads the same flag at arg0 +0xb8 and float fields at +0x10, +0x14, +0x18, +0x1c, +0x90, +0xa0, +0xc0, +0xc4 and +0xc8, and it emits 50 stores to abs 0x4000 (11 word and 39 float). It returns the same constant 0xffffffff8080d005. The reading of the flag as a mode switch is an inference from the sibling pair, not from the facts.
  Grade: inferred.
  Reviewed: 2026-11-12

- `CISendClippedBmFmN` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacc140 (n32).
  Evidence grade: inferred.
  The routine reads one byte at a0+0xb8 and a run of single-precision values from a0 at +0x10 to +0x1c, +0x90, +0xa0 and +0xc0 to +0xc8, plus one value from the fixed address 0xdbde448. It makes 11 integer and 39 single-precision stores to the fixed address 0x4000 in straight-line code with no calls. The render does not show the record layout, and what the byte at +0xb8 is used for is open. Role (from name): the name suggests a clipped bitmap send, so this is probably a per-primitive record going to a command port, but the facts do not name that port.
  Reviewed: 2026-11-12

- `__glOdysseySoftClipRenderTriangle` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacc500 (n32).
  Reads the board word at `a0`+0x570, the record pointer at `a0`+0x6d00 with the word beside it at
  `a0`+0x6d04, the word at `a0`+0x2e4c, and the table words at `a0`+0x19d8c to +0x19d94, and writes
  to absolute 0x4000 and to `a0`+0x9750. Two constant words, `0x14400` then `0x4`, go to absolute
  0x4000 first (the `sw` at 0xdacc514 and 0xdacc520), and only after that does the `bne` at 0xdacc554
  compare the word at `a0`+0x570 with 0x1d00. On equality, the `lw` at 0xdacc55c loads the word at
  `a0`+0x2e4c and the `sw` at 0xdacc560 overwrites it with the word at absolute 0xdbdbca0 (the `lw` at
  0xdacc550); the `jalr` at 0xdacc590 then calls through the record's +0x8 word, but only when the word
  at `a0`+0x6d04, ANDed with the complement of the record's +0x0 word, is nonzero (the `beq` at
  0xdacc57c). Further along that branch, the `sw` at 0xdacc59c stores the value read at
  0xdacc55c before the overwrite, and six calls through `a0`+0x19d90 and `a0`+0x19d94 run from the
  `jalr` at 0xdacc5a8 through the one at 0xdacc5f0. On inequality, three calls land on the table word
  at `a0`+0x19d8c (the `jalr` at 0xdacc618, 0xdacc628 and 0xdacc634), and the second and third get the
  entry `a2` and `a3` as their first argument. The common exit stores the constant 1 at `a0`+0x9750
  (the `sw` at 0xdacc658) and then writes `0x14001` to absolute 0x4000 from the delay slot of the `jr`
  at 0xdacc668 (the `sw` at 0xdacc66c).
  Unknown: the device response to the words written to absolute 0x4000, and the code behind each table
  word at `a0`+0x19d8c to +0x19d94; neither an mmio row nor a callee note answers either, so a datasheet
  excerpt for that address or notes for those callees would settle it.
  Evidence grade: established.

- `__glOdysseySoftClipRenderLine` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdacc7e0 (n32).
  Arguments are the context (a0) and two records (a1, a2); each record has a flag byte at +0x191, read at 0xdacc7e4
  for a1 and 0xdacc7e0 for a2. Unless a rejection test succeeds it writes 0x14400 and 1 and, at the end, 0x14001 to the one
  address 0x4000, and calls per-record routines through two pointers in the context, bracketed by
  `__glOdysseySetProgram` calls.
  Special case: if the whole word at +0x570 equals 0x1d00 (`beq` at 0xdacc834) the block at 0xdaccbac saves the
  word at +0x2e4c, overwrites it with the word loaded from the global at 0xdbdbca0 (`sw` at 0xdaccbb4) and, if the
  word at +0x6d04 has a bit set that is clear in the first word of the table that the word at +0x6d00 points to
  (the `beq` at 0xdaccbc8), calls the function at +0x8 of that table with a1 set to the table. It then writes the
  saved word back (`sw` at 0xdaccbf8), zeroes both flag bytes (0xdaccbf4 and the delay slot at 0xdaccc00) and joins
  the main path at 0xdacc83c.
  Early exit: the word at +0x7a90 is ANDed with 0x400000 and, when the result is zero, the `beq` at
  0xdacc860 sends the routine to the float block at 0xdacc9a8; with the bit set the stores start directly. The float
  block divides a double constant (the `ldc1` at 0xdacc85c) by a four-term product-sum of each record's words at
  +0x10 to +0x1c with the context words +0x94d8 to +0x94e4, narrows the quotient to single, and stores into each
  record the product-sum with the context words +0x94a8 to +0x94b4 times that reciprocal at +0x80 (`swc1` at 0xdacca30
  for a1 and 0xdacca6c for a2) and the product-sum with +0x94b8 to +0x94c4 times it at +0x84 (0xdaccb0c and
  0xdaccb44). Two groups of three compares follow, on the +0x80 values and then the +0x84 values: a double constant
  (loaded at 0xdacca78, 0x0 in the branch table) is at or below the context word at +0x19cac (+0x19cb0
  for the second group) plus a2's stored value, that sum is below the word at +0x19cb8, and a1's stored value is at
  or below the word at +0x19cb4 plus a2's stored value. The listing leaves a number of these float compares as raw words. If all three hold in a group the routine restores its registers and returns
  with no store to 0x4000 (0xdaccad0 and 0xdaccba4); any false compare (`bc1f` at 0xdacca84 to 0xdaccb80) sends it on to the
  stores at 0xdacc868.
  The writes to 0x4000 begin with 0x14400 (0xdacc868) and 1 (delay slot at 0xdacc870). After that the flag bytes pick the calls: a record with a nonzero flag is passed to the pointer at +0x19d8c, one with a zero flag to the pointer at
  +0x19d90. Both nonzero: the word at +0xa5c8 is stored to +0xa5bc and +0xa5b8 and +0x19d8c is called on a1 and a2.
  Otherwise `__glOdysseySetProgram` is called with index 1 around the zero-flag record or records, with 1 stored to
  +0xa5b8 or +0xa5bc (or both) and the +0xa5c8 word stored to the other, and called again with the +0xa5c8 word as
  index.
  Exit path at 0xdacc90c: stores 1 to +0x9750 (0xdacc918) and returns at 0xdacc938, with 0x14001 stored to 0x4000 in the
  delay slot at 0xdacc93c. v0 on the main return is the result of the last call, which the bundle does not resolve.
  Inferred: since a group of three true compares ends the routine before any write to 0x4000, the groups look like a
  trivial-reject check; nothing in the bundle beyond the control flow supports that reading.
  Unknown: what the double constant behind the `ldc1` at 0xdacc85c holds. Unknown: how the device responds to the words
  written to 0x4000, since no linked row or datasheet excerpt covers that address.
  Unknown: the code reached through the pointers at +0x19d8c and +0x19d90; it lies outside this bundle.
  Evidence grade: inferred.

- `__glOdysseySoftClipRenderPoint` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaccd80 (n32).
  Stores to the address 0x4000 on both sides of one indirect call, and after the call writes 1 to a0+0x9750 of the structure at a0; the call target is read from +0x19d8c of a0.
  Two words go to 0x4000 before the call: 0x14400 (`sw` at 0xdaccd90) and then zero (`sw` at 0xdaccd98), and the delay slot of the call at 0xdaccdc0 passes the entry a1 as its a0.
  After the call it stores 1 to a0+0x9750 (`sw` at 0xdaccde8), sets v0 to 0x14001 (at 0xdaccdec), and returns; the delay slot of the return (`sw` at 0xdaccdf4) writes that 0x14001 to 0x4000, so the value the call returned is overwritten and not returned.
  No strings are referenced, and the callee carries no committed note.
  Unknown: the content of the routine at the pointer read from +0x19d8c of a0, which the bundle does not contain.
  Unknown: the peripheral reply, if any, to the words stored at 0x4000 and at a0+0x9750; the bundle names no register at either place.
  Evidence grade: established.

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

- `__glReadPixelSpans` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdaeb170 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdaeb170-0xdaeb340 (464 bytes).
  It occupies 464 bytes.
  The `lw` at 0xdaeb198 loads 4 bytes from a0 (arg0 at entry) +0x12ec.
  The `lw` at 0xdaeb1a4 loads 4 bytes from a1 (arg1 at entry) +0xa8.
  The `lw` at 0xdaeb1a8 loads 4 bytes from a1 (arg1 at entry) +0x160.
  The `lw` at 0xdaeb1b0 loads 4 bytes from a1 (arg1 at entry) +0xac.
  The `lw` at 0xdaeb1cc loads 4 bytes from a1 (arg1 at entry) +0x164.
  The `lw` at 0xdaeb1dc loads 4 bytes from a0 (arg0 at entry) +0x7710.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xdaeb248, `lw` at 0xdaeb2d0.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x5c, including `lw` at 0xdaeb25c, `lw` at 0xdaeb264.
  The `lwc1` at 0xdaeb268 loads 4 bytes from a1 (arg1 at entry) +0xc0.
  The `lw` at 0xdaeb26c loads 4 bytes from a1 (arg1 at entry) +0x60.
  The `sw` at 0xdaeb278 stores 4 bytes to a1 (arg1 at entry) +0x5c.
  The `swc1` at 0xdaeb280 stores 4 bytes to a1 (arg1 at entry) +0xc0.
  The `sw` at 0xdaeb288 stores 4 bytes to a0 (arg0 at entry) +0x7710.
  The `jalr` at 0xdaeb258 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=[a1+92].
  The `jalr` at 0xdaeb29c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jalr` at 0xdaeb2e4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `blez` branch at 0xdaeb1f4 targets 0xdaeb31c, is taken when at(=[a1+172]) <= 0 (signed), and falls through when at(=[a1+172]) > 0 (signed).
  The `beq` branch at 0xdaeb230 targets 0xdaeb28c and is always taken.
  The `beq` branch at 0xdaeb284 targets 0xdaeb304, is taken when at(=[a1+172]) == s7(?), and falls through when at(=[a1+172]) != s7(?).
  The `beq` branch at 0xdaeb2b8 targets 0xdaeb240, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xdaeb2f4 targets 0xdaeb2d0, is taken when s3(?) != s5(=(([a1+352]-1 << 0x2) + a1)), and falls through when s3(?) == s5(=(([a1+352]-1 << 0x2) + a1)).
  The `beq` branch at 0xdaeb2fc targets 0xdaeb240 and is always taken.
  The return at 0xdaeb338 has v0 = s8.
  The instructions from 0xdaeb238 to 0xdaeb23c are not reached by any path from the entry, and their branches are not listed.

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

- `__glim_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb01540 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb01540-0xdb0172c (492 bytes).
  It occupies 492 bytes.
  The `lw` at 0xdb01544 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb0155c loads 4 bytes from abs 0x1010.
  2 such `lbu` accesses load 1 byte from [0x1010] +0xc8e, including `lbu` at 0xdb01580, `lbu` at 0xdb015dc.
  5 such `sw` accesses store 4 bytes to [0x1010] +0x760, including `sw` at 0xdb0158c, `sw` at 0xdb015ec, `sw` at 0xdb01608.
  The `sw` at 0xdb01590 stores 4 bytes to [0x1010] +0x764.
  The `sw` at 0xdb01598 stores 4 bytes to abs 0x1018.
  The `lw` at 0xdb0159c loads 4 bytes from [0x1010] +0x2d44.
  The `sw` at 0xdb015b0 stores 4 bytes to [0x1010] +0x2d44.
  4 such `lw` accesses load 4 bytes from [0x1010] +0xcd8, including `lw` at 0xdb01620, `lw` at 0xdb0169c, `lw` at 0xdb016f4.
  The `jalr` at 0xdb01660 calls __glSetError [0xdb11f10] with a0=0x500, a1=?, a2=[0x1010], a3=a3 at entry (arg3).
  The `jalr` at 0xdb016b4 calls __glSetError [0xdb11f10] with a0=0x502, a1=?, a2=[0x1010], a3=a3 at entry (arg3).
  The `jalr` at 0xdb01714 calls __glSetError [0xdb11f10] with a0=0x502, a1=?, a2=[0x1010], a3=a3 at entry (arg3).
  The `beq` branch at 0xdb01560 targets 0xdb0170c, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `bne` branch at 0xdb01568 targets 0xdb015b4, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0xdb01578 targets 0xdb0160c, is taken when a0 >= 0x407 (unsigned), and falls through when a0 < 0x407 (unsigned).
  The `bne` branch at 0xdb015b4 targets 0xdb015f0, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xdb015bc targets 0xdb015dc, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0xdb015c4 targets 0xdb016cc, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xdb015cc targets 0xdb01600, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0xdb015d4 targets 0xdb0165c, is taken when a0 != v1(=0x405), and falls through when a0 == v1(=0x405).
  The `beq` branch at 0xdb015e0 targets 0xdb016ac, is taken when a1(=[[0x1010]+3214]:1) == 0, and falls through when a1(=[[0x1010]+3214]:1) != 0.
  The `beq` branch at 0xdb015e8 targets 0xdb01590 and is always taken.
  The `bne` branch at 0xdb015f4 targets 0xdb0163c, is taken when a0 < 0x400 (unsigned), and falls through when a0 >= 0x400 (unsigned).
  The `beq` branch at 0xdb015fc targets 0xdb0164c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xdb01604 targets 0xdb01590 and is always taken.
  The `bne` branch at 0xdb01610 targets 0xdb01678, is taken when a0 < 0x40a (unsigned), and falls through when a0 >= 0x40a (unsigned).
  The `beq` branch at 0xdb01618 targets 0xdb016e0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xdb0162c targets 0xdb016b0, is taken when v1(=a0-1033) >= a1(=[[0x1010]+3288]) (signed), and falls through when v1(=a0-1033) < a1(=[[0x1010]+3288]) (signed).
  The `beq` branch at 0xdb01634 targets 0xdb01590 and is always taken.
  The `bne` branch at 0xdb0163c targets 0xdb0165c, is taken when a0 != 0, and falls through when a0 == 0.
  The `beq` branch at 0xdb01644 targets 0xdb01590 and is always taken.
  The `beq` branch at 0xdb01650 targets 0xdb016ac, is taken when a0 == at(=0x401), and falls through when a0 != at(=0x401).
  The `bne` branch at 0xdb0167c targets 0xdb016a0, is taken when a0 < 0x408 (unsigned), and falls through when a0 >= 0x408 (unsigned).
  The `bne` branch at 0xdb01684 targets 0xdb01580, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xdb01690 targets 0xdb0165c, is taken when a0 != a1(=0x409), and falls through when a0 == a1(=0x409).
  The `beq` branch at 0xdb01698 targets 0xdb01624 and is always taken.
  The `bne` branch at 0xdb016a4 targets 0xdb01658, is taken when a0 != at(=0x407), and falls through when a0 == at(=0x407).
  The `bne` branch at 0xdb016d0 targets 0xdb0165c, is taken when a0 != v0(=0x403), and falls through when a0 == v0(=0x403).
  The `beq` branch at 0xdb016d8 targets 0xdb016ac and is always taken.
  The `bne` branch at 0xdb016e0 targets 0xdb016f8, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xdb016e8 targets 0xdb0165c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xdb016f0 targets 0xdb01624 and is always taken.
  The `bne` branch at 0xdb016fc targets 0xdb0165c, is taken when a0 != at(=0x40b), and falls through when a0 == at(=0x40b).
  The `beq` branch at 0xdb01704 targets 0xdb01624 and is always taken.
  The return at 0xdb015ac has v0 = 0x2.
  The return at 0xdb01670 has v0 = ret(__glSetError).
  The return at 0xdb016c4 has v0 = ret(__glSetError).
  The return at 0xdb01724 has v0 = ret(__glSetError).

- `__glEarlyInitContext` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb10ac0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb10ac0-0xdb10c44 (388 bytes).
  It occupies 388 bytes.
  The `lw` at 0xdb10acc loads 4 bytes from a0 (arg0 at entry) +0xdfc.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0xdb10ae0, `lw` at 0xdb10b80, `lw` at 0xdb10b9c.
  The `sw` at 0xdb10b00 stores 4 bytes to a0 (arg0 at entry) +0x78.
  The `sw` at 0xdb10b04 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0xdb10b08 stores 4 bytes to a0 (arg0 at entry) +0x2d68.
  The `sw` at 0xdb10b0c stores 4 bytes to a0 (arg0 at entry) +0x2e38.
  The `sw` at 0xdb10b14 stores 4 bytes to a0 (arg0 at entry) +0x2dac.
  The `sw` at 0xdb10b1c stores 4 bytes to a0 (arg0 at entry) +0x8c.
  The `swc1` at 0xdb10b20 stores 4 bytes to a0 (arg0 at entry) +0xe68.
  The `swc1` at 0xdb10b24 stores 4 bytes to a0 (arg0 at entry) +0xe60.
  The `swc1` at 0xdb10b28 stores 4 bytes to a0 (arg0 at entry) +0xe64.
  The `swc1` at 0xdb10b2c stores 4 bytes to a0 (arg0 at entry) +0xe5c.
  The `swc1` at 0xdb10b30 stores 4 bytes to a0 (arg0 at entry) +0xdcc.
  The `swc1` at 0xdb10b34 stores 4 bytes to a0 (arg0 at entry) +0xdd0.
  The `lw` at 0xdb10b3c loads 4 bytes from a0 (arg0 at entry) +0xe48.
  The `lw` at 0xdb10b40 loads 4 bytes from a0 (arg0 at entry) +0xe44.
  The `sw` at 0xdb10b50 stores 4 bytes to a0 (arg0 at entry) +0x94.
  The `sw` at 0xdb10b5c stores 4 bytes to a0 (arg0 at entry) +0x90.
  The `swc1` at 0xdb10b70 stores 4 bytes to a0 (arg0 at entry) +0xe50.
  The `swc1` at 0xdb10b7c stores 4 bytes to a0 (arg0 at entry) +0xe4c.
  The `sw` at 0xdb10b8c stores 4 bytes to a0 (arg0 at entry) +0x6d78.
  The `sw` at 0xdb10b98 stores 4 bytes to a0 (arg0 at entry) +0x630.
  The `lw` at 0xdb10ba0 loads 4 bytes from a0 (arg0 at entry) +0xeb8.
  The `sw` at 0xdb10ba8 stores 4 bytes to a0 (arg0 at entry) +0x6d18.
  The `lw` at 0xdb10bc0 loads 4 bytes from a0 (arg0 at entry) +0xebc.
  The `sw` at 0xdb10bcc stores 4 bytes to a0 (arg0 at entry) +0x30d8.
  The `lw` at 0xdb10bd8 loads 4 bytes from a0 (arg0 at entry) +0xec0.
  The `sw` at 0xdb10be4 stores 4 bytes to a0 (arg0 at entry) +0x30e0.
  The `sw` at 0xdb10bf4 stores 4 bytes to a0 (arg0 at entry) +0x1314.
  The `sw` at 0xdb10c14 stores 4 bytes to a0 (arg0 at entry) +0x30b8.
  The `sw` at 0xdb10c1c stores 4 bytes to a0 (arg0 at entry) +0x30b4.
  The `sw` at 0xdb10c20 stores 4 bytes to a0 (arg0 at entry) +0x30b0.
  The `sw` at 0xdb10c2c stores 4 bytes to a0 (arg0 at entry) +0x30ac.
  The `jalr` at 0xdb10b78 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+3580], a2=0x74, a3=0xdb11b80, a4=0xdb47880, a5=0xd1548.
  The `jalr` at 0xdb10b94 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+3580], a2=0xe0, a3=?.
  The `jalr` at 0xdb10bb0 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+3768], a2=0x4, a3=?.
  The `jalr` at 0xdb10bc8 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+3772], a2=0x4, a3=?.
  The `jalr` at 0xdb10be0 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+3776], a2=0x4, a3=?.
  The `jalr` at 0xdb10bf0 calls __glEarlyInitTextureState [0xdb59860] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xdb10bfc calls __glEarlyInitTransformState [0xdb7adc0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xdb10c28 calls __glInitDlistState [0xdad4d70] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a6=0xdb35bb0, a7=0xdb35c60.
  The return at 0xdb10c3c has v0 = ret(__glInitDlistState).

- `__glChangeWindowSize` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb12190 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb12190-0xdb12290 (256 bytes).
  It occupies 256 bytes.
  The `lw` at 0xdb121a0 loads 4 bytes from a0 (arg0 at entry) +0x7718.
  The `sw` at 0xdb121a4 stores 4 bytes to a0 (arg0 at entry) +0xe70.
  The `sw` at 0xdb121ac stores 4 bytes to a0 (arg0 at entry) +0xe6c.
  The `lw` at 0xdb121bc loads 4 bytes from [a0+30488] +0x38.
  The `lbu` at 0xdb121d4 loads 1 byte from a0 (arg0 at entry) +0xc8e.
  The `lw` at 0xdb121e0 loads 4 bytes from a0 (arg0 at entry) +0x771c.
  The `lw` at 0xdb121e4 loads 4 bytes from [a0+30492] +0x38.
  The `lbu` at 0xdb121f4 loads 1 byte from a0 (arg0 at entry) +0xc90.
  The `lw` at 0xdb12200 loads 4 bytes from a0 (arg0 at entry) +0x79e8.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xc91, including `lbu` at 0xdb1220c, `lbu` at 0xdb1228c.
  The `lw` at 0xdb12218 loads 4 bytes from a0 (arg0 at entry) +0x798c.
  The `lbu` at 0xdb1222c loads 1 byte from a0 (arg0 at entry) +0xc92.
  The `lw` at 0xdb12238 loads 4 bytes from a0 (arg0 at entry) +0x7914.
  The `lw` at 0xdb1224c loads 4 bytes from a0 (arg0 at entry) +0x2de4.
  The `lw` at 0xdb12274 loads 4 bytes from a0 (arg0 at entry) +0x7a10.
  The `jalr` at 0xdb121cc calls (unknown callee) with a0=[a0+30488], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb121ec calls (unknown callee) with a0=[a0+30492], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xdb12224 calls (unknown callee) with a0=a0+31060, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xdb12244 calls (unknown callee) with a0=a0+30940, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xdb12258 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xdb12280 calls (unknown callee) with a0=a0+31192, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+31208].
  The `beq` branch at 0xdb121d8 targets 0xdb121f4, is taken when v0(=[a0+3214]:1) == 0, and falls through when v0(=[a0+3214]:1) != 0.
  The `beq` branch at 0xdb121f8 targets 0xdb1220c, is taken when v1(=[a0+3216]:1) == 0, and falls through when v1(=[a0+3216]:1) != 0.
  The `bne` branch at 0xdb12204 targets 0xdb12274, is taken when a3(=[a0+31208]) != 0, and falls through when a3(=[a0+31208]) == 0.
  The `beq` branch at 0xdb12210 targets 0xdb1222c, is taken when at(=[a0+3217]:1) == 0, and falls through when at(=[a0+3217]:1) != 0.
  The `beq` branch at 0xdb12230 targets 0xdb1224c, is taken when v0(=[a0+3218]:1) == 0, and falls through when v0(=[a0+3218]:1) != 0.
  The `beq` branch at 0xdb12288 targets 0xdb12210 and is always taken.
  The return at 0xdb1226c has v0 = ret(?).

- `__glChangeReadWindowSize` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb12290 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb12290-0xdb1229c (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0xdb12290 stores 4 bytes to a0 (arg0 at entry) +0xe78.
  The `sw` at 0xdb12298 stores 4 bytes to a0 (arg0 at entry) +0xe74.
  The return at 0xdb12294 has v0 = ?.

- `Resize` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb156e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb156e0-0xdb15724 (68 bytes).
  It occupies 68 bytes.
  The `sb` at 0xdb15714 stores 1 byte to a0 (arg0 at entry) +0x60.
  The `jalr` at 0xdb15700 calls __glResizeBuffer [0xdb0b530] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdb1571c has v0 = 0x1.

- `__glim_ResetHistogramEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb244e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb244e0-0xdb24594 (180 bytes).
  It occupies 180 bytes.
  The `lw` at 0xdb244e4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb244fc loads 4 bytes from abs 0x1010.
  The `lw` at 0xdb2453c loads 4 bytes from [0x1010] +0x4fc.
  The `lw` at 0xdb24544 loads 4 bytes from [0x1010] +0x4e0.
  The `lw` at 0xdb24554 loads 4 bytes from [0x1010] +0x4dc.
  The `jalr` at 0xdb24518 calls __glSetError [0xdb11f10] with a0=0x500, a1=0x8024, a2=[0x1010], a3=a3 at entry (arg3).
  The `jalr` at 0xdb24538 calls __glElementsPerGroup [0xdaf1160] with a0=[[0x1010]+1276], a1=0x8024, a2=[0x1010], a3=a3 at entry (arg3).
  The `jalr` at 0xdb2455c calls memset with a0=[[0x1010]+1244], a1=0x0, a2=?, a3=?.
  The `jalr` at 0xdb2457c calls __glSetError [0xdb11f10] with a0=0x502, a1=0x8024, a2=[0x1010], a3=a3 at entry (arg3).
  The `beq` branch at 0xdb24500 targets 0xdb24574, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xdb2450c targets 0xdb24530, is taken when a0 == a1(=0x8024), and falls through when a0 != a1(=0x8024).
  The return at 0xdb24528 has v0 = ret(__glSetError).
  The return at 0xdb2456c has v0 = ret(memset).
  The return at 0xdb2458c has v0 = ret(__glSetError).

- `__glResetArray` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb24b30 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb24b30-0xdb24ed0 (928 bytes).
  It occupies 928 bytes.
  The `lw` at 0xdb24cc0 loads 4 bytes from table(0xdbd3fc0) +0x0.
  The `bgezall` at 0xdb24c58 calls __glSetValue [0xdb24af0] with a0=?, a1=?, a2=a5 at entry (arg5), a3=?, a6=0xdbd3fc0; fp f13=f18.
  The `bgezall` at 0xdb24c6c calls __glSetValue [0xdb24af0] with a0=?, a1=?, a2=a5 at entry (arg5), a3=?; fp f13=f18.
  The `bgezall` at 0xdb24c80 calls __glSetValue [0xdb24af0] with a0=?, a1=?, a2=a5 at entry (arg5), a3=?; fp f13=f18.
  The `bgezall` at 0xdb24c94 calls __glSetValue [0xdb24af0] with a0=?, a1=?, a2=a5 at entry (arg5), a3=?; fp f13=f18.
  The `bgezall` at 0xdb24cd8 calls __glSetValue [0xdb24af0] with a0=?, a1=?, a2=a5 at entry (arg5), a3=?, a6=0xdbd3fc0; fp f13=f18.
  The `bgezall` at 0xdb24cec calls __glSetValue [0xdb24af0] with a0=?, a1=?, a2=a5 at entry (arg5), a3=?; fp f13=f18.
  The `bgezall` at 0xdb24d08 calls __glSetValue [0xdb24af0] with a0=?, a1=?, a2=a5 at entry (arg5), a3=?, a6=0xdbd3fc0; fp f13=f18.
  The `bgezall` at 0xdb24d24 calls __glSetValue [0xdb24af0] with a0=?, a1=?, a2=a5 at entry (arg5), a3=?, a6=0xdbd3fc0; fp f13=f18.
  The `beq` branch at 0xdb24b64 targets 0xdb24da4, is taken when a5 == at(=0x1405), and falls through when a5 != at(=0x1405).
  The `beq` branch at 0xdb24b70 targets 0xdb24e14, is taken when s5(=a5) == v1(=0x1406), and falls through when s5(=a5) != v1(=0x1406).
  The `beq` branch at 0xdb24b80 targets 0xdb24db0, is taken when a4(=0x1909) == a0, and falls through when a4(=0x1909) != a0.
  The `beq` branch at 0xdb24b8c targets 0xdb24e20, is taken when a0 == a6(=0x1906), and falls through when a0 != a6(=0x1906).
  The `beq` branch at 0xdb24b94 targets 0xdb24e30, is taken when a0 == at(=0x190a), and falls through when a0 != at(=0x190a).
  The `beq` branch at 0xdb24b9c targets 0xdb24e40, is taken when a0 == v0(=0x1907), and falls through when a0 != v0(=0x1907).
  The `beq` branch at 0xdb24ba4 targets 0xdb24e4c, is taken when a0 == v1(=0x1908), and falls through when a0 != v1(=0x1908).
  The `bne` branch at 0xdb24bb8 targets 0xdb24d6c, is taken when a1 < 0x1908 (unsigned), and falls through when a1 >= 0x1908 (unsigned).
  The `bne` branch at 0xdb24bc0 targets 0xdb24bd8, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xdb24bc8 targets 0xdb24df4, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0xdb24bd0 targets 0xdb24ea0, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xdb24be8 targets 0xdb24e5c, is taken when (t0(?) & a7(?)) == 0, and falls through when (t0(?) & a7(?)) != 0.
  The `beq` branch at 0xdb24c2c targets 0xdb24d40, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xdb24c40 targets 0xdb24ca4 and is always taken.
  The `beq` branch at 0xdb24c9c targets 0xdb24d34, is taken when s3(=a4) == s1(?), and falls through when s3(=a4) != s1(?).
  The `beq` branch at 0xdb24cb8 targets 0xdb24c9c, is taken when s2(?) >= 0x28 (unsigned), and falls through when s2(?) < 0x28 (unsigned).
  The `beq` branch at 0xdb24cf4 targets 0xdb24c9c and is always taken.
  The `beq` branch at 0xdb24d10 targets 0xdb24c9c and is always taken.
  The `beq` branch at 0xdb24d2c targets 0xdb24c9c and is always taken.
  The `bne` branch at 0xdb24d6c targets 0xdb24d88, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0xdb24d74 targets 0xdb24dd8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xdb24d80 targets 0xdb24be0 and is always taken.
  The `bne` branch at 0xdb24d88 targets 0xdb24dc0, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0xdb24d90 targets 0xdb24be0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xdb24d9c targets 0xdb24be0 and is always taken.
  The `beq` branch at 0xdb24da8 targets 0xdb24b74 and is always taken.
  The `beq` branch at 0xdb24db8 targets 0xdb24ba8 and is always taken.
  The `bne` branch at 0xdb24dc4 targets 0xdb24be0, is taken when a1 != a6(=0x1903), and falls through when a1 == a6(=0x1903).
  The `beq` branch at 0xdb24dd0 targets 0xdb24be0 and is always taken.
  The `bne` branch at 0xdb24dd8 targets 0xdb24e78, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xdb24de0 targets 0xdb24be0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xdb24dec targets 0xdb24be0 and is always taken.
  The `bne` branch at 0xdb24df8 targets 0xdb24e90, is taken when a1 < 0x190a (unsigned), and falls through when a1 >= 0x190a (unsigned).
  The `beq` branch at 0xdb24e00 targets 0xdb24be0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xdb24e0c targets 0xdb24be0 and is always taken.
  The `beq` branch at 0xdb24e18 targets 0xdb24b74 and is always taken.
  The `beq` branch at 0xdb24e28 targets 0xdb24ba8 and is always taken.
  The `beq` branch at 0xdb24e38 targets 0xdb24ba8 and is always taken.
  The `beq` branch at 0xdb24e44 targets 0xdb24ba8 and is always taken.
  The `beq` branch at 0xdb24e54 targets 0xdb24ba8 and is always taken.
  The `bne` branch at 0xdb24e7c targets 0xdb24be0, is taken when a1 != at(=0x1906), and falls through when a1 == at(=0x1906).
  The `beq` branch at 0xdb24e88 targets 0xdb24be0 and is always taken.
  The `bne` branch at 0xdb24e90 targets 0xdb24be0, is taken when a4(=0x1909) != a1, and falls through when a4(=0x1909) == a1.
  The `beq` branch at 0xdb24e98 targets 0xdb24dd0 and is always taken.
  The `bne` branch at 0xdb24ea4 targets 0xdb24ebc, is taken when a1 < a0(=0x80e1) (unsigned), and falls through when a1 >= a0(=0x80e1) (unsigned).
  The `bne` branch at 0xdb24eac targets 0xdb24be0, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xdb24eb4 targets 0xdb24bdc and is always taken.
  The `bne` branch at 0xdb24ec0 targets 0xdb24be0, is taken when a1 != a6(=0x80e0), and falls through when a1 == a6(=0x80e0).
  The `beq` branch at 0xdb24ec8 targets 0xdb24dec and is always taken.
  The return at 0xdb24d64 has v0 = ?.
  The return at 0xdb24e70 has v0 = ?.
  The instructions from 0xdb24c48 to 0xdb24c4c are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xdb24cc4 uses the jump table at 0xdbd3fc0 with targets 0xdb24c9c, 0xdb24c88, 0xdb24cfc, 0xdb24c9c, 0xdb24d18, 0xdb24c9c, 0xdb24c9c, 0xdb24c60, 0xdb24c88, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24cfc, 0xdb24c74, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24ce0, 0xdb24ccc, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c50.
  The indirect jump at 0xdb24cc4 uses the jump table at 0xdbd3fc0 with targets 0xdb24c9c, 0xdb24c88, 0xdb24cfc, 0xdb24c9c, 0xdb24d18, 0xdb24c9c, 0xdb24c9c, 0xdb24c60, 0xdb24c88, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24cfc, 0xdb24c74, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24ce0, 0xdb24ccc, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c9c, 0xdb24c50.

- `__glResetMinmax` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb25930 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb25930-0xdb25a94 (356 bytes).
  It occupies 356 bytes.
  The `lw` at 0xdb25938 loads 4 bytes from a0 (arg0 at entry) +0x55c.
  The `lwc1` at 0xdb2598c loads 4 bytes from abs 0xdbde490.
  18 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xdb259b8, `swc1` at 0xdb259d0, `swc1` at 0xdb259d4.
  The `lwc1` at 0xdb259fc loads 4 bytes from abs 0xdbde494.
  The `beq` branch at 0xdb25954 targets 0xdb25a70, is taken when a3(=[a0+1372]) == v0(=0x1906), and falls through when a3(=[a0+1372]) != v0(=0x1906).
  The `beq` branch at 0xdb2595c targets 0xdb25a70, is taken when a3(=[a0+1372]) == a1(=0x1909), and falls through when a3(=[a0+1372]) != a1(=0x1909).
  The `beq` branch at 0xdb25964 targets 0xdb25a7c, is taken when a3(=[a0+1372]) == a2(=0x190a), and falls through when a3(=[a0+1372]) != a2(=0x190a).
  The `beq` branch at 0xdb2596c targets 0xdb25a88, is taken when a3(=[a0+1372]) == v0(=0x1907), and falls through when a3(=[a0+1372]) != v0(=0x1907).
  The `blez` branch at 0xdb25990 targets 0xdb259f8, is taken when a6(?) <= 0 (signed), and falls through when a6(?) > 0 (signed).
  The `beq` branch at 0xdb259a4 targets 0xdb259bc, is taken when (a6(?) & 0x7) == 0, and falls through when (a6(?) & 0x7) != 0.
  The `bne` branch at 0xdb259b4 targets 0xdb259ac, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xdb259bc targets 0xdb259f8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xdb259f0 targets 0xdb259d0, is taken when a3(?) != a4(?), and falls through when a3(?) == a4(?).
  The `beq` branch at 0xdb25a00 targets 0xdb25a68, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xdb25a1c targets 0xdb25a34, is taken when (t1(?) & 0x7) == 0, and falls through when (t1(?) & 0x7) != 0.
  The `bne` branch at 0xdb25a2c targets 0xdb25a24, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0xdb25a34 targets 0xdb25a68, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xdb25a60 targets 0xdb25a40, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The `beq` branch at 0xdb25a74 targets 0xdb25984 and is always taken.
  The `beq` branch at 0xdb25a80 targets 0xdb25984 and is always taken.
  The `beq` branch at 0xdb25a8c targets 0xdb25984 and is always taken.
  The return at 0xdb25a68 has v0 = ?.

- `__glim_ResetMinmaxEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb25ba0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb25ba0-0xdb25c24 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xdb25ba4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb25bf0 loads 4 bytes from abs 0x1010.
  The `jalr` at 0xdb25bd0 calls __glSetError [0xdb11f10] with a0=0x500, a1=0x802e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xdb25bec calls __glResetMinmax [0xdb25930] with a0=[0x1010], a1=0x802e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb25c0c calls __glSetError [0xdb11f10] with a0=0x502, a1=0x802e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdb25bbc targets 0xdb25c04, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xdb25bc4 targets 0xdb25be8, is taken when a0 == a1(=0x802e), and falls through when a0 != a1(=0x802e).
  The return at 0xdb25be0 has v0 = ret(__glSetError).
  The return at 0xdb25bfc has v0 = ret(__glResetMinmax).
  The return at 0xdb25c1c has v0 = ret(__glSetError).

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

- `__glReadSpan` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb4a680 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb4a680-0xdb4a724 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0xdb4a6d4 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `jalr` at 0xdb4a6e8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=?.
  The `bltz` branch at 0xdb4a6bc targets 0xdb4a700, is taken when s2(=a4-1) < 0 (signed), and falls through when s2(=a4-1) >= 0 (signed).
  The `bne` branch at 0xdb4a6f0 targets 0xdb4a6d0, is taken when s2(?) != s5(=-0x1), and falls through when s2(?) == s5(=-0x1).
  The return at 0xdb4a71c has v0 = 0x0.

- `__glLookUpTextureParams` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb595d0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb595d0-0xdb59618 (72 bytes).
  It occupies 72 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9ac, including `lw` at 0xdb595f8, `lw` at 0xdb59608, `lw` at 0xdb5960c.
  The `beq` branch at 0xdb595d8 targets 0xdb59604, is taken when a1 == at(=0xde0), and falls through when a1 != at(=0xde0).
  The `beq` branch at 0xdb595e0 targets 0xdb5960c, is taken when a1 == v0(=0xde1), and falls through when a1 != v0(=0xde1).
  The `beq` branch at 0xdb595e8 targets 0xdb595f8, is taken when a1 == v1(=0x806f), and falls through when a1 != v1(=0x806f).
  The return at 0xdb595f0 has v0 = 0x0.
  The return at 0xdb595fc has v0 = [a0+2476]+448.
  The return at 0xdb59604 has v0 = [a0+2476].
  The return at 0xdb59610 has v0 = [a0+2476]+224.

- `__glLookUpTextureTexobjs` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb59620 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb59620-0xdb5966c (76 bytes).
  It occupies 76 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9ac, including `lw` at 0xdb59648, `lw` at 0xdb59654, `lw` at 0xdb59660.
  The `beq` branch at 0xdb59628 targets 0xdb59654, is taken when a1 == at(=0xde0), and falls through when a1 != at(=0xde0).
  The `beq` branch at 0xdb59630 targets 0xdb59660, is taken when a1 == v0(=0xde1), and falls through when a1 != v0(=0xde1).
  The `beq` branch at 0xdb59638 targets 0xdb59648, is taken when a1 == v1(=0x806f), and falls through when a1 != v1(=0x806f).
  The return at 0xdb59640 has v0 = 0x0.
  The return at 0xdb5964c has v0 = [a0+2476]+664.
  The return at 0xdb59658 has v0 = [a0+2476]+216.
  The return at 0xdb59664 has v0 = [a0+2476]+440.

- `__glLookUpTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb59670 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb59670-0xdb596fc (140 bytes).
  It occupies 140 bytes.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6d7c, including `lw` at 0xdb596b4, `lw` at 0xdb596c0, `lw` at 0xdb596cc.
  The `lw` at 0xdb596bc loads 4 bytes from [a0+28028] +0x14.
  The `lw` at 0xdb596c8 loads 4 bytes from [a0+28028] +0x0.
  The `lw` at 0xdb596d4 loads 4 bytes from [a0+28028] +0x4.
  The `lw` at 0xdb596e0 loads 4 bytes from [a0+28028] +0x8.
  The `lw` at 0xdb596ec loads 4 bytes from [a0+28028] +0xc.
  The `lw` at 0xdb596f8 loads 4 bytes from [a0+28028] +0x10.
  The `beq` branch at 0xdb5967c targets 0xdb596c0, is taken when a1 == at(=0xde0), and falls through when a1 != at(=0xde0).
  The `beq` branch at 0xdb59684 targets 0xdb596cc, is taken when a1 == v0(=0xde1), and falls through when a1 != v0(=0xde1).
  The `beq` branch at 0xdb5968c targets 0xdb596d8, is taken when a1 == v1(=0x806f), and falls through when a1 != v1(=0x806f).
  The `beq` branch at 0xdb59694 targets 0xdb596e4, is taken when a1 == a2(=0x8063), and falls through when a1 != a2(=0x8063).
  The `beq` branch at 0xdb5969c targets 0xdb596f0, is taken when a1 == at(=0x8064), and falls through when a1 != at(=0x8064).
  The `beq` branch at 0xdb596a4 targets 0xdb596b4, is taken when a1 == v0(=0x8070), and falls through when a1 != v0(=0x8070).
  The return at 0xdb596ac has v0 = 0x0.
  The return at 0xdb596b8 has v0 = [[a0+28028]+20].
  The return at 0xdb596c4 has v0 = [[a0+28028]].
  The return at 0xdb596d0 has v0 = [[a0+28028]+4].
  The return at 0xdb596dc has v0 = [[a0+28028]+8].
  The return at 0xdb596e8 has v0 = [[a0+28028]+12].
  The return at 0xdb596f4 has v0 = [[a0+28028]+16].

- `__glLookUpTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb59700 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb59700-0xdb5974c (76 bytes).
  It occupies 76 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x6d80, including `lw` at 0xdb59728, `lw` at 0xdb59734, `lw` at 0xdb59740.
  The `lw` at 0xdb59730 loads 4 bytes from [a0+28032] +0x8.
  The `lw` at 0xdb5973c loads 4 bytes from [a0+28032] +0x0.
  The `lw` at 0xdb59748 loads 4 bytes from [a0+28032] +0x4.
  The `beq` branch at 0xdb59708 targets 0xdb59734, is taken when a1 == at(=0xde0), and falls through when a1 != at(=0xde0).
  The `beq` branch at 0xdb59710 targets 0xdb59740, is taken when a1 == v0(=0xde1), and falls through when a1 != v0(=0xde1).
  The `beq` branch at 0xdb59718 targets 0xdb59728, is taken when a1 == v1(=0x806f), and falls through when a1 != v1(=0x806f).
  The return at 0xdb59720 has v0 = 0x0.
  The return at 0xdb5972c has v0 = [[a0+28032]+8].
  The return at 0xdb59738 has v0 = [[a0+28032]].
  The return at 0xdb59744 has v0 = [[a0+28032]+4].

- `__glReadTexImage` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb597c0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb597c0-0xdb597f4 (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0xdb597d4 loads 4 bytes from a0 (arg0 at entry) +0x3078.
  The `jalr` at 0xdb597dc calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdb597ec has v0 = ret(?).

- `__glTexInitTextureObject` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb59800 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb59800-0xdb5983c (60 bytes).
  It occupies 60 bytes.
  The `sw` at 0xdb59800 stores 4 bytes to a1 (arg1 at entry) +0xec.
  The `sb` at 0xdb59808 stores 1 byte to a1 (arg1 at entry) +0xc.
  The `sw` at 0xdb59810 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0xdb59818 loads 4 bytes from abs 0xdbdc138.
  The `lw` at 0xdb5981c loads 4 bytes from abs 0xdbdbe94.
  The `lw` at 0xdb59820 loads 4 bytes from abs 0xdbdbe98.
  The `sw` at 0xdb59824 stores 4 bytes to a1 (arg1 at entry) +0x10c.
  The `sw` at 0xdb59828 stores 4 bytes to a1 (arg1 at entry) +0x108.
  The `lwc1` at 0xdb5982c loads 4 bytes from abs 0xdbde444.
  The `sw` at 0xdb59830 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `swc1` at 0xdb59838 stores 4 bytes to a1 (arg1 at entry) +0xf0.
  The return at 0xdb59834 has v0 = 0xdb6c420.

- `__glim_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb5bdb0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb5bdb0-0xdb5be24 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdb5bdb4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb5bdcc loads 4 bytes from abs 0x1010.
  The `sb` at 0xdb5bdd8 stores 1 byte to [0x1010] +0x9d7.
  The `sb` at 0xdb5bddc stores 1 byte to [0x1010] +0x9d6.
  The `sb` at 0xdb5bde0 stores 1 byte to [0x1010] +0x9d5.
  The `sb` at 0xdb5bde4 stores 1 byte to [0x1010] +0x9d4.
  The `sw` at 0xdb5bde8 stores 4 bytes to abs 0x1018.
  The `lw` at 0xdb5bdec loads 4 bytes from [0x1010] +0x2d44.
  The `sw` at 0xdb5be00 stores 4 bytes to [0x1010] +0x2d44.
  The `jalr` at 0xdb5be0c calls __glSetError [0xdb11f10] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x2, a5=[0x1010].
  The `beq` branch at 0xdb5bdd0 targets 0xdb5be04, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The return at 0xdb5bdfc has v0 = 0x1.
  The return at 0xdb5be1c has v0 = ret(__glSetError).

- `__glTextureSBModulateA` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb63850 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb63850-0xdb638c0 (112 bytes).
  It occupies 112 bytes.
  The `lwc1` at 0xdb63850 loads 4 bytes from a0 (arg0 at entry) +0xdd0.
  The `lwc1` at 0xdb63860 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lw` at 0xdb63864 loads 4 bytes from a0 (arg0 at entry) +0x6d88.
  The `lwc1` at 0xdb63874 loads 4 bytes from [a0+28040] +0xb8.
  The `lwc1` at 0xdb63884 loads 4 bytes from [a0+28040] +0xc8.
  The `swc1` at 0xdb6389c stores 4 bytes to a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xdb638a0 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `swc1` at 0xdb638b0 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `bgezall` at 0xdb63890 calls __GL_TEXENV_CLAMP [0xdb63370] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f13=0x0, f14=[a0+3536], f15=[[a0+28040]+184], f16=[a2+16].
  The return at 0xdb638b8 has v0 = ret(__GL_TEXENV_CLAMP).

- `__glTextureSBReplaceA` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb648b0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb648b0-0xdb64928 (120 bytes).
  It occupies 120 bytes.
  The `lwc1` at 0xdb648b0 loads 4 bytes from a0 (arg0 at entry) +0xdd0.
  The `lwc1` at 0xdb648c4 loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lw` at 0xdb648c8 loads 4 bytes from a0 (arg0 at entry) +0x6d88.
  The `lwc1` at 0xdb648d8 loads 4 bytes from [a0+28040] +0xb8.
  The `lwc1` at 0xdb648e8 loads 4 bytes from [a0+28040] +0xc8.
  The `swc1` at 0xdb64904 stores 4 bytes to a2 (arg2 at entry) +0x10.
  The `lwc1` at 0xdb64908 loads 4 bytes from a0 (arg0 at entry) +0x77a0.
  The `swc1` at 0xdb64924 stores 4 bytes to a1 (arg1 at entry) +0xc.
  The `bgezall` at 0xdb648f4 calls __GL_TEXENV_CLAMP [0xdb63370] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3); fp f13=0x0, f14=[a0+3536], f15=[[a0+28040]+184], f16=[a2+16].
  The return at 0xdb64920 has v0 = ret(__GL_TEXENV_CLAMP).

- `__glim_GenTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb6c550 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb6c550-0xdb6c638 (232 bytes).
  It occupies 232 bytes.
  The `lw` at 0xdb6c55c loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb6c578 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdb6c5c4 loads 4 bytes from [0x1010] +0x6da0.
  The `jalr` at 0xdb6c5c0 calls __glNamesGenNames [0xdb39730] with a0=[0x1010], a1=[[0x1010]+28064], a2=a0 at entry (arg0), a3=a1 at entry (arg1), a5=[0x1010].
  The `jalr` at 0xdb6c5fc calls __glSetError [0xdb11f10] with a0=0x501, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0x1010].
  The `jalr` at 0xdb6c618 calls __glSetError [0xdb11f10] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[0x1010].
  The `beq` branch at 0xdb6c57c targets 0xdb6c610, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `bltz` branch at 0xdb6c584 targets 0xdb6c5f4, is taken when s0(=a0) < 0 (signed), and falls through when s0(=a0) >= 0 (signed).
  The `beq` branch at 0xdb6c58c targets 0xdb6c5e0, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `bne` branch at 0xdb6c594 targets 0xdb6c5b0, is taken when s1(=a1) != 0, and falls through when s1(=a1) == 0.
  The `beq` branch at 0xdb6c608 targets 0xdb6c58c and is always taken.
  The return at 0xdb6c5a8 has v0 = ?.
  The return at 0xdb6c5d8 has v0 = ret(__glNamesGenNames).
  The return at 0xdb6c5ec has v0 = ?.
  The return at 0xdb6c630 has v0 = ret(__glSetError).

- `__glim_BindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb6cb10 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb6cb10-0xdb6cc28 (280 bytes).
  It occupies 280 bytes.
  The `lw` at 0xdb6cb10 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdb6cb18 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb6cb78 loads 4 bytes from [0x1010] +0x2d60.
  2 such `sw` accesses store 4 bytes to abs 0x1018, including `sw` at 0xdb6cb84, `sw` at 0xdb6cbec.
  The `lw` at 0xdb6cbf8 loads 4 bytes from [0x1010] +0x2d44.
  The `sw` at 0xdb6cc0c stores 4 bytes to [0x1010] +0x2d44.
  The `jalr` at 0xdb6cb54 calls __glSetError [0xdb11f10] with a0=0x502, a1=a1 at entry (arg1), a2=a1 at entry (arg1), a3=a3 at entry (arg3), a4=[0x1018].
  The `jalr` at 0xdb6cb7c calls (unknown callee) with a0=[0x1010], a1=a1 at entry (arg1), a2=a1 at entry (arg1), a3=a3 at entry (arg3), a4=[0x1018].
  The `jalr` at 0xdb6cbb8 calls __glSetError [0xdb11f10] with a0=0x500, a1=0x2, a2=a1 at entry (arg1), a3=?.
  The `bgezall` at 0xdb6cbdc calls __glBindTexture [0xdb6c8b0] with a0=[0x1010], a1=one of 0x0, 0x1, 0x2, a2=a1 at entry (arg1), a3=?.
  The `beq` branch at 0xdb6cb38 targets 0xdb6cb90, is taken when a4(=[0x1018]) == 0, and falls through when a4(=[0x1018]) != 0.
  The `beq` branch at 0xdb6cb48 targets 0xdb6cb70, is taken when a4(=[0x1018]) == v0(=0x2), and falls through when a4(=[0x1018]) != v0(=0x2).
  The `beq` branch at 0xdb6cb9c targets 0xdb6cc10, is taken when s0(=a0) == at(=0xde0), and falls through when s0(=a0) != at(=0xde0).
  The `beq` branch at 0xdb6cba4 targets 0xdb6cc1c, is taken when s0(=a0) == v0(=0xde1), and falls through when s0(=a0) != v0(=0xde1).
  The `beq` branch at 0xdb6cbac targets 0xdb6cbd4, is taken when s0(=a0) == v1(=0x806f), and falls through when s0(=a0) != v1(=0x806f).
  The `beq` branch at 0xdb6cc14 targets 0xdb6cbd8 and is always taken.
  The `beq` branch at 0xdb6cc20 targets 0xdb6cbd8 and is always taken.
  The return at 0xdb6cb68 has v0 = ret(__glSetError).
  The return at 0xdb6cbcc has v0 = ret(__glSetError).
  The return at 0xdb6cc08 has v0 = ret(__glBindTexture).

- `__glim_PrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb6cc30 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb6cc30-0xdb6cde8 (440 bytes).
  It occupies 440 bytes.
  The `lw` at 0xdb6cc44 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb6cc60 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdb6ccd0 loads 4 bytes from ?.
  The `lw` at 0xdb6cce8 loads 4 bytes from [0x1010] +0x6da0.
  The `lwc1` at 0xdb6ccf4 loads 4 bytes from [0x1010] +0xdd0.
  The `lwc1` at 0xdb6cd08 loads 4 bytes from ?.
  The `swc1` at 0xdb6cd0c stores 4 bytes to ret(__glNamesLockData) +0xf0.
  2 such `lw` accesses load 4 bytes from ret(__glNamesLockData) +0x8, including `lw` at 0xdb6cd10, `lw` at 0xdb6cd38.
  The `lw` at 0xdb6cd14 loads 4 bytes from [0x1010] +0x6d7c.
  The `lw` at 0xdb6cd20 loads 4 bytes from ([[0x1010]+28028] + ([ret(__glNamesLockData)+8] << 0x2)) +0x0.
  The `lw` at 0xdb6cd24 loads 4 bytes from ret(__glNamesLockData) +0xec.
  The `lw` at 0xdb6cd28 loads 4 bytes from [([[0x1010]+28028] + ([ret(__glNamesLockData)+8] << 0x2))] +0xdc.
  The `swc1` at 0xdb6cd34 stores 4 bytes to [([[0x1010]+28028] + ([ret(__glNamesLockData)+8] << 0x2))] +0xe0.
  The `lw` at 0xdb6cd40 loads 4 bytes from [0x1010] +0x9ac.
  The `swc1` at 0xdb6cd54 stores 4 bytes to ?.
  The `jalr` at 0xdb6ccc0 calls __glNamesUnlockData [0xdb38c70] with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=?.
  The `jalr` at 0xdb6cce4 calls __glNamesLockData [0xdb38050] with a0=[0x1010], a1=[[0x1010]+28064], a2=?, a3=?.
  The `jalr` at 0xdb6cd04 calls (unnamed) [0xdb59750] with a0=?, a1=?, a2=?, a3=?; fp f13=0x0, f14=[[0x1010]+3536].
  The `jalr` at 0xdb6cda8 calls __glSetError [0xdb11f10] with a0=0x501, a1=0x70000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb6cdc4 calls __glSetError [0xdb11f10] with a0=0x502, a1=0x70000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdb6cc64 targets 0xdb6cdbc, is taken when at(=[0x1018]) == v1(=0x1), and falls through when at(=[0x1018]) != v1(=0x1).
  The `bltz` branch at 0xdb6cc6c targets 0xdb6cda0, is taken when s4(=a0) < 0 (signed), and falls through when s4(=a0) >= 0 (signed).
  The `beq` branch at 0xdb6cc74 targets 0xdb6cd88, is taken when s4(=a0) == 0, and falls through when s4(=a0) != 0.
  The `blez` branch at 0xdb6cc8c targets 0xdb6cd70, is taken when s4(=a0) <= 0 (signed), and falls through when s4(=a0) > 0 (signed).
  The `beq` branch at 0xdb6ccb0 targets 0xdb6ccd0 and is always taken.
  The `beq` branch at 0xdb6ccc8 targets 0xdb6cd58, is taken when s1(?) == s3(=((a0 << 0x2) + a1)), and falls through when s1(?) != s3(=((a0 << 0x2) + a1)).
  The `beq` branch at 0xdb6ccd4 targets 0xdb6ccc8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xdb6ccec targets 0xdb6ccc8, is taken when v0(=ret(__glNamesLockData)) == 0, and falls through when v0(=ret(__glNamesLockData)) != 0.
  The `bne` branch at 0xdb6cd2c targets 0xdb6ccbc, is taken when at(=[[([[0x1010]+28028] + ([ret(__glNamesLockData)+8] << 0x2))]+220]) != v1(=[ret(__glNamesLockData)+236]), and falls through when at(=[[([[0x1010]+28028] + ([ret(__glNamesLockData)+8] << 0x2))]+220]) == v1(=[ret(__glNamesLockData)+236]).
  The `beq` branch at 0xdb6cd50 targets 0xdb6ccb8 and is always taken.
  The `beq` branch at 0xdb6cdb4 targets 0xdb6cc74 and is always taken.
  The return at 0xdb6cd80 has v0 = one of a1, ?.
  The return at 0xdb6cd98 has v0 = a1.
  The return at 0xdb6cde0 has v0 = ret(__glSetError).

- `__glim_IsTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb6d0f0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb6d0f0-0xdb6d1b4 (196 bytes).
  It occupies 196 bytes.
  The `lw` at 0xdb6d0f4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb6d110 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdb6d130 loads 4 bytes from [0x1010] +0x6da0.
  The `jalr` at 0xdb6d12c calls __glNamesLockData [0xdb38050] with a0=[0x1010], a1=[[0x1010]+28064], a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0xdb6d158 calls __glNamesUnlockData [0xdb38c70] with a0=[0x1010], a1=ret(__glNamesLockData), a2=?, a3=?.
  The `jalr` at 0xdb6d194 calls __glSetError [0xdb11f10] with a0=0x502, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `beq` branch at 0xdb6d114 targets 0xdb6d18c, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `beq` branch at 0xdb6d11c targets 0xdb6d178, is taken when a2(=a0) == 0, and falls through when a2(=a0) != 0.
  The `bne` branch at 0xdb6d134 targets 0xdb6d150, is taken when v0(=ret(__glNamesLockData)) != 0, and falls through when v0(=ret(__glNamesLockData)) == 0.
  The return at 0xdb6d148 has v0 = 0x0.
  The return at 0xdb6d170 has v0 = 0x1.
  The return at 0xdb6d184 has v0 = 0x0.
  The return at 0xdb6d1ac has v0 = 0x0.

- `__glim_SelectTextureCoordSetSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb6dce0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb6dce0-0xdb6dd78 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0xdb6dce8 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb6dd00 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdb6dd14 loads 4 bytes from [0x1010] +0xe14.
  The `sw` at 0xdb6dd28 stores 4 bytes to [0x1010] +0x6d8c.
  The `jalr` at 0xdb6dd40 calls __glSetError [0xdb11f10] with a0=0x500, a1=?, a2=[0x1010], a3=0x83c7.
  The `jalr` at 0xdb6dd60 calls __glSetError [0xdb11f10] with a0=0x502, a1=?, a2=[0x1010], a3=0x83c7.
  The `beq` branch at 0xdb6dd04 targets 0xdb6dd58, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `bne` branch at 0xdb6dd0c targets 0xdb6dd3c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0xdb6dd20 targets 0xdb6dd3c, is taken when at(=[[0x1010]+3604]+33735) < a0 (unsigned), and falls through when at(=[[0x1010]+3604]+33735) >= a0 (unsigned).
  The return at 0xdb6dd30 has v0 = 0x1.
  The return at 0xdb6dd50 has v0 = ret(__glSetError).
  The return at 0xdb6dd70 has v0 = ret(__glSetError).
  The instructions from 0xdb6dd38 to 0xdb6dd38 are not reached by any path from the entry, and their branches are not listed.

- `__glim_InterleavedTextureCoordSetsSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb7a6b0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb7a6b0-0xdb7a73c (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xdb7a6b4 loads 4 bytes from abs 0x1018.
  The `lw` at 0xdb7a6c8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdb7a6dc loads 4 bytes from [0x1010] +0xe14.
  The `sw` at 0xdb7a6ec stores 4 bytes to [0x1010] +0x1524.
  The `jalr` at 0xdb7a704 calls __glSetError [0xdb11f10] with a0=0x501, a1=?, a2=[0x1010], a3=a3 at entry (arg3).
  The `jalr` at 0xdb7a724 calls __glSetError [0xdb11f10] with a0=0x502, a1=a1 at entry (arg1), a2=[0x1010], a3=a3 at entry (arg3).
  The `beq` branch at 0xdb7a6cc targets 0xdb7a71c, is taken when at(=[0x1018]) == v0(=0x1), and falls through when at(=[0x1018]) != v0(=0x1).
  The `blez` branch at 0xdb7a6d4 targets 0xdb7a700, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `bne` branch at 0xdb7a6e4 targets 0xdb7a700, is taken when a1(=[[0x1010]+3604]) < a0 (signed), and falls through when a1(=[[0x1010]+3604]) >= a0 (signed).
  The return at 0xdb7a6f4 has v0 = 0x1.
  The return at 0xdb7a714 has v0 = ret(__glSetError).
  The return at 0xdb7a734 has v0 = ret(__glSetError).
  The instructions from 0xdb7a6fc to 0xdb7a6fc are not reached by any path from the entry, and their branches are not listed.

- `__glReadjustZCounts` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb7c2d0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb7c2d0-0xdb7c36c (156 bytes).
  It occupies 156 bytes.
  The `lbu` at 0xdb7c2d4 loads 1 byte from a0 (arg0 at entry) +0x664.
  The `lbu` at 0xdb7c2f4 loads 1 byte from a0 (arg0 at entry) +0xc91.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x79a8, including `lw` at 0xdb7c300, `lw` at 0xdb7c324, `lw` at 0xdb7c34c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x79a4, including `lw` at 0xdb7c304, `lw` at 0xdb7c328.
  The `lw` at 0xdb7c310 loads 4 bytes from a0 (arg0 at entry) +0x79c0.
  The `sw` at 0xdb7c344 stores 4 bytes to abs 0x1018.
  The `lw` at 0xdb7c348 loads 4 bytes from a0 (arg0 at entry) +0x2d44.
  The `sw` at 0xdb7c354 stores 4 bytes to a0 (arg0 at entry) +0x2d44.
  The `sw` at 0xdb7c358 stores 4 bytes to a0 (arg0 at entry) +0x79a4.
  The `jalr` at 0xdb7c31c calls (unknown callee) with a0=a0 at entry (arg0), a1=a0+31060, a2=[a0+31144], a3=a3 at entry (arg3).
  The `beq` branch at 0xdb7c2ec targets 0xdb7c35c, is taken when at(=[a0+1636]:1) == 0, and falls through when at(=[a0+1636]:1) != 0.
  The `beq` branch at 0xdb7c2f8 targets 0xdb7c35c, is taken when v1(=[a0+3217]:1) == 0, and falls through when v1(=[a0+3217]:1) != 0.
  The `beq` branch at 0xdb7c308 targets 0xdb7c35c, is taken when a1(=[a0+31140]) == a2(=[a0+31144]), and falls through when a1(=[a0+31140]) != a2(=[a0+31144]).
  The `beq` branch at 0xdb7c33c targets 0xdb7c358, is taken when (at(?) & v0(=0xffffffff80000000)) == 0, and falls through when (at(?) & v0(=0xffffffff80000000)) != 0.
  The return at 0xdb7c364 has v0 = one of 0x65d38, ?.

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

- `__gllc_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb87fa0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb87fa0-0xdb8801c (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xdb87fb0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdb87ff8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdb88008 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdb87fcc calls __glDlistAllocOp2 [0xdad5f00] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb88004 calls __glDlistAppendOp [0xdad5f90] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xdb8f170, a3=a0 at entry (arg0).
  The `bne` branch at 0xdb87fd4 targets 0xdb87fe8, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The return at 0xdb87fe0 has v0 = ret(__glDlistAllocOp2).
  The return at 0xdb88014 has v0 = ret(__glDlistAppendOp).

- `__gllc_ResetHistogramEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb8abe0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb8abe0-0xdb8ac5c (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xdb8abf0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdb8ac38 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdb8ac48 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdb8ac0c calls __glDlistAllocOp2 [0xdad5f00] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb8ac44 calls __glDlistAppendOp [0xdad5f90] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xdb90720, a3=a0 at entry (arg0).
  The `bne` branch at 0xdb8ac14 targets 0xdb8ac28, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The return at 0xdb8ac20 has v0 = ret(__glDlistAllocOp2).
  The return at 0xdb8ac54 has v0 = ret(__glDlistAppendOp).

- `__gllc_ResetMinmaxEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb8ac60 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb8ac60-0xdb8acdc (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xdb8ac70 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdb8acb8 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdb8acc8 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdb8ac8c calls __glDlistAllocOp2 [0xdad5f00] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb8acc4 calls __glDlistAppendOp [0xdad5f90] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xdb90770, a3=a0 at entry (arg0).
  The `bne` branch at 0xdb8ac94 targets 0xdb8aca8, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The return at 0xdb8aca0 has v0 = ret(__glDlistAllocOp2).
  The return at 0xdb8acd4 has v0 = ret(__glDlistAppendOp).

- `__gllc_BindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb8ace0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb8ace0-0xdb8ad68 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0xdb8ace0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdb8ad38 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdb8ad48 stores 4 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0xdb8ad54 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdb8ad10 calls __glDlistAllocOp2 [0xdad5f00] with a0=[0x1010], a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb8ad50 calls __glDlistAppendOp [0xdad5f90] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xdb907c0, a3=a0 at entry (arg0), a4=a1 at entry (arg1).
  The `bne` branch at 0xdb8ad18 targets 0xdb8ad2c, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The return at 0xdb8ad24 has v0 = ret(__glDlistAllocOp2).
  The return at 0xdb8ad60 has v0 = ret(__glDlistAppendOp).

- `__gllc_PrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb8ad70 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb8ad70-0xdb8ae74 (260 bytes).
  It occupies 260 bytes.
  The `lw` at 0xdb8ad98 loads 4 bytes from abs 0x1010.
  The `sw` at 0xdb8adf4 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `sh` at 0xdb8ae00 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `jalr` at 0xdb8adb8 calls __glDlistAllocOp2 [0xdad5f00] with a0=[0x1010], a1=((a0 << 0x2) + (a0 << 0x2))+4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb8adfc calls memcpy with a0=ret(__glDlistAllocOp2)+20, a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=0xd5, a4=ret(__glDlistAllocOp2).
  The `jalr` at 0xdb8ae1c calls memcpy with a0=((a0 << 0x2) + ret(__glDlistAllocOp2))+20, a1=a2 at entry (arg2), a2=(a0 << 0x2), a3=ret(__glDlistAllocOp2).
  The `jalr` at 0xdb8ae30 calls __glDlistAppendOp [0xdad5f90] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xdb90810, a3=?.
  The `jalr` at 0xdb8ae54 calls __gllc_InvalidValue [0xdad6500] with a0=[0x1010], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bltz` branch at 0xdb8ad9c targets 0xdb8ae50, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `bne` branch at 0xdb8adc4 targets 0xdb8ade0, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The return at 0xdb8add8 has v0 = ret(__glDlistAllocOp2).
  The return at 0xdb8ae48 has v0 = ret(__glDlistAppendOp).
  The return at 0xdb8ae6c has v0 = ret(__gllc_InvalidValue).

- `__gllc_ReadInstrumentsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb8c0e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb8c0e0-0xdb8c15c (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xdb8c0f0 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdb8c138 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sw` at 0xdb8c148 stores 4 bytes to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdb8c10c calls __glDlistAllocOp2 [0xdad5f00] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb8c144 calls __glDlistAppendOp [0xdad5f90] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xdb910e0, a3=a0 at entry (arg0).
  The `bne` branch at 0xdb8c114 targets 0xdb8c128, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The return at 0xdb8c120 has v0 = ret(__glDlistAllocOp2).
  The return at 0xdb8c154 has v0 = ret(__glDlistAppendOp).

- `__gllc_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb8d360 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb8d360-0xdb8d400 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0xdb8d368 loads 4 bytes from abs 0x1010.
  The `sh` at 0xdb8d3c0 stores 2 bytes to ret(__glDlistAllocOp2) +0xc.
  The `sb` at 0xdb8d3d4 stores 1 byte to ret(__glDlistAllocOp2) +0x13.
  The `sb` at 0xdb8d3dc stores 1 byte to ret(__glDlistAllocOp2) +0x12.
  The `sb` at 0xdb8d3e0 stores 1 byte to ret(__glDlistAllocOp2) +0x11.
  The `sb` at 0xdb8d3ec stores 1 byte to ret(__glDlistAllocOp2) +0x10.
  The `jalr` at 0xdb8d398 calls __glDlistAllocOp2 [0xdad5f00] with a0=[0x1010], a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdb8d3e8 calls __glDlistAppendOp [0xdad5f90] with a0=[0x1010], a1=ret(__glDlistAllocOp2), a2=0xdb919c0, a3=a0 at entry (arg0), a4=a1 at entry (arg1), a5=a2 at entry (arg2), a6=a3 at entry (arg3).
  The `bne` branch at 0xdb8d3a0 targets 0xdb8d3b4, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The return at 0xdb8d3ac has v0 = ret(__glDlistAllocOp2).
  The return at 0xdb8d3f8 has v0 = ret(__glDlistAppendOp).

- `__glle_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb8f170 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb8f170-0xdb8f1b4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xdb8f184 loads 4 bytes from abs 0x1150.
  The `lw` at 0xdb8f198 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdb8f194 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdb8f1ac has v0 = a0+4.

- `__glle_ResetHistogramEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb90720 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb90720-0xdb90764 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xdb90734 loads 4 bytes from abs 0x1358.
  The `lw` at 0xdb90748 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdb90744 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdb9075c has v0 = a0+4.

- `__glle_ResetMinmaxEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb90770 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb90770-0xdb907b4 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xdb90784 loads 4 bytes from abs 0x135c.
  The `lw` at 0xdb90798 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdb90794 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdb907ac has v0 = a0+4.

- `__glle_BindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb907c0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb907c0-0xdb90808 (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xdb907c0 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0xdb907d8 loads 4 bytes from abs 0x1390.
  The `lw` at 0xdb907ec loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdb907e8 calls (unknown callee) with a0=[a0], a1=[a0+4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdb90800 has v0 = a0+8.

- `__glle_PrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb90810 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb90810-0xdb90880 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0xdb90828 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xdb90830 loads 4 bytes from abs 0x13a0.
  The `jalr` at 0xdb90850 calls (unknown callee) with a0=[a0], a1=a0+4, a2=(a0 + ([a0] << 0x2))+4, a3=([a0] << 0x2), a4=0x517f8.
  The return at 0xdb90878 has v0 = ((([a0] << 0x2) + ([a0] << 0x2)) + a0)+4.

- `__glle_ReadInstrumentsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb910e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb910e0-0xdb91124 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xdb910f4 loads 4 bytes from abs 0x1460.
  The `lw` at 0xdb91108 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdb91104 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdb9111c has v0 = a0+4.

- `__glle_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb919c0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb919c0-0xdb91a10 (80 bytes).
  It occupies 80 bytes.
  The `lbu` at 0xdb919c0 loads 1 byte from a0 (arg0 at entry) +0x3.
  The `lbu` at 0xdb919c4 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `lbu` at 0xdb919c8 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `lw` at 0xdb919e0 loads 4 bytes from abs 0x152c.
  The `lbu` at 0xdb919f4 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `jalr` at 0xdb919f0 calls (unknown callee) with a0=[a0]:1, a1=[a0+1]:1, a2=[a0+2]:1, a3=[a0+3]:1.
  The return at 0xdb91a08 has v0 = a0+4.

- `__glsplc_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb972a0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb972a0-0xdb972f8 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xdb972f4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdb972c4 calls __glSPDlalloc [0xda60f00] with a0=0x4, a1=0x7d, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xdb972cc targets 0xdb972e4, is taken when v0(=ret(__glSPDlalloc)) != 0, and falls through when v0(=ret(__glSPDlalloc)) == 0.
  The return at 0xdb972dc has v0 = ret(__glSPDlalloc).
  The return at 0xdb972f0 has v0 = ret(__glSPDlalloc).

- `__glsplc_ResetHistogramEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb99410 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb99410-0xdb99468 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xdb99464 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdb99434 calls __glSPDlalloc [0xda60f00] with a0=0x4, a1=0xce, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xdb9943c targets 0xdb99454, is taken when v0(=ret(__glSPDlalloc)) != 0, and falls through when v0(=ret(__glSPDlalloc)) == 0.
  The return at 0xdb9944c has v0 = ret(__glSPDlalloc).
  The return at 0xdb99460 has v0 = ret(__glSPDlalloc).

- `__glsplc_ResetMinmaxEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb99470 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb99470-0xdb994c8 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xdb994c4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdb99494 calls __glSPDlalloc [0xda60f00] with a0=0x4, a1=0xcf, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xdb9949c targets 0xdb994b4, is taken when v0(=ret(__glSPDlalloc)) != 0, and falls through when v0(=ret(__glSPDlalloc)) == 0.
  The return at 0xdb994ac has v0 = ret(__glSPDlalloc).
  The return at 0xdb994c0 has v0 = ret(__glSPDlalloc).

- `__glsplc_BindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb994d0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb994d0-0xdb99534 (100 bytes).
  It occupies 100 bytes.
  The `sw` at 0xdb99520 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `sw` at 0xdb99530 stores 4 bytes to ret(__glSPDlalloc) +0x4.
  The `jalr` at 0xdb994f8 calls __glSPDlalloc [0xda60f00] with a0=0x8, a1=0xd4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xdb99504 targets 0xdb9951c, is taken when v0(=ret(__glSPDlalloc)) != 0, and falls through when v0(=ret(__glSPDlalloc)) == 0.
  The return at 0xdb99514 has v0 = ret(__glSPDlalloc).
  The return at 0xdb9952c has v0 = ret(__glSPDlalloc).

- `__glsplc_PrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb99540 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb99540-0xdb995e8 (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0xdb995b4 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdb99578 calls __glSPDlalloc [0xda60f00] with a0=((a0 << 0x2) + (a0 << 0x2))+4, a1=0xd5, a2=a2 at entry (arg2), a3=0x48ac8.
  The `jalr` at 0xdb995b0 calls memcpy with a0=ret(__glSPDlalloc)+4, a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?, a4=a0 at entry (arg0), a5=ret(__glSPDlalloc).
  The `jalr` at 0xdb995d0 calls memcpy with a0=((a0 << 0x2) + ret(__glSPDlalloc))+4, a1=a2 at entry (arg2), a2=(a0 << 0x2), a3=ret(__glSPDlalloc).
  The `bne` branch at 0xdb99580 targets 0xdb99598, is taken when v0(=ret(__glSPDlalloc)) != 0, and falls through when v0(=ret(__glSPDlalloc)) == 0.
  The return at 0xdb99590 has v0 = ret(__glSPDlalloc).
  The return at 0xdb995e0 has v0 = ret(memcpy).

- `__glsplc_ReadInstrumentsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb9a430 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb9a430-0xdb9a488 (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xdb9a484 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0xdb9a454 calls __glSPDlalloc [0xda60f00] with a0=0x4, a1=0xf2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xdb9a45c targets 0xdb9a474, is taken when v0(=ret(__glSPDlalloc)) != 0, and falls through when v0(=ret(__glSPDlalloc)) == 0.
  The return at 0xdb9a46c has v0 = ret(__glSPDlalloc).
  The return at 0xdb9a480 has v0 = ret(__glSPDlalloc).

- `__glsplc_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdb9b230 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdb9b230-0xdb9b2ac (124 bytes).
  It occupies 124 bytes.
  The `sb` at 0xdb9b288 stores 1 byte to ret(__glSPDlalloc) +0x0.
  The `sb` at 0xdb9b28c stores 1 byte to ret(__glSPDlalloc) +0x2.
  The `sb` at 0xdb9b290 stores 1 byte to ret(__glSPDlalloc) +0x3.
  The `sb` at 0xdb9b2a8 stores 1 byte to ret(__glSPDlalloc) +0x1.
  The `jalr` at 0xdb9b260 calls __glSPDlalloc [0xda60f00] with a0=0x4, a1=0x111, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xdb9b26c targets 0xdb9b284, is taken when v0(=ret(__glSPDlalloc)) != 0, and falls through when v0(=ret(__glSPDlalloc)) == 0.
  The return at 0xdb9b27c has v0 = ret(__glSPDlalloc).
  The return at 0xdb9b2a4 has v0 = ret(__glSPDlalloc).

- `__glce_DrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdba1a20 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdba1a20-0xdba1a94 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdba1a20 loads 4 bytes from abs 0x1150.
  The `lw` at 0xdba1a40 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdba1a50 loads 4 bytes from [0x1010] +0x18f0.
  3 such `sw` accesses store 4 bytes to abs 0x1150, including `sw` at 0xdba1a5c, `sw` at 0xdba1a74, `sw` at 0xdba1a84.
  The `lw` at 0xdba1a68 loads 4 bytes from [0x1010] +0x2728.
  The `jalr` at 0xdba1a58 calls glDrawBuffer with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdba1a70 calls glDrawBuffer with a0=a0 at entry (arg0), a1=[[0x1010]+10024], a2=?, a3=?.
  The return at 0xdba1a8c has v0 = ret(glDrawBuffer).

- `__glce_ResetHistogramEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdba5780 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdba5780-0xdba57f4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdba5780 loads 4 bytes from abs 0x1358.
  The `lw` at 0xdba57a0 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdba57b0 loads 4 bytes from [0x1010] +0x1af8.
  3 such `sw` accesses store 4 bytes to abs 0x1358, including `sw` at 0xdba57bc, `sw` at 0xdba57d4, `sw` at 0xdba57e4.
  The `lw` at 0xdba57c8 loads 4 bytes from [0x1010] +0x2930.
  The `jalr` at 0xdba57b8 calls glResetHistogramEXT with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdba57d0 calls glResetHistogramEXT with a0=a0 at entry (arg0), a1=[[0x1010]+10544], a2=?, a3=?.
  The return at 0xdba57ec has v0 = ret(glResetHistogramEXT).

- `__glce_ResetMinmaxEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdba5800 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdba5800-0xdba5874 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdba5800 loads 4 bytes from abs 0x135c.
  The `lw` at 0xdba5820 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdba5830 loads 4 bytes from [0x1010] +0x1afc.
  3 such `sw` accesses store 4 bytes to abs 0x135c, including `sw` at 0xdba583c, `sw` at 0xdba5854, `sw` at 0xdba5864.
  The `lw` at 0xdba5848 loads 4 bytes from [0x1010] +0x2934.
  The `jalr` at 0xdba5838 calls glResetMinmaxEXT with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdba5850 calls glResetMinmaxEXT with a0=a0 at entry (arg0), a1=[[0x1010]+10548], a2=?, a3=?.
  The return at 0xdba586c has v0 = ret(glResetMinmaxEXT).

- `__glce_AreTexturesResidentEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdba5c80 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdba5c80-0xdba5cd0 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xdba5c88 loads 4 bytes from abs 0x138c.
  The `lw` at 0xdba5c98 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdba5ca8 loads 4 bytes from [0x1010] +0x2964.
  2 such `sw` accesses store 4 bytes to abs 0x138c, including `sw` at 0xdba5cb0, `sw` at 0xdba5cc0.
  The `jalr` at 0xdba5cac calls glAreTexturesResidentEXT with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdba5cc8 has v0 = ?.

- `__glce_BindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdba5cd0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdba5cd0-0xdba5d4c (124 bytes).
  It occupies 124 bytes.
  The `lw` at 0xdba5cd0 loads 4 bytes from abs 0x1390.
  The `lw` at 0xdba5cf4 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdba5d04 loads 4 bytes from [0x1010] +0x1b30.
  3 such `sw` accesses store 4 bytes to abs 0x1390, including `sw` at 0xdba5d10, `sw` at 0xdba5d2c, `sw` at 0xdba5d3c.
  The `lw` at 0xdba5d20 loads 4 bytes from [0x1010] +0x2968.
  The `jalr` at 0xdba5d0c calls glBindTextureEXT with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdba5d28 calls glBindTextureEXT with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[[0x1010]+10600], a3=?.
  The return at 0xdba5d44 has v0 = ret(glBindTextureEXT).

- `__glce_DeleteTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdba5d50 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdba5d50-0xdba5d9c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xdba5d58 loads 4 bytes from abs 0x1394.
  The `lw` at 0xdba5d68 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdba5d78 loads 4 bytes from [0x1010] +0x296c.
  2 such `sw` accesses store 4 bytes to abs 0x1394, including `sw` at 0xdba5d80, `sw` at 0xdba5d8c.
  The `jalr` at 0xdba5d7c calls glDeleteTexturesEXT with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdba5d94 has v0 = ret(glDeleteTexturesEXT).

- `__glce_GenTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdba5da0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdba5da0-0xdba5dec (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0xdba5da8 loads 4 bytes from abs 0x1398.
  The `lw` at 0xdba5db8 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdba5dc8 loads 4 bytes from [0x1010] +0x2970.
  2 such `sw` accesses store 4 bytes to abs 0x1398, including `sw` at 0xdba5dd0, `sw` at 0xdba5ddc.
  The `jalr` at 0xdba5dcc calls glGenTexturesEXT with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdba5de4 has v0 = ret(glGenTexturesEXT).

- `__glce_IsTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdba5df0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdba5df0-0xdba5e40 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0xdba5df8 loads 4 bytes from abs 0x139c.
  The `lw` at 0xdba5e08 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdba5e18 loads 4 bytes from [0x1010] +0x2974.
  2 such `sw` accesses store 4 bytes to abs 0x139c, including `sw` at 0xdba5e20, `sw` at 0xdba5e30.
  The `jalr` at 0xdba5e1c calls glIsTextureEXT with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdba5e38 has v0 = ?.

- `__glce_PrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdba5e40 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdba5e40-0xdba5ec4 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0xdba5e40 loads 4 bytes from abs 0x13a0.
  The `lw` at 0xdba5e68 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdba5e78 loads 4 bytes from [0x1010] +0x1b40.
  3 such `sw` accesses store 4 bytes to abs 0x13a0, including `sw` at 0xdba5e84, `sw` at 0xdba5ea4, `sw` at 0xdba5eb4.
  The `lw` at 0xdba5e98 loads 4 bytes from [0x1010] +0x2978.
  The `jalr` at 0xdba5e80 calls glPrioritizeTexturesEXT with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdba5ea0 calls glPrioritizeTexturesEXT with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[[0x1010]+10616].
  The return at 0xdba5ebc has v0 = ret(glPrioritizeTexturesEXT).

- `__glce_ReadInstrumentsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdba75b0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdba75b0-0xdba7624 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0xdba75b0 loads 4 bytes from abs 0x1460.
  The `lw` at 0xdba75d0 loads 4 bytes from abs 0x1010.
  The `lw` at 0xdba75e0 loads 4 bytes from [0x1010] +0x1c00.
  3 such `sw` accesses store 4 bytes to abs 0x1460, including `sw` at 0xdba75ec, `sw` at 0xdba7604, `sw` at 0xdba7614.
  The `lw` at 0xdba75f8 loads 4 bytes from [0x1010] +0x2a38.
  The `jalr` at 0xdba75e8 calls glReadInstrumentsSGIX with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdba7600 calls glReadInstrumentsSGIX with a0=a0 at entry (arg0), a1=[[0x1010]+10808], a2=?, a3=?.
  The return at 0xdba761c has v0 = ret(glReadInstrumentsSGIX).

- `__glce_TextureColorMaskSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdba8d20 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdba8d20-0xdba8dac (140 bytes).
  It occupies 140 bytes.
  The `lw` at 0xdba8d20 loads 4 bytes from abs 0x152c.
  The `lw` at 0xdba8d4c loads 4 bytes from abs 0x1010.
  The `lw` at 0xdba8d5c loads 4 bytes from [0x1010] +0x1ccc.
  3 such `sw` accesses store 4 bytes to abs 0x152c, including `sw` at 0xdba8d68, `sw` at 0xdba8d8c, `sw` at 0xdba8d9c.
  The `lw` at 0xdba8d80 loads 4 bytes from [0x1010] +0x2b04.
  The `jalr` at 0xdba8d64 calls glTextureColorMaskSGIS with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xdba8d88 calls glTextureColorMaskSGIS with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[0x1010]+11012].
  The return at 0xdba8da4 has v0 = ret(glTextureColorMaskSGIS).

- `__glOdysseyElementsInt_V3F` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbabe68 (n32).
  Feeds elements selected through an index array to the absolute address 0x4000, one pass per index. a1 points at 32-bit
  indices and a2 at a table of 12-byte elements; each pass loads the next index (`lw` at 0xdbabe8c), multiplies it
  by 0xc (set at 0xdbabe84) and adds a2, then reads the three words at offsets 0, 4 and 8 of that element
  (`lw`s at 0xdbabe9c, 0xdbabea0, 0xdbabea4).
  Each pass ends in four word stores to 0x4000: the constant 0xffffffff8080cc03 (low 32 bits, `sw` at
  0xdbabea8, built at 0xdbabe7c and 0xdbabe80), then the three element words unchanged (`sw`s at 0xdbabeac,
  0xdbabeb0, 0xdbabeb4).
  Passes repeat on the `bne` at 0xdbabeb8 while a0, decremented at the top of each pass, is nonzero; a1 steps 4
  bytes in its delay slot at 0xdbabebc; the pass count is a0 at entry, and a0 equal to zero wraps and loops
  about 2^32 times. The return does not assign v0.
  Inferred: the four back-to-back stores to one fixed address look like a header word followed by three data
  words pushed into a hardware port, since the bundle's access list marks 0x4000 as an address outside the
  file; the bundle's linked board windows (0x110000 and 0x120000) do not include it.
  Unknown: which register the address 0x4000 names; the board's register table would settle it.
  Evidence grade: inferred.

- `glDrawBuffer` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbaccb0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbaccb0-0xdbaccbc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbaccb0 loads 4 bytes from abs 0x1150.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbaccb4).

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

- `glGetHistogramParameterivEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad280 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad280-0xdbad28c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad280 loads 4 bytes from abs 0x1340.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad284).

- `glGetMinmaxEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad28c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad28c-0xdbad298 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad28c loads 4 bytes from abs 0x1344.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad290).

- `glGetMinmaxParameterfvEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad298 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad298-0xdbad2a4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad298 loads 4 bytes from abs 0x1348.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad29c).

- `glGetMinmaxParameterivEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad2a4 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad2a4-0xdbad2b0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad2a4 loads 4 bytes from abs 0x134c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad2a8).

- `glHistogramEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad2b0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad2b0-0xdbad2bc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad2b0 loads 4 bytes from abs 0x1350.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad2b4).

- `glMinmaxEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad2bc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad2bc-0xdbad2c8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad2bc loads 4 bytes from abs 0x1354.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad2c0).

- `glResetHistogram` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad2c8 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad2c8-0xdbad2d4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad2c8 loads 4 bytes from abs 0x1358.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad2cc).

- `glResetMinmax` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad2d4 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad2d4-0xdbad2e0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad2d4 loads 4 bytes from abs 0x135c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad2d8).

- `glTexImage3DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad2e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad2e0-0xdbad2ec (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad2e0 loads 4 bytes from abs 0x1360.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad2e4).

- `glTexSubImage3DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad2ec (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad2ec-0xdbad2f8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad2ec loads 4 bytes from abs 0x1364.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad2f0).

- `glArrayElementEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad2f8 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad2f8-0xdbad304 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad2f8 loads 4 bytes from abs 0x1368.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad2fc).

- `glDrawArraysEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad310 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad310-0xdbad31c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad310 loads 4 bytes from abs 0x1370.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad314).

- `glGetPointervEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad328 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad328-0xdbad334 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad328 loads 4 bytes from abs 0x1378.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad32c).

- `glAreTexturesResident` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad364 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad364-0xdbad370 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad364 loads 4 bytes from abs 0x138c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad368).

- `glAreTexturesResidentEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad364 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad364-0xdbad370 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad364 loads 4 bytes from abs 0x138c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad368).

- `glBindTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad370 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad370-0xdbad37c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad370 loads 4 bytes from abs 0x1390.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad374).

- `glBindTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad370 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad370-0xdbad37c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad370 loads 4 bytes from abs 0x1390.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad374).

- `glDeleteTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad37c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad37c-0xdbad388 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad37c loads 4 bytes from abs 0x1394.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad380).

- `glDeleteTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad37c (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad37c-0xdbad388 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad37c loads 4 bytes from abs 0x1394.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad380).

- `glGenTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad388 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad388-0xdbad394 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad388 loads 4 bytes from abs 0x1398.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad38c).

- `glGenTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad388 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad388-0xdbad394 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad388 loads 4 bytes from abs 0x1398.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad38c).

- `glIsTexture` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad394 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad394-0xdbad3a0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad394 loads 4 bytes from abs 0x139c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad398).

- `glIsTextureEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad394 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad394-0xdbad3a0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad394 loads 4 bytes from abs 0x139c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad398).

- `glPrioritizeTextures` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad3a0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad3a0-0xdbad3ac (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad3a0 loads 4 bytes from abs 0x13a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad3a4).

- `glPrioritizeTexturesEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad3a0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad3a0-0xdbad3ac (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad3a0 loads 4 bytes from abs 0x13a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad3a4).

- `glCopyTexImage1DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad3ac (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad3ac-0xdbad3b8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad3ac loads 4 bytes from abs 0x13a4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad3b0).

- `glCopyTexImage2DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad3b8 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad3b8-0xdbad3c4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad3b8 loads 4 bytes from abs 0x13a8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad3bc).

- `glCopyTexSubImage1DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad3c4 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad3c4-0xdbad3d0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad3c4 loads 4 bytes from abs 0x13ac.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad3c8).

- `glCopyTexSubImage2DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad3d0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad3d0-0xdbad3dc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad3d0 loads 4 bytes from abs 0x13b0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad3d4).

- `glCopyTexSubImage3DEXT` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad3dc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad3dc-0xdbad3e8 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad3dc loads 4 bytes from abs 0x13b4.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad3e0).

- `glColorTableSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad4d8 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad4d8-0xdbad4e4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad4d8 loads 4 bytes from abs 0x1408.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad4dc).

- `glColorTableParameterfvSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad4e4 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad4e4-0xdbad4f0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad4e4 loads 4 bytes from abs 0x140c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad4e8).

- `glColorTableParameterivSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad4f0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad4f0-0xdbad4fc (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad4f0 loads 4 bytes from abs 0x1410.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad4f4).

- `glCopyColorTableSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad4fc (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad4fc-0xdbad508 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad4fc loads 4 bytes from abs 0x1414.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad500).

- `glGetColorTableSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad508 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad508-0xdbad514 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad508 loads 4 bytes from abs 0x1418.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad50c).

- `glGetColorTableParameterfvSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad514 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad514-0xdbad520 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad514 loads 4 bytes from abs 0x141c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad518).

- `glGetColorTableParameterivSGI` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad520 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad520-0xdbad52c (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad520 loads 4 bytes from abs 0x1420.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad524).

- `glPointParameterfSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad598 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad598-0xdbad5a4 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad598 loads 4 bytes from abs 0x1448.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad59c).

- `glPointParameterfvSGIS` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad5a4 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad5a4-0xdbad5b0 (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad5a4 loads 4 bytes from abs 0x144c.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad5a8).

- `glReadInstrumentsSGIX` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad5e0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad5e0-0xdbad5ec (12 bytes).
  It occupies 12 bytes.
  The `lw` at 0xdbad5e0 loads 4 bytes from abs 0x1460.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbad5e4).

- `__glOdyim_Vertex2d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad880 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbad880-0xdbad8a0 (32 bytes).
  It occupies 32 bytes.
  The `sw` at 0xdbad890 stores 4 bytes to abs 0x4000.
  2 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdbad894, `swc1` at 0xdbad89c.
  The return at 0xdbad898 has v0 = ?.

- `__glOdyim_Vertex2d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbad880 (n32).
  Evidence grade: inferred.
  The routine is 32 bytes and has no argument loads in the facts. It makes one integer store and two single-precision stores to the fixed address 0x4000 at 0xdbad890, 0xdbad894 and 0xdbad89c. The source registers for those stores are not traced in the render, so the values written are unknown; the shape fits a two-coordinate vertex submission only loosely.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex3d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbada80 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbada80-0xdbadaa8 (40 bytes).
  It occupies 40 bytes.
  The `sw` at 0xdbada94 stores 4 bytes to abs 0x4000.
  3 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdbada98, `swc1` at 0xdbada9c, `swc1` at 0xdbadaa4.
  The return at 0xdbadaa0 has v0 = ?.

- `__glOdyim_Vertex3d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbada80 (n32).
  Evidence grade: inferred.
  The routine is 40 bytes and writes to the fixed address 0x4000 with one integer store at 0xdbada94 and three single-precision stores at 0xdbada98, 0xdbada9c and 0xdbadaa4. It has the same shape as `__glOdyim_Vertex2d` with one more value, which fits a three-coordinate vertex. The values are not traced, so the mapping to x, y and z is a guess from the name.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex3i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbadb80 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbadb80-0xdbadbb4 (52 bytes).
  It occupies 52 bytes.
  4 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbadba0, `sw` at 0xdbadba4, `sw` at 0xdbadba8.
  The return at 0xdbadbac has v0 = ?.

- `__glOdyim_Vertex3i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbadb80 (n32).
  Evidence grade: inferred.
  The routine is 52 bytes and makes four integer stores to 0x4000, at 0xdbadba0, 0xdbadba4 and 0xdbadba8 among them, with no single-precision stores in the facts. The integer-only form matches the name's integer type. The source of each store is not traced, so the field count is inferred from the store count alone.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbadd80 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbadd80-0xdbaddc0 (64 bytes).
  It occupies 64 bytes.
  5 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbadda8, `sw` at 0xdbaddac, `sw` at 0xdbaddb0.
  The return at 0xdbaddb8 has v0 = ?.

- `__glOdyim_Vertex4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbadd80 (n32).
  Evidence grade: inferred.
  The routine is 64 bytes and makes five integer stores to 0x4000, at 0xdbadda8, 0xdbaddac and 0xdbaddb0 among them. The store count fits a four-component integer vertex plus one leading word, but the render does not show the source registers. This is the largest of the four Vertex entries in the batch, and the extra store is not explained by the facts.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex4iv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbaddc0 (n32).
  Straight-line routine that takes four 32-bit words from the array at `a0` and writes a header word and
  those four words, one after another, to the single absolute address 0x4000.
  Four `lw` loads, from 0xdbaddc0 to 0xdbaddcc, bring in the words at offsets 0, 4, 8 and 12 of `a0`, landing in a4 to a7. The `sw` at
  0xdbaddf8 then writes the constant 0xffffffff8080d004, built in t0 at 0xdbaddf0 and 0xdbaddf4, and the
  `sw` at 0xdbaddfc, 0xdbade00, 0xdbade04 and 0xdbade0c write the four loaded words unchanged, the last
  one in the delay slot of the `jr ra` at 0xdbade08.
  There is no branch and no call, so every instruction runs on each entry.
  The routine does not write v0, so the caller sees whatever v0 held on entry.
  Inferred: the four loaded words are also converted from integer to single-precision float into f12 to
  f15 before the header store, because the routine contains four moves to the floating-point unit and
  four integer-to-float conversions; the hostfacts access list does not carry them, so the evidence is
  the instruction stream alone.
  Unknown: which register or device sits at the absolute address 0x4000, which the bundle lists as
  memory-mapped I/O; the linked board windows at 0x110000 and 0x120000 do not include it, so a register
  row for 0x4000 would close it.
  Evidence grade: inferred.

- `__glOdyim_Vertex2d_smallw` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbadf00 (n32).
  Narrows its two double arguments in $f12 and $f13 to single precision in place (the first two instructions of the routine), loads the records at abs 0x1020 and abs 0x1024 (`lw` at 0xdbadf08 and 0xdbadf0c), computes a value in $f8 from the words at +0x30, +0x34 and +0x3c of the first record, and then either writes to abs 0x4000 and returns or tail-jumps through the word at +0x20 of the second record.
  The two instructions after the load at 0xdbadf20, which the tool lists as coprocessor-branch instructions, are multiply-adds: they add $f12 times the +0x30 word and $f13 times the +0x34 word into $f8, which was loaded from +0x3c (`lwc1` at 0xdbadf14).
  That sum is stored to +0x8 of the second record (`swc1` at 0xdbadf30); the instruction before it multiplies the sum by the old word at +0x8 of that record into $f7, and $f4 gets the absolute value of that product.
  The `bc1f` at 0xdbadf40 jumps to the tail when $f4 and $f7 are neither equal nor unordered (`c.ueq.s` at 0xdbadf38); otherwise the `bc1t` at 0xdbadf4c jumps to the tail when the absolute value of the sum is less than, or unordered with, the word at +0x0 of the second record in $f9 (`c.ult.s` at 0xdbadf44).
  When neither branch is taken, it writes 0xffffffff8080c801 to abs 0x4000 (`sw` at 0xdbadf54, built at 0xdbadf48 and 0xdbadf50), then the narrowed $f12 and $f13 to abs 0x4000 (`swc1` at 0xdbadf58 and, in the return's delay slot, at 0xdbadf60), and returns with v0 holding the word at abs 0x1020 (`jr ra` at 0xdbadf5c).
  The tail loads the word at +0x20 of the second record (`lw` at 0xdbadf64), clears $f14, moves 0x3f800000 into $f15 in the delay slot and jumps through the loaded word (`jr` at 0xdbadf70) with a0 to a3 as they arrived.
  Unknown: the routine reached through the word at +0x20 of the second record, since the target is a register load with no callee note.
  Evidence grade: established.

- `__glOdyim_Vertex2dv_smallw` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbadf80 (n32).
  Submits one vertex whose two coordinates are doubles at a0+0x0 and a0+0x8 (`ldc1` at 0xdbadf80 and
  0xdbadf88); each is converted to single precision into $f12 and $f13 straight after its load. The
  vertex is then checked against two records whose pointers are the words at fixed addresses 0x1020
  (record A, `lw` at 0xdbadf90) and 0x1024 (record B, `lw` at 0xdbadf94).
  Inferred: the two words that follow the loads at 0xdbadfa8, which the disassembler prints as
  coprocessor-3 branches, are floating-point multiply-adds by their field layout. They leave $f8 equal to
  A+0x3c plus $f12 times A+0x30 plus $f13 times A+0x34, and the `swc1` at 0xdbadfb8 stores that sum over
  B+0x8 on every path, after it was multiplied by the old B+0x8 to form $f7.
  The `bc1f` at 0xdbadfc8 sends control to the tail path at 0xdbadfec when $f7 is negative: the
  `c.ueq.s` at 0xdbadfc0 compares $f7 with its own absolute value. The `bc1t` at 0xdbadfd4 sends it there
  when the absolute value of the sum is below the word at B+0x0 or unordered with it, using the compare
  in the delay slot at 0xdbadfcc.
  If neither branch is taken, the routine writes three 4-byte values to absolute 0x4000: the constant
  0xffffffff8080c801 (`sw` at 0xdbadfdc, with the `ori` of 0xc801 in the delay slot at 0xdbadfd8 on top of
  0xffffffff80800000), $f12 (`swc1` at 0xdbadfe0) and $f13 (`swc1` at 0xdbadfe8, in the delay slot of the
  return at 0xdbadfe4). The routine returns the word it loaded from 0x1020 in v0.
  On the tail path the routine takes t9 from B+0x20 (`lw` at 0xdbadfec), leaves $f14 at zero, sets $f15
  to 0x3f800000 in the delay slot, and jumps at 0xdbadff8 with a0 to a3 as they arrived.
  Unknown: where the `jr t9` at 0xdbadff8 lands; the pointer sits in record B and is filled at run time.
  Unknown: which device register is at absolute 0x4000; the linked windows start at 0x110000 and 0x120000, so a datasheet row naming 0x4000 would settle it.
  Evidence grade: inferred.

- `__glOdyim_Vertex3d_smallw` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbae380 (n32).
  Narrows the double arguments in $f12, $f13 and $f14 to single floats and applies two
  floating-point tests against two parameter blocks; when both pass it writes a control word and the
  three floats to abs 0x4000, and otherwise it jumps through the pointer at second+0x20.
  The words at abs 0x1020 and abs 0x1024 give the first and second blocks (loaded at 0xdbae38c and
  0xdbae390).
  $f8 starts as first[+0x3c] (loaded at 0xdbae398) and absorbs three products, $f12*first[+0x30],
  $f13*first[+0x34] and $f14*first[+0x38]; $f7 is this sum times the old second[+0x8] and the `swc1`
  at 0xdbae3bc writes the sum to second+0x8 on every call, before any test can leave.
  First, the `c.ueq.s` at 0xdbae3c4 sets the flag from |$f7| and $f7 and the `bc1f` at 0xdbae3cc
  leaves for 0xdbae3f4 when $f7 is negative.
  Its delay slot holds the second compare, `c.ult.s` at 0xdbae3d0, which sets the flag for the
  `bc1t` at 0xdbae3d8 by comparing |sum| with second[+0x0] (loaded at 0xdbae3a4); that branch also
  leaves for 0xdbae3f4 when |sum| is below it or the operands are unordered.
  Past both, t0 is 0xffffffff8080cc03 (0xdbae3d4, with the `ori` in the delay slot at 0xdbae3dc) and
  the `sw` at 0xdbae3e0 writes it to abs 0x4000, followed by $f12 and $f13 via the `swc1` at
  0xdbae3e4 and 0xdbae3e8 and by $f14 via the `swc1` at 0xdbae3f0 in the delay slot of the return at
  0xdbae3ec; v0 comes back as the word loaded from abs 0x1020.
  The exit at 0xdbae3f4 loads t9 from second+0x20, sets t0 to 0x3f800000 and moves it into $f15 in
  the delay slot of the `jr t9` at 0xdbae3fc, leaving a0 to a3 and $f12 to $f14 as they stand.
  Unknown: the address reached by the `jr t9` at 0xdbae3fc, since second+0x20 is an unresolved
  pointer; watching the register at that jump would settle it.
  Unknown: whether any device is behind abs 0x4000; the linked mmio rows reach only 0x110000 and
  0x120000.
  Evidence grade: established.

- `__glOdyim_Vertex3dv_smallw` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbae440 (n32).
  Short double-precision vertex path: after two float tests it writes the vertex to the absolute address 0x4000,
  and when either test fails it tail-jumps to a handler pointer.
  Three `ldc1` loads (0xdbae440, 0xdbae448, 0xdbae450) take the doubles at a0, +0x8 and +0x10, and each is
  converted to single precision in `$f12` to `$f14` straight after.
  Absolute 0x1020 holds the first structure's address and 0x1024 the second's; they are read at 0xdbae458 and
  0xdbae45c. `$f8` is the first structure's +0x3c word plus the floats times its +0x30, +0x34 and +0x38 words
  (three multiply-adds). The old +0x8 word of the second structure is multiplied by `$f8`, and the `swc1` at
  0xdbae488 puts the sum itself into that +0x8 slot.
  Gate one (`c.ueq.s` at 0xdbae490, `bc1f` at 0xdbae498) goes to the exit at 0xdbae4c0 if the product is
  negative.
  Gate two takes the absolute sum against the second structure's +0x0 word. Its `c.ult.s` is in the delay slot
  at 0xdbae49c and runs either way; the `bc1t` at 0xdbae4a4 exits when the sum is smaller or unordered.
  Past both, the `ori` at 0xdbae4a8 finishes t0 = 0xffffffff8080cc03, the `sw` at 0xdbae4ac writes it to 0x4000,
  the `swc1` at 0xdbae4b0 and 0xdbae4b4 follow with `$f12` and `$f13`, and `$f14` is stored in the delay slot
  (0xdbae4bc) of the `jr ra` at 0xdbae4b8. The returned v0 is the pointer loaded from 0x1020.
  The exit takes t9 from the second structure's +0x20 word (0xdbae4c0), sets t0 = 0x3f800000 (0xdbae4c4), and
  the `jr` at 0xdbae4c8 leaves with a0 unchanged and `$f15` set from t0 in its delay slot.
  Unknown: where the `jr` at 0xdbae4c8 goes, since t9 is loaded from memory; the live value of the +0x20 word
  would name it.
  Unknown: what sits at the absolute address 0x4000, since no linked row covers it (the nearest windows begin
  at 0x110000 and 0x120000); the address decode in a datasheet would settle it.
  Evidence grade: established.

- `__glOdyim_Vertex3i_smallw` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbae640 (n32).
  Fast path for one vertex given as three integers in a0, a1 and a2: it turns them into single floats in $f12 to $f14, runs three float checks, and either writes four words to the single address 0x4000 or tail-jumps through a pointer. The checks use the two records whose addresses are the words at 0x1020 and 0x1024. A weighted sum goes into $f8: the word at +0x3c of the 0x1020 record plus the three coordinates times the words at +0x30, +0x34 and +0x38. $f7 becomes that sum times the word at +0x8 of the 0x1024 record, and the `swc1` at 0xdbae688 writes the sum itself back over +0x8 of the 0x1024 record, after +0x8 was read at 0xdbae674.
  First check: the `bc1f` at 0xdbae698 leaves for the pointer jump when the compare at 0xdbae690 (absolute value of $f7 against $f7, equal-or-unordered) is false, which happens when $f7 is negative and ordered. Second check: the delay slot at 0xdbae69c compares the absolute value of the sum with the word at +0x0 of the 0x1024 record, and the `bc1t` at 0xdbae6a4 leaves for the jump when the sum's absolute value is less than that word or unordered. The `ori` in its delay slot at 0xdbae6a8 runs on both paths and leaves t0 at 0xffffffff8080cc02.
  When both checks fall through the block at 0xdbae6ac stores t0, then a0, a1 and a2 unchanged, each with a word `sw` to 0x4000, the last of them in the delay slot of the `jr ra` at 0xdbae6b8, and returns the word loaded from 0x1020 in v0. On the other path the `lw` at 0xdbae6c0 reads t9 from +0x20 of the 0x1024 record, t0 becomes 0x3f800000 (the single-float bit pattern for 1.0), and the `jr t9` at 0xdbae6c8 jumps with $f15 loaded from t0 in its delay slot and a0 to a3 as they came in; nothing is stored to 0x4000 on that route.
  Inferred: the checks screen the vertex before the direct write, because every failed check leaves for the pointer at +0x20 of the 0x1024 record and no memory write happens on that route.
  Unknown: which routine the `jr t9` at 0xdbae6c8 enters; t9 comes from a word in the 0x1024 record that is only fixed during a run, so a stop at that jump would name it.
  Unknown: the device-side result of the four word stores to 0x4000; the linked rows cover only the windows at 0x110000 and 0x120000, so a map of the low addresses would settle it.
  Evidence grade: inferred.

- `__glOdyim_Vertex2iv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbaf2c0 (n32).
  Takes two integer words from the buffer at a0 (loaded at 0xdbaf2c0 and 0xdbaf2c4), converts them
  to the single floats $f12 and $f13, and checks them against two parameter blocks before either
  emitting three words to abs 0x4000 or jumping onward through the second block.
  The blocks are the memory at the words held in abs 0x1020 (first) and abs 0x1024 (second), read at
  0xdbaf2d8 and 0xdbaf2dc.
  Two multiply-adds turn $f8, loaded from first+0x3c at 0xdbaf2e4, into first[+0x3c] +
  $f12*first[+0x30] + $f13*first[+0x34]. The `swc1` at 0xdbaf300 writes that sum to second+0x8 on
  every call, after $f7 has been set to the sum times the old second[+0x8] and before $f8 is
  multiplied by second[+0x4].
  First exit: the `c.ueq.s` at 0xdbaf310 compares |$f7| with $f7, and the `bc1f` at 0xdbaf318 takes
  the path to 0xdbaf370 when they differ, which means $f7 is negative.
  Second and third exits: $f9 is rebuilt from the first block as first[+0xc] + $f12*first[+0x0] +
  $f13*first[+0x4], then as first[+0x1c] + $f12*first[+0x10] + $f13*first[+0x14]. Compares at
  0xdbaf330 and 0xdbaf350 (`c.ult.s`) set |$f8| (the sum times second[+0x4], made absolute) against
  the absolute value of each, and the `bc1t` at 0xdbaf338 and 0xdbaf358 send control to 0xdbaf370 if
  |$f8| comes out lower or either side is a NaN.
  Falling through all three, the `sw` at 0xdbaf360 writes 0xffffffff8080c800 to abs 0x4000 (t0 is
  0xffffffff80800000 from 0xdbaf354 and the delay slot at 0xdbaf35c ORs in 0xc800), the `sw` at
  0xdbaf364 writes the first input word as loaded, and the `sw` at 0xdbaf36c in the delay slot of
  the return at 0xdbaf368 writes the second; the value left in v0 is the word read from abs 0x1020.
  The other path starts at 0xdbaf370: it reads the jump target from second+0x20, clears $f14, puts
  0x3f800000 in t0 (0xdbaf378) and copies it to $f15 in the delay slot of the `jr t9` at 0xdbaf37c,
  leaving a0 to a3 untouched and a4, a5 holding the two input words.
  Unknown: where the `jr t9` at 0xdbaf37c lands, because the pointer at second+0x20 is unresolved;
  stepping through the call would settle it.
  Unknown: any device behind abs 0x4000, since the linked mmio rows stop at the windows 0x110000 and
  0x120000; the board address map would settle it.
  Test: the mapping-address read in "Test that settles the rest" at the top of this file; a client mapping that starts at 0 makes 0x4000 board +0x120000.
  Evidence grade: established.

- `__glOdyim_Vertex2sv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbaf480 (n32).
  Reads two signed halfwords from a0 and a0+2 (loaded at 0xdbaf480 and 0xdbaf484), converts both to
  single floats in $f12 and $f13, and tests them against two parameter blocks; the surviving case
  emits three words to abs 0x4000, every other case jumps through second+0x20.
  Abs 0x1020 and abs 0x1024 hold the addresses of the first and second blocks, fetched at 0xdbaf498
  and 0xdbaf49c.
  The multiply-add pair on first[+0x3c], first[+0x30] and first[+0x34] gives $f8 = first[+0x3c] +
  $f12*first[+0x30] + $f13*first[+0x34]; the `swc1` at 0xdbaf4c0 writes this sum into second+0x8 on
  every call, between the product of the sum with the old second[+0x8] (into $f7) and the product
  with second[+0x4] (into $f8).
  Sign check on $f7: the `c.ueq.s` at 0xdbaf4d0 sets the flag from |$f7| and $f7; when they differ,
  which is when $f7 is negative, the `bc1f` at 0xdbaf4d8 takes the exit to 0xdbaf530.
  The other two tests recompute $f9 as first[+0xc] + $f12*first[+0x0] + $f13*first[+0x4] and
  first[+0x1c] + $f12*first[+0x10] + $f13*first[+0x14]; the `c.ult.s` at 0xdbaf4f0 and 0xdbaf510
  test |$f8| against |$f9|, and the `bc1t` at 0xdbaf4f8 and 0xdbaf518 take the exit to 0xdbaf530
  once |$f8| is the lower one or a NaN is involved.
  If all three pass, the `sw` at 0xdbaf520 writes t0 to abs 0x4000 (0xffffffff80800000 from
  0xdbaf514, with 0xc800 ORed in by the delay slot at 0xdbaf51c, gives 0xffffffff8080c800), the `sw`
  at 0xdbaf524 follows with the first halfword widened to a word, and the `sw` at 0xdbaf52c in the
  delay slot of the return at 0xdbaf528 does the same for the second; v0 is the word loaded from abs
  0x1020.
  The exit block at 0xdbaf530 loads t9 from second+0x20, clears $f14, sets t0 to 0x3f800000
  (0xdbaf538), and the `jr t9` at 0xdbaf53c moves it into $f15 in its delay slot; a0 to a3 are as
  received and a4, a5 are the two halfwords.
  Unknown: the destination of the `jr t9` at 0xdbaf53c, because second+0x20 is an unresolved
  pointer; a trace at that jump would settle it.
  Unknown: whether any device sits at abs 0x4000; only the windows 0x110000 and 0x120000 are linked,
  and the board address map would answer it.
  Test: the mapping-address read in "Test that settles the rest" at the top of this file; a client mapping that starts at 0 makes 0x4000 board +0x120000.
  Evidence grade: established.

- `__glOdyim_Vertex3dv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbaf680 (n32).
  Reads three doubles at offsets 0x0, 0x8 and 0x10 of the buffer in a0, narrows them to singles in
  $f12 to $f14, tests them against two parameter blocks in three floating-point steps, and either
  writes four words to abs 0x4000 or jumps through the pointer at second+0x20.
  Abs 0x1020 and abs 0x1024 hold the first and second block addresses (loaded at 0xdbaf698 and
  0xdbaf69c).
  From first[+0x3c] (loaded at 0xdbaf6a4) three multiply-adds add $f12*first[+0x30],
  $f13*first[+0x34] and $f14*first[+0x38] to form $f8; the `swc1` at 0xdbaf6c8 writes that sum into
  second+0x8 whenever the routine runs, after $f7 has been set to the sum times the old second[+0x8]
  and before $f8 is scaled by second[+0x4].
  A `c.ueq.s` at 0xdbaf6d8 relates |$f7| to $f7, and the `bc1f` at 0xdbaf6e0 jumps to 0xdbaf74c on
  inequality, i.e. a negative $f7.
  The remaining two steps compute $f9 from first[+0xc], [+0x0], [+0x4], [+0x8] and from
  first[+0x1c], [+0x10], [+0x14], [+0x18], each with $f12 to $f14 as multipliers of the last three;
  the two `c.ult.s` at 0xdbaf700 and 0xdbaf728 test |$f8| with |$f9| and the `bc1t` at 0xdbaf708 and
  0xdbaf730 leave for 0xdbaf74c when |$f8| is smaller or unordered.
  If neither leaves, t0 is 0xffffffff8080cc03 (0xdbaf72c, with the `ori` in the delay slot at
  0xdbaf734); the `sw` at 0xdbaf738 writes it to abs 0x4000, the `swc1` at 0xdbaf73c and 0xdbaf740
  write $f12 and $f13, and the `swc1` at 0xdbaf748 in the delay slot of the return at 0xdbaf744
  writes $f14, with v0 returned as the word loaded from abs 0x1020.
  The exit at 0xdbaf74c loads t9 from second+0x20 and the `jr t9` at 0xdbaf754 carries t0 =
  0x3f800000 into $f15 through its delay slot, while a0 to a3 and $f12 to $f14 stay as they are.
  Unknown: where the `jr t9` at 0xdbaf754 leads, since second+0x20 is an unresolved pointer; a probe
  of the pointer at that jump would settle it.
  Unknown: whether any device answers abs 0x4000; only 0x110000 and 0x120000 appear among the linked
  mmio rows.
  Evidence grade: established.

- `__glOdyim_Vertex3iv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbafa80 (n32).
  Takes a pointer to three 32-bit integers in a0 (words at +0, +4, +8, loaded into a4 to a6 at 0xdbafa80 to 0xdbafa88), converts them to single floats in $f12 to $f14, tests the resulting point against the records behind the words at 0x1020 and 0x1024, and either writes four words to 0x4000 and returns or tail-jumps through a pointer.
  The sum in $f8 is the word at +0x3c of the 0x1020 record plus the floats times +0x30, +0x34 and +0x38. The `swc1` at 0xdbafad4 writes that sum to +0x8 of the 0x1024 record, after +0x8 was read at 0xdbafac0 and multiplied by the sum into $f7. The sum is then multiplied by the word at +0x4 of the 0x1024 record into $f8, and both $f7 and $f8 are reduced to absolute values.
  Check one, the `bc1f` at 0xdbafaec, leaves for the jump when $f7 is negative and ordered (the compare at 0xdbafae4 of the absolute value against the value is false). Checks two and three compute a second and third weighted sum and compare their absolute values with $f8: +0xc plus the floats times +0x0, +0x4, +0x8 of the 0x1020 record, compared at 0xdbafb0c; then +0x1c plus the floats times +0x10, +0x14, +0x18, compared at 0xdbafb34. The `bc1t` at 0xdbafb14 and the one at 0xdbafb3c leave when $f8 is less than that value or unordered.
  Passing all three, the block at 0xdbafb44 stores t0 (0xffffffff8080cc02 after the `ori` in the delay slot at 0xdbafb40), then the three loaded words unchanged, as word stores to 0x4000, the last in the delay slot of the `jr ra` at 0xdbafb50, and returns the word loaded from 0x1020 in v0. The exit at 0xdbafb58 reads t9 from +0x20 of the 0x1024 record, sets t0 to 0x3f800000, and `jr t9` at 0xdbafb60 jumps with $f15 written from t0, a0 to a3 unchanged and a4 to a6 holding the loaded words.
  Inferred: the direct write at 0x4000 is the accepted case, because only the path on which all three checks pass reaches the stores.
  Unknown: where the `jr t9` at 0xdbafb60 lands; the pointer is read from +0x20 of the 0x1024 record, which a trace of a running system would show.
  Evidence grade: inferred.

- `__glOdyim_Vertex4dv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbafe80 (n32).
  Fast path for one four-component vertex passed by pointer as double-precision values: double loads (`ldc1`) each followed by a narrowing convert turn the doubles at a0 +0x0, +0x8, +0x10 and +0x18 into single floats in $f12 to $f15. It then runs three float checks against the records addressed by the words at 0x1020 and 0x1024, and either stores five words to the absolute address 0x4000 and returns or tail-jumps through a pointer.
  The first value, $f8, is the four floats times the words at +0x30, +0x34, +0x38 and +0x3c of the 0x1020 record, summed (one multiply, then three multiply-adds). $f7 becomes that sum times the word at +0x8 of the 0x1024 record, reloaded at 0xdbafecc, and the `swc1` at 0xdbafed4 writes the sum itself over that +0x8 word. $f8 is then rescaled by the word at +0x4 of the 0x1024 record. Both $f7 and $f8 are reduced to absolute values; the `bc1f` at 0xdbafeec leaves for the jump when the absolute value of $f7 differs from $f7 with both ordered, which means $f7 is negative.
  Two more sums follow, each four floats times four consecutive words of the 0x1020 record, taken in absolute value and compared with $f8: +0x0 to +0xc (compare at 0xdbaff10) and +0x10 to +0x1c (compare at 0xdbaff3c). The `bc1t` at 0xdbaff18 and the one at 0xdbaff44 leave for the jump when $f8 is less than the sum or unordered.
  If all three pass, the `ori` in the delay slot at 0xdbaff48 has made t0 0xffffffff8080d005, and the block at 0xdbaff4c stores t0 as a word to the absolute address 0x4000, then the single floats $f12, $f13, $f14 and $f15 with `swc1` (the last in the delay slot of the `jr ra` at 0xdbaff5c); v0 returns the word loaded from 0x1020. The exit at 0xdbaff64 reads t9 from +0x20 of the 0x1024 record and `jr t9` at 0xdbaff68 jumps with a0 to a3 unchanged and a `nop` in the delay slot.
  Inferred: the direct write handles vertices that pass every check, since the stores occur only after the last check falls through.
  Unknown: the destination of the `jr t9` at 0xdbaff68, taken from +0x20 of the 0x1024 record; a stop at that instruction in a live run would show it.
  Unknown: the device-side result of the five stores to absolute address 0x4000; no linked row names that address (the rows start at 0x110000), so a map of the low addresses would settle it.
  Evidence grade: inferred.

- `__glOdyim_Vertex4f_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbaff80 (n32).
  Fast path for a four-component vertex whose floats arrive already in $f12 to $f15, with no conversion step. It tests the point against the records behind the words at 0x1020 and 0x1024, and either stores five words to 0x4000 and returns or leaves through a pointer jump.
  Its first sum, $f8, is the four floats times the words at +0x30, +0x34, +0x38 and +0x3c of the 0x1020 record. $f7 is the sum times the +0x8 word of the 0x1024 record (read at 0xdbaffac); the `swc1` at 0xdbaffb4 then overwrites that +0x8 word with the sum, and $f8 becomes the sum times the +0x4 word. The `bc1f` at 0xdbaffcc leaves when the absolute value of $f7 differs from $f7 (compare at 0xdbaffc4), which means $f7 is negative and ordered.
  The two remaining checks add up the floats times +0x0 to +0xc and then +0x10 to +0x1c of the 0x1020 record and compare each sum's absolute value with $f8 (0xdbafff0 and 0xdbb001c); the `bc1t` at 0xdbafff8 and the one at 0xdbb0024 leave when $f8 is less or unordered.
  When none leaves, the `ori` in the delay slot at 0xdbb0028 has made t0 0xffffffff8080d005; the block at 0xdbb002c stores t0 as a word, then $f12 to $f15 with `swc1`, the last in the delay slot of the `jr ra` at 0xdbb003c, all to 0x4000, and returns the word loaded from 0x1020 in v0. The exit at 0xdbb0044 loads t9 from +0x20 of the 0x1024 record and `jr t9` at 0xdbb0048 jumps with a0 to a3 as received; the delay slot is a `nop`.
  Inferred: the four stores form the accepted case, because the pointer jump is the only other exit and it writes nothing.
  Unknown: the routine at the end of the `jr t9` at 0xdbb0048; the +0x20 word of the 0x1024 record holds its address and is only visible on a running system.
  Evidence grade: inferred.

- `__glOdyim_Vertex4i_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb0180 (n32).
  Stores the constant 0xffffffff8080d004 and the four argument registers a0 to a3 to abs 0x4000 and returns the
  word at abs 0x1020 when no float test leaves, and otherwise tail-jumps through a pointer read from
  +0x20 of the record at abs 0x1024.
  Every call loads the words at abs 0x1020 and 0x1024 into v0 and v1 (the `lw` at 0xdbb01a0 and
  0xdbb01a4), reads floats at +0x0 to +0x3c from those records, and writes f8 to +0x8 of the v1 record
  with the `swc1` at 0xdbb01d4, which sits in the first block.
  Three branches decide it: the `bc1f` at 0xdbb01ec goes to the block at 0xdbb0264 when its `c.ueq.s`
  compare of f4 and f7 is false, and the `bc1t` at 0xdbb0218 and 0xdbb0244 go there when their
  `c.ult.s` compares of f8 and f9 are true.
  When it falls through, the `ori` at 0xdbb0248 ORs 0xd004 into t0 in the delay slot of the branch at
  0xdbb0244, so it runs on both paths; the `sw` at 0xdbb024c stores that result, from the immediate
  0x8080 at 0xdbb0240, to abs 0x4000, then the `sw` at 0xdbb0250, 0xdbb0254, 0xdbb0258 and 0xdbb0260
  store a0, a1, a2 and a3 as they arrived, and the `jr ra` at 0xdbb025c returns the word at abs 0x1020.
  Otherwise the block at 0xdbb0264 takes t9 from +0x20 of the record that abs 0x1024 points to, and the
  `jr t9` at 0xdbb0268 transfers control with a0 to a3 unchanged, skipping the stores at 0xdbb024c to
  0xdbb0260.
  Inferred: the instruction stream starts by converting a0 to a3 to single-precision floats in f12 to f15, using four
  moves to the floating-point unit and four integer-to-float conversions; the access listing has no entry for them.
  Unknown: the callee behind the `jr t9` at 0xdbb0268, which depends on the word the record at abs 0x1024
  holds at run time; the route is reading that word during a call.
  Unknown: the content of f8 that the `swc1` at 0xdbb01d4 stores, which the `c.ult.s` compares at
  0xdbb0210 and 0xdbb023c also read; the tool stops at floating-point registers, so the route is a
  manual trace of f8 backward from 0xdbb01d4.
  Unknown: what the abs 0x4000 store targets, since no linked row names that address; the route is an
  inventory row for 0x4000.
  Evidence grade: inferred.

- `__glOdyim_Vertex4iv_mag` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb0280 (n32).
  Integer-vector vertex entry: it loads four words from the array at `a0`, checks floating-point values from
  the records at absolute 0x1020 and 0x1024, and either emits a header and the four words to absolute 0x4000
  or tail-jumps through the second record.
  Loads at 0xdbb0280 to 0xdbb028c put offsets 0, 4, 8 and 12 of `a0` into a4 to a7. Loads at 0xdbb02b0 and
  0xdbb02b4 take the record pointers into v0 and v1, and the `swc1` at 0xdbb02e4 writes f8 into +0x8 of the
  second record before any test runs.
  Inferred: f12 to f15 receive the four words converted to single-precision float right after the loads,
  since the routine holds four moves to the floating-point unit and four integer-to-float conversions there;
  they are missing from the extracted access list.
  Three branches pick the path. The `bc1f` at 0xdbb02fc leaves for the jump block at 0xdbb0374 when its
  `c.ueq.s` compare of f4 and f7 is false; the `bc1t` at 0xdbb0328 and 0xdbb0354 leave for it when their
  `c.ult.s` compares of f8 and f9 are true.
  If none leaves, the `sw` at 0xdbb035c writes the constant 0xffffffff8080d004 to absolute 0x4000; t0 gets
  it from 0xdbb0350 and from the `ori` at 0xdbb0358, which sits in the delay slot of the `bc1t` at
  0xdbb0354. The `sw` at 0xdbb0360, 0xdbb0364, 0xdbb0368 and 0xdbb0370 copy a4 to a7 to the same address,
  the last in the delay slot of the `jr ra` at 0xdbb036c, and v0 returns the word loaded from absolute 0x1020.
  If one leaves, the `lw` at 0xdbb0374 reads t9 from +0x20 of the second record and the `jr t9` at
  0xdbb0378 goes there carrying a0 to a3 and the four words in a4 to a7, with nothing stored to 0x4000.
  Unknown: the entry point that t9 holds at 0xdbb0378; it is a word of the record at absolute 0x1024 that
  only a run can show.
  Unknown: the float that the `swc1` at 0xdbb02e4 stores, since floating-point registers are not followed
  here; tracing f8 back from the store would answer it.
  Unknown: the device behind absolute 0x4000, which falls outside the linked board windows at 0x110000 and
  0x120000; a row naming 0x4000 would answer it.
  Evidence grade: inferred.

- `__glOdyim_Vertex2dv_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb06c0 (n32).
  Reads two doubles through `a0` (`ldc1` at 0xdbb06c0 and 0xdbb06c8), converts each to a float in $f12 and $f13, picks up the pointers at abs 0x1020 (record R) and abs 0x1024 (record Q) (`lw` at 0xdbb06d0 and 0xdbb06d4), and then either writes to abs 0x4000 and returns the word at abs 0x1020, or tail-jumps through the word at Q+0x20.
  The routine derives a scalar w = R+0x3c word + $f12 * R+0x30 word + $f13 * R+0x34 word; the two fused multiply-adds follow the load at 0xdbb06e8 and are the instructions the tool prints as coprocessor-branch forms, and a register move then leaves a copy of w in $f10.
  Before any test, w goes to Q+0x8 (`swc1` at 0xdbb06fc), after being multiplied by the previous Q+0x8 word, and $f8 becomes the absolute value of w times the Q+0x4 word.
  The first test sends control to the tail through the `bc1f` at 0xdbb0714 whenever the absolute value of that earlier product differs from the product itself and is not unordered with it (`c.ueq.s` at 0xdbb070c).
  The remaining tests come in two rounds, the first using R+0xc, R+0x0, R+0x4 and Q+0xc and the second using R+0x1c, R+0x10, R+0x14 and Q+0x10.
  In a round, the absolute value of (R constant word + $f12 * R word + $f13 * R word) is compared against $f8, and the `bc1t` at 0xdbb0738 (first round) or 0xdbb078c (second) exits to the tail if $f8 is smaller or either is unordered (`c.ult.s` at 0xdbb0730 and 0xdbb0784).
  The round then forms $f4 as that signed sum plus the Q word times w; when $f4 equals its absolute value or is unordered with it (`c.ueq.s` at 0xdbb0748 and 0xdbb079c), a last compare of $f4 with the Q+0x18 word times w decides an exit (`c.ult.s` at 0xdbb0758 and 0xdbb07ac, `bc1t` at 0xdbb0760 and 0xdbb07b4).
  Otherwise the `bc1f` at 0xdbb0750 or 0xdbb07a4 bypasses that last compare; the multiply by w is in that branch's delay slot, so it happens either way.
  With every test passed, the store block writes the constant 0xffffffff8080c801 to abs 0x4000 (`sw` at 0xdbb07c4), then $f12 and $f13 (`swc1` at 0xdbb07c8 and, in the delay slot of the `jr ra` at 0xdbb07cc, at 0xdbb07d0).
  The tail loads the word at Q+0x20 (`lw` at 0xdbb07d4), jumps through it (`jr` at 0xdbb07e0) and leaves 0x3f800000 in $f15 from the delay slot, with `a0` to `a3` untouched.
  Unknown: the target reached through the Q+0x20 word, since it is a register load and no callee note exists.
  Evidence grade: established.

- `__glOdyim_Vertex2f_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb0800 (n32).
  Longer variant of the vertex check for a vertex held in $f12 and $f13: it tests against records A and B
  (pointers at fixed addresses 0x1020 and 0x1024, `lw` at 0xdbb0800 and 0xdbb0804). Passing writes three
  values to absolute 0x4000; failing jumps through a pointer in B.
  Inferred: the two words before the store at 0xdbb082c are multiply-adds by their field layout, so $f8
  holds A+0x3c plus $f12 times A+0x30 plus $f13 times A+0x34. That sum is copied to $f10, multiplied
  with the old B+0x8, scaled by B+0x4, and the `swc1` at 0xdbb082c stores it to B+0x8 on every path.
  The `bc1f` at 0xdbb0844 goes to the tail path at 0xdbb0904 when the first product is negative
  (`c.ueq.s` at 0xdbb083c).
  Two similar stages follow, each ending in two tests. Stage one takes A+0xc plus $f12 times A+0x0 plus
  $f13 times A+0x4 (A+0xc loaded in the delay slot at 0xdbb0848), keeps it, and the `bc1t` at 0xdbb0868
  goes to the tail path if the scaled product is below its absolute value or unordered (`c.ult.s` at
  0xdbb0860). It then forms that kept value plus B+0xc times $f10 (B+0xc loaded at 0xdbb0864): a negative
  result sends the `bc1f` at 0xdbb0880 straight to stage two at 0xdbb0898, otherwise the `bc1t` at
  0xdbb0890 goes to the tail path if the result is below B+0x18 times $f10 (the multiply sits in the
  delay slot at 0xdbb0884, so it runs on both paths).
  Stage two uses A+0x1c, A+0x10, A+0x14 and B+0x10 (branches at 0xdbb08bc, 0xdbb08d4, 0xdbb08e4); there a
  negative result at 0xdbb08d4 skips to the store block at 0xdbb08ec.
  The store block builds 0xffffffff8080c801 (constants at 0xdbb08ec and 0xdbb08f0) and stores it at
  0xdbb08f4, then stores $f12 (0xdbb08f8) and $f13 (0xdbb0900, return delay slot), all 4 bytes to
  absolute 0x4000; it returns the word loaded from 0x1020.
  The tail path loads t9 from B+0x20 (0xdbb0904), clears $f14, sets $f15 to 0x3f800000 and jumps at
  0xdbb0910 with a0 to a3 unchanged.
  Unknown: what the `jr t9` at 0xdbb0910 reaches, since record B is filled at run time and the bundle does not resolve it.
  Unknown: the identity of the register at absolute 0x4000, outside both linked windows (0x110000 and 0x120000); a datasheet row would settle it.
  Evidence grade: inferred.

- `__glOdyim_Vertex2i_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb0a80 (n32).
  Takes integer coordinates in a0 and a1, moves them to floating-point registers and converts them to
  single precision in $f12 and $f13 for the checks, and keeps the integers for the output. The checks use
  records A and B, whose pointers are the words at fixed addresses 0x1020 and 0x1024 (`lw` at 0xdbb0a90
  and 0xdbb0a94).
  Inferred: the pair of words before the `swc1` at 0xdbb0abc are multiply-adds by their field layout,
  giving $f8 = A+0x3c plus $f12 times A+0x30 plus $f13 times A+0x34. The sum is also copied to $f10, and
  the store at 0xdbb0abc writes it to B+0x8 on every path after the multiply with the old B+0x8.
  The `bc1f` at 0xdbb0ad4 goes to the tail path at 0xdbb0b94 on a negative first product (`c.ueq.s` at
  0xdbb0acc). In stage one A+0xc (delay slot at 0xdbb0ad8) plus $f12 times A+0x0 plus $f13 times A+0x4 is
  compared with the sum scaled by B+0x4: the `bc1t` at 0xdbb0af8 jumps to the tail path if the scaled
  sum is below the value's absolute value or unordered (`c.ult.s` at 0xdbb0af0). Then that value plus
  B+0xc times $f10 is examined: a negative one makes the `bc1f` at 0xdbb0b10 skip to stage two at
  0xdbb0b28, otherwise the `bc1t` at 0xdbb0b20 jumps to the tail path if it is below B+0x18 times $f10
  (multiply in the delay slot at 0xdbb0b14, run on both paths).
  Stage two goes through A+0x1c, A+0x10, A+0x14 and B+0x10 (`bc1t` at 0xdbb0b4c and 0xdbb0b74); a
  negative result at the `bc1f` at 0xdbb0b64 jumps to the store block at 0xdbb0b7c.
  The block stores three 4-byte words to absolute 0x4000. 0xffffffff8080c800 goes first (formed by the
  instructions at 0xdbb0b7c and 0xdbb0b80, written by the `sw` at 0xdbb0b84); a0 follows at 0xdbb0b88
  and a1 last at 0xdbb0b90, in the return's delay slot, both as they arrived.
  On return v0 holds the word loaded from 0x1020.
  The tail path loads t9 from B+0x20 (0xdbb0b94), clears $f14, sets $f15 to 0x3f800000 and jumps at
  0xdbb0ba0, a0 to a3 unchanged.
  Unknown: the callee of the jump at 0xdbb0ba0, since the pointer in record B is filled at run time.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the register at absolute 0x4000; the linked windows at 0x110000 and 0x120000 do not list it.
  Evidence grade: inferred.

- `__glOdyim_Vertex3d_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb0f80 (n32).
  Three double arguments arrive in $f12, $f13 and $f14 and are narrowed to singles; the routine then
  applies a series of floating-point comparisons against two parameter blocks and, if every one
  passes, writes a control word and the three floats to abs 0x4000, or otherwise jumps through the
  pointer at second+0x20.
  Abs 0x1020 and abs 0x1024 supply the addresses of the first and second blocks (loads at 0xdbb0f8c
  and 0xdbb0f90).
  Three multiply-adds fold $f12*first[+0x30], $f13*first[+0x34] and $f14*first[+0x38] into $f8,
  which started as first[+0x3c] (loaded at 0xdbb0f98); a copy goes to $f10, and the `swc1` at
  0xdbb0fc0 stores the sum to second+0x8 on every call. The sum times the old second[+0x8] becomes
  $f7, and the sum times second[+0x4] becomes $f8.
  At 0xdbb0fd0 a `c.ueq.s` compares |$f7| and $f7, then the `bc1f` at 0xdbb0fd8 leaves for 0xdbb10ac
  if they differ (a negative $f7).
  Next, $f9 is built from first[+0xc], first[+0x0], first[+0x4] and first[+0x8]; the `c.ult.s` at
  0xdbb0ffc and the `bc1t` at 0xdbb1004 leave when |$f8| is below it or unordered. $f4 = $f11 +
  second[+0xc]*$f10 then goes through the sign test at 0xdbb1014 and the `bc1f` at 0xdbb101c
  (negative jumps to 0xdbb1034), or else through `c.ult.s` at 0xdbb1024 and `bc1t` at 0xdbb102c
  against second[+0x18]*$f10.
  The last group takes first[+0x1c], [+0x10], [+0x14] and [+0x18], tests `c.ult.s` at 0xdbb1058 with
  the `bc1t` at 0xdbb1060, and repeats the $f4 test with second[+0x10]: a negative value takes the
  `bc1f` at 0xdbb1078 directly to 0xdbb1090, otherwise `c.ult.s` at 0xdbb1080 and the `bc1t` at
  0xdbb1088 compare it with second[+0x18]*$f10.
  At 0xdbb1090 t0 is built as 0xffffffff8080cc03 (0xdbb1094 adds 0xcc03) and the `sw` at 0xdbb1098
  writes it to abs 0x4000; the `swc1` at 0xdbb109c and 0xdbb10a0 write $f12 and $f13 and the one in
  the delay slot at 0xdbb10a8 of the `jr ra` at 0xdbb10a4 writes $f14, with v0 returned as the word
  loaded from abs 0x1020.
  At 0xdbb10ac the routine reads t9 from second+0x20, sets t0 to 0x3f800000 and hands it to $f15 in
  the delay slot of the `jr t9` at 0xdbb10b4, with a0 to a3 and $f12 to $f14 as they stand.
  Unknown: the landing address of the `jr t9` at 0xdbb10b4, because the pointer at second+0x20 is
  left unresolved; a debugger stop at the jump would settle it.
  Unknown: whether a device is mapped at abs 0x4000; the linked mmio rows list only 0x110000 and
  0x120000, and the board address map is the route.
  Test: the mapping-address read in "Test that settles the rest" at the top of this file; a client mapping that starts at 0 makes 0x4000 board +0x120000.
  Evidence grade: established.

- `__glOdyim_Vertex3dv_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb10c0 (n32).
  Sends a vertex held as three doubles (a0, +0x8, +0x10) to the absolute address 0x4000 if every test in a long
  float chain succeeds; a failed test hands control to a handler pointer instead.
  Each `ldc1` (0xdbb10c0, 0xdbb10c8, 0xdbb10d0) is followed by a double-to-single conversion, so `$f12` to
  `$f14` hold single-precision values from here on.
  The loads at 0xdbb10d8 and 0xdbb10dc read the structure pointers kept at absolute 0x1020 and 0x1024. The first
  structure's +0x3c word, plus the three floats times its +0x30, +0x34 and +0x38 words (three multiply-adds),
  gives `$f8`; the sum is copied to `$f10` and the `swc1` at 0xdbb110c stores it unmodified at +0x8 of the
  second structure.
  The first gate is the old +0x8 word times the sum: the `bc1f` at 0xdbb1124 takes the exit to 0xdbb11f8 when
  that product is below zero.
  Next the sum is scaled by the second structure's +0x4 word and its absolute value is taken. The `c.ult.s` at
  0xdbb1148 and 0xdbb11a4 set it against the absolute weighted sum of the first structure's words +0x0 to +0xc
  and +0x10 to +0x1c, and the `bc1t` at 0xdbb1150 or 0xdbb11ac exits on smaller or unordered.
  Each group also gives a signed sum, which `$f4` combines with the second structure's +0xc (then +0x10) word
  times `$f10`. If `$f4` is negative, the `bc1f` at 0xdbb1168 or 0xdbb11c4 jumps over the final comparison (to
  0xdbb1180, or to the store block at 0xdbb11dc); if not, the +0x18 word times `$f10` (multiplied in the delay
  slot at 0xdbb116c or 0xdbb11c8) is the bound, and the `bc1t` at 0xdbb1178 or 0xdbb11d4 exits when `$f4` is
  below it or unordered.
  In the store block t0 becomes 0xffffffff8080cc03 (0xdbb11dc, 0xdbb11e0), the `sw` at 0xdbb11e4 writes it to
  0x4000, the `swc1` at 0xdbb11e8 and 0xdbb11ec add `$f12` and `$f13`, and `$f14` follows in the delay slot
  (0xdbb11f4) of the `jr ra` at 0xdbb11f0. v0 still holds the pointer loaded from 0x1020 and is returned.
  The exit block loads t9 from +0x20 of the second structure (0xdbb11f8); the `jr` at 0xdbb1200 leaves with a0
  untouched and `$f15` set from t0 = 0x3f800000 (0xdbb11fc) in the delay slot.
  Unknown: the target of the `jr` at 0xdbb1200, as t9 comes from memory; reading the +0x20 word while the code
  runs would show it.
  Unknown: which peripheral answers at absolute 0x4000; the linked windows start at 0x110000 and 0x120000,
  so the address map in a datasheet is the route.
  Evidence grade: established.

- `__glOdyim_Vertex3fv_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb1380 (n32).
  Reads a three-float vertex from a0, runs it through a longer chain of float tests than its sibling routines,
  and writes it to the absolute address 0x4000 if every test passes; any failed test tail-jumps to a handler.
  The `lwc1` loads at 0xdbb1380, 0xdbb1384 and 0xdbb1388 put the floats in `$f12` to `$f14`. Absolute 0x1020 and 0x1024 each hold the address of a structure; both are loaded at 0xdbb138c and 0xdbb1390. Three multiply-adds
  build `$f8` from the first structure's +0x3c word plus the floats times its +0x30, +0x34 and +0x38 words; `$f10` receives a copy of the sum, and the sum goes unscaled to +0x8 of the second structure by the `swc1` at 0xdbb13c0.
  Before that store the old +0x8 word was multiplied by the sum; `c.ueq.s` at 0xdbb13d0 tests the product and the `bc1f` at 0xdbb13d8 exits to 0xdbb14ac when it is negative.
  Two more pairs follow, one per group of first-structure words (+0x0 to +0xc, then +0x10 to +0x1c). Each pair
  first compares the scaled absolute sum (the sum times the +0x4 word of the second structure) with the absolute
  value of the group's weighted sum (`c.ult.s` at 0xdbb13fc and 0xdbb1458; `bc1t` at 0xdbb1404 and 0xdbb1460
  leave for 0xdbb14ac on smaller or unordered). It then forms `$f4` as the second structure's word at +0xc (then
  +0x10) times `$f10` plus the group's signed sum. If `$f4` is ordered and negative the `bc1f` at 0xdbb141c or
  0xdbb1478 skips the last check (to 0xdbb1434 or the store block at 0xdbb1490); otherwise `$f4` is compared with
  the +0x18 word times `$f10` (the multiply is in the delay slot at 0xdbb1420 or 0xdbb147c), and the `bc1t` at
  0xdbb142c or 0xdbb1488 leaves when `$f4` is smaller or unordered.
  The store block builds t0 = 0xffffffff8080cc03 (0xdbb1490, 0xdbb1494), writes it with the `sw` at 0xdbb1498 to
  0x4000, then `$f12` and `$f13` (0xdbb149c, 0xdbb14a0) and `$f14` in the delay slot (0xdbb14a8) of the `jr ra`
  at 0xdbb14a4; v0 is still the pointer loaded from 0x1020, and it is what returns.
  The exit block at 0xdbb14ac loads t9 from the second structure's +0x20 word, builds t0 = 0x3f800000 (0xdbb14b0), and calls through t9 at 0xdbb14b4 with `$f15` filled from t0 in the delay slot.
  Unknown: the peripheral behind the absolute address 0x4000, given that the linked windows start at 0x110000
  and 0x120000; a register table covering 0x4000 would settle it.
  Unknown: the destination of the tail jump at 0xdbb14b4; the +0x20 word of the second structure, read during
  a run, would name it.
  Evidence grade: established.

- `__glOdyim_Vertex3i_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb14c0 (n32).
  Takes a vertex as three integers in a0, a1 and a2; it tests float copies of them against two structures,
  and on success posts the raw integers to the absolute address 0x4000, otherwise tail-jumps to a handler.
  The integers are moved to the FPU and converted to single precision in `$f12` to `$f14` for the tests only.
  Structure addresses come from the absolute words 0x1020 and 0x1024 (0xdbb14d8, 0xdbb14dc). Three
  multiply-adds make `$f8` from the first structure's +0x3c word plus the converted values times its +0x30,
  +0x34 and +0x38 words; the sum is saved in `$f10` and written unchanged to the second structure's +0x8 word by the `swc1` at 0xdbb150c.
  The old +0x8 word times the sum is checked first (`c.ueq.s` at 0xdbb151c); a negative product sends the `bc1f` at 0xdbb1524 to 0xdbb15f8.
  Two groups of tests follow, over the first structure's words +0x0 to +0xc and then +0x10 to +0x1c. Each
  compares the absolute value of that group's weighted sum with the sum scaled by the second structure's +0x4
  word (`c.ult.s` at 0xdbb1548 and 0xdbb15a4; the `bc1t` at 0xdbb1550 and 0xdbb15ac leave for 0xdbb15f8 on
  smaller or unordered). Then `$f4` is the second structure's word at +0xc (then +0x10) times `$f10` plus the
  group's signed sum. If `$f4` is ordered and negative the `bc1f` at 0xdbb1568 or 0xdbb15c4 skips ahead (to
  0xdbb1580 or 0xdbb15dc); if not, `$f4` is compared with the +0x18 word times `$f10` (multiply in the delay slot
  at 0xdbb156c or 0xdbb15c8) and the `bc1t` at 0xdbb1578 or 0xdbb15d4 leaves when `$f4` is smaller or unordered.
  The block at 0xdbb15dc builds t0 = 0xffffffff8080cc02 (0xdbb15dc, 0xdbb15e0) and the `sw` at 0xdbb15e4 writes
  it to 0x4000; the `sw` at 0xdbb15e8, 0xdbb15ec and (in the delay slot of the `jr ra` at 0xdbb15f0) 0xdbb15f4
  then write a0, a1 and a2 as received. The return value in v0 is the pointer loaded from 0x1020.
  At 0xdbb15f8 t9 is loaded from +0x20 of the second structure, and the `jr` at 0xdbb1600 jumps through it with `$f15` set from t0 = 0x3f800000 (0xdbb15fc) in the delay slot.
  Inferred: 0x3f800000 is the single-precision pattern for one, which makes `$f15` one at the tail call.
  Unknown: the peripheral behind the absolute address 0x4000, because the linked windows start at 0x110000 and
  0x120000; the register table for 0x4000 is the route.
  Unknown: the destination of the tail jump at 0xdbb1600, since t9 is read from memory; the +0x20 word of the
  second structure during a live run would name it.
  Evidence grade: inferred.

- `__glOdyim_Vertex4fv_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb1f00 (n32).

  Variant of the vertex entry that reads four floats at `a0`, compares them using the records behind the
  words at absolute 0x1020 and 0x1024, and then stores the vertex at absolute 0x4000 or jumps on through
  the second record.
  Four `lwc1` loads from 0xdbb1f00 to 0xdbb1f0c set f12 to f15, and the `lw` pair at 0xdbb1f10 and
  0xdbb1f14 sets v0 and v1 to the record pointers. The first record is read from +0x0 through +0x3c; the
  second is read at +0x4, +0x8, +0xc, +0x10 and +0x18, and each call runs the `swc1` at 0xdbb1f48, which
  puts f8 into +0x8 of that second record.
  The route to the jump at 0xdbb2044 has seven branch points: the `bc1f` at 0xdbb1f60 when a `c.ueq.s`
  compare is false; the `bc1t` at 0xdbb1f90, 0xdbb1fb8, 0xdbb1ff0 and 0xdbb2018 when a `c.ult.s` compare
  is true; and the `bc1f` at 0xdbb1fa8 and 0xdbb2008, which on a false `c.ueq.s` compare skip the next
  `c.ult.s` test and land on 0xdbb1fc0 and 0xdbb2020.
  Past all of them, the `sw` at 0xdbb2028 writes 0xffffffff8080d005 (t0 from 0xdbb2020 and 0xdbb2024) to
  absolute 0x4000. Then `swc1` at 0xdbb202c, 0xdbb2030, 0xdbb2034 and 0xdbb203c, the last in the delay
  slot of the `jr ra` at 0xdbb2038, write the floats from `a0` +0x0 to +0xc to the same address, and the
  return value is the word read from absolute 0x1020.
  If a test diverts, the `lw` at 0xdbb2040 takes t9 from +0x20 of the second record, the `jr t9` at
  0xdbb2044 leaves with a0 to a3 as they came in, and the stores to 0x4000 never happen.
  Unknown: the destination of the `jr t9` at 0xdbb2044, a word in the record at absolute 0x1024 whose
  content a run would reveal.
  Unknown: the float that the `swc1` at 0xdbb1f48 writes, since three words following the multiply into f8
  do not decode as ordinary instructions and could alter f8; a decode of them would settle that.
  Unknown: the device behind absolute 0x4000, as the linked board windows begin at 0x110000 and 0x120000
  and exclude it; a linked row naming 0x4000 would answer that.
  Evidence grade: established.

- `__glOdyim_Vertex4i_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb2080 (n32).
  Writes a constant and the argument registers a0 to a3 to abs 0x4000 when no float test in its chain leaves;
  otherwise it tail-jumps through a pointer read from +0x20 of the record that abs 0x1024 points to.
  Each call reads the words at abs 0x1020 and 0x1024 into v0 and v1 with the `lw` pair at 0xdbb20a0 and
  0xdbb20a4, and the `swc1` at 0xdbb20d8 in the first block writes f8 to +0x8 of the v1 record
  unconditionally.
  The `bc1f` at 0xdbb20f0 leaves unless `c.ueq.s` finds f4 equal to f7 or unordered; the `bc1t` at
  0xdbb2120, 0xdbb2148, 0xdbb2180 and 0xdbb21a8 leave when their `c.ult.s` compares hold; and the `bc1f`
  at 0xdbb2138 and 0xdbb2198 skip ahead to 0xdbb2150 and 0xdbb21b0 when their compares are false.
  The floating-point multiply in the delay slots at 0xdbb213c and 0xdbb219c runs on both paths of its
  branch and multiplies f6 by f10.
  The block at 0xdbb21b0 holds the store path: t0 at 0xdbb21b4 holds 0xffffffff8080d004 (from
  0xffffffff80800000 at 0xdbb21b0 and the immediate 0xd004), the `sw` at 0xdbb21b8 stores it to abs
  0x4000, the `sw` at 0xdbb21bc, 0xdbb21c0 and 0xdbb21c4 store a0 to a2 as they arrived, the `jr ra` at
  0xdbb21c8 returns the word loaded from abs 0x1020, and its delay-slot `sw` at 0xdbb21cc stores a3.
  The exit block at 0xdbb21d0 starts with the `lw` that sets t9 from +0x20 of the v1 record, and the
  `jr t9` at 0xdbb21d4 leaves with a0 to a3 unchanged.
  Inferred: before the checks the arguments a0 to a3 are turned into single-precision floats held in f12 to f15, which
  the eight leading instructions (four moves to the floating-point unit, four conversions) suggest; those
  instructions are not among the listed accesses.
  Unknown: which routine the `jr t9` at 0xdbb21d4 transfers to; the pointer is loaded at 0xdbb21d0 from
  the record that abs 0x1024 points to, and the route is that record's contents at the time of the call.
  Unknown: the floats in f8 at the store at 0xdbb20d8 and in f10 at the multiplies at 0xdbb213c and
  0xdbb219c, which the tool cannot track; the route is a trace of those two registers from 0xdbb2080.
  Evidence grade: inferred.

- `__glOdyim_Vertex4iv_mag_line0` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb2200 (n32).
  Patched-build counterpart of the two-group integer-vector vertex entry: words from `a0` are emitted to
  absolute 0x4000 behind a header constant, unless float checks against the records at absolute 0x1020 and
  0x1024 divert it to a tail jump through the second record.
  The loads at 0xdbb2200 to 0xdbb220c fetch offsets 0, 4, 8 and 12 of `a0` into a4 to a7; those at 0xdbb2230
  and 0xdbb2234 fetch the record pointers into v0 and v1. The `swc1` at 0xdbb2268 writes f8 into +0x8 of
  the second record on every call, ahead of all branches.
  Inferred: f12 to f15 hold the four words converted to float, because the routine contains four moves to
  the floating-point unit and four integer-to-float conversions after the first loads; they are not in the
  listed accesses.
  There are seven branches. The `bc1f` at 0xdbb2280 diverts when a `c.ueq.s` compare is false. The `bc1t`
  at 0xdbb22b0 and 0xdbb2310 divert when `c.ult.s` of f8 and f9 is true, and the `bc1t` at 0xdbb22d8 and
  0xdbb2338 when `c.ult.s` of f4 and f6 is true. The `bc1f` at 0xdbb22c8 and 0xdbb2328 go to 0xdbb22e0 and
  0xdbb2340 when a `c.ueq.s` of f5 and f4 is false, so the `c.ult.s` test just below them is not run.
  When nothing diverts, the `sw` at 0xdbb2348 stores the constant 0xffffffff8080d004 (t0 assembled at
  0xdbb2340 and 0xdbb2344) to absolute 0x4000.
  The `sw` at 0xdbb234c, 0xdbb2350, 0xdbb2354 and 0xdbb235c then
  copy a4 to a7 after it, with the last in the delay slot of the `jr ra` at 0xdbb2358, and v0 carries
  the word read from absolute 0x1020 back to the caller.
  When something diverts, the `lw` at 0xdbb2360 takes t9 from +0x20 of the second record, and the `jr t9`
  at 0xdbb2364 jumps, a0 to a3 unchanged and a4 to a7 holding the words, with no store to 0x4000.
  Unknown: the entry held in t9 at 0xdbb2364, a word in the record at absolute 0x1024 that only a run shows.
  Unknown: the float the `swc1` at 0xdbb2268 writes, since the extracted facts stop at floating-point
  registers; a trace of f8 backward from that store would answer it.
  Evidence grade: inferred.

- `__glOdyim_TexCoord3d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb2a80 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb2a80-0xdbb2aa8 (40 bytes).
  It occupies 40 bytes.
  The `sw` at 0xdbb2a94 stores 4 bytes to abs 0x4000.
  3 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdbb2a98, `swc1` at 0xdbb2a9c, `swc1` at 0xdbb2aa4.
  The return at 0xdbb2aa0 has v0 = ?.

- `__glOdyim_TexCoord3d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb2a80 (n32).
  Evidence grade: inferred.
  The routine is 40 bytes and has the same store pattern as `__glOdyim_Vertex3d`: one integer store at 0xdbb2a94 and three single-precision stores to 0x4000 at 0xdbb2a98, 0xdbb2a9c and 0xdbb2aa4. The name points to texture coordinates, which would explain the three values, but the render does not show which registers hold them. Whether this is a separate command word or the same port is open.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3140 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb3140-0xdbb315c (28 bytes).
  It occupies 28 bytes.
  4 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbb3148, `sw` at 0xdbb314c, `sw` at 0xdbb3150.
  The return at 0xdbb3154 has v0 = ?.

- `__glOdyim_ScratchColor3b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3140 (n32).
  Evidence grade: inferred.
  The routine is 28 bytes and makes four integer stores to 0x4000 at 0xdbb3148, 0xdbb314c and 0xdbb3150 among them, with no argument loads in the facts. The name suggests a three-component byte color written through a scratch path, and the store count fits that loosely. The values stored are not traced, so the color layout is unconfirmed.
  Reviewed: 2026-11-12

- `__glOdyim_Color3d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3200 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb3200-0xdbb3228 (40 bytes).
  It occupies 40 bytes.
  The `sw` at 0xdbb3214 stores 4 bytes to abs 0x4000.
  3 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdbb3218, `swc1` at 0xdbb321c, `swc1` at 0xdbb3224.
  The return at 0xdbb3220 has v0 = ?.

- `__glOdyim_Color3d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3200 (n32).
  Evidence grade: inferred.
  The routine is 40 bytes and writes one integer store at 0xdbb3214 and three single-precision stores to 0x4000 at 0xdbb3218, 0xdbb321c and 0xdbb3224. The shape matches a three-component double color, the same layout as `__glOdyim_TexCoord3d`. The render does not trace the source registers, so the three-value reading comes from the store count and the name.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3240 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb3240-0xdbb3268 (40 bytes).
  It occupies 40 bytes.
  The `sw` at 0xdbb3254 stores 4 bytes to abs 0x4000.
  3 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdbb3258, `swc1` at 0xdbb325c, `swc1` at 0xdbb3264.
  The return at 0xdbb3260 has v0 = ?.

- `__glOdyim_ScratchColor3d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3240 (n32).
  Evidence grade: inferred.
  The routine is 40 bytes and has the same store pattern as `__glOdyim_Color3d`: one integer store at 0xdbb3254 and three single-precision stores to 0x4000 at 0xdbb3258, 0xdbb325c and 0xdbb3264. The "Scratch" in the name suggests a variant that does not go through the main color state, but the facts do not show how it differs from `__glOdyim_Color3d`.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3440 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb3440-0xdbb345c (28 bytes).
  It occupies 28 bytes.
  4 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbb3448, `sw` at 0xdbb344c, `sw` at 0xdbb3450.
  The return at 0xdbb3454 has v0 = ?.

- `__glOdyim_ScratchColor3i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3440 (n32).
  Evidence grade: inferred.
  The routine is 28 bytes and makes four integer stores to 0x4000 at 0xdbb3448, 0xdbb344c and 0xdbb3450 among them, with no argument loads in the facts. It has the same size and store count as `__glOdyim_ScratchColor3ui` and `__glOdyim_ScratchColor3us`, which suggests the three integer variants share one layout. The stored sources are not traced.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3540 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb3540-0xdbb355c (28 bytes).
  It occupies 28 bytes.
  4 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbb3548, `sw` at 0xdbb354c, `sw` at 0xdbb3550.
  The return at 0xdbb3554 has v0 = ?.

- `__glOdyim_ScratchColor3s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3540 (n32).
  Evidence grade: inferred.
  The routine is 28 bytes and makes four integer stores to 0x4000 at 0xdbb3548, 0xdbb354c and 0xdbb3550 among them, with no argument loads in the facts. It matches the other 28-byte three-component Scratch entries in this batch. The render does not show what distinguishes the short-integer form from the other integer forms.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3ui` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3740 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb3740-0xdbb375c (28 bytes).
  It occupies 28 bytes.
  4 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbb3748, `sw` at 0xdbb374c, `sw` at 0xdbb3750.
  The return at 0xdbb3754 has v0 = ?.

- `__glOdyim_ScratchColor3ui` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3740 (n32).
  Evidence grade: inferred.
  The routine is 28 bytes and makes four integer stores to 0x4000 at 0xdbb3748, 0xdbb374c and 0xdbb3750 among them. Its size and store count match `__glOdyim_ScratchColor3i`, so the two are probably the same path with different input types, but the render does not show the input conversion.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3840 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb3840-0xdbb385c (28 bytes).
  It occupies 28 bytes.
  4 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbb3848, `sw` at 0xdbb384c, `sw` at 0xdbb3850.
  The return at 0xdbb3854 has v0 = ?.

- `__glOdyim_ScratchColor3us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3840 (n32).
  Evidence grade: inferred.
  The routine is 28 bytes and makes four integer stores to 0x4000 at 0xdbb3848, 0xdbb384c and 0xdbb3850 among them. It matches the other 28-byte integer Scratch color entries. Whether the unsigned short input is widened before the store is not shown in the facts.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3940 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb3940-0xdbb3960 (32 bytes).
  It occupies 32 bytes.
  5 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbb3948, `sw` at 0xdbb394c, `sw` at 0xdbb3950.
  The return at 0xdbb3958 has v0 = ?.

- `__glOdyim_ScratchColor4b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3940 (n32).
  Evidence grade: inferred.
  The routine is 32 bytes and makes five integer stores to 0x4000 at 0xdbb3948, 0xdbb394c and 0xdbb3950 among them, with no argument loads in the facts. The extra store compared with the three-component forms fits a four-component color. The byte type in the name is not visible in the render.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4dv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3ac0 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb3ac0-0xdbb3b00 (64 bytes).
  It occupies 64 bytes.
  The `ldc1` at 0xdbb3ac0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ldc1` at 0xdbb3ac8 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ldc1` at 0xdbb3ad0 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ldc1` at 0xdbb3ad8 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `sw` at 0xdbb3ae0 stores 4 bytes to abs 0x4000.
  4 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xdbb3ae8, `swc1` at 0xdbb3af0, `swc1` at 0xdbb3af4.
  The return at 0xdbb3af8 has v0 = ?.

- `__glOdyim_ScratchColor4dv` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3ac0 (n32).
  Evidence grade: inferred.
  The routine is 64 bytes. It loads four 8-byte values (`ldc1`) from a0 at +0x0, +0x8, +0x10 and +0x18, makes one integer store at 0xdbb3ae0, and then makes four 4-byte single-precision stores (`swc1`) to 0x4000, at 0xdbb3ae8, 0xdbb3af0, 0xdbb3af4 and 0xdbb3afc. The facts list only loads and stores, so how the 8-byte values become the 4-byte stores is not shown. Role (from name): the name suggests a four-component double-vector color on a scratch path.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3c40 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb3c40-0xdbb3c60 (32 bytes).
  It occupies 32 bytes.
  5 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbb3c48, `sw` at 0xdbb3c4c, `sw` at 0xdbb3c50.
  The return at 0xdbb3c58 has v0 = ?.

- `__glOdyim_ScratchColor4i` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3c40 (n32).
  Evidence grade: inferred.
  The routine is 32 bytes and makes five integer stores to 0x4000 at 0xdbb3c48, 0xdbb3c4c and 0xdbb3c50 among them. It has the same shape as `__glOdyim_ScratchColor4b` and `__glOdyim_ScratchColor4s`. The four-component reading comes from the store count.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3d40 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb3d40-0xdbb3d60 (32 bytes).
  It occupies 32 bytes.
  5 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbb3d48, `sw` at 0xdbb3d4c, `sw` at 0xdbb3d50.
  The return at 0xdbb3d58 has v0 = ?.

- `__glOdyim_ScratchColor4s` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3d40 (n32).
  Evidence grade: inferred.
  The routine is 32 bytes and makes five integer stores to 0x4000 at 0xdbb3d48, 0xdbb3d4c and 0xdbb3d50 among them. It matches the other 32-byte four-component Scratch color entries. The short-integer input type is not visible in the render.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4ub` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3e40 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb3e40-0xdbb3e60 (32 bytes).
  It occupies 32 bytes.
  5 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbb3e48, `sw` at 0xdbb3e4c, `sw` at 0xdbb3e50.
  The return at 0xdbb3e58 has v0 = ?.

- `__glOdyim_ScratchColor4ub` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3e40 (n32).
  Evidence grade: inferred.
  The routine is 32 bytes and makes five integer stores to 0x4000 at 0xdbb3e48, 0xdbb3e4c and 0xdbb3e50 among them. Its layout matches the other 32-byte four-component Scratch color entries. The unsigned-byte input is not traced in the facts.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4ui` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3f40 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb3f40-0xdbb3f60 (32 bytes).
  It occupies 32 bytes.
  5 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbb3f48, `sw` at 0xdbb3f4c, `sw` at 0xdbb3f50.
  The return at 0xdbb3f58 has v0 = ?.

- `__glOdyim_ScratchColor4ui` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb3f40 (n32).
  Evidence grade: inferred.
  The routine is 32 bytes and makes five integer stores to 0x4000 at 0xdbb3f48, 0xdbb3f4c and 0xdbb3f50 among them. It matches its 32-byte four-component neighbors, and the unsigned-int input is not visible in the render.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb4040 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb4040-0xdbb4060 (32 bytes).
  It occupies 32 bytes.
  5 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xdbb4048, `sw` at 0xdbb404c, `sw` at 0xdbb4050.
  The return at 0xdbb4058 has v0 = ?.

- `__glOdyim_ScratchColor4us` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb4040 (n32).
  Evidence grade: inferred.
  The routine is 32 bytes and makes five integer stores to 0x4000 at 0xdbb4048, 0xdbb404c and 0xdbb4050 among them. It matches the other 32-byte four-component Scratch color entries in the batch. The unsigned-short input is not traced.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchIndexd` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb4140 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb4140-0xdbb4158 (24 bytes).
  It occupies 24 bytes.
  The `sw` at 0xdbb414c stores 4 bytes to abs 0x4000.
  The `swc1` at 0xdbb4154 stores 4 bytes to abs 0x4000.
  The return at 0xdbb4150 has v0 = ?.

- `__glOdyim_ScratchIndexd` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb4140 (n32).
  Evidence grade: inferred.
  The routine is 24 bytes and makes one integer store at 0xdbb414c and one single-precision store at 0xdbb4154, both to 0x4000. The facts do not show the source of either store. Role (from name): the name suggests a double color index on a scratch path; the two-store form would fit an index value with one extra word, but the single-precision store does not obviously match a double, so this stays open.
  Reviewed: 2026-11-12

- `glColor3b` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb8000 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb8000-0xdbb8040 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0xdbb8000 loads 4 bytes from abs 0x1590.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbb8004).
  The instructions from 0xdbb800c to 0xdbb803c are not reached by any path from the entry, and their branches are not listed.

- `glVertex2d` in `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so` at 0xdbb9500 (n32).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/gfx/arch/IP30ODSY32/libGLcore.so`.
  Range: 0xdbb9500-0xdbb9600 (256 bytes).
  It occupies 256 bytes.
  The `lw` at 0xdbb9500 loads 4 bytes from abs 0x1530.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdbb9504).
  The instructions from 0xdbb950c to 0xdbb95fc are not reached by any path from the entry, and their branches are not listed.
