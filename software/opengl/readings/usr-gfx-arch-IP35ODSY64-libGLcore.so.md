# Readings: `usr/gfx/arch/IP35ODSY64/libGLcore.so`

One entry per routine, filed here from the reading batches by binary.

- `ApplyParameterF` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a0650 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
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

- `ApplyParameterI` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a0d30 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
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

- `LoadAndSendStippledQuads` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a3840
  **Inferred.** Role (from name): sends stippled quads. The facts show four `ceil` calls (0x21a3888, 0x21a38b8, 0x21a38ec, 0x21a3d94), 95 stores (62 `sw`, 24 `swc1` and 9 `sb`), most at +0x0 from a base the facts do not resolve, and an unnamed call (0x21a4054) with a7 = 0x10000. It loads words at +0xfb0 and +0xfb4 and floats at +0x8, +0xc, +0x220 and +0x224 (0x21a3a80 through 0x21a3ab0), also from unresolved bases, and compares two doubles with `c.eq.d` (0x21a3c50). Whether the stores go to a fixed window at 0x10000, which base the loads use, which field each store carries, and what the arguments of the `ceil` calls are, is not in the facts. It returns one of a `ceil` result and an unresolved value (0x21a40ac).
  Reviewed: 2026-11-12

- `DrawBitmapUsingPolyStipple` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a40d0
  **Inferred.** The name points at drawing a bitmap through a polygon stipple, and the facts show a raster-position and validation path. The routine is large (2792 bytes). It calls `__glOdysseyUpdateRasterPos` (0x21a4204), `__glOdysseyImageCalcOdyEyeSpaceRasterPosZ` (0x21a4210), `__glOdysseyGetNumHWClipPlanes` (0x21a43c0) and `__glOdysseyValidateHardware` (0x21a4494), and sends an ioctl with request 0x6f64000d (0x21a4958). The constants 0x1700 (at 0x21a4890, 0x21a4a20), 0x1701 (at 0x21a4868, 0x21a4998) and 0x1702 (at 0x21a48b8, 0x21a4a8c) go to unnamed callees, and the call to `__glSetError` at 0x21a48ec has an unnamed code argument. The stipple stage itself is only partly visible, so its role is partly open.
  Reviewed: 2026-11-12

- `__glOdylc_Color3b` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a4db0
  **Inferred.** Role (from name): a display-list recording form of a three-component color entry point. It tests the word at absolute 0x1060 and branches to 0x21a4ea4 when it is zero (0x21a4dec). When it is nonzero and the count at 0x1048 is below 4 (signed, 0x21a4df8), it calls `__glSPDlistSpace` (0x21a4e18) with a0 = 0, arg1 and arg2 passed through, a3 = the word at 0x1020, a4 = 0x10000 and a5 = the count at 0x1048. The facts show four word stores, a doubleword store and a word store (0x21a4e64 through 0x21a4e80) with no resolved base, so what is written, and whether 0x1048 or 0x1058 is updated, is not shown. It returns the `__glSPDlistSpace` result (0x21a4ef0) or a value the facts do not resolve (0x21a4e94). The facts show no type conversion for the b suffix, so the difference from the other suffixes is not visible here.
  Reviewed: 2026-11-12

- `__glOdylc_Color3s` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a5820
  **Inferred.** Role (from name): a display-list recording form of a three-component color entry point. It has the same shape as `__glOdylc_Color3b`: it tests the word at absolute 0x1060 (0x21a585c), tests the count at 0x1048 against 4 (0x21a5868) and calls `__glSPDlistSpace` (0x21a5888) with the same arguments, and it is 328 bytes long. The facts show no difference that would reveal the s suffix's type, so the role is inferred from the name and the Color3b entry only.
  Reviewed: 2026-11-12

- `__glOdylc_Color3s` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a5820
  **Inferred.** Loads the pointer at [0x1020] and stores a word at offset 0x15e4 from it (`sw` at 0x21a583c, after a load of the same offset at 0x21a582c). It loads, rather than stores, the globals at abs 0x1048 and 0x1060: [0x1060] is compared with zero at 0x21a585c and [0x1048] is compared with 0x4 at 0x21a5868. It calls `__glSPDlistSpace` at 0x21a5888 with a0=0x0, a1 and a2 from entry, a3=[0x1020], a4=0x10000 and a5=[0x1048], on paths that pass those comparisons. It returns the `__glSPDlistSpace` result at 0x21a5960 or other values. Role (from name): records a three-component short color in a display list.
  Reviewed: 2026-11-12

- `__glOdylc_Color3ui` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a5d40
  **Inferred.** Role (from name): a display-list recording form of a three-component color entry point. It has the same shape as `__glOdylc_Color3b`: it tests the word at absolute 0x1060 (0x21a5d7c), tests the count at 0x1048 against 4 (0x21a5d88) and calls `__glSPDlistSpace` (0x21a5da8) with the same arguments, and it is 328 bytes long. The facts show no difference that would reveal the ui suffix's type, so the role is inferred from the name and the Color3b entry only.
  Reviewed: 2026-11-12

- `__glOdylc_Color3us` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a5fd0
  **Inferred.** Role (from name): a display-list recording form of a three-component color entry point. It has the same shape as `__glOdylc_Color3b`: it tests the word at absolute 0x1060 (0x21a600c), tests the count at 0x1048 against 4 (0x21a6018) and calls `__glSPDlistSpace` (0x21a6038) with the same arguments, and it is 328 bytes long. The facts show no difference that would reveal the us suffix's type, so the role is inferred from the name and the Color3b entry only.
  Reviewed: 2026-11-12

