# Readings: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`

One entry per routine, filed here from the reading batches by binary.

- `odsyXtErrorInterrupt` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`.
  Range: 0x0-0x11c (284 bytes).
  It occupies 284 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2e0, including `ld` at 0x10, `ld` at 0xf4.
  The `lh` at 0x14 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `lw` at 0x18 loads 4 bytes from [a0+736]:8 +0xc.
  2 such `lw` accesses load 4 bytes from [a0+736]:8 +0x44, including `lw` at 0x24, `lw` at 0x10c.
  The `lw` at 0x30 loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x10.
  The `sw` at 0x48 stores 4 bytes to ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x10.
  The `sw` at 0xa8 stores 4 bytes to [a0+736]:8 +0x44.
  The `lw` at 0x100 loads 4 bytes from [a0+736]:8 +0x1c.
  The `jal` at 0x70 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=([-0x3c60]:2 << 0x5), a5=a0 at entry (arg0).
  The `jal` at 0x8c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=([-0x3c60]:2 << 0x5), a5=a0 at entry (arg0).
  The `jal` at 0xbc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=([-0x3c60]:2 << 0x5), a5=a0 at entry (arg0).
  The `jal` at 0xe0 calls cmn_err with a0=0x0, a1=sym(.rodata), a2=[[a0+736]:8+68], a3=one of 0x0, 0x1.
  The `jal` at 0x108 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=[[a0+736]:8+28], a3=[[a0+736]:8+68], a5=a0 at entry (arg0).
  The `bne` branch at 0x44 targets 0xb4, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x58 targets 0xf0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x60 targets 0x84, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x7c targets 0x98 and is always taken.
  The `bne` branch at 0xa4 targets 0xd0, is taken when a3(=one of 0x0, 0x1) != 0, and falls through when a3(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0xc8 targets 0x98 and is always taken.
  The `beq` branch at 0xe8 targets 0xac and is always taken.
  The `beq` branch at 0x114 targets 0x98 and is always taken.
  The return at 0xac has v0 = ret(cmn_err).

- `odsyFlagInterrupt` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)` at 0x11c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`.
  Range: 0x11c-0x534 (1048 bytes).
  It occupies 1048 bytes.
  The `ld` at 0x124 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `lh` at 0x138 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `lw` at 0x13c loads 4 bytes from [a0+736]:8 +0x1014.
  The `lw` at 0x140 loads 4 bytes from [a0+736]:8 +0x1034.
  The `lw` at 0x158 loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x10.
  The `sw` at 0x164 stores 4 bytes to ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x10.
  The `sw` at 0x294 stores 4 bytes to [a0+736]:8 +0x101c.
  The `lw` at 0x49c loads 4 bytes from a0 (arg0 at entry) +0x56fc.
  The `sw` at 0x4a8 stores 4 bytes to a0 (arg0 at entry) +0x56fc.
  The `jal` at 0x16c calls odsyLowaterInterrupt with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x19c calls odsyGenlockInterrupt with a0=a0 at entry (arg0), a1=0x40000000, a2=?, a3=?.
  The `jal` at 0x2a8 calls odsy_teardown with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x2c8 calls cmn_err with a0=0x5, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x2e4 calls cmn_err with a0=0x5, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x300 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x31c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x338 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x354 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x370 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x38c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x3a8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x3c4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x3e0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x3fc calls cmn_err with a0=0x5, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x418 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x434 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x450 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x46c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x488 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x4c0 calls cmn_err with a0=0x5, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+22268]+1.
  The `jal` at 0x4dc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x4f8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x514 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x160 targets 0x178, is taken when (s1(?) & 0x200) == 0, and falls through when (s1(?) & 0x200) != 0.
  The `bne` branch at 0x180 targets 0x2c0, is taken when (s1(?) & v0(=0x2000000)) != 0, and falls through when (s1(?) & v0(=0x2000000)) == 0.
  The `beq` branch at 0x190 targets 0x1ac, is taken when (s1(?) & v1(=0xffffffff80000000)) == 0, and falls through when (s1(?) & v1(=0xffffffff80000000)) != 0.
  The `bne` branch at 0x1b0 targets 0x2d8, is taken when (s1(?) & a1(=0x40000000)) != 0, and falls through when (s1(?) & a1(=0x40000000)) == 0.
  The `bne` branch at 0x1bc targets 0x2f4, is taken when (s1(?) & at(=0x20000000)) != 0, and falls through when (s1(?) & at(=0x20000000)) == 0.
  The `bne` branch at 0x1c8 targets 0x310, is taken when (s1(?) & v0(=0x10000000)) != 0, and falls through when (s1(?) & v0(=0x10000000)) == 0.
  The `bne` branch at 0x1d4 targets 0x32c, is taken when (s1(?) & v1(=0x8000000)) != 0, and falls through when (s1(?) & v1(=0x8000000)) == 0.
  The `bne` branch at 0x1e0 targets 0x348, is taken when (s1(?) & a1(=0x1000000)) != 0, and falls through when (s1(?) & a1(=0x1000000)) == 0.
  The `bne` branch at 0x1ec targets 0x364, is taken when (s1(?) & at(=0x800000)) != 0, and falls through when (s1(?) & at(=0x800000)) == 0.
  The `bne` branch at 0x1f8 targets 0x380, is taken when (s1(?) & v0(=0x400000)) != 0, and falls through when (s1(?) & v0(=0x400000)) == 0.
  The `bne` branch at 0x204 targets 0x39c, is taken when (s1(?) & v1(=0x200000)) != 0, and falls through when (s1(?) & v1(=0x200000)) == 0.
  The `bne` branch at 0x210 targets 0x3b8, is taken when (s1(?) & a1(=0x100000)) != 0, and falls through when (s1(?) & a1(=0x100000)) == 0.
  The `bne` branch at 0x21c targets 0x3d4, is taken when (s1(?) & at(=0x40000)) != 0, and falls through when (s1(?) & at(=0x40000)) == 0.
  The `bne` branch at 0x22c targets 0x3f0, is taken when (s1(?) & v0(=0x3c000)) != 0, and falls through when (s1(?) & v0(=0x3c000)) == 0.
  The `bne` branch at 0x234 targets 0x40c, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x23c targets 0x428, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x244 targets 0x444, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x24c targets 0x460, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x254 targets 0x47c, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x25c targets 0x498, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x264 targets 0x4d0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x26c targets 0x4ec, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x274 targets 0x508, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x288 targets 0x2a0, is taken when (a1(=[[a0+736]:8+4116]) & at(=0x39f02587)) != 0, and falls through when (a1(=[[a0+736]:8+4116]) & at(=0x39f02587)) == 0.
  The `beq` branch at 0x298 targets 0x2b8 and is always taken.
  The `beq` branch at 0x2d0 targets 0x188 and is always taken.
  The `beq` branch at 0x2ec targets 0x1b4 and is always taken.
  The `beq` branch at 0x308 targets 0x1c0 and is always taken.
  The `beq` branch at 0x324 targets 0x1cc and is always taken.
  The `beq` branch at 0x340 targets 0x1d8 and is always taken.
  The `beq` branch at 0x35c targets 0x1e4 and is always taken.
  The `beq` branch at 0x378 targets 0x1f0 and is always taken.
  The `beq` branch at 0x394 targets 0x1fc and is always taken.
  The `beq` branch at 0x3b0 targets 0x208 and is always taken.
  The `beq` branch at 0x3cc targets 0x214 and is always taken.
  The `beq` branch at 0x3e8 targets 0x220 and is always taken.
  The `beq` branch at 0x404 targets 0x230 and is always taken.
  The `beq` branch at 0x420 targets 0x238 and is always taken.
  The `beq` branch at 0x43c targets 0x240 and is always taken.
  The `beq` branch at 0x458 targets 0x248 and is always taken.
  The `beq` branch at 0x474 targets 0x250 and is always taken.
  The `beq` branch at 0x490 targets 0x258 and is always taken.
  The `beq` branch at 0x4a4 targets 0x524, is taken when (s1(?) & 0x8) == 0, and falls through when (s1(?) & 0x8) != 0.
  The `beq` branch at 0x4c8 targets 0x260 and is always taken.
  The `beq` branch at 0x4e4 targets 0x268 and is always taken.
  The `beq` branch at 0x500 targets 0x270 and is always taken.
  The `beq` branch at 0x51c targets 0x278 and is always taken.
  The `beq` branch at 0x52c targets 0x4b8 and is always taken.
  The return at 0x2b8 has v0 = one of [a0+736]:8, ret(odsy_teardown).

- `odsyDmaInterrupt` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)` at 0x534 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`.
  Range: 0x534-0x574 (64 bytes).
  It occupies 64 bytes.
  The `lh` at 0x54c loads 2 bytes from abs 0xffffffffffffc3a0.
  The `lw` at 0x55c loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x10.
  The `sw` at 0x564 stores 4 bytes to ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x10.
  The `jal` at 0x544 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x56c has v0 = ([-0x3c60]:2 << 0x5).

- `odsySsyncInterrupt` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)` at 0x574 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`.
  Range: 0x574-0x5bc (72 bytes).
  It occupies 72 bytes.
  The `lh` at 0x590 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `lw` at 0x5a4 loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x10.
  The `sw` at 0x5b8 stores 4 bytes to ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x10.
  The `jal` at 0x580 calls odsySwap_softsync_intr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x588 calls odsyDMAWakeup with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0x5b4 has v0 = ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)).

- `odsyGenlockInterrupt` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)` at 0x5bc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`.
  Range: 0x5bc-0x1104 (2888 bytes).
  It occupies 2888 bytes.
  12 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x5720, including `lw` at 0x5d0, `lw` at 0x614, `lw` at 0x6b4.
  33 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2e0, including `ld` at 0x5f4, `ld` at 0x628, `ld` at 0x6c0.
  The `lw` at 0x604 loads 4 bytes from [a0+736]:8 +0x233e6c.
  The `lw` at 0x61c loads 4 bytes from a0 (arg0 at entry) +0x5690.
  The `lw` at 0x634 loads 4 bytes from [a0+736]:8 +0x233e64.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x124, including `lw` at 0x644, `lw` at 0x670, `lw` at 0x734.
  The `lbu` at 0x67c loads 1 byte from a0 (arg0 at entry) +0x28ff.
  3 such `sb` accesses store 1 byte to a0 (arg0 at entry) +0x56e8, including `sb` at 0x690, `sb` at 0x754, `sb` at 0xa00.
  The `lbu` at 0x698 loads 1 byte from a0 (arg0 at entry) +0x2903.
  The `lbu` at 0x6a8 loads 1 byte from a0 (arg0 at entry) +0x2907.
  22 such `sd` accesses store 8 bytes to [a0+736]:8 +0x400000, including `sd` at 0x708, `sd` at 0x8e4, `sd` at 0xa8c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x5690, including `sw` at 0x71c, `sw` at 0x8f8.
  The `lbu` at 0x740 loads 1 byte from a0 (arg0 at entry) +0x290b.
  The `lbu` at 0x75c loads 1 byte from a0 (arg0 at entry) +0x290f.
  The `lbu` at 0x76c loads 1 byte from a0 (arg0 at entry) +0x2913.
  The `ld` at 0x808 loads 8 bytes from a0 (arg0 at entry) +0x0.
  10 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2828, including `ld` at 0x824, `ld` at 0x92c, `ld` at 0x9a4.
  20 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x55f0, including `lw` at 0xa3c, `lw` at 0xa90, `lw` at 0xae8.
  10 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x2830, including `lhu` at 0xa40, `lhu` at 0xa9c, `lhu` at 0xc60.
  20 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x55f0, including `sw` at 0xa6c, `sw` at 0xabc, `sw` at 0xb10.
  5 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x2828, including `sd` at 0xb24, `sd` at 0xd3c, `sd` at 0xe4c.
  The `jal` at 0x668 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x68c calls odsy_i2cPLLRegWrite with a0=a0+22216, a1=0x1, a2=[a0+10495]:1, a3=0x58.
  The `jal` at 0x69c calls odsy_i2cPLLRegWrite with a0=a0+22216, a1=0x2, a2=[a0+10499]:1, a3=?.
  The `jal` at 0x6ac calls odsy_i2cPLLRegWrite with a0=a0+22216, a1=0x6, a2=[a0+10503]:1, a3=?.
  The `jal` at 0x6c4 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0x0, a2=?, a3=?.
  The `jal` at 0x72c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x750 calls odsy_i2cPLLRegWrite with a0=a0+22216, a1=0x1, a2=[a0+10507]:1, a3=0x58.
  The `jal` at 0x760 calls odsy_i2cPLLRegWrite with a0=a0+22216, a1=0x2, a2=[a0+10511]:1, a3=?.
  The `jal` at 0x770 calls odsy_i2cPLLRegWrite with a0=a0+22216, a1=0x6, a2=[a0+10515]:1, a3=?.
  The `jal` at 0x788 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0x0, a2=?, a3=?.
  The `jal` at 0x80c calls rrmGenlockNotify with a0=[a0]:8, a1=0x0, a2=?, a3=?.
  The `jal` at 0x81c calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x838 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x844 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x854 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x868 calls odsy_i2cPLLRegWrite with a0=a0+22216, a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x880 calls odsy_i2cPLLRegWrite with a0=a0+22216, a1=0x7, a2=?, a3=?.
  The `jal` at 0x894 calls odsy_i2cPLLRegWrite with a0=a0+22216, a1=0x0, a2=0x11, a3=?.
  The `jal` at 0x8a8 calls odsy_i2cPLLRegWrite with a0=a0+22216, a1=0x7, a2=?, a3=?.
  The `jal` at 0x904 calls psema with a0=a0+10256, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x924 calls mutex_spinlock with a0=a0+10272, a1=[a0+22304], a2=?, a3=?.
  The `jal` at 0x940 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=a0+10256, a3=?.
  The `jal` at 0x94c calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x95c calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x978 calls psema with a0=a0+10256, a1=0x19, a2=?, a3=?.
  The `jal` at 0x99c calls mutex_spinlock with a0=a0+10272, a1=[a0+22304], a2=?, a3=?.
  The `jal` at 0x9b8 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=[a0+10280]:8.
  The `jal` at 0x9c4 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x9d4 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x9fc calls odsy_i2cPLLRegRead with a0=a0+22216, a1=0x7, a2=sp-144, a3=?.
  The `jal` at 0xa14 calls psema with a0=a0+10256, a1=0x19, a2=?, a3=?.
  The `jal` at 0xa24 calls psema with a0=a0+10256, a1=0x19, a2=?, a3=?.
  The `jal` at 0xa34 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xb34 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=-0x2.
  The `jal` at 0xb48 calls vsema with a0=a0+10256, a1=?, a2=a0+10256, a3=?.
  The `jal` at 0xb54 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xb6c calls vsema with a0=a0+10256, a1=?, a2=?, a3=[a0+10280]:8.
  The `jal` at 0xb78 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xb94 calls vsema with a0=a0+10256, a1=a0+10256, a2=?, a3=?.
  The `jal` at 0xba0 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xbb0 calls mutex_spinlock with a0=a0+10272, a1=?, a2=0x3920400100000000, a3=[a0+22304].
  The `jal` at 0xbd0 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xbdc calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0xbec calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc04 calls mutex_spinlock with a0=a0+10272, a1=?, a2=?, a3=[a0+736]:8+0x400000.
  The `jal` at 0xc24 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=a0+10256, a3=?.
  The `jal` at 0xc30 calls odsy_poll_dfifo_level with a0=[a0+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0xc40 calls vsema with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xc54 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xd54 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a6=([a0+22000] | 0x2).
  The `jal` at 0xd64 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xe64 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a6=([a0+22000] | 0x2).
  The `jal` at 0xe88 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xe98 calls vsema with a0=a0+10256, a1=?, a2=?, a3=?.
  The `jal` at 0xea4 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xeb4 calls vsema with a0=a0+10256, a1=?, a2=a0+10256, a3=?.
  The `jal` at 0xec0 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xed4 calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xfdc calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=-0x2.
  The `jal` at 0xfec calls mutex_spinlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10f4 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=?, a5=-0x2.
  The `beq` branch at 0x5e8 targets 0x8fc, is taken when a1(=[a0+22304]) == 0, and falls through when a1(=[a0+22304]) != 0.
  The `beq` branch at 0x600 targets 0x91c, is taken when a1(=[a0+22304]) == 0, and falls through when a1(=[a0+22304]) != 0.
  The `beq` branch at 0x60c targets 0xe74, is taken when (s2(=[[a0+736]:8+2309740]) & 0x1) == 0, and falls through when (s2(=[[a0+736]:8+2309740]) & 0x1) != 0.
  The `beq` branch at 0x620 targets 0x970, is taken when a1(=[a0+22304]) == 0, and falls through when a1(=[a0+22304]) != 0.
  The `beq` branch at 0x630 targets 0x990, is taken when a1(=[a0+22304]) == 0, and falls through when a1(=[a0+22304]) != 0.
  The `beq` branch at 0x63c targets 0x7cc, is taken when (v0(?) & 0x40) == 0, and falls through when (v0(?) & 0x40) != 0.
  The `blez` branch at 0x648 targets 0x9e8, is taken when a2(=[a0+292]) <= 0 (signed), and falls through when a2(=[a0+292]) > 0 (signed).
  The `beq` branch at 0x654 targets 0x720, is taken when (s2(=[[a0+736]:8+2309740]) & 0x2) == 0, and falls through when (s2(=[[a0+736]:8+2309740]) & 0x2) != 0.
  The `blez` branch at 0x674 targets 0x864, is taken when a2(=[a0+292]) <= 0 (signed), and falls through when a2(=[a0+292]) > 0 (signed).
  The `beq` branch at 0x6b8 targets 0xa14, is taken when at(=[a0+22304]) == 0, and falls through when at(=[a0+22304]) != 0.
  The `bne` branch at 0x6d0 targets 0x7a4, is taken when v0(=ret(odsy_poll_dfifo_level)) != 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) == 0.
  The `beq` branch at 0x710 targets 0xbb0, is taken when a3(=[a0+22304]) == 0, and falls through when a3(=[a0+22304]) != 0.
  The `beq` branch at 0x718 targets 0x7a4 and is always taken.
  The `blez` branch at 0x738 targets 0x890, is taken when a2(=[a0+292]) <= 0 (signed), and falls through when a2(=[a0+292]) > 0 (signed).
  The `beq` branch at 0x77c targets 0xa24, is taken when at(=[a0+22304]) == 0, and falls through when at(=[a0+22304]) != 0.
  The `beq` branch at 0x794 targets 0x8b8, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x7ac targets 0x7f4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x7b8 targets 0x7e0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x7c4 targets 0x81c, is taken when at(=[a0+22304]) == 0, and falls through when at(=[a0+22304]) != 0.
  The `beq` branch at 0x7e4 targets 0x7cc, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x7ec targets 0x7c4 and is always taken.
  The `bne` branch at 0x800 targets 0x7b4, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x814 targets 0x7b4 and is always taken.
  The `beq` branch at 0x828 targets 0xb8c, is taken when at(=[a0+10280]:8) == 0, and falls through when at(=[a0+10280]:8) != 0.
  The `beq` branch at 0x84c targets 0xa34, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x85c targets 0x7cc and is always taken.
  The `beq` branch at 0x888 targets 0x6b8 and is always taken.
  The `beq` branch at 0x8b0 targets 0x77c and is always taken.
  The `beq` branch at 0x8ec targets 0xbfc, is taken when v1(=[a0+22304]) == 0, and falls through when v1(=[a0+22304]) != 0.
  The `beq` branch at 0x8f4 targets 0x79c and is always taken.
  The `beq` branch at 0x914 targets 0x5f0 and is always taken.
  The `beq` branch at 0x934 targets 0xb44, is taken when v1(=[a0+10280]:8) == 0, and falls through when v1(=[a0+10280]:8) != 0.
  The `beq` branch at 0x954 targets 0xc54, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x968 targets 0x608 and is always taken.
  The `beq` branch at 0x988 targets 0x628 and is always taken.
  The `beq` branch at 0x9ac targets 0xb68, is taken when a3(=[a0+10280]:8) == 0, and falls through when a3(=[a0+10280]:8) != 0.
  The `beq` branch at 0x9cc targets 0xd64, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x9e0 targets 0x638 and is always taken.
  The `beq` branch at 0xa0c targets 0x650 and is always taken.
  The `beq` branch at 0xa1c targets 0x6c4 and is always taken.
  The `beq` branch at 0xa2c targets 0x788 and is always taken.
  The `beq` branch at 0xa54 targets 0xacc, is taken when 0 >= a1(?) (unsigned), and falls through when 0 < a1(?) (unsigned).
  The `beq` branch at 0xae0 targets 0xb1c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xb3c targets 0x854 and is always taken.
  The `beq` branch at 0xb60 targets 0x608 and is always taken.
  The `beq` branch at 0xb84 targets 0x638 and is always taken.
  The `beq` branch at 0xba8 targets 0x7cc and is always taken.
  The `beq` branch at 0xbc4 targets 0xe98, is taken when at(=[a0+10280]:8) == 0, and falls through when at(=[a0+10280]:8) != 0.
  The `beq` branch at 0xbe4 targets 0xed4, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0xbf4 targets 0x718 and is always taken.
  The `beq` branch at 0xc18 targets 0xeb4, is taken when v1(=[a0+10280]:8) == 0, and falls through when v1(=[a0+10280]:8) != 0.
  The `beq` branch at 0xc38 targets 0xfec, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0xc4c targets 0x8f4 and is always taken.
  The `beq` branch at 0xc74 targets 0xcec, is taken when 0 >= a4(?) (unsigned), and falls through when 0 < a4(?) (unsigned).
  The `beq` branch at 0xd00 targets 0xd3c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xd5c targets 0x95c and is always taken.
  The `beq` branch at 0xd84 targets 0xdfc, is taken when 0 >= a4(?) (unsigned), and falls through when 0 < a4(?) (unsigned).
  The `beq` branch at 0xe10 targets 0xe4c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xe6c targets 0x9d4 and is always taken.
  The `beq` branch at 0xe90 targets 0x7b4 and is always taken.
  The `beq` branch at 0xeac targets 0x718 and is always taken.
  The `beq` branch at 0xecc targets 0x8f4 and is always taken.
  The `beq` branch at 0xef4 targets 0xf74, is taken when 0 >= a4(?) (unsigned), and falls through when 0 < a4(?) (unsigned).
  The `beq` branch at 0xf88 targets 0xfc4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xfe4 targets 0xbec and is always taken.
  The `beq` branch at 0x100c targets 0x108c, is taken when 0 >= a4(?) (unsigned), and falls through when 0 < a4(?) (unsigned).
  The `beq` branch at 0x10a0 targets 0x10dc, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x10fc targets 0xc40 and is always taken.
  The return at 0x7d8 has v0 = one of ?, ret(vsema), ret(mutex_spinunlock).
