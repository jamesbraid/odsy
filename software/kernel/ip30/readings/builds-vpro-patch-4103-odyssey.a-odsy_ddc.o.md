# Readings: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`

One entry per routine, filed here from the reading batches by binary.

- `odsy_i2cFixupAfterErr` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x0-0x4c (76 bytes).
  It occupies 76 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x18, `ld` at 0x38.
  The `jal` at 0x20 calls odsy_usdelay with a0=[a0+16]:8, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x28 calls odsy_i2cReset with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x34 calls odsy_usdelay with a0=[a0+16]:8, a1=[sym(.sdata)+8], a2=?, a3=?.
  The return at 0x44 has v0 = ret(odsy_usdelay).

- `odsy_i2cPLLRegWrite` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x4c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x4c-0xd8 (140 bytes).
  It occupies 140 bytes.
  The `lbu` at 0x5c loads 1 byte from a0 (arg0 at entry) +0x20.
  The `jal` at 0x70 calls odsy_i2c_start with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=a3 at entry (arg3).
  The `jal` at 0x88 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=0x0.
  The `jal` at 0xa0 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=0x1, a3=0x1.
  The `jal` at 0xbc calls odsy_i2cReset with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0x78 targets 0xbc, is taken when v0(=ret(odsy_i2c_start)) != 0, and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` branch at 0x90 targets 0xbc, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0xa8 targets 0xbc, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `beq` branch at 0xb4 targets 0xd0 and is always taken.
  The return at 0xd0 has v0 = one of 0x0, 0x1.

- `odsy_i2cPLLRegRead` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0xd8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0xd8-0x188 (176 bytes).
  It occupies 176 bytes.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x20, including `lbu` at 0xe8, `lbu` at 0x124.
  The `jal` at 0xfc calls odsy_i2c_start with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=a3 at entry (arg3).
  The `jal` at 0x114 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=0x0.
  The `jal` at 0x138 calls odsy_i2c_start with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=?.
  The `jal` at 0x150 calls odsy_i2c_long_recvbyte with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=a2 at entry (arg2).
  The `jal` at 0x16c calls odsy_i2cReset with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0x104 targets 0x16c, is taken when v0(=ret(odsy_i2c_start)) != 0, and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` branch at 0x11c targets 0x16c, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0x140 targets 0x16c, is taken when v0(=ret(odsy_i2c_start)) != 0, and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` branch at 0x158 targets 0x16c, is taken when v0(=ret(odsy_i2c_long_recvbyte)) != 0, and falls through when v0(=ret(odsy_i2c_long_recvbyte)) == 0.
  The `beq` branch at 0x164 targets 0x180 and is always taken.
  The return at 0x180 has v0 = one of 0x0, 0x1.

- `odsy_i2cDDCRegRead` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x188 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x188-0x218 (144 bytes).
  It occupies 144 bytes.
  The `lbu` at 0x198 loads 1 byte from a0 (arg0 at entry) +0x20.
  The `jal` at 0x1b0 calls odsy_i2c_start with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=a3 at entry (arg3).
  The `jal` at 0x1c8 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=0x0.
  The `jal` at 0x1e0 calls odsy_i2c_long_recvbyte with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=a2 at entry (arg2).
  The `jal` at 0x1fc calls odsy_i2cReset with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0x1b8 targets 0x1fc, is taken when v0(=ret(odsy_i2c_start)) != 0, and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` branch at 0x1d0 targets 0x1fc, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0x1e8 targets 0x1fc, is taken when v0(=ret(odsy_i2c_long_recvbyte)) != 0, and falls through when v0(=ret(odsy_i2c_long_recvbyte)) == 0.
  The `beq` branch at 0x1f4 targets 0x210 and is always taken.
  The return at 0x210 has v0 = one of 0x0, 0x1.

- `odsy_i2cPLLSeqRegWrite` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x218 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x218-0x308 (240 bytes).
  It occupies 240 bytes.
  The `lbu` at 0x228 loads 1 byte from a0 (arg0 at entry) +0x20.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x298, `lbu` at 0x2cc.
  The `jal` at 0x240 calls odsy_i2c_start with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=a3 at entry (arg3).
  The `jal` at 0x25c calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=0x0.
  The `jal` at 0x294 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=0x0.
  The `jal` at 0x2c8 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=0x1.
  The `jal` at 0x2e8 calls odsy_i2cReset with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0x248 targets 0x2e8, is taken when v0(=ret(odsy_i2c_start)) != 0, and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` branch at 0x264 targets 0x2e8, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `beq` branch at 0x278 targets 0x2b4, is taken when a4(=a3-1) == 0, and falls through when a4(=a3-1) != 0.
  The `bne` branch at 0x29c targets 0x2e8, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0x2ac targets 0x284, is taken when s1(?) < a4(=a3-1) (unsigned), and falls through when s1(?) >= a4(=a3-1) (unsigned).
  The `bne` branch at 0x2d4 targets 0x2e8, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `beq` branch at 0x2e0 targets 0x300 and is always taken.
  The return at 0x300 has v0 = one of 0x0, 0x1.

- `odsy_i2cPLLSeqRegRead` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x308 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x308-0x41c (276 bytes).
  It occupies 276 bytes.
  The `lbu` at 0x318 loads 1 byte from a0 (arg0 at entry) +0x20.
  The `jal` at 0x330 calls odsy_i2c_start with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=a3 at entry (arg3).
  The `jal` at 0x348 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=0x0.
  The `jal` at 0x35c calls odsy_i2c_start with a0=a0 at entry (arg0), a1=0x4d, a2=0x1, a3=?.
  The `jal` at 0x374 calls odsy_i2c_long_recvbyte with a0=a0 at entry (arg0), a1=0x1, a2=0x0, a3=a2 at entry (arg2).
  The `jal` at 0x3b0 calls odsy_i2c_short_recvbyte with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x3e4 calls odsy_i2c_long_recvbyte with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x400 calls odsy_i2cReset with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bne` branch at 0x338 targets 0x400, is taken when v0(=ret(odsy_i2c_start)) != 0, and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` branch at 0x350 targets 0x400, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0x364 targets 0x400, is taken when v0(=ret(odsy_i2c_start)) != 0, and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` branch at 0x37c targets 0x400, is taken when v0(=ret(odsy_i2c_long_recvbyte)) != 0, and falls through when v0(=ret(odsy_i2c_long_recvbyte)) == 0.
  The `bne` branch at 0x394 targets 0x3d8, is taken when a4(=a3-1) < 0x2 (signed), and falls through when a4(=a3-1) >= 0x2 (signed).
  The `bne` branch at 0x3b8 targets 0x400, is taken when v0(=ret(odsy_i2c_short_recvbyte)) != 0, and falls through when v0(=ret(odsy_i2c_short_recvbyte)) == 0.
  The `bne` branch at 0x3cc targets 0x3a4, is taken when a6(?) < a4(=a3-1) (signed), and falls through when a6(?) >= a4(=a3-1) (signed).
  The `bne` branch at 0x3ec targets 0x400, is taken when v0(=ret(odsy_i2c_long_recvbyte)) != 0, and falls through when v0(=ret(odsy_i2c_long_recvbyte)) == 0.
  The `beq` branch at 0x3f8 targets 0x414 and is always taken.
  The return at 0x414 has v0 = one of 0x0, 0x1.