- `__glOdylc_Color4b` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a6260
  **Inferred.** Role (from name): a display-list recording form of a four-component color entry point. It tests the word at absolute 0x1060 (0x21a629c) and the count at 0x1048 against 5 (0x21a62a8), and calls `__glSPDlistSpace` (0x21a62cc) with arg1, arg2 and arg3 passed through, a4 = the word at 0x1020, a5 = 0x10000 and a6 = the count. Unlike the three-component entries it passes arg3 and compares the count with 5 instead of 4, and the facts show five word stores before the doubleword store where the three-component entries show four; the base of those stores is not resolved. The routine is 344 bytes long.
  Reviewed: 2026-11-12

- `__glOdylc_Color4i` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a6ab0
  **Inferred.** Role (from name): a display-list recording form of a four-component color entry point. It has the same shape as `__glOdylc_Color4b`: it tests the word at absolute 0x1060 (0x21a6aec), tests the count at 0x1048 against 5 (0x21a6af8) and calls `__glSPDlistSpace` (0x21a6b1c) with arg1, arg2 and arg3 passed through, and it is 344 bytes long. The facts show no difference that would reveal the i suffix's type.
  Reviewed: 2026-11-12

- `__glOdylc_Color4s` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a6d60
  **Inferred.** Role (from name): a display-list recording form of a four-component color entry point. It has the same shape as `__glOdylc_Color4b`: it tests the word at absolute 0x1060 (0x21a6d9c), tests the count at 0x1048 against 5 (0x21a6da8) and calls `__glSPDlistSpace` (0x21a6dcc) with arg1, arg2 and arg3 passed through, and it is 344 bytes long. The facts show no difference that would reveal the s suffix's type.
  Reviewed: 2026-11-12

- `__glOdylc_Color4ub` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a7010
  **Inferred.** Role (from name): a display-list recording form of a four-component color entry point. It has the same shape as `__glOdylc_Color4b`: it tests the word at absolute 0x1060 (0x21a704c), tests the count at 0x1048 against 5 (0x21a7058) and calls `__glSPDlistSpace` (0x21a707c) with arg1, arg2 and arg3 passed through, and it is 344 bytes long. The facts show no difference that would reveal the ub suffix's type.
  Reviewed: 2026-11-12

- `__glOdylc_Color4ui` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a72c0
  **Inferred.** Role (from name): a display-list recording form of a four-component color entry point. It has the same shape as `__glOdylc_Color4b`: it tests the word at absolute 0x1060 (0x21a72fc), tests the count at 0x1048 against 5 (0x21a7308) and calls `__glSPDlistSpace` (0x21a732c) with arg1, arg2 and arg3 passed through, and it is 344 bytes long. The facts show no difference that would reveal the ui suffix's type.
  Reviewed: 2026-11-12

- `__glOdylc_Color4us` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a7570
  **Inferred.** Role (from name): a display-list recording form of a four-component color entry point. It has the same shape as `__glOdylc_Color4b`: it tests the word at absolute 0x1060 (0x21a75ac), tests the count at 0x1048 against 5 (0x21a75b8) and calls `__glSPDlistSpace` (0x21a75dc) with arg1, arg2 and arg3 passed through, and it is 344 bytes long. The facts show no difference that would reveal the us suffix's type.
  Reviewed: 2026-11-12

- `__glOdyim_Clear` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a8800
  **Inferred.** Role (from name): a clear operation for the drawing state. It loads the word at absolute 0x1030 and the pointer at 0x1020. It calls `__glSetError` with 0x502 (0x21a884c, with the 0x1030 word as a1) when that word is neither 0 nor 2 (branches at 0x21a883c and 0x21a8844), and with 0x501 (0x21a889c) when a masked value (a0 and -0x4701) is nonzero (branch at 0x21a8890). It calls `__glOdysseyClear` (0x21a8b8c, 0x21a8db8), `__glOdysseySetDrawbuf` (0x21a8d6c, 0x21a8dd4) and `__glOdysseyIoctl` with request 0x6f64000d (0x21a8d14). Branches compare entries at 0x9f70, 0x9f74 and 0xbb80 (0x21a8930, 0x21a8948, 0x21a8960); the facts show these read, not written. What the error codes name is not in the facts.
  Reviewed: 2026-11-12

- `__glOdysseyClear` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a8e30
  **Inferred.** Role (from name): the hardware clear step that `__glOdyim_Clear` calls (at 0x21a8b8c and 0x21a8db8). It loads and stores words at +0x9f4c, +0x9f50, +0x9f7c, +0x9f80 and +0xbb80 from a base the facts do not resolve. It calls `__glOdysseyIoctl` with request 0x6f64000e (0x21a92dc) and `__glOdysseyValidateHardware` at 0x21a9258 when the word at a0+101972 is nonzero (branch at 0x21a9250) and at 0x21a9328 when it is nonzero (branch at 0x21a9320). It compares a5 with 0x3 (0x21a959c) and 0x4 (0x21a9594) and a3 with 0x2 (0x21a9118), and the facts do not name what those values select. The facts do not show a write to a window at 0x10000.
  Reviewed: 2026-11-12

- `ApplyViewport` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21a9e70 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
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

