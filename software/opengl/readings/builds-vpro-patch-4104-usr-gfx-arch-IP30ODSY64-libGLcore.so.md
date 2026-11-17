# Readings: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`

One entry per routine, filed here from the reading batches by binary.

- `ApplyParameterF` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbd50e80 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbd50e80-0xbd512a4 (1060 bytes).
  It occupies 1060 bytes.
  The `ld` at 0xbd50eac loads 8 bytes from abs 0x1020.
  11 such `lbu` accesses load 1 byte from [0x1020]:8 +0xdec, including `lbu` at 0xbd50ec0, `lbu` at 0xbd50f98, `lbu` at 0xbd50fb0.
  12 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xbd50f04, `sw` at 0xbd50f6c, `sw` at 0xbd510a0.
  5 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xbd50f08, `lwc1` at 0xbd51018, `lwc1` at 0xbd51034.
  25 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xbd50f0c, `swc1` at 0xbd50f14, `swc1` at 0xbd50f1c.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xbd50f10, `lwc1` at 0xbd51108.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xbd50f18, `lwc1` at 0xbd51000.
  The `lwc1` at 0xbd50f20 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0xbd5106c loads 4 bytes from table(0xbc3c) +0x0.
  The `swc1` at 0xbd51094 stores 4 bytes to table(0xbc3c) +0x0.
  2 such `lwc1` accesses load 4 bytes from [0x1020]:8 +0xbc3c, including `lwc1` at 0xbd510b8, `lwc1` at 0xbd510c0.
  2 such `lwc1` accesses load 4 bytes from [0x1020]:8 +0xbc40, including `lwc1` at 0xbd510cc, `lwc1` at 0xbd510d4.
  The `lw` at 0xbd510f0 loads 4 bytes from [0x1020]:8 +0xcad0.
  The `jalr` at 0xbd510ec calls __glOdysseySetProgram [0xbdb29a0] with a0=[0x1020]:8, a1=[[0x1020]:8+51920], a2=0xffffffff908091ea, a3=(one of 0x33, 0x39 | 0xffffffffd080c400), a4=0x10000, a5=0xffffffffd080c400, a7=0x39.
  The `bne` branch at 0xbd50eb0 targets 0xbd50f84, is taken when a1 < 0x1600 (unsigned), and falls through when a1 >= 0x1600 (unsigned).
  The `beq` branch at 0xbd50eb8 targets 0xbd50fb4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xbd50eec targets 0xbd50f70, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xbd50ef4 targets 0xbd50f3c and is always taken.
  The `beq` branch at 0xbd50f34 targets 0xbd50f70, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xbd50f4c targets 0xbd50f28, is taken when (a6(?) & s0(?)) == 0, and falls through when (a6(?) & s0(?)) != 0.
  The `bne` branch at 0xbd50f54 targets 0xbd50f00, is taken when s1(=a0) != 0, and falls through when s1(=a0) == 0.
  The `beq` branch at 0xbd50f68 targets 0xbd50f08 and is always taken.
  The `bne` branch at 0xbd50f84 targets 0xbd50fa4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xbd50f90 targets 0xbd50fd0, is taken when a1 >= 0x1202 (unsigned), and falls through when a1 < 0x1202 (unsigned).
  The `beq` branch at 0xbd50f9c targets 0xbd50ec8 and is always taken.
  The `beq` branch at 0xbd50fa4 targets 0xbd5101c, is taken when a1 == v0(=0x1200), and falls through when a1 != v0(=0x1200).
  The `beq` branch at 0xbd50fac targets 0xbd50ec8 and is always taken.
  The `bne` branch at 0xbd50fb4 targets 0xbd50fe0, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xbd50fbc targets 0xbd50ff0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xbd50fc8 targets 0xbd50ec8 and is always taken.
  The `beq` branch at 0xbd50fd0 targets 0xbd51028, is taken when a1 == at(=0x1202), and falls through when a1 != at(=0x1202).
  The `beq` branch at 0xbd50fd8 targets 0xbd50ec8 and is always taken.
  The `beq` branch at 0xbd50fe0 targets 0xbd51034, is taken when a1 == v0(=0x1601), and falls through when a1 != v0(=0x1601).
  The `beq` branch at 0xbd50fe8 targets 0xbd50ec8 and is always taken.
  The `bne` branch at 0xbd50ff0 targets 0xbd50ec8, is taken when a1 != v1(=0x1603), and falls through when a1 == v1(=0x1603).
  The `bne` branch at 0xbd50ff8 targets 0xbd50ecc, is taken when a2(=[[0x1020]:8+3564]:1) != 0, and falls through when a2(=[[0x1020]:8+3564]:1) == 0.
  The `bc1t` branch at 0xbd5100c targets 0xbd510fc, is taken when f5(=[a2+8]) == f4(=0x0) (c.eq.s at 0xbd51008), and falls through when not (f5(=[a2+8]) == f4(=0x0) (c.eq.s at 0xbd51008)).
  The `beq` branch at 0xbd51014 targets 0xbd510fc and is always taken.
  The `beq` branch at 0xbd51020 targets 0xbd50ec8 and is always taken.
  The `beq` branch at 0xbd5102c targets 0xbd50ec8 and is always taken.
  The `bc1f` branch at 0xbd51044 targets 0xbd51054, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0xbd51078 targets 0xbd51088, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `beq` branch at 0xbd51080 targets 0xbd50ec8 and is always taken.
  The `beq` branch at 0xbd510f4 targets 0xbd51080 and is always taken.
  The `bc1t` branch at 0xbd51100 targets 0xbd51124, is taken when f5 == f4(=0x0) (c.eq.s at 0xbd510fc), and falls through when not (f5 == f4(=0x0) (c.eq.s at 0xbd510fc)).
  The `beq` branch at 0xbd5111c targets 0xbd51128 and is always taken.
  The `bc1t` branch at 0xbd51130 targets 0xbd51150, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `beq` branch at 0xbd51148 targets 0xbd51154 and is always taken.
  The `beq` branch at 0xbd5117c targets 0xbd51254, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `beq` branch at 0xbd511b0 targets 0xbd51268, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `beq` branch at 0xbd511e8 targets 0xbd5127c, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `beq` branch at 0xbd51220 targets 0xbd51290, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `beq` branch at 0xbd5124c targets 0xbd50ec8 and is always taken.
  The `beq` branch at 0xbd51260 targets 0xbd51190 and is always taken.
  The `beq` branch at 0xbd51274 targets 0xbd511c8 and is always taken.
  The `beq` branch at 0xbd51288 targets 0xbd51200 and is always taken.
  The `beq` branch at 0xbd5129c targets 0xbd51238 and is always taken.
  The return at 0xbd50f7c has v0 = ?.
  The instructions from 0xbd50efc to 0xbd50efc are not reached by any path from the entry, and their branches are not listed.

- `ApplyParameterI` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbd51510 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbd51510-0xbd51a7c (1388 bytes).
  It occupies 1388 bytes.
  The `ld` at 0xbd51540 loads 8 bytes from abs 0x1020.
  The `lw` at 0xbd51560 loads 4 bytes from [0x1020]:8 +0xbc58.
  The `sw` at 0xbd5157c stores 4 bytes to [0x1020]:8 +0xbc58.
  33 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xbd51580, `sw` at 0xbd51584, `sw` at 0xbd51588.
  The `lw` at 0xbd5159c loads 4 bytes from [0x1020]:8 +0xa098.
  The `lw` at 0xbd515a4 loads 4 bytes from [0x1020]:8 +0xa09c.
  The `lw` at 0xbd515ac loads 4 bytes from [0x1020]:8 +0xa0a0.
  The `lw` at 0xbd515b4 loads 4 bytes from [0x1020]:8 +0xa0a4.
  The `lw` at 0xbd515bc loads 4 bytes from [0x1020]:8 +0xa0a8.
  The `lw` at 0xbd515c4 loads 4 bytes from [0x1020]:8 +0xa0ac.
  The `lw` at 0xbd515cc loads 4 bytes from [0x1020]:8 +0xa0b0.
  The `lw` at 0xbd515d4 loads 4 bytes from [0x1020]:8 +0xa0b4.
  The `lw` at 0xbd515dc loads 4 bytes from [0x1020]:8 +0xa0b8.
  The `lw` at 0xbd515e4 loads 4 bytes from [0x1020]:8 +0xa0bc.
  The `lw` at 0xbd515ec loads 4 bytes from [0x1020]:8 +0xa0c0.
  The `lw` at 0xbd515f4 loads 4 bytes from [0x1020]:8 +0xa0c4.
  The `lw` at 0xbd515fc loads 4 bytes from [0x1020]:8 +0xa0c8.
  The `lw` at 0xbd51604 loads 4 bytes from [0x1020]:8 +0xa0cc.
  The `lw` at 0xbd5160c loads 4 bytes from [0x1020]:8 +0xa0d0.
  The `lw` at 0xbd51614 loads 4 bytes from [0x1020]:8 +0xa0d4.
  2 such `lbu` accesses load 1 byte from [0x1020]:8 +0xdec, including `lbu` at 0xbd51620, `lbu` at 0xbd51898.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0xbd51668, `lw` at 0xbd517b4, `lw` at 0xbd518bc.
  4 such `lwc1` accesses load 4 bytes from [0x1020]:8 +0xf4c, including `lwc1` at 0xbd51678, `lwc1` at 0xbd51694, `lwc1` at 0xbd516b4.
  25 such `swc1` accesses store 4 bytes to abs 0x4000, including `swc1` at 0xbd51680, `swc1` at 0xbd516a0, `swc1` at 0xbd516c0.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0xbd51684, `lw` at 0xbd518d0.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lw` at 0xbd516a4, `lw` at 0xbd518b0.
  The `lw` at 0xbd516c4 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `swc1` at 0xbd5180c stores 4 bytes to table(0xbc3c) +0x0.
  2 such `lwc1` accesses load 4 bytes from [0x1020]:8 +0xbc3c, including `lwc1` at 0xbd51828, `lwc1` at 0xbd51830.
  2 such `lwc1` accesses load 4 bytes from [0x1020]:8 +0xbc40, including `lwc1` at 0xbd5183c, `lwc1` at 0xbd51844.
  The `lw` at 0xbd51860 loads 4 bytes from [0x1020]:8 +0xcad0.
  The `jalr` at 0xbd5185c calls __glOdysseySetProgram [0xbdb29a0] with a0=[0x1020]:8, a1=[[0x1020]:8+51920], a2=0xffffffffd080c400, a3=table(0x10000), a5=0x39, a6=0x10000.
  The `bne` branch at 0xbd51544 targets 0xbd51744, is taken when a1 < 0x1600 (unsigned), and falls through when a1 >= 0x1600 (unsigned).
  The `beq` branch at 0xbd5154c targets 0xbd51778, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xbd51574 targets 0xbd51590, is taken when v1(=[[0x1020]:8+48216]) == 0, and falls through when v1(=[[0x1020]:8+48216]) != 0.
  The `beq` branch at 0xbd51650 targets 0xbd5172c, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xbd51658 targets 0xbd516f8 and is always taken.
  The `beq` branch at 0xbd516f0 targets 0xbd5172c, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0xbd51708 targets 0xbd516e4, is taken when (a6(?) & s0(?)) == 0, and falls through when (a6(?) & s0(?)) != 0.
  The `bne` branch at 0xbd51710 targets 0xbd51660, is taken when s2(=a0) != 0, and falls through when s2(=a0) == 0.
  The `beq` branch at 0xbd51724 targets 0xbd51668 and is always taken.
  The `bne` branch at 0xbd51744 targets 0xbd51768, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xbd51750 targets 0xbd51798, is taken when a1 >= 0x1202 (unsigned), and falls through when a1 < 0x1202 (unsigned).
  The `beq` branch at 0xbd51760 targets 0xbd51560 and is always taken.
  The `beq` branch at 0xbd51768 targets 0xbd51880, is taken when a1 == v0(=0x1200), and falls through when a1 != v0(=0x1200).
  The `beq` branch at 0xbd51770 targets 0xbd51560 and is always taken.
  The `bne` branch at 0xbd51778 targets 0xbd517a8, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0xbd51780 targets 0xbd5186c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xbd51790 targets 0xbd51560 and is always taken.
  The `beq` branch at 0xbd51798 targets 0xbd5188c, is taken when a1 == at(=0x1202), and falls through when a1 != at(=0x1202).
  The `beq` branch at 0xbd517a0 targets 0xbd51560 and is always taken.
  The `bne` branch at 0xbd517ac targets 0xbd51560, is taken when a1 != v0(=0x1601), and falls through when a1 == v0(=0x1601).
  The `bc1f` branch at 0xbd517cc targets 0xbd517e0, is taken when not (f4 < f5(=0x4004000000000000) (c.lt.d at 0xbd517c8)), and falls through when f4 < f5(=0x4004000000000000) (c.lt.d at 0xbd517c8).
  The `beq` branch at 0xbd51864 targets 0xbd51560 and is always taken.
  The `beq` branch at 0xbd5186c targets 0xbd51898, is taken when a1 == at(=0x1603), and falls through when a1 != at(=0x1603).
  The `beq` branch at 0xbd51878 targets 0xbd51560 and is always taken.
  The `beq` branch at 0xbd51884 targets 0xbd51560 and is always taken.
  The `beq` branch at 0xbd51890 targets 0xbd51560 and is always taken.
  The `beq` branch at 0xbd5189c targets 0xbd518b0, is taken when v0(=[[0x1020]:8+3564]:1) == 0, and falls through when v0(=[[0x1020]:8+3564]:1) != 0.
  The `beq` branch at 0xbd518a8 targets 0xbd51560 and is always taken.
  The `beq` branch at 0xbd518b4 targets 0xbd51a14, is taken when a0(=[a2+8]) == 0, and falls through when a0(=[a2+8]) != 0.
  The `beq` branch at 0xbd518c8 targets 0xbd51a1c, is taken when a0(=[a2+8]) == 0, and falls through when a0(=[a2+8]) != 0.
  The `beq` branch at 0xbd518f0 targets 0xbd51a24, is taken when a0(=[a2+8]) == 0, and falls through when a0(=[a2+8]) != 0.
  The `beq` branch at 0xbd5193c targets 0xbd51a2c, is taken when s2(=a0) == 0, and falls through when s2(=a0) != 0.
  The `beq` branch at 0xbd51970 targets 0xbd51a40, is taken when s2(=a0) == 0, and falls through when s2(=a0) != 0.
  The `beq` branch at 0xbd519a8 targets 0xbd51a54, is taken when s2(=a0) == 0, and falls through when s2(=a0) != 0.
  The `beq` branch at 0xbd519e0 targets 0xbd51a68, is taken when s2(=a0) == 0, and falls through when s2(=a0) != 0.
  The `beq` branch at 0xbd51a0c targets 0xbd518a4 and is always taken.
  The `beq` branch at 0xbd51a14 targets 0xbd518c0 and is always taken.
  The `beq` branch at 0xbd51a1c targets 0xbd518ec and is always taken.
  The `beq` branch at 0xbd51a24 targets 0xbd51910 and is always taken.
  The `beq` branch at 0xbd51a38 targets 0xbd51950 and is always taken.
  The `beq` branch at 0xbd51a4c targets 0xbd51988 and is always taken.
  The `beq` branch at 0xbd51a60 targets 0xbd519c0 and is always taken.
  The `beq` branch at 0xbd51a74 targets 0xbd519f8 and is always taken.
  The return at 0xbd5173c has v0 = one of [[0x1020]:8+41160], ?.

### `LoadAndSendStippledQuads` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd54010`

The row is unnamed in the renderer; the inventory name is `LoadAndSendStippledQuads`. It reads one word through a1 (0xbd54030) and calls `ceil` three times (0xbd54060, 0xbd5408c, 0xbd540c4) and once more at 0xbd54570, two of them with single-precision constants. It clears a 4-byte stack slot with `memset` (0xbd54688) and calls an unnamed callee with 0x806f (0xbd547d8). The name suggests a stipple pattern sent as quads, but the facts show rounding and a small stack buffer, and the quad emission path is not traced.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd54830`

`DrawBitmapUsingPolyStipple` calls `__glOdysseyUpdateRasterPos` (0xbd549b8) only when the byte at a0+0xcb78 (loaded at 0xbd549a0, tested at 0xbd549ac) is nonzero, and then `__glOdysseyImageCalcOdyEyeSpaceRasterPosZ` (0xbd549c4). It calls `__glOdysseyValidateHardware` (0xbd54bc4) only when the word at +0x18fdc (a0+102364) is nonzero, and calls the stipple loader at 0xbd54010 at 0xbd54bec. It also makes a run of calls to unnamed callees with constants such as 0x1700 to 0x1702, 0xb00, 0xba0 and 0xba6, makes one `__glOdysseyIoctl` call with request 0x6f64000d (0xbd55038), and calls `__glSetError` (0xbd54fb4). The name fits a bitmap drawn with a polygon stipple, but which branch reaches the actual draw is not traced, so the order of operations is only partly known.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd55c70`

`__glOdylc_Color3s` is a 276-byte stub. It calls `__glSPDlistSpace` with a0 set to 0 (0xbd55cd8), tests the result and a counter at abs 0x1048 (0xbd55cbc, 0xbd55cf8), and updates the words at abs 0x1048, 0x1058 and 0x1060. It writes a 4-byte value into [0x1020]+0x15ec (0xbd55c88) and returns either the counter or the space pointer (0xbd55d5c, 0xbd55d7c). The name suggests a short-vector color call compiled into a display list, and the space call supports that, but the reading relies on the name.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd560d0`

`__glOdylc_Color3ui` has the same 276-byte shape as the stub at 0xbd55c70. It calls `__glSPDlistSpace` with a0 set to 0 (0xbd56138), updates abs 0x1048, 0x1058 and 0x1060, and writes a 4-byte value into [0x1020]+0x15ec (0xbd560e8). It returns the counter or the space pointer (0xbd561bc, 0xbd561dc). The name suggests the unsigned-int three-component color call in a display list, with the same caveat that the name is the only source for that.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd56300`

`__glOdylc_Color3us` matches the other 276-byte stubs. It calls `__glSPDlistSpace` at 0xbd56368, updates abs 0x1048, 0x1058 and 0x1060, writes [0x1020]+0x15ec (0xbd56318), and returns at 0xbd563ec or 0xbd5640c. The name suggests the unsigned-short three-component color call, and the facts do not contradict it.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd56530`

`__glOdylc_Color4b` is a 288-byte stub, 12 bytes longer than the three-component stubs, which fits one more argument. It calls `__glSPDlistSpace` at 0xbd5659c, updates the same abs 0x1048, 0x1058 and 0x1060 words, and writes [0x1020]+0x15ec (0xbd56548). It returns at 0xbd56628 or 0xbd56648. The name suggests a four-component byte color call in a display list; the size difference supports the extra argument, but it is not confirmed.

Grade: inferred.

Reviewed: 2026-11-12

- `__glOdylc_Color4b` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbd56530
  **Inferred.** The same shape as `__glOdylc_Color3s`: it tests `[0x1048]` (branch at 0xbd5657c) and, when that is the lower value, calls `__glSPDlistSpace` at 0xbd5659c with a0=0. The return at 0xbd56628 is either `[0x1048]` or the call's result, and the return at 0xbd56648 is the call's result.
  Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd56c30`

`__glOdylc_Color4i` is a 288-byte stub with the same calls and writes as `__glOdylc_Color4b`: `__glSPDlistSpace` at 0xbd56c9c, the abs 0x1048, 0x1058 and 0x1060 words, and [0x1020]+0x15ec (0xbd56c48). It returns at 0xbd56d28 or 0xbd56d48. The name suggests a four-component int color call in a display list.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd56e70`

`__glOdylc_Color4s` is a 288-byte stub. It calls `__glSPDlistSpace` at 0xbd56edc, updates abs 0x1048, 0x1058 and 0x1060, writes [0x1020]+0x15ec (0xbd56e88), and returns at 0xbd56f68 or 0xbd56f88. The name suggests a four-component short color call in a display list.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd570b0`

`__glOdylc_Color4ub` is a 288-byte stub. It calls `__glSPDlistSpace` at 0xbd5711c, updates abs 0x1048, 0x1058 and 0x1060, writes [0x1020]+0x15ec (0xbd570c8), and returns at 0xbd571a8 or 0xbd571c8. The name suggests a four-component unsigned-byte color call in a display list.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd572f0`

`__glOdylc_Color4ui` is a 288-byte stub. It calls `__glSPDlistSpace` at 0xbd5735c, updates abs 0x1048, 0x1058 and 0x1060, writes [0x1020]+0x15ec (0xbd57308), and returns at 0xbd573e8 or 0xbd57408. The name suggests a four-component unsigned-int color call in a display list.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd57530`

`__glOdylc_Color4us` is a 288-byte stub. It calls `__glSPDlistSpace` at 0xbd5759c, updates abs 0x1048, 0x1058 and 0x1060, writes [0x1020]+0x15ec (0xbd57548), and returns at 0xbd57628 or 0xbd57648. The name suggests a four-component unsigned-short color call in a display list.

Grade: inferred.

Reviewed: 2026-11-12