- `odsy_i2cProbe2b` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x41c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x41c-0x1a90 (5748 bytes).
  It occupies 5748 bytes.
  194 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x434, `ld` at 0x458, `ld` at 0x478.
  3 such `sh` accesses store 2 bytes to a1 (arg1 at entry) +0x0, including `sh` at 0x444, `sh` at 0x494, `sh` at 0x1448.
  15 such `lw` accesses load 4 bytes from [a0+16]:8 +0x5720, including `lw` at 0x45c, `lw` at 0x484, `lw` at 0x564.
  61 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2e0, including `ld` at 0x46c, `ld` at 0x4c0, `ld` at 0x534.
  2 such `sw` accesses store 4 bytes to [a0+16]:8 +0x130, including `sw` at 0x490, `sw` at 0x143c.
  The `lw` at 0x4bc loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0x4dc loads 4 bytes from [[a0+16]:8+736]:8 +0x233804.
  46 such `sd` accesses store 8 bytes to [[a0+16]:8+736]:8 +0x400000, including `sd` at 0x4f8, `sd` at 0x55c, `sd` at 0x6a8.
  9 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x4fc, `ld` at 0x50c, `ld` at 0x52c.
  5 such `lw` accesses load 4 bytes from [a0]:8 +0x0, including `lw` at 0x500, `lw` at 0x510, `lw` at 0x58c.
  5 such `sw` accesses store 4 bytes to [a0]:8 +0x0, including `sw` at 0x508, `sw` at 0x518, `sw` at 0x594.
  4 such `lhu` accesses load 2 bytes from a0 (arg0 at entry) +0x18, including `lhu` at 0x520, `lhu` at 0x668, `lhu` at 0x774.
  4 such `lwu` accesses load 4 bytes from [a0]:8 +0x0, including `lwu` at 0x540, `lwu` at 0x684, `lwu` at 0x78c.
  20 such `ld` accesses load 8 bytes from [a0+16]:8 +0x2828, including `ld` at 0x5d8, `ld` at 0x628, `ld` at 0x718.
  50 such `lw` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lw` at 0x924, `lw` at 0x97c, `lw` at 0x9d8.
  20 such `lhu` accesses load 2 bytes from [a0+16]:8 +0x2830, including `lhu` at 0x928, `lhu` at 0x988, `lhu` at 0xb7c.
  50 such `sw` accesses store 4 bytes to [a0+16]:8 +0x55f0, including `sw` at 0x94c, `sw` at 0x998, `sw` at 0x9e4.
  30 such `lwu` accesses load 4 bytes from [a0+16]:8 +0x55f0, including `lwu` at 0x958, `lwu` at 0x9a0, `lwu` at 0x9f0.
  10 such `sd` accesses store 8 bytes to [a0+16]:8 +0x2828, including `sd` at 0xa38, `sd` at 0xc90, `sd` at 0xed0.
  The `jal` at 0x448 calls bzero with a0=a1 at entry (arg1), a1=0x80, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x450 calls odsy_i2cReset with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x468 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xd, a2=?, a3=[a0+16]:8.
  The `jal` at 0x498 calls odsy_i2cReset with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x578 calls odsy_usdelay with a0=[a0+16]:8, a1=0xa, a2=?, a3=[a0+16]:8.
  The `jal` at 0x5ac calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=[a0+16]:8.
  The `jal` at 0x5cc calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[a0+16]:8, a4=[[a0+16]:8+22304].
  The `jal` at 0x5e8 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8.
  The `jal` at 0x5f8 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x60c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x61c calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[a0+16]:8, a7=0xfffffffffffeffff.
  The `jal` at 0x634 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8.
  The `jal` at 0x644 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x658 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x6bc calls us_delay with a0=0xa, a1=?, a2=?, a3=?.
  The `jal` at 0x6ec calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=[a0+16]:8.
  The `jal` at 0x70c calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[a0+16]:8, a4=[[a0+16]:8+22304].
  The `jal` at 0x728 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8.
  The `jal` at 0x738 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x74c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x760 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=[a0+16]:8.
  The `jal` at 0x7c4 calls us_delay with a0=0xa, a1=?, a2=?, a3=?.
  The `jal` at 0x800 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=[a0+16]:8.
  The `jal` at 0x81c calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[a0+16]:8, a4=[[a0+16]:8+22304].
  The `jal` at 0x838 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8.
  The `jal` at 0x848 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x85c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x88c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8.
  The `jal` at 0x89c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x8b0 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=[[a0+16]:8+22304], a3=[a0+16]:8, a4=[a0]:8.
  The `jal` at 0x8c4 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=0xffffffff, a2=?, a3=[a0+16]:8, a5=0xffffffff00000000, a6=0x30000001, a7=0xfffffffffffeffff.
  The `jal` at 0x8e0 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8.
  The `jal` at 0x8f0 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x904 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x918 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0xa44 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `jal` at 0xa54 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[a0+16]:8.
  The `jal` at 0xa70 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8.
  The `jal` at 0xa80 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0xa94 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0xaa8 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=[a0]:8, a3=[a0+16]:8.
  The `jal` at 0xab8 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[a0+16]:8.
  The `jal` at 0xac8 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xad8 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[a0+16]:8.
  The `jal` at 0xaf4 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8.
  The `jal` at 0xb04 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0xb18 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0xb28 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8.
  The `jal` at 0xb38 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xb48 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[a0+16]:8.
  The `jal` at 0xb58 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xb6c calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0xc9c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `jal` at 0xcac calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[a0+16]:8.
  The `jal` at 0xcbc calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0xd24 calls odsy_usdelay with a0=[a0+16]:8, a1=0xa, a2=?, a3=[a0+16]:8.
  The `jal` at 0xd3c calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=[a0+16]:8.
  The `jal` at 0xd58 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[a0+16]:8.
  The `jal` at 0xd74 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8.
  The `jal` at 0xd84 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0xd98 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0xdac calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0xedc calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `jal` at 0xef0 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x1020 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `jal` at 0x1030 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8.
  The `jal` at 0x1040 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1054 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=([[a0]:8] | 0x10000), a3=[a0+16]:8.
  The `jal` at 0x1068 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x1198 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `jal` at 0x11ac calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x12dc calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `jal` at 0x1338 calls odsy_i2cReset with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x135c calls odsy_i2c_start with a0=a0 at entry (arg0), a1=0x60, a2=0x0, a3=?.
  The `jal` at 0x1370 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=0x0, a2=0x0, a3=0x0.
  The `jal` at 0x1380 calls odsy_i2c_start with a0=a0 at entry (arg0), a1=0xa0, a2=0x1, a3=?.
  The `jal` at 0x1398 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=0x0.
  The `jal` at 0x13ac calls odsy_i2c_start with a0=a0 at entry (arg0), a1=0xa1, a2=0x1, a3=?.
  The `jal` at 0x13c8 calls odsy_i2c_long_recvbyte with a0=a0 at entry (arg0), a1=0x1, a2=0x0, a3=a1+2.
  The `jal` at 0x13e8 calls odsy_i2c_short_recvbyte with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1418 calls odsy_i2c_long_recvbyte with a0=a0 at entry (arg0), a1=0x0, a2=0x1, a3=?.
  The `jal` at 0x1428 calls odsy_validate_ddc_data with a0=a1+2, a1=?, a2=?, a3=?.
  The `jal` at 0x144c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[a0+16]:8.
  The `jal` at 0x145c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x146c calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[a0+16]:8.
  The `jal` at 0x1488 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8.
  The `jal` at 0x1498 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x14ac calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x14c0 calls psema with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=[a0+16]:8.
  The `jal` at 0x14d4 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x1604 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `jal` at 0x1614 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8.
  The `jal` at 0x1624 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1634 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8.
  The `jal` at 0x1644 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1654 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=[[a0+16]:8+22304], a3=[a0+16]:8, a4=[[a0+16]:8+736]:8+0x400000.
  The `jal` at 0x1670 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8.
  The `jal` at 0x1680 calls odsy_poll_dfifo_level with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=?.
  The `jal` at 0x1694 calls vsema with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?.
  The `jal` at 0x16a8 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x17d8 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `jal` at 0x17ec calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x191c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `jal` at 0x192c calls vsema with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=[a0+16]:8.
  The `jal` at 0x193c calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x1950 calls mutex_spinlock with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?.
  The `jal` at 0x1a80 calls mutex_spinunlock with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8.
  The `beq` branch at 0x460 targets 0x75c, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x47c targets 0x4bc, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x488 targets 0x61c, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x4d8 targets 0x86c, is taken when v1(=[a0+28]) == 0, and falls through when v1(=[a0+28]) != 0.
  The `beq` branch at 0x568 targets 0x8c0, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x5a0 targets 0x8ac, is taken when a2(=[[a0+16]:8+22304]) == 0, and falls through when a2(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x5b8 targets 0x668, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` branch at 0x5c4 targets 0x490, is taken when a4(=[[a0+16]:8+22304]) != 0, and falls through when a4(=[[a0+16]:8+22304]) == 0.
  The `beq` branch at 0x5dc targets 0xab8, is taken when at(=[[a0+16]:8+10280]:8) == 0, and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x600 targets 0xb68, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x614 targets 0x490 and is always taken.
  The `beq` branch at 0x62c targets 0x888, is taken when a2(=[[a0+16]:8+10280]:8) == 0, and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x64c targets 0x914, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x660 targets 0x490 and is always taken.
  The `beq` branch at 0x6b4 targets 0xa54, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x6e4 targets 0xaa4, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x6f8 targets 0x770, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` branch at 0x704 targets 0x490, is taken when a4(=[[a0+16]:8+22304]) != 0, and falls through when a4(=[[a0+16]:8+22304]) == 0.
  The `beq` branch at 0x71c targets 0xb48, is taken when at(=[[a0+16]:8+10280]:8) == 0, and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x740 targets 0xeec, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x754 targets 0x490 and is always taken.
  The `beq` branch at 0x768 targets 0x464 and is always taken.
  The `beq` branch at 0x7bc targets 0xad8, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `bne` branch at 0x7d8 targets 0x588, is taken when a0(?) < 0x9 (signed), and falls through when a0(?) >= 0x9 (signed).
  The `beq` branch at 0x7f8 targets 0x1050, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x808 targets 0xccc, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` branch at 0x814 targets 0x490, is taken when a4(=[[a0+16]:8+22304]) != 0, and falls through when a4(=[[a0+16]:8+22304]) == 0.
  The `beq` branch at 0x82c targets 0x144c, is taken when at(=[[a0+16]:8+10280]:8) == 0, and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x850 targets 0x14d0, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x864 targets 0x490 and is always taken.
  The `beq` branch at 0x880 targets 0x4e4 and is always taken.
  The `beq` branch at 0x8a4 targets 0x490 and is always taken.
  The `beq` branch at 0x8b8 targets 0x5a8 and is always taken.
  The `beq` branch at 0x8d4 targets 0xb28, is taken when a2(=[[a0+16]:8+10280]:8) == 0, and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x8f8 targets 0xda8, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x90c targets 0x574 and is always taken.
  The `beq` branch at 0x93c targets 0x9bc, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x9cc targets 0xa10, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xa4c targets 0x658 and is always taken.
  The `beq` branch at 0xa64 targets 0xcac, is taken when at(=[[a0+16]:8+10280]:8) == 0, and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0xa88 targets 0x1064, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0xa9c targets 0x6bc and is always taken.
  The `beq` branch at 0xab0 targets 0x6e8 and is always taken.
  The `beq` branch at 0xad0 targets 0x490 and is always taken.
  The `beq` branch at 0xae8 targets 0x1030, is taken when a2(=[[a0+16]:8+10280]:8) == 0, and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0xb0c targets 0x11a8, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0xb20 targets 0x7c4 and is always taken.
  The `beq` branch at 0xb40 targets 0x90c and is always taken.
  The `beq` branch at 0xb60 targets 0x490 and is always taken.
  The `beq` branch at 0xb90 targets 0xc14, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0xc24 targets 0xc68, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xca4 targets 0x60c and is always taken.
  The `beq` branch at 0xcc4 targets 0x6bc and is always taken.
  The `beq` branch at 0xd1c targets 0x146c, is taken when v1(=[[a0+16]:8+22304]) == 0, and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0xd34 targets 0x14bc, is taken when at(=[[a0+16]:8+22304]) == 0, and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0xd44 targets 0x12ec, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` branch at 0xd50 targets 0x490, is taken when v1(=[[a0+16]:8+22304]) != 0, and falls through when v1(=[[a0+16]:8+22304]) == 0.
  The `beq` branch at 0xd68 targets 0x1614, is taken when a2(=[[a0+16]:8+10280]:8) == 0, and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0xd8c targets 0x16a4, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0xda0 targets 0x490 and is always taken.
  The `beq` branch at 0xdd0 targets 0xe54, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0xe64 targets 0xea8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xee4 targets 0x904 and is always taken.
  The `beq` branch at 0xf14 targets 0xf98, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0xfa8 targets 0xfec, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x1028 targets 0x74c and is always taken.
  The `beq` branch at 0x1048 targets 0x7c4 and is always taken.
  The `beq` branch at 0x105c targets 0x7fc and is always taken.
  The `beq` branch at 0x108c targets 0x1110, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x1120 targets 0x1164, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x11a0 targets 0xa94 and is always taken.
  The `beq` branch at 0x11d0 targets 0x1254, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x1264 targets 0x12a8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x12e4 targets 0xb18 and is always taken.
  The `beq` branch at 0x1328 targets 0x1654, is taken when a2(=[[a0+16]:8+22304]) == 0, and falls through when a2(=[[a0+16]:8+22304]) != 0.
  The `beq` branch at 0x1330 targets 0x1354 and is always taken.
  The `beq` branch at 0x1350 targets 0x48c, is taken when at(?) >= 0x4 (signed), and falls through when at(?) < 0x4 (signed).
  The `bne` branch at 0x1388 targets 0x1338, is taken when v0(=ret(odsy_i2c_start)) != 0, and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` branch at 0x13a0 targets 0x1338, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0x13b4 targets 0x1338, is taken when v0(=ret(odsy_i2c_start)) != 0, and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` branch at 0x13d0 targets 0x1338, is taken when v0(=ret(odsy_i2c_long_recvbyte)) != 0, and falls through when v0(=ret(odsy_i2c_long_recvbyte)) == 0.
  The `bne` branch at 0x13f0 targets 0x48c, is taken when v0(=ret(odsy_i2c_short_recvbyte)) != 0, and falls through when v0(=ret(odsy_i2c_short_recvbyte)) == 0.
  The `bne` branch at 0x1400 targets 0x13dc, is taken when a6(?) < 0x7f (signed), and falls through when a6(?) >= 0x7f (signed).
  The `bne` branch at 0x1420 targets 0x1338, is taken when v0(=ret(odsy_i2c_long_recvbyte)) != 0, and falls through when v0(=ret(odsy_i2c_long_recvbyte)) == 0.
  The `beq` branch at 0x1430 targets 0x1338, is taken when v0(=ret(odsy_validate_ddc_data)) == 0, and falls through when v0(=ret(odsy_validate_ddc_data)) != 0.
  The `beq` branch at 0x1444 targets 0x4a4 and is always taken.
  The `beq` branch at 0x1464 targets 0x490 and is always taken.
  The `beq` branch at 0x147c targets 0x1634, is taken when a2(=[[a0+16]:8+10280]:8) == 0, and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x14a0 targets 0x17e8, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x14b4 targets 0xd20 and is always taken.
  The `beq` branch at 0x14c8 targets 0xd38 and is always taken.
  The `beq` branch at 0x14f8 targets 0x157c, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x158c targets 0x15d0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x160c targets 0x85c and is always taken.
  The `beq` branch at 0x162c targets 0x490 and is always taken.
  The `beq` branch at 0x164c targets 0x14b4 and is always taken.
  The `beq` branch at 0x1664 targets 0x192c, is taken when a2(=[[a0+16]:8+10280]:8) == 0, and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` branch at 0x1688 targets 0x194c, is taken when v0(=ret(odsy_poll_dfifo_level)) == 0, and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` branch at 0x169c targets 0x1330 and is always taken.
  The `beq` branch at 0x16cc targets 0x1750, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x1760 targets 0x17a4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x17e0 targets 0xd98 and is always taken.
  The `beq` branch at 0x1810 targets 0x1894, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x18a4 targets 0x18e8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x1924 targets 0x14ac and is always taken.
  The `beq` branch at 0x1944 targets 0x1330 and is always taken.
  The `beq` branch at 0x1974 targets 0x19f8, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x1a08 targets 0x1a4c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x1a88 targets 0x1694 and is always taken.
  The return at 0x4b4 has v0 = one of 0x0, 0x1.

- `odsy_validate_ddc_data` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x1a90 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x1a90-0x1abc (44 bytes).
  It occupies 44 bytes.
  The `jal` at 0x1a98 calls odsy_i2cValidEdid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x1aa0 targets 0x1ab4, is taken when v0(=ret(odsy_i2cValidEdid)) == 0, and falls through when v0(=ret(odsy_i2cValidEdid)) != 0.
  The `beq` branch at 0x1ab4 targets 0x1aac and is always taken.
  The return at 0x1aac has v0 = one of 0x0, 0x1.

- `odsy_EdidCksum` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x1abc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x1abc-0x1ae8 (44 bytes).
  It occupies 44 bytes.
  The `lbu` at 0x1acc loads 1 byte from ?.
  The `bne` branch at 0x1ad8 targets 0x1ac4, is taken when a3(?) < 0x80 (signed), and falls through when a3(?) >= 0x80 (signed).
  The return at 0x1ae0 has v0 = ?.

- `odsy_i2cValidEdid` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x1ae8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x1ae8-0x1b84 (156 bytes).
  It occupies 156 bytes.
  The `lbu` at 0x1ae8 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lbu` at 0x1b1c loads 1 byte from a0 (arg0 at entry) +0x1.
  The `lbu` at 0x1b28 loads 1 byte from a0 (arg0 at entry) +0x2.
  The `lbu` at 0x1b34 loads 1 byte from a0 (arg0 at entry) +0x3.
  The `lbu` at 0x1b40 loads 1 byte from a0 (arg0 at entry) +0x4.
  The `lbu` at 0x1b4c loads 1 byte from a0 (arg0 at entry) +0x5.
  The `lbu` at 0x1b58 loads 1 byte from a0 (arg0 at entry) +0x6.
  The `lbu` at 0x1b64 loads 1 byte from a0 (arg0 at entry) +0x7.
  The `jal` at 0x1b00 calls odsy_EdidCksum with a0=a0 at entry (arg0), a1=[a0+6]:1, a2=[a0+7]:1, a3=a3 at entry (arg3).
  The `beq` branch at 0x1af0 targets 0x1b1c, is taken when at(=[a0]:1) == 0, and falls through when at(=[a0]:1) != 0.
  The `beq` branch at 0x1af8 targets 0x1b14 and is always taken.
  The `beq` branch at 0x1b08 targets 0x1b7c, is taken when v0(=ret(odsy_EdidCksum)) == 0, and falls through when v0(=ret(odsy_EdidCksum)) != 0.
  The `bne` branch at 0x1b20 targets 0x1b10, is taken when v1(=[a0+1]:1) != v0(=0xff), and falls through when v1(=[a0+1]:1) == v0(=0xff).
  The `bne` branch at 0x1b2c targets 0x1b10, is taken when a1(=[a0+2]:1) != v0(=0xff), and falls through when a1(=[a0+2]:1) == v0(=0xff).
  The `bne` branch at 0x1b38 targets 0x1b10, is taken when a2(=[a0+3]:1) != v0(=0xff), and falls through when a2(=[a0+3]:1) == v0(=0xff).
  The `bne` branch at 0x1b44 targets 0x1b10, is taken when at(=[a0+4]:1) != v0(=0xff), and falls through when at(=[a0+4]:1) == v0(=0xff).
  The `bne` branch at 0x1b50 targets 0x1b10, is taken when v1(=[a0+5]:1) != v0(=0xff), and falls through when v1(=[a0+5]:1) == v0(=0xff).
  The `bne` branch at 0x1b5c targets 0x1b14, is taken when a1(=[a0+6]:1) != v0(=0xff), and falls through when a1(=[a0+6]:1) == v0(=0xff).
  The `bne` branch at 0x1b68 targets 0x1b14, is taken when a2(=[a0+7]:1) != 0, and falls through when a2(=[a0+7]:1) == 0.
  The `beq` branch at 0x1b74 targets 0x1b00 and is always taken.
  The `beq` branch at 0x1b7c targets 0x1b14 and is always taken.
  The return at 0x1b14 has v0 = one of 0x0, 0x1.