- `__glOdysseyInitDefaultValues` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21ade10
  **Inferred.** The routine makes 88 calls, 81 of them to `__glOdyim_*` state setters (for example `__glOdyim_Enable` at 0x219ad80, `__glOdyim_Disable` at 0x21a1ea0, `__glOdyim_Fogfv` at 0x21c4de0), which together look like a sequence that resets GL state to its defaults. It also calls `__glOdysseyImageInit` at 0x21cc8a0 and writes words into the argument block and to absolute addresses 0x10000 and 0x1030. The facts do not say what those absolute addresses map to.
  Reviewed: 2026-11-12

- `ApplyMaterialF` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21c7170
  **Inferred.** This routine makes no calls and has 55 branch instructions, 24 of them always taken, leaving 31 conditional branches. They test the second argument (a1) against 0x1200, 0x1201, 0x1202, 0x1600, 0x1601 and 0x1603 and test floating-point comparison results, so it looks like a dispatch on a material parameter name. It reads through a pointer chain from absolute 0x1020 and stores to absolute 0x10000. Role (from name): the `F` suffix suggests a float-valued variant of the material setter, which the facts do not confirm.
  Reviewed: 2026-11-12

- `ApplyMaterialI` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21c78d0
  **Inferred.** Role (from name): the integer-valued sibling of `ApplyMaterialF` at 0x21c7170. It has the same shape (no calls, 55 branch instructions of which 24 are always taken, the same absolute 0x1020 and 0x10000 uses), but it is 2332 bytes long against 1888. The facts do not show where the integer-to-hardware conversion happens, so the difference is left open.
  Reviewed: 2026-11-12

- `AddConvolutionBorders` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21e2650
  **Inferred.** The routine calls `__glOdysseyImageMovePixelsTexture` at 0x2200380, `LoadTextureFilter` at 0x21e0cc0 and `__glOdysseyProgramTexFilter` at 0x21faa10, with 90 branches over a 9664-byte range. Its name points at filling the border texels of a convolution filter kernel, and the callees fit that, but the facts do not show the border arithmetic in enough detail to confirm it.
  Reviewed: 2026-11-12

- `__glOdysseyImageMovePixelsCopy` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21fba30
  **Inferred.** Role (from name): the copy path of pixel movement. It calls `OdysseyImageCalcXferCopyParams` at 0x2201470 and `ImageCalcDmaFieldOffsets` at 0x2202f20, opens and closes pipe-memory references (`__glOdysseyOpenPMObjReference` at 0x220b780, `__glOdysseyClosePMObjReference` at 0x220bd70, plus the write-reference variants), calls `ImageCopyPixelBody` at 0x21fb5d0 from several sites (for example 0x21fc6d8), and issues ioctl request 0x6f64000d at 0x21fd8f0. The facts do not show which condition selects between the body calls and the ioctl. Error paths call `__glSetError` with 0x502 and 0x505.
  Reviewed: 2026-11-12

- `__glOdysseyImageMovePixelsDMAtoGfx` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x21fe0f0
  **Inferred.** Role (from name): a transfer of pixels from a host buffer into graphics memory. It calls `__glOdysseyImageCalcXferWriteParams` at 0x2201bd0, `ImageToDmaHostPixelSize` at 0x22035c0, `SendPixelsAsUserPIO` at 0x21fd930 (from three sites) and `__glOdysseyAssignToPMObj` at 0x220b2a0, and it issues ioctl request 0x6f64000d at 0x21ffbf4. The name and the DMA callees suggest a DMA-to-graphics upload, with programmed I/O as another route, but the facts do not show which route a given argument selects or whether one is a fallback for the other.
  Reviewed: 2026-11-12

- `__glOdysseyCreatePMObj` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x220ad70
  **Inferred.** The routine issues ioctl request 0x6f640001 at 0x220ae18, with a3, a4 and a5 loaded from its second argument block at offsets +20, +16 and +12. It also walks a set with `InitCSetCursor` (0x220ae50) and `NextCSetElem` (0x220ae68, 0x220af0c), looks elements up with `LookupKnownGroup` (0x220af30) and removes them with `RemoveKnownGroup` (0x220af50). It has three returns: 0 at 0x220ae9c, 1 at 0x220aef4 and 0 at 0x220af70; the facts do not show which condition reaches which. The `PMObj` name fits a pipe-memory object, which `OpenPipeMemReference` also suggests, but the facts do not settle what the object is.
  Reviewed: 2026-11-12

- `__glOdysseyDestroyPMObjGroup` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x220af80
  **Inferred.** Role (from name): a loop over a group of pipe-memory objects. It walks a set with `InitCSetCursor` at 0x220afc0 and `NextCSetElem` at 0x220afd8 and 0x220aff8, looks each element up with `LookupKnownGroup` at 0x220b024, calls `RemoveKnownGroup` at 0x220b038 only when that lookup returns nonzero (a zero result branches back to `NextCSetElem`), and after the loop issues ioctl request 0x6f640002 at 0x220b064. It returns 0 at 0x220b094 and 1 at 0x220b0c8; a zero ioctl result branches to 0x220b09c, and the facts do not say which return that reaches.
  Reviewed: 2026-11-12

- `__glOdysseyDestroyPMObj` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x220b0d0
  **Inferred.** Role (from name): the single-object counterpart of `__glOdysseyDestroyPMObjGroup` at 0x220af80. It makes the same callees (`InitCSetCursor`, `NextCSetElem`, `LookupKnownGroup`, `RemoveKnownGroup`) and the same ioctl request 0x6f640002, here at 0x220b130 and ahead of the cursor calls, and returns 0 or 1 at 0x220b118 and 0 at 0x220b148. The facts do not show why the group version and the single version are separate routines.
  Reviewed: 2026-11-12

