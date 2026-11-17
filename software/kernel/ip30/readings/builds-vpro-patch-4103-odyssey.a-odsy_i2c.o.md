# Readings: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`

One entry per routine, filed here from the reading batches by binary.

- `odsy_i2c_start` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Range: 0x0-0xd40 (3392 bytes).
  It occupies 3392 bytes.
  119 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x4, `ld` at 0x3c, `ld` at 0x78.
  9 such `lw` accesses load 4 bytes from [a0+16]:8 +0x5720, including `lw` at 0xc, `lw` at 0x40, `lw` at 0xb4.
  37 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2e0, including `ld` at 0x2c, `ld` at 0x8c, `ld` at 0xdc.
  14 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x58, `ld` at 0x70, `ld` at 0x160.
  8 such `lw` accesses load 4 bytes from [a0]:8 +0x0, including `lw` at 0x5c, `lw` at 0x164, `lw` at 0x454.
  9 such `sw` accesses store 4 bytes to [a0]:8 +0x0, including `sw` at 0x64, `sw` at 0x170, `sw` at 0x448.
  4 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x18, including `lhu` at 0x6c, `lhu` at 0x174, `lhu` at 0x424.
  3 such `lwu` accesses load 4 bytes from [a0]:8 +0x0, including `lwu` at 0x84, `lwu` at 0x198, `lwu` at 0x4d4.
  27 such `sd` accesses store 8 bytes to [[a0+16]:8+736]:8 +0x400000, including `sd` at 0xac, `sd` at 0x1bc, `sd` at 0x2e4.
  12 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2828, including `ld` at 0x10c, `ld` at 0x240, `ld` at 0x334.
  30 such `lw` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lw` at 0x294, `lw` at 0x2ec, `lw` at 0x34c.
  12 such `lhu` accesses load 2 bytes from [a0+16]:8 +0x2830, including `lhu` at 0x298, `lhu` at 0x2f8, `lhu` at 0x5c4.
  30 such `sw` accesses store 4 bytes to [a0+16]:8 +0x55f0, including `sw` at 0x2bc, `sw` at 0x308, `sw` at 0x354.
  18 such `lwu` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lwu` at 0x2c8, `lwu` at 0x310, `lwu` at 0x360.
  6 such `sd` accesses store 8 bytes to [a0+16]:8 +0x2828, including `sd` at 0x3a4, `sd` at 0x6d4, `sd` at 0x8b8.
  The `lw` at 0x444 loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+24]:2 + [a0+24]:2) << 0x2)) +0x220000.
  The `jal` at 0x28 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xe, a2=?, a3=?, a5=[a0+16]:8.
  The `jal` at 0xc0 calls odsy_usdelay with a0=[a0+16]:8, a1=0xa, a2=?, a3=?, a5=[a0+16]:8.
  The `jal` at 0xd8 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a5=[a0+16]:8.
  The `jal` at 0x100 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=[a0+16]:8.
  The `jal` at 0x118 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+16]:8+10280]:8, a5=[a0+16]:8.
  The `jal` at 0x128 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x13c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x150 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[a0+16]:8.
  The `jal` at 0x1d0 calls odsy_usdelay with a0=[a0+16]:8, a1=0xa, a2=?, a3=?, a5=[a0+16]:8.
  The `jal` at 0x1e8 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xe, a2=?, a3=?, a5=[a0+16]:8.
  The `jal` at 0x214 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[[a0+16]:8+10280]:8, a5=[a0+16]:8.
  The `jal` at 0x224 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x234 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=[a0+16]:8.
  The `jal` at 0x250 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+16]:8+10280]:8, a5=[a0+16]:8.
  The `jal` at 0x260 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x274 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x288 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x3b0 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=[a0+16]:8, a6=-0x2.
  The `jal` at 0x3c0 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[[a0+16]:8+22304], a5=[a0+16]:8.
  The `jal` at 0x3dc calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a5=[a0+16]:8.
  The `jal` at 0x3ec calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x400 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x414 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a5=[a0+16]:8.
  The `jal` at 0x520 calls odsy_i2c_xfer_done_loop with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a0]:8, a6=-0x101.
  The `jal` at 0x540 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[[a0+16]:8+10280]:8, a5=[a0+16]:8.
  The `jal` at 0x550 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x560 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[[a0+16]:8+22304], a5=[a0+16]:8.
  The `jal` at 0x57c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+16]:8+10280]:8, a5=[a0+16]:8.
  The `jal` at 0x58c calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x5a0 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x5b4 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x6e0 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=[a0+16]:8, a6=-0x2.
  The `jal` at 0x6f0 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a5=[a0+16]:8.
  The `jal` at 0x700 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x710 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[[a0+16]:8+736]:8+0x400000, a5=[a0+16]:8.
  The `jal` at 0x72c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+16]:8+10280]:8, a5=[a0+16]:8.
  The `jal` at 0x73c calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x750 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x764 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=[[a0+16]:8+22304], a5=[a0+16]:8.
  The `jal` at 0x774 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[[a0+16]:8+10280]:8, a5=[a0+16]:8.
  The `jal` at 0x784 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x798 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x8c4 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=[a0+16]:8, a6=-0x2.
  The `jal` at 0x8d8 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0xa04 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=[a0+16]:8, a6=-0x2.
  The `jal` at 0xa14 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[[a0+16]:8+10280]:8, a5=[a0+16]:8.
  The `jal` at 0xa24 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xa34 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[[a0+16]:8+736]:8+0x400000, a5=[a0+16]:8.
  The `jal` at 0xa50 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+16]:8+10280]:8, a5=[a0+16]:8.
  The `jal` at 0xa60 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0xa74 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0xa8c calls odsy_i2c_recv_ack with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xaa4 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0xbd0 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=[a0+16]:8, a6=-0x2.
  The `jal` at 0xbe0 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[[a0+16]:8+10280]:8, a5=[a0+16]:8.
  The `jal` at 0xbf0 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xc04 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0xd30 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=[a0+16]:8, a6=-0x2.
  The `beq` branch at 0x1c targets 0x14c, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x34 targets 0x58, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x44 targets 0x100, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0xb8 targets 0x3c0, is taken when a3(=[[a0+16]:8+22304]) == 0, and falls through when a3(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0xd0 targets 0x410, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0xe0 targets 0x160, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0xf0 targets 0x234, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0xf8 targets 0x50 and is always taken.
  The `beq` branch at 0x110 targets 0x210, is taken when a3(=[[a0+16]:8+10280]:8) == 0, and falls through when a3(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x130 targets 0x284, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x144 targets 0x48 and is always taken.
  The `beq` branch at 0x158 targets 0x24 and is always taken.
  The `beq` branch at 0x1c8 targets 0x710, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x1e0 targets 0x760, is taken when a3(=[[a0+16]:8+22304]) == 0, and falls through when a3(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x1f4 targets 0x424, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x200 targets 0x560, is taken when a4(=[[a0+16]:8+22304]) == 0, and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x208 targets 0x50 and is always taken.
  The `beq` branch at 0x22c targets 0x48 and is always taken.
  The `beq` branch at 0x244 targets 0x540, is taken when a3(=[[a0+16]:8+10280]:8) == 0, and falls through when a3(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x268 targets 0x5b0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x27c targets 0xf4 and is always taken.
  The `beq` branch at 0x2ac targets 0x32c, is taken when 0 >= a2(?) (unsigned), and falls through when 0 < a2(?) (unsigned).
  The `beq` branch at 0x340 targets 0x380, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x3b8 targets 0x13c and is always taken.
  The `beq` branch at 0x3d0 targets 0x6f0, is taken when a4(=[[a0+16]:8+10280]:8) == 0, and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x3f4 targets 0x794, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x408 targets 0xbc and is always taken.
  The `beq` branch at 0x41c targets 0xd4 and is always taken.
  The `beq` branch at 0x504 targets 0xa34, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x52c targets 0xa84, is taken when v0(=ret(odsy_i2c_xfer_done_loop)) == 0, and falls through when v0(=ret(odsy_i2c_xfer_done_loop)) != 0.
  The `beq` branch at 0x538 targets 0x50 and is always taken.
  The `beq` branch at 0x558 targets 0xf4 and is always taken.
  The `beq` branch at 0x570 targets 0x774, is taken when a3(=[[a0+16]:8+10280]:8) == 0, and falls through when a3(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x594 targets 0x8d4, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x5a8 targets 0x204 and is always taken.
  The `beq` branch at 0x5d8 targets 0x65c, is taken when 0 >= a2(?) (unsigned), and falls through when 0 < a2(?) (unsigned).
  The `beq` branch at 0x670 targets 0x6b0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x6e8 targets 0x274 and is always taken.
  The `beq` branch at 0x708 targets 0x408 and is always taken.
  The `beq` branch at 0x720 targets 0xa14, is taken when a3(=[[a0+16]:8+10280]:8) == 0, and falls through when a3(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x744 targets 0xaa0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x758 targets 0x1cc and is always taken.
  The `beq` branch at 0x76c targets 0x1e4 and is always taken.
  The `beq` branch at 0x78c targets 0x204 and is always taken.
  The `beq` branch at 0x7bc targets 0x840, is taken when 0 >= a7(?) (unsigned), and falls through when 0 < a7(?) (unsigned).
  The `beq` branch at 0x854 targets 0x894, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x8cc targets 0x400 and is always taken.
  The `beq` branch at 0x8fc targets 0x980, is taken when 0 >= a2(?) (unsigned), and falls through when 0 < a2(?) (unsigned).
  The `beq` branch at 0x994 targets 0x9d4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xa0c targets 0x5a0 and is always taken.
  The `beq` branch at 0xa2c targets 0x758 and is always taken.
  The `beq` branch at 0xa44 targets 0xbe0, is taken when a3(=[[a0+16]:8+10280]:8) == 0, and falls through when a3(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0xa68 targets 0xc00, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0xa7c targets 0x510 and is always taken.
  The `beq` branch at 0xa98 targets 0x50 and is always taken.
  The `beq` branch at 0xac8 targets 0xb4c, is taken when 0 >= a7(?) (unsigned), and falls through when 0 < a7(?) (unsigned).
  The `beq` branch at 0xb60 targets 0xba0, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0xbd8 targets 0x750 and is always taken.
  The `beq` branch at 0xbf8 targets 0x510 and is always taken.
  The `beq` branch at 0xc28 targets 0xcac, is taken when 0 >= a7(?) (unsigned), and falls through when 0 < a7(?) (unsigned).
  The `beq` branch at 0xcc0 targets 0xd00, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0xd38 targets 0xa74 and is always taken.
  The return at 0x50 has v0 = one of 0x3, ret(odsy_i2c_xfer_done_loop), ret(odsy_i2c_recv_ack).

- `odsy_i2c_stop` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0xd40 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Range: 0xd40-0x15b4 (2164 bytes).
  It occupies 2164 bytes.
  77 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0xd40, `ld` at 0xd74, `ld` at 0xdc4.
  6 such `lw` accesses load 4 bytes from [a0+16]:8 +0x5720, including `lw` at 0xd44, `lw` at 0xd78, `lw` at 0xe00.
  24 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2e0, including `ld` at 0xd64, `ld` at 0xdd8, `ld` at 0xe54.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0xd90, `ld` at 0xda0, `ld` at 0xdbc.
  2 such `lw` accesses load 4 bytes from [a0]:8 +0x0, including `lw` at 0xd94, `lw` at 0xda4.
  3 such `sw` accesses store 4 bytes to [a0]:8 +0x0, including `sw` at 0xd9c, `sw` at 0xdac, `sw` at 0xe8c.
  The `lhu` at 0xdb4 loads 2 bytes from a0 (arg0 at entry) +0x18.
  The `lwu` at 0xdd0 loads 4 bytes from [a0]:8 +0x0.
  17 such `sd` accesses store 8 bytes to [[a0+16]:8+736]:8 +0x400000, including `sd` at 0xdf8, `sd` at 0xf4c, `sd` at 0xf8c.
  8 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2828, including `ld` at 0xe34, `ld` at 0xf9c, `ld` at 0x1034.
  20 such `lw` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lw` at 0xefc, `lw` at 0xf54, `lw` at 0xfb4.
  8 such `lhu` accesses load 2 bytes from [a0+16]:8 +0x2830, including `lhu` at 0xf00, `lhu` at 0xf60, `lhu` at 0x1198.
  20 such `sw` accesses store 4 bytes to [a0+16]:8 +0x55f0, including `sw` at 0xf24, `sw` at 0xf70, `sw` at 0xfbc.
  12 such `lwu` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lwu` at 0xf30, `lwu` at 0xf78, `lwu` at 0xfc8.
  4 such `sd` accesses store 8 bytes to [a0+16]:8 +0x2828, including `sd` at 0x100c, `sd` at 0x12a8, `sd` at 0x13e8.
  The `lhu` at 0x1078 loads 2 bytes from a0 (arg0 at entry) +0x1a.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x1094, `ld` at 0x10b0.
  The `lw` at 0x1098 loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2)) +0x220000.
  The `sw` at 0x109c stores 4 bytes to [a0+8]:8 +0x0.
  The `lw` at 0x10b4 loads 4 bytes from [a0+8]:8 +0x0.
  The `jal` at 0xd60 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0xe0c calls odsy_i2c_xfer_done_loop with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xe28 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0xe40 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+16]:8+10280]:8, a4=[a0+16]:8.
  The `jal` at 0xe50 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0xe64 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0xe78 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[a0+16]:8.
  The `jal` at 0xea0 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0xecc calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[[a0+16]:8+10280]:8, a4=[a0+16]:8.
  The `jal` at 0xedc calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xef0 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x1018 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=-0x2.
  The `jal` at 0x1028 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=[[a0+16]:8+22304], a3=?, a4=[a0+16]:8.
  The `jal` at 0x1044 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x1054 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x1068 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x10d8 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x10f4 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8.
  The `jal` at 0x1104 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x1118 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x112c calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=[[a0+16]:8+22304], a3=[a0]:8, a4=[a0+16]:8.
  The `jal` at 0x113c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x114c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1164 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8.
  The `jal` at 0x1174 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1188 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x12b4 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=-0x2.
  The `jal` at 0x12c8 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x13f4 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=-0x2.
  The `jal` at 0x1404 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=[[a0+16]:8+22304], a3=[([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2))+2228224], a4=[a0+16]:8.
  The `jal` at 0x1420 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x1430 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x1444 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x1454 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x1464 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1478 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x15a4 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=-0x2.
  The `beq` branch at 0xd54 targets 0xe74, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0xd6c targets 0xd90, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0xd7c targets 0xe28, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0xe04 targets 0x1028, is taken when a2(=[[a0+16]:8+22304]) == 0, and falls through when a2(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0xe18 targets 0xe88, is taken when v0(=ret(odsy_i2c_xfer_done_loop)) == 0, and falls through when v0(=ret(odsy_i2c_xfer_done_loop)) != 0.
  The `beq` branch at 0xe20 targets 0xd84 and is always taken.
  The `beq` branch at 0xe38 targets 0xec8, is taken when a3(=[[a0+16]:8+10280]:8) == 0, and falls through when a3(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0xe58 targets 0xeec, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0xe6c targets 0xd80 and is always taken.
  The `beq` branch at 0xe80 targets 0xd5c and is always taken.
  The `beq` branch at 0xe98 targets 0x1128, is taken when a2(=[[a0+16]:8+22304]) == 0, and falls through when a2(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0xeac targets 0x1078, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0xeb8 targets 0x10d8, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0xec0 targets 0xd84 and is always taken.
  The `beq` branch at 0xee4 targets 0xd80 and is always taken.
  The `beq` branch at 0xf14 targets 0xf94, is taken when 0 >= a0(?) (unsigned), and falls through when 0 < a0(?) (unsigned).
  The `beq` branch at 0xfa8 targets 0xfe8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1020 targets 0xe64 and is always taken.
  The `beq` branch at 0x1038 targets 0x113c, is taken when at(=[[a0+16]:8+10280]:8) == 0, and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x105c targets 0x12c4, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1070 targets 0xe0c and is always taken.
  The `beq` branch at 0x10a8 targets 0x1404, is taken when a2(=[[a0+16]:8+22304]) == 0, and falls through when a2(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x10c8 targets 0x115c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x10d0 targets 0xd84 and is always taken.
  The `beq` branch at 0x10e8 targets 0x1164, is taken when a2(=[[a0+16]:8+10280]:8) == 0, and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x110c targets 0x1184, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1120 targets 0xec0 and is always taken.
  The `beq` branch at 0x1134 targets 0xe9c and is always taken.
  The `beq` branch at 0x1154 targets 0xe0c and is always taken.
  The `beq` branch at 0x115c targets 0xd84 and is always taken.
  The `beq` branch at 0x117c targets 0xec0 and is always taken.
  The `beq` branch at 0x11ac targets 0x1230, is taken when 0 >= a0(?) (unsigned), and falls through when 0 < a0(?) (unsigned).
  The `beq` branch at 0x1244 targets 0x1284, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x12bc targets 0x1118 and is always taken.
  The `beq` branch at 0x12ec targets 0x1370, is taken when 0 >= a0(?) (unsigned), and falls through when 0 < a0(?) (unsigned).
  The `beq` branch at 0x1384 targets 0x13c4, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x13fc targets 0x1068 and is always taken.
  The `beq` branch at 0x1414 targets 0x1454, is taken when at(=[[a0+16]:8+10280]:8) == 0, and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x1438 targets 0x1474, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x144c targets 0x10b0 and is always taken.
  The `beq` branch at 0x146c targets 0x10b0 and is always taken.
  The `beq` branch at 0x149c targets 0x1520, is taken when 0 >= a0(?) (unsigned), and falls through when 0 < a0(?) (unsigned).
  The `beq` branch at 0x1534 targets 0x1574, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x15ac targets 0x1444 and is always taken.
  The return at 0xd88 has v0 = one of 0x3, ret(odsy_i2c_xfer_done_loop), 0x1, 0x0.

- `odsy_i2c_sendbyte` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0x15b4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Range: 0x15b4-0x1aac (1272 bytes).
  It occupies 1272 bytes.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x15f4, `ld` at 0x1610, `ld` at 0x1620.
  4 such `lw` accesses load 4 bytes from [a0]:8 +0x0, including `lw` at 0x1600, `lw` at 0x1614, `lw` at 0x1624.
  5 such `sw` accesses store 4 bytes to [a0]:8 +0x0, including `sw` at 0x160c, `sw` at 0x161c, `sw` at 0x163c.
  38 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x1640, `ld` at 0x1658, `ld` at 0x16cc.
  3 such `lw` accesses load 4 bytes from [a0+16]:8 +0x5720, including `lw` at 0x1644, `lw` at 0x166c, `lw` at 0x16d0.
  12 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2e0, including `ld` at 0x1654, `ld` at 0x16b0, `ld` at 0x1728.
  The `lhu` at 0x168c loads 2 bytes from a0 (arg0 at entry) +0x18.
  The `lwu` at 0x169c loads 4 bytes from [a0]:8 +0x0.
  9 such `sd` accesses store 8 bytes to [[a0+16]:8+736]:8 +0x400000, including `sd` at 0x16c8, `sd` at 0x1820, `sd` at 0x1860.
  4 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2828, including `ld` at 0x1708, `ld` at 0x1870, `ld` at 0x1908.
  10 such `lw` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lw` at 0x17d0, `lw` at 0x1828, `lw` at 0x1888.
  4 such `lhu` accesses load 2 bytes from [a0+16]:8 +0x2830, including `lhu` at 0x17d4, `lhu` at 0x1834, `lhu` at 0x1980.
  10 such `sw` accesses store 4 bytes to [a0+16]:8 +0x55f0, including `sw` at 0x17f8, `sw` at 0x1844, `sw` at 0x1890.
  6 such `lwu` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lwu` at 0x1804, `lwu` at 0x184c, `lwu` at 0x189c.
  2 such `sd` accesses store 8 bytes to [a0+16]:8 +0x2828, including `sd` at 0x18e0, `sd` at 0x1a90.
  The `jal` at 0x15cc calls odsy_i2c_busy_high_loop with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1650 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x16dc calls odsy_i2c_xfer_done_loop with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x16fc calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[[a0+16]:8+22304], a6=[a0+16]:8.
  The `jal` at 0x1714 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x1724 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x1738 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x174c calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a4=[[a0+16]:8+22304], a6=[a0+16]:8.
  The `jal` at 0x1770 calls odsy_i2c_recv_ack with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1788 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x1798 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x17c4 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x18ec calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=one of 0x400000, 0x7960400100000000, a6=[a0+16]:8, a7=-0x2.
  The `jal` at 0x18fc calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[[a0+16]:8+736]:8+0x400000, a6=[a0+16]:8.
  The `jal` at 0x1918 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x1928 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x193c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x194c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x195c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1970 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x1a9c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a6=[a0+16]:8, a7=-0x2.
  The `beq` branch at 0x15d8 targets 0x15f0, is taken when v0(=ret(odsy_i2c_busy_high_loop)) == 0, and falls through when v0(=ret(odsy_i2c_busy_high_loop)) != 0.
  The `beq` branch at 0x15fc targets 0x1680, is taken when v0(=0x1) == at(=a3), and falls through when v0(=0x1) != at(=a3).
  The `beq` branch at 0x1648 targets 0x1748, is taken when a4(=[[a0+16]:8+22304]) == 0, and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x1664 targets 0x168c, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1670 targets 0x16fc, is taken when a4(=[[a0+16]:8+22304]) == 0, and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x1678 targets 0x15e8 and is always taken.
  The `beq` branch at 0x1684 targets 0x1610 and is always taken.
  The `beq` branch at 0x16d4 targets 0x18fc, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x16e8 targets 0x175c, is taken when v0(=ret(odsy_i2c_xfer_done_loop)) == 0, and falls through when v0(=ret(odsy_i2c_xfer_done_loop)) != 0.
  The `beq` branch at 0x16f4 targets 0x15e8 and is always taken.
  The `beq` branch at 0x170c targets 0x1784, is taken when a4(=[[a0+16]:8+10280]:8) == 0, and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x172c targets 0x17c0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1740 targets 0x1674 and is always taken.
  The `beq` branch at 0x1754 targets 0x164c and is always taken.
  The `beq` branch at 0x1764 targets 0x17a8, is taken when a4(=0x1) == a5(=a3), and falls through when a4(=0x1) != a5(=a3).
  The `beq` branch at 0x177c targets 0x15e8 and is always taken.
  The `beq` branch at 0x17a0 targets 0x1674 and is always taken.
  The `beq` branch at 0x17b8 targets 0x1768 and is always taken.
  The `beq` branch at 0x17e8 targets 0x1868, is taken when 0 >= a0(?) (unsigned), and falls through when 0 < a0(?) (unsigned).
  The `beq` branch at 0x187c targets 0x18bc, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x18f4 targets 0x1738 and is always taken.
  The `beq` branch at 0x190c targets 0x194c, is taken when a4(=[[a0+16]:8+10280]:8) == 0, and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x1930 targets 0x196c, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1944 targets 0x16dc and is always taken.
  The `beq` branch at 0x1964 targets 0x16dc and is always taken.
  The `beq` branch at 0x1994 targets 0x1a18, is taken when 0 >= a0(?) (unsigned), and falls through when 0 < a0(?) (unsigned).
  The `beq` branch at 0x1a2c targets 0x1a6c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1aa4 targets 0x193c and is always taken.
  The return at 0x15e8 has v0 = one of ret(odsy_i2c_busy_high_loop), 0x3, ret(odsy_i2c_xfer_done_loop), ret(odsy_i2c_recv_ack).

- `odsy_i2c_short_recvbyte` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0x1aac (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Range: 0x1aac-0x1b14 (104 bytes).
  It occupies 104 bytes.
  The `ld` at 0x1adc loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1ae4 loads 4 bytes from [a0+8]:8 +0x0.
  The `sb` at 0x1b08 stores 1 byte to a1 (arg1 at entry) +0x0.
  The `jal` at 0x1ab8 calls odsy_i2c_xfer_done_loop with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1ac4 targets 0x1ad8, is taken when v0(=ret(odsy_i2c_xfer_done_loop)) == 0, and falls through when v0(=ret(odsy_i2c_xfer_done_loop)) != 0.
  The `beq` branch at 0x1af4 targets 0x1b0c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x1b04 targets 0x1ad0 and is always taken.
  The `beq` branch at 0x1b0c targets 0x1ad0 and is always taken.
  The return at 0x1ad0 has v0 = one of ret(odsy_i2c_xfer_done_loop), 0x0, 0x1.

- `odsy_i2c_long_recvbyte` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0x1b14 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Range: 0x1b14-0x27ec (3288 bytes).
  It occupies 3288 bytes.
  114 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x1b1c, `ld` at 0x1b48, `ld` at 0x1b94.
  9 such `lw` accesses load 4 bytes from [a0+16]:8 +0x5720, including `lw` at 0x1b24, `lw` at 0x1b58, `lw` at 0x1b98.
  36 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2e0, including `ld` at 0x1b44, `ld` at 0x1b74, `ld` at 0x1c00.
  3 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x18, including `lhu` at 0x1b70, `lhu` at 0x1c90, `lhu` at 0x1f6c.
  11 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x1b88, `ld` at 0x1ba4, `ld` at 0x1bb8.
  The `lw` at 0x1b8c loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+24]:2 + [a0+24]:2) << 0x2)) +0x220000.
  9 such `sw` accesses store 4 bytes to [a0]:8 +0x0, including `sw` at 0x1b90, `sw` at 0x1bb4, `sw` at 0x1bc8.
  6 such `lw` accesses load 4 bytes from [a0]:8 +0x0, including `lw` at 0x1ba8, `lw` at 0x1bbc, `lw` at 0x1be0.
  12 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2828, including `ld` at 0x1c30, `ld` at 0x1d7c, `ld` at 0x1e70.
  2 such `lwu` accesses load 4 bytes from [a0]:8 +0x0, including `lwu` at 0x1cac, `lwu` at 0x1f8c.
  26 such `sd` accesses store 8 bytes to [[a0+16]:8+736]:8 +0x400000, including `sd` at 0x1cd4, `sd` at 0x1e20, `sd` at 0x1e60.
  30 such `lw` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lw` at 0x1dd0, `lw` at 0x1e28, `lw` at 0x1e88.
  12 such `lhu` accesses load 2 bytes from [a0+16]:8 +0x2830, including `lhu` at 0x1dd4, `lhu` at 0x1e34, `lhu` at 0x2064.
  30 such `sw` accesses store 4 bytes to [a0+16]:8 +0x55f0, including `sw` at 0x1df8, `sw` at 0x1e44, `sw` at 0x1e90.
  18 such `lwu` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lwu` at 0x1e04, `lwu` at 0x1e4c, `lwu` at 0x1e9c.
  6 such `sd` accesses store 8 bytes to [a0+16]:8 +0x2828, including `sd` at 0x1ee0, `sd` at 0x2170, `sd` at 0x2380.
  The `jal` at 0x1b40 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x1bfc calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x1c24 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=0x220000, a6=[a0+16]:8.
  The `jal` at 0x1c3c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x1c4c calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x1c60 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x1c74 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=[a0+16]:8.
  The `jal` at 0x1ce8 calls odsy_i2c_short_recvbyte with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=?, a3=?.
  The `jal` at 0x1d24 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x1d50 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x1d60 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1d70 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=[[a0+16]:8+22304], a6=[a0+16]:8.
  The `jal` at 0x1d8c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x1d9c calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x1db0 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x1dc4 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x1eec calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=one of 0x400000, 0x7960400100000000, a6=[a0+16]:8, a7=-0x2.
  The `jal` at 0x1efc calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[[a0+16]:8+22304], a5=[([[a0+16]:8+736]:8 + (([a0+24]:2 + [a0+24]:2) << 0x2))+2228224], a6=[a0+16]:8.
  The `jal` at 0x1f18 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x1f28 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x1f3c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x1f50 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a4=[[a0+16]:8+22304], a5=-0x101, a6=[a0+16]:8.
  The `jal` at 0x1fe0 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x1ff0 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2000 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[[a0+16]:8+22304], a6=[a0+16]:8.
  The `jal` at 0x201c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x202c calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x2040 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x2054 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x217c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=one of 0x400000, 0x7960400100000000, a6=[a0+16]:8, a7=-0x2.
  The `jal` at 0x218c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x219c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x21dc calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=0x400000, a5=[[a0+16]:8+22304], a6=[a0+16]:8.
  The `jal` at 0x21f8 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a5=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x2208 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x221c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x2230 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a5=a2 at entry (arg2), a6=[a0+16]:8.
  The `jal` at 0x2240 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x2250 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2264 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x238c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a6=[a0+16]:8, a7=-0x2.
  The `jal` at 0x23a0 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x24cc calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a6=[a0+16]:8, a7=-0x2.
  The `jal` at 0x24dc calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a5=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x24ec calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x24fc calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=a2 at entry (arg2), a6=[a0+16]:8.
  The `jal` at 0x2518 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x2528 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x253c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x2550 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x267c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a6=[a0+16]:8, a7=-0x2.
  The `jal` at 0x268c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x269c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x26b0 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x27dc calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a6=[a0+16]:8, a7=-0x2.
  The `beq` branch at 0x1b34 targets 0x1c70, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x1b50 targets 0x1b70, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1b5c targets 0x1c24, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x1b9c targets 0x1efc, is taken when a4(=[[a0+16]:8+22304]) == 0, and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x1bdc targets 0x1c84, is taken when v0(=0x1) == v1(=a1), and falls through when v0(=0x1) != v1(=a1).
  The `beq` branch at 0x1bf4 targets 0x1f4c, is taken when a4(=[[a0+16]:8+22304]) == 0, and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x1c08 targets 0x1c90, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1c14 targets 0x1d70, is taken when a5(=[[a0+16]:8+22304]) == 0, and falls through when a5(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x1c1c targets 0x1b68 and is always taken.
  The `beq` branch at 0x1c34 targets 0x1d4c, is taken when at(=[[a0+16]:8+10280]:8) == 0, and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x1c54 targets 0x1dc0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1c68 targets 0x1b60 and is always taken.
  The `beq` branch at 0x1c7c targets 0x1b3c and is always taken.
  The `beq` branch at 0x1c88 targets 0x1bec and is always taken.
  The `beq` branch at 0x1ce0 targets 0x21dc, is taken when a5(=[[a0+16]:8+22304]) == 0, and falls through when a5(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x1cfc targets 0x1f60, is taken when a4(=0x1) == a5(=a2), and falls through when a4(=0x1) != a5(=a2).
  The `beq` branch at 0x1d18 targets 0x222c, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x1d30 targets 0x1f6c, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1d3c targets 0x2000, is taken when a4(=[[a0+16]:8+22304]) == 0, and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x1d44 targets 0x1b68 and is always taken.
  The `beq` branch at 0x1d68 targets 0x1b60 and is always taken.
  The `beq` branch at 0x1d80 targets 0x1fe0, is taken when a4(=[[a0+16]:8+10280]:8) == 0, and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x1da4 targets 0x2050, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1db8 targets 0x1c18 and is always taken.
  The `beq` branch at 0x1de8 targets 0x1e68, is taken when 0 >= a2(?) (unsigned), and falls through when 0 < a2(?) (unsigned).
  The `beq` branch at 0x1e7c targets 0x1ebc, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1ef4 targets 0x1c60 and is always taken.
  The `beq` branch at 0x1f0c targets 0x218c, is taken when a4(=[[a0+16]:8+10280]:8) == 0, and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x1f30 targets 0x2260, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x1f44 targets 0x1ba8 and is always taken.
  The `beq` branch at 0x1f58 targets 0x1bf8 and is always taken.
  The `beq` branch at 0x1f64 targets 0x1d10 and is always taken.
  The `beq` branch at 0x1fbc targets 0x24fc, is taken when a4(=[[a0+16]:8+22304]) == 0, and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x1fc8 targets 0x21ac, is taken when v1(=0x1) == a4(=a2), and falls through when v1(=0x1) != a4(=a2).
  The `beq` branch at 0x1fd0 targets 0x21c4, is taken when a5(=a1) == 0, and falls through when a5(=a1) != 0.
  The `beq` branch at 0x1fd8 targets 0x1b68 and is always taken.
  The `beq` branch at 0x1ff8 targets 0x1c18 and is always taken.
  The `beq` branch at 0x2010 targets 0x2240, is taken when a4(=[[a0+16]:8+10280]:8) == 0, and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x2034 targets 0x239c, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2048 targets 0x1d40 and is always taken.
  The `beq` branch at 0x2078 targets 0x20f8, is taken when 0 >= a2(?) (unsigned), and falls through when 0 < a2(?) (unsigned).
  The `beq` branch at 0x210c targets 0x214c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x2184 targets 0x1db0 and is always taken.
  The `beq` branch at 0x21a4 targets 0x1ba8 and is always taken.
  The `bne` branch at 0x21bc targets 0x1fd4, is taken when a4(=a1) != 0, and falls through when a4(=a1) == 0.
  The `beq` branch at 0x21d4 targets 0x1fd4 and is always taken.
  The `beq` branch at 0x21ec targets 0x24dc, is taken when a5(=[[a0+16]:8+10280]:8) == 0, and falls through when a5(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x2210 targets 0x254c, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2224 targets 0x1ce8 and is always taken.
  The `beq` branch at 0x2238 targets 0x1d20 and is always taken.
  The `beq` branch at 0x2258 targets 0x1d40 and is always taken.
  The `beq` branch at 0x2288 targets 0x2308, is taken when 0 >= t0(?) (unsigned), and falls through when 0 < t0(?) (unsigned).
  The `beq` branch at 0x231c targets 0x235c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x2394 targets 0x1f3c and is always taken.
  The `beq` branch at 0x23c4 targets 0x2448, is taken when 0 >= a2(?) (unsigned), and falls through when 0 < a2(?) (unsigned).
  The `beq` branch at 0x245c targets 0x249c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x24d4 targets 0x2040 and is always taken.
  The `beq` branch at 0x24f4 targets 0x1ce8 and is always taken.
  The `beq` branch at 0x250c targets 0x268c, is taken when a4(=[[a0+16]:8+10280]:8) == 0, and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x2530 targets 0x26ac, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2544 targets 0x1fc0 and is always taken.
  The `beq` branch at 0x2574 targets 0x25f8, is taken when 0 >= t0(?) (unsigned), and falls through when 0 < t0(?) (unsigned).
  The `beq` branch at 0x260c targets 0x264c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x2684 targets 0x221c and is always taken.
  The `beq` branch at 0x26a4 targets 0x1fc0 and is always taken.
  The `beq` branch at 0x26d4 targets 0x2758, is taken when 0 >= a3(?) (unsigned), and falls through when 0 < a3(?) (unsigned).
  The `beq` branch at 0x276c targets 0x27ac, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x27e4 targets 0x253c and is always taken.
  The return at 0x1b68 has v0 = one of 0x3, ret(odsy_i2c_short_recvbyte).

- `odsy_i2c_becomeSlaveRecv` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0x27ec (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Range: 0x27ec-0x3130 (2372 bytes).
  It occupies 2372 bytes.
  76 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x2828, `ld` at 0x2840, `ld` at 0x2888.
  6 such `lw` accesses load 4 bytes from [a0+16]:8 +0x5720, including `lw` at 0x282c, `lw` at 0x2850, `lw` at 0x288c.
  24 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2e0, including `ld` at 0x283c, `ld` at 0x2868, `ld` at 0x2924.
  2 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x18, including `lhu` at 0x2864, `lhu` at 0x29c0.
  11 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x287c, `ld` at 0x2898, `ld` at 0x28a8.
  The `lw` at 0x2880 loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+24]:2 + [a0+24]:2) << 0x2)) +0x220000.
  8 such `sw` accesses store 4 bytes to [a0]:8 +0x0, including `sw` at 0x2884, `sw` at 0x28a4, `sw` at 0x28b8.
  7 such `lw` accesses load 4 bytes from [a0]:8 +0x0, including `lw` at 0x289c, `lw` at 0x28ac, `lw` at 0x28c0.
  8 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2828, including `ld` at 0x2954, `ld` at 0x2a7c, `ld` at 0x2b70.
  The `lwu` at 0x29dc loads 4 bytes from [a0]:8 +0x0.
  17 such `sd` accesses store 8 bytes to [[a0+16]:8+736]:8 +0x400000, including `sd` at 0x2a04, `sd` at 0x2b20, `sd` at 0x2b60.
  20 such `lw` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lw` at 0x2ad0, `lw` at 0x2b28, `lw` at 0x2b88.
  8 such `lhu` accesses load 2 bytes from [a0+16]:8 +0x2830, including `lhu` at 0x2ad4, `lhu` at 0x2b34, `lhu` at 0x2cd4.
  20 such `sw` accesses store 4 bytes to [a0+16]:8 +0x55f0, including `sw` at 0x2af8, `sw` at 0x2b44, `sw` at 0x2b90.
  12 such `lwu` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lwu` at 0x2b04, `lwu` at 0x2b4c, `lwu` at 0x2b9c.
  4 such `sd` accesses store 8 bytes to [a0+16]:8 +0x2828, including `sd` at 0x2be0, `sd` at 0x2de0, `sd` at 0x2f8c.
  The `ld` at 0x2c60 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x2c64 loads 4 bytes from [a0+8]:8 +0x0.
  The `sb` at 0x2fac stores 1 byte to a3 (arg3 at entry) +0x0.
  The `jal` at 0x2804 calls odsy_i2c_busy_high_loop with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2838 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x2920 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x2948 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=0x220000, a6=[a0+16]:8.
  The `jal` at 0x2960 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x2970 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x2984 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x2998 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x2a18 calls odsy_i2c_xfer_done_loop with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x2a3c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x2a4c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2a70 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=[[a0+16]:8+22304], a6=[a0+16]:8.
  The `jal` at 0x2a8c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a5=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x2a9c calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x2ab0 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x2ac4 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x2bec calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=one of 0x400000, 0x7960400100000000, a6=[a0+16]:8, a7=-0x2.
  The `jal` at 0x2bfc calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[[a0+16]:8+22304], a5=[([[a0+16]:8+736]:8 + (([a0+24]:2 + [a0+24]:2) << 0x2))+2228224], a6=[a0+16]:8.
  The `jal` at 0x2c18 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x2c28 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x2c3c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x2c50 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a4=0xfffffffffe03ffff, a5=[[a0+16]:8+22304], a6=[a0+16]:8.
  The `jal` at 0x2ca0 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a5=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x2cb0 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2cc4 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x2dec calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=one of 0x400000, 0x7960400100000000, a6=[a0+16]:8, a7=-0x2.
  The `jal` at 0x2dfc calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x2e0c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2e1c calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=[[a0+16]:8+736]:8+0x400000, a6=[a0+16]:8.
  The `jal` at 0x2e38 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x2e48 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x2e5c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x2e70 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x2f98 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a6=[a0+16]:8, a7=-0x2.
  The `jal` at 0x2fd0 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x2fe0 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2ff4 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x3120 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a6=[a0+16]:8, a7=-0x2.
  The `beq` branch at 0x2810 targets 0x2828, is taken when v0(=ret(odsy_i2c_busy_high_loop)) == 0, and falls through when v0(=ret(odsy_i2c_busy_high_loop)) != 0.
  The `beq` branch at 0x2830 targets 0x2994, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x2848 targets 0x2864, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2854 targets 0x2948, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x285c targets 0x2820 and is always taken.
  The `beq` branch at 0x2890 targets 0x2bfc, is taken when a4(=[[a0+16]:8+22304]) == 0, and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x28d4 targets 0x29a8, is taken when v1(=a1) == a4(=0x1), and falls through when v1(=a1) != a4(=0x1).
  The `beq` branch at 0x28e0 targets 0x2a5c, is taken when a4(=a1) == 0, and falls through when a4(=a1) != 0.
  The `beq` branch at 0x2918 targets 0x2c4c, is taken when a5(=[[a0+16]:8+22304]) == 0, and falls through when a5(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x292c targets 0x29c0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2938 targets 0x2a70, is taken when a5(=[[a0+16]:8+22304]) == 0, and falls through when a5(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x2940 targets 0x2820 and is always taken.
  The `beq` branch at 0x2958 targets 0x2a38, is taken when at(=[[a0+16]:8+10280]:8) == 0, and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x2978 targets 0x2ac0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x298c targets 0x2858 and is always taken.
  The `beq` branch at 0x29a0 targets 0x2834 and is always taken.
  The `beq` branch at 0x29b8 targets 0x28e8 and is always taken.
  The `beq` branch at 0x2a10 targets 0x2e1c, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x2a24 targets 0x2c60, is taken when v0(=ret(odsy_i2c_xfer_done_loop)) == 0, and falls through when v0(=ret(odsy_i2c_xfer_done_loop)) != 0.
  The `beq` branch at 0x2a30 targets 0x2820 and is always taken.
  The `beq` branch at 0x2a54 targets 0x2858 and is always taken.
  The `beq` branch at 0x2a68 targets 0x28e8 and is always taken.
  The `beq` branch at 0x2a80 targets 0x2ca0, is taken when a5(=[[a0+16]:8+10280]:8) == 0, and falls through when a5(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x2aa4 targets 0x2cc0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2ab8 targets 0x293c and is always taken.
  The `beq` branch at 0x2ae8 targets 0x2b68, is taken when 0 >= a2(?) (unsigned), and falls through when 0 < a2(?) (unsigned).
  The `beq` branch at 0x2b7c targets 0x2bbc, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x2bf4 targets 0x2984 and is always taken.
  The `beq` branch at 0x2c0c targets 0x2dfc, is taken when a4(=[[a0+16]:8+10280]:8) == 0, and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x2c30 targets 0x2e6c, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2c44 targets 0x289c and is always taken.
  The `beq` branch at 0x2c58 targets 0x291c and is always taken.
  The `bne` branch at 0x2c78 targets 0x2c98, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x2c90 targets 0x2fa8, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x2c98 targets 0x2820 and is always taken.
  The `beq` branch at 0x2cb8 targets 0x293c and is always taken.
  The `beq` branch at 0x2ce8 targets 0x2d68, is taken when 0 >= a2(?) (unsigned), and falls through when 0 < a2(?) (unsigned).
  The `beq` branch at 0x2d7c targets 0x2dbc, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x2df4 targets 0x2ab0 and is always taken.
  The `beq` branch at 0x2e14 targets 0x289c and is always taken.
  The `beq` branch at 0x2e2c targets 0x2fd0, is taken when a4(=[[a0+16]:8+10280]:8) == 0, and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x2e50 targets 0x2ff0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x2e64 targets 0x2a18 and is always taken.
  The `beq` branch at 0x2e94 targets 0x2f14, is taken when 0 >= t0(?) (unsigned), and falls through when 0 < t0(?) (unsigned).
  The `beq` branch at 0x2f28 targets 0x2f68, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x2fa0 targets 0x2c3c and is always taken.
  The `beq` branch at 0x2fc8 targets 0x2820 and is always taken.
  The `beq` branch at 0x2fe8 targets 0x2a18 and is always taken.
  The `beq` branch at 0x3018 targets 0x309c, is taken when 0 >= a2(?) (unsigned), and falls through when 0 < a2(?) (unsigned).
  The `beq` branch at 0x30b0 targets 0x30f0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x3128 targets 0x2e5c and is always taken.
  The return at 0x2820 has v0 = one of ret(odsy_i2c_busy_high_loop), 0x3, ret(odsy_i2c_xfer_done_loop), 0x1, 0x0.

- `odsy_i2c_slave_recvbyte` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0x3130 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Range: 0x3130-0x3a60 (2352 bytes).
  It occupies 2352 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x3130, `ld` at 0x354c.
  2 such `lw` accesses load 4 bytes from [a0]:8 +0x0, including `lw` at 0x3138, `lw` at 0x3550.
  2 such `sw` accesses store 4 bytes to [a0]:8 +0x0, including `sw` at 0x3168, `sw` at 0x3574.
  76 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x316c, `ld` at 0x3194, `ld` at 0x31e0.
  6 such `lw` accesses load 4 bytes from [a0+16]:8 +0x5720, including `lw` at 0x3174, `lw` at 0x31a0, `lw` at 0x31e4.
  24 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2e0, including `ld` at 0x3190, `ld` at 0x31bc, `ld` at 0x325c.
  2 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x1a, including `lhu` at 0x31b8, `lhu` at 0x3310.
  8 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x31d4, `ld` at 0x31f0, `ld` at 0x327c.
  2 such `lw` accesses load 4 bytes from ([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2)) +0x220000, including `lw` at 0x31d8, `lw` at 0x3330.
  2 such `sw` accesses store 4 bytes to [a0+8]:8 +0x0, including `sw` at 0x31dc, `sw` at 0x3334.
  4 such `lw` accesses load 4 bytes from [a0+8]:8 +0x0, including `lw` at 0x31f8, `lw` at 0x3284, `lw` at 0x3354.
  8 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2828, including `ld` at 0x323c, `ld` at 0x346c, `ld` at 0x3508.
  The `sb` at 0x335c stores 1 byte to ?.
  20 such `lw` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lw` at 0x33cc, `lw` at 0x3424, `lw` at 0x3480.
  8 such `lhu` accesses load 2 bytes from [a0+16]:8 +0x2830, including `lhu` at 0x33d0, `lhu` at 0x3430, `lhu` at 0x368c.
  20 such `sw` accesses store 4 bytes to [a0+16]:8 +0x55f0, including `sw` at 0x33f4, `sw` at 0x3440, `sw` at 0x348c.
  12 such `lwu` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lwu` at 0x3400, `lwu` at 0x3448, `lwu` at 0x3498.
  16 such `sd` accesses store 8 bytes to [[a0+16]:8+736]:8 +0x400000, including `sd` at 0x341c, `sd` at 0x345c, `sd` at 0x3478.
  4 such `sd` accesses store 8 bytes to [a0+16]:8 +0x2828, including `sd` at 0x34e0, `sd` at 0x379c, `sd` at 0x38e0.
  The `jal` at 0x318c calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x3210 calls odsy_i2c_xfer_done_loop with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x3230 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=[[a0+16]:8+22304], a6=[a0+16]:8.
  The `jal` at 0x3248 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x3258 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x326c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x32cc calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x32f4 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[a0+16]:8+22304], a6=[a0+16]:8, a7=[a0]:8.
  The `jal` at 0x339c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x33ac calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x33c0 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x34ec calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `jal` at 0x34fc calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[a0+8]:8, a6=[a0+16]:8.
  The `jal` at 0x3518 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x3528 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x353c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x3584 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=[[a0+16]:8+22304], a6=[a0+16]:8.
  The `jal` at 0x35a0 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x35b0 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x35c4 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x35d8 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a4=[[a0+16]:8+22304], a6=[a0+16]:8.
  The `jal` at 0x35e8 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x35f8 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x3608 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[a0+8]:8, a5=(([a0+26]:2 + [a0+26]:2) << 0x2), a6=[a0+16]:8.
  The `jal` at 0x3624 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x3634 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x3648 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x3658 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a6=[a0+16]:8.
  The `jal` at 0x3668 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x367c calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x37a8 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `jal` at 0x37bc calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x38ec calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `jal` at 0x38fc calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8.
  The `jal` at 0x390c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x3920 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x3a50 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `beq` branch at 0x3160 targets 0x316c, is taken when at(?) == a1, and falls through when at(?) != a1.
  The `beq` branch at 0x3180 targets 0x32f0, is taken when a4(=[[a0+16]:8+22304]) == 0, and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x3198 targets 0x31b8, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x31a4 targets 0x3230, is taken when a5(=[[a0+16]:8+22304]) == 0, and falls through when a5(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x31e8 targets 0x34fc, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x3208 targets 0x3390, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x321c targets 0x327c, is taken when v0(=ret(odsy_i2c_xfer_done_loop)) == 0, and falls through when v0(=ret(odsy_i2c_xfer_done_loop)) != 0.
  The `beq` branch at 0x3228 targets 0x31ac and is always taken.
  The `beq` branch at 0x3240 targets 0x3398, is taken when at(=[[a0+16]:8+10280]:8) == 0, and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x3260 targets 0x33bc, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x3274 targets 0x31a8 and is always taken.
  The `bne` branch at 0x32a0 targets 0x3304, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bne` branch at 0x32a8 targets 0x3304, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x32b4 targets 0x354c, is taken when at(=a2) < v1(?) (signed), and falls through when at(=a2) >= v1(?) (signed).
  The `beq` branch at 0x32c4 targets 0x35d4, is taken when a4(=[[a0+16]:8+22304]) == 0, and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x32d4 targets 0x3310, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x32e0 targets 0x3584, is taken when a5(=[[a0+16]:8+22304]) == 0, and falls through when a5(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x32e8 targets 0x31ac and is always taken.
  The `beq` branch at 0x32fc targets 0x3188 and is always taken.
  The `beq` branch at 0x3308 targets 0x31ac and is always taken.
  The `beq` branch at 0x3340 targets 0x3608, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `bne` branch at 0x3384 targets 0x3210, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x3390 targets 0x31ac and is always taken.
  The `beq` branch at 0x33b4 targets 0x31a8 and is always taken.
  The `beq` branch at 0x33e4 targets 0x3464, is taken when 0 >= a2(?) (unsigned), and falls through when 0 < a2(?) (unsigned).
  The `beq` branch at 0x3474 targets 0x34b8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x34f4 targets 0x326c and is always taken.
  The `beq` branch at 0x350c targets 0x35e8, is taken when at(=[[a0+16]:8+10280]:8) == 0, and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x3530 targets 0x3678, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x3544 targets 0x31f4 and is always taken.
  The `beq` branch at 0x357c targets 0x31ac and is always taken.
  The `beq` branch at 0x3594 targets 0x3658, is taken when at(=[[a0+16]:8+10280]:8) == 0, and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x35b8 targets 0x37b8, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x35cc targets 0x32e8 and is always taken.
  The `beq` branch at 0x35e0 targets 0x32c8 and is always taken.
  The `beq` branch at 0x3600 targets 0x31f4 and is always taken.
  The `beq` branch at 0x3618 targets 0x38fc, is taken when a4(=[[a0+16]:8+10280]:8) == 0, and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x363c targets 0x391c, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x3650 targets 0x3348 and is always taken.
  The `beq` branch at 0x3670 targets 0x32e8 and is always taken.
  The `beq` branch at 0x36a0 targets 0x3720, is taken when 0 >= a7(?) (unsigned), and falls through when 0 < a7(?) (unsigned).
  The `beq` branch at 0x3730 targets 0x3774, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x37b0 targets 0x353c and is always taken.
  The `beq` branch at 0x37e0 targets 0x3864, is taken when 0 >= a2(?) (unsigned), and falls through when 0 < a2(?) (unsigned).
  The `beq` branch at 0x3874 targets 0x38b8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x38f4 targets 0x35c4 and is always taken.
  The `beq` branch at 0x3914 targets 0x3348 and is always taken.
  The `beq` branch at 0x3944 targets 0x39c8, is taken when 0 >= a7(?) (unsigned), and falls through when 0 < a7(?) (unsigned).
  The `beq` branch at 0x39d8 targets 0x3a1c, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x3a58 targets 0x3648 and is always taken.
  The return at 0x31b0 has v0 = one of 0x3, ret(odsy_i2c_xfer_done_loop), 0x1, 0x0.

- `odsy_i2c_xfer_done_loop` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0x3a60 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Range: 0x3a60-0x3eb4 (1108 bytes).
  It occupies 1108 bytes.
  39 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x3a88, `ld` at 0x3aa8, `ld` at 0x3af0.
  3 such `lw` accesses load 4 bytes from [a0+16]:8 +0x5720, including `lw` at 0x3a8c, `lw` at 0x3aac, `lw` at 0x3af4.
  12 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2e0, including `ld` at 0x3a9c, `ld` at 0x3ad0, `ld` at 0x3b6c.
  The `lhu` at 0x3acc loads 2 bytes from a0 (arg0 at entry) +0x1a.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x3ae4, `ld` at 0x3b00, `ld` at 0x3be8.
  The `lw` at 0x3ae8 loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2)) +0x220000.
  The `sw` at 0x3aec stores 4 bytes to [a0+8]:8 +0x0.
  The `lw` at 0x3b04 loads 4 bytes from [a0+8]:8 +0x0.
  4 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2828, including `ld` at 0x3b48, `ld` at 0x3bac, `ld` at 0x3cbc.
  10 such `lw` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lw` at 0x3c1c, `lw` at 0x3c70, `lw` at 0x3cd0.
  4 such `lhu` accesses load 2 bytes from [a0+16]:8 +0x2830, including `lhu` at 0x3c20, `lhu` at 0x3c7c, `lhu` at 0x3d84.
  10 such `sw` accesses store 4 bytes to [a0+16]:8 +0x55f0, including `sw` at 0x3c40, `sw` at 0x3c8c, `sw` at 0x3cdc.
  6 such `lwu` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lwu` at 0x3c4c, `lwu` at 0x3c98, `lwu` at 0x3ce8.
  8 such `sd` accesses store 8 bytes to [[a0+16]:8+736]:8 +0x400000, including `sd` at 0x3c68, `sd` at 0x3cac, `sd` at 0x3cc8.
  2 such `sd` accesses store 8 bytes to [a0+16]:8 +0x2828, including `sd` at 0x3d30, `sd` at 0x3e98.
  The `jal` at 0x3a98 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x3b1c calls odsy_usdelay with a0=[a0+16]:8, a1=0x1f4, a2=?, a3=?.
  The `jal` at 0x3b3c calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=[[a0+16]:8+22304], a3=?, a4=[a0+16]:8.
  The `jal` at 0x3b58 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+16]:8+10280]:8, a4=[a0+16]:8.
  The `jal` at 0x3b68 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x3b7c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x3b90 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x3ba0 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[[a0+16]:8+22304], a4=[a0+16]:8.
  The `jal` at 0x3bb8 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8.
  The `jal` at 0x3bc8 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x3bdc calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x3bec calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[[a0+16]:8+10280]:8, a4=[a0+16]:8.
  The `jal` at 0x3bfc calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x3c10 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x3d3c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `jal` at 0x3d50 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8.
  The `jal` at 0x3d60 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x3d74 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x3ea4 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `beq` branch at 0x3a80 targets 0x3b34, is taken when s1(?) >= 0x1f4 (unsigned), and falls through when s1(?) < 0x1f4 (unsigned).
  The `beq` branch at 0x3a90 targets 0x3b8c, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x3aa4 targets 0x3acc, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x3ab0 targets 0x3b3c, is taken when a2(=[[a0+16]:8+22304]) == 0, and falls through when a2(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x3af8 targets 0x3ba0, is taken when a3(=[[a0+16]:8+22304]) == 0, and falls through when a3(=[[a0+16]:8+22304]) != 0.
  The `bne` branch at 0x3b10 targets 0x3b2c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x3b24 targets 0x3a7c and is always taken.
  The `beq` branch at 0x3b2c targets 0x3abc and is always taken.
  The `beq` branch at 0x3b34 targets 0x3abc and is always taken.
  The `beq` branch at 0x3b4c targets 0x3bec, is taken when a3(=[[a0+16]:8+10280]:8) == 0, and falls through when a3(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x3b70 targets 0x3c0c, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x3b84 targets 0x3ab8 and is always taken.
  The `beq` branch at 0x3b98 targets 0x3a94 and is always taken.
  The `beq` branch at 0x3bb0 targets 0x3d4c, is taken when a2(=[[a0+16]:8+10280]:8) == 0, and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x3bd0 targets 0x3d70, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x3be4 targets 0x3b04 and is always taken.
  The `beq` branch at 0x3c04 targets 0x3ab8 and is always taken.
  The `beq` branch at 0x3c34 targets 0x3cb4, is taken when 0 >= a1(?) (unsigned), and falls through when 0 < a1(?) (unsigned).
  The `beq` branch at 0x3cc4 targets 0x3d08, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x3d44 targets 0x3b7c and is always taken.
  The `beq` branch at 0x3d68 targets 0x3b04 and is always taken.
  The `beq` branch at 0x3d98 targets 0x3e1c, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x3e2c targets 0x3e70, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x3eac targets 0x3bdc and is always taken.
  The return at 0x3ac4 has v0 = one of 0x0, 0x2, 0x3.

- `odsy_i2c_busy_high_loop` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0x3eb4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Range: 0x3eb4-0x4310 (1116 bytes).
  It occupies 1116 bytes.
  39 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x3edc, `ld` at 0x3efc, `ld` at 0x3f44.
  3 such `lw` accesses load 4 bytes from [a0+16]:8 +0x5720, including `lw` at 0x3ee0, `lw` at 0x3f00, `lw` at 0x3f48.
  12 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2e0, including `ld` at 0x3ef0, `ld` at 0x3f24, `ld` at 0x3fc8.
  The `lhu` at 0x3f20 loads 2 bytes from a0 (arg0 at entry) +0x1a.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x3f38, `ld` at 0x3f54, `ld` at 0x4044.
  The `lw` at 0x3f3c loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2)) +0x220000.
  The `sw` at 0x3f40 stores 4 bytes to [a0+8]:8 +0x0.
  The `lw` at 0x3f5c loads 4 bytes from [a0+8]:8 +0x0.
  4 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2828, including `ld` at 0x3fa4, `ld` at 0x4008, `ld` at 0x4118.
  10 such `lw` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lw` at 0x4078, `lw` at 0x40cc, `lw` at 0x412c.
  4 such `lhu` accesses load 2 bytes from [a0+16]:8 +0x2830, including `lhu` at 0x407c, `lhu` at 0x40d8, `lhu` at 0x41e0.
  10 such `sw` accesses store 4 bytes to [a0+16]:8 +0x55f0, including `sw` at 0x409c, `sw` at 0x40e8, `sw` at 0x4138.
  6 such `lwu` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lwu` at 0x40a8, `lwu` at 0x40f4, `lwu` at 0x4144.
  8 such `sd` accesses store 8 bytes to [[a0+16]:8+736]:8 +0x400000, including `sd` at 0x40c4, `sd` at 0x4108, `sd` at 0x4124.
  2 such `sd` accesses store 8 bytes to [a0+16]:8 +0x2828, including `sd` at 0x418c, `sd` at 0x42f4.
  The `jal` at 0x3eec calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x3f78 calls odsy_usdelay with a0=[a0+16]:8, a1=0x1f4, a2=?, a3=0x7fffff.
  The `jal` at 0x3f98 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=[[a0+16]:8+22304], a3=?, a4=[a0+16]:8.
  The `jal` at 0x3fb4 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x3fc4 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x3fd8 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x3fec calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x3ffc calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[[a0+16]:8+22304], a4=[a0+16]:8.
  The `jal` at 0x4014 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8.
  The `jal` at 0x4024 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x4038 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x4048 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x4058 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x406c calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x4198 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `jal` at 0x41ac calls vsema with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8.
  The `jal` at 0x41bc calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x41d0 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x4300 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `beq` branch at 0x3ed4 targets 0x3f90, is taken when s1(?) >= 0x1f4 (unsigned), and falls through when s1(?) < 0x1f4 (unsigned).
  The `beq` branch at 0x3ee4 targets 0x3fe8, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x3ef8 targets 0x3f20, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x3f04 targets 0x3f98, is taken when a2(=[[a0+16]:8+22304]) == 0, and falls through when a2(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x3f4c targets 0x3ffc, is taken when a3(=[[a0+16]:8+22304]) == 0, and falls through when a3(=[[a0+16]:8+22304]) != 0.
  The `bne` branch at 0x3f6c targets 0x3f88, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x3f80 targets 0x3ed0 and is always taken.
  The `beq` branch at 0x3f88 targets 0x3f10 and is always taken.
  The `beq` branch at 0x3f90 targets 0x3f10 and is always taken.
  The `beq` branch at 0x3fa8 targets 0x4048, is taken when at(=[[a0+16]:8+10280]:8) == 0, and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x3fcc targets 0x4068, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x3fe0 targets 0x3f0c and is always taken.
  The `beq` branch at 0x3ff4 targets 0x3ee8 and is always taken.
  The `beq` branch at 0x400c targets 0x41a8, is taken when a2(=[[a0+16]:8+10280]:8) == 0, and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x402c targets 0x41cc, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x4040 targets 0x3f58 and is always taken.
  The `beq` branch at 0x4060 targets 0x3f0c and is always taken.
  The `beq` branch at 0x4090 targets 0x4110, is taken when 0 >= a1(?) (unsigned), and falls through when 0 < a1(?) (unsigned).
  The `beq` branch at 0x4120 targets 0x4164, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x41a0 targets 0x3fd8 and is always taken.
  The `beq` branch at 0x41c4 targets 0x3f58 and is always taken.
  The `beq` branch at 0x41f4 targets 0x4278, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x4288 targets 0x42cc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x4308 targets 0x4038 and is always taken.
  The return at 0x3f18 has v0 = one of 0x0, 0x2, 0x3.

- `odsy_i2c_recv_ack` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0x4310 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Range: 0x4310-0x477c (1132 bytes).
  It occupies 1132 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x432c, `ld` at 0x43a8.
  The `lw` at 0x4330 loads 4 bytes from [a0+8]:8 +0x0.
  39 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x4348, `ld` at 0x434c, `ld` at 0x436c.
  3 such `lw` accesses load 4 bytes from [a0+16]:8 +0x5720, including `lw` at 0x4350, `lw` at 0x4370, `lw` at 0x43b8.
  12 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2e0, including `ld` at 0x4360, `ld` at 0x4394, `ld` at 0x442c.
  The `lhu` at 0x4390 loads 2 bytes from a0 (arg0 at entry) +0x1a.
  The `lw` at 0x43ac loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2)) +0x220000.
  The `sw` at 0x43b0 stores 4 bytes to [a0+8]:8 +0x0.
  4 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2828, including `ld` at 0x440c, `ld` at 0x446c, `ld` at 0x4584.
  10 such `lw` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lw` at 0x44e0, `lw` at 0x4538, `lw` at 0x4598.
  4 such `lhu` accesses load 2 bytes from [a0+16]:8 +0x2830, including `lhu` at 0x44e4, `lhu` at 0x4544, `lhu` at 0x464c.
  10 such `sw` accesses store 4 bytes to [a0+16]:8 +0x55f0, including `sw` at 0x4508, `sw` at 0x4554, `sw` at 0x45a4.
  6 such `lwu` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lwu` at 0x4514, `lwu` at 0x4560, `lwu` at 0x45b0.
  8 such `sd` accesses store 8 bytes to [[a0+16]:8+736]:8 +0x400000, including `sd` at 0x4530, `sd` at 0x4574, `sd` at 0x4590.
  2 such `sd` accesses store 8 bytes to [a0+16]:8 +0x2828, including `sd` at 0x45f8, `sd` at 0x4760.
  The `jal` at 0x4344 calls odsy_usdelay with a0=[a0+16]:8, a1=0x1f4, a2=?, a3=?.
  The `jal` at 0x435c calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x4400 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=[[a0+16]:8+22304], a3=?, a4=[a0+16]:8.
  The `jal` at 0x4418 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+16]:8+10280]:8, a4=[a0+16]:8.
  The `jal` at 0x4428 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x443c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x4450 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x4460 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[[a0+16]:8+22304], a4=[a0+16]:8.
  The `jal` at 0x4478 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8.
  The `jal` at 0x4488 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x449c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x44b0 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[[a0+16]:8+10280]:8, a4=[a0+16]:8.
  The `jal` at 0x44c0 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x44d4 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x4604 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `jal` at 0x4618 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8.
  The `jal` at 0x4628 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x463c calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x476c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `beq` branch at 0x433c targets 0x43e8, is taken when at(?) == s1(=a1), and falls through when at(?) != s1(=a1).
  The `beq` branch at 0x4354 targets 0x444c, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x4368 targets 0x4390, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x4374 targets 0x43fc, is taken when a2(=[[a0+16]:8+22304]) == 0, and falls through when a2(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x43bc targets 0x4460, is taken when a3(=[[a0+16]:8+22304]) == 0, and falls through when a3(=[[a0+16]:8+22304]) != 0.
  The `bne` branch at 0x43d0 targets 0x432c, is taken when a2(?) < 0x1f4 (unsigned), and falls through when a2(?) >= 0x1f4 (unsigned).
  The `beq` branch at 0x43e0 targets 0x4388 and is always taken.
  The `beq` branch at 0x43f4 targets 0x4388 and is always taken.
  The `beq` branch at 0x4410 targets 0x44ac, is taken when a3(=[[a0+16]:8+10280]:8) == 0, and falls through when a3(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x4430 targets 0x44d0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x4444 targets 0x4380 and is always taken.
  The `beq` branch at 0x4458 targets 0x4358 and is always taken.
  The `beq` branch at 0x4470 targets 0x4614, is taken when a2(=[[a0+16]:8+10280]:8) == 0, and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x4490 targets 0x4638, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x44a4 targets 0x43c4 and is always taken.
  The `beq` branch at 0x44c8 targets 0x4380 and is always taken.
  The `beq` branch at 0x44f8 targets 0x457c, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x458c targets 0x45d0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x460c targets 0x443c and is always taken.
  The `beq` branch at 0x4630 targets 0x43c4 and is always taken.
  The `beq` branch at 0x4660 targets 0x46e4, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x46f4 targets 0x4738, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x4774 targets 0x449c and is always taken.
  The return at 0x4388 has v0 = one of 0x0, 0x2, 0x3.

- `odsy_i2c_init_port_handle` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0x477c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Range: 0x477c-0x4bb0 (1076 bytes).
  It occupies 1076 bytes.
  The `sw` at 0x47b4 stores 4 bytes to a0 (arg0 at entry) +0x1c.
  The `sd` at 0x47b8 stores 8 bytes to a0 (arg0 at entry) +0x10.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x5720, including `lw` at 0x47bc, `lw` at 0x47e4, `lw` at 0x487c.
  11 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x2e0, including `ld` at 0x47d4, `ld` at 0x48dc, `ld` at 0x4964.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x8, including `sd` at 0x4810, `sd` at 0x4890.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x0, including `sd` at 0x4814, `sd` at 0x4898.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x1a, including `sh` at 0x481c, `sh` at 0x489c.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x18, including `sh` at 0x4824, `sh` at 0x48a8.
  The `lhu` at 0x482c loads 2 bytes from a0 (arg0 at entry) +0x18.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x4830, `ld` at 0x4858.
  2 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2e0, including `ld` at 0x4834, `ld` at 0x485c.
  The `ld` at 0x4844 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x484c loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+24]:2 + [a0+24]:2) << 0x2)) +0x220000.
  The `sw` at 0x4850 stores 4 bytes to [a0]:8 +0x0.
  The `lhu` at 0x4854 loads 2 bytes from a0 (arg0 at entry) +0x1a.
  The `ld` at 0x486c loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x4874 loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2)) +0x220000.
  The `sw` at 0x4878 stores 4 bytes to [a0+8]:8 +0x0.
  4 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x2828, including `ld` at 0x48b8, `ld` at 0x493c, `ld` at 0x4a20.
  8 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x55f0, including `lw` at 0x4988, `lw` at 0x49e0, `lw` at 0x4a30.
  4 such `lhu` accesses load 2 bytes from a1 (arg1 at entry) +0x2830, including `lhu` at 0x498c, `lhu` at 0x49dc, `lhu` at 0x4ab4.
  8 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x55f0, including `sw` at 0x49d0, `sw` at 0x4a0c, `sw` at 0x4a54.
  8 such `sd` accesses store 8 bytes to [a1+736]:8 +0x400000, including `sd` at 0x49d8, `sd` at 0x4a14, `sd` at 0x4a2c.
  2 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x2828, including `sd` at 0x4a60, `sd` at 0x4b88.
  The `jal` at 0x47d0 calls odsy_poll_dfifo_level with a0=[a1+736]:8, a1=0xe, a2=?, a3=?.
  The `jal` at 0x48b0 calls mutex_spinlock with a0=a1+10272, a1=?, a2=?, a3=?, a4=[a1+22304].
  The `jal` at 0x48cc calls mutex_spinunlock with a0=a1+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x48d8 calls odsy_poll_dfifo_level with a0=[a1+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x48e8 calls vsema with a0=a1+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x48fc calls psema with a0=a1+10256, a1=0x19, a2=a2 at entry (arg2), a3=[a1+22304].
  The `jal` at 0x4914 calls vsema with a0=a1+10256, a1=a1+10256, a2=?, a3=?.
  The `jal` at 0x4920 calls mutex_spinunlock with a0=a1+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x4934 calls mutex_spinlock with a0=a1+10272, a1=?, a2=?, a3=[a0+8]:8, a4=0x220000.
  The `jal` at 0x4954 calls mutex_spinunlock with a0=a1+10272, a1=ret(mutex_spinlock), a2=?, a3=[a1+10280]:8, a4=a1+10256.
  The `jal` at 0x4960 calls odsy_poll_dfifo_level with a0=[a1+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x4970 calls vsema with a0=a1+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x4980 calls mutex_spinlock with a0=a1+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x4a78 calls mutex_spinunlock with a0=a1+10272, a1=ret(mutex_spinlock), a2=0x400000, a3=?, a5=-0x2.
  The `jal` at 0x4a8c calls vsema with a0=a1+10256, a1=?, a2=?, a3=[a1+10280]:8, a4=a1+10256.
  The `jal` at 0x4a98 calls mutex_spinunlock with a0=a1+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x4aa8 calls mutex_spinlock with a0=a1+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x4ba0 calls mutex_spinunlock with a0=a1+10272, a1=ret(mutex_spinlock), a2=0x400000, a3=?, a5=-0x2.
  The `bltz` branch at 0x4790 targets 0x47fc, is taken when a2 < 0 (signed), and falls through when a2 >= 0 (signed).
  The `beq` branch at 0x4798 targets 0x47fc, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x47a0 targets 0x4808, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x47ac targets 0x4890, is taken when a2 == v1(=0x1), and falls through when a2 != v1(=0x1).
  The `beq` branch at 0x47c4 targets 0x48f8, is taken when a3(=[a1+22304]) == 0, and falls through when a3(=[a1+22304]) != 0.
  The `beq` branch at 0x47dc targets 0x4828, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x47e8 targets 0x48ac, is taken when a4(=[a1+22304]) == 0, and falls through when a4(=[a1+22304]) != 0.
  The `beq` branch at 0x4800 targets 0x47f4 and is always taken.
  The `beq` branch at 0x4820 targets 0x47b4 and is always taken.
  The `beq` branch at 0x4880 targets 0x4930, is taken when at(=[a1+22304]) == 0, and falls through when at(=[a1+22304]) != 0.
  The `beq` branch at 0x4888 targets 0x47f4 and is always taken.
  The `beq` branch at 0x48a4 targets 0x47b4 and is always taken.
  The `beq` branch at 0x48bc targets 0x490c, is taken when v1(=[a1+10280]:8) == 0, and falls through when v1(=[a1+10280]:8) != 0.
  The `beq` branch at 0x48e0 targets 0x4980, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x48f0 targets 0x47ec and is always taken.
  The `beq` branch at 0x4904 targets 0x47d0 and is always taken.
  The `beq` branch at 0x4928 targets 0x47ec and is always taken.
  The `beq` branch at 0x4948 targets 0x4a88, is taken when a3(=[a1+10280]:8) == 0, and falls through when a3(=[a1+10280]:8) != 0.
  The `beq` branch at 0x4968 targets 0x4aa8, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x4978 targets 0x4884 and is always taken.
  The `beq` branch at 0x49a4 targets 0x4a18, is taken when 0 >= a6(?) (unsigned), and falls through when 0 < a6(?) (unsigned).
  The `beq` branch at 0x4a28 targets 0x4a60, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x4a80 targets 0x48e8 and is always taken.
  The `beq` branch at 0x4aa0 targets 0x4884 and is always taken.
  The `beq` branch at 0x4acc targets 0x4b40, is taken when 0 >= a6(?) (unsigned), and falls through when 0 < a6(?) (unsigned).
  The `beq` branch at 0x4b50 targets 0x4b88, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x4ba8 targets 0x4970 and is always taken.
  The return at 0x47f4 has v0 = one of 0x0, 0x1, 0x3.

- `odsy_i2cReset` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0x4bb0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
  Range: 0x4bb0-0x54a4 (2292 bytes).
  It occupies 2292 bytes.
  7 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x4bc4, `ld` at 0x4bcc, `ld` at 0x4bdc.
  5 such `sw` accesses store 4 bytes to [a0]:8 +0x0, including `sw` at 0x4bc8, `sw` at 0x4bd8, `sw` at 0x4bec.
  4 such `lw` accesses load 4 bytes from [a0]:8 +0x0, including `lw` at 0x4bd0, `lw` at 0x4be0, `lw` at 0x4bf4.
  78 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x4c04, `ld` at 0x4c24, `ld` at 0x4c88.
  5 such `lw` accesses load 4 bytes from [a0+16]:8 +0x5720, including `lw` at 0x4c08, `lw` at 0x4c30, `lw` at 0x4ce8.
  27 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2e0, including `ld` at 0x4c18, `ld` at 0x4c58, `ld` at 0x4c8c.
  2 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x18, including `lhu` at 0x4c4c, `lhu` at 0x4fd8.
  2 such `lwu` accesses load 4 bytes from [a0]:8 +0x0, including `lwu` at 0x4c64, `lwu` at 0x4ff0.
  18 such `sd` accesses store 8 bytes to [[a0+16]:8+736]:8 +0x400000, including `sd` at 0x4c80, `sd` at 0x4ed8, `sd` at 0x4f18.
  2 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x1a, including `lhu` at 0x4c84, `lhu` at 0x4da0.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x4ca0, `ld` at 0x4cb0, `ld` at 0x4dbc.
  2 such `lw` accesses load 4 bytes from ([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2)) +0x220000, including `lw` at 0x4ca8, `lw` at 0x4dc0.
  2 such `sw` accesses store 4 bytes to [a0+8]:8 +0x0, including `sw` at 0x4cac, `sw` at 0x4dc4.
  2 such `lw` accesses load 4 bytes from [a0+8]:8 +0x0, including `lw` at 0x4cb4, `lw` at 0x4dd8.
  8 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2828, including `ld` at 0x4d00, `ld` at 0x4d4c, `ld` at 0x4e3c.
  20 such `lw` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lw` at 0x4e8c, `lw` at 0x4ee0, `lw` at 0x4f40.
  8 such `lhu` accesses load 2 bytes from [a0+16]:8 +0x2830, including `lhu` at 0x4e90, `lhu` at 0x4eec, `lhu` at 0x5094.
  20 such `sw` accesses store 4 bytes to [a0+16]:8 +0x55f0, including `sw` at 0x4eb0, `sw` at 0x4efc, `sw` at 0x4f48.
  12 such `lwu` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lwu` at 0x4ebc, `lwu` at 0x4f04, `lwu` at 0x4f54.
  4 such `sd` accesses store 8 bytes to [a0+16]:8 +0x2828, including `sd` at 0x4f98, `sd` at 0x51a4, `sd` at 0x5308.
  The `jal` at 0x4bbc calls odsy_i2c_stop with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4c14 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xe, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x4cd8 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?.
  The `jal` at 0x4cf4 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=[[a0+16]:8+22304], a3=?, a4=[a0+16]:8.
  The `jal` at 0x4d0c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+16]:8+10280]:8, a4=[a0+16]:8.
  The `jal` at 0x4d1c calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x4d30 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x4d40 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[a0+16]:8, a6=-0x1, a7=0x30000001.
  The `jal` at 0x4d58 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8.
  The `jal` at 0x4d68 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x4d7c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x4d90 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=[a0]:8, a3=-0x201, a4=[a0+16]:8.
  The `jal` at 0x4dcc calls odsy_usdelay with a0=[a0+16]:8, a1=0xa, a2=[a0+8]:8, a3=(([a0+26]:2 + [a0+26]:2) << 0x2), a4=[a0+16]:8.
  The `jal` at 0x4e10 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=[a0]:8, a3=-0x4001.
  The `jal` at 0x4e2c calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x4e48 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x4e58 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x4e6c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x4e80 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x4fa4 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=-0x2.
  The `jal` at 0x4fb8 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8.
  The `jal` at 0x4fc8 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x5030 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=[[a0+16]:8+736]:8+0x400000, a3=?, a4=[a0+16]:8.
  The `jal` at 0x504c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x505c calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x5070 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x5084 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x51b0 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=-0x2.
  The `jal` at 0x51c4 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[[a0+16]:8+10280]:8, a4=[a0+16]:8.
  The `jal` at 0x51d4 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x51e8 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x5314 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=-0x2.
  The `jal` at 0x5324 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x5334 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x5348 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x5474 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=-0x2.
  The `jal` at 0x5484 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[a0+16]:8.
  The `jal` at 0x5494 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x4c0c targets 0x4d8c, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x4c28 targets 0x4c48, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x4c34 targets 0x4d40, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x4cc0 targets 0x4df4, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x4cc8 targets 0x4df4, is taken when a1(=0xa) == t0(?), and falls through when a1(=0xa) != t0(?).
  The `beq` branch at 0x4ce0 targets 0x4da0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` branch at 0x4cec targets 0x4c3c, is taken when a2(=[[a0+16]:8+22304]) != 0, and falls through when a2(=[[a0+16]:8+22304]) == 0.
  The `beq` branch at 0x4d04 targets 0x51c0, is taken when a3(=[[a0+16]:8+10280]:8) == 0, and falls through when a3(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x4d24 targets 0x5080, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x4d38 targets 0x4c3c and is always taken.
  The `beq` branch at 0x4d50 targets 0x4fb4, is taken when a2(=[[a0+16]:8+10280]:8) == 0, and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x4d70 targets 0x4e7c, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x4d84 targets 0x4c3c and is always taken.
  The `beq` branch at 0x4d98 targets 0x4c10 and is always taken.
  The `beq` branch at 0x4de4 targets 0x4df4, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x4dec targets 0x4cd0, is taken when at(=0xa) != t0(?), and falls through when at(=0xa) == t0(?).
  The `beq` branch at 0x4e18 targets 0x4fd8, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` branch at 0x4e24 targets 0x4c3c, is taken when at(=[[a0+16]:8+22304]) != 0, and falls through when at(=[[a0+16]:8+22304]) == 0.
  The `beq` branch at 0x4e40 targets 0x5324, is taken when v0(=[[a0+16]:8+10280]:8) == 0, and falls through when v0(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x4e60 targets 0x51e4, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x4e74 targets 0x4c3c and is always taken.
  The `beq` branch at 0x4ea4 targets 0x4f20, is taken when 0 >= a1(?) (unsigned), and falls through when 0 < a1(?) (unsigned).
  The `beq` branch at 0x4f34 targets 0x4f74, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x4fac targets 0x4d7c and is always taken.
  The `beq` branch at 0x4fd0 targets 0x4c3c and is always taken.
  The `bne` branch at 0x5028 targets 0x4c3c, is taken when at(=[[a0+16]:8+22304]) != 0, and falls through when at(=[[a0+16]:8+22304]) == 0.
  The `beq` branch at 0x5040 targets 0x5484, is taken when at(=[[a0+16]:8+10280]:8) == 0, and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x5064 targets 0x5344, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x5078 targets 0x4c3c and is always taken.
  The `beq` branch at 0x50a8 targets 0x512c, is taken when 0 >= a6(?) (unsigned), and falls through when 0 < a6(?) (unsigned).
  The `beq` branch at 0x5140 targets 0x5180, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x51b8 targets 0x4d30 and is always taken.
  The `beq` branch at 0x51dc targets 0x4c3c and is always taken.
  The `beq` branch at 0x520c targets 0x5290, is taken when 0 >= a6(?) (unsigned), and falls through when 0 < a6(?) (unsigned).
  The `beq` branch at 0x52a4 targets 0x52e4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x531c targets 0x4e6c and is always taken.
  The `beq` branch at 0x533c targets 0x4c3c and is always taken.
  The `beq` branch at 0x536c targets 0x53f0, is taken when 0 >= a6(?) (unsigned), and falls through when 0 < a6(?) (unsigned).
  The `beq` branch at 0x5404 targets 0x5444, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x547c targets 0x5070 and is always taken.
  The `beq` branch at 0x549c targets 0x4c3c and is always taken.
  The return at 0x4c40 has v0 = one of ret(odsy_poll_dfifo_level), ret(vsema), ret(mutex_spinunlock).