- `Store` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbd58190 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbd58190-0xbd5822c (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0xbd58190 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `ld` at 0xbd58198 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0xbd581a4 loads 4 bytes from [a0]:8 +0x7d4.
  The `lwc1` at 0xbd581ac loads 4 bytes from [a0]:8 +0x7d0.
  The `lw` at 0xbd581b4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xbd581bc loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xbd581c0 loads 4 bytes from [a0]:8 +0xf30.
  The `lwc1` at 0xbd581cc loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0xbd581d8 loads 4 bytes from [a0]:8 +0xfbc.
  The `lw` at 0xbd581ec loads 4 bytes from [a0]:8 +0xfb8.
  The `jalr` at 0xbd58214 calls fprintf with a0=sym(__iob)+64, a1=0xbec8000, a2=?, a3=?, a6=[[a0]:8+4028], a7=0x197208.
  The return at 0xbd58224 has v0 = ret(fprintf).

- `Pick` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbd58230 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbd58230-0xbd58238 (8 bytes).
  It occupies 8 bytes.
  The return at 0xbd58230 has v0 = ?.

- `Fetch` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbd58240 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbd58240-0xbd58248 (8 bytes).
  It occupies 8 bytes.
  The return at 0xbd58240 has v0 = ?.

- `StoreStippledSpan` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbd58250 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbd58250-0xbd58388 (312 bytes).
  It occupies 312 bytes.
  The `ld` at 0xbd58274 loads 8 bytes from a0 (arg0 at entry) +0x9908.
  The `lw` at 0xbd58278 loads 4 bytes from a0 (arg0 at entry) +0x9818.
  The `lw` at 0xbd5827c loads 4 bytes from a0 (arg0 at entry) +0x97e8.
  The `ld` at 0xbd5828c loads 8 bytes from a0 (arg0 at entry) +0x9918.
  The `ld` at 0xbd58294 loads 8 bytes from a0 (arg0 at entry) +0x98f8.
  The `lw` at 0xbd582a0 loads 4 bytes from a0 (arg0 at entry) +0x97e4.
  The `lw` at 0xbd582f4 loads 4 bytes from ?.
  The `lwc1` at 0xbd58330 loads 4 bytes from ?.
  The `ld` at 0xbd58338 loads 8 bytes from [a0+39192]:8 +0xe0.
  The `jalr` at 0xbd58340 calls (unknown callee) with a0=[a0+39192]:8, a1=sp-176, a2=?, a3=?.
  The `beq` branch at 0xbd5829c targets 0xbd58364, is taken when s7(=[a0+38936]) == 0, and falls through when s7(=[a0+38936]) != 0.
  The `beq` branch at 0xbd582b4 targets 0xbd582d4 and is always taken.
  The `beq` branch at 0xbd582d0 targets 0xbd58350, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `bltz` branch at 0xbd582f8 targets 0xbd582d0, is taken when s3(?) < 0 (signed), and falls through when s3(?) >= 0 (signed).
  The `beq` branch at 0xbd58308 targets 0xbd5831c and is always taken.
  The `beq` branch at 0xbd58314 targets 0xbd582c0, is taken when s3(?) == s5(=-0x1), and falls through when s3(?) != s5(=-0x1).
  The `beq` branch at 0xbd58324 targets 0xbd58310, is taken when (s4(?) & s0(?)) == 0, and falls through when (s4(?) & s0(?)) != 0.
  The `beq` branch at 0xbd58348 targets 0xbd58314 and is always taken.
  The return at 0xbd58380 has v0 = 0x0.
  The instructions from 0xbd582bc to 0xbd582bc are not reached by any path from the entry, and their branches are not listed.

- `StoreSpan` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbd58390 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbd58390-0xbd5843c (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0xbd583a4 loads 4 bytes from a0 (arg0 at entry) +0x9818.
  The `lw` at 0xbd583a8 loads 4 bytes from a0 (arg0 at entry) +0x97e8.
  The `lw` at 0xbd583b4 loads 4 bytes from a0 (arg0 at entry) +0x97e4.
  The `ld` at 0xbd583d8 loads 8 bytes from a0 (arg0 at entry) +0x9918.
  The `ld` at 0xbd583e0 loads 8 bytes from a0 (arg0 at entry) +0x98f8.
  The `lwc1` at 0xbd583f0 loads 4 bytes from ?.
  The `ld` at 0xbd583f8 loads 8 bytes from [a0+39192]:8 +0xe0.
  The `jalr` at 0xbd58408 calls (unknown callee) with a0=[a0+39192]:8, a1=sp-128, a2=?, a3=?.
  The `beq` branch at 0xbd583dc targets 0xbd5841c, is taken when s0(=[a0+38884]) >= s5(=([a0+38884] + [a0+38936])) (signed), and falls through when s0(=[a0+38884]) < s5(=([a0+38884] + [a0+38936])) (signed).
  The `bnel` branch at 0xbd58410 targets 0xbd583f0, is taken when s5(=([a0+38884] + [a0+38936])) != s0(?), and falls through when s5(=([a0+38884] + [a0+38936])) == s0(?); its branch-likely delay slot `sw s0,0(sp)` at 0xbd58414 runs only when taken and is annulled on fall-through.
  The return at 0xbd58434 has v0 = 0x0.

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd58560`

`__glOdyim_Clear` tests the word at abs 0x1030 and a mask value, and raises `__glSetError` with 0x502 (0xbd58598) or 0x501 (0xbd585f0) on the failing paths. On the normal paths it calls `__glOdysseyWindowToNormalizedEyeZ` (0xbd588a0), `__glOdysseyClear` (0xbd58bd0, the next entry) at 0xbd58904 and 0xbd58a40, and `__glOdysseySetDrawbuf` at 0xbd589f8 and 0xbd58a5c. It also makes one `__glOdysseyIoctl` call with request 0x6f64000d (0xbd58b60). The name suggests the immediate-mode clear front end, but the facts do not show which argument chooses between the two `__glOdysseyClear` paths.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd58bd0`

`__glOdysseyClear` reads and writes context fields at +0xa024, +0xa028, +0xa054 and +0xa058, and writes an integer to abs 0x1030. It makes 44 integer stores and 20 single-precision stores to abs 0x4000, with four single-precision inputs read from a1 at +0x0 to +0xc (0xbd59048 onward). It calls `__glOdysseyValidateHardware` at 0xbd58fc4 with a2 = 0x10415 and a5 = 0x100000, and that call is skipped when the word at +0x18fdc (a0+102364) is zero (branch at 0xbd58fb8). It returns 0x10000 or 0x10046 (0xbd591bc). The name suggests a hardware clear that programs clear values into a register window, but the meaning of the 0x4000 window is not established by these facts.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd596d0`

`__glOdysseyFindWindowSize` calls an unnamed callee at 0xbd59710 with four stack addresses (sp-72 to sp-80) as arguments, then calls `__glChangeWindowSize` at 0xbd59770 only when the new size differs from the words at context +4064 and +4068. A second unnamed callee takes two more stack addresses (0xbd59784), `__glChangeReadWindowSize` runs at 0xbd597ac only when its size words at +4072 and +4076 differ, and `__glChangeWindowSize` runs again at 0xbd597cc with the values at context +1960 and +1964 when a tested word is nonzero (branch at 0xbd597bc). It returns 0x10000, a pointer into the context at a0+83336, or a value the facts do not resolve (0xbd59814). The name suggests a query of window geometry that pushes the new size into the context, and the calls support that, but the query callee is unnamed.

Grade: inferred.

Reviewed: 2026-11-12

- `ApplyViewport` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbd59820 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbd59820-0xbd59a20 (512 bytes).
  It occupies 512 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xfe4, including `lw` at 0xbd5984c, `lw` at 0xbd59860, `lw` at 0xbd599ac.
  The `lw` at 0xbd59868 loads 4 bytes from a0 (arg0 at entry) +0x7a4.
  The `lw` at 0xbd59870 loads 4 bytes from a0 (arg0 at entry) +0x7a0.
  The `lw` at 0xbd59878 loads 4 bytes from a0 (arg0 at entry) +0x7ac.
  The `lw` at 0xbd5987c loads 4 bytes from a0 (arg0 at entry) +0x7a8.
  The `lw` at 0xbd59884 loads 4 bytes from a0 (arg0 at entry) +0xfe0.
  The `lwc1` at 0xbd59890 loads 4 bytes from a0 (arg0 at entry) +0xf30.
  The `lwc1` at 0xbd59898 loads 4 bytes from a0 (arg0 at entry) +0xfc8.
  The `lwc1` at 0xbd598ac loads 4 bytes from a0 (arg0 at entry) +0x228.
  The `lwc1` at 0xbd598d0 loads 4 bytes from a0 (arg0 at entry) +0xfc4.
  The `swc1` at 0xbd598e4 stores 4 bytes to a0 (arg0 at entry) +0x228.
  The `swc1` at 0xbd598f4 stores 4 bytes to a0 (arg0 at entry) +0x7c8.
  The `swc1` at 0xbd59904 stores 4 bytes to a0 (arg0 at entry) +0x7cc.
  The `ld` at 0xbd59924 loads 8 bytes from a0 (arg0 at entry) +0x46a8.
  The `lbu` at 0xbd59950 loads 1 byte from a0 (arg0 at entry) +0x9668.
  2 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x9668, including `sb` at 0xbd59984, `sb` at 0xbd59994.
  The `sw` at 0xbd5999c stores 4 bytes to abs 0x1030.
  The `lw` at 0xbd599a0 loads 4 bytes from a0 (arg0 at entry) +0x456c.
  The `sw` at 0xbd599a8 stores 4 bytes to a0 (arg0 at entry) +0x456c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xbc50, including `lw` at 0xbd599b4, `lw` at 0xbd59a10.
  The `lw` at 0xbd599bc loads 4 bytes from a0 (arg0 at entry) +0xbc58.
  The `sw` at 0xbd599d8 stores 4 bytes to a0 (arg0 at entry) +0xbc50.
  The `sw` at 0xbd599e8 stores 4 bytes to a0 (arg0 at entry) +0xbc58.
  6 such `sw` accesses store 4 bytes to abs 0x4000, including `sw` at 0xbd599ec, `sw` at 0xbd599f4, `sw` at 0xbd599fc.
  The `bgezall` at 0xbd59848 calls __glOdysseyFindWindowSize [0xbd596d0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xbd59858 calls __glUpdateViewport [0xbe873f0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xbd59900 calls __glOdysseyImageDescribeWindow [0xbd7a420] with a0=a0+82424, a1=0x0, a2=[a0+1956], a3=[a0+4068].
  The `jalr` at 0xbd5991c calls __glOdysseyImageDescribeWindow [0xbd7a420] with a0=a0+82488, a1=0x1, a2=?, a3=?.
  The `jalr` at 0xbd59928 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bltz` branch at 0xbd5994c targets 0xbd59990, is taken when a1(=[a0+1952]) < 0 (signed), and falls through when a1(=[a0+1952]) >= 0 (signed).
  The `bltz` branch at 0xbd59958 targets 0xbd59990, is taken when a1(=[a0+1956]) < 0 (signed), and falls through when a1(=[a0+1956]) >= 0 (signed).
  The `bne` branch at 0xbd59968 targets 0xbd59990, is taken when at(=[a0+4064]) < v0(=([a0+1960] + [a0+1952])) (signed), and falls through when at(=[a0+4064]) >= v0(=([a0+1960] + [a0+1952])) (signed).
  The `bne` branch at 0xbd59978 targets 0xbd59990, is taken when v1(=[a0+4068]) < a1(=([a0+1964] + [a0+1956])) (signed), and falls through when v1(=[a0+4068]) >= a1(=([a0+1964] + [a0+1956])) (signed).
  The `beq` branch at 0xbd59980 targets 0xbd599ac, is taken when a2(=[a0+38504]:1) == a3(=0x1), and falls through when a2(=[a0+38504]:1) != a3(=0x1).
  The `beq` branch at 0xbd59988 targets 0xbd5999c and is always taken.
  The `beq` branch at 0xbd59990 targets 0xbd599ac, is taken when a2(=[a0+38504]:1) == 0, and falls through when a2(=[a0+38504]:1) != 0.
  The `beq` branch at 0xbd599e0 targets 0xbd59a08, is taken when v1(=[a0+48216]) == 0, and falls through when v1(=[a0+48216]) != 0.
  The return at 0xbd59a18 has v0 = 0x10443.

- `ApplyScissor` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbd59bc0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbd59bc0-0xbd59d54 (404 bytes).
  It occupies 404 bytes.
  The `lw` at 0xbd59bc0 loads 4 bytes from a0 (arg0 at entry) +0xfb8.
  The `lw` at 0xbd59bc8 loads 4 bytes from a0 (arg0 at entry) +0xfbc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x95dc, including `lw` at 0xbd59bd8, `lw` at 0xbd59cb8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x95d0, including `lw` at 0xbd59be4, `lw` at 0xbd59c78.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x95d4, including `lw` at 0xbd59bf4, `lw` at 0xbd59ccc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x95d8, including `lw` at 0xbd59c04, `lw` at 0xbd59c68.
  The `sw` at 0xbd59c3c stores 4 bytes to a0 (arg0 at entry) +0x18ce0.
  The `sw` at 0xbd59c50 stores 4 bytes to a0 (arg0 at entry) +0x18cdc.
  The `sb` at 0xbd59c60 stores 1 byte to a0 (arg0 at entry) +0x18ce4.
  The `lw` at 0xbd59c64 loads 4 bytes from a0 (arg0 at entry) +0x95e0.
  The `lw` at 0xbd59c70 loads 4 bytes from a0 (arg0 at entry) +0x95e8.
  The `swc1` at 0xbd59c7c stores 4 bytes to a0 (arg0 at entry) +0x14290.
  The `swc1` at 0xbd59c90 stores 4 bytes to a0 (arg0 at entry) +0x14294.
  The `swc1` at 0xbd59c9c stores 4 bytes to a0 (arg0 at entry) +0x14298.
  The `lw` at 0xbd59ca8 loads 4 bytes from a0 (arg0 at entry) +0x95ec.
  The `swc1` at 0xbd59cc0 stores 4 bytes to a0 (arg0 at entry) +0x1429c.
  The `lw` at 0xbd59cdc loads 4 bytes from a0 (arg0 at entry) +0x18fe0.
  The `lw` at 0xbd59ce4 loads 4 bytes from a0 (arg0 at entry) +0x95e4.
  The `sw` at 0xbd59d20 stores 4 bytes to a0 (arg0 at entry) +0x18fe0.
  The `sw` at 0xbd59d2c stores 4 bytes to a0 (arg0 at entry) +0x18cd4.
  The `sw` at 0xbd59d3c stores 4 bytes to a0 (arg0 at entry) +0x18cd8.
  The `sw` at 0xbd59d48 stores 4 bytes to abs 0x1030.
  The `bne` branch at 0xbd59c4c targets 0xbd59c60, is taken when a4(?) < t0(?) (signed), and falls through when a4(?) >= t0(?) (signed).
  The `beq` branch at 0xbd59c58 targets 0xbd59d4c, is taken when a3(?) >= a2(?) (signed), and falls through when a3(?) < a2(?) (signed).
  The `beq` branch at 0xbd59d4c targets 0xbd59c60 and is always taken.
  The return at 0xbd59d44 has v0 = 0x2.

- `InitBuffers` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbd5b6b0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbd5b6b0-0xbd5b8b4 (516 bytes).
  It occupies 516 bytes.
  The `sd` at 0xbd5b6c8 stores 8 bytes to a0 (arg0 at entry) +0x9a28.
  The `lbu` at 0xbd5b6cc loads 1 byte from a0 (arg0 at entry) +0xdee.
  The `sd` at 0xbd5b6e4 stores 8 bytes to a0 (arg0 at entry) +0x4578.
  The `sd` at 0xbd5b6e8 stores 8 bytes to a0 (arg0 at entry) +0x9a30.
  3 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xded, including `lbu` at 0xbd5b6ec, `lbu` at 0xbd5b770, `lbu` at 0xbd5b838.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x4570, including `sd` at 0xbd5b6f8, `sd` at 0xbd5b844.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x9a30, including `ld` at 0xbd5b718, `ld` at 0xbd5b87c.
  The `lw` at 0xbd5b720 loads 4 bytes from a0 (arg0 at entry) +0xe38.
  The `ld` at 0xbd5b774 loads 8 bytes from a0 (arg0 at entry) +0x9cd8.
  The `lbu` at 0xbd5b79c loads 1 byte from a0 (arg0 at entry) +0xdf0.
  The `sw` at 0xbd5b7a4 stores 4 bytes to a0 (arg0 at entry) +0x1460.
  The `sb` at 0xbd5b7b0 stores 1 byte to a0 (arg0 at entry) +0x145c.
  The `lbu` at 0xbd5b7d0 loads 1 byte from a0 (arg0 at entry) +0xdf1.
  The `sw` at 0xbd5b7f4 stores 4 bytes to a0 (arg0 at entry) +0x9e34.
  The `lbu` at 0xbd5b7f8 loads 1 byte from a0 (arg0 at entry) +0xdf2.
  The `bgezall` at 0xbd5b704 calls __glOdysseyInitCI [0xbd58440] with a0=a0+39480, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+39480.
  The `bgezall` at 0xbd5b714 calls __glOdysseyInitCI [0xbd58440] with a0=[a0+39472]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `bgezall` at 0xbd5b754 calls __glOdysseyInitCI [0xbd58440] with a0=?, a1=a0 at entry (arg0), a2=[a0+3565]:1, a3=?.
  The `jalr` at 0xbd5b784 calls __glOdysseyInitRGB [0xbdb3720] with a0=?, a1=a0 at entry (arg0), a2=[a0+3565]:1, a3=?.
  The `jalr` at 0xbd5b7c0 calls __glOdysseyInitAccum [0xbd4ad90] with a0=a0+40584, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xbd5b7e4 calls __glInitDepth [0xbe1c0a0] with a0=a0+40376, a1=a0 at entry (arg0), a2=[a0+3569]:1, a3=?.
  The `jalr` at 0xbd5b80c calls __glInitStencil8 [0xbe54f40] with a0=a0+40160, a1=a0 at entry (arg0), a2=[a0+3570]:1, a3=?.
  The `jalr` at 0xbd5b818 calls __glUpdateDepthRange [0xbe86170] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0xbd5b850 calls __glOdysseyInitCI [0xbd58440] with a0=a0+39480, a1=a0 at entry (arg0), a2=[a0+3565]:1, a3=a0+39480.
  The `jalr` at 0xbd5b868 calls __glOdysseyInitRGB [0xbdb3720] with a0=a0+39480, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a0+39480.
  The `jalr` at 0xbd5b878 calls __glOdysseyInitRGB [0xbdb3720] with a0=[a0+39472]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jalr` at 0xbd5b8a4 calls __glOdysseyInitRGB [0xbdb3720] with a0=a0+39480, a1=a0 at entry (arg0), a2=[a0+3565]:1, a3=a0+39480.
  The `beq` branch at 0xbd5b6e0 targets 0xbd5b838, is taken when at(=[a0+3566]:1) == 0, and falls through when at(=[a0+3566]:1) != 0.
  The `beq` branch at 0xbd5b6f4 targets 0xbd5b860, is taken when at(=[a0+3565]:1) == 0, and falls through when at(=[a0+3565]:1) != 0.
  The `blez` branch at 0xbd5b724 targets 0xbd5b79c, is taken when a0(=[a0+3640]) <= 0 (signed), and falls through when a0(=[a0+3640]) > 0 (signed).
  The `beq` branch at 0xbd5b748 targets 0xbd5b770 and is always taken.
  The `beq` branch at 0xbd5b760 targets 0xbd5b794, is taken when s2(?) == s4(=((((([a0+3640] << 0x2) + [a0+3640]) << 0x2) + [a0+3640]) << 0x4)), and falls through when s2(?) != s4(=((((([a0+3640] << 0x2) + [a0+3640]) << 0x2) + [a0+3640]) << 0x4)).
  The `bne` branch at 0xbd5b778 targets 0xbd5b750, is taken when a2(=[a0+3565]:1) != 0, and falls through when a2(=[a0+3565]:1) == 0.
  The `beq` branch at 0xbd5b78c targets 0xbd5b760 and is always taken.
  The `beq` branch at 0xbd5b7ac targets 0xbd5b7d0, is taken when v0(=[a0+3568]:1) == 0, and falls through when v0(=[a0+3568]:1) != 0.
  The `beq` branch at 0xbd5b7c8 targets 0xbd5b888, is taken when v0(=ret(__glOdysseyInitAccum)) == 0, and falls through when v0(=ret(__glOdysseyInitAccum)) != 0.
  The `beq` branch at 0xbd5b7d4 targets 0xbd5b7ec, is taken when a2(=[a0+3569]:1) == 0, and falls through when a2(=[a0+3569]:1) != 0.
  The `beq` branch at 0xbd5b7fc targets 0xbd5b814, is taken when a2(=[a0+3570]:1) == 0, and falls through when a2(=[a0+3570]:1) != 0.
  The `beq` branch at 0xbd5b840 targets 0xbd5b89c, is taken when a2(=[a0+3565]:1) == 0, and falls through when a2(=[a0+3565]:1) != 0.
  The `beq` branch at 0xbd5b858 targets 0xbd5b720 and is always taken.
  The `beq` branch at 0xbd5b880 targets 0xbd5b720 and is always taken.
  The `beq` branch at 0xbd5b8ac targets 0xbd5b720 and is always taken.
  The return at 0xbd5b830 has v0 = 0x1.
  The return at 0xbd5b894 has v0 = 0x0.

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd5d4e0`

`__glOdysseyInitDefaultValues` is a long setup routine with 89 calls in all. It clears 0x40 bytes at a0+45072 with `bzero` (0xbd5d74c) and then calls GL state setters: `__glOdyim_Disable` and `__glOdyim_Enable` with tokens such as 0xb10, 0x8037, 0xbd0 and 0xbf1, and setters for cull, front face, shade model, light model, fog, masks, stencil, depth, blend, line and point size, polygon stipple, material and fragment lighting. The constants match GL default-state values, such as 0x201 (`GL_LESS`), 0x901 (`GL_CCW`) and 0x1d01 (`GL_SMOOTH`). It finishes with `__glOdysseyInitLighting` (0xbd5e014), `__glOdysseyInitFragmentLighting`, `__glOdysseyInitFragmentMaterial`, `__glOdysseyTextureDriverInit` (0xbd5e038) and a `getenv` call (0xbd5e164). The name and the default constants both point to context default initialization, but the facts do not confirm the default values beyond the constants passed.

Grade: inferred.

Reviewed: 2026-11-12

- `LoseCurrent` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbd5f430 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbd5f430-0xbd5f52c (252 bytes).
  It occupies 252 bytes.
  The `lw` at 0xbd5f434 loads 4 bytes from a0 (arg0 at entry) +0xddc.
  2 such `lw` accesses load 4 bytes from abs 0x1030, including `lw` at 0xbd5f458, `lw` at 0xbd5f47c.
  The `sw` at 0xbd5f484 stores 4 bytes to a0 (arg0 at entry) +0xdd8.
  The `sd` at 0xbd5f490 stores 8 bytes to abs 0x1020.
  The `ld` at 0xbd5f494 loads 8 bytes from a0 (arg0 at entry) +0x1ae0.
  The `ld` at 0xbd5f4cc loads 8 bytes from ?.
  The `sd` at 0xbd5f4d8 stores 8 bytes to ?.
  The `lw` at 0xbd5f4dc loads 4 bytes from a0 (arg0 at entry) +0x1548.
  The `lw` at 0xbd5f4e8 loads 4 bytes from abs 0x1048.
  The `sw` at 0xbd5f4ec stores 4 bytes to a0 (arg0 at entry) +0x15c0.
  The `ld` at 0xbd5f4f0 loads 8 bytes from abs 0x1050.
  The `sd` at 0xbd5f4f4 stores 8 bytes to a0 (arg0 at entry) +0x15c8.
  The `ld` at 0xbd5f4f8 loads 8 bytes from abs 0x1058.
  The `sd` at 0xbd5f4fc stores 8 bytes to a0 (arg0 at entry) +0x15d0.
  The `lw` at 0xbd5f500 loads 4 bytes from abs 0x1060.
  The `sw` at 0xbd5f504 stores 4 bytes to a0 (arg0 at entry) +0x15d8.
  The `jalr` at 0xbd5f470 calls __glLoseCurrentBuffers [0xbe18a30] with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xbd5f48c calls FastDispatchInstall [0xbd5b0e0] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0xbd5f450 targets 0xbd5f518, is taken when at(=[a0+3548]) != v0(=0x1c00), and falls through when at(=[a0+3548]) == v0(=0x1c00).
  The `beq` branch at 0xbd5f460 targets 0xbd5f518, is taken when a1(=[0x1030]) == at(=0x1), and falls through when a1(=[0x1030]) != at(=0x1).
  The `beq` branch at 0xbd5f4b0 targets 0xbd5f4dc, is taken when at(=a0+10520) == a5(=[a0+6880]:8), and falls through when at(=a0+10520) != a5(=[a0+6880]:8).
  The `bgtz` branch at 0xbd5f4d4 targets 0xbd5f4c0, is taken when a0(?) > 0 (signed), and falls through when a0(?) <= 0 (signed).
  The `beq` branch at 0xbd5f4e0 targets 0xbd5f50c, is taken when v1(=[a0+5448]) == 0, and falls through when v1(=[a0+5448]) != 0.
  The return at 0xbd5f510 has v0 = 0x1.
  The return at 0xbd5f524 has v0 = 0x0.

- `MakeCurrent` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbd5f530 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbd5f530-0xbd5f59c (108 bytes).
  It occupies 108 bytes.
  The `ld` at 0xbd5f544 loads 8 bytes from a0 (arg0 at entry) +0x78.
  The `ld` at 0xbd5f55c loads 8 bytes from a0 (arg0 at entry) +0x80.
  The `jalr` at 0xbd5f554 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xbd5f564 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bgezall` at 0xbd5f57c calls MakeCurrentRead [0xbd5e8c0] with a0=a0 at entry (arg0), a1=ret(?), a2=ret(?), a3=?.
  The return at 0xbd5f594 has v0 = ret(MakeCurrentRead).

- `PreEvaluate` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbd66ff0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbd66ff0-0xbd67198 (424 bytes).
  It occupies 424 bytes.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xbd67018, `swc1` at 0xbd6715c, `swc1` at 0xbd67184.
  6 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xbd67028, `swc1` at 0xbd67104, `swc1` at 0xbd67118.
  5 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xbd67038, `lwc1` at 0xbd67070, `lwc1` at 0xbd67074.
  6 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xbd67050, `swc1` at 0xbd6709c, `swc1` at 0xbd670a4.
  The `lwc1` at 0xbd670dc loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xbd67114 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `swc1` at 0xbd67140 stores 4 bytes to a2 (arg2 at entry) +0xc.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xbd67150, `swc1` at 0xbd67170.
  The `beq` branch at 0xbd66ff4 targets 0xbd67124, is taken when a0 == at(=0x4), and falls through when a0 != at(=0x4).
  The `beq` branch at 0xbd67000 targets 0xbd67160, is taken when a0 == v0(=0x3), and falls through when a0 != v0(=0x3).
  The `beq` branch at 0xbd67008 targets 0xbd67188, is taken when a0 == v1(=0x2), and falls through when a0 != v1(=0x2).
  The `beq` branch at 0xbd67010 targets 0xbd67118, is taken when a0 == a1(=0x1), and falls through when a0 != a1(=0x1).
  The `bne` branch at 0xbd67024 targets 0xbd6711c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xbd67030 targets 0xbd670dc and is always taken.
  The `bne` branch at 0xbd6704c targets 0xbd67038, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0xbd67058 targets 0xbd670bc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xbd670b0 targets 0xbd67070, is taken when a3(?) != a4(?), and falls through when a3(?) == a4(?).
  The `beq` branch at 0xbd670d4 targets 0xbd6711c, is taken when a0 == a5(?), and falls through when a0 != a5(?).
  The `bne` branch at 0xbd67100 targets 0xbd670c0, is taken when a5(?) < 0x2 (signed), and falls through when a5(?) >= 0x2 (signed).
  The `beq` branch at 0xbd67108 targets 0xbd67054, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xbd67110 targets 0xbd6703c and is always taken.
  The return at 0xbd6711c has v0 = one of 0x3, ?.
  The return at 0xbd67158 has v0 = ?.
  The return at 0xbd67180 has v0 = 0x3.
  The return at 0xbd67190 has v0 = 0x3.

- `PreEvaluateWithDeriv` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbd671a0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbd671a0-0xbd6752c (908 bytes).
  It occupies 908 bytes.
  4 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xbd671d0, `swc1` at 0xbd6749c, `swc1` at 0xbd674ec.
  7 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xbd671e0, `swc1` at 0xbd672c4, `swc1` at 0xbd673ac.
  15 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xbd671f4, `lwc1` at 0xbd67230, `lwc1` at 0xbd67234.
  15 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xbd6720c, `swc1` at 0xbd6725c, `swc1` at 0xbd67264.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xbd6729c, `lwc1` at 0xbd672dc, `lwc1` at 0xbd67318.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xbd672d4, `lwc1` at 0xbd6731c.
  5 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `swc1` at 0xbd67314, `swc1` at 0xbd67474, `swc1` at 0xbd674cc.
  4 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x4, including `swc1` at 0xbd6732c, `swc1` at 0xbd674c0, `swc1` at 0xbd67500.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x8, including `swc1` at 0xbd674a4, `swc1` at 0xbd674f4.
  The `swc1` at 0xbd674ac stores 4 bytes to a2 (arg2 at entry) +0xc.
  The `swc1` at 0xbd674b0 stores 4 bytes to a3 (arg3 at entry) +0xc.
  2 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x8, including `swc1` at 0xbd674b8, `swc1` at 0xbd674f8.
  The `beq` branch at 0xbd671a4 targets 0xbd67478, is taken when a0 == at(=0x4), and falls through when a0 != at(=0x4).
  The `beq` branch at 0xbd671b0 targets 0xbd674d0, is taken when a0 == v0(=0x3), and falls through when a0 != v0(=0x3).
  The `beq` branch at 0xbd671b8 targets 0xbd67510, is taken when a0 == v1(=0x2), and falls through when a0 != v1(=0x2).
  The `beq` branch at 0xbd671c0 targets 0xbd6746c, is taken when a0 == a1(=0x1), and falls through when a0 != a1(=0x1).
  The `bne` branch at 0xbd671dc targets 0xbd67464, is taken when a0 < 0x4 (signed), and falls through when a0 >= 0x4 (signed).
  The `beq` branch at 0xbd671ec targets 0xbd6729c and is always taken.
  The `bne` branch at 0xbd67208 targets 0xbd671f4, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0xbd67214 targets 0xbd6727c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xbd67270 targets 0xbd67230, is taken when a4(?) != a5(?), and falls through when a4(?) == a5(?).
  The `beq` branch at 0xbd67294 targets 0xbd672d8, is taken when t3(=a0-1) == a6(?), and falls through when t3(=a0-1) != a6(?).
  The `bne` branch at 0xbd672c0 targets 0xbd67280, is taken when a6(?) < 0x2 (signed), and falls through when a6(?) >= 0x2 (signed).
  The `beq` branch at 0xbd672c8 targets 0xbd67210, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0xbd672d0 targets 0xbd671f8 and is always taken.
  The `beq` branch at 0xbd67310 targets 0xbd67330, is taken when (t1(?) & 0x1) == 0, and falls through when (t1(?) & 0x1) != 0.
  The `beq` branch at 0xbd67338 targets 0xbd67380, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xbd67378 targets 0xbd67350, is taken when a0(?) < a5(=((a0-1 << 0x2) + a2)) (unsigned), and falls through when a0(?) >= a5(=((a0-1 << 0x2) + a2)) (unsigned).
  The `bne` branch at 0xbd673a8 targets 0xbd67450, is taken when a6(?) < 0x2 (signed), and falls through when a6(?) >= 0x2 (signed).
  The `beq` branch at 0xbd673c0 targets 0xbd673e4, is taken when (a3(?) & 0x3) == 0, and falls through when (a3(?) & 0x3) != 0.
  The `bne` branch at 0xbd673dc targets 0xbd673c8, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0xbd673ec targets 0xbd6744c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xbd67440 targets 0xbd67400, is taken when a0(?) != a5(?), and falls through when a0(?) == a5(?).
  The `beq` branch at 0xbd67464 targets 0xbd672e0 and is always taken.
  The return at 0xbd6745c has v0 = one of a2+4, ?.
  The return at 0xbd67470 has v0 = 0x3.
  The return at 0xbd674c8 has v0 = ?.
  The return at 0xbd67508 has v0 = 0x3.
  The return at 0xbd67524 has v0 = 0x3.

- `DoDomain1` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbd67530 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbd67530-0xbd67874 (836 bytes).
  It occupies 836 bytes.
  The `lwc1` at 0xbd67530 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0xbd67534 loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `lwc1` at 0xbd67560 loads 4 bytes from a0 (arg0 at entry) +0x438.
  5 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lw` at 0xbd6756c, `lw` at 0xbd675b4, `lw` at 0xbd675c4.
  The `lw` at 0xbd67570 loads 4 bytes from a0 (arg0 at entry) +0x6c0.
  The `sw` at 0xbd675ac stores 4 bytes to a0 (arg0 at entry) +0x6c8.
  The `swc1` at 0xbd675b8 stores 4 bytes to a0 (arg0 at entry) +0x438.
  The `sw` at 0xbd675bc stores 4 bytes to a0 (arg0 at entry) +0x6c0.
  The `lw` at 0xbd675d4 loads 4 bytes from a2 (arg2 at entry) +0x0.
  7 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xbd67618, `swc1` at 0xbd6764c, `swc1` at 0xbd67718.
  13 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xbd67640, `lwc1` at 0xbd67644, `lwc1` at 0xbd676d0.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x444, including `lwc1` at 0xbd676d4, `lwc1` at 0xbd67754, `lwc1` at 0xbd677b4.
  6 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x440, including `lwc1` at 0xbd676dc, `lwc1` at 0xbd6775c, `lwc1` at 0xbd677bc.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x448, including `lwc1` at 0xbd676e0, `lwc1` at 0xbd67760.
  The `lwc1` at 0xbd676f0 loads 4 bytes from a0 (arg0 at entry) +0x44c.
  The `lwc1` at 0xbd67804 loads 4 bytes from a4 (arg4 at entry) +0x0.
  The `swc1` at 0xbd67818 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `bgezall` at 0xbd67598 calls PreEvaluate [0xbd66ff0] with a0=[a2+4], a1=a1 at entry (arg1), a2=a0+1088, a3=a3 at entry (arg3).
  The `bc1t` branch at 0xbd6754c targets 0xbd67680, is taken when f6(=[a2+8]) == f5(=[a2+12]) (c.eq.s at 0xbd6753c), and falls through when not (f6(=[a2+8]) == f5(=[a2+12]) (c.eq.s at 0xbd6753c)).
  The `bc1f` branch at 0xbd67568 targets 0xbd6757c, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `beq` branch at 0xbd67574 targets 0xbd675c8, is taken when at(=[a0+1728]) == a0(=[a2+4]), and falls through when at(=[a0+1728]) != a0(=[a2+4]).
  The `beq` branch at 0xbd675d0 targets 0xbd67690, is taken when a0(=[a2+4]) == v0(=0x4), and falls through when a0(=[a2+4]) != v0(=0x4).
  The `beq` branch at 0xbd675dc targets 0xbd67724, is taken when a2(=[a2+4]) == v1(=0x3), and falls through when a2(=[a2+4]) != v1(=0x3).
  The `beq` branch at 0xbd675e4 targets 0xbd67794, is taken when a2(=[a2+4]) == a1(=0x2), and falls through when a2(=[a2+4]) != a1(=0x2).
  The `beq` branch at 0xbd675ec targets 0xbd677e4, is taken when a2(=[a2+4]) == at(=0x1), and falls through when a2(=[a2+4]) != at(=0x1).
  The `blez` branch at 0xbd675f4 targets 0xbd67670, is taken when t1(=[a2]) <= 0 (signed), and falls through when t1(=[a2]) > 0 (signed).
  The `beq` branch at 0xbd67608 targets 0xbd67618 and is always taken.
  The `beq` branch at 0xbd67610 targets 0xbd67670, is taken when a7(?) == t0(=(([a2] << 0x2) + a4)), and falls through when a7(?) != t0(=(([a2] << 0x2) + a4)).
  The `blez` branch at 0xbd67630 targets 0xbd67610, is taken when v0(=[a2+4]) <= 0 (signed), and falls through when v0(=[a2+4]) > 0 (signed).
  The `bne` branch at 0xbd67660 targets 0xbd67640, is taken when a0(?) < v1(=[a2+4]) (signed), and falls through when a0(?) >= v1(=[a2+4]) (signed).
  The `beq` branch at 0xbd67668 targets 0xbd67610 and is always taken.
  The `blez` branch at 0xbd67690 targets 0xbd67670, is taken when t1(=[a2]) <= 0 (signed), and falls through when t1(=[a2]) > 0 (signed).
  The `bne` branch at 0xbd67714 targets 0xbd676d0, is taken when a0(?) != a6(=(([a2] << 0x2) + (([a2] << 0x2) + a4))), and falls through when a0(?) == a6(=(([a2] << 0x2) + (([a2] << 0x2) + a4))).
  The `beq` branch at 0xbd6771c targets 0xbd67674 and is always taken.
  The `blez` branch at 0xbd67724 targets 0xbd67670, is taken when t1(=[a2]) <= 0 (signed), and falls through when t1(=[a2]) > 0 (signed).
  The `bne` branch at 0xbd67784 targets 0xbd67750, is taken when a0(?) != a6(=(([a2] << 0x2) + (([a2] << 0x2) + a4))), and falls through when a0(?) == a6(=(([a2] << 0x2) + (([a2] << 0x2) + a4))).
  The `beq` branch at 0xbd6778c targets 0xbd67674 and is always taken.
  The `blez` branch at 0xbd67794 targets 0xbd67670, is taken when t1(=[a2]) <= 0 (signed), and falls through when t1(=[a2]) > 0 (signed).
  The `bne` branch at 0xbd677d4 targets 0xbd677b0, is taken when a0(?) != a6(=(([a2] << 0x2) + (([a2] << 0x2) + a4))), and falls through when a0(?) == a6(=(([a2] << 0x2) + (([a2] << 0x2) + a4))).
  The `beq` branch at 0xbd677dc targets 0xbd67674 and is always taken.
  The `blez` branch at 0xbd677e4 targets 0xbd67670, is taken when t1(=[a2]) <= 0 (signed), and falls through when t1(=[a2]) > 0 (signed).
  The `beq` branch at 0xbd677fc targets 0xbd6781c, is taken when (t1(=[a2]) & 0x1) == 0, and falls through when (t1(=[a2]) & 0x1) != 0.
  The `beq` branch at 0xbd67824 targets 0xbd6786c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xbd67864 targets 0xbd67840, is taken when a0(?) != t0(=(([a2] << 0x2) + a4)), and falls through when a0(?) == t0(=(([a2] << 0x2) + a4)).
  The `beq` branch at 0xbd6786c targets 0xbd67674 and is always taken.
  The return at 0xbd67678 has v0 = one of ?, 0x4.
  The return at 0xbd67688 has v0 = ?.

- `DoEvalCoord1` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbd67c00 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbd67c00-0xbd67f54 (852 bytes).
  It occupies 852 bytes.
  The `ld` at 0xbd67c3c loads 8 bytes from ?.
  The `sd` at 0xbd67c48 stores 8 bytes to ?.
  The `lbu` at 0xbd67c4c loads 1 byte from a0 (arg0 at entry) +0xded.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x820, including `lw` at 0xbd67c54, `lw` at 0xbd67ca0, `lw` at 0xbd67ce4.
  The `ld` at 0xbd67c80 loads 8 bytes from a0 (arg0 at entry) +0x9180.
  9 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x1ae0, including `ld` at 0xbd67c90, `ld` at 0xbd67cd4, `ld` at 0xbd67d18.
  The `ld` at 0xbd67c94 loads 8 bytes from [a0+6880]:8 +0xb98.
  The `ld` at 0xbd67cc4 loads 8 bytes from a0 (arg0 at entry) +0x91a8.
  4 such `ld` accesses load 8 bytes from [a0+6880]:8 +0xcf8, including `ld` at 0xbd67cd8, `ld` at 0xbd67e1c, `ld` at 0xbd67e80.
  The `ld` at 0xbd67d08 loads 8 bytes from a0 (arg0 at entry) +0x9188.
  The `ld` at 0xbd67d1c loads 8 bytes from [a0+6880]:8 +0xbf8.
  The `ld` at 0xbd67d50 loads 8 bytes from a0 (arg0 at entry) +0x91b8.
  The `ld` at 0xbd67d64 loads 8 bytes from [a0+6880]:8 +0xa58.
  The `ld` at 0xbd67d9c loads 8 bytes from a0 (arg0 at entry) +0x91b0.
  The `ld` at 0xbd67db0 loads 8 bytes from [a0+6880]:8 +0xa18.
  The `ld` at 0xbd67e00 loads 8 bytes from a0 (arg0 at entry) +0x91a0.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xf34, including `lwc1` at 0xbd67e10, `lwc1` at 0xbd67e74, `lwc1` at 0xbd67f24.
  The `ld` at 0xbd67e5c loads 8 bytes from a0 (arg0 at entry) +0x9198.
  The `ld` at 0xbd67ec0 loads 8 bytes from a0 (arg0 at entry) +0x9178.
  The `ld` at 0xbd67ed4 loads 8 bytes from [a0+6880]:8 +0xb28.
  The `ld` at 0xbd67f08 loads 8 bytes from a0 (arg0 at entry) +0x9190.
  The `bgezall` at 0xbd67c88 calls DoDomain1 [0xbd67530] with a0=sp-1872, a1=a1 at entry (arg1), a2=a0+36552, a3=sp-128, a4=[a0+37248]:8, a5=sp-1872.
  The `jalr` at 0xbd67c98 calls (unknown callee) with a0=sp-128, a1=?, a2=?, a3=?.
  The `bgezall` at 0xbd67ccc calls DoDomain1 [0xbd67530] with a0=sp-1872, a1=?, a2=a0+36712, a3=sp-112, a4=[a0+37288]:8.
  The `jalr` at 0xbd67cdc calls (unknown callee) with a0=sp-112, a1=?, a2=?, a3=?.
  The `bgezall` at 0xbd67d10 calls DoDomain1 [0xbd67530] with a0=sp-1872, a1=?, a2=a0+36584, a3=sp-96, a4=[a0+37256]:8.
  The `jalr` at 0xbd67d20 calls (unknown callee) with a0=sp-96, a1=?, a2=?, a3=?.
  The `bgezall` at 0xbd67d58 calls DoDomain1 [0xbd67530] with a0=sp-1872, a1=?, a2=a0+36776, a3=sp-80, a4=[a0+37304]:8.
  The `jalr` at 0xbd67d74 calls (unknown callee) with a0=sp-80, a1=?, a2=?, a3=?.
  The `bgezall` at 0xbd67da4 calls DoDomain1 [0xbd67530] with a0=sp-1872, a1=?, a2=a0+36744, a3=sp-80, a4=[a0+37296]:8.
  The `jalr` at 0xbd67dc0 calls (unknown callee) with a0=sp-80, a1=?, a2=?, a3=?.
  The `bgezall` at 0xbd67e08 calls DoDomain1 [0xbd67530] with a0=sp-1872, a1=?, a2=a0+36680, a3=sp-112, a4=[a0+37280]:8.
  The `jalr` at 0xbd67e20 calls (unknown callee) with a0=sp-112, a1=?, a2=?, a3=?.
  The `bgezall` at 0xbd67e64 calls DoDomain1 [0xbd67530] with a0=sp-1872, a1=?, a2=a0+36648, a3=sp-112, a4=[a0+37272]:8.
  The `jalr` at 0xbd67e84 calls (unknown callee) with a0=sp-112, a1=?, a2=?, a3=?.
  The `bgezall` at 0xbd67ec8 calls DoDomain1 [0xbd67530] with a0=sp-1872, a1=a1 at entry (arg1), a2=a0+36520, a3=sp-128, a4=[a0+37240]:8, a5=sp-1872.
  The `jalr` at 0xbd67ed8 calls (unknown callee) with a0=sp-128, a1=?, a2=?, a3=?.
  The `bgezall` at 0xbd67f10 calls DoDomain1 [0xbd67530] with a0=sp-1872, a1=?, a2=a0+36616, a3=sp-112, a4=[a0+37264]:8.
  The `jalr` at 0xbd67f34 calls (unknown callee) with a0=sp-112, a1=?, a2=?, a3=?.
  The `bgtz` branch at 0xbd67c44 targets 0xbd67c30, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The `beq` branch at 0xbd67c50 targets 0xbd67e98, is taken when v0(=[a0+3565]:1) == 0, and falls through when v0(=[a0+3565]:1) != 0.
  The `beq` branch at 0xbd67c5c targets 0xbd67e34, is taken when (a0(=[a0+2080]) & 0x2) == 0, and falls through when (a0(=[a0+2080]) & 0x2) != 0.
  The `beq` branch at 0xbd67cac targets 0xbd67de4, is taken when (a0(=[a0+2080]) & 0x40) == 0, and falls through when (a0(=[a0+2080]) & 0x40) != 0.
  The `beq` branch at 0xbd67cf0 targets 0xbd67d30, is taken when (a0(=[a0+2080]) & 0x4) == 0, and falls through when (a0(=[a0+2080]) & 0x4) != 0.
  The `beq` branch at 0xbd67d34 targets 0xbd67d84, is taken when (a0(=[a0+2080]) & 0x100) == 0, and falls through when (a0(=[a0+2080]) & 0x100) != 0.
  The `beq` branch at 0xbd67d7c targets 0xbd67dcc and is always taken.
  The `beq` branch at 0xbd67d84 targets 0xbd67dcc, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xbd67de8 targets 0xbd67e40, is taken when (a0(=[a0+2080]) & 0x20) == 0, and falls through when (a0(=[a0+2080]) & 0x20) != 0.
  The `beq` branch at 0xbd67e2c targets 0xbd67cec and is always taken.
  The `beq` branch at 0xbd67e38 targets 0xbd67ca8 and is always taken.
  The `beq` branch at 0xbd67e44 targets 0xbd67eec, is taken when (a0(=[a0+2080]) & 0x10) == 0, and falls through when (a0(=[a0+2080]) & 0x10) != 0.
  The `beq` branch at 0xbd67e90 targets 0xbd67cec and is always taken.
  The `beq` branch at 0xbd67e9c targets 0xbd67f48, is taken when (a0(=[a0+2080]) & 0x1) == 0, and falls through when (a0(=[a0+2080]) & 0x1) != 0.
  The `beq` branch at 0xbd67ee4 targets 0xbd67ca8 and is always taken.
  The `beq` branch at 0xbd67ef0 targets 0xbd67cec, is taken when (a0(=[a0+2080]) & 0x8) == 0, and falls through when (a0(=[a0+2080]) & 0x8) != 0.
  The `beq` branch at 0xbd67f40 targets 0xbd67cec and is always taken.
  The `beq` branch at 0xbd67f4c targets 0xbd67ca8 and is always taken.
  The return at 0xbd67ddc has v0 = one of ret(?), ?.

- `ComputeFirstPartials` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbd67fe0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbd67fe0-0xbd6807c (156 bytes).
  It occupies 156 bytes.
  The `lwc1` at 0xbd67fe0 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xbd67fe4 loads 4 bytes from a1 (arg1 at entry) +0xc.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lwc1` at 0xbd67fe8, `lwc1` at 0xbd68034.
  6 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xc, including `lwc1` at 0xbd67fec, `lwc1` at 0xbd68004, `lwc1` at 0xbd6801c.
  The `lwc1` at 0xbd67ff8 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `swc1` at 0xbd67ffc stores 4 bytes to a1 (arg1 at entry) +0x0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lwc1` at 0xbd68000, `lwc1` at 0xbd6804c.
  The `lwc1` at 0xbd68010 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `swc1` at 0xbd68014 stores 4 bytes to a1 (arg1 at entry) +0x4.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lwc1` at 0xbd68018, `lwc1` at 0xbd68064.
  The `swc1` at 0xbd68028 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lwc1` at 0xbd6802c loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xbd68030 loads 4 bytes from a2 (arg2 at entry) +0xc.
  The `lwc1` at 0xbd68044 loads 4 bytes from a2 (arg2 at entry) +0x4.
  The `swc1` at 0xbd68048 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `lwc1` at 0xbd6805c loads 4 bytes from a2 (arg2 at entry) +0x8.
  The `swc1` at 0xbd68060 stores 4 bytes to a2 (arg2 at entry) +0x4.
  The `swc1` at 0xbd68078 stores 4 bytes to a2 (arg2 at entry) +0x8.
  The return at 0xbd68074 has v0 = ?.

- `ComputeNormal2` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbd68080 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbd68080-0xbd680f8 (120 bytes).
  It occupies 120 bytes.
  2 such `lwc1` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lwc1` at 0xbd68080, `lwc1` at 0xbd680a0.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xbd68084, `lwc1` at 0xbd680a8.
  2 such `lwc1` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lwc1` at 0xbd68088, `lwc1` at 0xbd680c4.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xbd6808c, `lwc1` at 0xbd680bc.
  The `swc1` at 0xbd68098 stores 4 bytes to a1 (arg1 at entry) +0x0.
  2 such `lwc1` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lwc1` at 0xbd6809c, `lwc1` at 0xbd680c0.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xbd680a4, `lwc1` at 0xbd680b8.
  The `swc1` at 0xbd680b4 stores 4 bytes to a1 (arg1 at entry) +0x4.
  The `swc1` at 0xbd680d0 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `ld` at 0xbd680d8 loads 8 bytes from a0 (arg0 at entry) +0x4690.
  The `jalr` at 0xbd680e4 calls (unknown callee) with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xbd680f0 has v0 = ret(?).

- `DoDomain2` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbd68100 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbd68100-0xbd6a0e8 (8168 bytes).
  It occupies 8168 bytes.
  The `lwc1` at 0xbd68100 loads 4 bytes from a3 (arg3 at entry) +0x10.
  The `lwc1` at 0xbd68104 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `lwc1` at 0xbd6812c loads 4 bytes from a3 (arg3 at entry) +0x14.
  The `lwc1` at 0xbd68130 loads 4 bytes from a3 (arg3 at entry) +0x18.
  The `lwc1` at 0xbd68158 loads 4 bytes from a0 (arg0 at entry) +0x438.
  5 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0xbd68160, `lw` at 0xbd681cc, `lw` at 0xbd68240.
  The `lw` at 0xbd6816c loads 4 bytes from a0 (arg0 at entry) +0x6c0.
  The `lwc1` at 0xbd68184 loads 4 bytes from a0 (arg0 at entry) +0x43c.
  17 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0xbd68190, `lw` at 0xbd681c0, `lw` at 0xbd68310.
  The `lw` at 0xbd68194 loads 4 bytes from a0 (arg0 at entry) +0x6c4.
  The `sw` at 0xbd681b8 stores 4 bytes to a0 (arg0 at entry) +0x6cc.
  The `swc1` at 0xbd681c4 stores 4 bytes to a0 (arg0 at entry) +0x43c.
  The `sw` at 0xbd681c8 stores 4 bytes to a0 (arg0 at entry) +0x6c4.
  The `lw` at 0xbd681d8 loads 4 bytes from a3 (arg3 at entry) +0x0.
  69 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xbd6823c, `swc1` at 0xbd682fc, `swc1` at 0xbd68418.
  237 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xbd6825c, `lwc1` at 0xbd68260, `lwc1` at 0xbd682a0.
  76 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e0, including `lwc1` at 0xbd68348, `lwc1` at 0xbd683e0, `lwc1` at 0xbd68420.
  44 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e4, including `lwc1` at 0xbd683e8, `lwc1` at 0xbd68428, `lwc1` at 0xbd68470.
  24 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e8, including `lwc1` at 0xbd683f0, `lwc1` at 0xbd68430, `lwc1` at 0xbd68478.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4ec, including `lwc1` at 0xbd68404, `lwc1` at 0xbd68440, `lwc1` at 0xbd68488.
  34 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x440, including `lwc1` at 0xbd68410, `lwc1` at 0xbd689b4, `lwc1` at 0xbd68c54.
  27 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x444, including `lwc1` at 0xbd68454, `lwc1` at 0xbd68734, `lwc1` at 0xbd68aa4.
  16 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x448, including `lwc1` at 0xbd6849c, `lwc1` at 0xbd68804, `lwc1` at 0xbd68b70.
  7 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x44c, including `lwc1` at 0xbd68504, `lwc1` at 0xbd688d0, `lwc1` at 0xbd6905c.
  The `sw` at 0xbd68588 stores 4 bytes to a0 (arg0 at entry) +0x6c8.
  The `swc1` at 0xbd68594 stores 4 bytes to a0 (arg0 at entry) +0x438.
  The `sw` at 0xbd68598 stores 4 bytes to a0 (arg0 at entry) +0x6c0.
  7 such `lwc1` accesses load 4 bytes from a5 (arg5 at entry) +0x0, including `lwc1` at 0xbd69578, `lwc1` at 0xbd69740, `lwc1` at 0xbd6995c.
  17 such `swc1` accesses store 4 bytes to a4 (arg4 at entry) +0x0, including `swc1` at 0xbd6958c, `swc1` at 0xbd695a4, `swc1` at 0xbd695bc.
  6 such `lwc1` accesses load 4 bytes from (([a3] << 0x2) + a5) +0x0, including `lwc1` at 0xbd69590, `lwc1` at 0xbd69748, `lwc1` at 0xbd69964.
  2 such `lwc1` accesses load 4 bytes from (([a3] << 0x2) + (([a3] << 0x2) + a5)) +0x0, including `lwc1` at 0xbd695a8, `lwc1` at 0xbd69c00.
  The `lwc1` at 0xbd695c0 loads 4 bytes from (([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a5))) +0x0.
  3 such `lwc1` accesses load 4 bytes from (a5 + (([a3] + [a3]) << 0x2)) +0x0, including `lwc1` at 0xbd69764, `lwc1` at 0xbd69974, `lwc1` at 0xbd69d5c.
  2 such `lwc1` accesses load 4 bytes from (([a3] << 0x2) + (a5 + (([a3] + [a3]) << 0x2))) +0x0, including `lwc1` at 0xbd6976c, `lwc1` at 0xbd69d64.
  The `lwc1` at 0xbd69788 loads 4 bytes from ((([a3] + [a3]) << 0x2) + (a5 + (([a3] + [a3]) << 0x2))) +0x0.
  The `lwc1` at 0xbd69790 loads 4 bytes from (([a3] << 0x2) + ((([a3] + [a3]) << 0x2) + (a5 + (([a3] + [a3]) << 0x2)))) +0x0.
  The `lwc1` at 0xbd6998c loads 4 bytes from (a5 + ((([a3] + [a3]) + [a3]) << 0x2)) +0x0.
  The `lwc1` at 0xbd69994 loads 4 bytes from (([a3] << 0x2) + (a5 + ((([a3] + [a3]) + [a3]) << 0x2))) +0x0.
  The `lwc1` at 0xbd699a4 loads 4 bytes from ((([a3] + [a3]) << 0x2) + (a5 + ((([a3] + [a3]) + [a3]) << 0x2))) +0x0.
  The `bgezall` at 0xbd681a8 calls PreEvaluate [0xbd66ff0] with a0=[a3+8], a1=?, a2=a0+1248, a3=0xbd66ff0.
  The `bgezall` at 0xbd68578 calls PreEvaluate [0xbd66ff0] with a0=[a3+4], a1=a1 at entry (arg1), a2=a0+1088, a3=a3 at entry (arg3).
  The `bc1t` branch at 0xbd68124 targets 0xbd68218, is taken when f5(=[a3+12]) == f6(=[a3+16]) (c.eq.s at 0xbd68110), and falls through when not (f5(=[a3+12]) == f6(=[a3+16]) (c.eq.s at 0xbd68110)).
  The `bc1t` branch at 0xbd68138 targets 0xbd68218, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `bc1f` branch at 0xbd68164 targets 0xbd68564, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bne` branch at 0xbd68170 targets 0xbd68564, is taken when at(=[a0+1728]) != a0(=[a3+4]), and falls through when at(=[a0+1728]) == a0(=[a3+4]).
  The `bc1f` branch at 0xbd6818c targets 0xbd6819c, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `beq` branch at 0xbd68198 targets 0xbd681cc, is taken when at(=[a0+1732]) == a0(=[a3+8]), and falls through when at(=[a0+1732]) != a0(=[a3+8]).
  The `beq` branch at 0xbd681d4 targets 0xbd685a8, is taken when a0(=[a3+4]) == a2(=0x4), and falls through when a0(=[a3+4]) != a2(=0x4).
  The `beq` branch at 0xbd681e0 targets 0xbd685ec, is taken when a0(=[a3+4]) == a3(=0x3), and falls through when a0(=[a3+4]) != a3(=0x3).
  The `beq` branch at 0xbd681e8 targets 0xbd68630, is taken when a0(=[a3+4]) == a5(=0x2), and falls through when a0(=[a3+4]) != a5(=0x2).
  The `beq` branch at 0xbd681f0 targets 0xbd68674, is taken when a0(=[a3+4]) == a6(=0x1), and falls through when a0(=[a3+4]) != a6(=0x1).
  The `blez` branch at 0xbd681f8 targets 0xbd68554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xbd68210 targets 0xbd6823c and is always taken.
  The `beq` branch at 0xbd68234 targets 0xbd68554, is taken when a3(?) == t2(=(([a3] << 0x2) + a5)), and falls through when a3(?) != t2(=(([a3] << 0x2) + a5)).
  The `blez` branch at 0xbd6824c targets 0xbd68230, is taken when at(=[a3+4]) <= 0 (signed), and falls through when at(=[a3+4]) > 0 (signed).
  The `beq` branch at 0xbd68254 targets 0xbd68310 and is always taken.
  The `bne` branch at 0xbd68270 targets 0xbd6825c, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xbd68284 targets 0xbd682f4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xbd682e4 targets 0xbd682a0, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xbd68308 targets 0xbd68230, is taken when t1(?) >= a1(=[a3+4]) (signed), and falls through when t1(?) < a1(=[a3+4]) (signed).
  The `blez` branch at 0xbd68320 targets 0xbd682f4, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xbd6833c targets 0xbd68278, is taken when (t8(?) & 0x3) == 0, and falls through when (t8(?) & 0x3) != 0.
  The `beq` branch at 0xbd68344 targets 0xbd68260 and is always taken.
  The `blez` branch at 0xbd68354 targets 0xbd68554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xbd68544 targets 0xbd683e0, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xbd685a0 targets 0xbd68180 and is always taken.
  The `beq` branch at 0xbd685ac targets 0xbd6834c, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0xbd685b4 targets 0xbd68f2c, is taken when a0(=[a3+8]) == at(=0x3), and falls through when a0(=[a3+8]) != at(=0x3).
  The `beq` branch at 0xbd685bc targets 0xbd69220, is taken when a0(=[a3+8]) == v0(=0x2), and falls through when a0(=[a3+8]) != v0(=0x2).
  The `beq` branch at 0xbd685c4 targets 0xbd6953c, is taken when a0(=[a3+8]) == v1(=0x1), and falls through when a0(=[a3+8]) != v1(=0x1).
  The `blez` branch at 0xbd685cc targets 0xbd68554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xbd685e4 targets 0xbd688e8 and is always taken.
  The `beq` branch at 0xbd685f0 targets 0xbd690a8, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0xbd685f8 targets 0xbd69320, is taken when a0(=[a3+8]) == a3(=0x3), and falls through when a0(=[a3+8]) != a3(=0x3).
  The `beq` branch at 0xbd68600 targets 0xbd696fc, is taken when a0(=[a3+8]) == at(=0x2), and falls through when a0(=[a3+8]) != at(=0x2).
  The `beq` branch at 0xbd68608 targets 0xbd69b9c, is taken when a0(=[a3+8]) == v0(=0x1), and falls through when a0(=[a3+8]) != v0(=0x1).
  The `blez` branch at 0xbd68610 targets 0xbd68554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xbd68628 targets 0xbd68b88 and is always taken.
  The `beq` branch at 0xbd68634 targets 0xbd69438, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0xbd6863c targets 0xbd69910, is taken when a0(=[a3+8]) == a3(=0x3), and falls through when a0(=[a3+8]) != a3(=0x3).
  The `beq` branch at 0xbd68644 targets 0xbd69cfc, is taken when a0(=[a3+8]) == a5(=0x2), and falls through when a0(=[a3+8]) != a5(=0x2).
  The `beq` branch at 0xbd6864c targets 0xbd69eec, is taken when a0(=[a3+8]) == at(=0x1), and falls through when a0(=[a3+8]) != at(=0x1).
  The `blez` branch at 0xbd68654 targets 0xbd68554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xbd6866c targets 0xbd68d28 and is always taken.
  The `beq` branch at 0xbd68678 targets 0xbd69b08, is taken when a0(=[a3+8]) == a2(=0x4), and falls through when a0(=[a3+8]) != a2(=0x4).
  The `beq` branch at 0xbd68680 targets 0xbd69e74, is taken when a0(=[a3+8]) == a3(=0x3), and falls through when a0(=[a3+8]) != a3(=0x3).
  The `beq` branch at 0xbd68688 targets 0xbd69fec, is taken when a0(=[a3+8]) == a5(=0x2), and falls through when a0(=[a3+8]) != a5(=0x2).
  The `beq` branch at 0xbd68690 targets 0xbd6a048, is taken when a0(=[a3+8]) == a6(=0x1), and falls through when a0(=[a3+8]) != a6(=0x1).
  The `blez` branch at 0xbd68698 targets 0xbd68554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xbd686b0 targets 0xbd68ed8 and is always taken.
  The `beq` branch at 0xbd686c4 targets 0xbd68734, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xbd68724 targets 0xbd686e0, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xbd68744 targets 0xbd68804, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xbd68764 targets 0xbd68788, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xbd68780 targets 0xbd6876c, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xbd68794 targets 0xbd68804, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xbd687f4 targets 0xbd687b0, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xbd68814 targets 0xbd688d0, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xbd68834 targets 0xbd68858, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xbd68850 targets 0xbd6883c, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xbd68864 targets 0xbd688d0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xbd688c4 targets 0xbd68880, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xbd688e0 targets 0xbd68554, is taken when a3(?) == t2(=(([a3] << 0x2) + a5)), and falls through when a3(?) != t2(=(([a3] << 0x2) + a5)).
  The `blez` branch at 0xbd688f0 targets 0xbd689b4, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xbd68910 targets 0xbd68934, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xbd6892c targets 0xbd68918, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xbd68940 targets 0xbd689b4, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xbd689a4 targets 0xbd68960, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xbd689c4 targets 0xbd68734, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xbd689e4 targets 0xbd686b8, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xbd68a00 targets 0xbd689ec, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xbd68a08 targets 0xbd686bc and is always taken.
  The `bne` branch at 0xbd68a24 targets 0xbd68a10, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xbd68a38 targets 0xbd68aa4, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xbd68a94 targets 0xbd68a50, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xbd68ab4 targets 0xbd68b70, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xbd68ad4 targets 0xbd68af8, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xbd68af0 targets 0xbd68adc, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xbd68b04 targets 0xbd68b70, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xbd68b64 targets 0xbd68b20, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xbd68b80 targets 0xbd68554, is taken when a3(?) == t2(=(([a3] << 0x2) + a5)), and falls through when a3(?) != t2(=(([a3] << 0x2) + a5)).
  The `blez` branch at 0xbd68b90 targets 0xbd68c54, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xbd68bb0 targets 0xbd68bd4, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xbd68bcc targets 0xbd68bb8, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xbd68be0 targets 0xbd68c54, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xbd68c44 targets 0xbd68c00, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xbd68c64 targets 0xbd68aa4, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xbd68c84 targets 0xbd68a2c, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `beq` branch at 0xbd68c8c targets 0xbd68a14 and is always taken.
  The `beq` branch at 0xbd68ca0 targets 0xbd68d10, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xbd68d04 targets 0xbd68cc0, is taken when a0(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a0(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xbd68d20 targets 0xbd68554, is taken when a3(?) == t2(=(([a3] << 0x2) + a5)), and falls through when a3(?) != t2(=(([a3] << 0x2) + a5)).
  The `blez` branch at 0xbd68d30 targets 0xbd68df4, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xbd68d50 targets 0xbd68d74, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xbd68d6c targets 0xbd68d58, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xbd68d80 targets 0xbd68df4, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xbd68de4 targets 0xbd68da0, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `blez` branch at 0xbd68e04 targets 0xbd68d10, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xbd68e24 targets 0xbd68c94, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xbd68e40 targets 0xbd68e2c, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xbd68e48 targets 0xbd68c98 and is always taken.
  The `beq` branch at 0xbd68e5c targets 0xbd68ec0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xbd68eb4 targets 0xbd68e70, is taken when a0(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a0(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xbd68ed0 targets 0xbd68554, is taken when a3(?) == t2(=(([a3] << 0x2) + a5)), and falls through when a3(?) != t2(=(([a3] << 0x2) + a5)).
  The `blez` branch at 0xbd68ee0 targets 0xbd68ec0, is taken when a0(=[a3+8]) <= 0 (signed), and falls through when a0(=[a3+8]) > 0 (signed).
  The `beq` branch at 0xbd68f00 targets 0xbd68e50, is taken when (t1(?) & 0x3) == 0, and falls through when (t1(?) & 0x3) != 0.
  The `bne` branch at 0xbd68f1c targets 0xbd68f08, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0xbd68f24 targets 0xbd68e54 and is always taken.
  The `blez` branch at 0xbd68f2c targets 0xbd68554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xbd69098 targets 0xbd68f90, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xbd690a0 targets 0xbd68558 and is always taken.
  The `blez` branch at 0xbd690ac targets 0xbd68554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xbd6920c targets 0xbd69110, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xbd69218 targets 0xbd68554 and is always taken.
  The `blez` branch at 0xbd69220 targets 0xbd68554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xbd69310 targets 0xbd69260, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xbd69318 targets 0xbd68558 and is always taken.
  The `blez` branch at 0xbd69320 targets 0xbd68554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xbd69428 targets 0xbd6936c, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xbd69430 targets 0xbd68558 and is always taken.
  The `blez` branch at 0xbd69438 targets 0xbd68554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xbd6952c targets 0xbd69488, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xbd69534 targets 0xbd68558 and is always taken.
  The `blez` branch at 0xbd6953c targets 0xbd68554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xbd69570 targets 0xbd695ec, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xbd69600 targets 0xbd696f4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xbd696ec targets 0xbd6961c, is taken when a0(?) != a6(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a5))))), and falls through when a0(?) == a6(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a5))))).
  The `beq` branch at 0xbd696f4 targets 0xbd68558 and is always taken.
  The `blez` branch at 0xbd696fc targets 0xbd68554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xbd69738 targets 0xbd697c8, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xbd697ec targets 0xbd69908, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xbd69900 targets 0xbd69810, is taken when t1(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when t1(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xbd69908 targets 0xbd68558 and is always taken.
  The `blez` branch at 0xbd69910 targets 0xbd68554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xbd69954 targets 0xbd699d8, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xbd699fc targets 0xbd69b00, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xbd69af8 targets 0xbd69a20, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xbd69b00 targets 0xbd68558 and is always taken.
  The `blez` branch at 0xbd69b08 targets 0xbd68554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xbd69b8c targets 0xbd69b40, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xbd69b94 targets 0xbd68558 and is always taken.
  The `blez` branch at 0xbd69b9c targets 0xbd68554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xbd69bc8 targets 0xbd69c28, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xbd69c38 targets 0xbd69cf4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xbd69cec targets 0xbd69c50, is taken when a0(?) != a5(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a5)))), and falls through when a0(?) == a5(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a5)))).
  The `beq` branch at 0xbd69cf4 targets 0xbd68558 and is always taken.
  The `blez` branch at 0xbd69cfc targets 0xbd68554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xbd69d30 targets 0xbd69d94, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xbd69da8 targets 0xbd69e6c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xbd69e64 targets 0xbd69dc4, is taken when a3(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a3(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xbd69e6c targets 0xbd68558 and is always taken.
  The `blez` branch at 0xbd69e74 targets 0xbd68554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xbd69edc targets 0xbd69ea0, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xbd69ee4 targets 0xbd68558 and is always taken.
  The `blez` branch at 0xbd69eec targets 0xbd68554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xbd69f10 targets 0xbd69f54, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xbd69f60 targets 0xbd69fe4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xbd69fdc targets 0xbd69f74, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xbd69fe4 targets 0xbd68558 and is always taken.
  The `blez` branch at 0xbd69fec targets 0xbd68554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `bne` branch at 0xbd6a038 targets 0xbd6a00c, is taken when a0(?) != t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))), and falls through when a0(?) == t0(=(([a3] << 0x2) + (([a3] << 0x2) + a5))).
  The `beq` branch at 0xbd6a040 targets 0xbd68558 and is always taken.
  The `blez` branch at 0xbd6a048 targets 0xbd68554, is taken when a4(=[a3]) <= 0 (signed), and falls through when a4(=[a3]) > 0 (signed).
  The `beq` branch at 0xbd6a064 targets 0xbd6a08c, is taken when (a4(=[a3]) & 0x1) == 0, and falls through when (a4(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xbd6a094 targets 0xbd6a0e0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xbd6a0d8 targets 0xbd6a0a4, is taken when a2(?) != t2(=(([a3] << 0x2) + a5)), and falls through when a2(?) == t2(=(([a3] << 0x2) + a5)).
  The `beq` branch at 0xbd6a0e0 targets 0xbd68558 and is always taken.
  The return at 0xbd68220 has v0 = ?.
  The return at 0xbd6855c has v0 = one of ?, 0x2, (([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a5))), (([a3] << 0x2) + (([a3] << 0x2) + a5)), (([a3] << 0x2) + a5).
  The instructions from 0xbd68228 to 0xbd6822c are not reached by any path from the entry, and their branches are not listed.

- `DoDomain2WithDerivs` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbd6a0f0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbd6a0f0-0xbd6cd0c (11292 bytes).
  It occupies 11292 bytes.
  The `lwc1` at 0xbd6a0f0 loads 4 bytes from a3 (arg3 at entry) +0x10.
  The `lwc1` at 0xbd6a0f8 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `lwc1` at 0xbd6a124 loads 4 bytes from a3 (arg3 at entry) +0x14.
  The `lwc1` at 0xbd6a128 loads 4 bytes from a3 (arg3 at entry) +0x18.
  The `lwc1` at 0xbd6a150 loads 4 bytes from a0 (arg0 at entry) +0x438.
  The `lw` at 0xbd6a168 loads 4 bytes from a0 (arg0 at entry) +0x6c8.
  6 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x4, including `lw` at 0xbd6a170, `lw` at 0xbd6a18c, `lw` at 0xbd6a1bc.
  The `lw` at 0xbd6a174 loads 4 bytes from a0 (arg0 at entry) +0x6c0.
  The `sw` at 0xbd6a1b4 stores 4 bytes to a0 (arg0 at entry) +0x6c8.
  The `swc1` at 0xbd6a1c0 stores 4 bytes to a0 (arg0 at entry) +0x438.
  The `sw` at 0xbd6a1c4 stores 4 bytes to a0 (arg0 at entry) +0x6c0.
  The `lwc1` at 0xbd6a1d4 loads 4 bytes from a0 (arg0 at entry) +0x43c.
  The `lw` at 0xbd6a1e4 loads 4 bytes from a0 (arg0 at entry) +0x6cc.
  18 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x8, including `lw` at 0xbd6a1ec, `lw` at 0xbd6a208, `lw` at 0xbd6a234.
  The `lw` at 0xbd6a1f0 loads 4 bytes from a0 (arg0 at entry) +0x6c4.
  The `sw` at 0xbd6a22c stores 4 bytes to a0 (arg0 at entry) +0x6cc.
  The `swc1` at 0xbd6a238 stores 4 bytes to a0 (arg0 at entry) +0x43c.
  The `sw` at 0xbd6a23c stores 4 bytes to a0 (arg0 at entry) +0x6c4.
  The `lw` at 0xbd6a24c loads 4 bytes from a3 (arg3 at entry) +0x0.
  171 such `swc1` accesses store 4 bytes to ?, including `swc1` at 0xbd6a2c4, `swc1` at 0xbd6a2c8, `swc1` at 0xbd6a2cc.
  385 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xbd6a330, `lwc1` at 0xbd6a334, `lwc1` at 0xbd6a338.
  61 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x620, including `lwc1` at 0xbd6a3b8, `lwc1` at 0xbd6a50c, `lwc1` at 0xbd6a5b0.
  61 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e0, including `lwc1` at 0xbd6a3cc, `lwc1` at 0xbd6a4c0, `lwc1` at 0xbd6a554.
  45 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x624, including `lwc1` at 0xbd6a408, `lwc1` at 0xbd6a514, `lwc1` at 0xbd6a5b8.
  45 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e4, including `lwc1` at 0xbd6a40c, `lwc1` at 0xbd6a4c8, `lwc1` at 0xbd6a55c.
  22 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4e8, including `lwc1` at 0xbd6a4d0, `lwc1` at 0xbd6a564, `lwc1` at 0xbd6a60c.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x4ec, including `lwc1` at 0xbd6a4e4, `lwc1` at 0xbd6a574, `lwc1` at 0xbd6a61c.
  62 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x440, including `lwc1` at 0xbd6a4f0, `lwc1` at 0xbd6a540, `lwc1` at 0xbd6aa98.
  31 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x580, including `lwc1` at 0xbd6a4fc, `lwc1` at 0xbd6aaa4, `lwc1` at 0xbd6aeb4.
  22 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x628, including `lwc1` at 0xbd6a51c, `lwc1` at 0xbd6a5c0, `lwc1` at 0xbd6a668.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x62c, including `lwc1` at 0xbd6a52c, `lwc1` at 0xbd6a5d0, `lwc1` at 0xbd6a678.
  28 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x444, including `lwc1` at 0xbd6a588, `lwc1` at 0xbd6a5e4, `lwc1` at 0xbd6ab98.
  14 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x584, including `lwc1` at 0xbd6a59c, `lwc1` at 0xbd6aba4, `lwc1` at 0xbd6afb4.
  20 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x448, including `lwc1` at 0xbd6a630, `lwc1` at 0xbd6a68c, `lwc1` at 0xbd6ac98.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x588, including `lwc1` at 0xbd6a644, `lwc1` at 0xbd6aca4, `lwc1` at 0xbd6ada0.
  10 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x44c, including `lwc1` at 0xbd6a6e8, `lwc1` at 0xbd6a764, `lwc1` at 0xbd6a984.
  5 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x58c, including `lwc1` at 0xbd6a6fc, `lwc1` at 0xbd6a990, `lwc1` at 0xbd6b590.
  10 such `lwc1` accesses load 4 bytes from a7 (arg7 at entry) +0x0, including `lwc1` at 0xbd6c680, `lwc1` at 0xbd6c6bc, `lwc1` at 0xbd6c864.
  4 such `lwc1` accesses load 4 bytes from (([a3] << 0x2) + a7) +0x0, including `lwc1` at 0xbd6c688, `lwc1` at 0xbd6c6c4, `lwc1` at 0xbd6ca80.
  2 such `lwc1` accesses load 4 bytes from (a7 + (([a3] + [a3]) << 0x2)) +0x0, including `lwc1` at 0xbd6c698, `lwc1` at 0xbd6c6d4.
  5 such `swc1` accesses store 4 bytes to a4 (arg4 at entry) +0x0, including `swc1` at 0xbd6c6ac, `swc1` at 0xbd6c878, `swc1` at 0xbd6c8b8.
  5 such `swc1` accesses store 4 bytes to a5 (arg5 at entry) +0x0, including `swc1` at 0xbd6c6b8, `swc1` at 0xbd6c884, `swc1` at 0xbd6c8c8.
  5 such `swc1` accesses store 4 bytes to a6 (arg6 at entry) +0x0, including `swc1` at 0xbd6c700, `swc1` at 0xbd6c89c, `swc1` at 0xbd6c8f4.
  The `lwc1` at 0xbd6c8b0 loads 4 bytes from a4 (arg4 at entry) +0x0.
  The `lwc1` at 0xbd6c8c0 loads 4 bytes from a5 (arg5 at entry) +0x0.
  The `lwc1` at 0xbd6c8dc loads 4 bytes from a6 (arg6 at entry) +0x0.
  The `bgezall` at 0xbd6a1a4 calls PreEvaluateWithDeriv [0xbd671a0] with a0=[a3+4], a1=a1 at entry (arg1), a2=a0+1088, a3=a0+1408.
  The `bgezall` at 0xbd6a21c calls PreEvaluateWithDeriv [0xbd671a0] with a0=[a3+8], a1=?, a2=a0+1248, a3=a0+1568.
  The `bc1t` branch at 0xbd6a11c targets 0xbd6a294, is taken when f4(=[a3+12]) == f5(=[a3+16]) (c.eq.s at 0xbd6a108), and falls through when not (f4(=[a3+12]) == f5(=[a3+16]) (c.eq.s at 0xbd6a108)).
  The `bc1t` branch at 0xbd6a130 targets 0xbd6a294, is taken when FP condition code 1 is true, and falls through when FP condition code 1 is false.
  The `bc1f` branch at 0xbd6a160 targets 0xbd6a188, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bne` branch at 0xbd6a16c targets 0xbd6a190, is taken when at(=[a0+1736]) != a2(=0x1), and falls through when at(=[a0+1736]) == a2(=0x1).
  The `bne` branch at 0xbd6a178 targets 0xbd6a190, is taken when v0(=[a0+1728]) != a0(=[a3+4]), and falls through when v0(=[a0+1728]) == a0(=[a3+4]).
  The `beq` branch at 0xbd6a180 targets 0xbd6a1d0 and is always taken.
  The `bc1f` branch at 0xbd6a1dc targets 0xbd6a204, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bne` branch at 0xbd6a1e8 targets 0xbd6a20c, is taken when at(=[a0+1740]) != a2(=0x1), and falls through when at(=[a0+1740]) == a2(=0x1).
  The `beq` branch at 0xbd6a1f4 targets 0xbd6a240, is taken when v0(=[a0+1732]) == a0(=[a3+8]), and falls through when v0(=[a0+1732]) != a0(=[a3+8]).
  The `beq` branch at 0xbd6a1fc targets 0xbd6a20c and is always taken.
  The `beq` branch at 0xbd6a248 targets 0xbd6a7d0, is taken when a0(=[a3+4]) == a3(=0x4), and falls through when a0(=[a3+4]) != a3(=0x4).
  The `beq` branch at 0xbd6a254 targets 0xbd6a820, is taken when a0(=[a3+4]) == a4(=0x3), and falls through when a0(=[a3+4]) != a4(=0x3).
  The `beq` branch at 0xbd6a25c targets 0xbd6a870, is taken when a0(=[a3+4]) == a5(=0x2), and falls through when a0(=[a3+4]) != a5(=0x2).
  The `beq` branch at 0xbd6a264 targets 0xbd6a8c0, is taken when a0(=[a3+4]) == a2(=0x1), and falls through when a0(=[a3+4]) != a2(=0x1).
  The `blez` branch at 0xbd6a26c targets 0xbd6a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xbd6a28c targets 0xbd6a2c4 and is always taken.
  The `beq` branch at 0xbd6a2bc targets 0xbd6a7c0, is taken when t1(?) == t2(=(([a3] << 0x2) + a7)), and falls through when t1(?) != t2(=(([a3] << 0x2) + a7)).
  The `blez` branch at 0xbd6a2d8 targets 0xbd6a2b0, is taken when at(=[a3+4]) <= 0 (signed), and falls through when at(=[a3+4]) > 0 (signed).
  The `beq` branch at 0xbd6a2e0 targets 0xbd6a3b8 and is always taken.
  The `beq` branch at 0xbd6a318 targets 0xbd6a378, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xbd6a364 targets 0xbd6a330, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xbd6a3b0 targets 0xbd6a2b0, is taken when t3(?) >= a1(=[a3+4]) (signed), and falls through when t3(?) < a1(=[a3+4]) (signed).
  The `bne` branch at 0xbd6a3ec targets 0xbd6a378, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xbd6a3fc targets 0xbd6a2f0, is taken when (t9(?) & 0x1) == 0, and falls through when (t9(?) & 0x1) != 0.
  The `beq` branch at 0xbd6a420 targets 0xbd6a2f0 and is always taken.
  The `blez` branch at 0xbd6a430 targets 0xbd6a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xbd6a7b0 targets 0xbd6a4c0, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xbd6a7d4 targets 0xbd6a428, is taken when a0(=[a3+8]) == a3(=0x4), and falls through when a0(=[a3+8]) != a3(=0x4).
  The `beq` branch at 0xbd6a7dc targets 0xbd6b358, is taken when a0(=[a3+8]) == a1(=0x3), and falls through when a0(=[a3+8]) != a1(=0x3).
  The `beq` branch at 0xbd6a7e4 targets 0xbd6b8dc, is taken when a0(=[a3+8]) == at(=0x2), and falls through when a0(=[a3+8]) != at(=0x2).
  The `beq` branch at 0xbd6a7ec targets 0xbd6beb0, is taken when a0(=[a3+8]) == a2(=0x1), and falls through when a0(=[a3+8]) != a2(=0x1).
  The `blez` branch at 0xbd6a7f4 targets 0xbd6a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xbd6a818 targets 0xbd6a9c0 and is always taken.
  The `beq` branch at 0xbd6a824 targets 0xbd6b62c, is taken when a0(=[a3+8]) == a3(=0x4), and falls through when a0(=[a3+8]) != a3(=0x4).
  The `beq` branch at 0xbd6a82c targets 0xbd6bad0, is taken when a0(=[a3+8]) == a4(=0x3), and falls through when a0(=[a3+8]) != a4(=0x3).
  The `beq` branch at 0xbd6a834 targets 0xbd6c024, is taken when a0(=[a3+8]) == at(=0x2), and falls through when a0(=[a3+8]) != at(=0x2).
  The `beq` branch at 0xbd6a83c targets 0xbd6c40c, is taken when a0(=[a3+8]) == a2(=0x1), and falls through when a0(=[a3+8]) != a2(=0x1).
  The `blez` branch at 0xbd6a844 targets 0xbd6a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xbd6a868 targets 0xbd6add0 and is always taken.
  The `beq` branch at 0xbd6a874 targets 0xbd6bcdc, is taken when a0(=[a3+8]) == a3(=0x4), and falls through when a0(=[a3+8]) != a3(=0x4).
  The `beq` branch at 0xbd6a87c targets 0xbd6c1a8, is taken when a0(=[a3+8]) == a4(=0x3), and falls through when a0(=[a3+8]) != a4(=0x3).
  The `beq` branch at 0xbd6a884 targets 0xbd6c52c, is taken when a0(=[a3+8]) == a5(=0x2), and falls through when a0(=[a3+8]) != a5(=0x2).
  The `beq` branch at 0xbd6a88c targets 0xbd6c838, is taken when a0(=[a3+8]) == a2(=0x1), and falls through when a0(=[a3+8]) != a2(=0x1).
  The `blez` branch at 0xbd6a894 targets 0xbd6a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xbd6a8b8 targets 0xbd6b0e0 and is always taken.
  The `beq` branch at 0xbd6a8c4 targets 0xbd6c314, is taken when a0(=[a3+8]) == a3(=0x4), and falls through when a0(=[a3+8]) != a3(=0x4).
  The `beq` branch at 0xbd6a8cc targets 0xbd6c640, is taken when a0(=[a3+8]) == a4(=0x3), and falls through when a0(=[a3+8]) != a4(=0x3).
  The `beq` branch at 0xbd6a8d4 targets 0xbd6ca44, is taken when a0(=[a3+8]) == a5(=0x2), and falls through when a0(=[a3+8]) != a5(=0x2).
  The `beq` branch at 0xbd6a8dc targets 0xbd6cbd8, is taken when a0(=[a3+8]) == a2(=0x1), and falls through when a0(=[a3+8]) != a2(=0x1).
  The `blez` branch at 0xbd6a8e4 targets 0xbd6a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xbd6a908 targets 0xbd6b2f0 and is always taken.
  The `beq` branch at 0xbd6a924 targets 0xbd6a984, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0xbd6a974 targets 0xbd6a940, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xbd6a9b8 targets 0xbd6a7c0, is taken when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `bne` branch at 0xbd6a9dc targets 0xbd6aa98, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xbd6aa00 targets 0xbd6aa24, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xbd6aa38 targets 0xbd6aa98, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xbd6aa84 targets 0xbd6aa50, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xbd6aad8 targets 0xbd6ab98, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xbd6aafc targets 0xbd6ab20, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xbd6ab34 targets 0xbd6ab98, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xbd6ab84 targets 0xbd6ab50, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xbd6abd8 targets 0xbd6ac98, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xbd6abfc targets 0xbd6ac20, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xbd6ac34 targets 0xbd6ac98, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xbd6ac84 targets 0xbd6ac50, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xbd6acd8 targets 0xbd6a984, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xbd6acfc targets 0xbd6a910, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xbd6ad1c targets 0xbd6a910 and is always taken.
  The `beq` branch at 0xbd6ad38 targets 0xbd6ad94, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xbd6ad84 targets 0xbd6ad50, is taken when a0(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a0(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xbd6adc8 targets 0xbd6a7c0, is taken when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `bne` branch at 0xbd6adec targets 0xbd6aea8, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xbd6ae10 targets 0xbd6ae34, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xbd6ae48 targets 0xbd6aea8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xbd6ae94 targets 0xbd6ae60, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xbd6aee8 targets 0xbd6afa8, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xbd6af0c targets 0xbd6af30, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xbd6af44 targets 0xbd6afa8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xbd6af94 targets 0xbd6af60, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xbd6afe8 targets 0xbd6ad94, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xbd6b00c targets 0xbd6ad24, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xbd6b02c targets 0xbd6ad24 and is always taken.
  The `beq` branch at 0xbd6b048 targets 0xbd6b0a4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xbd6b094 targets 0xbd6b060, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xbd6b0d8 targets 0xbd6a7c0, is taken when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `bne` branch at 0xbd6b0fc targets 0xbd6b1b8, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xbd6b120 targets 0xbd6b144, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xbd6b158 targets 0xbd6b1b8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xbd6b1a4 targets 0xbd6b170, is taken when a4(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a4(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `bne` branch at 0xbd6b1f8 targets 0xbd6b0a4, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xbd6b21c targets 0xbd6b034, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xbd6b23c targets 0xbd6b034 and is always taken.
  The `beq` branch at 0xbd6b258 targets 0xbd6b2b4, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xbd6b2a4 targets 0xbd6b270, is taken when a0(?) < a6(=(([a3+8] << 0x2) + a0)) (unsigned), and falls through when a0(?) >= a6(=(([a3+8] << 0x2) + a0)) (unsigned).
  The `beq` branch at 0xbd6b2e8 targets 0xbd6a7c0, is taken when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `bne` branch at 0xbd6b30c targets 0xbd6b2b4, is taken when a0(=[a3+8]) < 0x2 (signed), and falls through when a0(=[a3+8]) >= 0x2 (signed).
  The `beq` branch at 0xbd6b330 targets 0xbd6b244, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xbd6b350 targets 0xbd6b244 and is always taken.
  The `blez` branch at 0xbd6b358 targets 0xbd6a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xbd6b61c targets 0xbd6b3d0, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xbd6b624 targets 0xbd6a7c4 and is always taken.
  The `blez` branch at 0xbd6b634 targets 0xbd6a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xbd6b8c8 targets 0xbd6b6b0, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xbd6b8d4 targets 0xbd6a7c0 and is always taken.
  The `blez` branch at 0xbd6b8dc targets 0xbd6a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xbd6bac0 targets 0xbd6b924, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xbd6bac8 targets 0xbd6a7c4 and is always taken.
  The `blez` branch at 0xbd6bad0 targets 0xbd6a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xbd6bccc targets 0xbd6bb24, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xbd6bcd4 targets 0xbd6a7c4 and is always taken.
  The `blez` branch at 0xbd6bcdc targets 0xbd6a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xbd6be9c targets 0xbd6bd3c, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xbd6bea8 targets 0xbd6a7c0 and is always taken.
  The `blez` branch at 0xbd6beb0 targets 0xbd6a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xbd6c014 targets 0xbd6bee8, is taken when a4(?) != a5(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a7))))), and falls through when a4(?) == a5(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a7))))).
  The `beq` branch at 0xbd6c01c targets 0xbd6a7c4 and is always taken.
  The `blez` branch at 0xbd6c024 targets 0xbd6a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xbd6c198 targets 0xbd6c064, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xbd6c1a0 targets 0xbd6a7c4 and is always taken.
  The `blez` branch at 0xbd6c1a8 targets 0xbd6a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xbd6c304 targets 0xbd6c1f0, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xbd6c30c targets 0xbd6a7c4 and is always taken.
  The `blez` branch at 0xbd6c314 targets 0xbd6a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xbd6c3fc targets 0xbd6c354, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xbd6c404 targets 0xbd6a7c4 and is always taken.
  The `blez` branch at 0xbd6c40c targets 0xbd6a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xbd6c51c targets 0xbd6c43c, is taken when a0(?) != a4(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a7)))), and falls through when a0(?) == a4(=(([a3] << 0x2) + (([a3] << 0x2) + (([a3] << 0x2) + a7)))).
  The `beq` branch at 0xbd6c524 targets 0xbd6a7c4 and is always taken.
  The `blez` branch at 0xbd6c52c targets 0xbd6a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `bne` branch at 0xbd6c630 targets 0xbd6c564, is taken when t2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xbd6c638 targets 0xbd6a7c4 and is always taken.
  The `blez` branch at 0xbd6c640 targets 0xbd6a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xbd6c678 targets 0xbd6c704, is taken when (a7(=[a3]) & 0x1) == 0, and falls through when (a7(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xbd6c71c targets 0xbd6c830, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0xbd6c828 targets 0xbd6c73c, is taken when a2(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when a2(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xbd6c830 targets 0xbd6a7c4 and is always taken.
  The `blez` branch at 0xbd6c838 targets 0xbd6a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xbd6c85c targets 0xbd6c8f8, is taken when (a7(=[a3]) & 0x1) == 0, and falls through when (a7(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xbd6c908 targets 0xbd6ca3c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xbd6ca34 targets 0xbd6c920, is taken when a0(?) != t2(=(([a3] << 0x2) + a7)), and falls through when a0(?) == t2(=(([a3] << 0x2) + a7)).
  The `beq` branch at 0xbd6ca3c targets 0xbd6a7c4 and is always taken.
  The `blez` branch at 0xbd6ca44 targets 0xbd6a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xbd6ca70 targets 0xbd6cae0, is taken when (a7(=[a3]) & 0x1) == 0, and falls through when (a7(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xbd6caf4 targets 0xbd6cbd0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xbd6cbc8 targets 0xbd6cb10, is taken when t0(?) != t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))), and falls through when t0(?) == t3(=(([a3] << 0x2) + (([a3] << 0x2) + a7))).
  The `beq` branch at 0xbd6cbd0 targets 0xbd6a7c4 and is always taken.
  The `blez` branch at 0xbd6cbd8 targets 0xbd6a7c0, is taken when a7(=[a3]) <= 0 (signed), and falls through when a7(=[a3]) > 0 (signed).
  The `beq` branch at 0xbd6cbfc targets 0xbd6cc50, is taken when (a7(=[a3]) & 0x1) == 0, and falls through when (a7(=[a3]) & 0x1) != 0.
  The `beq` branch at 0xbd6cc60 targets 0xbd6cd04, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xbd6ccfc targets 0xbd6cc78, is taken when a3(?) != t2(=(([a3] << 0x2) + a7)), and falls through when a3(?) == t2(=(([a3] << 0x2) + a7)).
  The `beq` branch at 0xbd6cd04 targets 0xbd6a7c4 and is always taken.
  The return at 0xbd6a29c has v0 = ?.
  The return at 0xbd6a7c8 has v0 = one of ?, a7.
  The instructions from 0xbd6a2a4 to 0xbd6a2ac are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xbd6a2e8 to 0xbd6a2ec are not reached by any path from the entry, and their branches are not listed.

- `DoEvalCoord2` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbd6cd10 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbd6cd10-0xbd6d280 (1392 bytes).
  It occupies 1392 bytes.
  The `ld` at 0xbd6cd6c loads 8 bytes from ?.
  The `sd` at 0xbd6cd78 stores 8 bytes to ?.
  12 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xbd6cd7c, `sw` at 0xbd6ce1c, `sw` at 0xbd6ce78.
  The `lw` at 0xbd6cd80 loads 4 bytes from a0 (arg0 at entry) +0x810.
  8 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x824, including `lw` at 0xbd6cd98, `lw` at 0xbd6ce28, `lw` at 0xbd6ce80.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x9200, including `ld` at 0xbd6cdcc, `ld` at 0xbd6d128.
  14 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0xbd6ce10, `lw` at 0xbd6ce70, `lw` at 0xbd6ceb4.
  The `lbu` at 0xbd6ce38 loads 1 byte from a0 (arg0 at entry) +0xded.
  The `ld` at 0xbd6ce60 loads 8 bytes from a0 (arg0 at entry) +0x91c8.
  The `ld` at 0xbd6cea4 loads 8 bytes from a0 (arg0 at entry) +0x91f0.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x1ae0, including `ld` at 0xbd6cedc, `ld` at 0xbd6cf04, `ld` at 0xbd6cf2c.
  The `ld` at 0xbd6cee0 loads 8 bytes from [a0+6880]:8 +0xb28.
  The `ld` at 0xbd6cf08 loads 8 bytes from [a0+6880]:8 +0xb98.
  The `ld` at 0xbd6cf30 loads 8 bytes from [a0+6880]:8 +0xbf8.
  The `ld` at 0xbd6cf58 loads 8 bytes from [a0+6880]:8 +0xcf8.
  The `ld` at 0xbd6cfb4 loads 8 bytes from a0 (arg0 at entry) +0x91e8.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xf34, including `lwc1` at 0xbd6cfc4, `lwc1` at 0xbd6d094, `lwc1` at 0xbd6d1dc.
  3 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x30, including `swc1` at 0xbd6cfdc, `swc1` at 0xbd6d0a8, `swc1` at 0xbd6d1f0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x91f8, including `ld` at 0xbd6d00c, `ld` at 0xbd6d214.
  The `ld` at 0xbd6d078 loads 8 bytes from a0 (arg0 at entry) +0x91e0.
  2 such `swc1` accesses store 4 bytes to a3 (arg3 at entry) +0x2c, including `swc1` at 0xbd6d090, `swc1` at 0xbd6d1d4.
  The `ld` at 0xbd6d0d8 loads 8 bytes from a0 (arg0 at entry) +0x91d0.
  The `ld` at 0xbd6d174 loads 8 bytes from a0 (arg0 at entry) +0x91c0.
  The `ld` at 0xbd6d1bc loads 8 bytes from a0 (arg0 at entry) +0x91d8.
  The `swc1` at 0xbd6d1d8 stores 4 bytes to a3 (arg3 at entry) +0x28.
  The `ld` at 0xbd6d244 loads 8 bytes from [a0+6880]:8 +0xa58.
  The `ld` at 0xbd6d264 loads 8 bytes from [a0+6880]:8 +0xa18.
  The `bgezall` at 0xbd6cdd4 calls DoDomain2WithDerivs [0xbd6a0f0] with a0=sp-1904, a1=?, a2=[a0+2084], a3=a0+37192, a4=a3+52, a5=sp-160, a6=sp-144, a7=[a0+37376]:8.
  The `bgezall` at 0xbd6cdec calls ComputeFirstPartials [0xbd67fe0] with a0=a3+52, a1=sp-160, a2=sp-144, a3=?.
  The `bgezall` at 0xbd6ce08 calls ComputeNormal2 [0xbd68080] with a0=a0 at entry (arg0), a1=a3+20, a2=sp-160, a3=sp-144.
  The `bgezall` at 0xbd6ce68 calls DoDomain2 [0xbd68100] with a0=sp-1904, a1=?, a2=[a0+2084], a3=a0+36856, a4=a3+4, a5=[a0+37320]:8.
  The `bgezall` at 0xbd6ceac calls DoDomain2 [0xbd68100] with a0=sp-1904, a1=?, a2=[a0+2084], a3=a0+37096, a4=a3+36, a5=[a0+37360]:8.
  The `jalr` at 0xbd6cee8 calls (unknown callee) with a0=a3+4, a1=?, a2=?, a3=?.
  The `jalr` at 0xbd6cf10 calls (unknown callee) with a0=a3+4, a1=?, a2=?, a3=?.
  The `jalr` at 0xbd6cf38 calls (unknown callee) with a0=a3+20, a1=?, a2=?, a3=?.
  The `jalr` at 0xbd6cf60 calls (unknown callee) with a0=a3+36, a1=?, a2=?, a3=?.
  The `bgezall` at 0xbd6cfbc calls DoDomain2 [0xbd68100] with a0=sp-1904, a1=?, a2=[a0+2084], a3=a0+37048, a4=a3+36, a5=[a0+37352]:8.
  The `bgezall` at 0xbd6d014 calls DoDomain2WithDerivs [0xbd6a0f0] with a0=sp-1904, a1=?, a2=[a0+2084], a3=a0+37144, a4=a3+52, a5=sp-128, a6=sp-112, a7=[a0+37368]:8.
  The `bgezall` at 0xbd6d030 calls ComputeNormal2 [0xbd68080] with a0=a0 at entry (arg0), a1=a3+20, a2=sp-128, a3=sp-112.
  The `bgezall` at 0xbd6d080 calls DoDomain2 [0xbd68100] with a0=sp-1904, a1=?, a2=[a0+2084], a3=a0+37000, a4=a3+36, a5=[a0+37344]:8.
  The `bgezall` at 0xbd6d0e0 calls DoDomain2 [0xbd68100] with a0=sp-1904, a1=?, a2=[a0+2084], a3=a0+36904, a4=a3+20, a5=[a0+37328]:8, a6=sp-1904.
  The `bgezall` at 0xbd6d130 calls DoDomain2 [0xbd68100] with a0=sp-1904, a1=?, a2=[a0+2084], a3=a0+37192, a4=a3+52, a5=[a0+37376]:8.
  The `bgezall` at 0xbd6d17c calls DoDomain2 [0xbd68100] with a0=sp-1904, a1=?, a2=[a0+2084], a3=a0+36808, a4=a3+4, a5=[a0+37312]:8.
  The `bgezall` at 0xbd6d1c4 calls DoDomain2 [0xbd68100] with a0=sp-1904, a1=?, a2=[a0+2084], a3=a0+36952, a4=a3+36, a5=[a0+37336]:8.
  The `bgezall` at 0xbd6d21c calls DoDomain2 [0xbd68100] with a0=sp-1904, a1=?, a2=[a0+2084], a3=a0+37144, a4=a3+52, a5=[a0+37368]:8.
  The `jalr` at 0xbd6d250 calls (unknown callee) with a0=a3+52, a1=?, a2=?, a3=?.
  The `jalr` at 0xbd6d270 calls (unknown callee) with a0=a3+52, a1=?, a2=?, a3=?.
  The `bgtz` branch at 0xbd6cd74 targets 0xbd6cd60, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The `beq` branch at 0xbd6cd94 targets 0xbd6d0ac, is taken when (v0(=[a0+2064]) & v1(=0x800000)) == 0, and falls through when (v0(=[a0+2064]) & v1(=0x800000)) != 0.
  The `beq` branch at 0xbd6cda0 targets 0xbd6cfe0, is taken when (a2(=[a0+2084]) & 0x100) == 0, and falls through when (a2(=[a0+2084]) & 0x100) != 0.
  The `beq` branch at 0xbd6ce3c targets 0xbd6d154, is taken when at(=[a0+3565]:1) == 0, and falls through when at(=[a0+3565]:1) != 0.
  The `beq` branch at 0xbd6ce44 targets 0xbd6ce84, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xbd6ce88 targets 0xbd6cf94, is taken when (a2(=[a0+2084]) & 0x40) == 0, and falls through when (a2(=[a0+2084]) & 0x40) != 0.
  The `beq` branch at 0xbd6ced4 targets 0xbd6cef8, is taken when (a0(?) & 0x1) == 0, and falls through when (a0(?) & 0x1) != 0.
  The `beq` branch at 0xbd6cefc targets 0xbd6cf24, is taken when (a0(?) & 0x2) == 0, and falls through when (a0(?) & 0x2) != 0.
  The `beq` branch at 0xbd6cf24 targets 0xbd6cf4c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xbd6cf4c targets 0xbd6cf70, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xbd6cf74 targets 0xbd6d260, is taken when s3(=one of -0x1, 0x3, 0x4) == at(=0x3), and falls through when s3(=one of -0x1, 0x3, 0x4) != at(=0x3).
  The `beq` branch at 0xbd6cf7c targets 0xbd6d240, is taken when v0(=one of -0x1, 0x3, 0x4) == v1(=0x4), and falls through when v0(=one of -0x1, 0x3, 0x4) != v1(=0x4).
  The `beq` branch at 0xbd6cf98 targets 0xbd6d058, is taken when (a2(=[a0+2084]) & 0x20) == 0, and falls through when (a2(=[a0+2084]) & 0x20) != 0.
  The `beq` branch at 0xbd6cfd8 targets 0xbd6cec4 and is always taken.
  The `beq` branch at 0xbd6cfe4 targets 0xbd6ce2c, is taken when (a2(=[a0+2084]) & 0x80) == 0, and falls through when (a2(=[a0+2084]) & 0x80) != 0.
  The `beq` branch at 0xbd6d050 targets 0xbd6ce2c and is always taken.
  The `beq` branch at 0xbd6d05c targets 0xbd6d19c, is taken when (a2(=[a0+2084]) & 0x10) == 0, and falls through when (a2(=[a0+2084]) & 0x10) != 0.
  The `beq` branch at 0xbd6d0a4 targets 0xbd6cec4 and is always taken.
  The `beq` branch at 0xbd6d0b0 targets 0xbd6d100, is taken when (a2(=[a0+2084]) & 0x4) == 0, and falls through when (a2(=[a0+2084]) & 0x4) != 0.
  The `beq` branch at 0xbd6d0f8 targets 0xbd6d108 and is always taken.
  The `beq` branch at 0xbd6d10c targets 0xbd6d1f4, is taken when (a2(=[a0+2084]) & 0x100) == 0, and falls through when (a2(=[a0+2084]) & 0x100) != 0.
  The `beq` branch at 0xbd6d14c targets 0xbd6ce38 and is always taken.
  The `beq` branch at 0xbd6d158 targets 0xbd6ce84, is taken when (a2(=[a0+2084]) & 0x1) == 0, and falls through when (a2(=[a0+2084]) & 0x1) != 0.
  The `beq` branch at 0xbd6d194 targets 0xbd6ce84 and is always taken.
  The `beq` branch at 0xbd6d1a0 targets 0xbd6cec4, is taken when (a2(=[a0+2084]) & 0x8) == 0, and falls through when (a2(=[a0+2084]) & 0x8) != 0.
  The `beq` branch at 0xbd6d1ec targets 0xbd6cec4 and is always taken.
  The `beq` branch at 0xbd6d1f8 targets 0xbd6ce38, is taken when (a2(=[a0+2084]) & 0x80) == 0, and falls through when (a2(=[a0+2084]) & 0x80) != 0.
  The `beq` branch at 0xbd6d238 targets 0xbd6ce38 and is always taken.
  The `beq` branch at 0xbd6d258 targets 0xbd6cf84 and is always taken.
  The `beq` branch at 0xbd6d278 targets 0xbd6cf84 and is always taken.
  The return at 0xbd6cf8c has v0 = one of -0x1, 0x3, 0x4, ret(?).

- `sendChange` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbd6d5b0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbd6d5b0-0xbd6d714 (356 bytes).
  It occupies 356 bytes.
  The `lwc1` at 0xbd6d5b0 loads 4 bytes from a0 (arg0 at entry) +0x268.
  The `lwc1` at 0xbd6d5b4 loads 4 bytes from a0 (arg0 at entry) +0x26c.
  The `lwc1` at 0xbd6d5b8 loads 4 bytes from a0 (arg0 at entry) +0x270.
  The `lwc1` at 0xbd6d5bc loads 4 bytes from a0 (arg0 at entry) +0x274.
  6 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0xbd6d5cc, `lw` at 0xbd6d604, `lw` at 0xbd6d62c.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x1ae0, including `ld` at 0xbd6d5f0, `ld` at 0xbd6d618, `ld` at 0xbd6d640.
  The `ld` at 0xbd6d5f4 loads 8 bytes from [a0+6880]:8 +0xb28.
  The `ld` at 0xbd6d61c loads 8 bytes from [a0+6880]:8 +0xcf8.
  The `ld` at 0xbd6d644 loads 8 bytes from [a0+6880]:8 +0xbf8.
  The `ld` at 0xbd6d66c loads 8 bytes from [a0+6880]:8 +0xa18.
  The `lw` at 0xbd6d690 loads 4 bytes from a0 (arg0 at entry) +0x810.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x4750, including `ld` at 0xbd6d6a0, `ld` at 0xbd6d6c4.
  The `swc1` at 0xbd6d6c0 stores 4 bytes to a0 (arg0 at entry) +0x274.
  The `swc1` at 0xbd6d6c8 stores 4 bytes to a0 (arg0 at entry) +0x270.
  The `swc1` at 0xbd6d6cc stores 4 bytes to a0 (arg0 at entry) +0x26c.
  The `swc1` at 0xbd6d6d8 stores 4 bytes to a0 (arg0 at entry) +0x268.
  The `ld` at 0xbd6d6f8 loads 8 bytes from [a0+6880]:8 +0xa58.
  The `jalr` at 0xbd6d5fc calls (unknown callee) with a0=a1+4, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a1].
  The `jalr` at 0xbd6d624 calls (unknown callee) with a0=a1+36, a1=?, a2=?, a3=[a1].
  The `jalr` at 0xbd6d64c calls (unknown callee) with a0=a1+20, a1=?, a2=?, a3=[a1].
  The `jalr` at 0xbd6d674 calls (unknown callee) with a0=a1+52, a1=?, a2=?, a3=[a1].
  The `jalr` at 0xbd6d6a8 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=[a1].
  The `jalr` at 0xbd6d6d4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xbd6d700 calls (unknown callee) with a0=a1+52, a1=?, a2=?, a3=[a1].
  The `beq` branch at 0xbd6d5e8 targets 0xbd6d60c, is taken when (a3(=[a1]) & 0x1) == 0, and falls through when (a3(=[a1]) & 0x1) != 0.
  The `beq` branch at 0xbd6d610 targets 0xbd6d638, is taken when (a3(=[a1]) & 0x8) == 0, and falls through when (a3(=[a1]) & 0x8) != 0.
  The `beq` branch at 0xbd6d638 targets 0xbd6d660, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xbd6d660 targets 0xbd6d6ec, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xbd6d688 targets 0xbd6d6e0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xbd6d698 targets 0xbd6d6e0, is taken when (v0(=[a0+2064]) & 0x80) == 0, and falls through when (v0(=[a0+2064]) & 0x80) != 0.
  The `beq` branch at 0xbd6d6ec targets 0xbd6d688, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xbd6d70c targets 0xbd6d684 and is always taken.
  The return at 0xbd6d6e4 has v0 = one of ?, ret(?).

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd741a0`

`ApplyMaterialF` reads a four-word float vector through a2 (+0x0 to +0xc) and dispatches on a1 against 0x1200 to 0x1603. Those are the GL material tokens (0x1200 ambient, 0x1201 diffuse, 0x1202 specular, 0x1600 emission, 0x1601 shininess, 0x1602 ambient and diffuse, 0x1603 color indexes), identified from their public values. It writes fields of the record at a0 (+0x0 to +0x1c), updates [0x1020]+0xbc58, and stores 21 words to the fixed address 0x4000, then returns [[0x1020]+41160] (0xbd7434c). The name matches `glMaterialfv`, but the identity of the 0x4000 window is not established.

Grade: inferred.

Reviewed: 2026-11-12

- `ApplyMaterialF` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbd741a0
  **Inferred.** A 1764-byte routine that makes no calls in the rendered body. It compares a1 against 0x1200 to 0x1202 and 0x1600 to 0x1602, and tests floats loaded with `lwc1` against 1.0 with `c.le.d`. It loads words from +0xa098 through +0xa0d4 and stores them, and returns the word loaded from `[[0x1020]:8+41160]` at 0xbd7434c. Role (from name): a single-float material setter; the facts do not show which material fields it targets.
  Reviewed: 2026-11-12

### `ApplyMaterialI` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd74890`

The row is unnamed in the renderer; the inventory name is `ApplyMaterialI`. It has the same shape as `ApplyMaterialF` at 0xbd741a0, but reads its material values as integer words through a2 (`lw` at +0x0, +0x4, +0x8 and +0xc). It makes 20 single-precision loads from the same address, [0x1020]+0xf4c, each followed by a double-precision compare against 1.0, but the facts do not show what is converted or how. It writes 21 words to 0x4000 and returns the same [[0x1020]+41160] (0xbd74a98). The name suggests the integer-argument form of the material call, but what the word at +0xf4c holds is not in the facts.

Grade: inferred.

Reviewed: 2026-11-12

### `AddConvolutionBorders` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbd8ae00`

`AddConvolutionBorders` (9352 bytes) has 26 call sites of `__glOdysseyImageMovePixelsTexture` (0xbda53e0), 7 of `__glOdysseyProgramTexFilter` (0xbd9fb40), 6 of `LoadTextureFilter` (0xbd89aa0), 100 of `floorf` and 6 of `ceilf`; many of them sit behind branches on the bytes of its third argument. It reads fields of its second argument (a1) at +0x18 and +0x58, passing `[a1+24]-1` to `LoadTextureFilter`, and four byte fields of its third argument (a2) at +0x20 to +0x23, which the branches test against zero. Role (from name): filling image borders for a convolution. The facts do not show the arithmetic behind the floor and ceil calls.

Grade: inferred.

Reviewed: 2026-11-12

### `__glOdysseyImageMovePixelsCopy` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbda0aa0`

`__glOdysseyImageMovePixelsCopy` (8280 bytes) has one call site of `__glOdysseyValidateHardware` (0xbd5bb70), call sites of `__glOdysseyOpenPMObjReference`, `__glOdysseyOpenPMObjWriteReference` and the matching close routines, nine call sites of `ImageCopyPixelBody` (0xbda0710), two of `ImageCalcDmaFieldOffsets` (0xbda7d40) and one `__glOdysseyIoctl` (0xbdc1ef0) call with a1 = 0x6f64000d at 0xbda2ae8. Which of these run depends on its branches. Error paths call `__glSetError` (0xbe183f0), and the return at 0xbda2930 returns that call's result. Role (from name): a copy within pixel memory; the facts show the call structure, not the copy geometry.

Grade: inferred.

Reviewed: 2026-11-12

### `__glOdysseyImageMovePixelsDMAtoGfx` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbda3380`

`__glOdysseyImageMovePixelsDMAtoGfx` (6172 bytes) calls `ImageToDmaHostPixelSize` (0xbda83e0), `__glSpecBytesPerElement` (0xbdf7470) and `__glSpecElementsPerGroup` (0xbdf72a0), and has two call sites of `SendPixelsAsUserPIO` (0xbda2b00), at 0xbda421c and 0xbda4618. Several of its error exits return the `__glSetError` result; the one at 0xbda4b24 passes 0x505. It also makes one `__glOdysseyIoctl` call with a1 = 0x6f64000d at 0xbda4b88. Role (from name): moving pixels from host memory to the graphics side by DMA, with a programmed-I/O path. The facts do not show which path a given transfer takes, so the DMA and programmed-I/O roles stay open.

Grade: inferred.

Reviewed: 2026-11-12

### `__glOdysseyInitLighting` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdaad80`

`__glOdysseyInitLighting` (788 bytes) makes no calls in the facts. It loads four single-precision constants from absolute addresses 0xbeefac4, 0xbeefb64, 0xbeefa10 and 0xbeefa14. It then writes 22 words and 51 single-precision values to absolute 0x4000, and stores into its first argument's block at offsets such as +0xc5dc to +0xc5e8 and +0xc620 to +0xc644. The name suggests setting lighting defaults. What the constants hold and what 0x4000 is remain unknown here.

Grade: inferred.

Reviewed: 2026-11-12

### `__glOdylc_Normal3b` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdadbf0`

`__glOdylc_Normal3b` (256 bytes) loads the words at absolute 0x1048 and 0x1060 and the doubleword at 0x1058, and writes those three addresses back. The call to `__glSPDlistSpace` (0xbde0a10) at 0xbdadc44, with a0 = 0 and its own a1 to a3 passed on, is skipped when the branch at 0xbdadc28 sees the word at 0x1048 at or above a compared value. A zero result of that call goes to the return of the call's result at 0xbdadce8; otherwise (and when the call was skipped) it returns `[0x1060]+4` at 0xbdadcc0. Role (from name): a display-list compile wrapper for a byte-normal call; the facts show only the list-space bookkeeping.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdae430`

`__glOdylc_Normal3s` (256 bytes) matches `__glOdylc_Normal3b` in outline. The call to `__glSPDlistSpace` at 0xbdae484 (a0 = 0) is skipped by the same kind of branch on the word at 0x1048 (0xbdae468). It uses the same absolute 0x1048, 0x1058 and 0x1060 accesses, returns the callee's result at 0xbdae528 when that result is zero, and otherwise (or when the call was skipped) returns `[0x1060]+4` at 0xbdae500. I did not compare the two instruction streams line by line, so any difference between the short and byte forms is not established.

Grade: inferred.

Reviewed: 2026-11-12

- `__glOdylc_Normal3s` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbdae430
  **Inferred.** The reservation shape again: it calls `__glSPDlistSpace` at 0xbdae484 with a0=0 and returns
  either `[0x1060]+4` (at 0xbdae500) or the call's result (at 0xbdae528).
  Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdaf960`

`__glOdysseyReadFromPMObj` (268 bytes) calls `CheckMMXfrArgs` (0xbdaf780) at 0xbdaf9e8 with a0 = a stack buffer (sp-176). Only when that returns nonzero does it call `__glOdysseyIoctl` (0xbdc1ef0) at 0xbdafa08, with a1 = 0x6f640006 and a2 = the same buffer. The facts show a return of 0 at 0xbdafa64 and a return of 0 or 1 at 0xbdafa4c; the branch at 0xbdafa1c is on the ioctl result. Role (from name): a read from a pixel-memory object, as an argument check followed by one kernel request. What the check tests is not expanded in the facts.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdafa70`

`OpenPipeMemReference` (496 bytes) has two `__glOdysseyMIPS_SYNC` (0xbeb8b60) call sites, at 0xbdafb7c and 0xbdafc08, and one `__glOdysseyIoctl` call site between them at 0xbdafbe0. Branches on a4 (the fifth argument), on a value that is 0 or 1, and on the word at [a1+148] decide which stores and calls run; the call at 0xbdafc08 is reached after the ioctl returns nonzero, and a zero result branches back to 0xbdafba0. The ioctl call passes 0x6f640003 in a1, which may be a request code. It has 17 store sites to absolute 0x4000 (from the disassembly), and returns 1 at 0xbdafbb0 on one path and 0 at 0xbdafc24 on another. Role (from name): taking a reference on a pipe memory object. The meaning of the request word and of the 0x4000 writes is not established.

Grade: inferred.

Reviewed: 2026-11-12

- `OpenPipeMemReference` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbdafa70
  **Inferred.** A 496-byte routine. It calls `__glOdysseyMIPS_SYNC` at 0xbdafb7c, then `__glOdysseyIoctl` at 0xbdafbe0 with request 0x6f640003 and a stack buffer as a2, and calls `__glOdysseyMIPS_SYNC` again at 0xbdafc08 on the path where the ioctl result is nonzero. It returns 0x1 at 0xbdafbb0 and 0x0 at 0xbdafc24. The request number carries the ASCII bytes "od" in its high half, as the other Odyssey ioctls in this batch do.
  Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdb0500`

`LookupKnownGroup` (396 bytes) returns 0 without further work when a1 is -3 or -4 (branches at 0xbdb051c and 0xbdb0524). Otherwise it calls `LookupCSetId` (0xbdb10c0) at 0xbdb054c with a0 = its first argument + 103120, and returns that result at 0xbdb0570 when it is nonzero. When it is zero, a zero a2 returns 0; with a nonzero a2 it calls an unnamed allocator at 0xbdb0590 with 0x98 as its second argument (a1). A zero allocation result goes to `__glSetError` with 0x505 at 0xbdb0638 and returns 0. Otherwise it zeroes the record with `bzero` (0x98 bytes, 0xbdb05b0), adds it through `AddKnownGroup` (0xbdb0960) at 0xbdb05c8, and calls `LookupCoresidRange` (0xbdb0690) at 0xbdb05e8 with a2 = 0, a3 = 0xf and a4 = 1. A nonzero result returns the record at 0xbdb0608. A zero result calls `RemoveKnownGroup` (0xbdb09c0) at 0xbdb0668 on the same record and returns 0. Role (from name): find-or-create on a group table. The unnamed allocator is not identified by the facts.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdb0690`

`LookupCoresidRange` (592 bytes) has an unnamed call at 0xbdb06fc, a `bzero` call at 0xbdb0714, one `__glOdysseyIoctl` call at 0xbdb0774 (a1 = 0x6f640004, a4 = 2), a second unnamed call at 0xbdb078c and a `__glSetError` call with 0x505 at 0xbdb08c0. It begins with a branch-and-load loop over `[((a2 << 3) + a1)+16]`. The branch at 0xbdb06e8 jumps to 0xbdb08ac when a4 (the fifth argument) is zero. Otherwise the first unnamed call is made, and a zero result goes to `__glSetError` and the return of 0 at 0xbdb08d8; a nonzero result continues to `bzero` and the ioctl. A nonzero ioctl result reaches the second unnamed call and a return of 0 at 0xbdb07a4. The facts also show a return of an unknown value at 0xbdb07b4. Role (from name): a kernel query for a range. The query fields are not in the facts, so the range semantics stay open.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdb29a0`

`__glOdysseySetProgram` (1208 bytes) makes no calls in the facts. It loads fields around +0xca7c to +0xca9c of its first argument, some indexed by `(a1 << 5) + a0`, which suggests a table of 32-byte records selected by a1. One branch compares the field at `((a1 << 5) + a0)+51860` with `[a0+51924]`, and it writes 31 words to absolute 0x4000. v0 holds 0x29808062 at its returns at 0xbdb29cc (taken when the byte at +0x287dc is nonzero, with that word also stored to 0x4000 in the delay slot) and at 0xbdb2e50 (taken when `[a0+51836]` is zero); the return at 0xbdb2e48 has an unknown v0. Role (from name): binding a program object by index. The facts do not show what each record holds.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdb4f40`

`__glOdylc_TexCoord1d` (240 bytes) matches the `__glOdylc_Normal3b` pattern. The call to `__glSPDlistSpace` (0xbde0a10) at 0xbdb4f90 (a0 = 0) is skipped by the branch on the word at 0x1048 (0xbdb4f7c). It uses absolute 0x1048, 0x1058 and 0x1060, returns the callee's result at 0xbdb5028 when that result is zero, and otherwise (or when the call was skipped) returns `[0x1060]+2` at 0xbdb5000. Role (from name): a display-list wrapper for a one-dimensional texture-coordinate call. The argument use is not shown in the summary facts.

Grade: inferred.

Reviewed: 2026-11-12

- `__glOdylc_TexCoord1d` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbdb4f40
  **Inferred.** The reservation shape again: it calls `__glSPDlistSpace` at 0xbdb4f90 with a0=0 and returns
  either `[0x1060]+2` (at 0xbdb5000) or the call's result (at 0xbdb5028).
  Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdb5ad0`

`__glOdylc_TexCoord2i` (244 bytes) follows the same pattern as the Normal3b entry. The call to `__glSPDlistSpace` (0xbde0a10) at 0xbdb5b20 (a0 = 0) is skipped by the branch on the word at 0x1048 (0xbdb5b08). It uses absolute 0x1048, 0x1058 and 0x1060, returns the callee's result at 0xbdb5bbc when that result is zero, and otherwise (or when the call was skipped) returns `[0x1060]+3` at 0xbdb5b94. Role (from name): a display-list wrapper for a two-integer texture-coordinate call.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdb6310`

`__glOdylc_TexCoord3i` (256 bytes) follows the same pattern. The call to `__glSPDlistSpace` (0xbde0a10) at 0xbdb6364 (a0 = 0) is skipped by the branch on the word at 0x1048 (0xbdb6348). It uses absolute 0x1048, 0x1058 and 0x1060, returns the callee's result at 0xbdb6408 when that result is zero, and otherwise (or when the call was skipped) returns `[0x1060]+4` at 0xbdb63e0. Role (from name): a display-list wrapper for a three-integer texture-coordinate call.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdb99e0`

`DownsampleTextureThruHW` (2252 bytes) calls `ChooseSuitableBuzzTexModeBaseFmt` (0xbdb8380), `__glOdysseyImageLogBase2` (0xbdaa9c0) twice, `GetImageFmtEnumFromBuzzTexFormat` (0xbdb82c0) and `__glOdysseyImageCalcFieldFormat` (0xbd7a3c0), and calls `__glOdysseyValidateHardware` (0xbd5bb70) at 0xbdb9ff0 only when the word at `[[0x1020]+102364]` is nonzero. It stores 28 words to absolute 0x4000 and 9 stores to absolute 0x1030. It returns a word read through the pointer at absolute 0x1020, at offset +41948 (return at 0xbdba1a8). Role (from name): a hardware texture downsample. The format selection and log2 calls fit that, but the scale arithmetic is not in the facts.

Grade: inferred.

Reviewed: 2026-11-12

- `IsLegalRange` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbdbbad0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbdbbad0-0xbdbbb40 (112 bytes).
  It occupies 112 bytes.
  The `jalr` at 0xbdbbb1c calls __glSetError [0xbe183f0] with a0=0x501, a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `bltz` branch at 0xbdbbad0 targets 0xbdbbb34, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `beq` branch at 0xbdbbadc targets 0xbdbbb34, is taken when a1 >= 0x2 (signed), and falls through when a1 < 0x2 (signed).
  The `bltz` branch at 0xbdbbaf0 targets 0xbdbbb14, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `bne` branch at 0xbdbbaf8 targets 0xbdbbb14, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0xbdbbb04 targets 0xbdbbb18, is taken when a2(=0x8000) < a0(?) (signed), and falls through when a2(=0x8000) >= a0(?) (signed).
  The return at 0xbdbbb0c has v0 = 0x1.
  The return at 0xbdbbb2c has v0 = 0x0.
  The return at 0xbdbbb38 has v0 = 0x0.

- `Clampf` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbdc1c60 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbdc1c60-0xbdc1c90 (48 bytes).
  It occupies 48 bytes.
  The `bc1t` branch at 0xbdc1c64 targets 0xbdc1c88, is taken when f12 < f13 (c.lt.s at 0xbdc1c60), and falls through when not (f12 < f13 (c.lt.s at 0xbdc1c60)).
  The `bc1f` branch at 0xbdc1c70 targets 0xbdc1c80, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The return at 0xbdc1c78 has v0 = ?.
  The return at 0xbdc1c80 has v0 = ?.
  The return at 0xbdc1c88 has v0 = ?.

- `__glOdysseyWindowToNormalizedEyeZ` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbdcd2f0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbdcd2f0-0xbdcd380 (144 bytes).
  It occupies 144 bytes.
  The `ld` at 0xbdcd314 loads 8 bytes from abs 0x1020.
  The `ldc1` at 0xbdcd320 loads 8 bytes from [0x1020]:8 +0x18ce8.
  The `ldc1` at 0xbdcd328 loads 8 bytes from [0x1020]:8 +0x18cf0.
  The `bgezall` at 0xbdcd310 calls __glOdysseyWindowToEyeZ [0xbdcd160] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bc1t` branch at 0xbdcd354 targets 0xbdcd374, is taken when f6 < f0(=0x0) (c.lt.d at 0xbdcd348), and falls through when not (f6 < f0(=0x0) (c.lt.d at 0xbdcd348)).
  The `beq` branch at 0xbdcd378 targets 0xbdcd364 and is always taken.
  The return at 0xbdcd36c has v0 = [0x1020]:8+131072.

- `__glOdysseySoftClipBeginTriangles` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbdcede0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbdcede0-0xbdcee14 (52 bytes).
  It occupies 52 bytes.
  The `sd` at 0xbdcedf4 stores 8 bytes to a0 (arg0 at entry) +0x4c88.
  The `ld` at 0xbdcedfc loads 8 bytes from abs 0xbee8968.
  The `ld` at 0xbdcee00 loads 8 bytes from abs 0xbee73f8.
  The `sd` at 0xbdcee04 stores 8 bytes to a0 (arg0 at entry) +0x4778.
  The `sd` at 0xbdcee10 stores 8 bytes to a0 (arg0 at entry) +0x46e8.
  The return at 0xbdcee0c has v0 = 0xbdceda0.

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdd0090`

`RGBSendFc` (132 bytes) makes no calls. It reads a byte at offset +0xc4 of its first argument, single-precision fields at +0x9c, +0xa0, +0xa4, +0xa8, and +0x1c to +0x28, and then writes three words and eight single-precision values to absolute 0x4000. The name suggests a color emitter that packs a state block into that window. The "Fc" suffix is not explained by the facts. The value 0xffffffffc580d015 in v0 at its return (0xbdd010c) looks like leftover register content, not a result.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbdd19b0`

`CISendClippedBmFmN` (372 bytes) makes no calls. It reads the same byte at +0xc4 and float fields at +0x9c, +0xac, +0xd0, +0xd4, +0xd8 and +0x1c to +0x28 of its first argument. It also loads one float from absolute 0xbeefa14, and writes 11 words and 39 single-precision values to absolute 0x4000. It shares the reads at +0xc4, +0x9c and +0x1c to +0x28 with `RGBSendFc`, which suggests a similar emitter, though the stored sequence is longer. Role (from name): a clipped bitmap send; the clipping logic is not visible in the facts. The return at 0xbdd1b1c has 0xffffffff8080d005 in v0.

Grade: inferred.

Reviewed: 2026-11-12

- `vvec` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbdd6070 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbdd6070-0xbdd614c (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0xbdd6070 loads 4 bytes from a1 (arg1 at entry) +0xc.
  The `lw` at 0xbdd6078 loads 4 bytes from a2 (arg2 at entry) +0xc.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xbdd6088, `lwc1` at 0xbdd612c.
  The `lwc1` at 0xbdd608c loads 4 bytes from a1 (arg1 at entry) +0xc.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xbdd6090, `lwc1` at 0xbdd6110, `lwc1` at 0xbdd6128.
  3 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xbdd6094, `lwc1` at 0xbdd6118, `lwc1` at 0xbdd6124.
  5 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `swc1` at 0xbdd60a4, `swc1` at 0xbdd60cc, `swc1` at 0xbdd60f8.
  5 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x4, including `swc1` at 0xbdd60a8, `swc1` at 0xbdd60d0, `swc1` at 0xbdd6100.
  5 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `swc1` at 0xbdd60ac, `swc1` at 0xbdd60d4, `swc1` at 0xbdd6108.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x8, including `lwc1` at 0xbdd60b0, `lwc1` at 0xbdd60e4.
  The `lwc1` at 0xbdd60b4 loads 4 bytes from a2 (arg2 at entry) +0xc.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lwc1` at 0xbdd60b8, `lwc1` at 0xbdd60ec.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lwc1` at 0xbdd60bc, `lwc1` at 0xbdd60e0.
  The `beq` branch at 0xbdd607c targets 0xbdd60e0, is taken when at(=([a1+12] << 0x1)) == 0, and falls through when at(=([a1+12] << 0x1)) != 0.
  The `beq` branch at 0xbdd6084 targets 0xbdd610c, is taken when a4(=([a2+12] << 0x1)) == 0, and falls through when a4(=([a2+12] << 0x1)) != 0.
  The `beq` branch at 0xbdd60e8 targets 0xbdd6124, is taken when a4(=([a2+12] << 0x1)) == 0, and falls through when a4(=([a2+12] << 0x1)) != 0.
  The return at 0xbdd60d8 has v0 = ?.
  The return at 0xbdd6104 has v0 = ?.
  The return at 0xbdd611c has v0 = ?.
  The return at 0xbdd6144 has v0 = ?.

- `Dot` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbdd7080 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbdd7080-0xbdd70a8 (40 bytes).
  It occupies 40 bytes.
  The `lwc1` at 0xbdd7080 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwc1` at 0xbdd7084 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lwc1` at 0xbdd7088 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lwc1` at 0xbdd708c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwc1` at 0xbdd7090 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `lwc1` at 0xbdd7098 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The return at 0xbdd70a0 has v0 = ?.

- `SphereGen` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbdd70b0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbdd70b0-0xbdd719c (236 bytes).
  It occupies 236 bytes.
  The `ld` at 0xbdd70bc loads 8 bytes from a0 (arg0 at entry) +0x4690.
  The `lwc1` at 0xbdd70f4 loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `lwc1` at 0xbdd70fc loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `lwc1` at 0xbdd7100 loads 4 bytes from a1 (arg1 at entry) +0x2c.
  3 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0xf30, including `lwc1` at 0xbdd714c, `lwc1` at 0xbdd716c, `lwc1` at 0xbdd7184.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `swc1` at 0xbdd7168, `swc1` at 0xbdd7180.
  2 such `swc1` accesses store 4 bytes to a2 (arg2 at entry) +0x4, including `swc1` at 0xbdd7178, `swc1` at 0xbdd7188.
  The `jalr` at 0xbdd70d8 calls (unknown callee) with a0=sp-80, a1=a1+108, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgezall` at 0xbdd70ec calls Dot [0xbdd7080] with a0=a1+44, a1=sp-80, a2=?, a3=?.
  The `bc1t` branch at 0xbdd7154 targets 0xbdd717c, is taken when f6 == f0(=0x0) (c.eq.s at 0xbdd7148), and falls through when not (f6 == f0(=0x0) (c.eq.s at 0xbdd7148)).
  The `beq` branch at 0xbdd7174 targets 0xbdd718c and is always taken.
  The return at 0xbdd7194 has v0 = ret(Dot).

- `Clear` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbe05dd0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbe05dd0-0xbe06078 (680 bytes).
  It occupies 680 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0xbe05de4, `ld` at 0xbe06068.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x18, including `ld` at 0xbe05df8, `ld` at 0xbe06064.
  The `lw` at 0xbe05e04 loads 4 bytes from [a0]:8 +0x95dc.
  The `lw` at 0xbe05e10 loads 4 bytes from [a0]:8 +0x95d4.
  The `lw` at 0xbe05e1c loads 4 bytes from [a0]:8 +0x95d0.
  The `lw` at 0xbe05e20 loads 4 bytes from [a0]:8 +0x95d8.
  The `lw` at 0xbe05e24 loads 4 bytes from [a0]:8 +0xfb8.
  The `lw` at 0xbe05e28 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0xbe05e2c loads 4 bytes from [a0]:8 +0xfbc.
  The `lwc1` at 0xbe05e30 loads 4 bytes from [a0]:8 +0x780.
  The `lwc1` at 0xbe05e34 loads 4 bytes from [a0]:8 +0x9ad0.
  The `lwc1` at 0xbe05e38 loads 4 bytes from [a0]:8 +0x784.
  The `lwc1` at 0xbe05e3c loads 4 bytes from [a0]:8 +0x9af0.
  The `lwc1` at 0xbe05e40 loads 4 bytes from [a0]:8 +0x9acc.
  The `lwc1` at 0xbe05e44 loads 4 bytes from a0 (arg0 at entry) +0x84.
  The `lwc1` at 0xbe05e4c loads 4 bytes from [a0]:8 +0x77c.
  The `lwc1` at 0xbe05e54 loads 4 bytes from a0 (arg0 at entry) +0x80.
  The `lwc1` at 0xbe05e60 loads 4 bytes from a0 (arg0 at entry) +0x7c.
  The `lwc1` at 0xbe05e6c loads 4 bytes from [a0]:8 +0x778.
  The `lwc1` at 0xbe05e74 loads 4 bytes from [a0]:8 +0x9ac8.
  The `lwc1` at 0xbe05e94 loads 4 bytes from a0 (arg0 at entry) +0x78.
  28 such `sh` accesses store 2 bytes to ?, including `sh` at 0xbe05f64, `sh` at 0xbe05f68, `sh` at 0xbe05f6c.
  The `ld` at 0xbe0604c loads 8 bytes from a0 (arg0 at entry) +0xd0.
  The `jalr` at 0xbe0605c calls (unknown callee) with a0=[a0]:8, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=[a0]:8.
  The `beq` branch at 0xbe05e18 targets 0xbe0604c, is taken when t1(=[a0+24]:8) == 0, and falls through when t1(=[a0+24]:8) != 0.
  The `beq` branch at 0xbe05efc targets 0xbe06034, is taken when s0(=[[a0]:8+38356]) >= s1(=[[a0]:8+38364]) (signed), and falls through when s0(=[[a0]:8+38356]) < s1(=[[a0]:8+38364]) (signed).
  The `beq` branch at 0xbe05f34 targets 0xbe05f98 and is always taken.
  The `beq` branch at 0xbe05f44 targets 0xbe05f90, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0xbe05f84 targets 0xbe05f60, is taken when a0(?) != a7(=-0x1), and falls through when a0(?) == a7(=-0x1).
  The `beq` branch at 0xbe05f90 targets 0xbe06034, is taken when s0(?) == s1(=[[a0]:8+38364]), and falls through when s0(?) != s1(=[[a0]:8+38364]).
  The `beq` branch at 0xbe05fa4 targets 0xbe05ffc, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `bne` branch at 0xbe05ff4 targets 0xbe05fb0, is taken when a1(?) != a7(=-0x1), and falls through when a1(?) == a7(=-0x1).
  The `beq` branch at 0xbe05ffc targets 0xbe05f90, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xbe0600c targets 0xbe05f40, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `beq` branch at 0xbe0602c targets 0xbe05f3c and is always taken.
  The `beq` branch at 0xbe06070 targets 0xbe05e20 and is always taken.
  The return at 0xbe06044 has v0 = ?.

- `__glChangeWindowSize` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbe18670 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbe18670-0xbe1878c (284 bytes).
  It occupies 284 bytes.
  The `sw` at 0xbe18678 stores 4 bytes to a0 (arg0 at entry) +0xfe0.
  The `sw` at 0xbe18680 stores 4 bytes to a0 (arg0 at entry) +0xfe4.
  The `ld` at 0xbe18698 loads 8 bytes from a0 (arg0 at entry) +0x9a28.
  The `ld` at 0xbe186a8 loads 8 bytes from [a0+39464]:8 +0x58.
  The `lbu` at 0xbe186c0 loads 1 byte from a0 (arg0 at entry) +0xdee.
  The `ld` at 0xbe186cc loads 8 bytes from a0 (arg0 at entry) +0x9a30.
  The `ld` at 0xbe186d0 loads 8 bytes from [a0+39472]:8 +0x58.
  The `lbu` at 0xbe186e0 loads 1 byte from a0 (arg0 at entry) +0xdf0.
  The `ld` at 0xbe186ec loads 8 bytes from a0 (arg0 at entry) +0x9ea0.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xdf1, including `lbu` at 0xbe186f8, `lbu` at 0xbe18788.
  The `ld` at 0xbe18704 loads 8 bytes from a0 (arg0 at entry) +0x9e10.
  The `lbu` at 0xbe1871c loads 1 byte from a0 (arg0 at entry) +0xdf2.
  The `ld` at 0xbe18728 loads 8 bytes from a0 (arg0 at entry) +0x9d38.
  The `ld` at 0xbe18740 loads 8 bytes from a0 (arg0 at entry) +0x46a8.
  The `ld` at 0xbe1876c loads 8 bytes from a0 (arg0 at entry) +0x9ee0.
  The `jalr` at 0xbe186b8 calls (unknown callee) with a0=[a0+39464]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0xbe186d8 calls (unknown callee) with a0=[a0+39472]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0xbe18714 calls (unknown callee) with a0=a0+40376, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+3569]:1.
  The `jalr` at 0xbe18738 calls (unknown callee) with a0=a0+40160, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+3570]:1.
  The `jalr` at 0xbe18750 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0xbe1877c calls (unknown callee) with a0=a0+40584, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `beq` branch at 0xbe186c4 targets 0xbe186e0, is taken when at(=[a0+3566]:1) == 0, and falls through when at(=[a0+3566]:1) != 0.
  The `beq` branch at 0xbe186e4 targets 0xbe186f8, is taken when v0(=[a0+3568]:1) == 0, and falls through when v0(=[a0+3568]:1) != 0.
  The `bne` branch at 0xbe186f0 targets 0xbe1876c, is taken when v1(=[a0+40608]:8) != 0, and falls through when v1(=[a0+40608]:8) == 0.
  The `beq` branch at 0xbe186fc targets 0xbe1871c, is taken when a3(=[a0+3569]:1) == 0, and falls through when a3(=[a0+3569]:1) != 0.
  The `beq` branch at 0xbe18720 targets 0xbe18740, is taken when a3(=[a0+3570]:1) == 0, and falls through when a3(=[a0+3570]:1) != 0.
  The `beq` branch at 0xbe18784 targets 0xbe186fc and is always taken.
  The return at 0xbe18764 has v0 = ret(?).

- `__glChangeReadWindowSize` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbe18790 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbe18790-0xbe1879c (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0xbe18790 stores 4 bytes to a0 (arg0 at entry) +0xfec.
  The `sw` at 0xbe18798 stores 4 bytes to a0 (arg0 at entry) +0xfe8.
  The return at 0xbe18794 has v0 = ?.

- `Resize` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbe1bcf0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbe1bcf0-0xbe1bd34 (68 bytes).
  It occupies 68 bytes.
  The `sb` at 0xbe1bd24 stores 1 byte to a0 (arg0 at entry) +0x90.
  The `jalr` at 0xbe1bd10 calls __glResizeBuffer [0xbe117d0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xbe1bd2c has v0 = 0x1.

- `Coverage` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbe43b50 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbe43b50-0xbe43c90 (320 bytes).
  It occupies 320 bytes.
  The `bc1f` branch at 0xbe43b98 targets 0xbe43ba4, is taken when not (f9 <= f5 (c.le.s at 0xbe43b94)), and falls through when f9 <= f5 (c.le.s at 0xbe43b94).
  The `bc1f` branch at 0xbe43ba4 targets 0xbe43bb0, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0xbe43bb0 targets 0xbe43bbc, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0xbe43bc8 targets 0xbe43bd4, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0xbe43bd8 targets 0xbe43be4, is taken when not (f9 <= f5 (c.le.s at 0xbe43bd4)), and falls through when f9 <= f5 (c.le.s at 0xbe43bd4).
  The `bc1f` branch at 0xbe43be4 targets 0xbe43bf0, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0xbe43bf0 targets 0xbe43bfc, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0xbe43c08 targets 0xbe43c14, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0xbe43c1c targets 0xbe43c28, is taken when not (f9 <= f5 (c.le.s at 0xbe43c14)), and falls through when f9 <= f5 (c.le.s at 0xbe43c14).
  The `bc1f` branch at 0xbe43c28 targets 0xbe43c34, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0xbe43c34 targets 0xbe43c40, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0xbe43c44 targets 0xbe43c50, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The `bc1f` branch at 0xbe43c58 targets 0xbe43c64, is taken when not (f9 <= f5 (c.le.s at 0xbe43c50)), and falls through when f9 <= f5 (c.le.s at 0xbe43c50).
  The `bc1f` branch at 0xbe43c64 targets 0xbe43c70, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The `bc1f` branch at 0xbe43c70 targets 0xbe43c7c, is taken when FP condition code 2 is false, and falls through when FP condition code 2 is true.
  The `bc1f` branch at 0xbe43c7c targets 0xbe43c88, is taken when FP condition code 3 is false, and falls through when FP condition code 3 is true.
  The return at 0xbe43c88 has v0 = ?.

- `SetInitialParameters` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbe46290 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbe46290-0xbe46810 (1408 bytes).
  It occupies 1408 bytes.
  The `lw` at 0xbe462a0 loads 4 bytes from a0 (arg0 at entry) +0x97ac.
  The `lw` at 0xbe462a4 loads 4 bytes from a0 (arg0 at entry) +0x97a8.
  The `lw` at 0xbe462bc loads 4 bytes from a0 (arg0 at entry) +0x98d4.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x983c, including `lwc1` at 0xbe46308, `lwc1` at 0xbe464e4, `lwc1` at 0xbe467b0.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x984c, including `lwc1` at 0xbe4630c, `lwc1` at 0xbe464e8, `lwc1` at 0xbe467b4.
  4 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lwc1` at 0xbe46310, `lwc1` at 0xbe464ec, `lwc1` at 0xbe467bc.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9850, including `lwc1` at 0xbe46320, `lwc1` at 0xbe464fc.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9840, including `lwc1` at 0xbe46324, `lwc1` at 0xbe46500.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x981c, including `swc1` at 0xbe46328, `swc1` at 0xbe46508, `swc1` at 0xbe467c8.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97f0, including `swc1` at 0xbe4632c, `swc1` at 0xbe46504, `swc1` at 0xbe467d8.
  4 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x982c, including `swc1` at 0xbe46334, `swc1` at 0xbe46510, `swc1` at 0xbe467d0.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x4, including `lwc1` at 0xbe46338, `lwc1` at 0xbe46514.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9854, including `lwc1` at 0xbe46348, `lwc1` at 0xbe46524.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9844, including `lwc1` at 0xbe4634c, `lwc1` at 0xbe46528.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9820, including `swc1` at 0xbe46350, `swc1` at 0xbe46530.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97f4, including `swc1` at 0xbe46354, `swc1` at 0xbe4652c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9830, including `swc1` at 0xbe4635c, `swc1` at 0xbe46538.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0x8, including `lwc1` at 0xbe46360, `lwc1` at 0xbe4653c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9858, including `lwc1` at 0xbe46370, `lwc1` at 0xbe4654c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9848, including `lwc1` at 0xbe46374, `lwc1` at 0xbe46550.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9824, including `swc1` at 0xbe46378, `swc1` at 0xbe46558.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97f8, including `swc1` at 0xbe4637c, `swc1` at 0xbe46554.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9834, including `swc1` at 0xbe46384, `swc1` at 0xbe46560.
  2 such `lwc1` accesses load 4 bytes from a2 (arg2 at entry) +0xc, including `lwc1` at 0xbe4638c, `lwc1` at 0xbe46568.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9828, including `swc1` at 0xbe46398, `swc1` at 0xbe46574.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9838, including `swc1` at 0xbe463a0, `swc1` at 0xbe4657c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x97fc, including `swc1` at 0xbe463a4, `swc1` at 0xbe46580.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x98, including `lwc1` at 0xbe463b4, `lwc1` at 0xbe46590.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x3c, including `lwc1` at 0xbe463b8, `lwc1` at 0xbe46594.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x989c, including `lwc1` at 0xbe463bc, `lwc1` at 0xbe46598.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x98b0, including `lwc1` at 0xbe463c0, `lwc1` at 0xbe4659c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9874, including `swc1` at 0xbe463d4, `swc1` at 0xbe465b4.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9800, including `swc1` at 0xbe463d8, `swc1` at 0xbe465b0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9888, including `swc1` at 0xbe463e0, `swc1` at 0xbe465bc.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x40, including `lwc1` at 0xbe463e4, `lwc1` at 0xbe465c0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x98a0, including `lwc1` at 0xbe463e8, `lwc1` at 0xbe465c4.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x98b4, including `lwc1` at 0xbe463ec, `lwc1` at 0xbe465c8.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9878, including `swc1` at 0xbe46400, `swc1` at 0xbe465e0.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9804, including `swc1` at 0xbe46404, `swc1` at 0xbe465dc.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x988c, including `swc1` at 0xbe4640c, `swc1` at 0xbe465e8.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x44, including `lwc1` at 0xbe46410, `lwc1` at 0xbe465ec.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x98a4, including `lwc1` at 0xbe46414, `lwc1` at 0xbe465f0.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x98b8, including `lwc1` at 0xbe46418, `lwc1` at 0xbe465f4.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x987c, including `swc1` at 0xbe4642c, `swc1` at 0xbe4660c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9808, including `swc1` at 0xbe46430, `swc1` at 0xbe46608.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9890, including `swc1` at 0xbe46438, `swc1` at 0xbe46614.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x48, including `lwc1` at 0xbe4643c, `lwc1` at 0xbe46618.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x98a8, including `lwc1` at 0xbe46440, `lwc1` at 0xbe4661c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x98bc, including `lwc1` at 0xbe46444, `lwc1` at 0xbe46624.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x98c0, including `lwc1` at 0xbe46458, `lwc1` at 0xbe46634.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x98ac, including `lwc1` at 0xbe4645c, `lwc1` at 0xbe46638.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9880, including `swc1` at 0xbe46460, `swc1` at 0xbe46640.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x980c, including `swc1` at 0xbe46464, `swc1` at 0xbe4663c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9894, including `swc1` at 0xbe4646c, `swc1` at 0xbe46648.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0xc0, including `lwc1` at 0xbe46474, `lwc1` at 0xbe46650.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9884, including `swc1` at 0xbe46480, `swc1` at 0xbe4665c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9898, including `swc1` at 0xbe46488, `swc1` at 0xbe46664.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9810, including `swc1` at 0xbe4648c, `swc1` at 0xbe46668.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x810, including `lw` at 0xbe46498, `lw` at 0xbe46674.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x986c, including `lwc1` at 0xbe464bc, `lwc1` at 0xbe46698, `lwc1` at 0xbe466b4.
  4 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x9870, including `lwc1` at 0xbe464c0, `lwc1` at 0xbe4669c, `lwc1` at 0xbe466b0.
  4 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x97ec, including `sw` at 0xbe464c4, `sw` at 0xbe466a0, `sw` at 0xbe466cc.
  2 such `lwc1` accesses load 4 bytes from a1 (arg1 at entry) +0x94, including `lwc1` at 0xbe466b8, `lwc1` at 0xbe46728.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x985c, including `sw` at 0xbe466e4, `sw` at 0xbe46754.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x9860, including `sw` at 0xbe466ec, `sw` at 0xbe4675c.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x98d0, including `lwc1` at 0xbe466f8, `lwc1` at 0xbe46768.
  2 such `lwc1` accesses load 4 bytes from a0 (arg0 at entry) +0x98cc, including `lwc1` at 0xbe466fc, `lwc1` at 0xbe4676c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x98c4, including `swc1` at 0xbe4670c, `swc1` at 0xbe4677c.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x98c8, including `swc1` at 0xbe46714, `swc1` at 0xbe46784.
  2 such `swc1` accesses store 4 bytes to a0 (arg0 at entry) +0x9814, including `swc1` at 0xbe4671c, `swc1` at 0xbe46788.
  The `bgezall` at 0xbe464b4 calls __glPolygonOffsetZ [0xbe48910] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=[a0+39124]; fp f14=f16, f15=f17.
  The `bgezall` at 0xbe46690 calls __glPolygonOffsetZ [0xbe48910] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?, a7=[a0+39124]; fp f14=f16, f15=f17.
  The `bc1f` branch at 0xbe462f0 targets 0xbe464d4, is taken when not (f24 < f0 (c.lt.s at 0xbe462c8)), and falls through when f24 < f0 (c.lt.s at 0xbe462c8).
  The `beq` branch at 0xbe462f8 targets 0xbe467a8, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xbe46300 targets 0xbe463ac, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xbe463ac targets 0xbe46490, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xbe46490 targets 0xbe466f0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xbe464a0 targets 0xbe466b0, is taken when (v0(=[a0+2064]) & v1(=0x1000000)) == 0, and falls through when (v0(=[a0+2064]) & v1(=0x1000000)) != 0.
  The `beq` branch at 0xbe464cc targets 0xbe466d0 and is always taken.
  The `beq` branch at 0xbe464d4 targets 0xbe467dc, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xbe464dc targets 0xbe46588, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xbe46588 targets 0xbe4666c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xbe4666c targets 0xbe46760, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xbe4667c targets 0xbe46720, is taken when (at(=[a0+2064]) & v0(=0x1000000)) == 0, and falls through when (at(=[a0+2064]) & v0(=0x1000000)) != 0.
  The `beq` branch at 0xbe466a8 targets 0xbe46740 and is always taken.
  The `beq` branch at 0xbe466f0 targets 0xbe4678c, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `beq` branch at 0xbe46718 targets 0xbe4678c and is always taken.
  The `beq` branch at 0xbe46760 targets 0xbe4678c, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `beq` branch at 0xbe467a8 targets 0xbe46490, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xbe467d4 targets 0xbe46490 and is always taken.
  The `beq` branch at 0xbe467dc targets 0xbe4666c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xbe46808 targets 0xbe4666c and is always taken.
  The return at 0xbe467a0 has v0 = ?.

- `Store_8` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbe89fe0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbe89fe0-0xbe8a168 (392 bytes).
  It occupies 392 bytes.
  The `ld` at 0xbe89fe0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xbe89fe4 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xbe89fe8 loads 4 bytes from [a0]:8 +0xfbc.
  The `lw` at 0xbe89ff0 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0xbe8a010 loads 4 bytes from [a0]:8 +0x810.
  The `ld` at 0xbe8a018 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xbe8a01c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xbe8a030 loads 4 bytes from [a0]:8 +0xfb8.
  The `lb` at 0xbe8a064 loads 1 byte from table(0xbee19f8) +0x0.
  The `lw` at 0xbe8a088 loads 4 bytes from [a0]:8 +0x814.
  The `ld` at 0xbe8a098 loads 8 bytes from [a0]:8 +0x4b60.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xbe8a0c4, `lwc1` at 0xbe8a0c8, `lwc1` at 0xbe8a0d0.
  The `lw` at 0xbe8a0f0 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `lw` at 0xbe8a0fc loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lw` at 0xbe8a110 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `lbu` at 0xbe8a118 loads 1 byte from ?.
  The `lw` at 0xbe8a124 loads 4 bytes from a0 (arg0 at entry) +0xd4.
  The `lw` at 0xbe8a12c loads 4 bytes from a0 (arg0 at entry) +0xd0.
  The `sb` at 0xbe8a150 stores 1 byte to ?.
  The `lwc1` at 0xbe8a15c loads 4 bytes from [a0]:8 +0xf30.
  The `jalr` at 0xbe8a0b0 calls (unknown callee) with a0=[a0]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-80, a4=[[a0]:8+2064], a5=[a1], a6=[a0]:8, a7=[a1+4].
  The `beq` branch at 0xbe8a044 targets 0xbe8a15c, is taken when (a4(=[[a0]:8+2064]) & 0x8) == 0, and falls through when (a4(=[[a0]:8+2064]) & 0x8) != 0.
  The `bne` branch at 0xbe8a080 targets 0xbe8a098, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xbe8a090 targets 0xbe8a154, is taken when (at(=[[a0]:8+2068]) & 0x800) == 0, and falls through when (at(=[[a0]:8+2068]) & 0x800) != 0.
  The `beq` branch at 0xbe8a154 targets 0xbe8a0bc and is always taken.
  The `beq` branch at 0xbe8a160 targets 0xbe8a080 and is always taken.
  The return at 0xbe8a14c has v0 = ?.

- `Store_16` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbe8a170 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbe8a170-0xbe8a304 (404 bytes).
  It occupies 404 bytes.
  The `ld` at 0xbe8a170 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xbe8a174 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0xbe8a178 loads 4 bytes from [a0]:8 +0xfbc.
  The `lw` at 0xbe8a17c loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0xbe8a190 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xbe8a19c loads 4 bytes from [a0]:8 +0xfb8.
  The `lw` at 0xbe8a1b0 loads 4 bytes from [a0]:8 +0x810.
  The `lw` at 0xbe8a1b4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lb` at 0xbe8a200 loads 1 byte from table(0xbee19f8) +0x0.
  The `lw` at 0xbe8a224 loads 4 bytes from [a0]:8 +0x814.
  The `ld` at 0xbe8a234 loads 8 bytes from [a0]:8 +0x4b60.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xbe8a260, `lwc1` at 0xbe8a264, `lwc1` at 0xbe8a26c.
  The `lw` at 0xbe8a28c loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `lw` at 0xbe8a298 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lw` at 0xbe8a2ac loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `lhu` at 0xbe8a2b4 loads 2 bytes from ?.
  The `lw` at 0xbe8a2c0 loads 4 bytes from a0 (arg0 at entry) +0xd4.
  The `lw` at 0xbe8a2c8 loads 4 bytes from a0 (arg0 at entry) +0xd0.
  The `sh` at 0xbe8a2ec stores 2 bytes to ?.
  The `lwc1` at 0xbe8a2f8 loads 4 bytes from [a0]:8 +0xf30.
  The `jalr` at 0xbe8a24c calls (unknown callee) with a0=[a0]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-80, a4=[[a0]:8+2064], a5=[a1+4], a6=[a0]:8, a7=[a1].
  The `beq` branch at 0xbe8a1e0 targets 0xbe8a2f8, is taken when (a4(=[[a0]:8+2064]) & 0x8) == 0, and falls through when (a4(=[[a0]:8+2064]) & 0x8) != 0.
  The `bne` branch at 0xbe8a21c targets 0xbe8a234, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xbe8a22c targets 0xbe8a2f0, is taken when (at(=[[a0]:8+2068]) & 0x800) == 0, and falls through when (at(=[[a0]:8+2068]) & 0x800) != 0.
  The `beq` branch at 0xbe8a2f0 targets 0xbe8a258 and is always taken.
  The `beq` branch at 0xbe8a2fc targets 0xbe8a21c and is always taken.
  The return at 0xbe8a2e8 has v0 = ?.

- `Store_32` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbe8a480 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbe8a480-0xbe8a5c8 (328 bytes).
  It occupies 328 bytes.
  The `lw` at 0xbe8a484 loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `ld` at 0xbe8a490 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xbe8a498 loads 4 bytes from [a0]:8 +0xfbc.
  The `lw` at 0xbe8a4a0 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0xbe8a4b4 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xbe8a4bc loads 4 bytes from [a0]:8 +0x810.
  The `lw` at 0xbe8a4c4 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xbe8a4cc loads 4 bytes from [a0]:8 +0xfb8.
  The `lw` at 0xbe8a4f4 loads 4 bytes from [a0]:8 +0x814.
  The `ld` at 0xbe8a504 loads 8 bytes from [a0]:8 +0x4b60.
  The `lwc1` at 0xbe8a52c loads 4 bytes from [a0]:8 +0xf30.
  3 such `lwc1` accesses load 4 bytes from ?, including `lwc1` at 0xbe8a530, `lwc1` at 0xbe8a538, `lwc1` at 0xbe8a53c.
  The `lw` at 0xbe8a554 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `lw` at 0xbe8a568 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `lw` at 0xbe8a570 loads 4 bytes from ?.
  The `lw` at 0xbe8a57c loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `lw` at 0xbe8a584 loads 4 bytes from a0 (arg0 at entry) +0xd4.
  The `lw` at 0xbe8a590 loads 4 bytes from a0 (arg0 at entry) +0xd0.
  The `sw` at 0xbe8a5bc stores 4 bytes to ?.
  The `jalr` at 0xbe8a51c calls (unknown callee) with a0=[a0]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=sp-80.
  The `bne` branch at 0xbe8a4ec targets 0xbe8a504, is taken when (at(=[[a0]:8+2064]) & 0x2) != 0, and falls through when (at(=[[a0]:8+2064]) & 0x2) == 0.
  The `beq` branch at 0xbe8a4fc targets 0xbe8a5c0, is taken when (at(=[[a0]:8+2068]) & 0x800) == 0, and falls through when (at(=[[a0]:8+2068]) & 0x800) != 0.
  The `beq` branch at 0xbe8a5c0 targets 0xbe8a528 and is always taken.
  The return at 0xbe8a5b8 has v0 = ?.

- `Fetch_8` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbe8a5d0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbe8a5d0-0xbe8a678 (168 bytes).
  It occupies 168 bytes.
  The `ld` at 0xbe8a5d0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xbe8a5d4 loads 4 bytes from [a0]:8 +0xfbc.
  The `lw` at 0xbe8a5d8 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0xbe8a5e4 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xbe8a5f0 loads 4 bytes from [a0]:8 +0xfb8.
  The `lw` at 0xbe8a5f8 loads 4 bytes from [a0]:8 +0xe20.
  The `lbu` at 0xbe8a600 loads 1 byte from ?.
  The `lw` at 0xbe8a604 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `swc1` at 0xbe8a620 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0xbe8a624 loads 4 bytes from [a0]:8 +0xe24.
  The `lw` at 0xbe8a628 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `swc1` at 0xbe8a644 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lw` at 0xbe8a648 loads 4 bytes from [a0]:8 +0xe28.
  The `lw` at 0xbe8a64c loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `swc1` at 0xbe8a668 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0xbe8a66c loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `swc1` at 0xbe8a674 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The return at 0xbe8a670 has v0 = [a0+176].

- `Fetch_16` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbe8a680 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbe8a680-0xbe8a734 (180 bytes).
  It occupies 180 bytes.
  The `ld` at 0xbe8a680 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xbe8a684 loads 4 bytes from [a0]:8 +0xfbc.
  The `lw` at 0xbe8a688 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0xbe8a694 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xbe8a69c loads 4 bytes from [a0]:8 +0xfb8.
  The `lw` at 0xbe8a6b8 loads 4 bytes from [a0]:8 +0xe20.
  The `lhu` at 0xbe8a6bc loads 2 bytes from ?.
  The `lw` at 0xbe8a6c0 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `swc1` at 0xbe8a6dc stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0xbe8a6e0 loads 4 bytes from [a0]:8 +0xe24.
  The `lw` at 0xbe8a6e4 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `swc1` at 0xbe8a700 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lw` at 0xbe8a704 loads 4 bytes from [a0]:8 +0xe28.
  The `lw` at 0xbe8a708 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `swc1` at 0xbe8a724 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0xbe8a728 loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `swc1` at 0xbe8a730 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The return at 0xbe8a72c has v0 = [a0+176].

- `Fetch_32` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbe8a810 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbe8a810-0xbe8a8c4 (180 bytes).
  It occupies 180 bytes.
  The `ld` at 0xbe8a810 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xbe8a814 loads 4 bytes from [a0]:8 +0xfbc.
  The `lw` at 0xbe8a818 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0xbe8a824 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0xbe8a82c loads 4 bytes from [a0]:8 +0xfb8.
  The `lw` at 0xbe8a848 loads 4 bytes from [a0]:8 +0xe20.
  The `lw` at 0xbe8a84c loads 4 bytes from ?.
  The `lw` at 0xbe8a850 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `swc1` at 0xbe8a86c stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0xbe8a870 loads 4 bytes from [a0]:8 +0xe24.
  The `lw` at 0xbe8a874 loads 4 bytes from a0 (arg0 at entry) +0xac.
  The `swc1` at 0xbe8a890 stores 4 bytes to a3 (arg3 at entry) +0x4.
  The `lw` at 0xbe8a894 loads 4 bytes from [a0]:8 +0xe28.
  The `lw` at 0xbe8a898 loads 4 bytes from a0 (arg0 at entry) +0xb0.
  The `swc1` at 0xbe8a8b4 stores 4 bytes to a3 (arg3 at entry) +0x8.
  The `lwc1` at 0xbe8a8b8 loads 4 bytes from a0 (arg0 at entry) +0xb8.
  The `swc1` at 0xbe8a8c0 stores 4 bytes to a3 (arg3 at entry) +0xc.
  The return at 0xbe8a8bc has v0 = [a0+176].

- `glBlendColorEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9800 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9800-0xbeb980c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9800 loads 8 bytes from abs 0x15d0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9804).

- `glBlendEquationEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb980c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb980c-0xbeb9818 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb980c loads 8 bytes from abs 0x15d8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9810).

- `glTexSubImage1DEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9824 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9824-0xbeb9830 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9824 loads 8 bytes from abs 0x15e8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9828).

- `glTexSubImage2DEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9830 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9830-0xbeb983c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9830 loads 8 bytes from abs 0x15f0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9834).

- `glConvolutionFilter1DEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb983c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb983c-0xbeb9848 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb983c loads 8 bytes from abs 0x15f8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9840).

- `glConvolutionFilter2DEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9848 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9848-0xbeb9854 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9848 loads 8 bytes from abs 0x1600.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb984c).

- `glConvolutionParameterfEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9854 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9854-0xbeb9860 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9854 loads 8 bytes from abs 0x1608.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9858).

- `glConvolutionParameterfvEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9860 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9860-0xbeb986c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9860 loads 8 bytes from abs 0x1610.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9864).