- `__glOdysseyAssignToPMObj` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x220b2a0
  **Inferred.** The routine reads eight words from its eighth argument (a7) block at +0x0 through +0x1c and stores to the context at offset 0x285d0 at 0x220b3d8 and 0x220b3e8. It calls `CheckMMXfrArgs` at 0x220b220 and, when that returns nonzero, goes on to ioctl request 0x6f640006 at 0x220b380. A bit test on argument register a4 (mask 0x2) guards a store path. The name suggests attaching a request to a pipe-memory object, which the facts do not confirm.
  Reviewed: 2026-11-12

- `OpenPipeMemReference` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x220b510
  **Inferred.** The routine calls `__glOdysseyMIPS_SYNC` at 0x2317f20, which is probably a memory barrier, and then issues ioctl request 0x6f640003 at 0x220b5ec. It stores to absolute 0x10000 and returns 1 at 0x220b5bc. The barrier-then-ioctl order fits opening a reference to memory the hardware will use, but the facts do not say which memory.
  Reviewed: 2026-11-12

- `LookupKnownGroup` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x220bed0
  **Inferred.** The routine looks up a known group by id through `LookupCSetId` at 0x220c990. When the lookup returns zero and argument a2 is nonzero it calls an unresolved routine with size 0x98, clears the result with `bzero` and adds the group with `AddKnownGroup` at 0x220c2b0; it can also remove one with `RemoveKnownGroup` at 0x220c300 (0x220bfdc). It reports a `0x505` error through `__glSetError` at 0x227a070 on one path. It does not call `LookupCoresidRange`.
  Reviewed: 2026-11-12

- `LookupCoresidRange` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x220c010
  **Inferred.** The routine issues ioctl request 0x6f640004 at 0x220c0ec with argument register a4 set to 2, and calls `__glSetError` with 0x505 at 0x220c230; the facts do not show what condition reaches that call. It has returns of 0 at 0x220c120, 0 or an unknown value at 0x220c130 and an unknown value at 0x220c21c, so the facts do not show which return is the success path. The name suggests a range query for co-resident objects, but the facts do not say what "coresident" means in this code.
  Reviewed: 2026-11-12

- `__glOdysseySetProgram` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x220e490
  **Inferred.** The routine makes no calls and has 9 branches. It stores to absolute 0x10000 and returns the constant 0x298080c5 at 0x220e4bc. The name suggests it sets the current GL program, but the facts do not show what the stores carry or what 0x10000 maps to, so the role is open.
  Reviewed: 2026-11-12

- `__glOdylc_TexCoord2d` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2211220
  **Inferred.** The routine calls `__glSPDlistSpace` at 0x223fd50 from 0x2211278, passing the value at absolute 0x1048 as argument a2. It reads and writes absolute 0x1048, 0x1058 (8 bytes) and 0x1060, and it has a branch on absolute 0x1060 and one comparing the value at 0x1048 against 3. The `OdyLC` name prefix and the list-space call suggest the texture coordinate is written into a display-list buffer, but the facts do not show the buffer layout.
  Reviewed: 2026-11-12

- `__glOdylc_TexCoord2i` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x22116e0
  **Inferred.** Role (from name): the integer-argument version of `__glOdylc_TexCoord2d` at 0x2211220. It has the same shape: one call to `__glSPDlistSpace` at 0x223fd50 (with the value at absolute 0x1048 in a4 here rather than a2), the same absolute 0x1048, 0x1058 and 0x1060 accesses, and 6 branch instructions. The facts do not show how the integer coordinates are converted, so that difference is left open.
  Reviewed: 2026-11-12

- `__glOdylc_TexCoord3i` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2212080
  **Inferred.** This is the three-coordinate integer variant. It makes one call to `__glSPDlistSpace` at 0x223fd50, uses the same absolute 0x1048, 0x1058 and 0x1060 words, and has 6 branches over a 308-byte range. Its role is inferred to be the same list-space write as the 2d variants, but the third coordinate's handling is not shown in the facts.
  Reviewed: 2026-11-12

- `__glOdylc_TexCoord4i` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2212aa0
  **Inferred.** This is the four-coordinate integer variant. It makes one call to `__glSPDlistSpace` at 0x223fd50, uses the same absolute 0x1048, 0x1058 and 0x1060 words, and is 324 bytes long. Like its siblings, the role is inferred and the handling of the extra coordinates is not shown in the facts.
  Reviewed: 2026-11-12

- `DownsampleTextureThruHW` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x22157f0
  **Inferred.** The routine calls `ChooseSuitableBuzzTexModeBaseFmt` at 0x2214280 and `GetImageFmtEnumFromBuzzTexFormat` at 0x22141c0 to pick a hardware texture format, then `__glOdysseyImageCalcFieldFormat` at 0x21cd410. It calls `__glOdysseyImageLogBase2` at 0x2206200 and `__glOdysseyValidateHardware` at 0x21ac4a0, and it returns 0x7 at 0x2215fd8. The name suggests downsampling a texture on the hardware path, which the format-selection calls are consistent with, but the downsample filter itself is not visible in the facts.
  Reviewed: 2026-11-12