- `sgiEdid` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x1b84 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x1b84-0x1bbc (56 bytes).
  It occupies 56 bytes.
  The `lbu` at 0x1b84 loads 1 byte from a0 (arg0 at entry) +0x8.
  The `lbu` at 0x1b98 loads 1 byte from a0 (arg0 at entry) +0x9.
  The `bne` branch at 0x1b90 targets 0x1ba8, is taken when at(=[a0+8]:1) != v0(=0x4c), and falls through when at(=[a0+8]:1) == v0(=0x4c).
  The `beq` branch at 0x1b9c targets 0x1bb4, is taken when v0(=[a0+9]:1) == v1(=0xf8), and falls through when v0(=[a0+9]:1) != v1(=0xf8).
  The `beq` branch at 0x1ba4 targets 0x1bb4, is taken when v0(=[a0+9]:1) == a1(=0xe9), and falls through when v0(=[a0+9]:1) != a1(=0xe9).
  The return at 0x1bac has v0 = 0x0.
  The return at 0x1bb4 has v0 = 0x1.

- `odsy_i2c2abReset` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x1bbc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x1bbc-0x1cec (304 bytes).
  It occupies 304 bytes.
  The `jal` at 0x1bd0 calls odsy_i2c_start with a0=a0 at entry (arg0), a1=0x6e, a2=0x1, a3=a3 at entry (arg3).
  The `jal` at 0x1be8 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=0x50, a2=0x1, a3=0x0.
  The `jal` at 0x1c00 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=0x81, a2=0x1, a3=0x0.
  The `jal` at 0x1c18 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=0xf0, a2=0x1, a3=0x0.
  The `jal` at 0x1c30 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=0x4f, a2=0x1, a3=0x0.
  The `jal` at 0x1c5c calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1c7c calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1c9c calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1cbc calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1cd8 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x1bd8 targets 0x1c50, is taken when v0(=ret(odsy_i2c_start)) != 0, and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` branch at 0x1bf0 targets 0x1c70, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0x1c08 targets 0x1c90, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0x1c20 targets 0x1cb0, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0x1c3c targets 0x1cd0, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `beq` branch at 0x1c68 targets 0x1c48 and is always taken.
  The `beq` branch at 0x1c88 targets 0x1c48 and is always taken.
  The `beq` branch at 0x1ca8 targets 0x1c48 and is always taken.
  The `beq` branch at 0x1cc8 targets 0x1c48 and is always taken.
  The `beq` branch at 0x1ce4 targets 0x1c48 and is always taken.
  The return at 0x1c48 has v0 = one of 0x0, 0x1.

- `odsy_i2c2abAttention` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x1cec (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x1cec-0x1d80 (148 bytes).
  It occupies 148 bytes.
  The `jal` at 0x1d14 calls odsy_i2c_becomeSlaveRecv with a0=a0 at entry (arg0), a1=0x1, a2=0x50, a3=sp-48.
  The `jal` at 0x1d2c calls odsy_i2c_slave_recvbyte with a0=a0 at entry (arg0), a1=0x1, a2=0x4, a3=sp-47.
  The `jal` at 0x1d50 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=sp-47.
  The `jal` at 0x1d6c calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x1d1c targets 0x1d48, is taken when v0(=ret(odsy_i2c_becomeSlaveRecv)) != 0, and falls through when v0(=ret(odsy_i2c_becomeSlaveRecv)) == 0.
  The `bne` branch at 0x1d34 targets 0x1d64, is taken when v0(=ret(odsy_i2c_slave_recvbyte)) != 0, and falls through when v0(=ret(odsy_i2c_slave_recvbyte)) == 0.
  The `beq` branch at 0x1d5c targets 0x1d40 and is always taken.
  The `beq` branch at 0x1d78 targets 0x1d40 and is always taken.
  The return at 0x1d40 has v0 = one of 0x0, 0x1.

- `odsy_i2c2abIDRequest` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x1d80 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x1d80-0x1eb0 (304 bytes).
  It occupies 304 bytes.
  The `jal` at 0x1d94 calls odsy_i2c_start with a0=a0 at entry (arg0), a1=0x6e, a2=0x1, a3=a3 at entry (arg3).
  The `jal` at 0x1dac calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=0x50, a2=0x1, a3=0x0.
  The `jal` at 0x1dc4 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=0x81, a2=0x1, a3=0x0.
  The `jal` at 0x1ddc calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=0xf1, a2=0x1, a3=0x0.
  The `jal` at 0x1df4 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=0x4e, a2=0x1, a3=0x1.
  The `jal` at 0x1e20 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1e40 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1e60 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1e80 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1e9c calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x1d9c targets 0x1e14, is taken when v0(=ret(odsy_i2c_start)) != 0, and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` branch at 0x1db4 targets 0x1e34, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0x1dcc targets 0x1e54, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0x1de4 targets 0x1e74, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0x1e00 targets 0x1e94, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `beq` branch at 0x1e2c targets 0x1e0c and is always taken.
  The `beq` branch at 0x1e4c targets 0x1e0c and is always taken.
  The `beq` branch at 0x1e6c targets 0x1e0c and is always taken.
  The `beq` branch at 0x1e8c targets 0x1e0c and is always taken.
  The `beq` branch at 0x1ea8 targets 0x1e0c and is always taken.
  The return at 0x1e0c has v0 = one of 0x0, 0x1.

