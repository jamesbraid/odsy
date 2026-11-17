# Readings: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`

One entry per routine, filed here from the reading batches by binary.

- `odsyInitDrawables` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Range: 0x0-0x5c (92 bytes).
  It occupies 92 bytes.
  The `sd` at 0x1c stores 8 bytes to a0 (arg0 at entry) +0x2918.
  The `jal` at 0x10 calls odsyHashAlloc with a0=0xd, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x30 calls mrlock_init with a0=a0+10528, a1=0x1, a2=sym(.rodata), a3=-0x1, a5=sym(.rodata).
  The `jal` at 0x4c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x18 targets 0x48, is taken when v0(=ret(odsyHashAlloc)) == 0, and falls through when v0(=ret(odsyHashAlloc)) != 0.
  The `beq` branch at 0x54 targets 0x24 and is always taken.
  The return at 0x40 has v0 = ret(mrlock_init).

- `odsyFindDrawable` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)` at 0x5c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Range: 0x5c-0xc8 (108 bytes).
  It occupies 108 bytes.
  The `ld` at 0x98 loads 8 bytes from a0 (arg0 at entry) +0x2918.
  The `jal` at 0x78 calls mraccessf with a0=a0+10528, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa0 calls odsyHashLookup with a0=[a0+10520]:8, a1=?, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0xac calls mrunlock with a0=a0+10528, a1=?, a2=?, a3=?.
  The return at 0xc0 has v0 = ret(odsyHashLookup).

- `odsyCreateDrawable` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)` at 0xc8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Range: 0xc8-0x10c (68 bytes).
  It occupies 68 bytes.
  The `sw` at 0xf8 stores 4 bytes to ret(kmem_alloc) +0x20.
  The `sw` at 0x100 stores 4 bytes to ret(kmem_alloc) +0x10.
  The `jal` at 0xd8 calls kmem_alloc with a0=0x28, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xe4 targets 0xf4, is taken when v0(=ret(kmem_alloc)) != 0, and falls through when v0(=ret(kmem_alloc)) == 0.
  The `beq` branch at 0xec targets 0x104 and is always taken.
  The return at 0x104 has v0 = one of 0x0, ret(kmem_alloc).

