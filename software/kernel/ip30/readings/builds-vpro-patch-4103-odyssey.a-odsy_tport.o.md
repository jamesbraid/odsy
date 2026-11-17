# Readings: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`

One entry per routine, filed here from the reading batches by binary.

- `odsy_tport_lock_init` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
  Range: 0x0-0x30 (48 bytes).
  It occupies 48 bytes.
  The `jal` at 0x10 calls wbflush with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1c calls spinlock_init with a0=sym(odsy_tport_lock), a1=sym(.rodata), a2=?, a3=?.
  The return at 0x28 has v0 = ret(spinlock_init).

- `odsy_color` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)` at 0x6b0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
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

- `odsy_mapcolor` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)` at 0x76c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`.
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