- `glConvolutionParameteriEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb986c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb986c-0xbeb9878 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb986c loads 8 bytes from abs 0x1618.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9870).

- `glConvolutionParameterivEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9878 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9878-0xbeb9884 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9878 loads 8 bytes from abs 0x1620.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb987c).

- `glCopyConvolutionFilter1DEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9884 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9884-0xbeb9890 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9884 loads 8 bytes from abs 0x1628.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9888).

- `glCopyConvolutionFilter2DEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9890 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9890-0xbeb989c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9890 loads 8 bytes from abs 0x1630.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9894).

- `glGetConvolutionFilterEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb989c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb989c-0xbeb98a8 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb989c loads 8 bytes from abs 0x1638.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb98a0).

- `glGetConvolutionParameterfvEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb98a8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb98a8-0xbeb98b4 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb98a8 loads 8 bytes from abs 0x1640.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb98ac).

- `glGetConvolutionParameterivEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb98b4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb98b4-0xbeb98c0 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb98b4 loads 8 bytes from abs 0x1648.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb98b8).

- `glGetSeparableFilterEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb98c0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb98c0-0xbeb98cc (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb98c0 loads 8 bytes from abs 0x1650.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb98c4).

- `glSeparableFilter2DEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb98cc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb98cc-0xbeb98d8 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb98cc loads 8 bytes from abs 0x1658.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb98d0).

- `glGetHistogramEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb98d8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb98d8-0xbeb98e4 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb98d8 loads 8 bytes from abs 0x1660.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb98dc).

- `glGetHistogramParameterfvEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb98e4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb98e4-0xbeb98f0 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb98e4 loads 8 bytes from abs 0x1668.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb98e8).

- `glGetHistogramParameterivEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb98f0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb98f0-0xbeb98fc (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb98f0 loads 8 bytes from abs 0x1670.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb98f4).

- `glGetMinmaxEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb98fc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb98fc-0xbeb9908 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb98fc loads 8 bytes from abs 0x1678.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9900).

- `glGetMinmaxParameterfvEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9908 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9908-0xbeb9914 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9908 loads 8 bytes from abs 0x1680.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb990c).

- `glGetMinmaxParameterivEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9914 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9914-0xbeb9920 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9914 loads 8 bytes from abs 0x1688.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9918).

- `glHistogramEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9920 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9920-0xbeb992c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9920 loads 8 bytes from abs 0x1690.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9924).

- `glMinmaxEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb992c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb992c-0xbeb9938 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb992c loads 8 bytes from abs 0x1698.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9930).

- `glResetHistogramEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9938 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9938-0xbeb9944 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9938 loads 8 bytes from abs 0x16a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb993c).

- `glResetMinmaxEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9944 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9944-0xbeb9950 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9944 loads 8 bytes from abs 0x16a8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9948).

- `glTexImage3DEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9950 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9950-0xbeb995c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9950 loads 8 bytes from abs 0x16b0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9954).

