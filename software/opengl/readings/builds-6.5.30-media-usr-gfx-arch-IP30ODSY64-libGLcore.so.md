# Readings: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`

One entry per routine, filed here from the reading batches by binary.

- `ApplyParameterF` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a0650 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21a0650-0x21a0ae0 (1168 bytes).
  It occupies 1168 bytes.
  The `ld` at 0x21a0670 loads 8 bytes from abs 0x1020.
  11 such `lbu` accesses load 1 byte from [0x1020]:8 +0xde4, including `lbu` at 0x21a0684, `lbu` at 0x21a07d0, `lbu` at 0x21a07ec.
  14 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0x21a06cc, `sw` at 0x21a0730, `sw` at 0x21a0788.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0x21a06d0, `lwc1` at 0x21a0734, `lwc1` at 0x21a084c.
  29 such `swc1` accesses store 4 bytes to abs 0x10000, including `swc1` at 0x21a06d4, `swc1` at 0x21a06dc, `swc1` at 0x21a06e4.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0x21a06d8, `lwc1` at 0x21a073c, `lwc1` at 0x21a0940.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0x21a06e0, `lwc1` at 0x21a0744, `lwc1` at 0x21a092c.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lwc1` at 0x21a06e8, `lwc1` at 0x21a074c.
  The `lwc1` at 0x21a0888 loads 4 bytes from table(0xbb64) +0x0.
  The `swc1` at 0x21a08c0 stores 4 bytes to table(0xbb64) +0x0.
  2 such `lwc1` accesses load 4 bytes from [0x1020]:8 +0xbb64, including `lwc1` at 0x21a08e8, `lwc1` at 0x21a08f0.
  2 such `lwc1` accesses load 4 bytes from [0x1020]:8 +0xbb68, including `lwc1` at 0x21a08fc, `lwc1` at 0x21a0904.
  The `lw` at 0x21a0920 loads 4 bytes from [0x1020]:8 +0xc9f8.
  The `jalr` at 0x21a091c calls __glOdysseySetProgram [0x220e490] with a0=[0x1020]:8, a1=[[0x1020]:8+51704], a2=0xffffffff908091ea, a3=one of 0xffffffffd080c433, 0xffffffffd080c439, a4=0xffffffffd080c439, a7=0x10000.
  The `bne` branch at 0x21a066c targets 0x21a07b4, is taken when a1 < 0x1600 (unsigned), and falls through when a1 >= 0x1600 (unsigned).
  The `beq` branch at 0x21a0678 targets 0x21a07d4, is taken when a1 >= 0x1601 (unsigned), and falls through when a1 < 0x1601 (unsigned).
  The `beq` branch at 0x21a0690 targets 0x21a07a0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x21a06b4 targets 0x21a0ad4 and is always taken.
  The `beq` branch at 0x21a0700 targets 0x21a07a0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x21a0720 targets 0x21a0754, is taken when (t2(?) & a1(?)) == 0, and falls through when (t2(?) & a1(?)) != 0.
  The `beq` branch at 0x21a0728 targets 0x21a078c, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `beq` branch at 0x21a0758 targets 0x21a07a0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x21a0768 targets 0x21a06f0, is taken when (t2(?) & a1(?)) == 0, and falls through when (t2(?) & a1(?)) != 0.
  The `bne` branch at 0x21a0770 targets 0x21a06c0, is taken when s0(=a0) != 0, and falls through when s0(=a0) == 0.
  The `beq` branch at 0x21a0784 targets 0x21a06d0 and is always taken.
  The `beq` branch at 0x21a0798 targets 0x21a0734 and is always taken.
  The `bne` branch at 0x21a07b8 targets 0x21a07f0, is taken when a1 < 0x1201 (unsigned), and falls through when a1 >= 0x1201 (unsigned).
  The `beq` branch at 0x21a07c0 targets 0x21a0820, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x21a07cc targets 0x21a0688 and is always taken.
  The `bne` branch at 0x21a07d4 targets 0x21a0808, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x21a07dc targets 0x21a0834, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x21a07e8 targets 0x21a0688 and is always taken.
  The `beq` branch at 0x21a07f4 targets 0x21a0844, is taken when a1 == a7(=0x1200), and falls through when a1 != a7(=0x1200).
  The `beq` branch at 0x21a0800 targets 0x21a0688 and is always taken.
  The `beq` branch at 0x21a080c targets 0x21a084c, is taken when a1 == t0(=0x1601), and falls through when a1 != t0(=0x1601).
  The `beq` branch at 0x21a0818 targets 0x21a0688 and is always taken.
  The `beq` branch at 0x21a0820 targets 0x21a08a8, is taken when a1 == t1(=0x1202), and falls through when a1 != t1(=0x1202).
  The `beq` branch at 0x21a082c targets 0x21a0688 and is always taken.
  The `beq` branch at 0x21a0834 targets 0x21a08b0, is taken when a1 == t2(=0x1603), and falls through when a1 != t2(=0x1603).
  The `beq` branch at 0x21a083c targets 0x21a0688 and is always taken.
  The `beq` branch at 0x21a0844 targets 0x21a0688 and is always taken.
  The `bc1f` branch at 0x21a085c targets 0x21a0870, is taken when not (f4 < f8(=0x4004000000000000) (c.lt.d at 0x21a0858)), and falls through when f4 < f8(=0x4004000000000000) (c.lt.d at 0x21a0858).
  The `bc1f` branch at 0x21a0894 targets 0x21a08c0, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `beq` branch at 0x21a08a0 targets 0x21a0688 and is always taken.
  The `beq` branch at 0x21a08a8 targets 0x21a0688 and is always taken.
  The `beq` branch at 0x21a08b0 targets 0x21a092c, is taken when a0(=[[0x1020]:8+3556]:1) == 0, and falls through when a0(=[[0x1020]:8+3556]:1) != 0.
  The `beq` branch at 0x21a08b8 targets 0x21a0688 and is always taken.
  The `beq` branch at 0x21a0924 targets 0x21a089c and is always taken.
  The `bc1t` branch at 0x21a0938 targets 0x21a0974, is taken when FP condition code 3 is true, and falls through when FP condition code 3 is false.
  The `beq` branch at 0x21a096c targets 0x21a0980 and is always taken.
  The `beq` branch at 0x21a09ac targets 0x21a0a88, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `beq` branch at 0x21a09e4 targets 0x21a0a98, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `beq` branch at 0x21a0a1c targets 0x21a0aac, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `beq` branch at 0x21a0a54 targets 0x21a0ac0, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `beq` branch at 0x21a0a80 targets 0x21a08b8 and is always taken.
  The `beq` branch at 0x21a0a90 targets 0x21a09c4 and is always taken.
  The `beq` branch at 0x21a0aa4 targets 0x21a09fc and is always taken.
  The `beq` branch at 0x21a0ab8 targets 0x21a0a34 and is always taken.
  The `beq` branch at 0x21a0acc targets 0x21a0a6c and is always taken.
  The `beq` branch at 0x21a0ad8 targets 0x21a070c and is always taken.
  The return at 0x21a07ac has v0 = ?.
  The instructions from 0x21a06bc to 0x21a06bc are not reached by any path from the entry, and their branches are not listed.

- `ApplyParameterI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a0d30 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21a0d30-0x21a1288 (1368 bytes).
  It occupies 1368 bytes.
  The `ld` at 0x21a0d38 loads 8 bytes from abs 0x1020.
  The `lw` at 0x21a0d70 loads 4 bytes from [0x1020]:8 +0xbb80.
  The `sw` at 0x21a0d80 stores 4 bytes to [0x1020]:8 +0xbb80.
  33 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0x21a0d88, `sw` at 0x21a0d90, `sw` at 0x21a0d98.
  The `lw` at 0x21a0dac loads 4 bytes from [0x1020]:8 +0x9fc0.
  The `lw` at 0x21a0db4 loads 4 bytes from [0x1020]:8 +0x9fc4.
  The `lw` at 0x21a0dbc loads 4 bytes from [0x1020]:8 +0x9fc8.
  The `lw` at 0x21a0dc4 loads 4 bytes from [0x1020]:8 +0x9fcc.
  The `lw` at 0x21a0dcc loads 4 bytes from [0x1020]:8 +0x9fd0.
  The `lw` at 0x21a0dd4 loads 4 bytes from [0x1020]:8 +0x9fd4.
  The `lw` at 0x21a0ddc loads 4 bytes from [0x1020]:8 +0x9fd8.
  The `lw` at 0x21a0de4 loads 4 bytes from [0x1020]:8 +0x9fdc.
  The `lw` at 0x21a0dec loads 4 bytes from [0x1020]:8 +0x9fe0.
  The `lw` at 0x21a0df4 loads 4 bytes from [0x1020]:8 +0x9fe4.
  The `lw` at 0x21a0dfc loads 4 bytes from [0x1020]:8 +0x9fe8.
  The `lw` at 0x21a0e04 loads 4 bytes from [0x1020]:8 +0x9fec.
  The `lw` at 0x21a0e0c loads 4 bytes from [0x1020]:8 +0x9ff0.
  The `lw` at 0x21a0e14 loads 4 bytes from [0x1020]:8 +0x9ff4.
  The `lw` at 0x21a0e1c loads 4 bytes from [0x1020]:8 +0x9ff8.
  The `lw` at 0x21a0e24 loads 4 bytes from [0x1020]:8 +0x9ffc.
  2 such `lbu` accesses load 1 byte from [0x1020]:8 +0xde4, including `lbu` at 0x21a0e2c, `lbu` at 0x21a10b0.
  3 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0x21a0e74, `lw` at 0x21a0ff8, `lw` at 0x21a10d8.
  4 such `lwc1` accesses load 4 bytes from [0x1020]:8 +0xf44, including `lwc1` at 0x21a0e84, `lwc1` at 0x21a0ea0, `lwc1` at 0x21a0ebc.
  25 such `swc1` accesses store 4 bytes to abs 0x10000, including `swc1` at 0x21a0e8c, `swc1` at 0x21a0ea8, `swc1` at 0x21a0ec4.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0x21a0e90, `lw` at 0x21a10d4.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0x21a0eac, `lw` at 0x21a10c8.
  The `lw` at 0x21a0ec8 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `swc1` at 0x21a1050 stores 4 bytes to table(0xbb64) +0x0.
  2 such `lwc1` accesses load 4 bytes from [0x1020]:8 +0xbb64, including `lwc1` at 0x21a106c, `lwc1` at 0x21a1074.
  2 such `lwc1` accesses load 4 bytes from [0x1020]:8 +0xbb68, including `lwc1` at 0x21a1080, `lwc1` at 0x21a1088.
  The `lw` at 0x21a10a0 loads 4 bytes from [0x1020]:8 +0xc9f8.
  The `jalr` at 0x21a109c calls __glOdysseySetProgram [0x220e490] with a0=[0x1020]:8, a1=[[0x1020]:8+51704], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x21a0d50 targets 0x21a0f4c, is taken when a1 < 0x1600 (unsigned), and falls through when a1 >= 0x1600 (unsigned).
  The `beq` branch at 0x21a0d5c targets 0x21a0f74, is taken when a1 >= 0x1601 (unsigned), and falls through when a1 < 0x1601 (unsigned).
  The `beq` branch at 0x21a0d74 targets 0x21a0da4, is taken when v1(=[[0x1020]:8+48000]) == 0, and falls through when v1(=[[0x1020]:8+48000]) != 0.
  The `beq` branch at 0x21a0e38 targets 0x21a0f30, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x21a0e60 targets 0x21a127c and is always taken.
  The `beq` branch at 0x21a0eec targets 0x21a0f30, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x21a0f0c targets 0x21a0ee4, is taken when (t1(?) & a4(?)) == 0, and falls through when (t1(?) & a4(?)) != 0.
  The `bne` branch at 0x21a0f14 targets 0x21a0e70, is taken when s2(=a0) != 0, and falls through when s2(=a0) == 0.
  The `beq` branch at 0x21a0f28 targets 0x21a0e74 and is always taken.
  The `bne` branch at 0x21a0f54 targets 0x21a0f9c, is taken when a1 < 0x1201 (unsigned), and falls through when a1 >= 0x1201 (unsigned).
  The `beq` branch at 0x21a0f60 targets 0x21a0fcc, is taken when a1 >= 0x1202 (unsigned), and falls through when a1 < 0x1202 (unsigned).
  The `beq` branch at 0x21a0f6c targets 0x21a0d70 and is always taken.
  The `bne` branch at 0x21a0f78 targets 0x21a0fb8, is taken when a1 < 0x1602 (unsigned), and falls through when a1 >= 0x1602 (unsigned).
  The `beq` branch at 0x21a0f84 targets 0x21a0fe4, is taken when a1 >= 0x1603 (unsigned), and falls through when a1 < 0x1603 (unsigned).
  The `beq` branch at 0x21a0f94 targets 0x21a0d70 and is always taken.
  The `beq` branch at 0x21a0fb0 targets 0x21a0d70 and is always taken.
  The `beq` branch at 0x21a0fbc targets 0x21a0ff8, is taken when a1 == t0(=0x1601), and falls through when a1 != t0(=0x1601).
  The `beq` branch at 0x21a0fc4 targets 0x21a0d70 and is always taken.
  The `beq` branch at 0x21a0fdc targets 0x21a0d70 and is always taken.
  The `beq` branch at 0x21a0fe4 targets 0x21a10b0, is taken when a1 == t2(=0x1603), and falls through when a1 != t2(=0x1603).
  The `beq` branch at 0x21a0ff0 targets 0x21a0d70 and is always taken.
  The `bc1f` branch at 0x21a1010 targets 0x21a1028, is taken when not (f4 < f10(=0x4004000000000000) (c.lt.d at 0x21a100c)), and falls through when f4 < f10(=0x4004000000000000) (c.lt.d at 0x21a100c).
  The `beq` branch at 0x21a10a8 targets 0x21a0d70 and is always taken.
  The `beq` branch at 0x21a10b4 targets 0x21a10c8, is taken when v0(=[[0x1020]:8+3556]:1) == 0, and falls through when v0(=[[0x1020]:8+3556]:1) != 0.
  The `beq` branch at 0x21a10c0 targets 0x21a0d70 and is always taken.
  The `beq` branch at 0x21a10cc targets 0x21a1220, is taken when a0(=[a2+8]) == 0, and falls through when a0(=[a2+8]) != 0.
  The `beq` branch at 0x21a1144 targets 0x21a1230, is taken when s2(=a0) == 0, and falls through when s2(=a0) != 0.
  The `beq` branch at 0x21a117c targets 0x21a1240, is taken when s2(=a0) == 0, and falls through when s2(=a0) != 0.
  The `beq` branch at 0x21a11b4 targets 0x21a1254, is taken when s2(=a0) == 0, and falls through when s2(=a0) != 0.
  The `beq` branch at 0x21a11ec targets 0x21a1268, is taken when s2(=a0) == 0, and falls through when s2(=a0) != 0.
  The `beq` branch at 0x21a1218 targets 0x21a10c0 and is always taken.
  The `beq` branch at 0x21a1228 targets 0x21a1114 and is always taken.
  The `beq` branch at 0x21a1238 targets 0x21a115c and is always taken.
  The `beq` branch at 0x21a124c targets 0x21a1194 and is always taken.
  The `beq` branch at 0x21a1260 targets 0x21a11cc and is always taken.
  The `beq` branch at 0x21a1274 targets 0x21a1204 and is always taken.
  The `beq` branch at 0x21a1280 targets 0x21a0ef8 and is always taken.
  The return at 0x21a0f44 has v0 = one of [[0x1020]:8+40916], ?.
  The instructions from 0x21a0e68 to 0x21a0e6c are not reached by any path from the entry, and their branches are not listed.

- `LoadAndSendStippledQuads` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a3840.
  Grade: inferred.
  Role (from name): sends the quads for a polygon-stipple draw. It calls ceil four times, at 0x21a3888, 0x21a38b8, 0x21a38ec and 0x21a3d94. It also calls an unnamed callee at 0x21a4054 with a0 taken from this routine's seventh argument (a6) and a7 = 0x10000; the return is either a ceil result or a value the facts do not resolve. The ceil arguments, the quad layout and the stipple source are not shown, so the role rests on the name and on the caller.
  Reviewed: 2026-11-12

- `DrawBitmapUsingPolyStipple` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a40d0.
  Grade: inferred.
  Role (from name): draws a bitmap as a polygon stipple. One path calls __glOdysseyUpdateRasterPos at 0x21a4204, __glOdysseyImageCalcOdyEyeSpaceRasterPosZ at 0x21a4210, __glOdysseyGetNumHWClipPlanes at 0x21a43c0, __glOdysseyValidateHardware at 0x21a4494 and LoadAndSendStippledQuads at 0x21a44bc, then returns at 0x21a47dc. Code after that is a separate path with a __glOdysseyIoctl call at 0x21a4958 (request 0x6f64000d) and many unnamed calls with GL-looking constants such as 0x1700 to 0x1702; it is not read here. The bit layout of the bitmap is not visible in these facts.
  Reviewed: 2026-11-12

- `__glOdylc_Color3b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a4db0.
  Grade: inferred.
  Appears to be the display-list-compile form of glColor3b. Its one visible call is __glSPDlistSpace at 0x21a4e18, with a0 = 0, a3 taken from the global at 0x1020, a4 = 0x10000 and a5 read from the global at 0x1048. The facts do not show how the three byte components are stored.
  Reviewed: 2026-11-12

- `__glOdylc_Color3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a5820.
  Grade: inferred.
  Appears to be the display-list-compile form of glColor3s, with the same call shape as its Color3b sibling. Its one visible call is __glSPDlistSpace at 0x21a5888, with the same globals at 0x1020 and 0x1048. The short components' storage is not shown.
  Reviewed: 2026-11-12

- `__glOdylc_Color3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a5820 (n64)
  **Inferred.** Compares [0x1060] with zero at 0x21a585c and [0x1048] with 4 (signed) at 0x21a5868, and reads [0x1020]. When [0x1048] is below 4 it calls `__glSPDlistSpace` through the pointer at 0x223fd50 at 0x21a5888 with a0 = 0, a3 = [0x1020] and a4 = 0x10000. A zero result goes to 0x21a5940 and returns that result; a nonzero one continues to the stores at 0x21a58d4 to 0x21a58e8 and a store at 0x21a58f0. The return value is one of an unresolved register, 0x1a1698 and the `__glSPDlistSpace` result. Role (from name): the symbol suggests a display-list compile of glColor3s, which the facts do not show.
  Reviewed: 2026-11-12

- `__glOdylc_Color3ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a5d40.
  Grade: inferred.
  Appears to be the display-list-compile form of glColor3ui, with the same call shape as its Color3b sibling. Its one visible call is __glSPDlistSpace at 0x21a5da8, with the same globals at 0x1020 and 0x1048. The storage of the unsigned-int components is not shown.
  Reviewed: 2026-11-12

- `__glOdylc_Color3us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a5fd0.
  Grade: inferred.
  Appears to be the display-list-compile form of glColor3us, with the same call shape as its Color3b sibling. Its one visible call is __glSPDlistSpace at 0x21a6038, with the same globals at 0x1020 and 0x1048. The storage of the unsigned-short components is not shown.
  Reviewed: 2026-11-12

- `__glOdylc_Color4b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a6260.
  Grade: inferred.
  Appears to be the display-list-compile form of glColor4b in the 64-bit build. Its one visible call is __glSPDlistSpace at 0x21a62cc, with a0 = 0, a4 taken from the global at 0x1020, a5 = 0x10000 and a6 read from the global at 0x1048. The four-byte storage and its other side effects are not shown.
  Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21a6ab0`

`__glOdylc_Color4i` is a 344-byte entry. It calls `__glSPDlistSpace` at 0x21a6b1c with a0 = 0, the entry arguments a1 to a3, the pointer loaded from 0x1020 as a4, 0x10000 as a5 and the word at 0x1048 as a6. The call sits behind the branches at 0x21a6aec (on the word at 0x1060) and 0x21a6af8 (a6 against 5), so it does not run on every path. One exit returns the constant 0x1a0408 (or an unknown value) and the other returns the space call's result. Role (from name): the callee name suggests it reserves space in a display list, so the entry looks like it reserves list space for one colour command and passes the argument values through; the callee's body is not read here. The facts do not show how the four integer components are packed, so the encoding is open.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21a6d60`

`__glOdylc_Color4s` has the same 344-byte layout as `__glOdylc_Color4i`, with its space call at 0x21a6dcc and the same argument pattern. Its constant exit is 0x1a0158 (or an unknown value). The name points to the short-integer variant. Size and layout match, but the facts do not show how each short is widened, so that step stays unread.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21a7010`

`__glOdylc_Color4ub` is a 344-byte entry with the same shape as the Color4 family, and its space call is at 0x21a707c. Its constant exit is 0x19fea8 (or an unknown value). The name suggests the unsigned-byte variant. Any byte-to-float conversion is not visible in the facts.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21a72c0`

`__glOdylc_Color4ui` is a 344-byte entry in the same family, with its space call at 0x21a732c and constant exit 0x19fbf8 (or an unknown value). The name suggests the unsigned-int variant. The conversion of each component is not shown by the facts.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21a7570`

`__glOdylc_Color4us` is a 344-byte entry in the same family, with its space call at 0x21a75dc and constant exit 0x19f948 (or an unknown value). The name suggests the unsigned-short variant. Component conversion is not shown.

Grade: inferred.

Reviewed: 2026-11-12

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

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21a8800`

`__glOdyim_Clear` is a 1576-byte entry. It raises GL error 0x502 through `__glSetError` at 0x21a884c and error 0x501 at 0x21a889c. Those values are the public GL codes for invalid operation and invalid value. It calls `__glOdysseyWindowToNormalizedEyeZ` at 0x21a8b2c and `__glOdysseyClear` at 0x21a8b8c and 0x21a8db8. On another path it calls `__glOdysseyIoctl` at 0x21a8d14 with request word 0x6f64000d and `__glOdysseySetDrawbuf` at 0x21a8d6c and 0x21a8dd4. It appears to check arguments, convert the window depth, then either run the clear or set the draw buffer first. Which of those a given call takes, and what the request word carries, are not read here.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21a8e30`

`__glOdysseyClear` is a 2008-byte entry. It calls `__glOdysseyValidateHardware` at 0x21a9258 and again at 0x21a9328, and issues `__glOdysseyIoctl` at 0x21a92dc with request word 0x6f64000e, one step on from the 0x6f64000d request in the `__glOdyim_Clear` entry. In address order one validate call comes before the ioctl and one after it. By its name the callee checks hardware state, but the facts do not show what is checked or how the calls relate to the clear itself. Both returns (0x21a9548 and 0x21a9588) give the word at context offset 48000. The facts do not show what the clear does with its mask or colour, so the work it performs is open.

Grade: inferred.

Reviewed: 2026-11-12

- `__glOdysseyFindWindowSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a9c80 (n64).
  Obtains the current drawable size, either from private ioctl 0x6f64000f or from a function pointer in
  the context, then pushes it into the context's window and read-window size fields through the two
  size-change routines and flags the context when the size differs from the one stored there.
  The routine zeroes a four-word request block at the stack pointer and saves the context words +0xfd8
  and +0xfdc at frame +0x10 and +0x14 (`sw` at 0x21a9ca4 and 0x21a9cac). When the byte at context +0x1c4a5 is
  nonzero (`lbu` at 0x21a9cb0, `beq` at 0x21a9ccc), the `jalr` at 0x21a9ce0 calls `__glOdysseyIoctl` with
  a1 = 0x6f64000f and the block as a2. A zero result copies the block words +0, +4, +8, +0xc to frame
  +0x18, +0x1c, +0x10, +0x14 (0x21a9e10 to 0x21a9e2c); a nonzero result instead calls the pointer at
  context +0x38 with the addresses of frame +0x18, +0x1c, +0x10, +0x14 (`jalr` at 0x21a9d04). A zero byte
  at +0x1c4a5 skips the ioctl and makes the same pointer call at once (`jalr` at 0x21a9e40).
  Inferred: `gfP_OdsyGetDrawableGeometry` is the handler row for 0x6f64000f, so the block carries drawable geometry.
  The integers at frame +0x18 and +0x1c are then converted to single precision, a float loaded at
  displacement -0x3b9c from context + 0x20000 is added to each, and the results are stored with
  displacements -0x3ba4 and -0x3ba0 from that base (`swc1` at 0x21a9d24 and 0x21a9d38).
  If the context words +0xfd8 and +0xfdc differ from frame +0x10 and +0x14 (`bne` at 0x21a9d48, `beq` at
  0x21a9d50), `__glChangeWindowSize` is called (`jalr` at 0x21a9d58) with the context, those two frame
  words, and the frame words at +0x1c and +0x18 among its later arguments. When the byte at context +0xf20
  is nonzero (`lbu` at 0x21a9d60), frame +0x20 and +0x24 are copies of frame +0x10 and +0x14; when it is
  zero, the pointer at context +0x90 is called with the addresses of frame +0x20 and +0x24 and those two
  slots are reloaded (`jalr` at 0x21a9e5c). If the context words +0xfe0 and +0xfe4 differ from frame
  +0x20 and +0x24 (`bne` at 0x21a9d7c, `beq` at 0x21a9d84), `__glChangeReadWindowSize` is called (`jalr`
  at 0x21a9d8c).
  When a word at displacement -0x7188 from context + 0x20000 is nonzero (`lw` at 0x21a9d98, `beq` at
  0x21a9d9c), `__glChangeWindowSize` is called again with the context words +0x7a0 and +0x7a4 (`jalr` at
  0x21a9dac). Finally, when the byte at +0xde8 is nonzero (`beq` at 0x21a9dc8) and either context word
  +0xfd8 or +0xfdc (reloaded) still differs from frame +0x10 or +0x14, the `sb` at 0x21a9dfc stores 1 at
  context +0x144b8 in the delay slot of the return; otherwise the routine returns without that store.
  The routine sets no return value.
  Unknown: whether the committed notes for `__glChangeWindowSize` and `__glChangeReadWindowSize` match the
  calls here, because the notes cover other build addresses (0x32ca2e0, 0x32ca400) and the calls go to
  0x227a2e0 and 0x227a400; the route is a reading of the routines at those two addresses.
  Unknown: the handling by the routines behind context +0x38 and +0x90 of the frame slot addresses they
  receive; the route is a reading of their targets.
  Evidence grade: inferred.

