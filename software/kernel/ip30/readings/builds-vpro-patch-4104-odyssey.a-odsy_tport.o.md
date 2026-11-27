# Readings: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`

One entry per routine, filed here from the reading batches by binary.

- `odsy_tport_lock_init` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Range: 0x0-0x30 (48 bytes).
  It occupies 48 bytes.
  The `jal` at 0x10 calls wbflush with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1c calls spinlock_init with a0=sym(odsy_tport_lock), a1=sym(.rodata), a2=?, a3=?.
  The return at 0x28 has v0 = ret(spinlock_init).

- `odsy_color` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)` at 0x6b0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Range: 0x6b0-0x76c (188 bytes).
  It occupies 188 bytes.
  8 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x110000, including `sw` at 0x70c, `sw` at 0x718, `sw` at 0x720.
  The `sw` at 0x748 stores 4 bytes to sym(.bss) +0x8.
  The `jal` at 0x6d8 calls wbflush with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x6e4 calls mutex_spinlock with a0=sym(odsy_tport_lock), a1=?, a2=?, a3=?.
  The `jal` at 0x750 calls wbflush with a0=a1 at entry (arg1), a1=sym(.bss), a2=a0+0x110000, a3=0xffffffffc580c406, a4=0xffffffffce80cc08, a5=0x23008003, a6=0x22008001.
  The `jal` at 0x75c calls mutex_spinunlock with a0=sym(odsy_tport_lock), a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x6bc targets 0x6cc, is taken when at(=[sym(odsy_tport_mute)]) == 0, and falls through when at(=[sym(odsy_tport_mute)]) != 0.
  The `beq` branch at 0x764 targets 0x6c4 and is always taken.
  The return at 0x6c4 has v0 = one of ?, ret(mutex_spinunlock).

- `odsy_mapcolor` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)` at 0x76c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Range: 0x76c-0x868 (252 bytes).
  It occupies 252 bytes.
  The `sd` at 0x840 stores 8 bytes to a0 (arg0 at entry) +0x400000.
  The `jal` at 0x7a0 calls wbflush with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x7ac calls mutex_spinlock with a0=sym(odsy_tport_lock), a1=?, a2=?, a3=?.
  The `jal` at 0x7bc calls odsy_poll_dfifo_level with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jal` at 0x84c calls wbflush with a0=?, a1=a0+0x400000, a2=?, a3=a0 at entry (arg0).
  The `jal` at 0x858 calls mutex_spinunlock with a0=sym(odsy_tport_lock), a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x784 targets 0x794, is taken when at(=[sym(odsy_tport_mute)]) == 0, and falls through when at(=[sym(odsy_tport_mute)]) != 0.
  The `beq` branch at 0x860 targets 0x78c and is always taken.
  The return at 0x78c has v0 = one of ?, ret(mutex_spinunlock).

- `ODSY_SET_GC` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)` at 0x30 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Range: 0x30-0x6b0 (1664 bytes).
  It occupies 1664 bytes.
  The `sw` at 0x54 stores 4 bytes to sym(.bss) +0x2b80.
  135 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x110000, including `sw` at 0x5c, `sw` at 0x68, `sw` at 0x70.
  The `lw` at 0xbc loads 4 bytes from sym(.bss) +0x2b80.
  5 such `lw` accesses load 4 bytes from sym(.bss) +0x9c, including `lw` at 0x110, `lw` at 0x1cc, `lw` at 0x1e8.
  6 such `sw` accesses store 4 bytes to sym(.bss) +0x9c, including `sw` at 0x11c, `sw` at 0x174, `sw` at 0x1dc.
  2 such `sw` accesses store 4 bytes to sym(.bss) +0xd4, including `sw` at 0x180, `sw` at 0x4fc.
  2 such `sw` accesses store 4 bytes to sym(.bss) +0xdc, including `sw` at 0x198, `sw` at 0x4f0.
  2 such `sw` accesses store 4 bytes to sym(.bss) +0xd8, including `sw` at 0x1a8, `sw` at 0x508.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0xd4, including `lw` at 0x1b4, `lw` at 0x510.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0xd8, including `lw` at 0x1bc, `lw` at 0x518.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0xdc, including `lw` at 0x1c4, `lw` at 0x520.
  2 such `sw` accesses store 4 bytes to sym(.bss) +0x267c, including `sw` at 0x1f0, `sw` at 0x55c.
  2 such `sw` accesses store 4 bytes to sym(.bss) +0x2680, including `sw` at 0x1f8, `sw` at 0x550.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0x2680, including `lw` at 0x208, `lw` at 0x568.
  2 such `sw` accesses store 4 bytes to sym(.bss) +0x104, including `sw` at 0x270, `sw` at 0x5b4.
  2 such `sw` accesses store 4 bytes to sym(.bss) +0x100, including `sw` at 0x27c, `sw` at 0x5c0.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0x100, including `lw` at 0x288, `lw` at 0x5cc.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0x104, including `lw` at 0x290, `lw` at 0x5d4.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0x108, including `lw` at 0x298, `lw` at 0x5dc.
  2 such `lw` accesses load 4 bytes from sym(.bss) +0x10c, including `lw` at 0x2ac, `lw` at 0x5f0.
  12 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2bc, `lw` at 0x2c8, `lw` at 0x2f4.
  The `sw` at 0x340 stores 4 bytes to sym(.bss) +0xe0.
  The `lw` at 0x350 loads 4 bytes from sym(.bss) +0xe0.
  The `sw` at 0x358 stores 4 bytes to sym(.bss) +0x1b48.
  The `sw` at 0x35c stores 4 bytes to sym(.bss) +0x1b44.
  The `sw` at 0x360 stores 4 bytes to sym(.bss) +0x1b3c.
  4 such `lw` accesses load 4 bytes from sym(.bss) +0x1b3c, including `lw` at 0x3b0, `lw` at 0x3fc, `lw` at 0x41c.
  4 such `lw` accesses load 4 bytes from sym(.bss) +0x1b40, including `lw` at 0x3b8, `lw` at 0x404, `lw` at 0x424.
  3 such `lw` accesses load 4 bytes from sym(.bss) +0x1b44, including `lw` at 0x3c0, `lw` at 0x42c, `lw` at 0x494.
  4 such `lw` accesses load 4 bytes from sym(.bss) +0x1b48, including `lw` at 0x3c8, `lw` at 0x410, `lw` at 0x43c.
  The `beq` branch at 0x10c targets 0x680, is taken when a6 == 0, and falls through when a6 != 0.
  The `beq` branch at 0x124 targets 0x4d4, is taken when a4 == t0(=0x2), and falls through when a4 != t0(=0x2).
  The `beq` branch at 0x12c targets 0x4d4, is taken when a4 == 0, and falls through when a4 != 0.
  The `beq` branch at 0x134 targets 0x6a0, is taken when a6 == 0, and falls through when a6 != 0.
  The `beq` branch at 0x13c targets 0x1d0, is taken when a7 == 0, and falls through when a7 != 0.
  The `beq` branch at 0x4d8 targets 0x6a8, is taken when a6 == 0, and falls through when a6 != 0.
  The `beq` branch at 0x4e4 targets 0x52c, is taken when a7 == 0, and falls through when a7 != 0.
  The `beq` branch at 0x678 targets 0x340 and is always taken.
  The `beq` branch at 0x698 targets 0x120 and is always taken.
  The `beq` branch at 0x6a0 targets 0x1d0 and is always taken.
  The `beq` branch at 0x6a8 targets 0x52c and is always taken.
  The return at 0x4cc has v0 = [sym(.bss)+6984].