- `glTexSubImage3DEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb995c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb995c-0xbeb9968 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb995c loads 8 bytes from abs 0x16b8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9960).

- `glArrayElementEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9968 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9968-0xbeb9974 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9968 loads 8 bytes from abs 0x16c0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb996c).

- `glDrawArraysEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9980 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9980-0xbeb998c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9980 loads 8 bytes from abs 0x16d0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9984).

- `glGetPointervEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9998 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9998-0xbeb99a4 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9998 loads 8 bytes from abs 0x16e0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb999c).

- `glAreTexturesResident` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb99d4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb99d4-0xbeb99e0 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb99d4 loads 8 bytes from abs 0x1708.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb99d8).

- `glAreTexturesResidentEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb99d4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb99d4-0xbeb99e0 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb99d4 loads 8 bytes from abs 0x1708.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb99d8).

- `glBindTexture` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb99e0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb99e0-0xbeb99ec (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb99e0 loads 8 bytes from abs 0x1710.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb99e4).

- `glBindTextureEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb99e0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb99e0-0xbeb99ec (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb99e0 loads 8 bytes from abs 0x1710.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb99e4).

- `glDeleteTextures` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb99ec (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb99ec-0xbeb99f8 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb99ec loads 8 bytes from abs 0x1718.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb99f0).