- `odsy_i2c2abPresencechk` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x1eb0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x1eb0-0x1fe0 (304 bytes).
  It occupies 304 bytes.
  The `jal` at 0x1ec4 calls odsy_i2c_start with a0=a0 at entry (arg0), a1=0x6e, a2=0x1, a3=a3 at entry (arg3).
  The `jal` at 0x1edc calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=0x50, a2=0x1, a3=0x0.
  The `jal` at 0x1ef4 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=0x81, a2=0x1, a3=0x0.
  The `jal` at 0x1f0c calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=0xf1, a2=0x1, a3=0x0.
  The `jal` at 0x1f24 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=0x48, a2=0x1, a3=0x1.
  The `jal` at 0x1f50 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1f70 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1f90 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1fb0 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1fcc calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x1ecc targets 0x1f44, is taken when v0(=ret(odsy_i2c_start)) != 0, and falls through when v0(=ret(odsy_i2c_start)) == 0.
  The `bne` branch at 0x1ee4 targets 0x1f64, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0x1efc targets 0x1f84, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0x1f14 targets 0x1fa4, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0x1f30 targets 0x1fc4, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `beq` branch at 0x1f5c targets 0x1f3c and is always taken.
  The `beq` branch at 0x1f7c targets 0x1f3c and is always taken.
  The `beq` branch at 0x1f9c targets 0x1f3c and is always taken.
  The `beq` branch at 0x1fbc targets 0x1f3c and is always taken.
  The `beq` branch at 0x1fd8 targets 0x1f3c and is always taken.
  The return at 0x1f3c has v0 = one of 0x0, 0x1.