- `ApplyViewport` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a9e70 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21a9e70-0x21aa0d8 (616 bytes).
  It occupies 616 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xfdc, including `lw` at 0x21a9ea4, `lw` at 0x21a9ec4, `lw` at 0x21aa050.
  The `lw` at 0x21a9eb4 loads 4 bytes from a0 (arg0 at entry) +0x7a4.
  The `lw` at 0x21a9eb8 loads 4 bytes from a0 (arg0 at entry) +0xfd8.
  The `lw` at 0x21a9ebc loads 4 bytes from a0 (arg0 at entry) +0x79c.
  The `lw` at 0x21a9ed0 loads 4 bytes from a0 (arg0 at entry) +0x798.
  The `lwc1` at 0x21a9edc loads 4 bytes from a0 (arg0 at entry) +0xf28.
  The `lw` at 0x21a9ef4 loads 4 bytes from a0 (arg0 at entry) +0x7a0.
  The `lwc1` at 0x21a9f00 loads 4 bytes from a0 (arg0 at entry) +0xfc0.
  The `lwc1` at 0x21a9f08 loads 4 bytes from a0 (arg0 at entry) +0x224.
  The `lwc1` at 0x21a9f20 loads 4 bytes from a0 (arg0 at entry) +0xfbc.
  The `swc1` at 0x21a9f38 stores 4 bytes to a0 (arg0 at entry) +0x224.
  The `swc1` at 0x21a9f48 stores 4 bytes to a0 (arg0 at entry) +0x7c0.
  The `swc1` at 0x21a9f58 stores 4 bytes to a0 (arg0 at entry) +0x7c4.
  The `lbu` at 0x21a9f78 loads 1 byte from a0 (arg0 at entry) +0xde8.
  The `lbu` at 0x21a9f88 loads 1 byte from a0 (arg0 at entry) +0x144b9.
  The `ld` at 0x21a9fc0 loads 8 bytes from a0 (arg0 at entry) +0x4850.
  The `lbu` at 0x21a9fe4 loads 1 byte from a0 (arg0 at entry) +0x9590.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x9590, including `sb` at 0x21aa018, `sb` at 0x21aa028.
  2 such `sw` accesses store 4 bytes to abs 0x1030, including `sw` at 0x21aa020, `sw` at 0x21aa02c.
  The `lw` at 0x21aa030 loads 4 bytes from a0 (arg0 at entry) +0x4714.
  The `sw` at 0x21aa038 stores 4 bytes to a0 (arg0 at entry) +0x4714.
  The `lw` at 0x21aa040 loads 4 bytes from a0 (arg0 at entry) +0xbb80.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xbb78, including `lw` at 0x21aa044, `lw` at 0x21aa09c, `lw` at 0x21aa0c0.
  The `sw` at 0x21aa070 stores 4 bytes to a0 (arg0 at entry) +0xbb78.
  The `sw` at 0x21aa074 stores 4 bytes to a0 (arg0 at entry) +0xbb80.
  8 such `sw` accesses store 4 bytes to abs 0x10000, including `sw` at 0x21aa080, `sw` at 0x21aa084, `sw` at 0x21aa08c.
  The `bgezall` at 0x21a9ea0 calls __glOdysseyFindWindowSize [0x21a9c80] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x21a9eac calls __glUpdateViewport [0x22e71d0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x21a9f54 calls __glOdysseyImageDescribeWindow [0x21cd480] with a0=a0+82208, a1=0x0, a2=([a0+1956] + [a0+1948]), a3=?, a4=[a0+4060].
  The `jalr` at 0x21a9f70 calls __glOdysseyImageDescribeWindow [0x21cd480] with a0=a0+82272, a1=0x1, a2=?, a3=?.
  The `jalr` at 0x21a9fa0 calls __glOdysseyImageDescribeWindow [0x21cd480] with a0=a0+82448, a1=0x0, a2=[a0+83129]:1, a3=?.
  The `jalr` at 0x21a9fb8 calls __glOdysseyImageDescribeWindow [0x21cd480] with a0=a0+82384, a1=0x1, a2=?, a3=?.
  The `jalr` at 0x21a9fc4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x21a9f80 targets 0x21a9fc0, is taken when a1(=[a0+3560]:1) == 0, and falls through when a1(=[a0+3560]:1) != 0.
  The `beq` branch at 0x21a9f8c targets 0x21a9fc0, is taken when a2(=[a0+83129]:1) == 0, and falls through when a2(=[a0+83129]:1) != 0.
  The `bltz` branch at 0x21a9fe8 targets 0x21aa024, is taken when a1(=[a0+1944]) < 0 (signed), and falls through when a1(=[a0+1944]) >= 0 (signed).
  The `bltz` branch at 0x21a9ff4 targets 0x21aa024, is taken when a4(=[a0+1948]) < 0 (signed), and falls through when a4(=[a0+1948]) >= 0 (signed).
  The `bne` branch at 0x21a9ffc targets 0x21aa024, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x21aa00c targets 0x21aa024, is taken when a6(=[a0+4060]) < a7(=([a0+1956] + [a0+1948])) (signed), and falls through when a6(=[a0+4060]) >= a7(=([a0+1956] + [a0+1948])) (signed).
  The `beq` branch at 0x21aa014 targets 0x21aa03c, is taken when a3(=[a0+38288]:1) == a0(=0x1), and falls through when a3(=[a0+38288]:1) != a0(=0x1).
  The `beq` branch at 0x21aa01c targets 0x21aa030 and is always taken.
  The `beq` branch at 0x21aa024 targets 0x21aa03c, is taken when a3(=[a0+38288]:1) == 0, and falls through when a3(=[a0+38288]:1) != 0.
  The `beq` branch at 0x21aa06c targets 0x21aa0b8, is taken when t8(=[a0+48000]) == 0, and falls through when t8(=[a0+48000]) != 0.
  The return at 0x21aa0b0 has v0 = 0x10443.
  The return at 0x21aa0d0 has v0 = ret(?).

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

- `InitBuffers` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21abea0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21abea0-0x21ac0a4 (516 bytes).
  It occupies 516 bytes.
  The `sd` at 0x21abeb8 stores 8 bytes to a0 (arg0 at entry) +0x9950.
  The `lbu` at 0x21abebc loads 1 byte from a0 (arg0 at entry) +0xde6.
  The `sd` at 0x21abecc stores 8 bytes to a0 (arg0 at entry) +0x4720.
  The `sd` at 0x21abed8 stores 8 bytes to a0 (arg0 at entry) +0x9958.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xde5, including `lbu` at 0x21abedc, `lbu` at 0x21abf60, `lbu` at 0x21ac028.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x4718, including `sd` at 0x21abee8, `sd` at 0x21ac02c.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x9958, including `ld` at 0x21abf08, `ld` at 0x21ac06c.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xe30, including `lw` at 0x21abf0c, `lw` at 0x21ac04c, `lw` at 0x21ac074.
  The `ld` at 0x21abf64 loads 8 bytes from a0 (arg0 at entry) +0x9c00.
  The `lbu` at 0x21abf8c loads 1 byte from a0 (arg0 at entry) +0xde8.
  The `sw` at 0x21abf94 stores 4 bytes to a0 (arg0 at entry) +0x1458.
  The `sb` at 0x21abfa0 stores 1 byte to a0 (arg0 at entry) +0x1454.
  The `lbu` at 0x21abfc0 loads 1 byte from a0 (arg0 at entry) +0xde9.
  The `sw` at 0x21abfe4 stores 4 bytes to a0 (arg0 at entry) +0x9d5c.
  The `lbu` at 0x21abfe8 loads 1 byte from a0 (arg0 at entry) +0xdea.
  The `bgezall` at 0x21abef4 calls __glOdysseyInitCI [0x21a86b0] with a0=a0+39264, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+39264.
  The `bgezall` at 0x21abf04 calls __glOdysseyInitCI [0x21a86b0] with a0=[a0+39256]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `bgezall` at 0x21abf44 calls __glOdysseyInitCI [0x21a86b0] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x21abf74 calls __glOdysseyInitRGB [0x220f2a0] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x21abfb0 calls __glOdysseyInitAccum [0x2199f60] with a0=a0+40368, a1=a0 at entry (arg0), a2=0x1, a3=[a0+3560]:1, a4=-0x1.
  The `jalr` at 0x21abfd4 calls __glInitDepth [0x227db10] with a0=a0+40160, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x21abffc calls __glInitStencil8 [0x22b5940] with a0=a0+39944, a1=a0 at entry (arg0), a2=0x1ffff800, a3=?.
  The `jalr` at 0x21ac008 calls __glUpdateDepthRange [0x22e6060] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0x21ac040 calls __glOdysseyInitCI [0x21a86b0] with a0=a0+39264, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+39264.
  The `jalr` at 0x21ac058 calls __glOdysseyInitRGB [0x220f2a0] with a0=a0+39264, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+39264.
  The `jalr` at 0x21ac068 calls __glOdysseyInitRGB [0x220f2a0] with a0=[a0+39256]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0x21ac094 calls __glOdysseyInitRGB [0x220f2a0] with a0=a0+39264, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+39264.
  The `beq` branch at 0x21abec8 targets 0x21ac028, is taken when at(=[a0+3558]:1) == 0, and falls through when at(=[a0+3558]:1) != 0.
  The `beq` branch at 0x21abee4 targets 0x21ac050, is taken when t8(=[a0+3557]:1) == 0, and falls through when t8(=[a0+3557]:1) != 0.
  The `blez` branch at 0x21abf10 targets 0x21abf8c, is taken when a0(=[a0+3632]) <= 0 (signed), and falls through when a0(=[a0+3632]) > 0 (signed).
  The `beq` branch at 0x21abf34 targets 0x21abf60 and is always taken.
  The `beq` branch at 0x21abf50 targets 0x21abf84, is taken when s1(?) == s3(=((((([a0+3632] << 0x2) + [a0+3632]) << 0x2) + [a0+3632]) << 0x4)), and falls through when s1(?) != s3(=((((([a0+3632] << 0x2) + [a0+3632]) << 0x2) + [a0+3632]) << 0x4)).
  The `bne` branch at 0x21abf68 targets 0x21abf40, is taken when a1(=[a0+3557]:1) != 0, and falls through when a1(=[a0+3557]:1) == 0.
  The `beq` branch at 0x21abf7c targets 0x21abf50 and is always taken.
  The `beq` branch at 0x21abf9c targets 0x21abfc0, is taken when a3(=[a0+3560]:1) == 0, and falls through when a3(=[a0+3560]:1) != 0.
  The `beq` branch at 0x21abfb8 targets 0x21ac078, is taken when v0(=ret(__glOdysseyInitAccum)) == 0, and falls through when v0(=ret(__glOdysseyInitAccum)) != 0.
  The `beq` branch at 0x21abfc4 targets 0x21abfdc, is taken when a1(=[a0+3561]:1) == 0, and falls through when a1(=[a0+3561]:1) != 0.
  The `beq` branch at 0x21abfec targets 0x21ac004, is taken when a1(=[a0+3562]:1) == 0, and falls through when a1(=[a0+3562]:1) != 0.
  The `beq` branch at 0x21ac030 targets 0x21ac08c, is taken when a1(=[a0+3557]:1) == 0, and falls through when a1(=[a0+3557]:1) != 0.
  The `beq` branch at 0x21ac048 targets 0x21abf10 and is always taken.
  The `beq` branch at 0x21ac070 targets 0x21abf10 and is always taken.
  The `beq` branch at 0x21ac09c targets 0x21abf10 and is always taken.
  The return at 0x21ac020 has v0 = 0x1.
  The return at 0x21ac084 has v0 = 0x0.
  The instructions from 0x21abf3c to 0x21abf3c are not reached by any path from the entry, and their branches are not listed.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21ade10`

`__glOdysseyInitDefaultValues` is a 3560-byte entry that sets state through the `__glOdyim_*` setters. It disables tokens 0xb44 (cull face) and 0xb71 (depth test) among others, and sets material parameters with face 0x408 and parameter tokens 0x1200 to 0x1603. Those tokens match the public GL names. It calls the draw-buffer setter at 0x21ae2b8 and 0x21aeba0, the image initialiser `__glOdysseyImageInit` at 0x21ae344, and the lighting, fragment-lighting, fragment-material and texture initialisers at 0x21ae998 to 0x21ae9bc. It also calls `getenv` at 0x21aeae8. This reads as a default-context setup, which the name also suggests. The environment variable it reads is not identified in the facts.

Grade: inferred.

Reviewed: 2026-11-12

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

- `__glOdysplc_LoadMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b95b0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21b95b0-0x21b95f4 (68 bytes).
  It occupies 68 bytes.
  The `ld` at 0x21b95b4 loads 8 bytes from abs 0x1020.
  The `sb` at 0x21b95e0 stores 1 byte to [0x1020]:8 +0x18ed0.
  The `jalr` at 0x21b95dc calls __glsplc_LoadMatrixf [0x2303f10] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x21b95ec has v0 = ret(__glsplc_LoadMatrixf).

- `__glOdysplc_LoadMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21b9600 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21b9600-0x21b9644 (68 bytes).
  It occupies 68 bytes.
  The `ld` at 0x21b9604 loads 8 bytes from abs 0x1020.
  The `sb` at 0x21b9630 stores 1 byte to [0x1020]:8 +0x18ed0.
  The `jalr` at 0x21b962c calls __glsplc_LoadMatrixd [0x2303f70] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x21b963c has v0 = ret(__glsplc_LoadMatrixd).

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

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21c7170`

`ApplyMaterialF` is a 1888-byte entry that makes no calls. It branches on the token in a1 (comparisons against 0x1200, 0x1201, 0x1202, 0x1600, 0x1601 and 0x1603) and on comparisons of floats loaded from a pointer argument at offsets 0x0 to 0xc against a double 1.0. It stores words at offsets 0x4 to 0x1c from a base register that the facts do not name. It loads words at 16 offsets from 0x9fc0 to 0x9ffc, each at two sites, from the context that the pointer at 0x1020 leads to. It also has 38 word stores at offset 0 between 0x21c72b0 and 0x21c73d8; the facts do not show their base register or destination. Its exits return words from the context at offsets 40940 and 40900. Role (from name): the name and the float reads suggest a material update into an existing record, but the facts do not show which material field each store fills or what the 38-store run is for.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21c78d0`

`ApplyMaterialI` is 2332 bytes and makes no calls. Role (from name): it is the integer-argument counterpart of `ApplyMaterialF`, by its name. It branches on the token in a1 (comparisons against 0x1200, 0x1201, 0x1202, 0x1600, 0x1601 and 0x1603) and on a comparison against a double 1.0. It has a run of 38 word stores at offset 0 between 0x21c7a6c and 0x21c7b88, the same count as the float variant; the facts do not show their base register or destination. It reads the context through the pointer at 0x1020 (the branch at 0x21c7a5c tests the word at context offset 48000). Its two exits return words from the context at offsets 40944 and 40900. The shape matches the float variant, but each branch's target field is not read here.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21e2650`

`AddConvolutionBorders` is a 9664-byte entry with 145 calls: `__glOdysseyProgramTexFilter` 7 times, `LoadTextureFilter` 6 times, `__glOdysseyImageMovePixelsTexture` 26 times, `floorf` 100 times and `ceilf` 6 times. The first calls, in address order, are `__glOdysseyProgramTexFilter` at 0x21e27a4, `LoadTextureFilter` at 0x21e280c, `__glOdysseyImageMovePixelsTexture` at 0x21e28a0, then the same three kinds at 0x21e2914, 0x21e2924 and 0x21e29f8, then four `floorf` calls at 0x21e2aa8 to 0x21e2b04. The `floorf` and `ceilf` calls suggest border offsets computed in floating point. Role (from name): the name points to the GL convolution border. The facts do not show which edges each copy covers.

Grade: inferred.

Reviewed: 2026-11-12

- `__glOdySpanEyeZ24ToWindowZ` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ea6b0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21ea6b0-0x21ea80c (348 bytes).
  It occupies 348 bytes.
  The `ldc1` at 0x21ea6b0 loads 8 bytes from a1 (arg1 at entry) +0x288.
  The `ld` at 0x21ea6b4 loads 8 bytes from a1 (arg1 at entry) +0x278.
  The `lw` at 0x21ea6bc loads 4 bytes from a1 (arg1 at entry) +0xb8.
  The `ldc1` at 0x21ea6c4 loads 8 bytes from [a1+632]:8 +0x40.
  The `ldc1` at 0x21ea6cc loads 8 bytes from abs 0x2347a28.
  The `ldc1` at 0x21ea6d0 loads 8 bytes from [a1+632]:8 +0x30.
  The `ldc1` at 0x21ea6d4 loads 8 bytes from abs 0x2347a18.
  The `ldc1` at 0x21ea6d8 loads 8 bytes from [a1+632]:8 +0x0.
  The `ldc1` at 0x21ea6e8 loads 8 bytes from [a1+632]:8 +0x48.
  The `ldc1` at 0x21ea6f4 loads 8 bytes from [a1+632]:8 +0x38.
  The `lwc1` at 0x21ea730 loads 4 bytes from abs 0x23477a0.
  2 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x21ea744, `swc1` at 0x21ea7f4.
  The `lw` at 0x21ea754 loads 4 bytes from ?.
  The `blez` branch at 0x21ea6f8 targets 0x21ea7f8, is taken when t8(=[a1+184]) <= 0 (signed), and falls through when t8(=[a1+184]) > 0 (signed).
  The `beq` branch at 0x21ea734 targets 0x21ea800 and is always taken.
  The `beq` branch at 0x21ea748 targets 0x21ea7f8, is taken when t8(=[a1+184]) == a2(?), and falls through when t8(=[a1+184]) != a2(?).
  The `bc1t` branch at 0x21ea7b0 targets 0x21ea740, is taken when f5 == f6 (c.eq.d at 0x21ea7a4), and falls through when not (f5 == f6 (c.eq.d at 0x21ea7a4)).
  The `bc1f` branch at 0x21ea7d0 targets 0x21ea7e0, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0x21ea7d8 targets 0x21ea7ec and is always taken.
  The `beq` branch at 0x21ea7f0 targets 0x21ea748 and is always taken.
  The `beq` branch at 0x21ea804 targets 0x21ea754 and is always taken.
  The return at 0x21ea7f8 has v0 = one of [a1+632]:8, ?.
  The instructions from 0x21ea73c to 0x21ea73c are not reached by any path from the entry, and their branches are not listed.

- `__glOdySpanEyeZ16ToWindowZ` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ea810 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21ea810-0x21ea970 (352 bytes).
  It occupies 352 bytes.
  The `ldc1` at 0x21ea810 loads 8 bytes from a1 (arg1 at entry) +0x288.
  The `ld` at 0x21ea814 loads 8 bytes from a1 (arg1 at entry) +0x278.
  The `lw` at 0x21ea81c loads 4 bytes from a1 (arg1 at entry) +0xb8.
  The `ldc1` at 0x21ea824 loads 8 bytes from [a1+632]:8 +0x40.
  The `ldc1` at 0x21ea82c loads 8 bytes from abs 0x2347a28.
  The `ldc1` at 0x21ea830 loads 8 bytes from [a1+632]:8 +0x30.
  The `ldc1` at 0x21ea834 loads 8 bytes from abs 0x2347a18.
  The `ldc1` at 0x21ea838 loads 8 bytes from [a1+632]:8 +0x0.
  The `ldc1` at 0x21ea848 loads 8 bytes from [a1+632]:8 +0x48.
  The `ldc1` at 0x21ea854 loads 8 bytes from [a1+632]:8 +0x38.
  The `lwc1` at 0x21ea888 loads 4 bytes from abs 0x23477a0.
  2 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x21ea8a4, `swc1` at 0x21ea958.
  The `lhu` at 0x21ea8b4 loads 2 bytes from ?.
  The `blez` branch at 0x21ea858 targets 0x21ea95c, is taken when t3(=[a1+184]) <= 0 (signed), and falls through when t3(=[a1+184]) > 0 (signed).
  The `beq` branch at 0x21ea88c targets 0x21ea964 and is always taken.
  The `beq` branch at 0x21ea8a8 targets 0x21ea95c, is taken when t3(=[a1+184]) == a2(?), and falls through when t3(=[a1+184]) != a2(?).
  The `bc1t` branch at 0x21ea914 targets 0x21ea8a0, is taken when f5 == f6 (c.eq.d at 0x21ea908), and falls through when not (f5 == f6 (c.eq.d at 0x21ea908)).
  The `bc1f` branch at 0x21ea934 targets 0x21ea944, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0x21ea93c targets 0x21ea950 and is always taken.
  The `beq` branch at 0x21ea954 targets 0x21ea8a8 and is always taken.
  The `beq` branch at 0x21ea968 targets 0x21ea8b4 and is always taken.
  The return at 0x21ea95c has v0 = one of [a1+632]:8, ?.
  The instructions from 0x21ea894 to 0x21ea89c are not reached by any path from the entry, and their branches are not listed.

- `__glOdySpanWindowZToEyeZ24` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21eb2a0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21eb2a0-0x21eb3f8 (344 bytes).
  It occupies 344 bytes.
  The `ldc1` at 0x21eb2a0 loads 8 bytes from a1 (arg1 at entry) +0x288.
  The `ld` at 0x21eb2a4 loads 8 bytes from a1 (arg1 at entry) +0x278.
  The `lw` at 0x21eb2a8 loads 4 bytes from a1 (arg1 at entry) +0xb8.
  The `ldc1` at 0x21eb2ac loads 8 bytes from [a1+632]:8 +0x48.
  The `ldc1` at 0x21eb2b4 loads 8 bytes from [a1+632]:8 +0x38.
  The `ldc1` at 0x21eb2bc loads 8 bytes from [a1+632]:8 +0x30.
  The `ldc1` at 0x21eb2c4 loads 8 bytes from abs 0x2347a08.
  The `ldc1` at 0x21eb2c8 loads 8 bytes from [a1+632]:8 +0x40.
  The `ldc1` at 0x21eb2d0 loads 8 bytes from a1 (arg1 at entry) +0x280.
  The `ldc1` at 0x21eb2e4 loads 8 bytes from [a1+632]:8 +0x0.
  The `ldc1` at 0x21eb308 loads 8 bytes from abs 0x2347a80.
  The `lwc1` at 0x21eb320 loads 4 bytes from a1 (arg1 at entry) +0x290.
  The `sw` at 0x21eb35c stores 4 bytes to ?.
  The `lwc1` at 0x21eb360 loads 4 bytes from ?.
  The `lbu` at 0x21eb388 loads 1 byte from a1 (arg1 at entry) +0x29a.
  The `lbu` at 0x21eb38c loads 1 byte from a1 (arg1 at entry) +0x29b.
  The `lwc1` at 0x21eb3b8 loads 4 bytes from a1 (arg1 at entry) +0x294.
  The `blez` branch at 0x21eb2ec targets 0x21eb3f0, is taken when t8(=[a1+184]) <= 0 (signed), and falls through when t8(=[a1+184]) > 0 (signed).
  The `beq` branch at 0x21eb30c targets 0x21eb360 and is always taken.
  The `bltz` branch at 0x21eb340 targets 0x21eb358, is taken when t0(?) < 0 (signed), and falls through when t0(?) >= 0 (signed).
  The `beq` branch at 0x21eb358 targets 0x21eb3f0, is taken when t8(=[a1+184]) == a3(?), and falls through when t8(=[a1+184]) != a3(?).
  The `bc1t` branch at 0x21eb37c targets 0x21eb320, is taken when f5 == f7 (c.eq.d at 0x21eb36c), and falls through when not (f5 == f7 (c.eq.d at 0x21eb36c)).
  The `beq` branch at 0x21eb390 targets 0x21eb3a4, is taken when a7(=[a1+666]:1) == 0, and falls through when a7(=[a1+666]:1) != 0.
  The `bc1t` branch at 0x21eb39c targets 0x21eb3b8, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `beq` branch at 0x21eb3a4 targets 0x21eb3c4, is taken when t0(=[a1+667]:1) == 0, and falls through when t0(=[a1+667]:1) != 0.
  The `bc1f` branch at 0x21eb3b0 targets 0x21eb3c4, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `beq` branch at 0x21eb3bc targets 0x21eb328 and is always taken.
  The `bc1t` branch at 0x21eb3d0 targets 0x21eb3e4, is taken when FP condition code 3 is true, and falls through when FP condition code 3 is false.
  The `beq` branch at 0x21eb3e8 targets 0x21eb328 and is always taken.
  The return at 0x21eb3f0 has v0 = one of [a1+632]:8, ?.
  The instructions from 0x21eb314 to 0x21eb31c are not reached by any path from the entry, and their branches are not listed.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21fba30`

`__glOdysseyImageMovePixelsCopy` is a 7924-byte entry that computes transfer geometry before the move. It calls `ceilf` four times, `OdysseyImageCalcXferCopyParams` at 0x21fbc2c, and `ImageCalcDmaFieldOffsets` at 0x21fbd50 and 0x21fbdc8. It then calls `__glOdysseyOpenPMObjReference` at 0x21fbdec and `__glOdysseyOpenPMObjWriteReference` at 0x21fbe34; the names suggest a read-side and a write-side reference to a pixel-memory object, which the facts do not confirm. `__glOdysseyImageCalcPixelModeFields` is called at 0x21fc248, after those two in address order. The name of the entry suggests a copy within one surface. It also calls `ImageCopyPixelBody` from several sites; the copy loop itself is not in this routine's own facts.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x21fe0f0`

`__glOdysseyImageMovePixelsDMAtoGfx` is a 6932-byte entry. It calls `__glOdysseyImageCalcXferWriteParams` at 0x21fe27c and `ImageCalcDmaFieldOffsets` at 0x21fe51c. It uses the GL element-size helpers `__glSpecElementsPerGroup` at 0x21fe2cc and `__glSpecBytesPerElement` at 0x21fe2e0. It calls `__glOdysseyOpenPMObjWriteReference` at 0x21fe61c and makes no call to the plain `__glOdysseyOpenPMObjReference`. It shares the `ImageCalcDmaFieldOffsets` and `__glOdysseyImageCalcPixelModeFields` callees with the copy entry above, and it calls `SendPixelsAsUserPIO` from several sites. Role (from name): the name suggests a move of pixels from DMA memory toward the graphics side; the facts do not confirm the direction.

Grade: inferred.

Reviewed: 2026-11-12

- `__glOdysseyImageMovePixelsDMAtoHost` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21ffc10 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x21ffc10-0x2200374 (1892 bytes).
  It occupies 1892 bytes.
  The `ld` at 0x21ffc30 loads 8 bytes from abs 0x1020.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x21ffc60, `lw` at 0x21ffe0c.
  The `lwc1` at 0x21ffc6c loads 4 bytes from a2 (arg2 at entry) +0x10.
  The `lwc1` at 0x21ffc70 loads 4 bytes from a2 (arg2 at entry) +0x14.
  The `lwc1` at 0x21ffc74 loads 4 bytes from a2 (arg2 at entry) +0x18.
  The `lwc1` at 0x21ffc78 loads 4 bytes from a2 (arg2 at entry) +0x1c.
  The `lwc1` at 0x21ffc7c loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x21ffc80 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0x21ffc88 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0x21ffc90 loads 4 bytes from a2 (arg2 at entry) +0xc.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x0, including `lbu` at 0x21ffc9c, `lbu` at 0x21ffeac.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lw` at 0x21ffcac, `lw` at 0x21ffdd4, `lw` at 0x21ffdf8.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x21ffcb8, `lw` at 0x21ffd88, `lw` at 0x21ffdec.
  2 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x9, including `lbu` at 0x21ffd38, `lbu` at 0x21fff94.
  The `lw` at 0x21ffd44 loads 4 bytes from [0x1020]:8 +0x5c4.
  The `lw` at 0x21ffdb0 loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `lw` at 0x21ffdbc loads 4 bytes from a1 (arg1 at entry) +0x2c.
  The `lw` at 0x21ffdc8 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x21ffdcc loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x21ffe18 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `sw` at 0x21ffe38 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `lw` at 0x21ffe3c loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `ld` at 0x21fff28 loads 8 bytes from a0 (arg0 at entry) +0x30.
  4 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x14, including `lw` at 0x21fff3c, `lw` at 0x21fff88, `lw` at 0x2200270.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x10, including `lw` at 0x21fff68, `lw` at 0x220027c, `lw` at 0x22002a4.
  The `lw` at 0x21fffa8 loads 4 bytes from a1 (arg1 at entry) +0x18.
  The `lw` at 0x21fffb4 loads 4 bytes from (sp-240 + ([a1+20] << 0x2)) +0x0.
  The `lw` at 0x2200034 loads 4 bytes from a1 (arg1 at entry) +0x1c.
  The `lw` at 0x2200120 loads 4 bytes from a1 (arg1 at entry) +0x28.
  The `lw` at 0x2200214 loads 4 bytes from [0x1020]:8 +0x9ec0.
  The `lw` at 0x2200230 loads 4 bytes from [0x1020]:8 +0x285c8.
  The `lw` at 0x220023c loads 4 bytes from [0x1020]:8 +0x820.
  The `lw` at 0x22002fc loads 4 bytes from [0x1020]:8 +0x578.
  The `bgezall` at 0x21ffd14 calls __glOdysseyImageCalcXferReadParams [0x22035e0] with a0=[a0+8], a1=[a0+12], a2=a1 at entry (arg1), a3=sp-264, a6=0x1472a8.
  The `bgezall` at 0x21ffdb8 calls ImageCalcDmaFieldOffsets [0x2202f20] with a0=[a1+44], a1=[a1+48], a2=one of 0x0, 0x1, a3=?, a4=sp-304, a5=sp-300.
  The `jalr` at 0x21ffde8 calls __glSpecElementsPerGroup [0x2256d30] with a0=[a0+8], a1=[a0+12], a2=?, a3=?.
  The `jalr` at 0x21ffdfc calls __glSpecBytesPerElement [0x2256f00] with a0=[a0+12], a1=?, a2=?, a3=?.
  The `jalr` at 0x21ffe74 calls ceilf with a0=?, a1=?, a2=?, a3=?, a5=[a0+16].
  The `jalr` at 0x21fff64 calls __glOdysseyOpenPMObjReference [0x220b780] with a0=[0x1020]:8, a1=[a1+16], a2=[a1+20], a3=[a1+20], a4=sp-240, a5=0x0.
  The `bgezall` at 0x22001a0 calls ImageToDmaHostPixelSize [0x22035c0] with a0=?, a1=?, a2=?, a3=?, a7=-0x8.
  The `jalr` at 0x2200284 calls __glOdysseyReadFromPMObj [0x220b3f0] with a0=[0x1020]:8, a1=[a1+16], a2=[a1+20], a3=?, a5=one of 0x0, 0x2, a6=0x0, a7=sp-296.
  The `jalr` at 0x22002a8 calls __glOdysseyClosePMObjReference [0x220bd70] with a0=[0x1020]:8, a1=[a1+16], a2=[a1+20], a3=[a1+20].
  The `jalr` at 0x2200324 calls __glSetError [0x227a070] with a0=0x505, a1=?, a2=?, a3=?.
  The `jalr` at 0x2200334 calls __glSetError [0x227a070] with a0=0x505, a1=?, a2=?, a3=?.
  The `jalr` at 0x2200348 calls __glSetError [0x227a070] with a0=0x501, a1=0x403, a2=?, a3=?.
  The `jalr` at 0x2200364 calls __glSetError [0x227a070] with a0=0x505, a1=?, a2=?, a3=?, a6=0x1fff0000.
  The `beq` branch at 0x21ffd30 targets 0x2200344, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x21ffd3c targets 0x22002f0, is taken when t3(=[a1+9]:1) == 0, and falls through when t3(=[a1+9]:1) != 0.
  The `beq` branch at 0x21ffd4c targets 0x22002d8, is taken when v0(=[[0x1020]:8+1476]) == t8(=0x405), and falls through when v0(=[[0x1020]:8+1476]) != t8(=0x405).
  The `beq` branch at 0x21ffd54 targets 0x22002d8, is taken when v0(=[[0x1020]:8+1476]) == t9(=0x402), and falls through when v0(=[[0x1020]:8+1476]) != t9(=0x402).
  The `beq` branch at 0x21ffd5c targets 0x22002d8, is taken when v0(=[[0x1020]:8+1476]) == ra(=0x403), and falls through when v0(=[[0x1020]:8+1476]) != ra(=0x403).
  The `beq` branch at 0x21ffd6c targets 0x22002e0, is taken when v0(=[[0x1020]:8+1476]) == v1(=0x407), and falls through when v0(=[[0x1020]:8+1476]) != v1(=0x407).
  The `beq` branch at 0x21ffd74 targets 0x22002e0, is taken when v0(=[[0x1020]:8+1476]) == a0(=0x401), and falls through when v0(=[[0x1020]:8+1476]) != a0(=0x401).
  The `beq` branch at 0x21ffd7c targets 0x22002e0, is taken when v0(=[[0x1020]:8+1476]) == a1(=0x403), and falls through when v0(=[[0x1020]:8+1476]) != a1(=0x403).
  The `beq` branch at 0x21ffd90 targets 0x22002e8, is taken when v0(=[a0+8]) == a3(=0x1902), and falls through when v0(=[a0+8]) != a3(=0x1902).
  The `beq` branch at 0x21ffd98 targets 0x22002e8, is taken when v0(=[a0+8]) == a4(=0x1901), and falls through when v0(=[a0+8]) != a4(=0x1901).
  The `beq` branch at 0x21ffdc0 targets 0x22002bc, is taken when v0(=ret(ImageCalcDmaFieldOffsets)) == 0, and falls through when v0(=ret(ImageCalcDmaFieldOffsets)) != 0.
  The `beq` branch at 0x21ffe2c targets 0x21ffe3c, is taken when a2(=[a0+24]) >= s3(?) (unsigned), and falls through when a2(=[a0+24]) < s3(?) (unsigned).
  The `beq` branch at 0x21ffecc targets 0x22002fc, is taken when t3(=[a0]:1) == 0, and falls through when t3(=[a0]:1) != 0.
  The `beq` branch at 0x21fff70 targets 0x2200358, is taken when (v0(=ret(__glOdysseyOpenPMObjReference)) & 0xff) == 0, and falls through when (v0(=ret(__glOdysseyOpenPMObjReference)) & 0xff) != 0.
  The `beq` branch at 0x220021c targets 0x2200254, is taken when (a5(=[[0x1020]:8+40640]) & 0x400) == 0, and falls through when (a5(=[[0x1020]:8+40640]) & 0x400) != 0.
  The `beq` branch at 0x2200234 targets 0x2200258, is taken when t1(=[[0x1020]:8+165320]) == 0, and falls through when t1(=[[0x1020]:8+165320]) != 0.
  The `beq` branch at 0x2200244 targets 0x2200258, is taken when (t2(=[[0x1020]:8+2080]) & 0x4) == 0, and falls through when (t2(=[[0x1020]:8+2080]) & 0x4) != 0.
  The `beq` branch at 0x220024c targets 0x2200258 and is always taken.
  The `beq` branch at 0x2200290 targets 0x2200320, is taken when (v0(=ret(__glOdysseyReadFromPMObj)) & 0xff) == 0, and falls through when (v0(=ret(__glOdysseyReadFromPMObj)) & 0xff) != 0.
  The `beq` branch at 0x22002b4 targets 0x2200334, is taken when (v0(=ret(__glOdysseyClosePMObjReference)) & 0xff) == 0, and falls through when (v0(=ret(__glOdysseyClosePMObjReference)) & 0xff) != 0.
  The `beq` branch at 0x22002d8 targets 0x21ffd68 and is always taken.
  The `beq` branch at 0x22002e0 targets 0x21ffd8c and is always taken.
  The `beq` branch at 0x22002e8 targets 0x21ffda0 and is always taken.
  The `beq` branch at 0x22002f4 targets 0x21ffd88 and is always taken.
  The `beq` branch at 0x2200318 targets 0x21ffed4 and is always taken.
  The `beq` branch at 0x220032c targets 0x22002c0 and is always taken.
  The `beq` branch at 0x220033c targets 0x22002c0 and is always taken.
  The `beq` branch at 0x2200350 targets 0x22002c0 and is always taken.
  The `beq` branch at 0x220036c targets 0x22002c0 and is always taken.
  The return at 0x22002d0 has v0 = one of ?, ret(__glSetError).

- `__glOdysseyInitLighting` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2206600 (n64).
  Seeds a set of context words at a0 and streams a long run of packed words and single-precision values to the single address 0x10000, with no calls. Two words at a0 +0x18e60 and +0x18e5c get the constant 0xff first (0x2206618, 0x2206620). Between 0x2206630 and 0x2206744 the routine stores constant words to 0x10000, such as 0xffffffffc18093ff at 0x2206630 and 0xffffffffc680d02f at 0x220666c, each followed by three or four float stores. The floats come from registers loaded at 0x220663c, 0x2206640 and 0x2206644 (0x3f4ccccd, 0x3f800000 and 0x3e4ccccd) plus $f6, which a register move at the entry fills from the zero register, so $f6 is 0.
  The context words at a0 +0xc568, +0xc56c, +0xc548, +0xc524 and +0xc528 then feed nine packed words that the routine also stores to 0x10000. Each is the loaded word with its low 10 bits kept, ORed with the bits above bit 9 moved up to start at bit 23, and ORed with a constant: 0x31008000 at 0x2206778 and 0x22067b8, 0x29008000 at 0x2206824 and 0x22068b0, 0x32008000 at 0x220684c and 0x22068d0, 0x20008000 at 0x22068f8, 0x31008000 again at 0x2206918, and 0x21008000 at 0x2206944. The first of them reads +0xc568 right after the store of 0xf0 there (0x220674c); the second reads it after 0xf4 is stored (0x2206798). Between them +0xc548 takes 0x19a (0x22067d8) and +0xc56c takes 0x18 (0x22067e0); the original +0xc548 word was loaded at 0x22067d0 and is stored back unmodified at 0x2206878. The value 0x19a therefore only feeds the packed word built at 0x2206824, and the later packed word at 0x22068b0 reads the restored original. Then +0xc56c and +0xc568 are cleared (0x220687c, 0x2206888), +0xc524 gets 3 (0x2206884) and +0xc528 gets 0x10 (0x2206890) before the remaining packed words are stored.
  The byte at a0 +0xde4 (loaded at 0x22067e4) picks four float words at a0 +0xc504 to +0xc510. When it is zero, the `beq` at 0x22067e8 jumps to 0x2206948, which stores 1.0 (0x3f800000) to +0xc510 and +0xc504 and the zero in $f6 to +0xc50c and +0xc508, then returns to 0x2206800 through the branch at 0x2206954. When it is nonzero the fall-through stores 1.0 to +0xc510 and 0x3e4ccccd to +0xc50c, +0xc508 and +0xc504 (0x22067f0 to 0x22067fc). Both paths meet at 0x2206800, and the four floats are later reloaded and stored to 0x10000 (0x2206858 to 0x2206874) after the packed word of constant 0xffffffff8e809015, in the order +0xc504, +0xc508, +0xc50c, +0xc510.
  Unknown: which board window the address 0x10000 falls in; the linked rows list windows at 0x110000 and 0x120000 and the bundle maps neither onto it.
  Unknown: which fields of the stored words the constants and the packed values set; no field table or datasheet line is linked for them.
  Evidence grade: established.

- `__glOdylc_Normal3b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2209300 (n64).
  Appends a four-word record to the area addressed by the doubleword at absolute 0x1058: a header constant
  and then the arguments a0, a1 and a2, each stored as a word. Before writing it checks the word at 0x1048
  against what the record needs, and calls `__glSPDlistSpace` when that is not enough.
  The pad: the routine starts with a pad of 0, and on the path where the word at 0x1060 is zero (`beq` at
  0x2209328) it sets the pad to 1 if bit 0x4 of the 0x1058 doubleword is set. That path then goes to the
  record stores when the 0x1048 word is at least the pad plus 4 (`beq` at 0x22093f0), and otherwise to the
  call. When the 0x1060 word is nonzero the pad stays 0 and the test is the 0x1048 word against 4 alone
  (`beq` at 0x2209334, taken to the record stores when it is at least 4).
  Inferred: the 0x1048 word is a count of remaining words and the pad is one word that rounds the record
  start up to an 8-byte boundary, because the pad is 1 only when the address has bit 0x4 set and the
  record stores later lower the word by 4 plus the pad.
  The call (`jalr` at 0x2209354) passes a0 zero, with a0, a1 and a2 held in the frame meanwhile. A zero
  result (`beq` at 0x2209370) goes to the `sd` at 0x2209410, which writes the 0x1058 doubleword back as it
  was loaded at 0x220931c minus 4, and then the `sw` at 0x2209424 stores the 0x1048 word plus 1 before the
  return; v0 is the zero from the call and nothing is written to the record. A nonzero result reloads the
  0x1058 doubleword (`ld` at 0x2209378), sets the pad to 1 if bit 0x4 of it is set, and joins the record
  path.
  The record base in a7 is the 0x1058 doubleword plus 4 times the pad. The `sw` at 0x22093a4 writes
  0xffffffffc180cc16 (0xc180 and 0xcc16 built at 0x220939c and 0x22093a0) at +0x0, and the stores at
  0x22093a8, 0x22093ac and 0x22093b0 write a0, a1 and a2 at +0x4, +0x8 and +0xc. The `sd` at 0x22093b8
  stores a7 plus 0x10 to 0x1058; the `sw` at 0x22093c4 stores the 0x1048 word, or the call result when the
  call ran, minus the pad minus 4; and the `sw` at 0x22093d4, in the delay slot of the `jr ra` at
  0x22093d0, adds 4 to the word at 0x1060.
  The callee note for `__glSPDlistSpace` records a read of the doubleword at 0x1020 and an indirect call at
  0x328fda0 whose own target stays open.
  Unknown: the outcome of the indirect call at 0x328fda0 inside `__glSPDlistSpace`, which sets the result
  that decides between the zero and nonzero paths here; the content of that callee is the route.
  Evidence grade: inferred.

- `__glOdylc_Normal3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2209ce0 (n64).
  Writes one four-word record to the area addressed by the doubleword at absolute 0x1058, made of a header
  constant and the arguments a0, a1 and a2 stored as words, and keeps the words at 0x1048 and 0x1060 up to
  date; when the 0x1048 word is too small it first calls `__glSPDlistSpace`.
  Room check, in order: with the 0x1060 word nonzero (`beq` at 0x2209d08 not taken) the pad is 0 and the
  `beq` at 0x2209d14 sends the routine to the record stores when the 0x1048 word is at least 4; with it
  zero, the pad is 1 if bit 0x4 of the 0x1058 doubleword is set, else 0, and the `beq` at 0x2209dd0 sends
  it to the record stores when the 0x1048 word is at least the pad plus 4. In either case a shortfall
  leads to the call.
  Inferred: the pad is one word that rounds the record start up to an 8-byte boundary and the 0x1048
  word counts the words left, because the pad is 1 only when the address has bit 0x4 set and the record
  stores subtract 4 plus the pad from the word.
  `__glSPDlistSpace` is entered by the `jalr` at 0x2209d34, a0 cleared; a0, a1 and a2 wait in the frame. If it returns zero
  (`beq` at 0x2209d50) the routine jumps to the `sd` at 0x2209df0, storing the 0x1058 doubleword as loaded
  at 0x2209cfc less 4, and the `sw` at 0x2209e04 adds 1 to the 0x1048 word; the record is not written and
  v0 stays zero. Any other result is taken as the new count: the `ld` at 0x2209d58 reloads the 0x1058
  doubleword, the pad becomes 1 if its bit 0x4 is set, and the record stores follow.
  Record stores go through a7, the 0x1058 doubleword plus 4 times the pad: 0xffffffffc180cc17 (from 0xc180
  at 0x2209d7c and 0xcc17 at 0x2209d80) at +0x0 by the `sw` at 0x2209d84, and a0, a1, a2 at +0x4, +0x8,
  +0xc by the stores at 0x2209d88 to 0x2209d90. The `sd` at 0x2209d98 moves 0x1058 to a7 plus 0x10, the
  `sw` at 0x2209da4 sets the 0x1048 word to its old value (or the call result) less the pad and less 4,
  and the `sw` at 0x2209db4 in the delay slot of the `jr ra` at 0x2209db0 adds 4 to the 0x1060 word.
  The existing note on `__glSPDlistSpace` lists a read of the doubleword at 0x1020 and an indirect call at
  0x328fda0.
  Unknown: where the indirect call at 0x328fda0 leads, since its result decides the zero or nonzero path
  above; the entry for `__glSPDlistSpace` is the place to look.
  Evidence grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x220ad70`

`__glOdysseyCreatePMObj` is a 520-byte entry. It issues `__glOdysseyIoctl` at 0x220ae18 with request 0x6f640001 and walks a set of known groups with `InitCSetCursor` and `NextCSetElem`. On one path it calls `LookupKnownGroup` at 0x220af30 and `RemoveKnownGroup` at 0x220af50, and its exits return 0 or 1. The name says it creates a pixel-memory object, but the facts show only the ioctl and the group walk, so the object's contents are unknown. The removal path is not clear from these facts.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x220af80`

`__glOdysseyDestroyPMObjGroup` is a 336-byte entry. It walks the known-group set with `InitCSetCursor` and two `NextCSetElem` calls, looks up each group at 0x220b024, removes it at 0x220b038, and issues `__glOdysseyIoctl` at 0x220b064 with request 0x6f640002. Its exits return 0 or 1. The name says it destroys a set of objects. The facts show the walk, the removal and the ioctl, but not the order in which they run.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x220b0d0`

`__glOdysseyDestroyPMObj` is the single-object counterpart of the group destroy above, 336 bytes. It issues `__glOdysseyIoctl` with the same request word, 0x6f640002, at 0x220b130. It walks the known-group set with `InitCSetCursor` at 0x220b17c and `NextCSetElem`, looks the group up at 0x220b1e4 and removes it at 0x220b200. The shared request word suggests both entries close the same kind of object. The facts do not show whether the ioctl comes before or after the removal on a given path.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x220b2a0`

`__glOdysseyAssignToPMObj` is a 332-byte entry. It checks its transfer arguments with `CheckMMXfrArgs` at 0x220b364 and then calls `__glOdysseyIoctl` at 0x220b380 with request 0x6f640006. Its exits return 0 or 1. The name suggests binding an object to a transfer, and the argument check fits that reading. The facts do not show which object the request names.

Grade: inferred.

Reviewed: 2026-11-12

- `__glOdysseyReadFromPMObj` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220b3f0 (n64).
  Copies the record whose address arrives in `a7` into the stack frame and passes the frame to the
  private ioctl request 0x6f640006 when the call to `CheckMMXfrArgs` returns nonzero.
  The `sw` at 0x220b408 stores back the word loaded at 0x220b3f4 from +0x14 of that record ANDed with
  0x1ffff, which keeps only the low 17 bits; the eight words at +0x0 to +0x1c are then copied into the
  frame by the loads and stores at 0x220b440 to 0x220b478, so the copy of +0x14 holds the masked word.
  The `bgezall` at 0x220b488 calls `CheckMMXfrArgs` with the frame address in `a0` and the record words
  +0x1c down to +0x4 in `a1` through `a7`, and the `beq` at 0x220b490 returns 0 at 0x220b4d4 when that
  call's result is zero.
  Otherwise `__glOdysseyIoctl` is called at 0x220b4a8 with `a0` at entry, 0x6f640006 in `a1` and the
  frame in `a2`; a nonzero result returns 0, with `v0` set at 0x220b4bc.
  If the ioctl returns zero, the `beq` at 0x220b4b0 leads to a bit test on the saved `a5` (loaded at
  0x220b4dc from entry sp -0x34) at 0x220b4f4: when bit 0x2 is set, the `sw` at 0x220b4fc clears the
  word at `a0` +0x285d0, and when it is clear, the `sw` at 0x220b50c stores the value loaded at
  0x220b4f0 from entry sp -0x28 there; both paths return 1.
  Inferred: the committed entry for `__glOdysseyIoctl` (its copy in the IP30ODSY build) says it passes
  the request and the later arguments unchanged to the C library's `ioctl`, reading the first argument
  from `a0` +0x7b48, so this call reaches that library call.
  The `bgezall` at 0x220b488 tests `zero`, so it always branches and links: `CheckMMXfrArgs` runs on
  every call, with its delay-slot `daddiu` setting `a0` to the frame address.
  Unknown: the word in the frame slot at entry sp -0x28 that the `sw` at 0x220b50c writes, since no
  store in this routine fills that slot before the frame address goes to the ioctl at 0x220b4a8.
  Evidence grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x220b510`

`OpenPipeMemReference` is a 444-byte entry. It calls `__glOdysseyMIPS_SYNC` at 0x220b58c and again at 0x220b614, and calls `__glOdysseyIoctl` at 0x220b5ec with request 0x6f640003, passing fields loaded from a1 and a2 (a3 = [a2+16], a4 = [a1]). The second sync runs only after the ioctl returns nonzero; when it returns 0 the branch at 0x220b5f4 skips it. The first sync is also behind earlier branches, and a return of 1 at 0x220b5bc sits before the ioctl in address order. The other exit, at 0x220b62c, returns 0 and sits after the second sync. Role (from name): the name says it opens a reference to pipe memory, and the sync calls look like ordering around a shared-memory handoff, which is inferred from the callee's name alone.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x220bed0`

`LookupKnownGroup` is a 308-byte entry. It calls `LookupCSetId` at 0x220bf10 and returns that result when it is nonzero (0x220bf28). When the result is 0, execution goes on, past a further branch at 0x220bf30, to an unnamed callee at 0x220bf44 with a1 = 0x98, a `bzero` call at 0x220bf5c with size 0x98 and `AddKnownGroup` at 0x220bf78; the unnamed callee looks like an allocator, which the facts do not show. It then calls `LookupCoresidRange` at 0x220bf9c. If that returns 0, the branch at 0x220bfa4 leads to `RemoveKnownGroup` at 0x220bfdc and a `__glSetError` call with 0x505 at 0x220bff4. Before the lookup, branches at 0x220bee4 and 0x220bef0 jump to 0x220bfb8 when a1 is -3 or -4.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x220c010`

`LookupCoresidRange` is a 564-byte entry. It forms the address `a1 + (a2 << 3)` and loads a doubleword at offset 16 from it, and it calls `__glOdysseyIoctl` at 0x220c0ec with request 0x6f640004 and the value 2 as a4. It also calls two unnamed callees, at 0x220c070 and 0x220c108, whose roles the facts do not show. A zero return from the callee at 0x220c070 branches to 0x220c22c, which reaches a `__glSetError` call with 0x505 at 0x220c230. One exit returns 0 directly; the others return values the facts do not name. Role (from name): the name suggests a check that two address ranges sit in one memory region. The comparison itself is not in the facts.

Grade: inferred.

Reviewed: 2026-11-12

- `__glOdyim_Begin` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220ca00 (n64).
  Entry point for a begin request: the word at abs 0x1030 (`lw` at 0x220ca04) acts as a three-way state,
  and the context pointer comes from abs 0x1020 (`ld` at 0x220ca00).
  If the word at the context plus 0x18e58 (`lw` at 0x220ca18) is nonzero and the state word is zero, the
  state is replaced by 2 for the rest of the call (conditional move before the `beq` at 0x220ca38).
  Zero branches to the mode test (`beq` at 0x220ca38), 2 branches to 0x220caa8 (`beq` at 0x220ca4c), and
  any other value (1) calls `__glSetError` with 0x502 (`jalr` at 0x220ca58) and returns its result.
  When the state is zero and a0 is 0xa or more unsigned (`beq` at 0x220ca70), it calls `__glSetError` with 0x500
  (`jalr` at 0x220caec) and returns its result.
  When the state is zero and a0 is below 0xa, it writes 0x14400 and then a0 as it arrived to abs 0x10000 (`sw` at 0x220ca90
  and 0x220ca94), writes 1 to abs 0x1030 (`sw` at 0x220ca98) and returns. When a0 is 2 (`beq` at 0x220ca88),
  the delay slot at 0x220cae0 first stores the byte 1 at the context plus 0x1c492. The delay slot of the
  return stores a single-precision zero (a float register zeroed earlier in the routine) to the context plus
  0x1c458 (`swc1` at 0x220caa4).
  When the state is 2 it stores the byte 1 at the context plus 0x18e68 (`sb` at 0x220caac), calls the function pointer
  at the context plus 0x4748 with the context as argument (`jalr` at 0x220cab4), writes 0 to abs 0x1030
  (`sw` at 0x220cac0), then calls the pointer found by following the context plus 0x1ad8 and then +0x38
  with a0 as it arrived (`jalr` at 0x220cacc) and returns that result.
  Inferred: the 0x500 and 0x502 exits are error reports, since `__glSetError` per its callee note records the
  first GL error code of the context.
  Unknown: the routines behind the indirect calls at 0x220cab4 and 0x220cacc; callee notes for them would settle it.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the owner of abs 0x1030 and abs 0x10000 (the latter written at 0x220ca90 and 0x220ca94); no linked register row covers either.
  Evidence grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x220e490`

`__glOdysseySetProgram` is a 1240-byte entry. It reads a byte from the context at offset 0x285e0 and several words from offsets 0xc9a4 to 0xca00. It has 31 word stores at offset 0 from one base register that the facts do not name, and it walks 32-byte records indexed by a1 (`a0 + (a1 << 5)`). It also reads 18 halfwords and three doublewords. Its exits return the constant 0x298080c5 or an unknown value. Role (from name): the name suggests binding a program. The facts show a table walk and a burst of stores, but they do not identify the program object, the destination of the stores or what the words carry.

Grade: inferred.

Reviewed: 2026-11-12

- `__glOdylc_TexCoord1d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2210920 (n64).
  Takes one double precision argument in f12 and appends a two-word record to the area addressed by the
  doubleword at absolute 0x1058: a header constant, then the argument narrowed to single precision. The
  words at 0x1048 and 0x1060 are updated around it, and `__glSPDlistSpace` is called first when the 0x1048
  word is too small.
  Space test: with the 0x1060 word nonzero (the `beq` at 0x221094c not taken) the pad is 0 and the `beq` at
  0x2210958 goes straight to the record stores when the 0x1048 word is at least 2. With it zero, the pad
  is 1 when bit 0x4 of the 0x1058 doubleword is set and otherwise 0, and the `beq` at 0x2210a00 goes to the
  record stores when the 0x1048 word is at least the pad plus 2. A shortfall on either route saves f12 in
  the frame (`sdc1` at 0x2210960 or 0x2210a08) and calls.
  Inferred: the 0x1048 word counts words left and the pad rounds the record start up to an 8-byte boundary,
  because the record stores lower the word by 2 plus the pad and the pad is 1 only with bit 0x4 set.
  The `jalr` at 0x2210970 makes the call, clearing a0 in its delay slot. A zero result (`beq` at 0x2210984) jumps to the `sd`
  at 0x2210a18, which stores the 0x1058 doubleword loaded at 0x221093c less 4, and the `sw` at 0x2210a2c
  adds 1 to the 0x1048 word; the record is skipped. A nonzero result reloads the 0x1058 doubleword (`ld`
  at 0x221098c), sets the pad to 1 if its bit 0x4 is set, and goes on to the record with the double
  that the `ldc1` at 0x2210980 reloaded from the frame.
  The base of the record is a4, the 0x1058 doubleword plus 4 times the pad. The `sw` at 0x22109bc puts
  0xffffffffc380c41f (0xc380 and 0xc41f) at +0x0, and the `swc1` at 0x22109c0 puts the single precision
  value, the conversion of the argument double (f12, or its copy reloaded after the call), at +0x4. The
  `sd` at 0x22109c8 sets 0x1058 to a4 plus 8, the `sw` at 0x22109d4 stores the 0x1048 word (or the call
  result) less the pad and less 2, and the `sw` at 0x22109e4, in the delay slot of the `jr ra` at
  0x22109e0, adds 2 to the 0x1060 word.
  Per the existing note on `__glSPDlistSpace`, that callee reads the doubleword at 0x1020 and makes an
  indirect call.
  Unknown: what the indirect call inside `__glSPDlistSpace` reaches, because its result picks between the zero and
  nonzero cases above; the entry for `__glSPDlistSpace` would settle it.
  Evidence grade: inferred.

- `__glOdylc_TexCoord1f` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2210b60 (n64).
  Pushes a two-word record to a list whose current end is the doubleword at absolute 0x1058,
  opening with the constant 0xffffffffc380c41f (the `sw` at 0x2210bf8). It continues with the
  single-precision argument in f12 (the `swc1` at 0x2210bfc). Inferred: the word at absolute 0x1048
  counts free words, because the routine checks it with 2 plus a flag, calls `__glSPDlistSpace`
  when it is too small, and then reduces it by the 2 words written plus the flag. If the word at
  absolute 0x1060 is zero (the `beq` at 0x2210b8c), the flag is 1 if bit 0x4 of the cursor is set,
  and the `beq` at 0x2210c3c avoids the call when the word at 0x1048 is at least flag plus 2. When
  0x1060 is nonzero the flag is 0 and the `beq` at 0x2210b98 skips the call when the word at 0x1048
  is at least 2. With too little room, f12 waits in the frame during the call, and the `jalr` at
  0x2210bb0 calls `__glSPDlistSpace` with a0 zero in the delay slot. A zero return goes at
  0x2210bc4 to the block at 0x2210c50, which reduces the cursor by 4 (`sd` at 0x2210c54), raises
  the word at 0x1048 by 1 (`sw` at 0x2210c68) and hands back the zero with no record written. A
  nonzero return rereads the cursor at 0x2210bcc and sets the flag to 1 when its bit 0x4 is set.
  The tail at 0x2210bdc puts the record at cursor plus 4 times the flag, saves record plus 8 back
  to the cursor (`sd` at 0x2210c04), stores the word at 0x1048 (its first value, or the call's
  return) minus the flag minus 2 (`sw` at 0x2210c10), and adds 2 to the word at 0x1060 (`sw` at
  0x2210c20). v0 is not touched at the `jr` at 0x2210c1c: it retains the 0x136358 set at 0x2210b80
  when the call is skipped, and the call's return otherwise. Unknown: which structure of the
  absolute words 0x1048, 0x1058 and 0x1060 is open, since neither a linked register row nor a
  datasheet excerpt names them.
  Evidence grade: inferred.

- `__glOdylc_TexCoord1fv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2210c80 (n64).
  Adds a two-word record to a buffer whose current end is the doubleword at absolute 0x1058,
  opening with the constant 0xffffffffc380c41f (the `sw` at 0x2210d10). Next in the record come the
  single-precision value that a0 points to (the `lwc1` at 0x2210d14, the `swc1` at 0x2210d1c).
  Inferred: the word at absolute 0x1048 tracks free space in words, because the routine compares it
  with 2 plus a flag, enters `__glSPDlistSpace` when it is smaller, and then reduces it by the 2
  words written plus the flag. When the word at absolute 0x1060 is zero (the `beq` at 0x2210ca8),
  the flag is 1 if bit 0x4 of the cursor is set, and the `beq` at 0x2210d5c skips the call when the
  word at 0x1048 is at least flag plus 2. If 0x1060 is nonzero the flag is 0 and the `beq` at
  0x2210cb4 bypasses the call when the word at 0x1048 is at least 2. Otherwise, a0 is saved in the
  frame (0x2210cbc) and restored at 0x2210cdc, and the `jalr` at 0x2210ccc invokes
  `__glSPDlistSpace` with a0 zero in the delay slot. A zero return goes at 0x2210ce0 to the block
  at 0x2210d70, which steps back the cursor by 4 (`sd` at 0x2210d74), bumps the word at 0x1048 by 1
  (`sw` at 0x2210d88) and returns the call's zero with no record written. A nonzero return fetches
  again the cursor at 0x2210ce8 and forces the flag to 1 when its bit 0x4 is set. The tail at
  0x2210cf8 lays down the record at cursor plus 4 times the flag, writes record plus 8 back to the
  cursor (`sd` at 0x2210d24), writes the word at 0x1048 (its first value, or the call's return)
  minus the flag minus 2 (`sw` at 0x2210d30), and adds 2 to the word at 0x1060 (`sw` at 0x2210d40).
  v0 is not touched at the `jr` at 0x2210d3c: it holds the 0x136238 set at 0x2210ca0 when the call
  is skipped, and the call's return otherwise. Unknown: the owning structure of the absolute words
  0x1048, 0x1058 and 0x1060 is unresolved, as none of the linked rows or excerpts gives them.
  Evidence grade: inferred.

- `__glOdylc_TexCoord1i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2210da0 (n64).
  Appends a two-word record to a buffer whose fill pointer is the doubleword at absolute 0x1058,
  opening with the constant 0xffffffffc380c41e (the `sw` at 0x2210e34). Next in the record come the
  integer argument a0 unchanged (the `sw` at 0x2210e38). Inferred: the word at absolute 0x1048
  holds the remaining room in words, because the routine checks it with 2 plus a flag, calls
  `__glSPDlistSpace` when it is too small, and then reduces it by the 2 words written plus the
  flag. If the word at absolute 0x1060 is zero (the `beq` at 0x2210dc8), the flag is 1 if bit 0x4
  of the cursor is set, and the `beq` at 0x2210e78 skips the call when the word at 0x1048 is at
  least flag plus 2. If 0x1060 is nonzero the flag is 0 and the `beq` at 0x2210dd4 steps past the
  call when the word at 0x1048 is at least 2. When the room is short, a0 is saved in the frame
  (0x2210ddc) and restored at 0x2210dfc, and the `jalr` at 0x2210dec invokes `__glSPDlistSpace`
  with a0 zero in the delay slot. A zero return branches at 0x2210e00 to the block at 0x2210e8c,
  which lowers the cursor by 4 (`sd` at 0x2210e90), increments the word at 0x1048 by 1 (`sw` at
  0x2210ea4) and hands back the zero with no record written. A nonzero return fetches again the
  cursor at 0x2210e08 and sets the flag to 1 when its bit 0x4 is set. The tail at 0x2210e18 writes
  the record at cursor plus 4 times the flag, moves record plus 8 back to the cursor (`sd` at
  0x2210e40), stores the word at 0x1048 (its first value, or the call's return) minus the flag
  minus 2 (`sw` at 0x2210e4c), and adds 2 to the word at 0x1060 (`sw` at 0x2210e5c). v0 is not
  assigned at the `jr` at 0x2210e58: it retains the 0x136118 set at 0x2210dc0 when the call is
  skipped, and the call's return otherwise. Unknown: the home of the absolute words 0x1048, 0x1058
  and 0x1060 is open, as no linked register row or datasheet excerpt gives them.
  Evidence grade: inferred.

- `__glOdylc_TexCoord1iv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2210ec0 (n64).
  Appends a two-word record to a buffer whose current end is the doubleword at absolute 0x1058,
  opening with the constant 0xffffffffc380c41e (the `sw` at 0x2210f54). Next in the record come the
  32-bit integer that a0 points to (the `lw` at 0x2210f58, the `sw` at 0x2210f5c). Inferred: the
  word at absolute 0x1048 tracks free space in words, because the routine compares it with 2 plus a
  flag, enters `__glSPDlistSpace` when it is smaller, and finally lowers it by the 2 words written
  plus the flag. If the word at absolute 0x1060 is zero (the `beq` at 0x2210ee8), the flag is 1 if
  bit 0x4 of the cursor is set, and the `beq` at 0x2210f9c steps past the call when the word at
  0x1048 is at least flag plus 2. When 0x1060 is nonzero the flag is 0 and the `beq` at 0x2210ef4
  steps past the call when the word at 0x1048 is at least 2. Below that bound, a0 is saved in the
  frame (0x2210efc) and restored at 0x2210f1c, and the `jalr` at 0x2210f0c invokes
  `__glSPDlistSpace` with a0 zero in the delay slot. A zero return goes at 0x2210f20 to the block
  at 0x2210fb0, which reduces the cursor by 4 (`sd` at 0x2210fb4), increments the word at 0x1048 by
  1 (`sw` at 0x2210fc8) and hands back the zero with no record written. A nonzero return reads back
  the cursor at 0x2210f28 and promotes the flag to 1 when its bit 0x4 is set. The tail at 0x2210f38
  writes the record at cursor plus 4 times the flag, writes record plus 8 back to the cursor (`sd`
  at 0x2210f64), stores the word at 0x1048 (its first value, or the call's return) minus the flag
  minus 2 (`sw` at 0x2210f70), and adds 2 to the word at 0x1060 (`sw` at 0x2210f80). v0 is never
  written at the `jr` at 0x2210f7c: it still carries the 0x135ff8 set at 0x2210ee0 when the call is
  skipped, and the call's return otherwise. Unknown: the owner of the absolute words 0x1048, 0x1058
  and 0x1060 is open, because none of the linked rows or excerpts names them.
  Evidence grade: inferred.

- `__glOdylc_TexCoord1s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2210fe0 (n64).
  Pushes a two-word record to a list whose write cursor is the doubleword at absolute 0x1058,
  opening with the constant 0xffffffffc380c41e (the `sw` at 0x2211074). The rest of the record is
  the whole of a0 as a word (the `sw` at 0x2211078). Inferred: the word at absolute 0x1048 holds
  the remaining room in words, because the routine checks it with 2 plus a flag, calls
  `__glSPDlistSpace` when it is smaller, and finally lowers it by the 2 words written plus the
  flag. If the word at absolute 0x1060 is zero (the `beq` at 0x2211008), the flag is 1 if bit 0x4
  of the cursor is set, and the `beq` at 0x22110b8 bypasses the call when the word at 0x1048 is at
  least flag plus 2. If 0x1060 is nonzero the flag is 0 and the `beq` at 0x2211014 skips the call
  when the word at 0x1048 is at least 2. Otherwise, a0 is saved in the frame (0x221101c) and
  restored at 0x221103c, and the `jalr` at 0x221102c calls `__glSPDlistSpace` with a0 zero in the
  delay slot. A zero return branches at 0x2211040 to the block at 0x22110cc, which reduces the
  cursor by 4 (`sd` at 0x22110d0), bumps the word at 0x1048 by 1 (`sw` at 0x22110e4) and hands back
  the zero with no record written. A nonzero return rereads the cursor at 0x2211048 and forces the
  flag to 1 when its bit 0x4 is set. The tail at 0x2211058 places the record at cursor plus 4 times
  the flag, moves record plus 8 back to the cursor (`sd` at 0x2211080), writes the word at 0x1048
  (its first value, or the call's return) minus the flag minus 2 (`sw` at 0x221108c), and adds 2 to
  the word at 0x1060 (`sw` at 0x221109c). v0 is left unwritten at the `jr` at 0x2211098: it keeps
  the 0x135ed8 set at 0x2211000 when the call is skipped, and the call's return otherwise. Unknown:
  the home of the absolute words 0x1048, 0x1058 and 0x1060 is not stated, as neither a linked
  register row nor a datasheet excerpt gives them.
  Evidence grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x2211220`

`__glOdylc_TexCoord2d` is a 308-byte entry with one call to the list-space callee `__glSPDlistSpace` at 0x2211278. It passes 0 as a0, the entry values of a1 and a3, and the word at 0x1048 as a2. Its exits return the constant 0x135c98 (or an unknown value) and the space call's result. The facts also list two single-precision stores at 0x22112d0 and 0x22112d4, but not where their values come from. Role (from name): the name points to a two-double texture-coordinate command. How the coordinate values are encoded is not shown.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x22116e0`

`__glOdylc_TexCoord2i` is a 292-byte entry with one call to `__glSPDlistSpace` at 0x2211730. It passes 0 as a0, the entry values of a1 to a3, and the word at 0x1048 as a4. Its exits return the constant 0x1357d8 (or an unknown value) and the space call's result. The name suggests the two-int variant of the same command. The facts do not show the encoding.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x2212080`

`__glOdylc_TexCoord3i` is a 308-byte entry with one call to `__glSPDlistSpace` at 0x22120d4. It passes 0 as a0, the entry values of a1 to a3, and the word at 0x1048 as a5. Its exits return the constant 0x134e38 (or an unknown value) and the space call's result. The name suggests the three-int variant. The slot that carries the 0x1048 word moves from entry to entry (a2 in the TexCoord2d entry, a4 in the TexCoord2i entry, a5 here, a6 in TexCoord4i). The facts do not explain that choice.

Grade: inferred.

Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x2212aa0`

`__glOdylc_TexCoord4i` is a 324-byte entry with one call to `__glSPDlistSpace` at 0x2212af8. It passes 0 as a0, the entry values of a1 to a3, and the word at 0x1048 as a6. Its exits return the constant 0x134418 (or an unknown value) and the space call's result. The name suggests the four-int variant. The argument slot that carries 0x1048 differs from the other members of this family, as noted above.

Grade: inferred.

Reviewed: 2026-11-12

- `__glOdylc_TexCoord4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2212aa0
  **Inferred.** Role (from name): records a 4-component texture coordinate into a display list. It reads state words at abs 0x1048, 0x1058 and 0x1060. It calls __glSPDlistSpace (0x223fd50, jalr at 0x2212af8) with a0 = 0 and the caller's a1 to a3 passed through, but only on the paths where the branches on the words at 0x1060 and 0x1048 select it (a 0x1048 value below 5 is one such path). Five word stores at 0x2212b4c to 0x2212b5c go through a pointer built from the word at 0x1058, not to the fixed window at abs 0x10000, and sd/sw stores at 0x2212b64, 0x2212b70 and 0x2212b80 update the state words. The record layout and the meaning of the state words are not established. The return is either the constant 0x134418 (on the path that skips the call) or the __glSPDlistSpace result.
  Reviewed: 2026-11-12

## `DownsampleTextureThruHW` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x22157f0`

`DownsampleTextureThruHW` (2452 bytes, `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`) reads a texture descriptor through a0 and a context pointer loaded from abs 0x1020, indexing per-level fields in 68-byte strides. It calls `__glOdysseyImageLogBase2` at 0x2215928 and 0x221595c, `ChooseSuitableBuzzTexModeBaseFmt` at 0x2215a60, `GetImageFmtEnumFromBuzzTexFormat` at 0x2215c08 followed by `__glOdysseyImageCalcFieldFormat` at 0x2215c18, and `__glOdysseyValidateHardware` at 0x2215dfc, which is skipped when the context word at +0x18e54 is zero. It returns 0x7 at 0x2215fd8 when the context word at +0xba44 is nonzero, and otherwise returns the +0x18e54 context word ORed with 0x800 at 0x2216088. The facts show format and size selection followed by hardware validation, but not a pixel copy loop, so whether it performs the downsample itself is unresolved. Role (from name): a hardware texture downsample helper. Grade: inferred.

Reviewed: 2026-11-12

- `DownsampleTextureThruHW` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22157f0
  **Inferred.** Role (from name): prepares a texture downsample on the hardware path. It reads per-texture table entries indexed by a1 and a2 (stride 68 bytes, offsets 0x568 to 0x590) and a large block through the pointer at abs 0x1020. Depending on branches on those entries it calls __glOdysseyImageLogBase2 (0x2206200) twice, ChooseSuitableBuzzTexModeBaseFmt (0x2214280), GetImageFmtEnumFromBuzzTexFormat (0x22141c0), __glOdysseyImageCalcFieldFormat (0x21cd410) and __glOdysseyValidateHardware (0x21ac4a0, jalr at 0x2215dfc, reached when a word in the abs 0x1020 block is nonzero). It returns 0x7 or a value with bit 0x800 set. The filter used for the downsample itself is not established by these facts.
  Reviewed: 2026-11-12

- `__glOdysseyTextureDeactivate` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2216bc0 (n64).
  This routine has no device access of its own. It calls `__glOdysseyClosePMObjReference` on two records, the one
  passed in `a1` and the one whose doubleword pointer sits at `a0` +0x18888, then poisons both.
  The first call passes `a0`, the word at +0x504 of the `a1` record and the words at `a0` +0x18890 and
  +0x18894 (the `jalr` at 0x2216bec); nothing branches on its result. Afterwards the `sd` at 0x2216bf4
  zeroes the doubleword at `a0` +0x18880, and the sixteen words from +0x528 to +0x564 of the `a1` record
  are set to 0xffffffffdeadbeef (stores from 0x2216c04 to 0x2216c40, highest offset first).
  The routine then loads the doubleword at `a0` +0x18888 (0x2216c44). If it is zero, the `beq` at 0x2216c48
  goes to the return at 0x2216ccc and `v0` is still the first call's result. Otherwise it calls the
  callee again with `a0`, the word at +0x504 of that record and the words at `a0` +0x18898 and +0x1889c
  (the `jalr` at 0x2216c5c), writes 0xffffffffbaadcade to the same sixteen words of that record (stores
  from 0x2216c70 to 0x2216cac), zeroes the doubleword at `a0` +0x18888 (the `sd` at 0x2216cb4) and returns
  at 0x2216cbc with the second call's result in `v0`.
  Inferred: the callee's name is the only basis for reading the two calls as releasing a reference held by
  each record.
  Unknown: the device-side outcome of each close, and which routine later reads the two fill patterns
  back; a committed entry for the callee and a listing of this routine's callers would settle both.
  Evidence grade: inferred.

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

- `__glOdysseyGetHardwareShadow` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221dae0 (n64).
  Issues the private board request 0x6f64000c through `__glOdysseyIoctl` and, if that fails, reports it through a callback held in the context. The `bgezall` at 0x221db08 tests the `zero` register, so it always branches and links: it is a plain call to `__glOdysseyIoctl` at 0x221da60. The call carries a0 as it arrived, the request number (high half set at 0x221db00, low bits ORed in by the delay slot at 0x221db0c), the entry a1 passed on in a2 and the entry a3 untouched; the saved a0 goes to the frame at 0x221daf8. A result that is zero or positive (fall-through of the `bltz` at 0x221db10) leaves through 0x221db1c with the ioctl result still in v0. A negative result (branch to 0x221db24) reloads the saved a0, loads the pointer at a0 +0x28 (0x221db2c) and calls through it at 0x221db34 with a0 and a1 set to the failure message string at 0x232c788 (the `daddiu` in the delay slot at 0x221db38 adjusts the word loaded from the table slot at 0x221db30). The error path then jumps back to the shared exit (0x221db3c) and returns whatever that callback returned.
  Inferred: the failure text and the handler name `gfP_OdsySaveHwShadow` in the linked row for 0x6f64000c both point at a save of the hardware shadow.
  Unknown: the target routine the pointer at a0 +0x28 holds at run time; the `jalr` at 0x221db34 is where it is read, and no bundle line fixes its value.
  Evidence grade: inferred.

- `__glOdysseyDriverMakeCurrent` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221e420 (n64).
  Asks the board, through private ioctl 0x6f640008, to make the context in a0 current. On success it
  copies the fields that came back in the request block into the context from offset 0x19308 upward and
  returns 1; on a negative result it calls a context function pointer with a failure string and returns 0.
  The stack block starts zeroed at +0 and +0x28 (`sw` at 0x221e424 and 0x221e428). Context word +0xe34
  above zero makes block +0 equal 2 (`blez` at 0x221e44c, `sw` at 0x221e458), and context word +0xed4
  above zero makes block +0x28 equal 2 (`blez` at 0x221e460, `sw` at 0x221e46c). A zero context byte at
  +0xde4 changes block +0 to its value ORed with 4 (`sw` at 0x221e5b8, delay slot of the jump at
  0x221e5b4), and a zero byte at +0xe84 does the same for block +0x28 (`sw` at 0x221e5c0, delay slot of
  the jump at 0x221e5bc).
  The `bgezall` at 0x221e498 names the zero register, so `__glOdysseyIoctl` is always called, with the
  context, 0x6f640008 and the block address.
  Inferred: the linked ioctl row ties 0x6f640008 to a handler called `gfP_OdsyMakeCurrent`, which matches
  the failure string 'odsy: MakeCurrent ioctl failed' at 0x232c7e0.
  A negative result (`bltz` at 0x221e4a0) sends that string, with the context, to the function pointer at
  context +0x28 (`jalr` at 0x221e65c), and the routine returns 0 at 0x221e674. After a nonnegative
  result, block +0x4, +0x8, the byte +0x22, the halfword +0x20 and the byte +0x23 are stored as five
  words at context +0x19308 through +0x19318 (`sw` at 0x221e4b0 through 0x221e4d0). The block byte at
  +0x24 (`lbu` at 0x221e4d4) then selects among three layouts. At 0, ten doublewords from context
  +0x19330 to +0x19378 are zeroed (`sd` at 0x221e5c4 through 0x221e5ec). At 1, eight block fields are
  copied to +0x19330 through +0x19350 (`sw` at 0x221e5f0 through 0x221e64c) and the area from +0x19358
  to +0x1937c is zeroed. At 2, block fields are copied to +0x19330 through +0x19378 (`sw` at 0x221e534
  through 0x221e5b0). Every case, whatever the byte value, continues at 0x221e4f8, where block +0x2c,
  +0x30, the byte +0x4a, the halfword +0x48 and the byte +0x4b go to context +0x1931c through +0x1932c
  (`sw` at 0x221e500 through 0x221e52c) before the return of 1.
  Inferred: the routine writes only block +0 and +0x28 before the call, so the ioctl handler must fill
  the other block fields through a2.
  Unknown: the layout of the values that handler fills in; the route is the device-side result of
  request 0x6f640008.
  Evidence grade: inferred.

- `__glOdysseySetDrawbuf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x221e680 (n64).
  Builds a small flag word on the stack from its second to fifth arguments, sends it with the private ioctl
  request 0x6f640009 through `__glOdysseyIoctl`, then streams a fixed run of words, mixed with copies of
  four context words, to the single address 0x10000.
  The flag word at `sp` starts at 0 and gains 1, 2, 4 and 8 in turn when `a1`, `a2`, `a3` and `a4` at entry
  are nonzero (the `beq`/`bne` pairs at 0x221e6a4 to 0x221e6c8 and 0x221e8f0 to 0x221e900, with a `sw` to
  `sp` after each step); its address goes to the ioctl in `a2` at 0x221e6e0, with `a0` the context.
  A nonzero ioctl result (the `beq` at 0x221e6f0 falls through) calls the pointer loaded from `a0` +0x28
  at 0x221e6f8 with `a1` the string at 0x232c800 (" can't set drawbuf"); a zero result skips that call.
  Every later `sw` to 0x10000 uses the base register `a2` holding 0x10000, so all of them hit one address,
  none advancing it. The first run stores 0x10443, 0xfa, 0x10046, 0x10019 and 0x96; a `sw` of zero to
  `a0` +0xbb80 sits inside it at 0x221e754 and again at 0x221e868 and 0x221e8d4.
  The `bltz` at 0x221e784 tests the word at `a0` +0xb9f4 shifted left by 4. When it is negative the block at
  0x221e910 stores 0x10841, 0x1204b, 0xffffff and 0x10840 with zeros between, then joins the main block at
  0x221e79c; otherwise the `sw` at 0x221e798 stores the 0xffffffff90008116 value first.
  The main block stores copies of `a0` +0xb9ec, +0xb9f0, +0xb9f4 and +0xb9f8 three times: the second copy
  writes zero in place of +0xb9f4 (0x221e804) and the third ORs 0x800000 into it (the `sw` at 0x221e830).
  The tail from 0x221e894 copies the same four words a fourth time. A second `bltz` at 0x221e888 repeats the +0xb9f4 test and picks
  either the 0x221e954 constant block or the 0xffffffff90008116 store at 0x221e890.
  The return value is the word at `a0` +0xb9f4.
  Inferred: the 0x10000 target appears in the inventory as an address outside the file (memory-mapped I/O),
  and the ioctl row names a set-drawbuffer handler; those two rows are the only support for treating the
  stores as device commands, and no linked board window starts at 0x10000.
  Unknown: how the bits of each constant word sent to 0x10000 (0x10443 and 0x10046 among them) divide into
  fields; no register name is linked to that address, so a datasheet entry for it would settle it.
  Evidence grade: inferred.

- `__glOdyim_LoadMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2228690 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2228690-0x22286fc (108 bytes).
  It occupies 108 bytes.
  The `ld` at 0x2228690 loads 8 bytes from abs 0x1020.
  The `lw` at 0x2228698 loads 4 bytes from abs 0x1030.
  The `jalr` at 0x22286c0 calls __glim_LoadMatrixf [0x22e6620] with a0=a0 at entry (arg0), a1=[0x1020]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x22286d0 calls dirtyMatrix [0x2228360] with a0=[0x1020]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x22286ec calls __glSetError [0x227a070] with a0=0x502, a1=[0x1020]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x22286b4 targets 0x22286e8, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x22286f4 targets 0x22286dc and is always taken.
  The return at 0x22286e0 has v0 = one of ret(dirtyMatrix), ret(__glSetError).

- `__glOdyim_LoadMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2228700 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2228700-0x22287b4 (180 bytes).
  It occupies 180 bytes.
  The `ld` at 0x2228708 loads 8 bytes from abs 0x1020.
  The `lw` at 0x222870c loads 4 bytes from abs 0x1030.
  The `lw` at 0x2228740 loads 4 bytes from [0x1020]:8 +0x7d0.
  The `ldc1` at 0x2228774 loads 8 bytes from a0 (arg0 at entry) +0x50.
  The `sdc1` at 0x2228780 stores 8 bytes to [0x1020]:8 +0x18a68.
  The `ldc1` at 0x2228784 loads 8 bytes from a0 (arg0 at entry) +0x58.
  The `sdc1` at 0x2228788 stores 8 bytes to [0x1020]:8 +0x18a70.
  The `ldc1` at 0x222878c loads 8 bytes from a0 (arg0 at entry) +0x70.
  The `sdc1` at 0x2228790 stores 8 bytes to [0x1020]:8 +0x18a78.
  The `ldc1` at 0x2228794 loads 8 bytes from a0 (arg0 at entry) +0x78.
  The `sdc1` at 0x222879c stores 8 bytes to [0x1020]:8 +0x18a80.
  The `jalr` at 0x2228738 calls __glim_LoadMatrixd [0x22e6710] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x2228754 calls dirtyMatrix [0x2228360] with a0=[0x1020]:8, a1=0x1701, a2=?, a3=?.
  The `jalr` at 0x22287a4 calls __glSetError [0x227a070] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x222872c targets 0x22287a0, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x2228748 targets 0x2228774, is taken when a0(=[[0x1020]:8+2000]) == a1(=0x1701), and falls through when a0(=[[0x1020]:8+2000]) != a1(=0x1701).
  The `beq` branch at 0x2228798 targets 0x222874c and is always taken.
  The `beq` branch at 0x22287ac targets 0x2228760 and is always taken.
  The return at 0x222876c has v0 = one of ret(dirtyMatrix), ret(__glSetError).

- `__glOdysseyEyeToWindowZ` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2229130 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2229130-0x22291ac (124 bytes).
  It occupies 124 bytes.
  The `ld` at 0x2229130 loads 8 bytes from abs 0x1020.
  The `ldc1` at 0x222913c loads 8 bytes from [0x1020]:8 +0x18a70.
  The `ldc1` at 0x2229144 loads 8 bytes from [0x1020]:8 +0x18a80.
  The `ldc1` at 0x2229164 loads 8 bytes from abs 0x2347a18.
  2 such `ldc1` accesses load 8 bytes from [0x1020]:8 +0x18a68, including `ldc1` at 0x222916c, `ldc1` at 0x222918c.
  2 such `ldc1` accesses load 8 bytes from [0x1020]:8 +0x18a78, including `ldc1` at 0x2229170, `ldc1` at 0x2229190.
  2 such `ldc1` accesses load 8 bytes from abs 0x2347a28, including `ldc1` at 0x222917c, `ldc1` at 0x222919c.
  The `bc1t` branch at 0x2229160 targets 0x222918c, is taken when f6 == f0 (c.eq.d at 0x2229154), and falls through when not (f6 == f0 (c.eq.d at 0x2229154)).
  The return at 0x2229184 has v0 = 0x11dd88.
  The return at 0x22291a4 has v0 = 0x11dd88.

- `__glOdysseyNormalizedEyeToWindowZ` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22291b0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22291b0-0x222925c (172 bytes).
  It occupies 172 bytes.
  The `ld` at 0x22291b0 loads 8 bytes from abs 0x1020.
  The `lbu` at 0x22291bc loads 1 byte from [0x1020]:8 +0x18bb0.
  The `ldc1` at 0x22291f8 loads 8 bytes from [0x1020]:8 +0x18a40.
  The `ldc1` at 0x22291fc loads 8 bytes from [0x1020]:8 +0x18a38.
  The `bgezall` at 0x22291e8 calls __glOdysseyUpdateTransform [0x22271c0] with a0=[0x1020]:8, a1=a1 at entry (arg1), a2=[0x1020]:8+131072, a3=a3 at entry (arg3).
  The `bgezall` at 0x2229210 calls __glOdysseyEyeToWindowZ [0x2229130] with a0=?, a1=?, a2=[0x1020]:8+131072, a3=?.
  The `beq` branch at 0x22291d8 targets 0x22291f8, is taken when at(=[[0x1020]:8+101296]:1) == 0, and falls through when at(=[[0x1020]:8+101296]:1) != 0.
  The `bc1f` branch at 0x222922c targets 0x2229244, is taken when not (f6 < f15 (c.lt.d at 0x2229220)), and falls through when f6 < f15 (c.lt.d at 0x2229220).
  The return at 0x222923c has v0 = ret(__glOdysseyEyeToWindowZ).
  The return at 0x2229254 has v0 = ret(__glOdysseyEyeToWindowZ).

- `__glOdysseySoftClipBeginTriangles` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222ab80 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x222ab80-0x222abb4 (52 bytes).
  It occupies 52 bytes.
  The `sd` at 0x222ab94 stores 8 bytes to a0 (arg0 at entry) +0x4e30.
  The `ld` at 0x222ab9c loads 8 bytes from abs 0x2340508.
  The `ld` at 0x222aba0 loads 8 bytes from abs 0x233ef20.
  The `sd` at 0x222aba4 stores 8 bytes to a0 (arg0 at entry) +0x4920.
  The `sd` at 0x222abb0 stores 8 bytes to a0 (arg0 at entry) +0x4890.
  The return at 0x222abac has v0 = 0x222ab40.

- `RGBSendFc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222bdf0 (n64).
  The body makes eleven stores to the absolute address 0x10000, eight carrying words from the record the caller passes in `a0`, two carrying constants and one carrying a value chosen by a record byte, with no branch or call anywhere.
  The first word depends on a record flag read by `lbu` at 0x222bdf4 from offset +0xc0: the `sw` at 0x222be10 stores 0x2f00c02e (built at 0x222bdf8 and 0x222be04) when the byte is nonzero, and 0x3000c02e (built at 0x222bdfc and 0x222be00) when the byte is zero, because a conditional move before the store replaces the first value with the second only on zero.
  At 0x222be18 the word 0xffffffffc580d015 is stored, assembled from 0xc580 at 0x222be08 and 0xd015 at 0x222be14; at 0x222be44 the word 0xffffffff8080d005 is stored, from 0x8080 at 0x222be38 and 0xd005 at 0x222be40.
  Eight float registers are written from the record: `$f7` to `$f4` from +0x98, +0x9c, +0xa0 and +0xa4 by the `swc1` at 0x222be20, 0x222be28, 0x222be30 and 0x222be3c, and `$f3` to `$f0` from +0x18, +0x1c, +0x20 and +0x24 by the `swc1` at 0x222be4c, 0x222be54, 0x222be5c and 0x222be68.
  On return, v0 holds 0xffffffff8080d005 (the word stored at 0x222be44), and the `swc1` at 0x222be68, the last store, rides in the delay slot of the `jr ra` at 0x222be64.
  Unknown: the register or device at the absolute address 0x10000, since the bundle carries no name for that address; a datasheet entry covering it would be the route.
  Evidence grade: established.

- `RGBSendClippedBmFmTN` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222cec0 (n64).
  Writes one of two runs of words to the absolute address 0x10000 through `a2`, chosen by the word at +0x688 of the pointer stored at absolute 0x1020, and both runs take their float words from the record the caller passes in `a0`.
  The `ld` at 0x222cef8 reads that pointer and the `lw` at 0x222cf18 reads its +0x688 word, and the `beq` at 0x222cf2c jumps to 0x222d074 when that word equals 0x81fa (set at 0x222cf20), otherwise falling through to 0x222cf34.
  The word stored by the `sw` at 0x222cf0c, before the branch, depends on the byte at record offset +0xc0 (`lbu` at 0x222ceec): it is 0x2f00c02e (built at 0x222cef0 and 0x222cf00) when the byte is nonzero and 0x3000c02e (built at 0x222cef4 and 0x222cefc) when the byte is zero, because a conditional move before the store replaces the first value with the second only on zero.
  On the fall-through path the `sw` stores at 0x222cf34, 0x222cf48, 0x222cf5c, 0x222cf74, 0x222cf94, 0x222cfa8, 0x222cfbc and 0x222cfd4 write the constants 0xffffffffc680d02f, 0xffffffffc880d031, 0xffffffffc780d030, 0xffffffffc980d032, 0xffffffffca80d035, 0xffffffffcc80d037, 0xffffffffcb80d036 and 0xffffffffcd80d038, and the float words loaded from a0 at +0xa4, +0x98, +0x9c, +0xa0, +0xb4, +0xa8, +0xac and +0xb0 are stored between them by the `swc1` at 0x222cf70, 0x222cf7c, 0x222cf84, 0x222cf8c, 0x222cfd0, 0x222cfdc, 0x222cfe4 and 0x222cfec.
  On the branch path the same eight constants are stored in the same order, at 0x222d074, 0x222d088, 0x222d0a8, 0x222d0c0, 0x222d0e0, 0x222d0f4, 0x222d114 and 0x222d12c, with float words from a0 at +0x178, +0x17c, +0x180, +0xa4, +0x98, +0x9c, +0xa0, +0x188, +0x18c, +0x190, +0xb4, +0xa8, +0xac and +0xb0 between them, and the always-taken `beq` at 0x222d148 jumps to the common tail at 0x222cff4.
  The common tail writes the constant 0xffffffffc180cc19 at 0x222cffc, the constant 0xffffffffc380d025 at 0x222d020 and 0xffffffff8080d005 at 0x222d04c, with float words from a0 at +0xc8, +0xcc, +0xd0, +0x38, +0x3c, +0x40, +0x44, +0x18, +0x1c, +0x20 and +0x24 between them, and the `jr ra` at 0x222d06c returns with its delay-slot store at 0x222d070 writing the +0x24 word.
  The `swc1` stores of $f4 in the two runs write zero, since $f4 is set from the zero register by the first instruction of the routine (0x222cec0) and no later instruction loads it in this routine.
  No instruction in the routine writes v0, so the value returned at the `jr ra` at 0x222d06c is whatever the caller left in it.
  Unknown: the content of the pointer at absolute 0x1020, which no linked row covers; a committed row for it would settle it.
  Evidence grade: established.

## `CISendFc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x222e7b0`

`CISendFc` (100 bytes) reads one byte at a0+0xc0 and five single-precision words from a0 offsets 0x98, 0x18, 0x1c, 0x20 and 0x24. It makes eight stores to the absolute address 0x10000 between 0x222e7d0 and 0x222e810, three word stores and five single-precision stores. It makes no calls and returns the constant 0xffffffff8080d005 at 0x222e80c. The name suggests it sends a fixed record, but the facts do not say what the flag byte selects or what 0x10000 is. Grade: inferred.

Reviewed: 2026-11-12

- `CISendFc` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222e7b0
  **Inferred.** Loads one byte from a0 +0xc0, four floats from a0 at +0x18, +0x1c, +0x20 and +0x24, and a float at +0x98, and stores the floats to the fixed window at abs 0x10000. It stores eight values in total, and returns the constant 0xffffffff8080d005. What the byte at +0xc0 is used for and what the other stored words are is not shown by the facts. The "CI" and "Fc" parts of the name are not explained by the facts, so the purpose is open.
  Reviewed: 2026-11-12

## `CISendClippedBmFmN` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x222ecd0`

`CISendClippedBmFmN` (352 bytes) has the same shape as `CISendFc`: a flag byte load at a0+0xc0, then a long run of stores to abs 0x10000 (11 integer and 39 single-precision). It loads single-precision words from a0 offsets 0x98, 0xa8, 0xc8, 0xcc, 0xd0 and 0x18 to 0x24, fewer loads than float stores, so the facts do not show where every stored float comes from. It makes no calls and returns the same constant as `CISendFc`, at 0x222ee28. The name points to a clipped bitmap send path, and the store count suggests a multi-field packet, but the facts do not confirm the layout. Grade: inferred.

Reviewed: 2026-11-12

- `CISendClippedBmFmN` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x222ecd0
  **Inferred.** The longer sibling of CISendFc, at 352 bytes. It reads the same byte at +0xc0 and the same float fields, plus floats at +0xa8, +0xc8, +0xcc and +0xd0, and writes about 50 values into the window at abs 0x10000 before returning the same constant 0xffffffff8080d005. The name suggests a clipped bitmap send, but the clipping rule and the field meanings are not established.
  Reviewed: 2026-11-12

- `__glOdysseySoftClipRenderLine` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2230f10 (n64).
  Takes a context in `a0` and two vertex records in `a1` and `a2`. It either returns early after float
  tests, or writes a short fixed word sequence to the single address 0x10000 around calls through function
  pointers in the context, and returns 0x14001.
  If the word at `a0` +0x670 equals 0x1d00 (`beq` at 0x2230f58), the entry first swaps the 8-byte slot at
  `a0` +0x4920 to the value loaded from the slot at abs 0x2342a00 (the `sd` at 0x22312c8). Only when the
  word at `a0` +0x8ce0 has a bit that is clear in the word at the pointer `a0` +0x8cd8 points to
  (0x22312d8), it calls the pointer at +0x10 of that same pointer's target. It then stores the saved slot
  back at 0x2231308, sets both flag bytes read from +0x199 of `a1` and `a2` to zero in registers, and resumes at 0x2230f60.
  The word at `a0` +0x9ec0, shifted left by 0x29, decides the next step (`bgez` at 0x2230f6c). Non-negative
  goes to the float path below. Negative stores 0x14400 and then 1 to 0x10000 (the `sw` at 0x2230f7c and the
  one in the delay slot at 0x2230f88), then picks one of four call sequences from the flag bytes at +0x199
  of `a1` and `a2`. All four set the words at `a0` +0xc9ec and +0xc9e8, calling the pointers at `a0`
  +0x1c560 or +0x1c568 and `__glOdysseySetProgram` (through the slot at abs 0x233fd08) with `a1` equal to 1
  or to the word saved from `a0` +0xc9f8.
  With both bytes nonzero (0x2230f94): both words get the +0xc9f8 value, then the +0x1c560 pointer is called
  for `a1`, then for `a2`.
  With the `a1` byte nonzero and the `a2` byte zero (0x2231314): +0xc9e8 gets the +0xc9f8 value, +0x1c560
  is called for `a1`, then SetProgram with 1, +0x1c568 for `a2`, then SetProgram with the saved value.
  With the `a1` byte zero and the `a2` byte nonzero (0x22310a4): SetProgram with 1 and +0xc9e8 set to 1,
  +0x1c568 for `a1`, SetProgram with the saved value, +0xc9ec set to it, then +0x1c560 for `a2`.
  With both bytes zero (0x2231044): both words are set to 1, SetProgram with 1, +0x1c568 for `a1` and for
  `a2`, then SetProgram with the saved value.
  All four continue at 0x2230fbc, which stores 0x14001 to 0x10000. If the word at `a0` +0xba44 is nonzero,
  the `sw` at 0x2230fd8 first zeroes `a0` +0xbb80 and 0x10443, 0xfa and 0x10046 (twice) are stored to
  0x10000; the `sw` at 0x2230ffc then sets +0xbb80 to 1, and the return at 0x223100c leaves 0x14001 in `v0`.
  The float path (0x22310f4) takes a four-term product-sum of `a0` +0xb908 to +0xb914 with +0x18 to +0x24
  of `a1`, divides the double at abs 0x2347a18 by it, narrows the quotient to single precision, then does
  the same for `a2`. It multiplies each quotient by a second product-sum with `a0` +0xb8d8 to +0xb8e4 and
  stores the single-precision result at +0x88 of `a1` (0x2231184) and of `a2` (0x22311c0). Adding the
  `a2` +0x88 value to `a0` +0x1c45c and +0x1c464, it returns early (0x2231014) if the first sum is not
  below 0, is below the word at +0x1c468, and the `a1` +0x88 value is at most the second sum. Otherwise
  the same is repeated with `a0` +0xb8e8 to +0xb8f4, storing +0x8c of `a1` (0x223123c) and `a2` (0x2231274)
  and using `a0` +0x1c460, +0x1c464 and +0x1c468; all three tests holding returns early (0x2231018), and
  any failing jumps to the sequence from 0x2230f74 that stores 0x14400 (the `sw` at 0x2230f7c).
  Unknown: the content of the word sequences sent to 0x10000 (0x14400, 0x14001, 0x10443), since no register
  name is linked to that address, so a datasheet row for 0x10000 is what would settle it.
  Unknown: the targets of the calls through `a0` +0x1c560, +0x1c568 and +0x10 of the pointer at +0x8cd8;
  the bundle holds no entry for them, and `v0` is not set on the early-return path.
  Evidence grade: established.

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

- `SphereGen` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22366f0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22366f0-0x22367ec (252 bytes).
  It occupies 252 bytes.
  The `ld` at 0x22366f8 loads 8 bytes from a0 (arg0 at entry) +0x4838.
  The `lwc1` at 0x2236734 loads 4 bytes from a1 (arg1 at entry) +0x2c.
  The `lwc1` at 0x223673c loads 4 bytes from a1 (arg1 at entry) +0x28.
  The `lwc1` at 0x2236740 loads 4 bytes from a1 (arg1 at entry) +0x30.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xf28, including `lwc1` at 0x2236798, `lwc1` at 0x22367ac, `lwc1` at 0x22367d4.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0x22367a8, `swc1` at 0x22367d0.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0x22367c0, `swc1` at 0x22367dc.
  The `jalr` at 0x2236718 calls (unknown callee) with a0=sp-48, a1=a1+104, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x223672c calls Dot [0x22366c0] with a0=a1+40, a1=sp-48, a2=?, a3=?.
  The `bc1t` branch at 0x2236794 targets 0x22367d0, is taken when f6 == f0(=ret(Dot)) (c.eq.s at 0x2236788), and falls through when not (f6 == f0(=ret(Dot)) (c.eq.s at 0x2236788)).
  The return at 0x22367c8 has v0 = ret(Dot).
  The return at 0x22367e4 has v0 = ret(Dot).

- `__glOdysseyQueryHyperpipeBestRect` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2238e80 (n64).
  Collects its arguments in a stack block and hands the block to `__glOdysseyIoctl` under the private request 0x6f640016. Block layout: +0x0 takes the word at a0 +0x285d8 (load at 0x2238e94, store in the call's delay slot at 0x2238ed4), +0x4 the entry a1 (0x2238ec4), +0x8 the constant 1 (0x2238ea8), +0xc the entry a2 (0x2238ebc), and +0x10 and +0x18 the entry a3 and a4 as doublewords (0x2238e9c, 0x2238e98). Three arguments are real at the `jalr` at 0x2238ed0: a0, the request number and the block address. Registers a3 and a5 still hold 1 (the constant stored at +0x8) and 0x10e038 (the offset constant that sets up gp), which are leftovers. After the call v1 is set to 1 (0x2238edc); a conditional move just before the `jr` at 0x2238eec zeroes it if the ioctl returned zero, and the delay slot at 0x2238ef0 moves it into v0. So the caller sees 1 for a nonzero ioctl result and 0 otherwise.
  Inferred: the table row for 0x6f640016 gives the handler `gfP_OdsyHPqueryAttrib`, which suggests an attribute read.
  Unknown: the block words the handler for 0x6f640016 fills in (the linked rows give no layout).
  Evidence grade: inferred.

- `__glOdysseyQueryHyperpipeBestRect` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2238e80 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2238e80-0x2238ef4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0x2238e94 loads 4 bytes from a0 (arg0 at entry) +0x285d8.
  The `jalr` at 0x2238ed0 calls __glOdysseyIoctl [0x221da60] with a0=a0 at entry (arg0), a1=0x6f640016, a2=sp-48, a3=0x1, a5=0x10e038.
  The return at 0x2238eec has v0 = one of 0x0, 0x1.

- `__glOdysseyQueryHyperpipeRect` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2238f00 (n64).
  The block this routine puts on the stack for private request 0x6f640016 holds the word loaded from a0 +0x285d8 at 0x2238f14 (stored in the `jalr` delay slot, 0x2238f50), the entry a1 at +0x4 (0x2238f40), a constant 1 at +0x8 (0x2238f24), the entry a2 at +0xc (0x2238f38) and the entry a3 at +0x18 as a doubleword (0x2238f18). `__glOdysseyIoctl` is called at 0x2238f4c with a0, the request and the block address; leftover a3 (1) and a4 (0x10dfb8, the gp-building constant) ride along. The routine answers 1 for a nonzero ioctl result and 0 for zero: v1 is preset to 1 (0x2238f58), a conditional move before the `jr` at 0x2238f68 clears it on zero, and the delay slot at 0x2238f6c copies it to v0.
  Inferred: the row for 0x6f640016 names handler `gfP_OdsyHPqueryAttrib`, an attribute query.
  Unknown: the fields that the handler for 0x6f640016 writes into the block: the bundle does not carry its layout.
  Evidence grade: inferred.

- `__glOdysseyQueryHyperpipeLimit` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2238f70 (n64).
  Calls `__glOdysseyIoctl` with the private request 0x6f640018, passing a block of five values built in the frame; the linked row ties that number to the handler `gfP_OdsyHPsetAttrib`. The block takes the word from a0 +0x285d8 first (load at 0x2238f84, delay-slot `sw` at 0x2238fc0), then the entry a1 (+0x4, 0x2238fb0), the constant 2 (+0x8, 0x2238f94), the entry a2 (+0xc, 0x2238fa8) and the entry a3 as a doubleword (+0x18, 0x2238f88). The `jalr` at 0x2238fbc supplies a0, the request number and the block address; a3 (holding 2) and a4 (holding 0x10df48, the constant that builds gp) are not set for the call. The routine hands back 1 when the ioctl returned nonzero and 0 otherwise, because v1 starts at 1 (0x2238fc8), a conditional move before the `jr` at 0x2238fd8 zeroes it on a zero result, and the delay slot at 0x2238fdc moves it into v0.
  Inferred: the constant 2 at +0x8 may pick which attribute the block carries, since the request number is shared with the attribute-setting handler.
  Unknown: how the handler for request 0x6f640018 reads the block words, as its layout is absent here.
  Evidence grade: inferred.

- `__glOdysseyHyperpipeRect` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2238fe0 (n64).
  Fills four words on the stack and issues private request 0x6f640018 over them via `__glOdysseyIoctl`. The words are: the word at a0 +0x285d8 at +0x0 (loaded at 0x2238ff4, stored by the delay slot at 0x2239030), the entry a1 at +0x4 (0x2239020), the constant 1 at +0x8 (0x2239004) and the entry a2 at +0xc (0x2239018). The call at 0x223902c uses a0, the request number and the frame base. The a3 value of 1 and the a4 value 0x10ded8 that the tool lists after them are leftovers, the first from the constant stored at +0x8 and the second from the offset used to set up gp, and the callee note says registers from a1 on reach the C library's ioctl untouched. No branch tests the ioctl result, but the return value still depends on it: v1 is set to 1 at 0x2239038 and a conditional move just before the `jr` at 0x2239048 clears it when the ioctl returned zero, and the delay slot at 0x223904c copies it into v0. The caller gets 1 if the ioctl failed to return zero, else 0.
  Inferred: handler `gfP_OdsyHPsetAttrib` on the 0x6f640018 row points at an attribute write.
  Unknown: which block fields the handler for 0x6f640018 consumes, since the bundle carries no layout for it.
  Evidence grade: inferred.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x2239050`

`__glOdysseyHyperpipeStereo` (116 bytes) loads a word at a0+0x285d8 (0x2239064) and a field of a3 at offset 0 (0x223906c), and builds a small stack buffer from them together with the constant 3 and a2. It makes one indirect call at 0x22390a0 through a pointer loaded from the global pointer table, which the render names `__glOdysseyIoctl`. The call passes the fixed request number 0x6f640018 in the second argument and the stack buffer address in the third; the loaded word goes into the buffer, not into an argument register. The routine returns 0 or 1 at 0x22390bc, 0 when the call returns 0. Role (from name): a hyperpipe stereo setter or query that asks the driver through ioctl; the request semantics and failure handling are not shown. Grade: inferred.

Reviewed: 2026-11-12

- `__glOdysseyHyperpipeStereo` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2239050
  **Inferred.** Reads a context word at a0 +0x285d8 and a word at a3, then issues __glOdysseyIoctl (0x221da60, jalr at 0x22390a0) with request 0x6f640018, a stack buffer at sp-48 and a5 loaded from [a0 + 165336]. It returns 0 or 1 from that call. The facts do not name the request code, so the only evidence that this is the stereo setting is the routine's name. The meaning of the return values is not established.
  Reviewed: 2026-11-12

- `__glOdysseyHyperpipeStereo` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2239050 (n64)
  **Inferred.** Loads a word from the context at a0+0x285d8 and calls `__glOdysseyIoctl` through the pointer at 0x221da60 with request 0x6f640018, a4 = 0x10de68 and a5 taken from a0+165336. It returns 0 or 1 and makes no other call. The request's high bytes, 0x6f and 0x64, read as ASCII "od", which suggests an Odyssey ioctl group. The effect of request 0x18 is not shown.
  Reviewed: 2026-11-12

- `__glOdysseyHyperpipePixelAverage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22390d0 (n64).
  Prints the text 'Setting pixel average mode' with `fprintf`, then sends the private request 0x6f640018 for the context in a0 through `__glOdysseyIoctl`, with a four-word block built in its frame. The `fprintf` call at 0x2239108 takes `__iob` +64 as its first argument and the string at 0x232c818 as its second. The block words are the word at a0 +0x285d8 at +0x0 (loaded at 0x2239128, stored at 0x223912c), the word read through the entry a3 pointer at +0x4 (loaded at 0x2239130, stored at 0x2239158), the constant 0x4 at +0x8 (0x2239140) and the entry a2 at +0xc (0x223914c). The call at 0x2239154 passes a0, the request number and the frame base as its three real arguments; the registers after them hold what was left from building the block (the entry a2, 0x4, the word read through the entry a3 pointer, the entry a3 and the word at a0 +0x285d8), and the callee note says everything from a1 on reaches the C library's ioctl untouched. There is no branch on the ioctl result, but the return value still depends on it: a register preset to 1 at 0x2239164 is cleared by a conditional move when the ioctl returned zero, and the delay slot at 0x2239178 copies it into v0 for the `jr` at 0x2239174. A nonzero ioctl result therefore gives 1 and a zero result gives 0.
  Inferred: the printed text mentions a pixel average mode and the row for 0x6f640018 gives handler `gfP_OdsyHPsetAttrib`, so the request sets that mode.
  Unknown: the block fields the handler for 0x6f640018 reads, with no field table to settle it.
  Evidence grade: inferred.

- `__glOdysseyQueryHyperpipeStereo` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2239180 (n64).
  A thin wrapper over `__glOdysseyIoctl` for private request 0x6f640016. Before the call at 0x22391cc it fills five slots in its frame: a0 +0x285d8 (loaded at 0x2239194) at +0x0 through the delay-slot `sw` at 0x22391d0, the entry a1 at +0x4 (0x22391c0), the constant 3 at +0x8 (0x22391a4), the entry a2 at +0xc (0x22391b8) and the entry a3 at +0x18 (0x2239198). Only a0, the request and the block address are arguments; the 3 still in a3 and the 0x10dd38 in a4 are left over, the latter from the gp setup. v1 is set to 1 at 0x22391d8 and cleared by a conditional move before the `jr` at 0x22391e8 if the ioctl returned zero, so the caller gets 1 for a nonzero result and 0 for zero (the move into v0 is the delay slot at 0x22391ec).
  Inferred: `gfP_OdsyHPqueryAttrib`, the handler on the 0x6f640016 row, indicates an attribute query.
  Unknown: the block fields returned by the handler for 0x6f640016; the bundle has no field table.
  Evidence grade: inferred.

- `__glOdysseyQueryHyperpipePixelAverage` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22391f0 (n64).
  Sends private request 0x6f640016 through `__glOdysseyIoctl`, using a block the routine writes to its own frame first. Block contents: the word loaded from a0 +0x285d8 at 0x2239204 (stored last, in the call's delay slot at 0x2239240), the entry a1 at +0x4 (0x2239230), the constant 4 at +0x8 (0x2239214), the entry a2 at +0xc (0x2239228), and the entry a3 at +0x18 (0x2239208, a doubleword store). At the `jalr` at 0x223923c the callee gets a0, the request and the block address; a3 (4) and a4 (0x10dcc8) are residue, the latter being the constant that builds gp. Return value: v1 is set to 1 at 0x2239248, a conditional move ahead of the `jr` at 0x2239258 zeroes it when the ioctl returned zero, and 0x223925c moves it into v0.
  Inferred: handler `gfP_OdsyHPqueryAttrib` on the row for 0x6f640016 implies a query of one hyperpipe attribute.
  Unknown: which words of the block the handler returns data in, since the bundle carries no layout for it.
  Evidence grade: inferred.

- `__glOdysseyBindHyperpipe` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2239260 (n64).
  Sends private ioctl 0x6f640014 through `__glOdysseyIoctl`, but only when the byte at offset 0xde6 of the
  structure pointed to by the doubleword at absolute 0x1020 is nonzero (`lbu` at 0x2239264, `beq` at
  0x223927c). When that byte is zero the call is skipped and the routine returns 1 (block at 0x22392bc).
  Otherwise the entry a1 is saved as a word at the stack pointer (`sw` at 0x223928c) and the `jalr` at
  0x2239298 passes the structure pointer as a0, 0x6f640014 as a1, the address of that stack slot as a2
  and the entry a3 unchanged as a3. After the call the return value is 1 if the ioctl result is nonzero
  and 0 if it is zero (a2 set to 1 at 0x22392a4, cleared by a conditional move just before the return when the
  result is zero, copied to v0 in the delay slot at 0x22392b8).
  Inferred: the linked ioctl row ties 0x6f640014 to a handler called `gfP_OdsyHPbind`, so this is a bind request.
  Unknown: which feature the byte at +0xde6 of the structure at 0x1020 records; the route is the code that
  initialises that structure.
  Evidence grade: inferred.

- `__glOdysseyBindHyperpipe` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2239260 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2239260-0x22392cc (108 bytes).
  It occupies 108 bytes.
  The `ld` at 0x2239260 loads 8 bytes from abs 0x1020.
  The `lbu` at 0x2239264 loads 1 byte from [0x1020]:8 +0xde6.
  The `jalr` at 0x2239298 calls __glOdysseyIoctl [0x221da60] with a0=[0x1020]:8, a1=0x6f640014, a2=sp-32, a3=a3 at entry (arg3), a4=a1 at entry (arg1).
  The `beq` branch at 0x223927c targets 0x22392bc, is taken when v0(=[[0x1020]:8+3558]:1) == 0, and falls through when v0(=[[0x1020]:8+3558]:1) != 0.
  The return at 0x22392b4 has v0 = one of 0x0, 0x1.
  The return at 0x22392c4 has v0 = 0x1.

- `__glOdysseyUnbindHyperpipe` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22392d0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22392d0-0x2239320 (80 bytes).
  It occupies 80 bytes.
  The `ld` at 0x22392e8 loads 8 bytes from abs 0x1020.
  The `jalr` at 0x22392fc calls __glOdysseyIoctl [0x221da60] with a0=[0x1020]:8, a1=0x6f640015, a2=sp-32, a3=a3 at entry (arg3).
  The return at 0x2239318 has v0 = one of 0x0, 0x1.

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

- `__glDoBlendMax` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22710e0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22710e0-0x227114c (108 bytes).
  It occupies 108 bytes.
  The `lwc1` at 0x22710e0 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0x22710e4 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `swc1` at 0x22710f4 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lwc1` at 0x22710f8 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `lwc1` at 0x22710fc loads 4 bytes from a3 (arg3 at entry) +0x4.
  The `swc1` at 0x227110c stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lwc1` at 0x2271110 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0x2271114 loads 4 bytes from a3 (arg3 at entry) +0x8.
  The `swc1` at 0x2271124 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0x2271128 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0x227112c loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `swc1` at 0x2271140 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The `bc1f` branch at 0x22710ec targets 0x22710f8, is taken when not (f0(=[a3]) < f4(=[a2]) (c.lt.s at 0x22710e8)), and falls through when f0(=[a3]) < f4(=[a2]) (c.lt.s at 0x22710e8).
  The `bc1f` branch at 0x2271104 targets 0x2271110, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0x227111c targets 0x2271128, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0x2271134 targets 0x2271144, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The return at 0x227113c has v0 = ?.
  The return at 0x2271144 has v0 = ?.

- `__glChangeReadWindowSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x227a400 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x227a400-0x227a40c (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0x227a400 stores 4 bytes to a0 (arg0 at entry) +0xfe4.
  The `sw` at 0x227a408 stores 4 bytes to a0 (arg0 at entry) +0xfe0.
  The return at 0x227a404 has v0 = ?.

- `__glFindWindowSize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x227a410 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x227a410-0x227a4e4 (212 bytes).
  It occupies 212 bytes.
  The `ld` at 0x227a424 loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `lw` at 0x227a450 loads 4 bytes from a0 (arg0 at entry) +0xfd8.
  The `lw` at 0x227a454 loads 4 bytes from a0 (arg0 at entry) +0xfdc.
  The `lbu` at 0x227a470 loads 1 byte from a0 (arg0 at entry) +0xf20.
  The `lw` at 0x227a488 loads 4 bytes from a0 (arg0 at entry) +0xfe0.
  The `lw` at 0x227a490 loads 4 bytes from a0 (arg0 at entry) +0xfe4.
  The `ld` at 0x227a4c4 loads 8 bytes from a0 (arg0 at entry) +0x90.
  The `jalr` at 0x227a444 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-48, a2=sp-44, a3=sp-40, a4=sp-36.
  The `bgezall` at 0x227a468 calls __glChangeWindowSize [0x227a2e0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0x227a4b4 calls __glChangeReadWindowSize [0x227a400] with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a0+4064], a4=[a0+4068].
  The `jalr` at 0x227a4d0 calls (unknown callee) with a0=a0 at entry (arg0), a1=sp-32, a2=sp-28, a3=?.
  The `bne` branch at 0x227a458 targets 0x227a464, is taken when v0(=[a0+4056]) != a1(?), and falls through when v0(=[a0+4056]) == a1(?).
  The `beq` branch at 0x227a460 targets 0x227a470, is taken when v1(=[a0+4060]) == a2(?), and falls through when v1(=[a0+4060]) != a2(?).
  The `beq` branch at 0x227a474 targets 0x227a4c4, is taken when a0(=[a0+3872]:1) == 0, and falls through when a0(=[a0+3872]:1) != 0.
  The `bne` branch at 0x227a48c targets 0x227a4b0, is taken when a3(=[a0+4064]) != a1(?), and falls through when a3(=[a0+4064]) == a1(?).
  The `bne` branch at 0x227a494 targets 0x227a4b4, is taken when a4(=[a0+4068]) != a2(?), and falls through when a4(=[a0+4068]) == a2(?).
  The `beq` branch at 0x227a4bc targets 0x227a4a0 and is always taken.
  The `beq` branch at 0x227a4dc targets 0x227a488 and is always taken.
  The return at 0x227a4a8 has v0 = one of ?, ret(__glChangeReadWindowSize).

- `Resize` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x227d740 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x227d740-0x227d788 (72 bytes).
  It occupies 72 bytes.
  The `sb` at 0x227d778 stores 1 byte to a0 (arg0 at entry) +0x90.
  The `jalr` at 0x227d764 calls __glResizeBuffer [0x2273580] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x227d780 has v0 = 0x1.

- `__glim_ResetHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x228c720 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x228c720-0x228c7bc (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0x228c724 loads 4 bytes from abs 0x1030.
  The `ld` at 0x228c728 loads 8 bytes from abs 0x1020.
  The `lw` at 0x228c778 loads 4 bytes from [0x1020]:8 +0x5f4.
  The `lw` at 0x228c780 loads 4 bytes from [0x1020]:8 +0x5d8.
  The `ld` at 0x228c790 loads 8 bytes from [0x1020]:8 +0x5d0.
  The `jalr` at 0x228c758 calls __glSetError [0x227a070] with a0=0x500, a1=0x8024, a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `jalr` at 0x228c774 calls __glElementsPerGroup [0x2256a60] with a0=[[0x1020]:8+1524], a1=0x8024, a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `jalr` at 0x228c798 calls memset with a0=[[0x1020]:8+1488]:8, a1=0x0, a2=?, a3=?.
  The `jalr` at 0x228c7ac calls __glSetError [0x227a070] with a0=0x502, a1=0x8024, a2=[0x1020]:8, a3=a3 at entry (arg3).
  The `beq` branch at 0x228c744 targets 0x228c7a8, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x228c74c targets 0x228c770, is taken when a0 == a1(=0x8024), and falls through when a0 != a1(=0x8024).
  The `beq` branch at 0x228c7a0 targets 0x228c764 and is always taken.
  The `beq` branch at 0x228c7b4 targets 0x228c764 and is always taken.
  The return at 0x228c768 has v0 = one of ret(__glSetError), ret(memset).

- `__glResetArray` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x228cd00 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x228cd00-0x228d0c8 (968 bytes).
  It occupies 968 bytes.
  The `ld` at 0x228ceb0 loads 8 bytes from table(0x2333350) +0x0.
  The `bgezall` at 0x228ce38 calls __glSetValue [0x228ccc0] with a0=?, a1=entry(0x2333350), a2=a5 at entry (arg5), a3=?; fp f13=f18.
  The `bgezall` at 0x228ce4c calls __glSetValue [0x228ccc0] with a0=?, a1=?, a2=a5 at entry (arg5), a3=?; fp f13=f18.
  The `bgezall` at 0x228ce60 calls __glSetValue [0x228ccc0] with a0=?, a1=?, a2=a5 at entry (arg5), a3=?; fp f13=f18.
  The `bgezall` at 0x228ce74 calls __glSetValue [0x228ccc0] with a0=?, a1=?, a2=a5 at entry (arg5), a3=?; fp f13=f18.
  The `bgezall` at 0x228cec8 calls __glSetValue [0x228ccc0] with a0=?, a1=entry(0x2333350), a2=a5 at entry (arg5), a3=?; fp f13=f18.
  The `bgezall` at 0x228cedc calls __glSetValue [0x228ccc0] with a0=?, a1=?, a2=a5 at entry (arg5), a3=?; fp f13=f18.
  The `bgezall` at 0x228cef8 calls __glSetValue [0x228ccc0] with a0=?, a1=entry(0x2333350), a2=a5 at entry (arg5), a3=?; fp f13=f18.
  The `bgezall` at 0x228cf14 calls __glSetValue [0x228ccc0] with a0=?, a1=entry(0x2333350), a2=a5 at entry (arg5), a3=?; fp f13=f18.
  The `beq` branch at 0x228cd4c targets 0x228cfac, is taken when a5 == at(=0x1405), and falls through when a5 != at(=0x1405).
  The `beq` branch at 0x228cd58 targets 0x228d02c, is taken when a5 == v1(=0x1406), and falls through when a5 != v1(=0x1406).
  The `beq` branch at 0x228cd60 targets 0x228cfb8, is taken when a5(=0x1909) == a0, and falls through when a5(=0x1909) != a0.
  The `beq` branch at 0x228cd68 targets 0x228d038, is taken when a0 == a4(=0x1906), and falls through when a0 != a4(=0x1906).
  The `beq` branch at 0x228cd70 targets 0x228d048, is taken when a0 == a6(=0x190a), and falls through when a0 != a6(=0x190a).
  The `beq` branch at 0x228cd78 targets 0x228d058, is taken when a0 == a7(=0x1907), and falls through when a0 != a7(=0x1907).
  The `beq` branch at 0x228cd80 targets 0x228d068, is taken when a0 == t0(=0x1908), and falls through when a0 != t0(=0x1908).
  The `bne` branch at 0x228cd8c targets 0x228cf5c, is taken when a1 < 0x1908 (unsigned), and falls through when a1 >= 0x1908 (unsigned).
  The `bne` branch at 0x228cd94 targets 0x228cdd4, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x228cda4 targets 0x228cfc4, is taken when a1 < a4(=0x8000) (unsigned), and falls through when a1 >= a4(=0x8000) (unsigned).
  The `beq` branch at 0x228cdb8 targets 0x228cdd0, is taken when a4(=0x8000) >= a1 (unsigned), and falls through when a4(=0x8000) < a1 (unsigned).
  The `bne` branch at 0x228cdc0 targets 0x228d0a0, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `bne` branch at 0x228cdc8 targets 0x228cf28, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0x228cdd4 targets 0x228cf28, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x228ce08 targets 0x228cf24, is taken when a3 >= s6(=a4) (signed), and falls through when a3 < s6(=a4) (signed).
  The `beq` branch at 0x228ce28 targets 0x228d0b0 and is always taken.
  The `beq` branch at 0x228ce9c targets 0x228cf24, is taken when s6(=a4) == s4(?), and falls through when s6(=a4) != s4(?).
  The `beq` branch at 0x228cea8 targets 0x228ce7c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x228cee4 targets 0x228ce80 and is always taken.
  The `beq` branch at 0x228cf00 targets 0x228ce80 and is always taken.
  The `beq` branch at 0x228cf1c targets 0x228ce80 and is always taken.
  The `bne` branch at 0x228cf60 targets 0x228cf88, is taken when a1 < 0x1905 (unsigned), and falls through when a1 >= 0x1905 (unsigned).
  The `beq` branch at 0x228cf6c targets 0x228cfe8, is taken when a1 >= 0x1906 (unsigned), and falls through when a1 < 0x1906 (unsigned).
  The `beq` branch at 0x228cf78 targets 0x228cf24, is taken when (a0(?) & 0x4) == 0, and falls through when (a0(?) & 0x4) != 0.
  The `beq` branch at 0x228cf80 targets 0x228cde4 and is always taken.
  The `bne` branch at 0x228cf88 targets 0x228d00c, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x228cf90 targets 0x228cf28, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x228cf98 targets 0x228cf28, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x228cfa4 targets 0x228cde4 and is always taken.
  The `beq` branch at 0x228cfb0 targets 0x228cd5c and is always taken.
  The `beq` branch at 0x228cfbc targets 0x228cd88 and is always taken.
  The `bne` branch at 0x228cfc8 targets 0x228d078, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x228cfd0 targets 0x228cf24, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x228cfd8 targets 0x228cf28, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x228cfe0 targets 0x228cde4 and is always taken.
  The `bne` branch at 0x228cfec targets 0x228d088, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0x228cff4 targets 0x228cf24, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x228cffc targets 0x228cf24, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x228d004 targets 0x228cde4 and is always taken.
  The `bne` branch at 0x228d010 targets 0x228cf28, is taken when a1 != at(=0x1903), and falls through when a1 == at(=0x1903).
  The `beq` branch at 0x228d01c targets 0x228cf24, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x228d024 targets 0x228cde4 and is always taken.
  The `beq` branch at 0x228d030 targets 0x228cd5c and is always taken.
  The `beq` branch at 0x228d040 targets 0x228cd88 and is always taken.
  The `beq` branch at 0x228d050 targets 0x228cd88 and is always taken.
  The `beq` branch at 0x228d060 targets 0x228cd88 and is always taken.
  The `beq` branch at 0x228d070 targets 0x228cd88 and is always taken.
  The `bne` branch at 0x228d078 targets 0x228cf28, is taken when a5(=0x1909) != a1, and falls through when a5(=0x1909) == a1.
  The `beq` branch at 0x228d080 targets 0x228d01c and is always taken.
  The `bne` branch at 0x228d088 targets 0x228cf28, is taken when a1 != t1(=0x1906), and falls through when a1 == t1(=0x1906).
  The `beq` branch at 0x228d090 targets 0x228cf28, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x228d098 targets 0x228cde0 and is always taken.
  The `bne` branch at 0x228d0a0 targets 0x228cf28, is taken when a1 != t3(=0x80e0), and falls through when a1 == t3(=0x80e0).
  The `beq` branch at 0x228d0a8 targets 0x228cffc and is always taken.
  The `beq` branch at 0x228d0c0 targets 0x228cea8 and is always taken.
  The return at 0x228cf54 has v0 = one of 0xba1b8, ?.
  The indirect jump at 0x228ceb4 uses the jump table at 0x2333350 with targets 0x228ce7c, 0x228ce68, 0x228ceec, 0x228ce7c, 0x228cf08, 0x228ce7c, 0x228ce7c, 0x228ce40, 0x228ce68, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ceec, 0x228ce54, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ced0, 0x228cebc, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce30.
  The indirect jump at 0x228ceb4 uses the jump table at 0x2333350 with targets 0x228ce7c, 0x228ce68, 0x228ceec, 0x228ce7c, 0x228cf08, 0x228ce7c, 0x228ce7c, 0x228ce40, 0x228ce68, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ceec, 0x228ce54, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ced0, 0x228cebc, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce7c, 0x228ce30.

- `__glResetMinmax` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x228da90 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x228da90-0x228dbdc (332 bytes).
  It occupies 332 bytes.
  The `lw` at 0x228da98 loads 4 bytes from a0 (arg0 at entry) +0x658.
  The `lwc1` at 0x228daf4 loads 4 bytes from abs 0x2347844.
  10 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x228db04, `swc1` at 0x228db10, `swc1` at 0x228db1c.
  The `lwc1` at 0x228db4c loads 4 bytes from abs 0x2347848.
  The `beq` branch at 0x228daac targets 0x228dbb0, is taken when a3(=[a0+1624]) == v1(=0x1906), and falls through when a3(=[a0+1624]) != v1(=0x1906).
  The `beq` branch at 0x228dab8 targets 0x228dbb0, is taken when a3(=[a0+1624]) == v1(=0x1909), and falls through when a3(=[a0+1624]) != v1(=0x1909).
  The `beq` branch at 0x228dac4 targets 0x228dbbc, is taken when a3(=[a0+1624]) == a0(=0x190a), and falls through when a3(=[a0+1624]) != a0(=0x190a).
  The `beq` branch at 0x228dad0 targets 0x228dbc4, is taken when a3(=[a0+1624]) == a1(=0x1907), and falls through when a3(=[a0+1624]) != a1(=0x1907).
  The `beq` branch at 0x228dad8 targets 0x228dbcc, is taken when a3(=[a0+1624]) == a2(=0x1908), and falls through when a3(=[a0+1624]) != a2(=0x1908).
  The `blez` branch at 0x228dae4 targets 0x228dbd4, is taken when a4(?) <= 0 (signed), and falls through when a4(?) > 0 (signed).
  The `beq` branch at 0x228db08 targets 0x228db3c, is taken when a0(?) == a3(?), and falls through when a0(?) != a3(?).
  The `beq` branch at 0x228db14 targets 0x228db3c, is taken when a0(?) == a3(?), and falls through when a0(?) != a3(?).
  The `beq` branch at 0x228db20 targets 0x228db3c, is taken when a0(?) == a3(?), and falls through when a0(?) != a3(?).
  The `beq` branch at 0x228db2c targets 0x228db3c, is taken when a0(?) == a3(?), and falls through when a0(?) != a3(?).
  The `bne` branch at 0x228db34 targets 0x228db00, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The `beq` branch at 0x228db50 targets 0x228dba8, is taken when a4(?) >= a6(?) (signed), and falls through when a4(?) < a6(?) (signed).
  The `beq` branch at 0x228db64 targets 0x228db80, is taken when (a5(?) & 0x3) == 0, and falls through when (a5(?) & 0x3) != 0.
  The `bne` branch at 0x228db74 targets 0x228db6c, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x228db80 targets 0x228dba8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x228dba0 targets 0x228db90, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The `beq` branch at 0x228dbb4 targets 0x228daf0 and is always taken.
  The `beq` branch at 0x228dbbc targets 0x228daf0 and is always taken.
  The `beq` branch at 0x228dbc4 targets 0x228daf0 and is always taken.
  The `beq` branch at 0x228dbcc targets 0x228daf0 and is always taken.
  The `beq` branch at 0x228dbd4 targets 0x228db40 and is always taken.
  The return at 0x228dba8 has v0 = 0xb9428.

- `__glim_ResetMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x228dcc0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x228dcc0-0x228dd30 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x228dcc4 loads 4 bytes from abs 0x1030.
  The `ld` at 0x228dd10 loads 8 bytes from abs 0x1020.
  The `jalr` at 0x228dcf0 calls __glSetError [0x227a070] with a0=0x500, a1=0x802e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0x228dd0c calls __glResetMinmax [0x228da90] with a0=[0x1020]:8, a1=0x802e, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x228dd20 calls __glSetError [0x227a070] with a0=0x502, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x228dcdc targets 0x228dd1c, is taken when at(=[0x1030]) == v0(=0x1), and falls through when at(=[0x1030]) != v0(=0x1).
  The `beq` branch at 0x228dce8 targets 0x228dd08, is taken when a0 == a1(=0x802e), and falls through when a0 != a1(=0x802e).
  The `beq` branch at 0x228dd14 targets 0x228dcfc and is always taken.
  The `beq` branch at 0x228dd28 targets 0x228dcfc and is always taken.
  The return at 0x228dd00 has v0 = one of ret(__glSetError), ret(__glResetMinmax).

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

- `__glReadSpan` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22b46a0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22b46a0-0x22b4744 (164 bytes).
  It occupies 164 bytes.
  The `ld` at 0x22b46f0 loads 8 bytes from a0 (arg0 at entry) +0xf0.
  The `jalr` at 0x22b4700 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=?.
  The `bltz` branch at 0x22b46d8 targets 0x22b4720, is taken when s2(=a4-1) < 0 (signed), and falls through when s2(=a4-1) >= 0 (signed).
  The `bne` branch at 0x22b4710 targets 0x22b46f0, is taken when s2(?) != s5(=-0x1), and falls through when s2(?) == s5(=-0x1).
  The return at 0x22b473c has v0 = 0x0.

- `SubdivRegCreaseEdge` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22bb050 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22bb050-0x22bb138 (232 bytes).
  It occupies 232 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x22bb068, `lwc1` at 0x22bb06c, `lwc1` at 0x22bb0b0.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x22bb094, `swc1` at 0x22bb0c8, `swc1` at 0x22bb0e4.
  The `blez` branch at 0x22bb050 targets 0x22bb130, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0x22bb060 targets 0x22bb098, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x22bb090 targets 0x22bb068, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x22bb09c targets 0x22bb130, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x22bb128 targets 0x22bb0b0, is taken when a1(?) != a5(=((a0 << 0x2) + a1)), and falls through when a1(?) == a5(=((a0 << 0x2) + a1)).
  The return at 0x22bb130 has v0 = ?.

- `SubdivIRRegCreaseEdge` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22bb140 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22bb140-0x22bb258 (280 bytes).
  It occupies 280 bytes.
  10 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0x22bb160, `lwc1` at 0x22bb164, `lwc1` at 0x22bb1b0.
  5 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0x22bb194, `swc1` at 0x22bb1d0, `swc1` at 0x22bb1f4.
  The `blez` branch at 0x22bb140 targets 0x22bb250, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `beq` branch at 0x22bb158 targets 0x22bb198, is taken when (a0 & 0x3) == 0, and falls through when (a0 & 0x3) != 0.
  The `bne` branch at 0x22bb190 targets 0x22bb160, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x22bb19c targets 0x22bb250, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x22bb248 targets 0x22bb1b0, is taken when a1(?) != a5(=((a0 << 0x2) + a1)), and falls through when a1(?) == a5(=((a0 << 0x2) + a1)).
  The return at 0x22bb250 has v0 = ?.

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

- `__glReCompute2DMatrix` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22e90d0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22e90d0-0x22e9184 (180 bytes).
  It occupies 180 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x40, including `lw` at 0x22e90d0, `lw` at 0x22e9170.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7b8, including `lwc1` at 0x22e90f0, `lwc1` at 0x22e9110, `lwc1` at 0x22e9138.
  The `lwc1` at 0x22e90f4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `swc1` at 0x22e90fc stores 4 bytes to a0 (arg0 at entry) +0x9528.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x7c0, including `lwc1` at 0x22e9100, `lwc1` at 0x22e9120, `lwc1` at 0x22e914c.
  The `lwc1` at 0x22e9104 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0x22e910c stores 4 bytes to a0 (arg0 at entry) +0x952c.
  The `lwc1` at 0x22e9114 loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `swc1` at 0x22e911c stores 4 bytes to a0 (arg0 at entry) +0x9538.
  The `lwc1` at 0x22e9124 loads 4 bytes from a1 (arg1 at entry) +0x14.
  The `swc1` at 0x22e912c stores 4 bytes to a0 (arg0 at entry) +0x953c.
  The `lwc1` at 0x22e9130 loads 4 bytes from a1 (arg1 at entry) +0x28.
  The `swc1` at 0x22e9134 stores 4 bytes to a0 (arg0 at entry) +0x9550.
  The `lwc1` at 0x22e913c loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `lwc1` at 0x22e9140 loads 4 bytes from a0 (arg0 at entry) +0x7bc.
  The `swc1` at 0x22e9148 stores 4 bytes to a0 (arg0 at entry) +0x9558.
  The `lwc1` at 0x22e9150 loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `lwc1` at 0x22e9154 loads 4 bytes from a0 (arg0 at entry) +0x7c4.
  The `lwc1` at 0x22e915c loads 4 bytes from abs 0x23477a0.
  The `swc1` at 0x22e9160 stores 4 bytes to a0 (arg0 at entry) +0x955c.
  The `lwc1` at 0x22e9164 loads 4 bytes from a1 (arg1 at entry) +0x38.
  The `swc1` at 0x22e9168 stores 4 bytes to a0 (arg0 at entry) +0x9564.
  The `swc1` at 0x22e916c stores 4 bytes to a0 (arg0 at entry) +0x9560.
  The `sw` at 0x22e9178 stores 4 bytes to a0 (arg0 at entry) +0x9568.
  The `bne` branch at 0x22e90e8 targets 0x22e917c, is taken when v1(=[a1+64]) < 0x2 (unsigned), and falls through when v1(=[a1+64]) >= 0x2 (unsigned).
  The return at 0x22e9174 has v0 = 0x5dde8.
  The return at 0x22e917c has v0 = 0x5dde8.

- `DestroySoftContext` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22e96c0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22e96c0-0x22e972c (108 bytes).
  It occupies 108 bytes.
  The `ld` at 0x22e96cc loads 8 bytes from abs 0x1020.
  2 such `sd` accesses store 8 bytes to abs 0x1020, including `sd` at 0x22e96f4, `sd` at 0x22e971c.
  The `jalr` at 0x22e96f0 calls __glFreeAttributeState [0x226fee0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x22e96fc calls __glFreeBufData [0x227a7b0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x22e9708 calls __glDestroyContext [0x2279d00] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0x22e9724 has v0 = ret(__glDestroyContext).

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

- `__gllc_LoadMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22f5400 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22f5400-0x22f5484 (132 bytes).
  It occupies 132 bytes.
  The `ld` at 0x22f5404 loads 8 bytes from abs 0x1020.
  The `sh` at 0x22f5464 stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0x22f542c calls __glDlistAllocOp2 [0x223b310] with a0=[0x1020]:8, a1=0x40, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x22f5460 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a0 at entry (arg0), a2=0x40, a3=0xaf.
  The `jalr` at 0x22f5474 calls __glDlistAppendOp [0x223b3a0] with a0=[0x1020]:8, a1=ret(__glDlistAllocOp2), a2=0x22fba20, a3=?.
  The `bne` branch at 0x22f5434 targets 0x22f544c, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0x22f547c targets 0x22f5440 and is always taken.
  The return at 0x22f5444 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_LoadMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22f5490 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22f5490-0x22f551c (140 bytes).
  It occupies 140 bytes.
  The `ld` at 0x22f5494 loads 8 bytes from abs 0x1020.
  The `sb` at 0x22f54f0 stores 1 byte to ret(__glDlistAllocOp2) +0x16.
  The `sh` at 0x22f54fc stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `jalr` at 0x22f54bc calls __glDlistAllocOp2 [0x223b310] with a0=[0x1020]:8, a1=0x80, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x22f54f8 calls memcpy with a0=ret(__glDlistAllocOp2)+24, a1=a0 at entry (arg0), a2=0x80, a3=0xb0, a5=0x1.
  The `jalr` at 0x22f550c calls __glDlistAppendOp [0x223b3a0] with a0=[0x1020]:8, a1=ret(__glDlistAllocOp2), a2=0x22fba70, a3=?.
  The `bne` branch at 0x22f54c4 targets 0x22f54dc, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0x22f5514 targets 0x22f54d0 and is always taken.
  The return at 0x22f54d4 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ResetHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22f63b0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22f63b0-0x22f6424 (116 bytes).
  It occupies 116 bytes.
  The `ld` at 0x22f63b4 loads 8 bytes from abs 0x1020.
  The `sh` at 0x22f6408 stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0x22f6418 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0x22f63dc calls __glDlistAllocOp2 [0x223b310] with a0=[0x1020]:8, a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x22f6414 calls __glDlistAppendOp [0x223b3a0] with a0=[0x1020]:8, a1=ret(__glDlistAllocOp2), a2=0x22fc2b0, a3=a0 at entry (arg0).
  The `bne` branch at 0x22f63e4 targets 0x22f63f8, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0x22f641c targets 0x22f63ec and is always taken.
  The return at 0x22f63f0 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ResetMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22f6430 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22f6430-0x22f64a4 (116 bytes).
  It occupies 116 bytes.
  The `ld` at 0x22f6434 loads 8 bytes from abs 0x1020.
  The `sh` at 0x22f6488 stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0x22f6498 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0x22f645c calls __glDlistAllocOp2 [0x223b310] with a0=[0x1020]:8, a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x22f6494 calls __glDlistAppendOp [0x223b3a0] with a0=[0x1020]:8, a1=ret(__glDlistAllocOp2), a2=0x22fc300, a3=a0 at entry (arg0).
  The `bne` branch at 0x22f6464 targets 0x22f6478, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0x22f649c targets 0x22f646c and is always taken.
  The return at 0x22f6470 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__gllc_ReadInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22f7740 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22f7740-0x22f77b4 (116 bytes).
  It occupies 116 bytes.
  The `ld` at 0x22f7744 loads 8 bytes from abs 0x1020.
  The `sh` at 0x22f7798 stores 2 bytes to ret(__glDlistAllocOp2) +0x14.
  The `sw` at 0x22f77a8 stores 4 bytes to ret(__glDlistAllocOp2) +0x18.
  The `jalr` at 0x22f776c calls __glDlistAllocOp2 [0x223b310] with a0=[0x1020]:8, a1=0x8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x22f77a4 calls __glDlistAppendOp [0x223b3a0] with a0=[0x1020]:8, a1=ret(__glDlistAllocOp2), a2=0x22fcd50, a3=a0 at entry (arg0).
  The `bne` branch at 0x22f7774 targets 0x22f7788, is taken when v0(=ret(__glDlistAllocOp2)) != 0, and falls through when v0(=ret(__glDlistAllocOp2)) == 0.
  The `beq` branch at 0x22f77ac targets 0x22f777c and is always taken.
  The return at 0x22f7780 has v0 = one of ret(__glDlistAllocOp2), ret(__glDlistAppendOp).

- `__glle_LoadMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22fba20 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22fba20-0x22fba64 (68 bytes).
  It occupies 68 bytes.
  The `ld` at 0x22fba34 loads 8 bytes from abs 0x1558.
  The `jalr` at 0x22fba44 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x22fba5c has v0 = a0+64.

- `__glle_LoadMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22fba70 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22fba70-0x22fbab4 (68 bytes).
  It occupies 68 bytes.
  The `ld` at 0x22fba84 loads 8 bytes from abs 0x1560.
  The `jalr` at 0x22fba94 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x22fbaac has v0 = a0+128.

- `__glle_ResetHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22fc2b0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22fc2b0-0x22fc2f4 (68 bytes).
  It occupies 68 bytes.
  The `ld` at 0x22fc2c4 loads 8 bytes from abs 0x16a0.
  The `lw` at 0x22fc2d8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x22fc2d4 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x22fc2ec has v0 = a0+8.

- `__glle_ResetMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22fc300 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22fc300-0x22fc344 (68 bytes).
  It occupies 68 bytes.
  The `ld` at 0x22fc314 loads 8 bytes from abs 0x16a8.
  The `lw` at 0x22fc328 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x22fc324 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x22fc33c has v0 = a0+8.

- `__glle_ReadInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22fcd50 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x22fcd50-0x22fcd94 (68 bytes).
  It occupies 68 bytes.
  The `ld` at 0x22fcd64 loads 8 bytes from abs 0x18b0.
  The `lw` at 0x22fcd78 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jalr` at 0x22fcd74 calls (unknown callee) with a0=[a0], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x22fcd8c has v0 = a0+8.

- `__glsplc_LoadMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2303f10 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2303f10-0x2303f6c (92 bytes).
  It occupies 92 bytes.
  The `jalr` at 0x2303f34 calls __glSPDlalloc [0x21b87b0] with a0=0x40, a1=0xaf, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2303f5c calls memcpy with a0=ret(__glSPDlalloc), a1=a0 at entry (arg0), a2=0x40, a3=?.
  The `bne` branch at 0x2303f3c targets 0x2303f54, is taken when v0(=ret(__glSPDlalloc)) != 0, and falls through when v0(=ret(__glSPDlalloc)) == 0.
  The `beq` branch at 0x2303f64 targets 0x2303f48 and is always taken.
  The return at 0x2303f4c has v0 = one of ret(__glSPDlalloc), ret(memcpy).

- `__glsplc_LoadMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2303f70 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2303f70-0x2303fcc (92 bytes).
  It occupies 92 bytes.
  The `jalr` at 0x2303f94 calls __glSPDlalloc2 [0x21b89a0] with a0=0x80, a1=0xb0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2303fbc calls memcpy with a0=ret(__glSPDlalloc2), a1=a0 at entry (arg0), a2=0x80, a3=?.
  The `bne` branch at 0x2303f9c targets 0x2303fb4, is taken when v0(=ret(__glSPDlalloc2)) != 0, and falls through when v0(=ret(__glSPDlalloc2)) == 0.
  The `beq` branch at 0x2303fc4 targets 0x2303fa8 and is always taken.
  The return at 0x2303fac has v0 = one of ret(__glSPDlalloc2), ret(memcpy).

- `__glsplc_ResetHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2304af0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2304af0-0x2304b44 (84 bytes).
  It occupies 84 bytes.
  The `sw` at 0x2304b34 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0x2304b14 calls __glSPDlalloc [0x21b87b0] with a0=0x8, a1=0xce, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2304b1c targets 0x2304b38, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0x2304b30 has v0 = ret(__glSPDlalloc).
  The return at 0x2304b3c has v0 = ret(__glSPDlalloc).

- `__glsplc_ResetMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2304b50 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2304b50-0x2304ba4 (84 bytes).
  It occupies 84 bytes.
  The `sw` at 0x2304b94 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0x2304b74 calls __glSPDlalloc [0x21b87b0] with a0=0x8, a1=0xcf, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2304b7c targets 0x2304b98, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0x2304b90 has v0 = ret(__glSPDlalloc).
  The return at 0x2304b9c has v0 = ret(__glSPDlalloc).

- `__glsplc_ReadInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2305a20 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2305a20-0x2305a74 (84 bytes).
  It occupies 84 bytes.
  The `sw` at 0x2305a64 stores 4 bytes to ret(__glSPDlalloc) +0x0.
  The `jalr` at 0x2305a44 calls __glSPDlalloc [0x21b87b0] with a0=0x8, a1=0xf2, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x2305a4c targets 0x2305a68, is taken when v0(=ret(__glSPDlalloc)) == 0, and falls through when v0(=ret(__glSPDlalloc)) != 0.
  The return at 0x2305a60 has v0 = ret(__glSPDlalloc).
  The return at 0x2305a6c has v0 = ret(__glSPDlalloc).

- `__glce_LoadMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x230f7d0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x230f7d0-0x230f844 (116 bytes).
  It occupies 116 bytes.
  The `ld` at 0x230f7d0 loads 8 bytes from abs 0x1558.
  The `ld` at 0x230f7e8 loads 8 bytes from abs 0x1020.
  The `ld` at 0x230f800 loads 8 bytes from [0x1020]:8 +0x1fa8.
  3 such `sd` accesses store 8 bytes to abs 0x1558, including `sd` at 0x230f80c, `sd` at 0x230f824, `sd` at 0x230f840.
  The `ld` at 0x230f818 loads 8 bytes from [0x1020]:8 +0x3d20.
  The `jalr` at 0x230f808 calls glLoadMatrixf with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x230f820 calls glLoadMatrixf with a0=a0 at entry (arg0), a1=[[0x1020]:8+15648]:8, a2=?, a3=?.
  The return at 0x230f83c has v0 = ret(glLoadMatrixf).

- `__glce_LoadMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x230f850 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x230f850-0x230f8c4 (116 bytes).
  It occupies 116 bytes.
  The `ld` at 0x230f850 loads 8 bytes from abs 0x1560.
  The `ld` at 0x230f868 loads 8 bytes from abs 0x1020.
  The `ld` at 0x230f880 loads 8 bytes from [0x1020]:8 +0x1fb0.
  3 such `sd` accesses store 8 bytes to abs 0x1560, including `sd` at 0x230f88c, `sd` at 0x230f8a4, `sd` at 0x230f8c0.
  The `ld` at 0x230f898 loads 8 bytes from [0x1020]:8 +0x3d28.
  The `jalr` at 0x230f888 calls glLoadMatrixd with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x230f8a0 calls glLoadMatrixd with a0=a0 at entry (arg0), a1=[[0x1020]:8+15656]:8, a2=?, a3=?.
  The return at 0x230f8bc has v0 = ret(glLoadMatrixd).

- `__glce_ResetHistogramEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2310c80 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2310c80-0x2310cf4 (116 bytes).
  It occupies 116 bytes.
  The `ld` at 0x2310c80 loads 8 bytes from abs 0x16a0.
  The `ld` at 0x2310c98 loads 8 bytes from abs 0x1020.
  The `ld` at 0x2310cb0 loads 8 bytes from [0x1020]:8 +0x20f0.
  3 such `sd` accesses store 8 bytes to abs 0x16a0, including `sd` at 0x2310cbc, `sd` at 0x2310cd4, `sd` at 0x2310cf0.
  The `ld` at 0x2310cc8 loads 8 bytes from [0x1020]:8 +0x3e68.
  The `jalr` at 0x2310cb8 calls glResetHistogramEXT with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2310cd0 calls glResetHistogramEXT with a0=a0 at entry (arg0), a1=[[0x1020]:8+15976]:8, a2=?, a3=?.
  The return at 0x2310cec has v0 = ret(glResetHistogramEXT).

- `__glce_ResetMinmaxEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2310d00 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2310d00-0x2310d74 (116 bytes).
  It occupies 116 bytes.
  The `ld` at 0x2310d00 loads 8 bytes from abs 0x16a8.
  The `ld` at 0x2310d18 loads 8 bytes from abs 0x1020.
  The `ld` at 0x2310d30 loads 8 bytes from [0x1020]:8 +0x20f8.
  3 such `sd` accesses store 8 bytes to abs 0x16a8, including `sd` at 0x2310d3c, `sd` at 0x2310d54, `sd` at 0x2310d70.
  The `ld` at 0x2310d48 loads 8 bytes from [0x1020]:8 +0x3e70.
  The `jalr` at 0x2310d38 calls glResetMinmaxEXT with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2310d50 calls glResetMinmaxEXT with a0=a0 at entry (arg0), a1=[[0x1020]:8+15984]:8, a2=?, a3=?.
  The return at 0x2310d6c has v0 = ret(glResetMinmaxEXT).

- `__glce_ReadInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2312a80 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2312a80-0x2312af4 (116 bytes).
  It occupies 116 bytes.
  The `ld` at 0x2312a80 loads 8 bytes from abs 0x18b0.
  The `ld` at 0x2312a98 loads 8 bytes from abs 0x1020.
  The `ld` at 0x2312ab0 loads 8 bytes from [0x1020]:8 +0x2300.
  3 such `sd` accesses store 8 bytes to abs 0x18b0, including `sd` at 0x2312abc, `sd` at 0x2312ad4, `sd` at 0x2312af0.
  The `ld` at 0x2312ac8 loads 8 bytes from [0x1020]:8 +0x4078.
  The `jalr` at 0x2312ab8 calls glReadInstrumentsSGIX with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2312ad0 calls glReadInstrumentsSGIX with a0=a0 at entry (arg0), a1=[[0x1020]:8+16504]:8, a2=?, a3=?.
  The return at 0x2312aec has v0 = ret(glReadInstrumentsSGIX).

- `__glce_AreTexturesResident` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x23142f0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x23142f0-0x2314340 (80 bytes).
  It occupies 80 bytes.
  The `ld` at 0x23142f8 loads 8 bytes from abs 0x1a58.
  The `ld` at 0x2314300 loads 8 bytes from abs 0x1020.
  The `ld` at 0x2314318 loads 8 bytes from [0x1020]:8 +0x4220.
  2 such `sd` accesses store 8 bytes to abs 0x1a58, including `sd` at 0x2314320, `sd` at 0x2314330.
  The `jalr` at 0x231431c calls glAreTexturesResident with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2314338 has v0 = ?.

- `__glce_DeleteTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2314340 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2314340-0x231438c (76 bytes).
  It occupies 76 bytes.
  The `ld` at 0x2314348 loads 8 bytes from abs 0x1a60.
  The `ld` at 0x2314350 loads 8 bytes from abs 0x1020.
  The `ld` at 0x2314368 loads 8 bytes from [0x1020]:8 +0x4228.
  2 such `sd` accesses store 8 bytes to abs 0x1a60, including `sd` at 0x2314370, `sd` at 0x231437c.
  The `jalr` at 0x231436c calls glDeleteTextures with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2314384 has v0 = ret(glDeleteTextures).

- `__glce_GenTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2314390 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2314390-0x23143dc (76 bytes).
  It occupies 76 bytes.
  The `ld` at 0x2314398 loads 8 bytes from abs 0x1a68.
  The `ld` at 0x23143a0 loads 8 bytes from abs 0x1020.
  The `ld` at 0x23143b8 loads 8 bytes from [0x1020]:8 +0x4230.
  2 such `sd` accesses store 8 bytes to abs 0x1a68, including `sd` at 0x23143c0, `sd` at 0x23143cc.
  The `jalr` at 0x23143bc calls glGenTextures with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x23143d4 has v0 = ret(glGenTextures).

- `__glce_IsTexture` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x23143e0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x23143e0-0x2314430 (80 bytes).
  It occupies 80 bytes.
  The `ld` at 0x23143e8 loads 8 bytes from abs 0x1a70.
  The `ld` at 0x23143f0 loads 8 bytes from abs 0x1020.
  The `ld` at 0x2314408 loads 8 bytes from [0x1020]:8 +0x4238.
  2 such `sd` accesses store 8 bytes to abs 0x1a70, including `sd` at 0x2314410, `sd` at 0x2314420.
  The `jalr` at 0x231440c calls glIsTexture with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2314428 has v0 = ?.

- `glLoadMatrixf` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318b0c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318b0c-0x2318b18 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318b0c loads 8 bytes from abs 0x1558.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318b10).

- `glLoadMatrixd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318b18 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318b18-0x2318b24 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318b18 loads 8 bytes from abs 0x1560.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318b1c).

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

- `glResetHistogram` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318cf8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318cf8-0x2318d04 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318cf8 loads 8 bytes from abs 0x16a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318cfc).

- `glResetMinmax` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318d04 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318d04-0x2318d10 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318d04 loads 8 bytes from abs 0x16a8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318d08).

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

- `glBindTexture` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318da0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318da0-0x2318dac (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318da0 loads 8 bytes from abs 0x1710.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318da4).

- `glBindTextureEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318da0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318da0-0x2318dac (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318da0 loads 8 bytes from abs 0x1710.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318da4).

- `glPrioritizeTextures` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318dd0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318dd0-0x2318ddc (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318dd0 loads 8 bytes from abs 0x1730.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318dd4).

- `glPrioritizeTexturesEXT` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2318dd0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2318dd0-0x2318ddc (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318dd0 loads 8 bytes from abs 0x1730.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318dd4).

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

- `glReadInstrumentsSGIX` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2319010 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0x2319010-0x231901c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2319010 loads 8 bytes from abs 0x18b0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2319014).

## `__glOdyim_Vertex2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x2319380`

`__glOdyim_Vertex2d` (36 bytes) stores one word at 0x2319394 and two single-precision words at 0x2319398 and 0x23193a0, all to abs 0x10000. It loads nothing and calls nothing, and it returns 0x10000 at 0x231939c. A header word followed by data words suggests a small immediate-mode vertex packet, but the facts do not show the packet layout, where the stored values come from, or whether 0x10000 is a device FIFO. Grade: inferred.

Reviewed: 2026-11-12

- `__glOdyim_Vertex2d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2319380
  **Inferred.** Stores one word at 0x2319394 and two floats at 0x2319398 and 0x23193a0 into abs 0x10000, then returns that address from 0x231939c. The 36-byte body shows no argument loads, so where the operands come from is not visible here.
  Reviewed: 2026-11-12

## `__glOdyim_Vertex3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x2319580`

`__glOdyim_Vertex3d` (44 bytes) stores one word at 0x2319598 and three single-precision words at 0x231959c, 0x23195a0 and 0x23195a8, all to abs 0x10000. It has no loads or calls and returns 0x10000 at 0x23195a4. The store shape matches `__glOdyim_Vertex2d` with one more coordinate, which fits a 3D vertex packet, but the field widths are inferred from the store count alone. Grade: inferred.

Reviewed: 2026-11-12

- `__glOdyim_Vertex3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2319580
  **Inferred.** One word store at 0x2319598 and three float stores at 0x231959c, 0x23195a0 and 0x23195a8 fill abs 0x10000. The return at 0x23195a4 is the constant 0x10000.
  Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x2319680`

`__glOdyim_Vertex3i` (56 bytes) makes four word stores to abs 0x10000 (three listed at 0x23196a4, 0x23196a8 and 0x23196ac), with no loads or calls. It returns 0x10000 at 0x23196b0. Four integer words fit a header plus three integer components, the integer counterpart of the 3d vertex emitter, though the facts only show the store count. Grade: inferred.

Reviewed: 2026-11-12

- `__glOdyim_Vertex3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2319680
  **Inferred.** Four word stores, three of them at 0x23196a4, 0x23196a8 and 0x23196ac, write abs 0x10000. The routine returns 0x10000 from 0x23196b0.
  Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x2319940`

`__glOdyim_Vertex4i` (68 bytes) makes five word stores to abs 0x10000 (including 0x231996c, 0x2319970 and 0x2319974), with no loads or calls, and returns 0x10000 at 0x231997c. Five words fit a header plus four integer components, which suggests a 4-component integer vertex packet. The layout is inferred from the store count only. Grade: inferred.

Reviewed: 2026-11-12

- `__glOdyim_Vertex4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2319940
  **Inferred.** Five word stores, including those at 0x231996c, 0x2319970 and 0x2319974, go to abs 0x10000. The return at 0x231997c yields 0x10000.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex2dv_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2319bc0 (n64).
  Shortest of the pointer-argument variants: it loads two doubles from the pointer in a0 (`ldc1` at
  0x2319bc0 and 0x2319bc8, offsets 0x0 and 0x8), narrows each to single precision, applies two float tests that use
  the blocks at abs 0x1038 (P) and abs 0x1040 (Q), and on success writes a header word and both floats to abs 0x10000.
  Failing either test routes to the pointer at Q+0x20.
  The value w starts as P+0x3c, gains the first float times P+0x30 and the second float times P+0x34 (two
  multiply-adds after the loads at 0x2319bd8 to 0x2319be8) and stored to Q+0x8 (`swc1` at 0x2319bf8). The product of
  w and the old Q+0x8 must equal its own absolute value, so it is not negative (`c.ueq.s` at 0x2319c00; a branch at
  0x2319c08 leaves otherwise and a NaN passes).
  The `c.ult.s` in that branch's delay slot at 0x2319c0c compares the absolute value of w with Q+0x0. The `bc1t` at
  0x2319c14 leaves when the absolute value of w is below Q+0x0 or the pair is unordered; when the flag is clear
  it falls through.
  Past both tests, the `sw` at 0x2319c20 stores the word 0xffffffff8080c801 to abs 0x10000, then the two
  floats follow to the same address (`swc1` at 0x2319c24 and, in the return's delay slot, 0x2319c2c); v0 holds
  0x10000.
  The other route, at 0x2319c30, takes t9 from Q+0x20, clears f14, sets f15 to a single-precision one, and makes
  the `jr` at 0x2319c3c with the integer arguments untouched.
  Unknown: the routine entered by the `jr` at 0x2319c3c; Q+0x20 supplies a run-time value.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): what answers at abs 0x10000; the linked rows contain no entry.
  Evidence grade: established.

- `__glOdyim_Vertex2f_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2319c80 (n64).
  Takes the entry floats `$f12` and `$f13` and, if they clear two float tests against the two
  records whose addresses are the doublewords at absolute 0x1038 and 0x1040, writes a constant word
  and the two floats to absolute 0x10000, and when a test fails, a pointer from the second record is
  jumped to.
  Subsequently, the 0x1038 record's word at +0x3c, plus `$f12` times its word at +0x30, plus `$f13`
  times its word at +0x34, forms a sum (a pair of multiply-add steps).
  Further on, the `swc1` at 0x2319ca8 stores that sum, not the +0x3c word as loaded, to +0x8 of the
  0x1040 record, after the old +0x8 word was loaded at 0x2319c98.
  Then, the sum is multiplied by that old word, and the product is compared with its own absolute
  value (`c.ueq.s` at 0x2319cb0); the `bc1f` at 0x2319cb8 is redirected to the indirect tail call at
  0x2319ce0 unless the two are equal or unordered, so it leaves when the product is negative.
  Next, the compare in the delay slot at 0x2319cbc, which runs on both paths, checks the absolute
  value of the sum against the word at +0x0 of the 0x1040 record (loaded at 0x2319c94); the `bc1t`
  at 0x2319cc4 is redirected to the indirect tail call when the absolute sum is less than that word
  or unordered.
  After that, past both tests, `v0` becomes 0x10000 (immediate 0x1 at 0x2319ccc), the `sw` at
  0x2319cd0 writes 0xffffffff8080c801 through it (0xffffffff80800000 built at 0x2319cc0, 0xc801 ORed
  in at 0x2319cc8), the `swc1` at 0x2319cd4 writes `$f12` to the same address, and the `swc1` at
  0x2319cdc in the delay slot of the return at 0x2319cd8 writes `$f13`; the routine returns 0x10000.
  The tail-jump path retrieves `t9` from +0x20 of the 0x1040 record at 0x2319ce0, clears `$f14`, and
  puts 0x3f800000 in `$f15` through `t0` (the `mtc1` in the delay slot of the `jr t9` at 0x2319cec),
  leaving `a0` to `a3`, `$f12` and `$f13` as at entry.
  Inferred: the three stores to absolute 0x10000 are one record, a first header word and the two
  coordinate words, considering that they hit the same address and the second and third write the
  entry coordinates.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the board-side handling of the three writes to absolute 0x10000, because the linked board
  windows begin at 0x110000; datasheet evidence for that address would settle the point.
  Unknown: the routine entered through the `jr t9` at 0x2319cec; watching the jump execute would
  settle the target.
  Evidence grade: inferred.

- `__glOdyim_Vertex2iv_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2319e40 (n64).
  Fetches two 32-bit words from a0 (`lw` at 0x2319e40 and 0x2319e44) and, if two float tests pass, writes them
  to abs 0x10000 behind a constant header word. Any test that fails diverts to a tail call through a pointer
  held in the record at the doubleword abs 0x1040. Before the record pointers are loaded (`ld` at 0x2319e58 and
  0x2319e5c), both words are converted to single precision into f12 and f13. The sum is the word at +0x3c of the
  record at the doubleword abs 0x1038, plus the converted words times the words at +0x30 and +0x34 (`lwc1` at
  0x2319e60 to 0x2319e68). The `swc1` at 0x2319e80 stores that sum to +0x8 of the record at abs 0x1040, after
  the old +0x8 word was loaded at 0x2319e70. The first test (`c.ueq.s` at 0x2319e88, `bc1f` at 0x2319e90) leaves
  for the tail path when the product of the new sum and the old +0x8 word is negative. The second test compares
  the absolute value of the sum with the word at +0x0 of the second record (`lwc1` at 0x2319e6c); the `c.ult.s`
  in the delay slot at 0x2319e94 sets the flag, and the `bc1t` at 0x2319e9c leaves when the sum is below that
  word or unordered with it. When neither leaves, the `sw` at 0x2319ea8 writes the constant 0xffffffff8080c800
  (0x8080 at 0x2319e98, `ori` of 0xc800 at 0x2319ea0) to abs 0x10000 through v0 set at 0x2319ea4. After that the
  `sw` at 0x2319eac writes the word from a0+0 and the `sw` at 0x2319eb4, in the delay slot of the `jr ra` at
  0x2319eb0, writes the word from a0+4. The return value v0 is 0x10000. On the tail path the `ld` at 0x2319eb8
  loads t9 from +0x20 of the second record; a4 and a5 still hold the two words, f12 and f13 the converted ones,
  and the delay slot of the `jr t9` at 0x2319ec4 moves t0 (0x3f800000, set at 0x2319ec0) into f15. Unknown: the
  destination of the `jr t9` at 0x2319ec4, which is the doubleword at +0x20 of the second record, and a run-time
  read of it would settle it. Unknown: the device-side outcome of the writes to abs 0x10000, since the bundle
  has no linked register row or datasheet excerpt for that address.
  Evidence grade: established.

- `__glOdyim_Vertex2sv_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2319fc0 (n64).
  Reads two sign-extended halfwords from a0 and, provided two float tests pass, writes them to abs 0x10000
  behind a constant header word. A failing test instead makes a tail call through a pointer kept in the second
  record, whose address is the doubleword at abs 0x1040. Before the record pointers are loaded (`ld` at
  0x2319fd8 and 0x2319fdc), both halfwords are converted to single precision into f12 and f13. The sum is the
  word at +0x3c of the record at the doubleword abs 0x1038, plus the converted values times the words at +0x30
  and +0x34 (`lwc1` at 0x2319fe0 to 0x2319fe8). The `swc1` at 0x231a000 stores that sum to +0x8 of the record at
  abs 0x1040, after the old +0x8 word was loaded at 0x2319ff0. The first test (`c.ueq.s` at 0x231a008, `bc1f` at
  0x231a010) leaves for the tail path when the product of the new sum and the old +0x8 word is negative. The
  second test compares the absolute value of the sum with the word at +0x0 of the second record (`lwc1` at
  0x2319fec); the `c.ult.s` at 0x231a014 sits in the delay slot of the `bc1f`, so it runs on both paths, and the
  `bc1t` at 0x231a01c leaves when the sum is below that word or unordered with it. When neither leaves, the `sw`
  at 0x231a028 writes the constant 0xffffffff8080c800 (0x8080 at 0x231a018, `ori` of 0xc800 at 0x231a020) to abs
  0x10000 through v0 set at 0x231a024. After that the `sw` at 0x231a02c writes the halfword from a0+0 and the
  `sw` at 0x231a034, in the delay slot of the `jr ra` at 0x231a030, writes the halfword from a0+2. The return
  value v0 is the value 0x10000. On the tail path the `ld` at 0x231a038 loads t9 from +0x20 of the second
  record, f12 and f13 hold the converted halfwords, and the delay slot of the `jr t9` at 0x231a044 moves t0
  (0x3f800000, set at 0x231a040) into f15. Unknown: the target of the `jr t9` at 0x231a044, loaded from +0x20 of
  the second record, whose value a run-time read would settle. Unknown: the device-side result of the writes to
  abs 0x10000, because neither a linked register row nor a datasheet excerpt covers that address.
  Evidence grade: established.

- `__glOdyim_Vertex3d_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231a080 (n64).
  Takes one vertex as three double-precision arguments and either writes it straight to the fixed
  address 0x10000 or tail-jumps to a handler pointer kept in the record at absolute 0x1040.
  The first three instructions narrow `f12`, `f13` and `f14` to single precision. The pointers at
  absolute 0x1038 and 0x1040 are loaded into `v0` and `v1` (0x231a08c, 0x231a090).
  Three multiply-adds form a sum in `f8`: it starts from the word at +0x3c of the 0x1038 record
  (0x231a098) and adds `f12` times the word at +0x30, `f13` times the word at +0x34 and `f14` times
  the word at +0x38. The `swc1` at 0x231a0bc stores that sum over +0x8 of the 0x1040 record on every
  path, after the old +0x8 word (0x231a0a8) was multiplied by it.
  Two tests decide the path. The `bc1f` at 0x231a0cc goes to the handler block at 0x231a0f8 when the
  product of the sum and the old +0x8 word differs from its own absolute value, which means the
  product is negative. The `bc1t` at 0x231a0d8 goes there when the absolute value of the sum is less
  than the word at +0x0 of the 0x1040 record (0x231a0a4), or when either is not a number. If both
  fall through, the vertex is written.
  The write sets `v0` to 0x10000 (0x231a0e0), stores the constant 0xffffffff8080cc03
  (0xffffffff80800000 from 0x231a0d4 with 0xcc03 ORed in at 0x231a0dc) by the `sw` at 0x231a0e4,
  then stores the narrowed `f12`, `f13` and `f14` to the same address (0x231a0e8, 0x231a0ec, and
  0x231a0f4 in the delay slot of the `jr ra` at 0x231a0f0). The routine returns 0x10000.
  The handler block loads `t9` from +0x20 of the 0x1040 record (0x231a0f8) and jumps through it at
  0x231a100, with `a0` to `a3` untouched and the word 0x3f800000 moved into `f15` in the delay slot.
  Inferred: the address 0x10000 acts as a write port for vertex data, because four stores follow one
  another to the same address with the pointer never stepping, a command word first and then the
  three coordinates.
  Unknown: what sits behind the address 0x10000; no linked row or datasheet excerpt covers it.
  Unknown: where the jump at 0x231a100 lands, since the pointer loaded at 0x231a0f8 sits in a record
  whose content is not in the bundle.
  Evidence grade: inferred.

- `__glOdyim_Vertex3dv_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231a140 (n64).
  Takes a pointer to three doubles in `a0`, and either writes that vertex as single-precision values
  to the fixed address 0x10000 or tail-jumps to a handler pointer kept in the record at absolute
  0x1040.
  It loads the doubles at +0x0, +0x8 and +0x10 of `a0` into `f12`, `f13` and `f14` (0x231a140,
  0x231a148, 0x231a150), narrowing each to single precision right after the load. The pointers at
  absolute 0x1038 and 0x1040 follow into `v0` and `v1` (0x231a158, 0x231a15c).
  A sum is built in `f8` by three multiply-adds: it starts at the word at +0x3c of the 0x1038 record
  (0x231a164) and adds the three coordinates times the words at +0x30, +0x34 and +0x38. The `swc1`
  at 0x231a188 overwrites +0x8 of the 0x1040 record with the sum, after the old +0x8 word
  (0x231a174) has been multiplied by it.
  The `bc1f` at 0x231a198 jumps to the handler block at 0x231a1c4 when that product is negative,
  meaning it differs from its absolute value. The `bc1t` at 0x231a1a4 jumps there when the sum's
  absolute value is less than the word at +0x0 of the 0x1040 record (0x231a170), or when the compare
  is unordered.
  Both falling through, the routine sets `v0` to 0x10000 (0x231a1ac), stores the constant
  0xffffffff8080cc03 at 0x231a1b0, built from 0xffffffff80800000 at 0x231a1a0 and 0xcc03 ORed in the
  delay slot at 0x231a1a8, then stores `f12` and `f13` (0x231a1b4, 0x231a1b8) and `f14` in the delay
  slot of the `jr ra` at 0x231a1bc, all to 0x10000, which it returns.
  The handler block reads `t9` from +0x20 of the 0x1040 record (0x231a1c4), puts 0x3f800000 in `t0`
  (0x231a1c8) and jumps via `t9` at 0x231a1cc, with that `t0` copied to `f15` in the delay slot.
  Inferred: the address 0x10000 behaves as a write port, since a command word and three coordinates
  are stored to it in sequence with the pointer unchanged.
  Unknown: whether the address 0x10000 belongs to a mapped device window, as the bundle's rows name
  just 0x110000 and 0x120000.
  Unknown: the target of the tail jump at 0x231a1cc, as the load at 0x231a1c4 reads a field of the
  0x1040 record that the bundle does not fill in.
  Evidence grade: inferred.

- `__glOdyim_Vertex3f_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231a200 (n64).
  Takes a vertex as three single-precision arguments in `f12`, `f13` and `f14` and either writes it
  to the fixed address 0x10000 or tail-jumps to a handler pointer from the record at absolute
  0x1040.
  No conversion is needed, so the routine starts at once by loading the pointers at absolute 0x1038
  and 0x1040 into `v0` and `v1` (0x231a200, 0x231a204).
  A sum in `f8` starts from the word at +0x3c of the 0x1038 record (0x231a20c) and gains each
  argument times the word at +0x30, +0x34 or +0x38 through three multiply-adds. The old word at +0x8
  of the 0x1040 record (0x231a21c) is multiplied by the sum, and the `swc1` at 0x231a230 stores the
  sum itself to +0x8 on every path.
  The `bc1f` at 0x231a240 branches to the handler block at 0x231a26c if the product is negative (not
  equal to its absolute value). The `bc1t` at 0x231a24c branches there if the absolute value of the
  sum is less than the +0x0 word of the 0x1040 record (0x231a218) or the compare is unordered.
  When neither branch is taken, `v0` becomes 0x10000 (0x231a254), the `sw` at 0x231a258 stores
  0xffffffff8080cc03 (0xffffffff80800000 from 0x231a248 with 0xcc03 ORed at 0x231a250) and `f12`,
  `f13` and `f14` follow to the same address at 0x231a25c, 0x231a260 and 0x231a268, the last in the
  delay slot of the `jr ra` at 0x231a264.
  The handler block loads `t9` from +0x20 of the 0x1040 record at 0x231a26c, sets `t0` to 0x3f800000
  (0x231a270) and jumps through `t9` at 0x231a274, passing `t0` into `f15` from the delay slot.
  Inferred: the address 0x10000 works as a write port, since one command word and three coordinates
  land on it consecutively with no pointer step.
  Unknown: which unit decodes the address 0x10000, because no row or excerpt in the bundle places
  it.
  Unknown: the destination of the register jump at 0x231a274, because the 0x1040 record word read at
  0x231a26c has no recorded value.
  Evidence grade: inferred.

- `__glOdyim_Vertex3iv_smallw` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231a400 (n64).
  Screens an integer vertex of three 32-bit words against two float bounds, then either writes a
  four-word packet to the fixed address 0x10000 and returns, or tail-jumps through a pointer.
  The three words at a0 (`lw` at 0x231a400, 0x231a404 and 0x231a408) are converted as well to single
  precision; the packet carries the integer originals.
  The doublewords at abs 0x1038 and 0x1040 (`ld` at 0x231a424 and 0x231a428) supply base pointers.
  Let w be the float at +0x3c of the first block plus the converted words times the floats at +0x30,
  +0x34 and +0x38 (loads at 0x231a42c to 0x231a438). The `swc1` at 0x231a454 stores w into +0x8 of
  the second block after the old float there was loaded at 0x231a440; the +0x0 float of the second
  block comes from the load at 0x231a43c.
  The `bc1f` at 0x231a464 branches to the tail jump when the absolute value of the product of w and
  the old +0x8 float is ordered and unequal to the product, so the jump happens for a negative
  product. The comparison placed in its delay slot at 0x231a468 sets the flag for the `bc1t` at
  0x231a470, which jumps to the tail when the absolute value of w is less than, or unordered with,
  the float from +0x0 of the second block.
  With both tests passed, the `lui` at 0x231a478 sets v0 to 0x10000 and the `sw` at 0x231a47c writes
  the constant 0xffffffff8080cc02 there (immediate 0x8080 at 0x231a46c, `ori` of 0xcc02 in the delay
  slot at 0x231a474). The `sw` at 0x231a480 and 0x231a484 put the first two integers out unchanged
  and the delay slot of the `jr ra` at 0x231a488 writes the third; the returned v0 is 0x10000.
  Leaving by the tail, t9 comes from the `ld` at 0x231a490 from +0x20 of the block addressed by the
  doubleword at 0x1040 and jumps through the `jr t9` at 0x231a498; $f15 is set to 0x3f800000 in the
  delay slot.
  Unknown: the code reached through the `jr t9` at 0x231a498, because the pointer at +0x20 is read
  from memory the bundle does not resolve.
  Unknown: the data of the blocks addressed by the doublewords at 0x1038 and 0x1040, because the
  offsets above are the only view of their layout.
  Evidence grade: established.

- `__glOdyim_Vertex2d_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231ac00 (n64).
  Takes two doubles in f12 and f13 and narrows both to single precision, runs three float tests against
  blocks reached from the pointers at abs 0x1038 and abs 0x1040, and on success writes a header word and the
  two floats straight to abs 0x10000; otherwise it tail-calls the pointer at +0x20 of the second block.
  The first block (pointer at abs 0x1038) is read at +0x30, +0x34 and +0x3c, and the second (abs 0x1040) at +0x4 and +0x8. Two
  multiply-add steps (the two words after the load at 0x231ac20) form the f12 value times the +0x30 word plus the f13 value times the +0x34 word plus the
  +0x3c value. That sum is stored to the second block at +0x8 (`swc1` at 0x231ac30), then multiplied by the
  +0x8 value and by the +0x4 value, and both products are reduced to absolute values.
  The `bc1f` at 0x231ac48 leaves for the tail call when the first product differs from its absolute value, so a
  negative first product bails out; a NaN passes (compare `c.ueq.s` at 0x231ac40).
  Two more sums follow, each from three words of the first block: +0xc, +0x0 and +0x4, then +0x1c, +0x10 and +0x14, each
  combined with the f12 and f13 values by the same multiply-add steps. After each the absolute value is compared with the
  second product's absolute value (`c.ult.s` at 0x231ac60 and 0x231ac80); `bc1t` at 0x231ac68 and 0x231ac88 leaves for
  the tail call when that product is below the sum or the two are unordered.
  With all three tests passed, it stores the word 0xffffffff8080c801 to abs 0x10000 (`sw` at
  0x231ac94), then the narrowed f12 and f13 values to the same address (`swc1` at 0x231ac98 and, in the return's
  delay slot, 0x231aca0).
  A bail-out lands at 0x231aca4, which loads the pointer at the second block +0x20, sets f14 to zero and f15 to a
  single-precision one (the `lui` and `mtc1` before the `jr` at 0x231acb0), and jumps with a0 to a3 untouched; the
  doubles in f12 and f13 were already narrowed.
  Unknown: the destination of the tail jump at 0x231acb0, taken from a pointer; a callee note for that address would settle it.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): what sits at abs 0x10000, the target of three stores; the linked rows list nothing for it.
  Evidence grade: established.

- `__glOdyim_Vertex2f_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231ad80 (n64).
  Single-precision twin of the double-argument vertex fast path: the two floats arrive in f12 and f13 and need no
  narrowing. Three float tests draw on the blocks at abs 0x1038 (P) and abs 0x1040 (Q); when all pass, a header
  word and the two floats go straight to abs 0x10000, and otherwise the routine jumps through the pointer at Q+0x20.
  Let w be P+0x3c plus f12 times P+0x30 plus f13 times P+0x34 (two multiply-adds after the loads at
  0x231ad88 to 0x231ad98) and stored to Q+0x8 (`swc1` at 0x231ada8). Then w times Q+0x8 must equal its own
  absolute value, so it is not negative (`c.ueq.s` at 0x231adb8; `bc1f` at 0x231adc0 leaves otherwise, a NaN passes).
  w times Q+0x4 is kept as an absolute value for the next two tests.
  The sum P+0xc plus f12 times P+0x0 plus f13 times P+0x4 is formed; `bc1t` at 0x231ade0 leaves when the kept
  magnitude is below the absolute value of that sum or the pair is unordered (`c.ult.s` at 0x231add8).
  The sum P+0x1c plus f12 times P+0x10 plus f13 times P+0x14 gets the same check (`c.ult.s` at 0x231adf8, `bc1t`
  at 0x231ae00).
  If all tests hold, the `sw` at 0x231ae0c stores the word 0xffffffff8080c801 to abs 0x10000, then f12 and f13
  go to the same address (`swc1` at 0x231ae10 and, in the return's delay slot, 0x231ae18); v0 holds 0x10000.
  The leaving path begins at 0x231ae1c: t9 from Q+0x20, f14 cleared, f15 set to a single-precision one, then
  the `jr` at 0x231ae28 with a0 to a3 as received.
  Unknown: the target of the `jr` at 0x231ae28; Q+0x20 is read while running.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): what lies behind abs 0x10000; the linked rows list nothing there.
  Evidence grade: established.

- `__glOdyim_Vertex2fv_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231ae40 (n64).
  Loads the float pair at `a0` +0x0 and +0x4 into `$f12` and `$f13` (the `lwc1` at 0x231ae40 and
  0x231ae44); if the pair gets through three float tests against the records at absolute 0x1038 and
  0x1040 it writes a header word and the pair to absolute 0x10000, and a failed test sends it
  through a pointer in the second record.
  From there, it forms a sum from the 0x1038 record: the word at +0x3c, plus `$f12` times the word
  at +0x30, plus `$f13` times the word at +0x34 (two multiply-adds).
  Following that, the `swc1` at 0x231ae70 writes that sum, not the +0x3c word as loaded, to +0x8 of
  the 0x1040 record, once the old +0x8 word was loaded at 0x231ae60.
  Beyond that, the sum is multiplied by that old word and by the +0x4 word of the 0x1040 record
  (loaded at 0x231ae5c), and both products are reduced to absolute values.
  At this stage, the `bc1f` at 0x231ae88 branches to the tail path that starts at 0x231aee4 unless the first
  product equals its own absolute value or the pair is unordered (`c.ueq.s` at 0x231ae80), that is,
  whenever that product is below zero.
  In turn, two more tests build a value from the 0x1038 record as the word at +0xc plus `$f12` times
  +0x0 plus `$f13` times +0x4, then the same with +0x1c, +0x10 and +0x14; each result is made
  absolute, and the `bc1t` at 0x231aea8 and at 0x231aec8 branches to the pointer jump when the
  second product is less than that value or unordered (`c.ult.s` at 0x231aea0 and 0x231aec0).
  Subsequently, a pass of all three tests sets `v0` to 0x10000 (immediate 0x1 at 0x231aed0); the
  `sw` at 0x231aed4 then writes 0xffffffff8080c801 through it (0xffffffff80800000 built at
  0x231aec4, 0xc801 ORed in at 0x231aecc), the `swc1` at 0x231aed8 writes `$f12` to the same
  address, and the `swc1` at 0x231aee0, in the delay slot of the return at 0x231aedc, writes `$f13`;
  0x10000 comes back as the return value.
  The tail-jump path fetches `t9` from +0x20 of the 0x1040 record at 0x231aee4, clears `$f14`, and
  puts 0x3f800000 in `$f15` through `t0` (the `mtc1` in the delay slot of the `jr t9` at 0x231aef0),
  leaving `a0` to `a3`, `$f12` and `$f13` as at entry.
  Inferred: the three stores to absolute 0x10000 are one record, a leading header word with both
  coordinates behind it, as they hit the same address and the second and third write the entry
  coordinates.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the board register behind absolute 0x10000, because no linked row names it and the board
  windows listed start at 0x110000; a reviewed register description is the route to an answer.
  Unknown: the target reached by the `jr t9` at 0x231aef0; the target needs a trace taken while the
  jump executes.
  Evidence grade: inferred.

- `__glOdyim_Vertex2i_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231af00 (n64).
  Converts the integers in `a0` and `a1` to single-precision floats in `$f12` and `$f13` and runs
  three float tests on them against the records at absolute 0x1038 and 0x1040; a pass writes a
  constant word and the two integers, unconverted, to absolute 0x10000, and on failure it jumps
  through the second record's pointer.
  Beyond that, it computes a sum from the 0x1038 record: the word at +0x3c, plus `$f12` times the
  word at +0x30, plus `$f13` times the word at +0x34 (a pair of multiply-add steps).
  At this stage, the `swc1` at 0x231af38 writes that sum, not the +0x3c word as loaded, to +0x8 of
  the 0x1040 record, after the old +0x8 word has been read at 0x231af28.
  In turn, the sum is multiplied by that old word and by the +0x4 word of the 0x1040 record (loaded
  at 0x231af24), and both products are reduced to absolute values.
  Subsequently, the `bc1f` at 0x231af50 diverts to the tail path that starts at 0x231afac unless the first
  product equals its own absolute value or the pair is unordered (`c.ueq.s` at 0x231af48), so it
  leaves when that product is negative.
  Further on, two more tests build a value from the 0x1038 record as the word at +0xc plus `$f12`
  times +0x0 plus `$f13` times +0x4, then the same with +0x1c, +0x10 and +0x14; each is reduced to
  an absolute value, and the `bc1t` at 0x231af70 and at 0x231af90 diverts to the jump-out block when
  the second product is less than that value or unordered (`c.ult.s` at 0x231af68 and 0x231af88).
  Then, in the passing case `v0` becomes 0x10000 (immediate 0x1 at 0x231af98), the `sw` at 0x231af9c
  writes 0xffffffff8080c800 through it (0xffffffff80800000 built at 0x231af8c, 0xc800 ORed in at
  0x231af94), the `sw` at 0x231afa0 writes `a0` as it came in, and the `sw` at 0x231afa8 in the
  delay slot of the return at 0x231afa4 writes `a1`; the caller gets back 0x10000.
  The tail-jump path picks up `t9` from +0x20 of the 0x1040 record at 0x231afac, clears `$f14`, and
  puts 0x3f800000 in `$f15` through `t0` (the `mtc1` in the delay slot of the `jr t9` at 0x231afb8),
  leaving `a0` to `a3`, `$f12` and `$f13` as at entry.
  Inferred: the three stores to absolute 0x10000 are one record, a header word and the pair of
  coordinates after it, seeing that they hit the same address and the second and third write the
  incoming coordinates.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the board-side destination of the writes to absolute 0x10000, as the linked windows start
  at 0x110000 and no row names it; a datasheet naming the address would resolve it.
  Unknown: the address the `jr t9` at 0x231afb8 jumps to; a trace of the running jump would name the
  destination.
  Evidence grade: inferred.

- `__glOdyim_Vertex2iv_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231afc0 (n64).
  Reads two integer words from `a0` +0x0 and +0x4 (the `lw` at 0x231afc0 and 0x231afc4), converts
  them to single-precision floats in `$f12` and `$f13`, and applies three float tests against the
  records at absolute 0x1038 and 0x1040; if all pass it writes a header word and the two integer
  words to absolute 0x10000, and failing a test, it tail-calls the pointer in the second record.
  At this stage, it computes a sum from the 0x1038 record: the word at +0x3c, plus `$f12` times the
  word at +0x30, plus `$f13` times the word at +0x34 (two multiply-adds).
  In turn, the `swc1` at 0x231b000 writes that sum, not the +0x3c word as loaded, to +0x8 of the
  0x1040 record, once the old +0x8 word was loaded at 0x231aff0.
  Subsequently, the sum is multiplied by that old word and by the +0x4 word of the 0x1040 record
  (loaded at 0x231afec), and both products are reduced to absolute values.
  Further on, the `bc1f` at 0x231b018 heads for the tail path that starts at 0x231b074 unless the first product
  equals its own absolute value or the pair is unordered (`c.ueq.s` at 0x231b010), so it leaves when
  that product is negative.
  Then, two more tests build a value from the 0x1038 record as the word at +0xc plus `$f12` times
  +0x0 plus `$f13` times +0x4, then the same with +0x1c, +0x10 and +0x14; each result is made
  absolute, and the `bc1t` at 0x231b038 and at 0x231b058 heads for the fallback jump when the second
  product is less than that value or unordered (`c.ult.s` at 0x231b030 and 0x231b050).
  Next, on a full pass `v0` is set to 0x10000 (immediate 0x1 at 0x231b060), the `sw` at 0x231b064
  writes 0xffffffff8080c800 through it (0xffffffff80800000 built at 0x231b054, 0xc800 ORed in at
  0x231b05c), the `sw` at 0x231b068 writes the first integer word unchanged, and the `sw` at
  0x231b070 in the delay slot of the return at 0x231b06c writes the second; it hands back 0x10000.
  The tail-jump path takes `t9` from +0x20 of the 0x1040 record at 0x231b074, clears `$f14`, and
  puts 0x3f800000 in `$f15` through `t0` (the `mtc1` in the delay slot of the `jr t9` at 0x231b080),
  leaving `a0` to `a3`, `$f12` and `$f13` as at entry.
  Inferred: the three stores to absolute 0x10000 form one record, a word of header and then the
  coordinate pair, for the reason that they hit the same address and the second and third write the
  incoming coordinates.
  Unknown: the hardware reached by the writes to absolute 0x10000, since the linked board windows
  begin at 0x110000; a published register map would answer it.
  Test: the mapping-address read in "Test that settles the rest" at the top of this file; a client mapping that starts at 0 makes 0x10000 board +0x110000.
  Unknown: the callee behind the `jr t9` at 0x231b080; a recorded run is the route to the
  destination.
  Evidence grade: inferred.

- `__glOdyim_Vertex2sv_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231b180 (n64).
  Reads two sign-extended halfwords from a0 (`lh` at 0x231b180 and 0x231b184) and, once three float tests have
  passed, writes them to abs 0x10000 behind a constant header word. A failing test instead makes a tail call
  through a pointer stored in the record that the doubleword at abs 0x1040 addresses. Before the record pointers
  are loaded (`ld` at 0x231b198 and 0x231b19c), both halfwords are converted to single precision into f12 and
  f13. The first sum is the word at +0x3c of the record at the doubleword abs 0x1038, plus the converted values
  times the words at +0x30 and +0x34 (`lwc1` at 0x231b1a0 to 0x231b1a8). The `swc1` at 0x231b1c0 stores that sum
  to +0x8 of the record at abs 0x1040, after the old +0x8 word was loaded at 0x231b1b0. The first test
  (`c.ueq.s` at 0x231b1d0, `bc1f` at 0x231b1d8) leaves for the tail path when the product of the new sum and the
  old +0x8 word is negative. The second and third tests scale the sum by the word at +0x4 of the second record
  (`lwc1` at 0x231b1ac) and compare its absolute value with the absolute value of a sum built from +0xc, +0x0
  and +0x4 of the first record, then of one built from +0x1c, +0x10 and +0x14; the `bc1t` at 0x231b1f8 and
  0x231b218 leave when the scaled value is below that sum or unordered with it (`c.ult.s` at 0x231b1f0 and
  0x231b210). When none leaves, the `sw` at 0x231b224 writes the constant 0xffffffff8080c800 (0x8080 at
  0x231b214, `ori` of 0xc800 at 0x231b21c) to abs 0x10000 through v0 set at 0x231b220. After that the `sw` at
  0x231b228 writes the halfword from a0+0 and the `sw` at 0x231b230, in the delay slot of the `jr ra` at
  0x231b22c, writes the halfword from a0+2. The routine returns 0x10000. On the tail path the `ld` at 0x231b234
  loads t9 from +0x20 of the second record; a4 and a5 still hold the two halfwords, f12 and f13 the converted
  ones, and the delay slot of the `jr t9` at 0x231b240 moves t0 (0x3f800000, set at 0x231b23c) into f15.
  Unknown: the target of the `jr t9` at 0x231b240, taken from the doubleword at +0x20 of the second record, so
  reading that doubleword in a live run would settle it. Unknown: the device-side result of the writes to abs
  0x10000. No linked register row or datasheet excerpt in the bundle covers that address.
  Evidence grade: established.

- `__glOdyim_Vertex3d_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231b280 (n64).
  Receives three double-precision arguments in f12 to f14, which it narrows to single precision in place and,
  provided three float tests pass, writes them to abs 0x10000 behind a constant header word. A failed test sends
  control by tail call through a pointer kept in the second record, whose address is the doubleword at abs
  0x1040. The record pointers are loaded by the `ld` at 0x231b28c and 0x231b290. The first sum is the word at
  +0x3c of the record at the doubleword abs 0x1038, plus the three narrowed values times the words at +0x30,
  +0x34 and +0x38 (`lwc1` at 0x231b294 to 0x231b2a0). The `swc1` at 0x231b2bc stores that sum to +0x8 of the
  record at abs 0x1040, after the old +0x8 word was loaded into f7 at 0x231b2a8. The first test (`c.ueq.s` at
  0x231b2cc, `bc1f` at 0x231b2d4) leaves for the tail path at 0x231b344 when the product of the new sum and the
  old +0x8 word is negative. The second and third tests scale the sum by the word at +0x4 of the second record
  (`lwc1` at 0x231b2a4) and compare its absolute value with the absolute value of a sum built from +0xc, +0x0,
  +0x4 and +0x8 of the first record, then of one built from +0x1c, +0x10, +0x14 and +0x18; the `bc1t` at
  0x231b2fc and 0x231b324 leave when the scaled value is below that sum or unordered with it (`c.ult.s` at
  0x231b2f4 and 0x231b31c). When none leaves, the `sw` at 0x231b330 writes the constant 0xffffffff8080cc03
  (0x8080 at 0x231b320, `ori` of 0xcc03 at 0x231b328) to abs 0x10000 through v0 set at 0x231b32c, then the
  `swc1`s at 0x231b334, 0x231b338 and 0x231b340 write the narrowed f12, f13 and f14, the last in the delay slot
  of the `jr ra` at 0x231b33c. The routine returns the value 0x10000. On the tail path the `ld` at 0x231b344
  loads t9 from +0x20 of the second record, f12 to f14 hold the narrowed values, and the delay slot of the
  `jr t9` at 0x231b34c moves t0 (0x3f800000, set at 0x231b348) into f15. Unknown: the address reached through
  the `jr t9` at 0x231b34c, loaded from +0x20 of the second record, whose value a run-time read would settle.
  Unknown: the hardware-side result of the writes to abs 0x10000, because neither a linked register row nor a
  datasheet excerpt covers that address.
  Test: the mapping-address read in "Test that settles the rest" at the top of this file; a client mapping that starts at 0 makes 0x10000 board +0x110000.
  Evidence grade: established.

- `__glOdyim_Vertex3fv_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231b580 (n64).
  Reads three floats through `a0` and stores them to the fixed address 0x10000 when a sign test and
  two distance tests against the records at absolute 0x1038 and 0x1040 all pass; if any one fails it
  jumps through a pointer held in the 0x1040 record.
  `f12` to `f14` receive the floats at +0x0, +0x4 and +0x8 of `a0` (0x231b580, 0x231b584,
  0x231b588), then `v0` and `v1` the pointers at absolute 0x1038 and 0x1040 (0x231b58c, 0x231b590).
  A sum in `f8` starts from the word at +0x3c of the 0x1038 record (0x231b598) and adds the
  coordinates times the words at +0x30, +0x34 and +0x38, using three multiply-adds. That sum is
  multiplied by the old +0x8 word of the 0x1040 record (0x231b5a8) for the sign test, written over
  +0x8 by the `swc1` at 0x231b5bc, and multiplied again by the word at +0x4 of the 0x1040 record
  (0x231b5a4) to give a bound, kept as an absolute value.
  A negative first product sends the `bc1f` at 0x231b5d4 to the handler block at 0x231b644. Next a
  distance is made from the word at +0xc of the 0x1038 record and the coordinates times the words at
  +0x0, +0x4 and +0x8, and the `bc1t` at 0x231b5fc leaves for the handler block when the bound is
  less than that distance's absolute value or unordered with it. A second distance uses +0x1c with
  +0x10, +0x14 and +0x18, and the `bc1t` at 0x231b624 applies the same rule.
  Passing everything, the routine sets `v0` to 0x10000 (0x231b62c), stores 0xffffffff8080cc03 at
  0x231b630 (from 0xffffffff80800000 at 0x231b620 and 0xcc03 ORed at 0x231b628), then `f12`, `f13`
  at 0x231b634, 0x231b638 and `f14` in the delay slot of the `jr ra` at 0x231b63c, and gives back
  0x10000.
  The handler block loads `t9` from +0x20 of the 0x1040 record (0x231b644), sets `t0` to 0x3f800000
  (0x231b648), and jumps through `t9` at 0x231b64c with `t0` copied to `f15` in the delay slot.
  Inferred: the second and third tests are plane checks of the vertex, since each adds one word to a
  sum of three coordinate products; nothing in the bundle names the planes.
  Unknown: where in the board's address map the address 0x10000 falls, since the rows cover other
  windows only.
  Unknown: the routine the tail call at 0x231b64c reaches, since the value fetched at 0x231b644
  belongs to a record the bundle leaves out.
  Evidence grade: inferred.

- `__glOdyim_Vertex4dv_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231bb80 (n64).
  Gates a vertex given as four doubles against float bounds, then either writes a five-word packet
  to the fixed address 0x10000 and returns, or tail-jumps through a pointer.
  The four doubles at a0, +0x0, +0x8, +0x10 and +0x18 (`ldc1` at 0x231bb80, 0x231bb88, 0x231bb90 and
  0x231bb98), are narrowed to single precision in $f12 to $f15, so the packet carries floats and not
  the original doubles.
  The doublewords at abs 0x1038 and 0x1040 (`ld` at 0x231bba0 and 0x231bba4) are kept as base
  pointers. The number w is the four narrowed values times the floats at +0x30, +0x34, +0x38 and
  +0x3c of the first block (loads at 0x231bba8 to 0x231bbb4), and the `swc1` at 0x231bbd4 records w
  at +0x8 of the second block after the old float there was loaded at 0x231bbcc.
  The `bc1f` at 0x231bbec jumps out to the tail when the absolute value of the product of w and that
  old float is ordered and unequal to the product, which is the case of a negative product.
  The cutoff is the absolute value of the float at +0x4 of the second block (loaded at 0x231bbb8)
  times w. The `bc1t` at 0x231bc18 and the one at 0x231bc44 each exit to the tail when that bound is
  less than, or unordered with, the absolute value of a plane sum: the four values times the floats
  at +0x0, +0x4, +0x8 and +0xc for the first, and times the floats at +0x10, +0x14, +0x18 and +0x1c
  for the second.
  With every test passed, the `lui` at 0x231bc4c sets v0 to 0x10000 and the `sw` at 0x231bc50 writes
  the constant 0xffffffff8080d005 there (immediate 0x8080 at 0x231bc40, `ori` of 0xd005 in the delay
  slot at 0x231bc48). The `swc1` at 0x231bc54, 0x231bc58, 0x231bc5c and 0x231bc64 then write the
  four floats; the last write fills the delay slot of the `jr ra` at 0x231bc60, and the returned v0
  is 0x10000.
  The jump route reads t9 with the `ld` at 0x231bc68 from +0x20 of the block addressed by the
  doubleword at 0x1040 and jumps through the `jr t9` at 0x231bc6c with a0 to a3 as at entry.
  Unknown: the callee entered by the `jr t9` at 0x231bc6c, because the pointer at +0x20 is read from
  memory the bundle does not resolve.
  Unknown: the words of the blocks addressed by the doublewords at 0x1038 and 0x1040, because the
  offsets above are all the bundle gives of the layout.
  Evidence grade: established.

- `__glOdyim_Vertex4sv_mag` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231c1c0 (n64).
  Gate for a four-halfword vertex: it converts the halfwords at a0 to floats, applies three float tests, and
  on success writes the vertex as five words to the address 0x10000, else it jumps through a routine
  pointer without writing.
  The `lh` loads at 0x231c1c0 to 0x231c1cc sign-extend a0 +0x0, +0x2, +0x4 and +0x6 into a4 to a7; the
  instructions after them move each into the floating-point unit and convert it from integer to single
  precision, giving f12 to f15. The `ld` at 0x231c1f0 reads the doubleword at 0x1038 into v0 and the
  `ld` at 0x231c1f4 the doubleword at 0x1040 into v1. Each of the three float groups at v0 +0x30 to
  +0x3c, +0x0 to +0xc and +0x10 to +0x1c is a dot product with f12 to f15 (one multiply, three
  multiply-adds).
  The first dot product is written out by the `swc1` at 0x231c224 to v1 +0x8; the word previously at
  v1 +0x8 (loaded at 0x231c21c) is first multiplied by it, and the product with the float at v1 +0x4
  becomes the bound f8, held as an absolute value.
  Branch one is the `bc1f` at 0x231c23c; it exits unless the absolute value of the product with the old
  v1 +0x8 word equals the product or is unordered (`c.ueq.s` at 0x231c234). Branches two and three, the
  `bc1t` at 0x231c268 and 0x231c294, exit when f8 is less than the absolute value of the second or third
  dot product, or unordered (`c.ult.s` at 0x231c260 and 0x231c28c).
  When none exits, the instruction at 0x231c29c loads 0x10000 into v0, which serves as the store address,
  and the `sw` at 0x231c2a0 writes the constant 0xffffffff8080d004 (0x8080 at 0x231c290, 0xd004 ORed in
  at 0x231c298) to it. The `sw` instructions at 0x231c2a4, 0x231c2a8 and 0x231c2ac, and the one at 0x231c2b4 in the delay
  slot of the `jr ra` at 0x231c2b0, write the four sign-extended halfwords to the same address, and v0
  is returned as 0x10000.
  The exit loads t9 from the doubleword at v1 +0x20 (0x231c2b8) and runs `jr t9` at 0x231c2bc with a0 to
  a3 as received.
  Unknown: the routine at the end of the `jr t9` at 0x231c2bc; the live value of the doubleword at 0x1040
  plus 0x20 would identify it.
  Evidence grade: established.

- `__glOdyim_Vertex2d_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231c300 (n64).
  Same shape as the vertex fast path in this library, here with writes to abs 0x10000: the double arguments in f12
  and f13 are narrowed to single precision, six float conditions are checked against the blocks at the pointers
  abs 0x1038 (P) and abs 0x1040 (Q), and only if all hold are three words stored to abs 0x10000. Any failure leaves
  through the pointer at Q+0x20.
  Let w be P+0x3c plus f12 times P+0x30 plus f13 times P+0x34, built with two multiply-adds after the loads at
  0x231c310 to 0x231c320. The `swc1` at 0x231c334 stores w to Q+0x8. w times Q+0x8 must equal its own absolute
  value (`c.ueq.s` at 0x231c344, `bc1f` at 0x231c34c), meaning it is not negative, and a NaN passes.
  The sum P+0xc plus f12 times P+0x0 plus f13 times P+0x4 is then compared by absolute value with the absolute
  value of w times Q+0x4, and `bc1t` at 0x231c370 bails out when the latter is smaller or the pair is unordered
  (`c.ult.s` at 0x231c368).
  That sum plus w times Q+0xc, when non-negative (`c.ueq.s` at 0x231c380; `bc1f` at 0x231c388 skips the test
  otherwise), must not be below w times Q+0x18 (`c.ult.s` at 0x231c390, `bc1t` at 0x231c398).
  The second half repeats with the sum P+0x1c plus f12 times P+0x10 plus f13 times P+0x14 (`c.ult.s` at 0x231c3bc,
  `bc1t` at 0x231c3c4) and Q+0x10 in place of Q+0xc (`c.ueq.s` at 0x231c3d4, `bc1f` at 0x231c3dc, then `c.ult.s` at
  0x231c3e4 and `bc1t` at 0x231c3ec) against w times Q+0x18.
  If every check passes, the `sw` at 0x231c400 writes the word 0xffffffff8080c801, then the narrowed f12 and f13 follow to the
  same address (`swc1` at 0x231c404 and, in the delay slot of the return, 0x231c40c); v0 holds 0x10000 on return.
  The bail-out at 0x231c410 picks up t9 from Q+0x20, zeroes f14, loads f15 with a single-precision one and
  leaves via the `jr` at 0x231c41c, a0 to a3 as received.
  Unknown: the landing point of the jump at 0x231c41c, whose pointer is read from Q+0x20 while running.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the identity of whatever sits at abs 0x10000; no linked register row names it.
  Evidence grade: established.

- `__glOdyim_Vertex2dv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231c440 (n64).
  Reads its input through the pointer in a0: it loads two doubles from the caller's pointer in a0 (`ldc1` at
  0x231c440 and at 0x231c448, offsets 0x0 and 0x8), narrows each to single precision, tests the narrowed pair against
  the blocks at abs 0x1038 (P) and abs 0x1040 (Q), and writes a header word and the pair to abs 0x10000 when all
  tests pass. A failed test leaves through the pointer at Q+0x20.
  Let w be P+0x3c plus the first float times P+0x30 plus the second float times P+0x34 (two
  multiply-adds after the loads at 0x231c458 to 0x231c468), and stored to Q+0x8 (`swc1` at 0x231c47c).
  The product of w and Q+0x8 must be non-negative (`c.ueq.s` at 0x231c48c, `bc1f` at 0x231c494 leaves otherwise).
  The absolute value of the sum P+0xc plus first float times P+0x0 plus second float times P+0x4 must not exceed
  the absolute value of w times Q+0x4 (`c.ult.s` at 0x231c4b0, `bc1t` at 0x231c4b8 leaves when it does or the pair is
  unordered). With that sum plus w times Q+0xc non-negative (`c.ueq.s` at 0x231c4c8, `bc1f` at 0x231c4d0 skips the
  next test otherwise) it must also be at least w times Q+0x18 (`c.ult.s` at 0x231c4d8, `bc1t` at 0x231c4e0).
  The second round uses P+0x1c, P+0x10 and P+0x14 (`c.ult.s` at 0x231c504, `bc1t` at 0x231c50c), then Q+0x10
  (`c.ueq.s` at 0x231c51c, `bc1f` at 0x231c524) and the same bound against Q+0x18 times w (`c.ult.s` at 0x231c52c,
  `bc1t` at 0x231c534).
  If nothing leaves, the `sw` at 0x231c548 puts the word 0xffffffff8080c801 to abs 0x10000, the two floats
  follow to that address (`swc1` at 0x231c54c and, in the return's delay slot, 0x231c554), and v0 holds 0x10000.
  Failure goes to 0x231c558: Q+0x20 into t9, zero into f14, a single-precision one into f15, then the `jr` at
  0x231c564 with the integer arguments unchanged.
  Unknown: which routine the `jr` at 0x231c564 enters; Q+0x20 holds a value known only at run time.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): what the stores to abs 0x10000 reach; the linked rows hold no entry for it.
  Evidence grade: established.

- `__glOdyim_Vertex2fv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231c6c0 (n64).
  Loads the float pair at `a0` +0x0 and +0x4 into `$f12` and `$f13` (the `lwc1` at 0x231c6c0 and
  0x231c6c4) and runs two rounds of float tests on it against the records at absolute 0x1038 and
  0x1040; a full pass writes a header word and the pair to absolute 0x10000, and otherwise a pointer
  in the second record is the jump target.
  Further on, it builds a sum from the 0x1038 record: the word at +0x3c, plus `$f12` times the word
  at +0x30, plus `$f13` times the word at +0x34 (a pair of multiply-add steps), and keeps a copy of
  it. The `swc1` at 0x231c6f4 copies that sum, not the +0x3c word as loaded, to +0x8 of the 0x1040
  record, after the old +0x8 word was loaded at 0x231c6e0.
  Then, the sum is multiplied by that old word and by the +0x4 word of the 0x1040 record (loaded at
  0x231c6dc), and the products become absolute values; the `bc1f` at 0x231c70c goes on to the tail
  path that starts at 0x231c7d0 unless the first product equals its own absolute value or the pair is
  unordered, so it leaves when that product is negative.
  Next, the first of the later tests forms the 0x1038 record's word at +0xc plus `$f12` times +0x0
  plus `$f13` times +0x4, keeps a copy, takes its absolute value, and the `bc1t` at 0x231c730 goes
  on to the tail branch when the second product is less than that value or unordered.
  After that, the word at +0xc of the 0x1040 record (loaded at 0x231c72c), times the kept first sum,
  is added to the kept copy of that value; a negative total takes the `bc1f` at 0x231c748 past the
  next comparison, and otherwise the `bc1t` at 0x231c758 goes on to the tail branch when the total
  is less than the +0x18 word of the 0x1040 record times the kept first sum, or unordered.
  From there, a second round does the same with the 0x1038 words at +0x1c, +0x10 and +0x14 and the
  0x1040 words at +0x10 and +0x18: the `bc1t` at 0x231c784 leaves on its first comparison, the
  `bc1f` at 0x231c79c skips the last comparison for a negative result and goes to the return block
  at 0x231c7b4, and the `bc1t` at 0x231c7ac leaves on the last one.
  Following that, on a full pass `v0` is set to 0x10000 (immediate at 0x231c7bc), the `sw` at
  0x231c7c0 writes 0xffffffff8080c801 through it (0x8080 loaded at 0x231c7b4, 0xc801 ORed in at
  0x231c7b8), the `swc1` at 0x231c7c4 writes `$f12`, and the `swc1` at 0x231c7cc in the delay slot
  of the return at 0x231c7c8 writes `$f13`; control returns carrying 0x10000.
  The tail-jump path grabs `t9` from +0x20 of the 0x1040 record at 0x231c7d0, clears `$f14`, and
  puts 0x3f800000 in `$f15` through `t0` (the `mtc1` in the delay slot of the `jr t9` at 0x231c7dc),
  leaving `a0` to `a3`, `$f12` and `$f13` as at entry.
  Inferred: the three stores to absolute 0x10000 form one record, header word, then coordinate one,
  then coordinate two, in view of the fact that they hit the same address and the second and third
  write the entry coordinates.
  Unknown (known facts and the test that settles it: see "Absolute addresses 0x10000, 0x4000 and 0x1030" above): the register block that absolute 0x10000 falls in; the linked board windows begin at
  0x110000 and none covers it; the point waits on a datasheet line for the address.
  Unknown: the place the `jr t9` at 0x231c7dc sends control; an execution trace through the jump
  would answer it.
  Evidence grade: inferred.

- `__glOdyim_Vertex2sv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231cbc0 (n64).
  Fetches two sign-extended halfwords from a0 (`lh` at 0x231cbc0 and 0x231cbc4) and, once a chain of seven float
  tests has passed, writes them to abs 0x10000 behind a constant header word. Any test that fails diverts to a
  tail call through a pointer stored in the record that the doubleword at abs 0x1040 addresses. Before the
  record pointers are loaded (`ld` at 0x231cbd8 and 0x231cbdc), both halfwords are converted to single precision
  into f12 and f13. The first sum is the word at +0x3c of the record at the doubleword abs 0x1038, plus the
  converted values times the words at +0x30 and +0x34 (`lwc1` at 0x231cbe0 to 0x231cbe8). It is copied into f10
  and the `swc1` at 0x231cc04 stores it to +0x8 of the record at abs 0x1040, after the old +0x8 word was loaded
  at 0x231cbf0. The first test (`c.ueq.s` at 0x231cc14, `bc1f` at 0x231cc1c) leaves for the tail path when the
  product of the sum and the old +0x8 word is negative. The second sum is built from +0xc, +0x0 and +0x4 of the
  first record; the `bc1t` at 0x231cc40 leaves when the absolute value of the first sum scaled by the word at
  +0x4 of the second record (`lwc1` at 0x231cbec) is below the absolute value of the second sum or unordered
  with it (`c.ult.s` at 0x231cc38). Then the word at +0xc of the second record (`lwc1` at 0x231cc3c) times the
  first sum, plus the second sum, is formed. If that result is negative (`bc1f` at 0x231cc58 after `c.ueq.s` at
  0x231cc50) the next test is skipped; otherwise the `bc1t` at 0x231cc68 leaves when it is below the word at
  +0x18 of the second record times f10 (the multiply in the delay slot at 0x231cc5c) or unordered with it
  (`c.ult.s` at 0x231cc60). The same two steps repeat with a third sum built from +0x1c, +0x10 and +0x14 of the
  first record and the word at +0x10 of the second: the `bc1t` at 0x231cc94 (`c.ult.s` at 0x231cc8c), then the
  `bc1f` at 0x231ccac that skips the last test when the result is negative (`c.ueq.s` at 0x231cca4), else the
  `bc1t` at 0x231ccbc (`c.ult.s` at 0x231ccb4, multiply in the delay slot at 0x231ccb0). When no test leaves,
  the `sw` at 0x231ccd0 writes the constant 0xffffffff8080c800 (0x8080 at 0x231ccc4, `ori` of 0xc800 at
  0x231ccc8) to abs 0x10000. After that the `sw` at 0x231ccd4 writes the halfword from a0+0 and the `sw` at
  0x231ccdc, in the delay slot of the `jr ra` at 0x231ccd8, writes the halfword from a0+2. On return v0 holds
  0x10000. On the tail path the `ld` at 0x231cce0 loads t9 from +0x20 of the second record, f12 and f13 hold the
  converted halfwords, and the delay slot of the `jr t9` at 0x231ccec moves t0 (0x3f800000, set at 0x231cce8)
  into f15. Unknown: the destination of the `jr t9` at 0x231ccec, taken from the doubleword at +0x20 of the
  second record, so reading that doubleword in a live run would settle it. Unknown: the device-side outcome of
  the writes to abs 0x10000. No linked register row or datasheet excerpt in the bundle covers that address.
  Evidence grade: established.

- `__glOdyim_Vertex3d_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231cd00 (n64).
  Takes three double-precision arguments in f12 to f14 and narrows them to single precision in place and, when a
  chain of seven float tests passes, writes them to abs 0x10000 behind a constant header word. A failing test
  instead makes a tail call through a pointer found in the record behind abs 0x1040. The record pointers are
  loaded by the `ld` at 0x231cd0c and 0x231cd10. The first sum is the word at +0x3c of the record at the
  doubleword abs 0x1038, plus the three narrowed values times the words at +0x30, +0x34 and +0x38 (`lwc1` at
  0x231cd14 to 0x231cd20). It is copied into f10 and the `swc1` at 0x231cd40 stores it to +0x8 of the record at
  abs 0x1040, after the old +0x8 word was loaded at 0x231cd28. The first test (`c.ueq.s` at 0x231cd50, `bc1f` at
  0x231cd58) leaves for the tail path at 0x231ce30 when the product of the sum and the old +0x8 word is
  negative. The second sum is built from +0xc, +0x0, +0x4 and +0x8 of the first record; the `bc1t` at 0x231cd84
  leaves when the absolute value of the first sum scaled by the word at +0x4 of the second record (`lwc1` at
  0x231cd24) is below the absolute value of the second sum or unordered with it (`c.ult.s` at 0x231cd7c). Then
  the word at +0xc of the second record (`lwc1` at 0x231cd80) times the first sum, plus the second sum, is
  formed. If that result is negative (`bc1f` at 0x231cd9c after `c.ueq.s` at 0x231cd94) the next test is
  skipped; otherwise the `bc1t` at 0x231cdac leaves when it is below the word at +0x18 of the second record
  times f10 (the multiply in the delay slot at 0x231cda0) or unordered with it (`c.ult.s` at 0x231cda4). The
  same two steps repeat with a third sum built from +0x1c, +0x10, +0x14 and +0x18 of the first record and the
  word at +0x10 of the second: the `bc1t` at 0x231cde0 (`c.ult.s` at 0x231cdd8), then the `bc1f` at 0x231cdf8
  that skips the last test when the result is negative (`c.ueq.s` at 0x231cdf0), else the `bc1t` at 0x231ce08
  (`c.ult.s` at 0x231ce00, multiply in the delay slot at 0x231cdfc). When no test leaves, the `sw` at 0x231ce1c
  writes the constant 0xffffffff8080cc03 (0x8080 at 0x231ce10, `ori` of 0xcc03 at 0x231ce14) to abs 0x10000
  through v0 set at 0x231ce18, then the `swc1`s at 0x231ce20, 0x231ce24 and 0x231ce2c write the narrowed f12,
  f13 and f14, the last in the delay slot of the `jr ra` at 0x231ce28. On return v0 holds the value 0x10000. On
  the tail path the `ld` at 0x231ce30 loads t9 from +0x20 of the second record, f12 to f14 hold the narrowed
  values, and the delay slot of the `jr t9` at 0x231ce38 moves t0 (0x3f800000, set at 0x231ce34) into f15.
  Unknown: the target of the `jr t9` at 0x231ce38, which comes from the doubleword at +0x20 of the second record
  and could be read out in a live run. Unknown: the device-side result of the writes to abs 0x10000. A register
  row or datasheet excerpt for that address would settle it, and the bundle has none.
  Evidence grade: established.

- `__glOdyim_Vertex3fv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231d100 (n64).
  Reads three floats through `a0`, runs a chain of seven tests against the records at absolute
  0x1038 and 0x1040, and either writes the vertex to the fixed address 0x10000 or tail-jumps through
  a pointer in the 0x1040 record.
  `f12` to `f14` get the floats at +0x0, +0x4 and +0x8 of `a0` (0x231d100, 0x231d104, 0x231d108).
  After that come the loads of the records' pointers, absolute 0x1038 into `v0` and absolute 0x1040
  into `v1` (0x231d10c, 0x231d110).
  A sum in `f8` starts at the word at +0x3c of the 0x1038 record (0x231d118) and adds the
  coordinates times the words at +0x30, +0x34 and +0x38. The sum is copied to `f10`, multiplied by
  the old +0x8 word of the 0x1040 record (0x231d128) for a sign test, written over +0x8 by the
  `swc1` at 0x231d140, and multiplied by the word at +0x4 of the 0x1040 record (0x231d124) to give a
  bound, kept as an absolute value. The `bc1f` at 0x231d158 goes to the handler block at 0x231d230
  when the first product is negative.
  Two plane stages follow, each the same shape. The first forms a distance from the word at +0xc of
  the 0x1038 record and the coordinates times the words at +0x0, +0x4 and +0x8, and the `bc1t` at
  0x231d184 goes to the handler block if the bound is less than its absolute value or unordered. The
  second stage uses +0x1c with +0x10, +0x14 and +0x18, and the `bc1t` at 0x231d1e0.
  Each stage then runs a second check on the signed distance. It loads a word from the 0x1040 record
  (+0xc at 0x231d180, +0x10 at 0x231d1e4), multiplies it by the copy of the sum in `f10` and adds
  the distance. When that result is negative, the `bc1f` at 0x231d19c or at 0x231d1f8 skips the rest
  of the check. Otherwise the result is compared with the word at +0x18 of the 0x1040 record times
  the sum, and the `bc1t` at 0x231d1ac or 0x231d208 goes to the handler block if the result is less
  or unordered.
  A vertex that clears every test is written by the `sw` at 0x231d21c, which stores
  0xffffffff8080cc03 (0xffffffff80800000 from 0x231d210 with 0xcc03 ORed at 0x231d214) to 0x10000
  after `v0` is set to 0x10000 at 0x231d218. `f12` and `f13` follow at 0x231d220 and 0x231d224, and
  `f14` goes in the delay slot of the `jr ra` at 0x231d228. `v0` is left holding 0x10000 on return.
  The handler block loads `t9` from +0x20 of the 0x1040 record (0x231d230), sets `t0` to 0x3f800000
  (0x231d234) and jumps via `t9` at 0x231d238; the delay slot copies `t0` into `f15`.
  Inferred: the two stages read as plane checks on the vertex, because each sums three coordinate
  products and one more word of the 0x1038 record; the bundle gives those planes no name.
  Unknown: which device register the address 0x10000 reaches, because the linked rows list only the
  board windows at 0x110000 and 0x120000.
  Unknown: the code entered by the `jr` at 0x231d238, because the pointer read at 0x231d230 from
  +0x20 of the 0x1040 record points to memory the bundle does not hold.
  Evidence grade: inferred.

- `__glOdyim_Vertex4f_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231db40 (n64).
  Examines a vertex whose four floats arrive in $f12 to $f15 against float bounds with four extra
  offset tests, then either writes a five-word packet to the fixed address 0x10000 and returns, or
  tail-jumps through a pointer.
  The doublewords at abs 0x1038 and 0x1040 are held as base pointers. The scalar called w is the
  four argument floats times the floats at +0x30, +0x34, +0x38 and +0x3c of the first block (loads
  at 0x231db48 to 0x231db54). It is copied to $f10, and the `swc1` at 0x231db78 places w in +0x8 of
  the second block after the old float there was loaded at 0x231db6c.
  The `bc1f` at 0x231db90 heads for the tail jump when the absolute value of the product of w and
  that old float is ordered and unequal to the product, so the product has to be negative. The
  `bc1t` at 0x231dbc0 branches next to the tail if the absolute value of the float at +0x4 of the
  second block (loaded at 0x231db58) times w is less than, or unordered with, the absolute value of
  the plane sum of the four floats and the first-block floats at +0x0, +0x4, +0x8 and +0xc.
  The signed plane sum is retained in $f11. A multiply-add step on the float at +0xc of the second
  block (loaded at 0x231dbbc) and w gives a second value. On a negative value the `bc1f` at
  0x231dbd8 moves beyond the next test; in the remaining case the `bc1t` at 0x231dbe8 jumps to the
  tail when the value is less than, or unordered with, the float at +0x18 of the second block times
  w (the multiply in the delay slot at 0x231dbdc).
  The same sequence covers the second plane (first-block floats at +0x10, +0x14, +0x18 and +0x1c):
  the `bc1t` at 0x231dc20 against the same bound, then a multiply-add with the float at +0x10 of the
  second block (loaded at 0x231dc24), the skip on a negative value at the `bc1f` at 0x231dc38 and
  the `bc1t` at 0x231dc48 against the +0x18 float times w.
  With every test passed, the `lui` at 0x231dc58 sets v0 to 0x10000 and the `sw` at 0x231dc5c writes
  the constant 0xffffffff8080d005 there (immediate 0x8080 at 0x231dc50, `ori` of 0xd005 at
  0x231dc54). The `swc1` at 0x231dc60, 0x231dc64, 0x231dc68 and 0x231dc70 place $f12 to $f15
  unchanged; the fourth write is placed in the delay slot of the `jr ra` at 0x231dc6c, and the
  returned v0 is 0x10000.
  Taking the tail, t9 is read by the `ld` at 0x231dc74 from +0x20 of the block addressed by the
  doubleword at 0x1040 and jumps through the `jr t9` at 0x231dc78 with a0 to a3 and the argument
  floats as at entry.
  Unknown: the landing point of the `jr t9` at 0x231dc78, because the pointer at +0x20 is read from
  memory the bundle does not resolve.
  Unknown: the bytes of the blocks addressed by the doublewords at 0x1038 and 0x1040, because the
  offsets above are the sole trace of the layout.
  Evidence grade: established.

- `__glOdyim_Vertex4fv_mag_line0` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231dc80 (n64).
  Runs float tests on a vertex of four floats read from the array at a0 against float bounds with
  four extra offset tests, then either writes a five-word packet to the fixed address 0x10000 and
  returns, or tail-jumps through a pointer.
  The four floats at a0, +0x0, +0x4, +0x8 and +0xc, land in $f12 to $f15 (`lwc1` at 0x231dc80 to
  0x231dc8c). The doublewords at abs 0x1038 and 0x1040 are loaded to be base pointers.
  The running value w is the four floats times the floats at +0x30, +0x34, +0x38 and +0x3c of the
  first block (loads at 0x231dc98 to 0x231dca4). It is copied to $f10, and the `swc1` at 0x231dcc8
  keeps w in +0x8 of the second block after the old float there was loaded at 0x231dcbc.
  The `bc1f` at 0x231dce0 bails out to the tail jump when the absolute value of the product of w and
  that old float is ordered and unequal to the product, the condition for a negative product. The
  `bc1t` at 0x231dd10 then diverts to the tail when the absolute value of the float at +0x4 of the
  second block (loaded at 0x231dca8) times w is less than, or unordered with, the absolute value of
  the plane sum of the four floats and the first-block floats at +0x0, +0x4, +0x8 and +0xc.
  The plane sum, with its sign, is placed in $f11. A single multiply-add with the float at +0xc of
  the second block (loaded at 0x231dd0c) and w gives a second value. If the value is below zero, the
  `bc1f` at 0x231dd28 steps around the next test; with any other value the `bc1t` at 0x231dd38 jumps
  to the tail when the value is less than, or unordered with, the float at +0x18 of the second block
  times w (the multiply in the delay slot at 0x231dd2c).
  For the second plane the pair recurs (first-block floats at +0x10, +0x14, +0x18 and +0x1c): the
  `bc1t` at 0x231dd70 against the same bound, then a multiply-add with the float at +0x10 of the
  second block (loaded at 0x231dd74), the skip on a negative value at the `bc1f` at 0x231dd88 and
  the `bc1t` at 0x231dd98 against the +0x18 float times w.
  With every test passed, the `lui` at 0x231dda8 sets v0 to 0x10000 and the `sw` at 0x231ddac writes
  the constant 0xffffffff8080d005 there. The `swc1` at 0x231ddb0, 0x231ddb4, 0x231ddb8 and 0x231ddc0
  record the four floats read from a0 unchanged; the final float is stored in the delay slot of the
  `jr ra` at 0x231ddbc, and the returned v0 is 0x10000.
  The escape route loads t9 through the `ld` at 0x231ddc4 from +0x20 of the block addressed by the
  doubleword at 0x1040 and jumps through the `jr t9` at 0x231ddc8 with a0 to a3 as at entry.
  Unknown: the routine behind the `jr t9` at 0x231ddc8, because the pointer at +0x20 is read from
  memory the bundle does not resolve.
  Unknown: the structure of the blocks addressed by the doublewords at 0x1038 and 0x1040, because
  the offsets above give the only glimpse of the layout.
  Evidence grade: established.

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231e800`

`__glOdyim_TexCoord3d` (44 bytes) stores one word at 0x231e818 and three single-precision words at 0x231e81c, 0x231e820 and 0x231e828, all to abs 0x10000. It has no loads or calls and returns 0x10000 at 0x231e824. The shape matches the 3d emitters, so it is probably a three-component texture-coordinate packet, but the facts do not name the fields. Grade: inferred.

Reviewed: 2026-11-12

- `__glOdyim_TexCoord3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231e800
  **Inferred.** One word store at 0x231e818 and three float stores at 0x231e81c, 0x231e820 and 0x231e828 fill abs 0x10000. The return at 0x231e824 yields 0x10000.
  Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231ef00`

`__glOdyim_ScratchColor3b` (32 bytes) makes four 4-byte word stores to abs 0x10000 (including 0x231ef0c, 0x231ef10 and 0x231ef14) and returns 0x10000 at 0x231ef18. It has no loads or calls. The name suggests byte-sized channels, but every store in the render is a 4-byte word, so any packing of byte channels is not shown. Grade: inferred.

Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231ef00
  **Inferred.** Four word stores, including 0x231ef0c, 0x231ef10 and 0x231ef14, write abs 0x10000. The return at 0x231ef18 gives 0x10000, and the facts show no loads from the 32-byte body.
  Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231efc0`

`__glOdyim_Color3d` (44 bytes) stores one word at 0x231efd8 and three single-precision words at 0x231efdc, 0x231efe0 and 0x231efe8, all to abs 0x10000. It has no loads or calls and returns 0x10000 at 0x231efe4. The store pattern matches `__glOdyim_TexCoord3d`, so a header word followed by three floats is the most likely reading, but the facts do not name the color fields. Grade: inferred.

Reviewed: 2026-11-12

- `__glOdyim_Color3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231efc0
  **Inferred.** A word store at 0x231efd8 and float stores at 0x231efdc, 0x231efe0 and 0x231efe8 fill abs 0x10000. The return at 0x231efe4 is the constant 0x10000.
  Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231f000`

`__glOdyim_ScratchColor3d` (44 bytes) makes the same stores as `__glOdyim_Color3d`: one word at 0x231f018 and three single-precision words at 0x231f01c, 0x231f020 and 0x231f028, all to abs 0x10000. It has no loads or calls and returns 0x10000 at 0x231f024. The render shows no difference from the non-scratch variant, so the facts do not say what the scratch path changes. Grade: inferred.

Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3d` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231f000
  **Inferred.** A word store at 0x231f018 and float stores at 0x231f01c, 0x231f020 and 0x231f028 fill abs 0x10000. The return at 0x231f024 is 0x10000, and the offsets match the Color3d entry at 0x231efc0 with a shift of 0x40.
  Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231f200`

`__glOdyim_ScratchColor3i` (32 bytes) makes four word stores to abs 0x10000 (including 0x231f20c, 0x231f210 and 0x231f214) and returns 0x10000 at 0x231f218. It has no loads or calls. The shape matches `__glOdyim_ScratchColor3s` and `__glOdyim_ScratchColor3ui` and fits a header plus three integer components, though the facts only show the store count. Grade: inferred.

Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231f200
  **Inferred.** Four word stores at 0x231f20c, 0x231f210 and 0x231f214 (and one more) write abs 0x10000. The return at 0x231f218 gives 0x10000.
  Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231f300`

`__glOdyim_ScratchColor3s` (32 bytes) makes four word stores to abs 0x10000 (including 0x231f30c, 0x231f310 and 0x231f314) and returns 0x10000 at 0x231f318. It has no loads or calls, and its shape matches `__glOdyim_ScratchColor3i`. The facts do not show a width difference between the signed and unsigned variants. Grade: inferred.

Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231f300
  **Inferred.** Four word stores, including 0x231f30c, 0x231f310 and 0x231f314, write abs 0x10000. The return at 0x231f318 is 0x10000.
  Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231f500`

`__glOdyim_ScratchColor3ui` (32 bytes) makes four word stores to abs 0x10000 (including 0x231f50c, 0x231f510 and 0x231f514) and returns 0x10000 at 0x231f518. It has no loads or calls, and its shape matches the other three-component scratch color emitters. Grade: inferred.

Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231f500
  **Inferred.** Four word stores, with 0x231f50c, 0x231f510 and 0x231f514 among them, write abs 0x10000. The return at 0x231f518 yields 0x10000.
  Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231f600`

`__glOdyim_ScratchColor3us` (32 bytes) makes four word stores to abs 0x10000 (including 0x231f60c, 0x231f610 and 0x231f614) and returns 0x10000 at 0x231f618. It has no loads or calls, and its shape matches the other three-component scratch color emitters. Grade: inferred.

Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231f600
  **Inferred.** Four word stores, including 0x231f60c, 0x231f610 and 0x231f614, write abs 0x10000. The return at 0x231f618 is 0x10000.
  Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231f700`

`__glOdyim_ScratchColor4b` (36 bytes) makes five word stores to abs 0x10000 (including 0x231f70c, 0x231f710 and 0x231f714) and returns 0x10000 at 0x231f71c. It has no loads or calls. Five words fit a header plus four components, the four-component counterpart of the 3-component scratch emitters. Grade: inferred.

Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4b` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231f700
  **Inferred.** Five word stores, including 0x231f70c, 0x231f710 and 0x231f714, write abs 0x10000. The return at 0x231f71c is 0x10000.
  Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231f8c0`

`__glOdyim_ScratchColor4dv` (68 bytes) loads four doubles from a0 at offsets 0, 8, 0x10 and 0x18 (0x231f8c0 to 0x231f8dc), stores one word at 0x231f8e4 and four single-precision words at 0x231f8ec, 0x231f8f4, 0x231f8f8 and 0x231f900, all to abs 0x10000, and returns 0x10000 at 0x231f8fc. It makes no calls. A vector-of-doubles argument fits the load pattern, but the field layout is inferred from the offsets. Grade: inferred.

Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4dv` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231f8c0
  **Inferred.** Four doubles are loaded from a0 at offsets 0, 8, 0x10 and 0x18 (ldc1 at 0x231f8c0, 0x231f8cc, 0x231f8d4 and 0x231f8dc). The routine then writes one word at 0x231f8e4 and four float stores, three of them at 0x231f8ec, 0x231f8f4 and 0x231f8f8, into abs 0x10000, and returns 0x10000 from 0x231f8fc.
  Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231fa80`

`__glOdyim_ScratchColor4i` (36 bytes) makes five word stores to abs 0x10000 (including 0x231fa8c, 0x231fa90 and 0x231fa94) and returns 0x10000 at 0x231fa9c. It has no loads or calls, and its store count matches the other four-component scratch emitters. Grade: inferred.

Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4i` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231fa80
  **Inferred.** Five word stores, including 0x231fa8c, 0x231fa90 and 0x231fa94, write abs 0x10000. The return at 0x231fa9c is 0x10000.
  Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231fb80`

`__glOdyim_ScratchColor4s` (36 bytes) makes five word stores to abs 0x10000 (including 0x231fb8c, 0x231fb90 and 0x231fb94) and returns 0x10000 at 0x231fb9c. It has no loads or calls, and its shape matches `__glOdyim_ScratchColor4i`. Grade: inferred.

Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4s` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231fb80
  **Inferred.** Five word stores, including 0x231fb8c, 0x231fb90 and 0x231fb94, write abs 0x10000, and the return at 0x231fb9c gives 0x10000.
  Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231fc80`

`__glOdyim_ScratchColor4ub` (36 bytes) makes five word stores to abs 0x10000 (including 0x231fc8c, 0x231fc90 and 0x231fc94) and returns 0x10000 at 0x231fc9c. It has no loads or calls. The byte-typed name does not change the 4-byte stores the render shows, so channel packing is unknown. Grade: inferred.

Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4ub` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231fc80
  **Inferred.** Five word stores, with 0x231fc8c, 0x231fc90 and 0x231fc94 among them, write abs 0x10000. The return at 0x231fc9c is 0x10000.
  Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231fd80`

`__glOdyim_ScratchColor4ui` (36 bytes) makes five word stores to abs 0x10000 (including 0x231fd8c, 0x231fd90 and 0x231fd94) and returns 0x10000 at 0x231fd9c. It has no loads or calls, and its shape matches the other four-component scratch emitters. Grade: inferred.

Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4ui` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231fd80
  **Inferred.** Five word stores, including 0x231fd8c, 0x231fd90 and 0x231fd94, write abs 0x10000. The return at 0x231fd9c is 0x10000.
  Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231fe80`

`__glOdyim_ScratchColor4us` (36 bytes) makes five word stores to abs 0x10000 (including 0x231fe8c, 0x231fe90 and 0x231fe94) and returns 0x10000 at 0x231fe9c. It has no loads or calls, and its shape matches the other four-component scratch emitters. Grade: inferred.

Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4us` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231fe80
  **Inferred.** Five word stores, including 0x231fe8c, 0x231fe90 and 0x231fe94, write abs 0x10000. The return at 0x231fe9c is 0x10000.
  Reviewed: 2026-11-12

## `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0x231ff80`

`__glOdyim_ScratchIndexd` (28 bytes) makes one word store at 0x231ff90 and one single-precision store at 0x231ff98, both to abs 0x10000, and returns 0x10000 at 0x231ff94. It has no loads or calls. Two stores fit a header word plus one value, but the facts do not establish the index width or meaning. Grade: inferred.

Reviewed: 2026-11-12

- `__glOdyim_ScratchIndexd` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x231ff80
  **Inferred.** One word store at 0x231ff90 and one float store at 0x231ff98 write abs 0x10000. The return at 0x231ff94 gives 0x10000. The body is 28 bytes.
  Reviewed: 2026-11-12

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

- `__glOdysseySetProgram` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x220e490
  **Inferred.** Makes the microcode program numbered by a1 the one the transform engine runs, by streaming its table words into the command window at 0x10000. A set byte at +0x285e0 ends the call at once with a single store of 0x298080c5. Otherwise the 32-byte slot of program a1 at +0xc9a8 gives a start and a length, and the loop at 0x220e660 walks up to 199 twelve-byte records, sending for each a header 0x27008000 holding the record number (bits above 10 shifted to bit 23, the low 10 bits kept) and six words 0x40008000 built from the record's halfwords the same way. The tail sends 0x29008000, 0x33008000, 0x90808800 and two zero words, and remembers the program at +0xc9f8, +0xc9fc and +0xca00 so a repeat selection skips the download.

- `ApplyMaterialF` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21c7170
  **Inferred.** Stores a floating-point material colour into the hardware's lighting table. It compares a1 with the material names 0x1200, 0x1201, 0x1202 and 0x1600 to 0x1602, clamps each of the three floats at a2 against 1.0, multiplies by a constant and truncates to 12 bits, then packs the results into 12-bit fields of the words at +24 and +28 of the record in a0. The tail loads the context from the global at 0x1020 and, when its pending flag at +0xbb80 is set, clears it and sends the pause words 0x10443, 250 and 0x10046 twice, then the header 0x13c4d followed by the 16 words at +0x9fc0 of the context.

- `ApplyMaterialI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21c78d0
  **Inferred.** The integer form of the material setter: each signed integer at a2 is turned into a float with `cvt.s.w`, mapped into the unit range by a fused multiply-add on two table constants, multiplied by the colour scale at +3908 of the context and clamped at 1.0. The scaled value is truncated to 12 bits and packed into the words at +24 and +28 of the record in a0, as in the float form, and the same table push follows: the words 0x10443, 250, 0x10046 and the header 0x13c4d at 0x21c7a88, then the 16 words from +0x9fc0 of the context.

- `__glOdysseyHyperpipeStereo` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x2239050
  **Established.** In the 64-bit build the stereo request block is built with plain `sw` stores: the context word at +0x285d8 at sp+0, the value read through a3 at sp+4, the kind code 3 at sp+8 and a2 at sp+12, with the pointer a3 kept whole at sp+16. `__glOdysseyIoctl` is called at 0x22390a0 with the request 0x6f640018 and the routine returns 1 when it reports an error and 0 when it does not.

- `__glOdysseyUnbindHyperpipe` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x22392d0
  **Established.** Same job as the 32-bit builds but with the 8-byte context pointer taken from the global at 0x1020. It writes a1 into a stack block, issues the unbind request 0x6f640015 at 0x22392fc and maps the ioctl status to 0 or 1 with `movz` at 0x2239314.

- `ApplyViewport` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a9e70
  **Inferred.** The 64-bit viewport applier calls `__glOdysseyFindWindowSize` at 0x21a9ea0 and `__glUpdateViewport` at 0x21a9eac, then four times `__glOdysseyImageDescribeWindow` at 0x21a9f54, 0x21a9f70, 0x21a9fa0 and 0x21a9fb8 on the window records at +82208, +82272, +82448 and +82384. It finishes by sending the pause words 0x10443, 250 and 0x10046 twice and the header 0x10456 followed by the shadow word at +47992 of the context to the window at 0x10000.

- `ApplyParameterF` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a0650
  **Inferred.** Distributes one four-float parameter to the units selected by a bit mask. The parameter name in a1 is compared with 0x1200 to 0x1202 and 0x1600 to 0x1602, each choosing a mask (8 for the first case when the byte at +3556 of the context is set, 2 for another). For every set bit the loop at 0x21a06c0 builds the header 0xc080d000 with a group number in the top byte and a running register number in the low byte, stores it to 0x10000 and follows it with the four floats read from a2.

- `ApplyParameterI` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a0d30
  **Inferred.** The integer-argument parameter applier for the same unit set, the n64 build. It resends the context's 16-word table at +0x9fc0 behind the header 0x13c4d (after 0x10443, 250 and 0x10046 twice at 0x21a0d88), then writes a series of words that are headers built from the register numbers and the integer values at a2, ending with 0xd080c433 or 0xd080c439 at 0x21a1058. A call to `__glOdysseySetProgram` at 0x21a109c reselects the microcode program held at +51704 of the context.

- `LoadAndSendStippledQuads` in `builds/6.5.30-media/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0x21a3840
  **Inferred.** Loads the polygon stipple into the board and draws a list of quads under it. The quad corners at a1 are rounded with four `ceil` calls (0x21a3888 onward) and the pause words 0x10443, 250 and 0x10046 precede the stipple load. The load sends the header 0x1043f with the word at +0x9f48, then the pattern words from +0x9f48 onward behind the headers 0x13c4e and 0x13c4f. Each quad is sent as 0x14400, 7 and 0x8f80b968, the four floats at +0 to +12 of the colour pointer, the corners, and the closing header 0x14001.