- `glDeleteTexturesEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb99ec (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb99ec-0xbeb99f8 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb99ec loads 8 bytes from abs 0x1718.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb99f0).

- `glGenTextures` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb99f8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb99f8-0xbeb9a04 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb99f8 loads 8 bytes from abs 0x1720.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb99fc).

- `glGenTexturesEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb99f8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb99f8-0xbeb9a04 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb99f8 loads 8 bytes from abs 0x1720.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb99fc).

- `glIsTexture` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9a04 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9a04-0xbeb9a10 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9a04 loads 8 bytes from abs 0x1728.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9a08).

- `glIsTextureEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9a04 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9a04-0xbeb9a10 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9a04 loads 8 bytes from abs 0x1728.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9a08).

- `glPrioritizeTextures` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9a10 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9a10-0xbeb9a1c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9a10 loads 8 bytes from abs 0x1730.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9a14).

- `glPrioritizeTexturesEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9a10 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9a10-0xbeb9a1c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9a10 loads 8 bytes from abs 0x1730.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9a14).

- `glCopyTexImage1DEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9a1c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9a1c-0xbeb9a28 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9a1c loads 8 bytes from abs 0x1738.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9a20).

- `glCopyTexImage2DEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9a28 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9a28-0xbeb9a34 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9a28 loads 8 bytes from abs 0x1740.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9a2c).