- `__glOdysseyWindowToNormalizedEyeZ` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2229060 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2229060-0x2229128 (200 bytes).
  It occupies 200 bytes.
  The `ld` at 0x2229084 loads 8 bytes from abs 0x1020.
  The `ldc1` at 0x2229090 loads 8 bytes from [0x1020]:8 +0x18a38.
  The `ldc1` at 0x2229098 loads 8 bytes from [0x1020]:8 +0x18a40.
  The `bgezall` at 0x2229080 calls __glOdysseyWindowToEyeZ [0x2228ee0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2229100 calls isnan with a0=?, a1=?, a2=?, a3=?.
  The `bc1t` branch at 0x22290c4 targets 0x22290e4, is taken when f12 < f0(=ret(__glOdysseyWindowToEyeZ)) (c.lt.d at 0x22290b8), and falls through when not (f12 < f0(=ret(__glOdysseyWindowToEyeZ)) (c.lt.d at 0x22290b8)).
  The `bc1f` branch at 0x22290d0 targets 0x22290fc, is taken when FP condition code 1 is false, and falls through when FP condition code 1 is true.
  The return at 0x22290dc has v0 = [0x1020]:8+131072.
  The return at 0x22290f4 has v0 = [0x1020]:8+131072.
  The return at 0x2229120 has v0 = ret(isnan).

- `__glOdysseySoftClipBeginTriangles` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x222ab80 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x222ab80-0x222abb4 (52 bytes).
  It occupies 52 bytes.
  The `sd` at 0x222ab94 stores 8 bytes to a0 (arg0 at entry) +0x4e30.
  The `ld` at 0x222ab9c loads 8 bytes from abs 0x2340508.
  The `ld` at 0x222aba0 loads 8 bytes from abs 0x233ef20.
  The `sd` at 0x222aba4 stores 8 bytes to a0 (arg0 at entry) +0x4920.
  The `sd` at 0x222abb0 stores 8 bytes to a0 (arg0 at entry) +0x4890.
  The return at 0x222abac has v0 = 0x222ab40.

- `CISendFc` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x222e7b0
  **Inferred.** The routine makes no calls. It loads one byte from the argument block at +0xc0 and several single-precision values from +0x18 through +0x24 and +0x98, then stores 3 words and 5 single-precision values to absolute 0x10000. It returns the constant 0xffffffff8080d005 at 0x222e80c. The `CI` prefix and the `Fc` suffix are not explained by the facts, so the packet's meaning is open.
  Reviewed: 2026-11-12

- `CISendClippedBmFmN` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x222ecd0
  **Inferred.** This routine has the same structure as `CISendFc` at 0x222e7b0. It reads the same byte at +0xc0 and a larger set of float fields from the argument block (+0x18 through +0x24, +0x98, +0xa8, +0xc8 through +0xd0), and it writes 11 words and 39 single-precision values to absolute 0x10000. It returns the same constant 0xffffffff8080d005 at 0x222ee28. The shared return constant hints at a common header, which is an inference, and the `Bm` and `FmN` parts of the name are not explained by the facts.
  Reviewed: 2026-11-12

- `__glOdysseyQueryHyperpipeBestRect` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2238e80 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2238e80-0x2238ef4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0x2238e94 loads 4 bytes from a0 (arg0 at entry) +0x285d8.
  The `jalr` at 0x2238ed0 calls __glOdysseyIoctl [0x221da60] with a0=a0 at entry (arg0), a1=0x6f640016, a2=sp-48, a3=0x1, a5=0x10e038.
  The return at 0x2238eec has v0 = one of 0x0, 0x1.

- `__glOdysseyHyperpipeStereo` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2239050
  **Inferred.** The routine loads a word from +0x285d8 of its argument and a word through argument a3. It calls ioctl request 0x6f640018 at 0x22390a0 with a4 = 0x10de68 and a5 loaded from offset 165336 of the context, then returns 0 or 1 at 0x22390bc. The name suggests a stereo setup on the hyperpipe path, but the constant 0x10de68 is not explained, so that part is open.
  Reviewed: 2026-11-12

- `__glOdysseyHyperpipeStereo` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2239050
  **Inferred.** Makes one `__glOdysseyIoctl` call at 0x22390a0 with a1=0x6f640018 and a2=sp-48 and returns 0x0 or 0x1 at 0x22390bc. Role (from name): sets or queries the hyperpipe stereo setting.
  Reviewed: 2026-11-12

- `__glOdysseyBindHyperpipe` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2239260 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2239260-0x22392cc (108 bytes).
  It occupies 108 bytes.
  The `ld` at 0x2239260 loads 8 bytes from abs 0x1020.
  The `lbu` at 0x2239264 loads 1 byte from [0x1020]:8 +0xde6.
  The `jalr` at 0x2239298 calls __glOdysseyIoctl [0x221da60] with a0=[0x1020]:8, a1=0x6f640014, a2=sp-32, a3=a3 at entry (arg3), a4=a1 at entry (arg1).
  The `beq` branch at 0x223927c targets 0x22392bc, is taken when v0(=[[0x1020]:8+3558]:1) == 0, and falls through when v0(=[[0x1020]:8+3558]:1) != 0.
  The return at 0x22392b4 has v0 = one of 0x0, 0x1.
  The return at 0x22392c4 has v0 = 0x1.

- `__glOdysseyUnbindHyperpipe` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x22392d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x22392d0-0x2239320 (80 bytes).
  It occupies 80 bytes.
  The `ld` at 0x22392e8 loads 8 bytes from abs 0x1020.
  The `jalr` at 0x22392fc calls __glOdysseyIoctl [0x221da60] with a0=[0x1020]:8, a1=0x6f640015, a2=sp-32, a3=a3 at entry (arg3).
  The return at 0x2239318 has v0 = one of 0x0, 0x1.

- `__glChangeWindowSize` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x227a2e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x227a2e0-0x227a400 (288 bytes).
  It occupies 288 bytes.
  The `sw` at 0x227a2e8 stores 4 bytes to a0 (arg0 at entry) +0xfdc.
  The `sw` at 0x227a2f4 stores 4 bytes to a0 (arg0 at entry) +0xfd8.
  The `ld` at 0x227a300 loads 8 bytes from a0 (arg0 at entry) +0x9950.
  The `ld` at 0x227a310 loads 8 bytes from [a0+39248]:8 +0x58.
  The `lbu` at 0x227a334 loads 1 byte from a0 (arg0 at entry) +0xde6.
  The `ld` at 0x227a340 loads 8 bytes from a0 (arg0 at entry) +0x9958.
  The `ld` at 0x227a344 loads 8 bytes from [a0+39256]:8 +0x58.
  The `lbu` at 0x227a354 loads 1 byte from a0 (arg0 at entry) +0xde8.
  The `ld` at 0x227a360 loads 8 bytes from a0 (arg0 at entry) +0x9dc8.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0xde9, including `lbu` at 0x227a36c, `lbu` at 0x227a3fc.
  The `ld` at 0x227a378 loads 8 bytes from a0 (arg0 at entry) +0x9d38.
  The `lbu` at 0x227a390 loads 1 byte from a0 (arg0 at entry) +0xdea.
  The `ld` at 0x227a39c loads 8 bytes from a0 (arg0 at entry) +0x9c60.
  The `ld` at 0x227a3b4 loads 8 bytes from a0 (arg0 at entry) +0x4850.
  The `ld` at 0x227a3e0 loads 8 bytes from a0 (arg0 at entry) +0x9e08.
  The `jalr` at 0x227a32c calls (unknown callee) with a0=[a0+39248]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x227a34c calls (unknown callee) with a0=[a0+39256]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0x227a388 calls (unknown callee) with a0=a0+40160, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0x227a3ac calls (unknown callee) with a0=a0+39944, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0x227a3c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x227a3f0 calls (unknown callee) with a0=a0+40368, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `beq` branch at 0x227a338 targets 0x227a354, is taken when t8(=[a0+3558]:1) == 0, and falls through when t8(=[a0+3558]:1) != 0.
  The `beq` branch at 0x227a358 targets 0x227a36c, is taken when t9(=[a0+3560]:1) == 0, and falls through when t9(=[a0+3560]:1) != 0.
  The `bne` branch at 0x227a364 targets 0x227a3e0, is taken when ra(=[a0+40392]:8) != 0, and falls through when ra(=[a0+40392]:8) == 0.
  The `beq` branch at 0x227a370 targets 0x227a390, is taken when at(=[a0+3561]:1) == 0, and falls through when at(=[a0+3561]:1) != 0.
  The `beq` branch at 0x227a394 targets 0x227a3b4, is taken when a1(=[a0+3562]:1) == 0, and falls through when a1(=[a0+3562]:1) != 0.
  The `beq` branch at 0x227a3f8 targets 0x227a370 and is always taken.
  The return at 0x227a3d8 has v0 = ret(?).

- `__glChangeReadWindowSize` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x227a400 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x227a400-0x227a40c (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0x227a400 stores 4 bytes to a0 (arg0 at entry) +0xfe4.
  The `sw` at 0x227a408 stores 4 bytes to a0 (arg0 at entry) +0xfe0.
  The return at 0x227a404 has v0 = ?.

- `glBlendColorEXT` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318bc0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318bc0-0x2318bcc (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318bc0 loads 8 bytes from abs 0x15d0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318bc4).

- `glBlendEquationEXT` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318bcc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318bcc-0x2318bd8 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318bcc loads 8 bytes from abs 0x15d8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318bd0).

- `glTexSubImage1DEXT` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318be4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318be4-0x2318bf0 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318be4 loads 8 bytes from abs 0x15e8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318be8).

