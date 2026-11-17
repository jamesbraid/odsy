# Readings: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_retrace.o)`

One entry per routine, filed here from the reading batches by binary.

## `gf_OdsyUnSchedSwapBuf` at `0x980`
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_retrace.o)`.
  Range: 0x980-0xb28 (424 bytes).
  It occupies 424 bytes.
  The `ld` at 0x988 loads 8 bytes from a0 (arg0 at entry) +0x28.
  3 such `lw` accesses load 4 bytes from [a0+40]:8 +0x6f98, including `lw` at 0x9bc, `lw` at 0xa78, `lw` at 0xa90.
  The `lw` at 0x9e4 loads 4 bytes from [a0+40]:8 +0x6f94.
  The `sw` at 0x9ec stores 4 bytes to [a0+40]:8 +0x6f94.
  2 such `lw` accesses load 4 bytes from ([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3)) +0x6fb8, including `lw` at 0x9f0, `lw` at 0xa10.
  The `lw` at 0xa00 loads 4 bytes from [a0+40]:8 +0x6f8c.
  The `sw` at 0xa08 stores 4 bytes to [a0+40]:8 +0x6f8c.
  The `lw` at 0xa34 loads 4 bytes from ?.
  The `sw` at 0xa3c stores 4 bytes to ?.
  The `sw` at 0xa48 stores 4 bytes to ([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3)) +0x6fb8.
  The `lw` at 0xa4c loads 4 bytes from [a0+40]:8 +0x6f80.
  The `ld` at 0xa5c loads 8 bytes from [a0+40]:8 +0x338.
  The `sw` at 0xa60 stores 4 bytes to [a0+40]:8 +0x6f80.
  The `sw` at 0xa64 stores 4 bytes to [[a0+40]:8+824]:8 +0x10bc.
  2 such `lw` accesses load 4 bytes from [a0+40]:8 +0x330, including `lw` at 0xa6c, `lw` at 0xadc.
  The `ld` at 0xaa8 loads 8 bytes from sym(.data) +0x0.
  The `ld` at 0xab4 loads 8 bytes from sym(.data) +0x8.
  The `jal` at 0x9b0 calls mutex_lock with a0=[a0+40]:8+28504, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xac8 calls sv_timedwait with a0=[a0+40]:8+28520, a1=0x19, a2=[a0+40]:8+28504, a3=0x0, a4=0x0, a5=sp-64, a6=0x0.
  The `jal` at 0xad4 calls mutex_lock with a0=[a0+40]:8+28504, a1=0x19, a2=?, a3=?.
  The `jal` at 0xaec calls mutex_unlock with a0=[a0+40]:8+28504, a1=?, a2=?, a3=?.
  The `jal` at 0xb18 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x99c targets 0xb10, is taken when a2 >= 0x20 (signed), and falls through when a2 < 0x20 (signed).
  The `beq` branch at 0x9dc targets 0xae8, is taken when (s1(?) & v1(=[[a0+40]:8+28568])) == 0, and falls through when (s1(?) & v1(=[[a0+40]:8+28568])) != 0.
  The `beq` branch at 0x9f8 targets 0xa4c, is taken when s1(?) == a1(=[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28600]), and falls through when s1(?) != a1(=[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28600]).
  The `beq` branch at 0xa2c targets 0xa40, is taken when (t1(=[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28600]) & t2(?)) == 0, and falls through when (t1(=[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28600]) & t2(?)) != 0.
  The `bne` branch at 0xa40 targets 0xa10, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0xa54 targets 0xa6c, is taken when (s1(?) & v0(=[[a0+40]:8+28544])) == 0, and falls through when (s1(?) & v0(=[[a0+40]:8+28544])) != 0.
  The `bne` branch at 0xa70 targets 0xae8, is taken when t9(=[[a0+40]:8+816]) != 0, and falls through when t9(=[[a0+40]:8+816]) == 0.
  The `beq` branch at 0xa80 targets 0xae8, is taken when (s1(?) & ra(=[[a0+40]:8+28568])) == 0, and falls through when (s1(?) & ra(=[[a0+40]:8+28568])) != 0.
  The `beq` branch at 0xa88 targets 0xaa0 and is always taken.
  The `beq` branch at 0xa98 targets 0xae8, is taken when (s1(?) & at(=[[a0+40]:8+28568])) == 0, and falls through when (s1(?) & at(=[[a0+40]:8+28568])) != 0.
  The `beq` branch at 0xae0 targets 0xa90, is taken when a0(=[[a0+40]:8+816]) == 0, and falls through when a0(=[[a0+40]:8+816]) != 0.
  The `beq` branch at 0xb20 targets 0xafc and is always taken.
  The return at 0xb08 has v0 = one of 0x0, 0x16.

## `gf_OdsySchedMGRSwapBuf` at `0x1124`
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_retrace.o)`.
  Range: 0x1124-0x130c (488 bytes).
  It occupies 488 bytes.
  The `ld` at 0x112c loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x1170 loads 4 bytes from [a0+40]:8 +0x6f80.
  The `ld` at 0x1180 loads 8 bytes from [a0+40]:8 +0x6f78.
  The `ld` at 0x118c loads 8 bytes from [a0+40]:8 +0x338.
  The `sw` at 0x1190 stores 4 bytes to [[a0+40]:8+824]:8 +0x10bc.
  The `sw` at 0x1198 stores 4 bytes to [a0+40]:8 +0x6f80.
  2 such `lw` accesses load 4 bytes from [a0+40]:8 +0x6f98, including `lw` at 0x119c, `lw` at 0x12f4.
  The `sw` at 0x11b0 stores 4 bytes to [a0+40]:8 +0x6f98.
  The `ld` at 0x11bc loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x11c8 loads 8 bytes from [a0+72]:8 +0x70.
  The `sd` at 0x11cc stores 8 bytes to ([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3)) +0x6fa8.
  The `sd` at 0x11d0 stores 8 bytes to ([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3)) +0x6fc0.
  2 such `ld` accesses load 8 bytes from ([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3)) +0x6fa8, including `ld` at 0x11d4, `ld` at 0x122c.
  The `ld` at 0x11dc loads 8 bytes from [([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28584]:8 +0xb0.
  The `lhu` at 0x11e4 loads 2 bytes from [[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28584]:8+176]:8 +0x2b3c.
  The `sh` at 0x11e8 stores 2 bytes to ([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3)) +0x6fb0.
  The `sw` at 0x11ec stores 4 bytes to ([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3)) +0x6fc8.
  The `sw` at 0x11f0 stores 4 bytes to ([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3)) +0x6fb4.
  The `sw` at 0x11f4 stores 4 bytes to ([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3)) +0x6fcc.
  The `sw` at 0x11fc stores 4 bytes to ([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3)) +0x6fb8.
  The `lw` at 0x1204 loads 4 bytes from [a0+40]:8 +0x6fa0.
  The `lw` at 0x120c loads 4 bytes from [a0+40]:8 +0x6f9c.
  The `sw` at 0x1220 stores 4 bytes to [a0+40]:8 +0x6fa0.
  The `sw` at 0x1228 stores 4 bytes to [a0+40]:8 +0x6f9c.
  The `lw` at 0x1230 loads 4 bytes from [([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28584]:8 +0xf4.
  The `ld` at 0x1234 loads 8 bytes from [a0+40]:8 +0x370.
  The `lhu` at 0x123c loads 2 bytes from ([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3)) +0x6fb0.
  The `lhu` at 0x1244 loads 2 bytes from ([[a0+40]:8+880]:8 + ([[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28584]:8+244] + [[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28584]:8+244])) +0x0.
  The `lw` at 0x1250 loads 4 bytes from [a0+40]:8 +0x6f84.
  The `sw` at 0x1258 stores 4 bytes to [a0+40]:8 +0x6f84.
  2 such `lh` accesses load 2 bytes from [a0+40]:8 +0x316, including `lh` at 0x12a0, `lh` at 0x12c0.
  The `jal` at 0x1168 calls mutex_lock with a0=[a0+40]:8+28504, a1=0x19, a2=a2 at entry (arg2), a3=a4 at entry (arg4).
  The `jal` at 0x125c calls mutex_unlock with a0=[a0+40]:8+28504, a1=?, a2=?, a3=?.
  The `jal` at 0x1284 calls odsySwapBuffer with a0=[a0+40]:8, a1=a2 at entry (arg2), a2=[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28592]:2, a3=([[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28584]:8+244] + [[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28584]:8+244]), a5=[[a0+40]:8+28576].
  The `jal` at 0x12a4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=[[a0+40]:8+790]:2, a3=a2 at entry (arg2).
  The `jal` at 0x12c4 calls cmn_err with a0=0x5, a1=sym(.rodata), a2=[[a0+40]:8+790]:2, a3=a2 at entry (arg2).
  The `jal` at 0x12e0 calls sv_wait with a0=?, a1=0x19, a2=[a0+40]:8+28504, a3=0x0.
  The `jal` at 0x12ec calls mutex_lock with a0=[a0+40]:8+28504, a1=0x19, a2=?, a3=?.
  The `bltz` branch at 0x1144 targets 0x1294, is taken when a2 < 0 (signed), and falls through when a2 >= 0 (signed).
  The `beq` branch at 0x1158 targets 0x1294, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1178 targets 0x119c, is taken when at(=[[a0+40]:8+28544]) == 0, and falls through when at(=[[a0+40]:8+28544]) != 0.
  The `bne` branch at 0x1184 targets 0x119c, is taken when v0(=[[a0+40]:8+28536]:8) != 0, and falls through when v0(=[[a0+40]:8+28536]:8) == 0.
  The `bne` branch at 0x11a4 targets 0x12b4, is taken when (s2(?) & v0(=[[a0+40]:8+28568])) != 0, and falls through when (s2(?) & v0(=[[a0+40]:8+28568])) == 0.
  The `beq` branch at 0x1248 targets 0x1284, is taken when a1(=[([[a0+40]:8+880]:8 + ([[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28584]:8+244] + [[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28584]:8+244]))]:2) == a2(=[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28592]:2), and falls through when a1(=[([[a0+40]:8+880]:8 + ([[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28584]:8+244] + [[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28584]:8+244]))]:2) != a2(=[([a0+40]:8 + (((a2 << 0x2) + a2) << 0x3))+28592]:2).
  The `beq` branch at 0x128c targets 0x125c and is always taken.
  The `beq` branch at 0x12ac targets 0x126c and is always taken.
  The `bne` branch at 0x12fc targets 0x12d8, is taken when (s2(?) & v0(=[[a0+40]:8+28568])) != 0, and falls through when (s2(?) & v0(=[[a0+40]:8+28568])) == 0.
  The `beq` branch at 0x1304 targets 0x11ac and is always taken.
  The return at 0x127c has v0 = one of 0x0, 0x16.