- `glCopyTexSubImage1DEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9a34 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9a34-0xbeb9a40 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9a34 loads 8 bytes from abs 0x1748.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9a38).

- `glCopyTexSubImage2DEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9a40 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9a40-0xbeb9a4c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9a40 loads 8 bytes from abs 0x1750.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9a44).

- `glCopyTexSubImage3DEXT` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9a4c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9a4c-0xbeb9a58 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9a4c loads 8 bytes from abs 0x1758.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9a50).

- `glColorTableSGI` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9b48 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9b48-0xbeb9b54 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9b48 loads 8 bytes from abs 0x1800.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9b4c).

- `glColorTableParameterfvSGI` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9b54 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9b54-0xbeb9b60 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9b54 loads 8 bytes from abs 0x1808.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9b58).

- `glColorTableParameterivSGI` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9b60 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9b60-0xbeb9b6c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9b60 loads 8 bytes from abs 0x1810.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9b64).

- `glCopyColorTableSGI` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9b6c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9b6c-0xbeb9b78 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9b6c loads 8 bytes from abs 0x1818.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9b70).

- `glGetColorTableSGI` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9b78 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9b78-0xbeb9b84 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9b78 loads 8 bytes from abs 0x1820.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9b7c).

- `glGetColorTableParameterfvSGI` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9b84 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9b84-0xbeb9b90 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9b84 loads 8 bytes from abs 0x1828.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9b88).