- `glTexSubImage2DEXT` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318bf0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318bf0-0x2318bfc (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318bf0 loads 8 bytes from abs 0x15f0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318bf4).

- `glConvolutionFilter1DEXT` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318bfc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318bfc-0x2318c08 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318bfc loads 8 bytes from abs 0x15f8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318c00).

- `glConvolutionFilter2DEXT` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318c08 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318c08-0x2318c14 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318c08 loads 8 bytes from abs 0x1600.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318c0c).

- `glConvolutionParameterfEXT` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318c14 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318c14-0x2318c20 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318c14 loads 8 bytes from abs 0x1608.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318c18).

- `glConvolutionParameterfvEXT` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318c20 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318c20-0x2318c2c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318c20 loads 8 bytes from abs 0x1610.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318c24).

- `glConvolutionParameteriEXT` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318c2c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318c2c-0x2318c38 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318c2c loads 8 bytes from abs 0x1618.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318c30).

- `glConvolutionParameterivEXT` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318c38 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318c38-0x2318c44 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318c38 loads 8 bytes from abs 0x1620.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318c3c).

- `glCopyConvolutionFilter1DEXT` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318c44 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318c44-0x2318c50 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318c44 loads 8 bytes from abs 0x1628.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318c48).

- `glCopyConvolutionFilter2DEXT` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318c50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318c50-0x2318c5c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318c50 loads 8 bytes from abs 0x1630.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318c54).