- `odsyDestroyDrawable` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)` at 0x10c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Range: 0x10c-0x12c (32 bytes).
  It occupies 32 bytes.
  The `jal` at 0x118 calls kmem_free with a0=a1 at entry (arg1), a1=0x28, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x124 has v0 = ret(kmem_free).

- `odsyBindDrawable` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)` at 0x12c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Range: 0x12c-0x3d8 (684 bytes).
  It occupies 684 bytes.
  The `ld` at 0x12c loads 8 bytes from a1 (arg1 at entry) +0x90.
  The `lw` at 0x158 loads 4 bytes from a1 (arg1 at entry) +0x190.
  The `ld` at 0x15c loads 8 bytes from [a1+144]:8 +0x80.
  The `lw` at 0x160 loads 4 bytes from [[a1+144]:8+128]:8 +0x64.
  The `sw` at 0x16c stores 4 bytes to a1 (arg1 at entry) +0x190.
  The `sw` at 0x174 stores 4 bytes to a1 (arg1 at entry) +0x194.
  2 such `lw` accesses load 4 bytes from (a1 + one of 0x164, 0x194) +0x0, including `lw` at 0x178, `lw` at 0x1c4.
  The `ld` at 0x1d0 loads 8 bytes from a0 (arg0 at entry) +0x2918.
  4 such `lw` accesses load 4 bytes from (a1 + one of 0x160, 0x190) +0x0, including `lw` at 0x1dc, `lw` at 0x20c, `lw` at 0x2b8.
  3 such `sw` accesses store 4 bytes to (a1 + one of 0x160, 0x190) +0x0, including `sw` at 0x1ec, `sw` at 0x2c0, `sw` at 0x2e4.
  The `lw` at 0x1f8 loads 4 bytes from ret(odsyHashLookup) +0x20.
  The `sw` at 0x200 stores 4 bytes to ret(odsyHashLookup) +0x20.
  The `ld` at 0x22c loads 8 bytes from ret(odsyHashLookup) +0x18.
  The `sw` at 0x238 stores 4 bytes to (a1 + one of 0x168, 0x198) +0x0.
  9 such `ld` accesses load 8 bytes from ?, including `ld` at 0x23c, `ld` at 0x254, `ld` at 0x260.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x244, `lw` at 0x258, `lw` at 0x338.
  The `sb` at 0x248 stores 1 byte to (a1 + one of 0x18b, 0x1bb) +0x0.
  The `sh` at 0x250 stores 2 bytes to (a1 + one of 0x188, 0x1b8) +0x0.
  2 such `sw` accesses store 4 bytes to (a1 + one of 0x16c, 0x19c) +0x0, including `sw` at 0x25c, `sw` at 0x33c.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x264, `lbu` at 0x344, `lbu` at 0x388.
  2 such `sw` accesses store 4 bytes to (a1 + one of 0x170, 0x1a0) +0x0, including `sw` at 0x268, `sw` at 0x358.
  2 such `sb` accesses store 1 byte to (a1 + one of 0x18a, 0x1ba) +0x0, including `sb` at 0x26c, `sb` at 0x348.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x284, `sw` at 0x380.
  The `lw` at 0x28c loads 4 bytes from (a1 + one of 0x16c, 0x19c) +0x0.
  The `lw` at 0x2a8 loads 4 bytes from a1 (arg1 at entry) +0x44.
  The `sw` at 0x2b4 stores 4 bytes to a1 (arg1 at entry) +0x44.
  The `lw` at 0x2f4 loads 4 bytes from a1 (arg1 at entry) +0x160.
  The `ld` at 0x2f8 loads 8 bytes from [a1+144]:8 +0x78.
  The `lw` at 0x2fc loads 4 bytes from [[a1+144]:8+120]:8 +0x64.
  The `sw` at 0x308 stores 4 bytes to a1 (arg1 at entry) +0x160.
  The `sw` at 0x314 stores 4 bytes to a1 (arg1 at entry) +0x164.
  The `lw` at 0x320 loads 4 bytes from a1 (arg1 at entry) +0x40.
  The `sw` at 0x330 stores 4 bytes to a1 (arg1 at entry) +0x40.
  The `sb` at 0x38c stores 1 byte to (a1 + one of 0x18c, 0x1bc) +0x0.
  The `sb` at 0x39c stores 1 byte to (a1 + one of 0x18d, 0x1bd) +0x0.
  The `jal` at 0x1bc calls mraccessf with a0=a0+10528, a1=0x0, a2=?, a3=?, a6=0x1.
  The `jal` at 0x1cc calls odsyHashLookup with a0=[a0+10520]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x1e8 calls mrtrypromote with a0=a0+10528, a1=?, a2=?, a3=?.
  The `jal` at 0x204 calls mrunlock with a0=a0+10528, a1=?, a2=?, a3=?.
  The `jal` at 0x3a4 calls mrunlock with a0=a0+10528, a1=?, a2=?, a3=?.
  The `jal` at 0x3c4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=a3 at entry (arg3).
  The `beq` branch at 0x150 targets 0x2f4, is taken when a2 == a6(=0x1), and falls through when a2 != a6(=0x1).
  The `beq` branch at 0x184 targets 0x2dc, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x1d4 targets 0x204, is taken when v0(=ret(odsyHashLookup)) == 0, and falls through when v0(=ret(odsyHashLookup)) != 0.
  The `beq` branch at 0x1f0 targets 0x3a0, is taken when v0(=ret(mrtrypromote)) == 0, and falls through when v0(=ret(mrtrypromote)) != 0.
  The `beq` branch at 0x224 targets 0x318, is taken when (at(?) & 0x4) == 0, and falls through when (at(?) & 0x4) != 0.
  The `beq` branch at 0x230 targets 0x3bc, is taken when a0(=[ret(odsyHashLookup)+24]:8) == 0, and falls through when a0(=[ret(odsyHashLookup)+24]:8) != 0.
  The `beq` branch at 0x24c targets 0x334, is taken when (a4(=a3) & 0x2) == 0, and falls through when (a4(=a3) & 0x2) != 0.
  The `bne` branch at 0x280 targets 0x270, is taken when v0(?) < 0x4 (signed), and falls through when v0(?) >= 0x4 (signed).
  The `beq` branch at 0x2a0 targets 0x320, is taken when a4(=a2) == a5(=0x1), and falls through when a4(=a2) != a5(=0x1).
  The `beq` branch at 0x2ec targets 0x2cc and is always taken.
  The `beq` branch at 0x310 targets 0x178 and is always taken.
  The `beq` branch at 0x318 targets 0x238 and is always taken.
  The `beq` branch at 0x32c targets 0x2b8 and is always taken.
  The `bne` branch at 0x37c targets 0x35c, is taken when v0(?) < 0x4 (signed), and falls through when v0(?) >= 0x4 (signed).
  The `beq` branch at 0x398 targets 0x288 and is always taken.
  The `beq` branch at 0x3b4 targets 0x2cc and is always taken.
  The `beq` branch at 0x3d0 targets 0x2cc and is always taken.
  The return at 0x2d4 has v0 = one of 0x0, 0xd, 0x16.