- `odsy_i2c2abIDReply` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x1fe0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x1fe0-0x1fe8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1fe0 has v0 = 0x0.

- `odsy_i2c2abAssignAddr` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x1fe8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x1fe8-0x1ff0 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1fe8 has v0 = 0x0.

- `odsy_i2cProbe2ab` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x1ff0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x1ff0-0x215c (364 bytes).
  It occupies 364 bytes.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x2064, `ld` at 0x2078, `ld` at 0x20cc.
  The `jal` at 0x201c calls odsy_usdelay with a0=[a0+16]:8, a1=0x64, a2=?, a3=?.
  The `jal` at 0x2030 calls odsy_i2c2abReset with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x2058 calls odsy_i2c2abAttention with a0=a0 at entry (arg0), a1=0x64, a2=?, a3=?.
  The `jal` at 0x2068 calls odsy_usdelay with a0=[a0+16]:8, a1=0x64, a2=?, a3=?.
  The `jal` at 0x207c calls odsy_usdelay with a0=[a0+16]:8, a1=0x64, a2=?, a3=?.
  The `jal` at 0x2084 calls odsy_i2c2abIDRequest with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x2094 calls odsy_i2c2abIDReply with a0=a0 at entry (arg0), a1=sp-128, a2=?, a3=?.
  The `jal` at 0x20ac calls odsy_i2c2abAssignAddr with a0=a0 at entry (arg0), a1=sp-128, a2=?, a3=?.
  The `jal` at 0x20d0 calls odsy_usdelay with a0=[a0+16]:8, a1=0x64, a2=?, a3=?.
  The `jal` at 0x2120 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x2134 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x214c calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x2010 targets 0x202c and is always taken.
  The `beq` branch at 0x2028 targets 0x20e0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x2038 targets 0x2050, is taken when v0(=ret(odsy_i2c2abReset)) == 0, and falls through when v0(=ret(odsy_i2c2abReset)) != 0.
  The `bne` branch at 0x2048 targets 0x2030, is taken when s4(?) < 0x3 (signed), and falls through when s4(?) >= 0x3 (signed).
  The `beq` branch at 0x2050 targets 0x20cc, is taken when s4(?) == s2(=0x3), and falls through when s4(?) != s2(=0x3).
  The `bne` branch at 0x2060 targets 0x2018, is taken when v0(=ret(odsy_i2c2abAttention)) != 0, and falls through when v0(=ret(odsy_i2c2abAttention)) == 0.
  The `bne` branch at 0x208c targets 0x2118, is taken when v0(=ret(odsy_i2c2abIDRequest)) != 0, and falls through when v0(=ret(odsy_i2c2abIDRequest)) == 0.
  The `bne` branch at 0x209c targets 0x2130, is taken when v0(=ret(odsy_i2c2abIDReply)) != 0, and falls through when v0(=ret(odsy_i2c2abIDReply)) == 0.
  The `bne` branch at 0x20b4 targets 0x2144, is taken when v0(=ret(odsy_i2c2abAssignAddr)) != 0, and falls through when v0(=ret(odsy_i2c2abAssignAddr)) == 0.
  The `bne` branch at 0x20bc targets 0x2078, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x20c4 targets 0x2028 and is always taken.
  The `beq` branch at 0x20d8 targets 0x2028 and is always taken.
  The `bne` branch at 0x20f4 targets 0x2108, is taken when s1(?) < 0x1e (signed), and falls through when s1(?) >= 0x1e (signed).
  The `beq` branch at 0x2100 targets 0x2110 and is always taken.
  The `beq` branch at 0x2128 targets 0x2094 and is always taken.
  The `beq` branch at 0x213c targets 0x20a8 and is always taken.
  The `beq` branch at 0x2154 targets 0x20bc and is always taken.
  The return at 0x2110 has v0 = one of 0x0, 0x1.