- `glSeparableFilter2DEXT` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318c8c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318c8c-0x2318c98 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318c8c loads 8 bytes from abs 0x1658.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318c90).

- `glHistogramEXT` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318ce0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318ce0-0x2318cec (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318ce0 loads 8 bytes from abs 0x1690.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318ce4).

- `glMinmaxEXT` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318cec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318cec-0x2318cf8 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318cec loads 8 bytes from abs 0x1698.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318cf0).

- `glResetHistogramEXT` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318cf8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318cf8-0x2318d04 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318cf8 loads 8 bytes from abs 0x16a0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318cfc).

- `glResetMinmaxEXT` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318d04 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318d04-0x2318d10 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318d04 loads 8 bytes from abs 0x16a8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318d08).

- `glTexImage3DEXT` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318d10 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318d10-0x2318d1c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318d10 loads 8 bytes from abs 0x16b0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318d14).

- `glTexSubImage3DEXT` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318d1c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318d1c-0x2318d28 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318d1c loads 8 bytes from abs 0x16b8.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318d20).

- `glArrayElementEXT` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318d28 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318d28-0x2318d34 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318d28 loads 8 bytes from abs 0x16c0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318d2c).

- `glGetPointervEXT` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318d58 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318d58-0x2318d64 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318d58 loads 8 bytes from abs 0x16e0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318d5c).

- `glBindTextureEXT` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318da0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318da0-0x2318dac (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318da0 loads 8 bytes from abs 0x1710.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318da4).

- `glPrioritizeTexturesEXT` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318dd0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318dd0-0x2318ddc (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318dd0 loads 8 bytes from abs 0x1730.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318dd4).

- `glCopyTexImage1DEXT` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318ddc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318ddc-0x2318de8 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318ddc loads 8 bytes from abs 0x1738.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318de0).

- `glCopyTexImage2DEXT` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318de8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318de8-0x2318df4 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318de8 loads 8 bytes from abs 0x1740.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318dec).

- `glCopyTexSubImage1DEXT` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318df4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318df4-0x2318e00 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318df4 loads 8 bytes from abs 0x1748.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318df8).

- `glCopyTexSubImage2DEXT` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318e00 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318e00-0x2318e0c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318e00 loads 8 bytes from abs 0x1750.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318e04).

- `glCopyTexSubImage3DEXT` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318e0c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318e0c-0x2318e18 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318e0c loads 8 bytes from abs 0x1758.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318e10).

- `glColorTableSGI` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318f08 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318f08-0x2318f14 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318f08 loads 8 bytes from abs 0x1800.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318f0c).

- `glColorTableParameterfvSGI` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318f14 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318f14-0x2318f20 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318f14 loads 8 bytes from abs 0x1808.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318f18).

- `glColorTableParameterivSGI` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318f20 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318f20-0x2318f2c (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318f20 loads 8 bytes from abs 0x1810.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318f24).

- `glCopyColorTableSGI` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318f2c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318f2c-0x2318f38 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318f2c loads 8 bytes from abs 0x1818.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318f30).

- `glPointParameterfSGIS` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318fc8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318fc8-0x2318fd4 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318fc8 loads 8 bytes from abs 0x1880.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318fcc).

- `glPointParameterfvSGIS` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2318fd4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2318fd4-0x2318fe0 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x2318fd4 loads 8 bytes from abs 0x1888.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2318fd8).

- `__glOdyim_Vertex2d` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2319380
  **Inferred.** The routine has no calls and no branches. It stores one word and two single-precision values to absolute 0x10000 and returns 0x10000 at 0x231939c. The shape (one word plus two floats) fits a two-coordinate vertex submission, but the facts do not show what the word is.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex3d` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2319580
  **Inferred.** The routine has no calls and no branches. It stores one word and three single-precision values to absolute 0x10000 and returns 0x10000 at 0x23195a4. The shape fits a three-coordinate vertex, following the same pattern as `__glOdyim_Vertex2d` at 0x2319380, with the same unexplained word.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex3i` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2319680
  **Inferred.** The routine has no calls and no branches. It stores four words to absolute 0x10000 and returns 0x10000 at 0x23196b0. The integer name against the float-store pattern of `__glOdyim_Vertex3d` at 0x2319580 is worth a check, because the facts show words, not floats, and the conversion is not shown.
  Reviewed: 2026-11-12

- `__glOdyim_Vertex4i` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2319940
  **Inferred.** The name suggests the immediate-mode four-coordinate integer vertex call. The body is five word stores to the absolute address 0x10000 (`sw` at 0x231996c, 0x2319970 and 0x2319974 among them) and it returns with v0 = 0x10000 at 0x231997c. The facts do not show which argument register feeds which store, so the vertex layout is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_TexCoord3d` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231e800
  **Inferred.** The name suggests the texture-coordinate call with three doubles. The body has one word store at 0x231e818 and three single-float stores at 0x231e81c, 0x231e820 and 0x231e828, all to 0x10000, then returns v0 = 0x10000 at 0x231e824. The split of the double arguments into those stores is not shown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3b` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231ef00
  **Inferred.** The name suggests a three-byte color entry that writes into a scratch record. The body is four word stores to 0x10000 (`sw` at 0x231ef0c, 0x231ef10 and 0x231ef14) followed by a return with v0 = 0x10000 at 0x231ef18. The record layout the stores fill is not visible in the facts.
  Reviewed: 2026-11-12