- `glGetColorTableParameterivSGI` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9b90 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9b90-0xbeb9b9c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9b90 loads 8 bytes from abs 0x1830.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9b94).

- `glPointParameterfSGIS` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9c08 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9c08-0xbeb9c14 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9c08 loads 8 bytes from abs 0x1880.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9c0c).

- `glPointParameterfvSGIS` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbeb9c14 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbeb9c14-0xbeb9c20 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0xbeb9c14 loads 8 bytes from abs 0x1888.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbeb9c18).

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbeb9ec0`

`__glOdyim_Vertex2d` (32 bytes) makes no calls and loads no arguments in the facts. It stores three values to absolute 0x4000: one word at 0xbeb9ed0 and two single-precision values at 0xbeb9ed4 and 0xbeb9edc. The name suggests an immediate-mode two-coordinate vertex. Where the coordinates come from is not in the facts.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbeba0c0`

`__glOdyim_Vertex3d` (40 bytes) makes no calls and loads no arguments in the facts. It stores one word at 0xbeba0d4 and three single-precision values to absolute 0x4000 at 0xbeba0d8, 0xbeba0dc and 0xbeba0e4. It is the same kind of window writer as the Vertex2d entry. The source of the coordinate values is not established.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbeba1c0`

`__glOdyim_Vertex3i` (52 bytes) makes no calls and loads no arguments in the facts. It stores four words to absolute 0x4000 at 0xbeba1e0, 0xbeba1e4, 0xbeba1e8 and one more site. The name suggests an immediate-mode three-integer vertex. The source of the values is not established.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbeba3c0`

`__glOdyim_Vertex4i` (64 bytes) makes no calls and loads no arguments in the facts. It stores five words to absolute 0x4000 at 0xbeba3e8, 0xbeba3ec, 0xbeba3f0 and two more sites. The name suggests an immediate-mode four-integer vertex. The source of the values is not established.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbebf0c0`

`__glOdyim_TexCoord3d` (40 bytes) makes no calls and loads no arguments in the facts. It stores one word at 0xbebf0d4 and three single-precision values at 0xbebf0d8, 0xbebf0dc and 0xbebf0e4, all to absolute 0x4000. The name suggests an immediate-mode three-dimensional texture coordinate. The source of the values is not established.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbebf780`

`__glOdyim_ScratchColor3b` (28 bytes) makes no calls and loads no arguments in the facts. It stores four words to absolute 0x4000 at 0xbebf788, 0xbebf78c and 0xbebf790 and one more site. The name suggests a byte-color immediate-mode write into a scratch slot. The facts do not establish what "scratch" means here.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbebf840`

`__glOdyim_Color3d` (40 bytes) makes no calls and loads no arguments in the facts. It stores one word at 0xbebf854 and three single-precision values at 0xbebf858, 0xbebf85c and 0xbebf864, all to absolute 0x4000. The name suggests an immediate-mode three-double color. The source of the values is not established.

Grade: inferred.

Reviewed: 2026-11-12

### `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at `0xbebf880`

`__glOdyim_ScratchColor3d` (40 bytes) makes no calls and loads no arguments in the facts. It stores one word at 0xbebf894 and three single-precision values at 0xbebf898, 0xbebf89c and 0xbebf8a4, all to absolute 0x4000. It has the same shape as `__glOdyim_Color3d` at 0xbebf840. The name suggests a double-precision scratch color write. The source of the values is not established.

Grade: inferred.

Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbebfa80: **inferred.**
  `__glOdyim_ScratchColor3i` makes no calls. It stores four words to the absolute address 0x4000 (`sw` at 0xbebfa88, 0xbebfa8c and 0xbebfa90, plus one more in the same group) and returns at 0xbebfa94 with v0 unset. The name suggests it sets a color scratch word from three integer components, but the facts do not show where the stored values come from, and nothing in the range shows who reads 0x4000.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3s` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbebfb80: **inferred.**
  `__glOdyim_ScratchColor3s` has the same shape as the entry at 0xbebfa80: four stores to the absolute address 0x4000 (`sw` at 0xbebfb88, 0xbebfb8c and 0xbebfb90, plus one more), no calls, and a return at 0xbebfb94. The name suggests a three-component short color. The facts give no source for the values and no reader for 0x4000.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3ui` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbebfd80: **inferred.**
  `__glOdyim_ScratchColor3ui` is the same four-store pattern to 0x4000 (`sw` at 0xbebfd88, 0xbebfd8c and 0xbebfd90, plus one more), with no calls and a return at 0xbebfd94. The name suggests an unsigned-int color. The facts do not show the value sources.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3us` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbebfe80: **inferred.**
  `__glOdyim_ScratchColor3us` stores four words to 0x4000 (`sw` at 0xbebfe88, 0xbebfe8c and 0xbebfe90, plus one more) and returns at 0xbebfe94 with no calls. The name suggests an unsigned-short color. Value sources and the reader of 0x4000 are not in the facts.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4b` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbebff80: **inferred.**
  `__glOdyim_ScratchColor4b` is 32 bytes with no calls. It stores five words to 0x4000 (`sw` at 0xbebff88, 0xbebff8c and 0xbebff90, plus two more) and returns at 0xbebff98. The name suggests a four-component byte color. The facts do not show the stored values.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4dv` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbec0100: **inferred.**
  `__glOdyim_ScratchColor4dv` loads four doubles from its argument record, at offsets +0x0, +0x8, +0x10 and +0x18 (`ldc1` at 0xbec0100 through 0xbec0118). It then makes five stores to 0x4000: one `sw` at 0xbec0120 and four `swc1` (named at 0xbec0128, 0xbec0130 and 0xbec0134). It makes no calls and returns at 0xbec0138. The name suggests a four-component double color written as scratch words, which fits the loads. The facts do not say how the doubles become the stored words, so the conversion is open.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4i` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbec0280: **inferred.**
  `__glOdyim_ScratchColor4i` is 32 bytes, with five stores to 0x4000 (`sw` at 0xbec0288, 0xbec028c and 0xbec0290, plus two more) and no calls. It returns at 0xbec0298. The name suggests a four-component int color. Value sources are not in the facts.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4s` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbec0380: **inferred.**
  `__glOdyim_ScratchColor4s` matches the 4i entry: five stores to 0x4000 (`sw` at 0xbec0388, 0xbec038c and 0xbec0390, plus two more), no calls, return at 0xbec0398. The name suggests a four-component short color.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4ub` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbec0480: **inferred.**
  `__glOdyim_ScratchColor4ub` is the same five-store pattern to 0x4000 (`sw` at 0xbec0488, 0xbec048c and 0xbec0490, plus two more), with no calls and a return at 0xbec0498. The name suggests a four-component unsigned-byte color.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4ui` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbec0580: **inferred.**
  `__glOdyim_ScratchColor4ui` stores five words to 0x4000 (`sw` at 0xbec0588, 0xbec058c and 0xbec0590, plus two more), makes no calls and returns at 0xbec0598. The name suggests a four-component unsigned-int color.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4us` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbec0680: **inferred.**
  `__glOdyim_ScratchColor4us` stores five words to 0x4000 (`sw` at 0xbec0688, 0xbec068c and 0xbec0690, plus two more), makes no calls and returns at 0xbec0698. The name suggests a four-component unsigned-short color.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchIndexd` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbec0780: **inferred.**
  `__glOdyim_ScratchIndexd` is 24 bytes with no calls. It stores one word to 0x4000 with `sw` at 0xbec078c and one with `swc1` at 0xbec0794, then returns at 0xbec0790. The name suggests a double color index written as an integer word and a float word. The facts give the width of each store but not its source, so the conversion is unclear.
  Reviewed: 2026-11-12

- `glColor3b` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbec4000 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbec4000-0xbec4040 (64 bytes).
  It occupies 64 bytes.
  The `ld` at 0xbec4000 loads 8 bytes from abs 0x1b10.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbec4004).
  The instructions from 0xbec400c to 0xbec403c are not reached by any path from the entry, and their branches are not listed.

- `glVertex2d` in `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so` at 0xbec5500 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/gfx/arch/IP30ODSY64/libGLcore.so`.
  Range: 0xbec5500-0xbec5600 (256 bytes).
  It occupies 256 bytes.
  The `ld` at 0xbec5500 loads 8 bytes from abs 0x1a50.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xbec5504).
  The instructions from 0xbec550c to 0xbec55fc are not reached by any path from the entry, and their branches are not listed.