- `odsy_copyin_cmd` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x215c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x215c-0x21e4 (136 bytes).
  It occupies 136 bytes.
  The `lw` at 0x215c loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `ld` at 0x2174 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `jal` at 0x2184 calls copyin with a0=[a0+24]:8, a1=a1 at entry (arg1), a2=[a0+16], a3=a3 at entry (arg3).
  The `jal` at 0x21b4 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=[a0+16], a3=a3 at entry (arg3).
  The `jal` at 0x21d0 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `blez` branch at 0x2164 targets 0x21a8, is taken when a2(=[a0+16]) <= 0 (signed), and falls through when a2(=[a0+16]) > 0 (signed).
  The `beq` branch at 0x216c targets 0x21a8, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x2178 targets 0x21a0, is taken when v0(=[a0+24]:8) == 0, and falls through when v0(=[a0+24]:8) != 0.
  The `bne` branch at 0x218c targets 0x21c8, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0x21a0 targets 0x2198 and is always taken.
  The `beq` branch at 0x21c0 targets 0x2198 and is always taken.
  The `beq` branch at 0x21dc targets 0x2198 and is always taken.
  The return at 0x2198 has v0 = one of -0x16, -0xe, 0x0.

- `odsy_i2c_cmd` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x21e4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x21e4-0x2ad0 (2284 bytes).
  It occupies 2284 bytes.
  The `lhu` at 0x21e4 loads 2 bytes from a1 (arg1 at entry) +0x2.
  The `lw` at 0x2200 loads 4 bytes from a1 (arg1 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from (a0 + one of 0x56bc, 0x56e4) +0x0, including `lw` at 0x2268, `lw` at 0x22c8.
  2 such `ld` accesses load 8 bytes from (a0 + one of 0x56b0, 0x56d8) +0x0, including `ld` at 0x2270, `ld` at 0x22d0.
  The `ld` at 0x22a8 loads 8 bytes from (([a1+2]:2 << 0x3) + sym(.rodata)) +0x0.
  The `jal` at 0x2284 calls mutex_lock with a0=?, a1=0x19, a2=a2 at entry (arg2), a3=0x0, a6=[a1+2]:2, a7=0x0.
  Calls (unknown callee) via register with a0=a1 at entry (arg1), a1=?, a2=?, a3=(([a1+2]:2 << 0x3) + sym(.rodata)), a4=[(([a1+2]:2 << 0x3) + sym(.rodata))]:8, a5=sym(.rodata) (`jr` at 0x22ac).
  The `jal` at 0x22d4 calls mutex_unlock with a0=?, a1=?, a2=?, a3=(([a1+2]:2 << 0x3) + sym(.rodata)), a5=sym(.rodata).
  The `jal` at 0x22f8 calls mutex_lock with a0=?, a1=0x19, a2=a2 at entry (arg2), a3=0x0, a6=[a1+2]:2, a7=0x0.
  The `jal` at 0x2308 calls mutex_unlock with a0=?, a1=?, a2=?, a3=(([a1+2]:2 << 0x3) + sym(.rodata)), a5=sym(.rodata).
  The `beq` branch at 0x2220 targets 0x22e8, is taken when v0(=[a1+8]) == 0, and falls through when v0(=[a1+8]) != 0.
  The `bne` branch at 0x2228 targets 0x22b4, is taken when v0(=[a1+8]) != at(=0x1), and falls through when v0(=[a1+8]) == at(=0x1).
  The `beq` branch at 0x2274 targets 0x22f0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x22a0 targets 0x22c4, is taken when a3(=[a1+2]:2) >= 0xd (unsigned), and falls through when a3(=[a1+2]:2) < 0xd (unsigned).
  The `beq` branch at 0x22cc targets 0x2308, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x22e0 targets 0x22b4 and is always taken.
  The `beq` branch at 0x22e8 targets 0x2234 and is always taken.
  The `beq` branch at 0x2300 targets 0x2290 and is always taken.
  The `beq` branch at 0x2310 targets 0x22e0 and is always taken.
  The return at 0x22b4 has v0 = one of -0x16, 0x0.
  The instructions from 0x22bc to 0x22c0 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x2318 to 0x2acc are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x22ac uses a jump table whose successors are unresolved.

- `odsy_Probe2AB` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x2ad0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x2ad0-0x2dec (796 bytes).
  It occupies 796 bytes.
  3 such `sb` accesses store 1 byte to sym(odsy_i2cRcvBuf) +0x80, including `sb` at 0x2b5c, `sb` at 0x2cc8, `sb` at 0x2d2c.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x2bb4, `ld` at 0x2c20, `ld` at 0x2c54.
  2 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x0, including `lbu` at 0x2bc0, `lbu` at 0x2c8c.
  The `sb` at 0x2d64 stores 1 byte to ?.
  The `ld` at 0x2dc8 loads 8 bytes from ?.
  The `jal` at 0x2af8 calls odsy_i2cReset with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2b34 calls odsy_2abGetReply with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-256, a3=?.
  The `jal` at 0x2b74 calls odsy_2abSendCmd with a0=a0 at entry (arg0), a1=0x1, a2=sym(odsy_i2cRcvBuf), a3=0x0.
  The `jal` at 0x2b9c calls odsy_i2c_stop with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x2bb0 calls odsy_usdelay with a0=[a0+16]:8, a1=[sym(.sdata)+32], a2=?, a3=?.
  The `jal` at 0x2c10 calls odsy_i2c_stop with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x2c1c calls odsy_usdelay with a0=[a0+16]:8, a1=[sym(.sdata)+32], a2=?, a3=?.
  The `jal` at 0x2c5c calls odsy_usdelay with a0=[a0+16]:8, a1=[sym(.sdata)+32], a2=?, a3=0x1, a6=0x6e.
  The `jal` at 0x2c78 calls bcopy with a0=a1+1, a1=sp-248, a2=ret(odsy_2abGetReply)-1, a3=?, a6=ret(odsy_2abGetReply)-1.
  The `jal` at 0x2cac calls odsy_usdelay with a0=[a0+16]:8, a1=[sym(.sdata)+32], a2=?, a3=?.
  The `jal` at 0x2ccc calls odsy_2abSendCmd with a0=a0 at entry (arg0), a1=0x1, a2=sym(odsy_i2cRcvBuf), a3=0x0, a5=0xf1.
  The `jal` at 0x2ce0 calls odsy_2abGetReply with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-256, a3=?.
  The `jal` at 0x2d10 calls odsy_usdelay with a0=[a0+16]:8, a1=[sym(.sdata)+32], a2=?, a3=?.
  The `jal` at 0x2d20 calls odsy_usdelay with a0=[a0+16]:8, a1=[sym(.sdata)+32], a2=?, a3=0xe1.
  The `jal` at 0x2d3c calls bcopy with a0=sp-248, a1=?, a2=?, a3=?.
  The `jal` at 0x2d60 calls odsy_2abSendCmd with a0=a0 at entry (arg0), a1=?, a2=sym(odsy_i2cRcvBuf), a3=0x1.
  The `jal` at 0x2dc4 calls strncmp with a0=?, a1=sp-248, a2=0x13, a3=?.
  The `beq` branch at 0x2b20 targets 0x2b5c and is always taken.
  The `beq` branch at 0x2b28 targets 0x2b9c, is taken when s1(?) == s7(=0x3), and falls through when s1(?) != s7(=0x3).
  The `blez` branch at 0x2b40 targets 0x2c10, is taken when v0(=ret(odsy_2abGetReply)) <= 0 (signed), and falls through when v0(=ret(odsy_2abGetReply)) > 0 (signed).
  The `beq` branch at 0x2b4c targets 0x2bc0, is taken when v1(?) == a3(=0x1), and falls through when v1(?) != a3(=0x1).
  The `beq` branch at 0x2b54 targets 0x2bd8, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0x2b7c targets 0x2b28, is taken when v0(=ret(odsy_2abSendCmd)) != 0, and falls through when v0(=ret(odsy_2abSendCmd)) == 0.
  The `bne` branch at 0x2b8c targets 0x2b68, is taken when s1(?) < 0x3 (signed), and falls through when s1(?) >= 0x3 (signed).
  The `beq` branch at 0x2b94 targets 0x2b28 and is always taken.
  The `beq` branch at 0x2bb8 targets 0x2b54 and is always taken.
  The `beq` branch at 0x2bc8 targets 0x2c3c, is taken when at(=[a1]:1) == v1(=0xe0), and falls through when at(=[a1]:1) != v1(=0xe0).
  The `bne` branch at 0x2bd0 targets 0x2b5c, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `bltz` branch at 0x2c24 targets 0x2c34, is taken when s5(=ret(odsy_2abGetReply)) < 0 (signed), and falls through when s5(=ret(odsy_2abGetReply)) >= 0 (signed).
  The `beq` branch at 0x2c2c targets 0x2b54 and is always taken.
  The `beq` branch at 0x2c34 targets 0x2c2c and is always taken.
  The `beq` branch at 0x2c64 targets 0x2ca4 and is always taken.
  The `beq` branch at 0x2c84 targets 0x2c98, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x2c90 targets 0x2d20, is taken when v1(=[a1]:1) == a3(=0xe1), and falls through when v1(=[a1]:1) != a3(=0xe1).
  The `beq` branch at 0x2ca0 targets 0x2d04, is taken when s1(?) >= 0x2 (signed), and falls through when s1(?) < 0x2 (signed).
  The `beq` branch at 0x2cd4 targets 0x2c80, is taken when v0(=ret(odsy_2abSendCmd)) == 0, and falls through when v0(=ret(odsy_2abSendCmd)) != 0.
  The `blez` branch at 0x2ce8 targets 0x2c80, is taken when v0(=ret(odsy_2abGetReply)) <= 0 (signed), and falls through when v0(=ret(odsy_2abGetReply)) > 0 (signed).
  The `beq` branch at 0x2cf4 targets 0x2c84, is taken when s5(=ret(odsy_2abGetReply)) >= 0x80 (signed), and falls through when s5(=ret(odsy_2abGetReply)) < 0x80 (signed).
  The `beq` branch at 0x2cfc targets 0x2c6c and is always taken.
  The `beq` branch at 0x2d08 targets 0x2b54, is taken when s0(?) >= 0x1e (signed), and falls through when s0(?) < 0x1e (signed).
  The `beq` branch at 0x2d18 targets 0x2b54 and is always taken.
  The `beq` branch at 0x2d68 targets 0x2c98, is taken when v0(=ret(odsy_2abSendCmd)) == 0, and falls through when v0(=ret(odsy_2abSendCmd)) != 0.
  The `beq` branch at 0x2d8c targets 0x2de0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x2dcc targets 0x2de0, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `bne` branch at 0x2dd8 targets 0x2db8, is taken when s1(?) < 0x3 (signed), and falls through when s1(?) >= 0x3 (signed).
  The `beq` branch at 0x2de4 targets 0x2bfc and is always taken.
  The return at 0x2c08 has v0 = one of 0x0, 0x1.

- `odsy_2abCmdWrapper` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x2dec (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x2dec-0x2f0c (288 bytes).
  It occupies 288 bytes.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x20, including `ld` at 0x2e30, `ld` at 0x2e54.
  The `lw` at 0x2e38 loads 4 bytes from a1 (arg1 at entry) +0x10.
  2 such `sh` accesses store 2 bytes to a1 (arg1 at entry) +0x14, including `sh` at 0x2e40, `sh` at 0x2e80.
  The `ld` at 0x2ea0 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `jal` at 0x2e44 calls odsy_2abSendCmd with a0=a0 at entry (arg0), a1=[a1+16], a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x2e64 calls odsy_2abGetReply with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=sp-96, a3=?, a4=[a1+32]:8.
  The `jal` at 0x2eac calls odsy_usdelay with a0=[a0+16]:8, a1=[sym(.sdata)+20], a2=?, a3=?, a4=-0x91.
  The `jal` at 0x2eec calls odsy_usdelay with a0=[a0+16]:8, a1=[sym(.sdata)+16], a2=?, a3=?, a4=-0x91.
  The `jal` at 0x2efc calls odsy_usdelay with a0=[a0+16]:8, a1=[sym(.sdata)+12], a2=?, a3=?, a4=-0x91.
  The `beq` branch at 0x2e1c targets 0x2e2c and is always taken.
  The `bgez` branch at 0x2e24 targets 0x2ec4, is taken when s2(?) >= 0 (signed), and falls through when s2(?) < 0 (signed).
  The `beq` branch at 0x2e4c targets 0x2ebc, is taken when v0(=ret(odsy_2abSendCmd)) == 0, and falls through when v0(=ret(odsy_2abSendCmd)) != 0.
  The `beq` branch at 0x2e58 targets 0x2e24, is taken when a4(=[a1+32]:8) == 0, and falls through when a4(=[a1+32]:8) != 0.
  The `bgtz` branch at 0x2e7c targets 0x2e24, is taken when v0(=ret(odsy_2abGetReply)) > 0 (signed), and falls through when v0(=ret(odsy_2abGetReply)) <= 0 (signed).
  The `bne` branch at 0x2e90 targets 0x2ec4, is taken when at(=[sym(.sdata)+36]) < s1(?) (signed), and falls through when at(=[sym(.sdata)+36]) >= s1(?) (signed).
  The `beq` branch at 0x2e9c targets 0x2efc, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x2ea4 targets 0x2eec, is taken when s1(?) == v1(=0x1), and falls through when s1(?) != v1(=0x1).
  The `beq` branch at 0x2eb4 targets 0x2e24 and is always taken.
  The `blez` branch at 0x2ebc targets 0x2e24, is taken when s1(?) <= 0 (signed), and falls through when s1(?) > 0 (signed).
  The `beq` branch at 0x2ef4 targets 0x2e24 and is always taken.
  The `beq` branch at 0x2f04 targets 0x2e24 and is always taken.
  The return at 0x2ee4 has v0 = one of ?, -0x91, -0x5.

- `odsy_2abSendCmd` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x2f0c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x2f0c-0x31e8 (732 bytes).
  It occupies 732 bytes.
  The `lbu` at 0x2fac loads 1 byte from a2 (arg2 at entry) +0x0.
  The `lbu` at 0x3108 loads 1 byte from ?.
  The `jal` at 0x2fec calls odsy_i2c_start with a0=a0 at entry (arg0), a1=[sym(.sdata)+29]:1, a2=0x1, a3=?, a6=0xf0, a7=0x6e.
  The `jal` at 0x3000 calls odsy_i2cFixupAfterErr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x3068 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=[sym(.sdata)+28]:1, a2=0x1, a3=0x0.
  The `jal` at 0x3078 calls odsy_i2cFixupAfterErr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x30a0 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=0x0.
  The `jal` at 0x30b0 calls odsy_i2cFixupAfterErr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x3110 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=0x0.
  The `jal` at 0x3148 calls odsy_i2c_sendbyte with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=0x0.
  The `jal` at 0x3158 calls odsy_i2cFixupAfterErr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x3178 calls odsy_i2cFixupAfterErr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x31d4 calls odsy_i2c_stop with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=a3 at entry (arg3).
  The `beq` branch at 0x2f60 targets 0x2f7c and is always taken.
  The `beq` branch at 0x2f78 targets 0x2fe4, is taken when a0(=one of 0x0, 0x1) == 0, and falls through when a0(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0x2f9c targets 0x2f78, is taken when s0(?) < 0x4 (signed), and falls through when s0(?) >= 0x4 (signed).
  The `bne` branch at 0x2fa4 targets 0x2fb8, is taken when s5(?) != v0(=0x3), and falls through when s5(?) == v0(=0x3).
  The `beq` branch at 0x2fb0 targets 0x2f68, is taken when at(=[a2]:1) == a6(=0xf0), and falls through when at(=[a2]:1) != a6(=0xf0).
  The `beq` branch at 0x2ff4 targets 0x3060, is taken when v0(=ret(odsy_i2c_start)) == 0, and falls through when v0(=ret(odsy_i2c_start)) != 0.
  The `bne` branch at 0x301c targets 0x2f80, is taken when s1(=one of 0x0, 0x1) != 0, and falls through when s1(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0x3024 targets 0x2f80, is taken when s2(=one of 0x0, 0x1) != 0, and falls through when s2(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0x302c targets 0x2f80, is taken when s3(=one of 0x0, 0x1) != 0, and falls through when s3(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0x3034 targets 0x2f80, is taken when s4(=one of 0x0, 0x1) != 0, and falls through when s4(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x3058 targets 0x2fdc and is always taken.
  The `beq` branch at 0x3070 targets 0x3098, is taken when v0(=ret(odsy_i2c_sendbyte)) == 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) != 0.
  The `beq` branch at 0x3090 targets 0x301c and is always taken.
  The `beq` branch at 0x30a8 targets 0x30d0, is taken when v0(=ret(odsy_i2c_sendbyte)) == 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) != 0.
  The `beq` branch at 0x30c8 targets 0x301c and is always taken.
  The `blez` branch at 0x30ec targets 0x313c, is taken when v1(=a1) <= 0 (signed), and falls through when v1(=a1) > 0 (signed).
  The `bne` branch at 0x3118 targets 0x3178, is taken when v0(=ret(odsy_i2c_sendbyte)) != 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) == 0.
  The `bne` branch at 0x3134 targets 0x30f8, is taken when s4(?) < a4(=a1) (signed), and falls through when s4(?) >= a4(=a1) (signed).
  The `beq` branch at 0x3150 targets 0x3194, is taken when v0(=ret(odsy_i2c_sendbyte)) == 0, and falls through when v0(=ret(odsy_i2c_sendbyte)) != 0.
  The `beq` branch at 0x3170 targets 0x301c and is always taken.
  The `beq` branch at 0x318c targets 0x2f7c and is always taken.
  The `beq` branch at 0x31b0 targets 0x31dc, is taken when a5(=a3) == 0, and falls through when a5(=a3) != 0.
  The `beq` branch at 0x31e0 targets 0x2fdc and is always taken.
  The return at 0x2fdc has v0 = one of 0x0, 0x1, 0x3.

- `odsy_2abGetReply` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)` at 0x31e8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)`.
  Range: 0x31e8-0x3418 (560 bytes).
  It occupies 560 bytes.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x321c, `sw` at 0x338c.
  The `sb` at 0x3360 stores 1 byte to ?.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0x3378, `lw` at 0x340c.
  The `ld` at 0x33e8 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `jal` at 0x3200 calls odsy_i2c_stop with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3218 calls odsy_i2c_becomeSlaveRecv with a0=a0 at entry (arg0), a1=0x1, a2=0x28, a3=sp-112.
  The `jal` at 0x322c calls odsy_i2cFixupAfterErr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x3264 calls odsy_i2cFixupAfterErr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x328c calls odsy_i2c_slave_recvbyte with a0=a0 at entry (arg0), a1=0x1, a2=0x1, a3=sp-112.
  The `jal` at 0x329c calls odsy_i2cFixupAfterErr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x32dc calls odsy_i2c_slave_recvbyte with a0=a0 at entry (arg0), a1=0x1, a2=0x80, a3=sp-112.
  The `jal` at 0x32f0 calls odsy_i2cFixupAfterErr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x3340 calls odsy_i2c_slave_recvbyte with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=sp-112.
  The `jal` at 0x339c calls odsy_i2c_slave_recvbyte with a0=a0 at entry (arg0), a1=0x1, a2=0x1, a3=sp-112.
  The `jal` at 0x33ac calls odsy_i2cFixupAfterErr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x33c4 calls odsy_i2cFixupAfterErr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x33e4 calls odsy_usdelay with a0=[a0+16]:8, a1=[sym(.sdata)+24], a2=?, a3=?.
  The `beq` branch at 0x3220 targets 0x3254, is taken when v0(=ret(odsy_i2c_becomeSlaveRecv)) == 0, and falls through when v0(=ret(odsy_i2c_becomeSlaveRecv)) != 0.
  The `beq` branch at 0x3244 targets 0x32b4, is taken when at(?) == v1(=0x2), and falls through when at(?) != v1(=0x2).
  The `beq` branch at 0x325c targets 0x327c, is taken when (v0(?) & 0x1) == 0, and falls through when (v0(?) & 0x1) != 0.
  The `beq` branch at 0x3274 targets 0x324c and is always taken.
  The `beq` branch at 0x3294 targets 0x32bc, is taken when v0(=ret(odsy_i2c_slave_recvbyte)) == 0, and falls through when v0(=ret(odsy_i2c_slave_recvbyte)) != 0.
  The `beq` branch at 0x32ac targets 0x324c and is always taken.
  The `beq` branch at 0x32b4 targets 0x324c and is always taken.
  The `beq` branch at 0x32e4 targets 0x3308, is taken when v0(=ret(odsy_i2c_slave_recvbyte)) == 0, and falls through when v0(=ret(odsy_i2c_slave_recvbyte)) != 0.
  The `beq` branch at 0x3300 targets 0x324c and is always taken.
  The `blez` branch at 0x3320 targets 0x3390, is taken when at(?) <= 0 (signed), and falls through when at(?) > 0 (signed).
  The `bne` branch at 0x334c targets 0x33c4, is taken when v0(=ret(odsy_i2c_slave_recvbyte)) != 0, and falls through when v0(=ret(odsy_i2c_slave_recvbyte)) == 0.
  The `bne` branch at 0x3388 targets 0x3334, is taken when a3(?) < a4(?) (signed), and falls through when a3(?) >= a4(?) (signed).
  The `beq` branch at 0x33a4 targets 0x33e0, is taken when v0(=ret(odsy_i2c_slave_recvbyte)) == 0, and falls through when v0(=ret(odsy_i2c_slave_recvbyte)) != 0.
  The `beq` branch at 0x33bc targets 0x324c and is always taken.
  The `beq` branch at 0x33d8 targets 0x324c and is always taken.
  The `beq` branch at 0x33f8 targets 0x340c, is taken when v1(?) == a3(?), and falls through when v1(?) != a3(?).
  The `beq` branch at 0x3404 targets 0x324c and is always taken.
  The `beq` branch at 0x3410 targets 0x324c and is always taken.
  The return at 0x324c has v0 = one of -0x1, 0x0, [a2].