- `__glOdyim_Color3d` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231efc0
  **Inferred.** The name suggests the three-component double color call. The body makes one word store at 0x231efd8 and three single-float stores at 0x231efdc, 0x231efe0 and 0x231efe8, all to 0x10000, and returns v0 = 0x10000 at 0x231efe4. Which store carries which component is not established.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3d` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231f000
  **Inferred.** The name suggests the same three-double color call as `Color3d`, with a scratch destination. The body is one word store at 0x231f018 and three single-float stores at 0x231f01c, 0x231f020 and 0x231f028, all to 0x10000, then a return with v0 = 0x10000 at 0x231f024. The facts do not separate it from `Color3d` beyond its address.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3i` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231f200
  **Inferred.** The name suggests the three-integer color call with a scratch destination. The body is four word stores to 0x10000 (`sw` at 0x231f20c, 0x231f210 and 0x231f214) and a return with v0 = 0x10000 at 0x231f218. No argument loads appear in the facts, so the source of the stored values is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3s` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231f300
  **Inferred.** The name suggests the three-short color call with a scratch destination. The body is four word stores to 0x10000 (`sw` at 0x231f30c, 0x231f310 and 0x231f314) and a return with v0 = 0x10000 at 0x231f318. The width of the stored values is not confirmed beyond the word stores.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3ui` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231f500
  **Inferred.** The name suggests the three-unsigned-integer color call with a scratch destination. The body is four word stores to 0x10000 (`sw` at 0x231f50c, 0x231f510 and 0x231f514) and a return with v0 = 0x10000 at 0x231f518. The facts do not show the stored values' origin.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor3us` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231f600
  **Inferred.** The name suggests the three-unsigned-short color call with a scratch destination. The body is four word stores to 0x10000 (`sw` at 0x231f60c, 0x231f610 and 0x231f614) and a return with v0 = 0x10000 at 0x231f618. Its facts have the same shape as `ScratchColor3i`, `ScratchColor3s` and `ScratchColor3ui` in this batch, and nothing in them separates it from those.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4b` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231f700
  **Inferred.** The name suggests the four-byte color call with a scratch destination. The body is five word stores to 0x10000 (`sw` at 0x231f70c, 0x231f710 and 0x231f714 among them) and a return with v0 = 0x10000 at 0x231f71c. The facts do not show how the four components map onto the five stored words.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4dv` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231f8c0
  **Inferred.** The name suggests the color call taking a pointer to four doubles. The facts show four 8-byte `ldc1` loads from the argument in a0 at offsets 0x0, 0x8, 0x10 and 0x18 (at 0x231f8c0, 0x231f8cc, 0x231f8d4 and 0x231f8dc), then one word store at 0x231f8e4 and four single-float stores at 0x231f8ec, 0x231f8f4 and 0x231f8f8 among them, all to 0x10000. It returns v0 = 0x10000 at 0x231f8fc.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4i` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231fa80
  **Inferred.** The name suggests the four-integer color call with a scratch destination. The body is five word stores to 0x10000 (`sw` at 0x231fa8c, 0x231fa90 and 0x231fa94 among them) and a return with v0 = 0x10000 at 0x231fa9c. The facts do not show which argument becomes which stored word.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4s` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231fb80
  **Inferred.** The name suggests the four-short color call with a scratch destination. The body is five word stores to 0x10000 (`sw` at 0x231fb8c, 0x231fb90 and 0x231fb94 among them) and a return with v0 = 0x10000 at 0x231fb9c. The width of the stored values beyond the word stores is not established.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4ub` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231fc80
  **Inferred.** The name suggests the four-unsigned-byte color call with a scratch destination. The body is five word stores to 0x10000 (`sw` at 0x231fc8c, 0x231fc90 and 0x231fc94 among them). The facts do not show the mapping from the byte arguments to those stores.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4ui` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231fd80
  **Inferred.** The name suggests the four-unsigned-integer color call with a scratch destination. The body is five word stores to 0x10000 (`sw` at 0x231fd8c, 0x231fd90 and 0x231fd94 among them). The facts show no argument loads, so the stored values' origin is unknown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchColor4us` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231fe80
  **Inferred.** The name suggests the four-unsigned-short color call with a scratch destination. The body is five word stores to 0x10000 (`sw` at 0x231fe8c, 0x231fe90 and 0x231fe94 among them). Its facts have the same shape as `ScratchColor4i`, `ScratchColor4s`, `ScratchColor4ub` and `ScratchColor4ui` in this batch, and the difference between them is not shown.
  Reviewed: 2026-11-12

- `__glOdyim_ScratchIndexd` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x231ff80
  **Inferred.** The name suggests the double color-index call with a scratch destination. The body makes one word store at 0x231ff90 and one single-float store at 0x231ff98, both to 0x10000. The facts do not show how the double argument is split across those two stores.
  Reviewed: 2026-11-12

- `glColor3b` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2324000 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2324000-0x2324080 (128 bytes).
  It occupies 128 bytes.
  The `ld` at 0x2324000 loads 8 bytes from abs 0x1ba0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2324004).
  The instructions from 0x232400c to 0x232407c are not reached by any path from the entry, and their branches are not listed.

- `glVertex2d` in `usr/gfx/arch/IP35ODSY64/libGLcore.so` at 0x2326900 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IP35ODSY64/libGLcore.so`.
  Range: 0x2326900-0x2326a00 (256 bytes).
  It occupies 256 bytes.
  The `ld` at 0x2326900 loads 8 bytes from abs 0x1ae0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x2326904).
  The instructions from 0x232690c to 0x23269fc are not reached by any path from the entry, and their branches are not listed.