- `odsyUnbindDrawable` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)` at 0x3d8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Range: 0x3d8-0x55c (388 bytes).
  It occupies 388 bytes.
  2 such `lw` accesses load 4 bytes from (a1 + one of 0x160, 0x190) +0x0, including `lw` at 0x3f4, `lw` at 0x4a0.
  2 such `lw` accesses load 4 bytes from (a1 + one of 0x164, 0x194) +0x0, including `lw` at 0x410, `lw` at 0x450.
  The `ld` at 0x45c loads 8 bytes from a0 (arg0 at entry) +0x2918.
  2 such `lw` accesses load 4 bytes from ret(odsyHashLookup) +0x20, including `lw` at 0x478, `lw` at 0x490.
  The `sw` at 0x484 stores 4 bytes to ret(odsyHashLookup) +0x20.
  The `sw` at 0x4ac stores 4 bytes to (a1 + one of 0x164, 0x194) +0x0.
  The `sw` at 0x4b8 stores 4 bytes to (a1 + one of 0x160, 0x190) +0x0.
  The `ld` at 0x4fc loads 8 bytes from ret(odsyHashLookup) +0x0.
  The `jal` at 0x444 calls mraccessf with a0=a0+10528, a1=0x0, a2=?, a3=?, a4=0xd.
  The `jal` at 0x458 calls odsyHashLookup with a0=[a0+10520]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x468 calls mrtrypromote with a0=a0+10528, a1=?, a2=?, a3=?.
  The `jal` at 0x488 calls mrunlock with a0=a0+10528, a1=?, a2=?, a3=?.
  The `jal` at 0x4e4 calls mrunlock with a0=a0+10528, a1=?, a2=?, a3=?.
  The `jal` at 0x508 calls odsyHashRemove with a0=ret(odsyHashLookup), a1=?, a2=?, a3=[ret(odsyHashLookup)]:8.
  The `jal` at 0x528 calls odsyDestroyDrawable with a0=a0 at entry (arg0), a1=ret(odsyHashLookup), a2=?, a3=?.
  The `jal` at 0x544 calls mrunlock with a0=a0+10528, a1=?, a2=?, a3=?.
  The `beq` branch at 0x3e8 targets 0x4cc, is taken when a2 == at(=0x1), and falls through when a2 != at(=0x1).
  The `beq` branch at 0x400 targets 0x518, is taken when (a0(?) & 0x2) == 0, and falls through when (a0(?) & 0x2) != 0.
  The `beq` branch at 0x408 targets 0x4a8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x460 targets 0x4d8, is taken when v0(=ret(odsyHashLookup)) == 0, and falls through when v0(=ret(odsyHashLookup)) != 0.
  The `beq` branch at 0x470 targets 0x538, is taken when v0(=ret(mrtrypromote)) == 0, and falls through when v0(=ret(mrtrypromote)) != 0.
  The `beq` branch at 0x480 targets 0x4fc, is taken when at(=[ret(odsyHashLookup)+32]-1) == 0, and falls through when at(=[ret(odsyHashLookup)+32]-1) != 0.
  The `beq` branch at 0x498 targets 0x524, is taken when v1(=[ret(odsyHashLookup)+32]) == 0, and falls through when v1(=[ret(odsyHashLookup)+32]) != 0.
  The `beq` branch at 0x4d0 targets 0x3f4 and is always taken.
  The `beq` branch at 0x4f4 targets 0x4c4 and is always taken.
  The `beq` branch at 0x500 targets 0x488, is taken when a3(=[ret(odsyHashLookup)]:8) == 0, and falls through when a3(=[ret(odsyHashLookup)]:8) != 0.
  The `beq` branch at 0x510 targets 0x488 and is always taken.
  The `beq` branch at 0x51c targets 0x4c4 and is always taken.
  The `beq` branch at 0x530 targets 0x4a0 and is always taken.
  The `beq` branch at 0x554 targets 0x4c4 and is always taken.
  The return at 0x4c4 has v0 = one of 0x0, 0xd, 0x16.

- `gfP_OdsySetDrawBuffer` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)` at 0x55c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Range: 0x55c-0x790 (564 bytes).
  It occupies 564 bytes.
  4 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x56c, `sw` at 0x684, `sw` at 0x758.
  The `ld` at 0x574 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x578 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x57c loads 8 bytes from [a0+72]:8 +0x70.
  5 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2e0, including `ld` at 0x588, `ld` at 0x628, `ld` at 0x638.
  The `sw` at 0x5b8 stores 4 bytes to [[a0+72]:8+112]:8 +0x1c8.
  6 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2d0, including `ld` at 0x5c8, `ld` at 0x60c, `ld` at 0x640.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0x5fc, `lw` at 0x6a0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x30, including `sw` at 0x608, `sw` at 0x6a8.
  2 such `sw` accesses store 4 bytes to [a0+32]:8 +0x28a8, including `sw` at 0x630, `sw` at 0x71c.
  2 such `sw` accesses store 4 bytes to [[a0+32]:8+736]:8 +0x107c, including `sw` at 0x634, `sw` at 0x724.
  The `lw` at 0x63c loads 4 bytes from [[a0+32]:8+736]:8 +0x106c.
  The `lw` at 0x6e8 loads 4 bytes from [a0+32]:8 +0x28a4.
  The `sw` at 0x70c stores 4 bytes to [a0+32]:8 +0x28a4.
  The `sw` at 0x710 stores 4 bytes to [[a0+32]:8+736]:8 +0x1074.
  The `jal` at 0x5a0 calls copyin with a0=a2 at entry (arg2), a1=sp-128, a2=0x4, a3=a3 at entry (arg3).
  The `jal` at 0x5b4 calls RRM_CheckValidFault with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x5c4 calls odsy_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x5dc calls odsyPushBufferSelect with a0=[[a0+72]:8+112]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x5f4 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x618 calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?, a4=-0x3.
  The `jal` at 0x648 calls gfx_flow_detach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=?, a5=[[[a0+32]:8+736]:8+4204], a6=0x1, a7=[[a0+32]:8+736]:8.
  The `jal` at 0x658 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x698 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x6b8 calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=?, a2=ret(splhi), a3=?.
  The `jal` at 0x6c8 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x6dc calls gfx_flow_attach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x6ec calls gfx_flow_credit_tnum_get with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x73c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x770 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x590 targets 0x728, is taken when s1(=[[a0+72]:8+112]:8) == 0, and falls through when s1(=[[a0+72]:8+112]:8) != 0.
  The `bne` branch at 0x5a8 targets 0x75c, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `bltz` branch at 0x5bc targets 0x678, is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed), and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `beq` branch at 0x5d0 targets 0x698, is taken when v0(=ret(odsy_flow_am_i_attached)) == 0, and falls through when v0(=ret(odsy_flow_am_i_attached)) != 0.
  The `beq` branch at 0x5ec targets 0x664, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x610 targets 0x650, is taken when a0(=[[a0+32]:8+720]:8) == 0, and falls through when a0(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x620 targets 0x654, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x690 targets 0x670 and is always taken.
  The `beq` branch at 0x6b0 targets 0x6c8, is taken when a0(=[[a0+32]:8+720]:8) == 0, and falls through when a0(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x6c0 targets 0x6d8, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x6d0 targets 0x5dc and is always taken.
  The `beq` branch at 0x720 targets 0x6c8 and is always taken.
  The `beq` branch at 0x754 targets 0x670 and is always taken.
  The `beq` branch at 0x788 targets 0x670 and is always taken.
  The return at 0x670 has v0 = one of 0x0, 0x1, 0xe.

- `odsyPushBufferSelect` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)` at 0x790 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Range: 0x790-0x9b0 (544 bytes).
  It occupies 544 bytes.
  The `ld` at 0x790 loads 8 bytes from a0 (arg0 at entry) +0x90.
  The `ld` at 0x794 loads 8 bytes from [a0+144]:8 +0x40.
  The `lw` at 0x798 loads 4 bytes from a0 (arg0 at entry) +0x1c8.
  The `ld` at 0x7a8 loads 8 bytes from [[a0+144]:8+64]:8 +0x20.
  2 such `ld` accesses load 8 bytes from [a0+144]:8 +0x78, including `ld` at 0x7ac, `ld` at 0x7d0.
  The `lw` at 0x7b8 loads 4 bytes from [[a0+144]:8+120]:8 +0x20.
  The `lh` at 0x7dc loads 2 bytes from [[a0+144]:8+120]:8 +0x12.
  The `sw` at 0x800 stores 4 bytes to [[[a0+144]:8+64]:8+32]:8 +0x5590.
  The `ld` at 0x804 loads 8 bytes from a0 (arg0 at entry) +0x60.
  The `lw` at 0x808 loads 4 bytes from [a0+96]:8 +0x1b24.
  The `sw` at 0x80c stores 4 bytes to [[[a0+144]:8+64]:8+32]:8 +0x454c.
  The `lw` at 0x810 loads 4 bytes from [a0+96]:8 +0x1b28.
  The `sw` at 0x814 stores 4 bytes to [[[a0+144]:8+64]:8+32]:8 +0x4550.
  The `lw` at 0x818 loads 4 bytes from [a0+96]:8 +0x1b2c.
  The `sw` at 0x81c stores 4 bytes to [[[a0+144]:8+64]:8+32]:8 +0x4554.
  The `lw` at 0x824 loads 4 bytes from [a0+96]:8 +0x1b30.
  The `sw` at 0x830 stores 4 bytes to [[[a0+144]:8+64]:8+32]:8 +0x4558.
  27 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x110000, including `sw` at 0x838, `sw` at 0x844, `sw` at 0x84c.
  The `lw` at 0x898 loads 4 bytes from [[[a0+144]:8+64]:8+32]:8 +0x5590.
  The `ld` at 0x8dc loads 8 bytes from [a0+144]:8 +0x80.
  The `lh` at 0x8e8 loads 2 bytes from [[a0+144]:8+128]:8 +0x12.
  The `lw` at 0x8f8 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `lw` at 0x914 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `sw` at 0x928 stores 4 bytes to a0 (arg0 at entry) +0x40.
  The `sw` at 0x934 stores 4 bytes to a0 (arg0 at entry) +0x44.
  2 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x110000, including `sd` at 0x940, `sd` at 0x95c.
  The `lwu` at 0x944 loads 4 bytes from a0 (arg0 at entry) +0x44.
  The `beq` branch at 0x7a4 targets 0x7c0, is taken when a7(=[a0+144]:8) == 0, and falls through when a7(=[a0+144]:8) != 0.
  The `beq` branch at 0x7b0 targets 0x7c4, is taken when t0(=[[a0+144]:8+120]:8) == 0, and falls through when t0(=[[a0+144]:8+120]:8) != 0.
  The `beq` branch at 0x7c8 targets 0x960, is taken when a3(=[a0+144]:8) == 0, and falls through when a3(=[a0+144]:8) != 0.
  The `beq` branch at 0x7d4 targets 0x960, is taken when a7(=[[a0+144]:8+120]:8) == 0, and falls through when a7(=[[a0+144]:8+120]:8) != 0.
  The `beq` branch at 0x7e0 targets 0x960, is taken when at(=[[[a0+144]:8+120]:8+18]:2) == 0, and falls through when at(=[[[a0+144]:8+120]:8+18]:2) != 0.
  The `beq` branch at 0x7f4 targets 0x978, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x8d4 targets 0x970, is taken when a3(=[a0+144]:8) == 0, and falls through when a3(=[a0+144]:8) != 0.
  The `beq` branch at 0x8e0 targets 0x970, is taken when a1(=[[a0+144]:8+128]:8) == 0, and falls through when a1(=[[a0+144]:8+128]:8) != 0.
  The `beq` branch at 0x8ec targets 0x970, is taken when a2(=[[[a0+144]:8+128]:8+18]:2) == 0, and falls through when a2(=[[[a0+144]:8+128]:8+18]:2) != 0.
  The `beq` branch at 0x968 targets 0x7f4 and is always taken.
  The `beq` branch at 0x970 targets 0x8f4 and is always taken.
  The `beq` branch at 0x978 targets 0x998, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x980 targets 0x9a0, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x988 targets 0x800, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x990 targets 0x800 and is always taken.
  The `bne` branch at 0x998 targets 0x988, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x9a0 targets 0x800, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x9a8 targets 0x990 and is always taken.
  The return at 0x958 has v0 = one of 0xffffffff80000000, 0x0.

- `gfP_OdsyMakeCurrent` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)` at 0x9b0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Range: 0x9b0-0xcc0 (784 bytes).
  It occupies 784 bytes.
  5 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x9bc, `sw` at 0xb88, `sw` at 0xc58.
  The `ld` at 0x9c4 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x9cc loads 8 bytes from [a0+72]:8 +0x70.
  The `ld` at 0x9e8 loads 8 bytes from a0 (arg0 at entry) +0x20.
  6 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2d0, including `ld` at 0xa1c, `ld` at 0xb00, `ld` at 0xb38.
  The `ld` at 0xa78 loads 8 bytes from [[a0+72]:8+112]:8 +0x168.
  The `ld` at 0xa80 loads 8 bytes from [[a0+72]:8+112]:8 +0x170.
  The `ld` at 0xa88 loads 8 bytes from [[a0+72]:8+112]:8 +0x178.
  The `ld` at 0xa90 loads 8 bytes from [[a0+72]:8+112]:8 +0x180.
  The `ld` at 0xa98 loads 8 bytes from [[a0+72]:8+112]:8 +0x188.
  The `ld` at 0xaa4 loads 8 bytes from [[a0+72]:8+112]:8 +0x198.
  The `ld` at 0xaac loads 8 bytes from [[a0+72]:8+112]:8 +0x1a0.
  The `ld` at 0xab4 loads 8 bytes from [[a0+72]:8+112]:8 +0x1a8.
  The `ld` at 0xabc loads 8 bytes from [[a0+72]:8+112]:8 +0x1b0.
  The `ld` at 0xac8 loads 8 bytes from [[a0+72]:8+112]:8 +0x1b8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0xaf0, `lw` at 0xbac.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x30, including `sw` at 0xafc, `sw` at 0xbb4.
  4 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2e0, including `ld` at 0xb1c, `ld` at 0xb2c, `ld` at 0xc08.
  2 such `sw` accesses store 4 bytes to [a0+32]:8 +0x28a8, including `sw` at 0xb24, `sw` at 0xc28.
  2 such `sw` accesses store 4 bytes to [[a0+32]:8+736]:8 +0x107c, including `sw` at 0xb28, `sw` at 0xc30.
  The `lw` at 0xb30 loads 4 bytes from [[a0+32]:8+736]:8 +0x106c.
  The `lw` at 0xb78 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `lw` at 0xbf4 loads 4 bytes from [a0+32]:8 +0x28a4.
  The `sw` at 0xc18 stores 4 bytes to [a0+32]:8 +0x28a4.
  The `sw` at 0xc1c stores 4 bytes to [[a0+32]:8+736]:8 +0x1074.
  The `jal` at 0x9f4 calls copyin with a0=a2 at entry (arg2), a1=sp-208, a2=0x50, a3=a3 at entry (arg3).
  The `jal` at 0xa04 calls RRM_CheckValidFault with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xa18 calls odsy_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?, a4=0xe.
  The `jal` at 0xa34 calls odsyUnbindDrawable with a0=[a0+32]:8, a1=[[a0+72]:8+112]:8, a2=0x1, a3=?.
  The `jal` at 0xa44 calls odsyUnbindDrawable with a0=[a0+32]:8, a1=[[a0+72]:8+112]:8, a2=0x2, a3=?.
  The `jal` at 0xa58 calls odsyBindDrawable with a0=[a0+32]:8, a1=[[a0+72]:8+112]:8, a2=0x1, a3=?.
  The `jal` at 0xa6c calls odsyBindDrawable with a0=[a0+32]:8, a1=[[a0+72]:8+112]:8, a2=0x2, a3=?.
  The `jal` at 0xad0 calls odsyClipPush with a0=[a0+32]:8, a1=[[a0+72]:8+112]:8, a2=[[[a0+72]:8+112]:8+416]:8, a3=[[[a0+72]:8+112]:8+408]:8, a4=[[[a0+72]:8+112]:8+392]:8, a5=sp-208, a6=[[[a0+72]:8+112]:8+384]:8, a7=[[[a0+72]:8+112]:8+376]:8.
  The `jal` at 0xae4 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xb0c calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xb3c calls gfx_flow_detach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=0x1, a3=[[a0+32]:8+736]:8.
  The `jal` at 0xb4c calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xb64 calls copyout with a0=sp-208, a1=a2 at entry (arg2), a2=0x50, a3=?.
  The `jal` at 0xba4 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xbc4 calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=ret(splhi), a2=?, a3=?, a5=([a0+48] | 0x2).
  The `jal` at 0xbd4 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xbe8 calls gfx_flow_attach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0xbf8 calls gfx_flow_credit_tnum_get with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?, a6=[[a0+32]:8+10404].
  The `jal` at 0xc4c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xc80 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xca4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x9e4 targets 0xc34, is taken when s1(=[[a0+72]:8+112]:8) == 0, and falls through when s1(=[[a0+72]:8+112]:8) != 0.
  The `bne` branch at 0x9fc targets 0xc68, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `bltz` branch at 0xa10 targets 0xb88, is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed), and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `beq` branch at 0xa24 targets 0xba4, is taken when v0(=ret(odsy_flow_am_i_attached)) == 0, and falls through when v0(=ret(odsy_flow_am_i_attached)) != 0.
  The `beq` branch at 0xadc targets 0xb54, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xb04 targets 0xb44, is taken when a0(=[[a0+32]:8+720]:8) == 0, and falls through when a0(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0xb14 targets 0xb48, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `bne` branch at 0xb70 targets 0xc9c, is taken when v0(=ret(copyout)) != 0, and falls through when v0(=ret(copyout)) == 0.
  The `beq` branch at 0xb9c targets 0xb7c and is always taken.
  The `beq` branch at 0xbbc targets 0xbd4, is taken when a0(=[[a0+32]:8+720]:8) == 0, and falls through when a0(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0xbcc targets 0xbe4, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0xbdc targets 0xa30 and is always taken.
  The `beq` branch at 0xc2c targets 0xbd4 and is always taken.
  The `beq` branch at 0xc60 targets 0xb7c and is always taken.
  The `beq` branch at 0xc94 targets 0xb7c and is always taken.
  The `beq` branch at 0xcb8 targets 0xb7c and is always taken.
  The return at 0xb80 has v0 = one of [a3], 0xe, 0x1.

- `gfP_OdsyPbufAssoc` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)` at 0xcc0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Range: 0xcc0-0xf00 (576 bytes).
  It occupies 576 bytes.
  The `ld` at 0xcdc loads 8 bytes from a0 (arg0 at entry) +0x20.
  2 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2918, including `ld` at 0xd6c, `ld` at 0xdd0.
  The `sw` at 0xdac stores 4 bytes to ret(odsyCreateDrawable) +0x24.
  The `sw` at 0xdb4 stores 4 bytes to ret(odsyCreateDrawable) +0x20.
  The `sd` at 0xdc4 stores 8 bytes to ret(odsyCreateDrawable) +0x18.
  4 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xe74, `sw` at 0xea0, `sw` at 0xed0.
  The `jal` at 0xce0 calls copyin with a0=a2 at entry (arg2), a1=sp-96, a2=0x8, a3=a3 at entry (arg3).
  The `jal` at 0xd00 calls OdsyLookupCSetId with a0=[a0+32]:8+2232, a1=0x0, a2=?, a3=?, a4=-0x1.
  The `jal` at 0xd14 calls OdsyLookupCSetId with a0=ret(OdsyLookupCSetId)+64, a1=?, a2=?, a3=?.
  The `jal` at 0xd58 calls mraccessf with a0=[a0+32]:8+10528, a1=0x0, a2=?, a3=?, a5=0xd.
  The `jal` at 0xd68 calls odsyHashLookup with a0=[[a0+32]:8+10520]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xd80 calls mrunlock with a0=[a0+32]:8+10528, a1=?, a2=?, a3=?.
  The `jal` at 0xd98 calls odsyCreateDrawable with a0=[a0+32]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xdc0 calls mrtrypromote with a0=[a0+32]:8+10528, a1=?, a2=?, a3=?.
  The `jal` at 0xdd4 calls odsyHashInsert with a0=[[a0+32]:8+10520]:8, a1=?, a2=ret(odsyCreateDrawable), a3=?.
  The `jal` at 0xde8 calls mrunlock with a0=[a0+32]:8+10528, a1=?, a2=?, a3=?.
  The `jal` at 0xe10 calls mrunlock with a0=[a0+32]:8+10528, a1=?, a2=?, a3=?.
  The `jal` at 0xe34 calls mrunlock with a0=[a0+32]:8+10528, a1=?, a2=?, a3=?.
  The `jal` at 0xe58 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xe84 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=-0x1.
  The `jal` at 0xeb4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xee0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0xce8 targets 0xe4c, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0xcf4 targets 0xe78, is taken when v1(?) == a4(=-0x1), and falls through when v1(?) != a4(=-0x1).
  The `beq` branch at 0xd08 targets 0xea4, is taken when v0(=ret(OdsyLookupCSetId)) == 0, and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `beq` branch at 0xd20 targets 0xed4, is taken when v0(=ret(OdsyLookupCSetId)) == 0, and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `beq` branch at 0xd70 targets 0xd98, is taken when v0(=ret(odsyHashLookup)) == 0, and falls through when v0(=ret(odsyHashLookup)) != 0.
  The `beq` branch at 0xd90 targets 0xdfc and is always taken.
  The `beq` branch at 0xda0 targets 0xe04, is taken when v0(=ret(odsyCreateDrawable)) == 0, and falls through when v0(=ret(odsyCreateDrawable)) != 0.
  The `beq` branch at 0xdc8 targets 0xe28, is taken when v0(=ret(mrtrypromote)) == 0, and falls through when v0(=ret(mrtrypromote)) != 0.
  The `beq` branch at 0xe20 targets 0xdfc and is always taken.
  The `beq` branch at 0xe44 targets 0xdfc and is always taken.
  The `beq` branch at 0xe70 targets 0xdfc and is always taken.
  The `beq` branch at 0xe9c targets 0xdfc and is always taken.
  The `beq` branch at 0xecc targets 0xdfc and is always taken.
  The `beq` branch at 0xef8 targets 0xdfc and is always taken.
  The return at 0xdfc has v0 = one of 0xb, 0x0, 0xc, 0xd, 0xe, 0x16.

- `gfP_OdsyPbufDeassoc` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)` at 0xf00 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)`.
  Range: 0xf00-0x10c8 (456 bytes).
  It occupies 456 bytes.
  The `ld` at 0xf08 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0xf78 loads 8 bytes from [a0+32]:8 +0x2918.
  The `ld` at 0xf84 loads 8 bytes from ret(odsyHashLookup) +0x18.
  The `lw` at 0xf90 loads 4 bytes from [ret(odsyHashLookup)+24]:8 +0x0.
  The `lw` at 0xfb0 loads 4 bytes from ret(odsyHashLookup) +0x20.
  The `sw` at 0xfbc stores 4 bytes to ret(odsyHashLookup) +0x24.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x1074, `sw` at 0x10c4.
  The `jal` at 0xf24 calls copyin with a0=a2 at entry (arg2), a1=sp-96, a2=0x8, a3=a3 at entry (arg3).
  The `jal` at 0xf60 calls mraccessf with a0=[a0+32]:8+10528, a1=0x0, a2=?, a3=?.
  The `jal` at 0xf74 calls odsyHashLookup with a0=[[a0+32]:8+10520]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xf98 calls mrtrypromote with a0=[a0+32]:8+10528, a1=?, a2=[[ret(odsyHashLookup)+24]:8], a3=?.
  The `jal` at 0xfa8 calls odsyHashRemove with a0=ret(odsyHashLookup), a1=?, a2=?, a3=?.
  The `jal` at 0xfc8 calls mrunlock with a0=[a0+32]:8+10528, a1=?, a2=?, a3=?.
  The `jal` at 0xfdc calls copyout with a0=sp-96, a1=a2 at entry (arg2), a2=0x8, a3=?.
  The `jal` at 0x1000 calls mrunlock with a0=[a0+32]:8+10528, a1=?, a2=?, a3=?.
  The `jal` at 0x1020 calls mrunlock with a0=[a0+32]:8+10528, a1=?, a2=?, a3=?.
  The `jal` at 0x103c calls odsyDestroyDrawable with a0=[a0+32]:8, a1=ret(odsyHashLookup), a2=?, a3=?, a4=0x1, a5=[ret(odsyHashLookup)+32].
  The `jal` at 0x1058 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x108c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x10a8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0xf2c targets 0x104c, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0xf7c targets 0x1018, is taken when v0(=ret(odsyHashLookup)) == 0, and falls through when v0(=ret(odsyHashLookup)) != 0.
  The `beq` branch at 0xf88 targets 0x1078, is taken when v0(=[ret(odsyHashLookup)+24]:8) == 0, and falls through when v0(=[ret(odsyHashLookup)+24]:8) != 0.
  The `beq` branch at 0xfa0 targets 0xff8, is taken when v0(=ret(mrtrypromote)) == 0, and falls through when v0(=ret(mrtrypromote)) != 0.
  The `beq` branch at 0xfb8 targets 0x1038, is taken when a5(=[ret(odsyHashLookup)+32]) == 0, and falls through when a5(=[ret(odsyHashLookup)+32]) != 0.
  The `bne` branch at 0xfe4 targets 0x10a0, is taken when v0(=ret(copyout)) != 0, and falls through when v0(=ret(copyout)) == 0.
  The `beq` branch at 0x1010 targets 0xff0 and is always taken.
  The `beq` branch at 0x1030 targets 0xff0 and is always taken.
  The `beq` branch at 0x1044 targets 0xfc4 and is always taken.
  The `beq` branch at 0x1070 targets 0xff0 and is always taken.
  The `beq` branch at 0x1098 targets 0xff0 and is always taken.
  The `beq` branch at 0x10c0 targets 0xff0 and is always taken.
  The return at 0xff0 has v0 = one of 0x0, 0xd, 0xe, 0x16.
