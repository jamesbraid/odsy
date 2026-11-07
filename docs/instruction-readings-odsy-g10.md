# Instruction readings from hostfacts

Each entry reports selected accesses through non-stack pointers, calls and their argument slots, conditional branches, and return values from the exact binary build named in its header. Every claim cites its instruction address. These are software observations, graded Inferred; they do not establish hardware behaviour.

- `odsy_mm_sg_remove_texture_group_from_list` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x49a8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x49a8-0x4a08 (96 bytes).
  It occupies 96 bytes.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0xe0, including `ld` at 0x49a8, `ld` at 0x49bc.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0xe8, including `ld` at 0x49b0, `ld` at 0x49b8.
  2 such `sd` accesses store 8 bytes to [a1+224]:8 +0xe8, including `sd` at 0x49b4, `sd` at 0x49e8.
  The `sd` at 0x49c8 stores 8 bytes to [a1+232]:8 +0xe0.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x90, including `sd` at 0x49f0, `sd` at 0x4a04.
  The `ld` at 0x49f4 loads 8 bytes from a0 (arg0 at entry) +0x90.
  The `beq` branch at 0x49ac targets 0x49d4, is taken when a4(=[a1+224]:8) == 0, and falls through when a4(=[a1+224]:8) != 0.
  The `beq` branch at 0x49c0 targets 0x49ec, is taken when a3(=[a1+232]:8) == 0, and falls through when a3(=[a1+232]:8) != 0.
  The `beq` branch at 0x49d4 targets 0x49f4, is taken when a3(=[a1+232]:8) == 0, and falls through when a3(=[a1+232]:8) != 0.
  The `beq` branch at 0x49dc targets 0x49c0, is taken when a4(=[a1+224]:8) == 0, and falls through when a4(=[a1+224]:8) != 0.
  The `beq` branch at 0x49e4 targets 0x49b8 and is always taken.
  The `bne` branch at 0x49f8 targets 0x49cc, is taken when at(=[a0+144]:8) != a1, and falls through when at(=[a0+144]:8) == a1.
  The return at 0x49cc has v0 = ?.
  The return at 0x49ec has v0 = ?.
  The return at 0x4a00 has v0 = ?.
- `odsy_mm_sg_insert_texture_group_into_list` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x4a08 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x4a08-0x4ac8 (192 bytes).
  It occupies 192 bytes.
  The `ld` at 0x4a08 loads 8 bytes from a0 (arg0 at entry) +0x90.
  The `lw` at 0x4a14 loads 4 bytes from [a0+144]:8 +0xd0.
  The `ld` at 0x4a18 loads 8 bytes from [a0+144]:8 +0xe0.
  The `lw` at 0x4a1c loads 4 bytes from a1 (arg1 at entry) +0xd0.
  The `lw` at 0x4a3c loads 4 bytes from ?.
  The `ld` at 0x4a50 loads 8 bytes from ?.
  5 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0xe0, including `sd` at 0x4a5c, `sd` at 0x4a84, `sd` at 0x4a8c.
  5 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0xe8, including `sd` at 0x4a60, `sd` at 0x4a7c, `sd` at 0x4a88.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x4a68, `sd` at 0x4a6c, `sd` at 0x4a90.
  3 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x90, including `sd` at 0x4a78, `sd` at 0x4a98, `sd` at 0x4ac4.
  The `sd` at 0x4aa4 stores 8 bytes to [a0+144]:8 +0xe0.
  The `sd` at 0x4abc stores 8 bytes to [a0+144]:8 +0xe8.
  The `beq` branch at 0x4a0c targets 0x4a78, is taken when a3(=[a0+144]:8) == 0, and falls through when a3(=[a0+144]:8) != 0.
  The `beq` branch at 0x4a20 targets 0x4a9c, is taken when a4(=[[a0+144]:8+224]:8) == 0, and falls through when a4(=[[a0+144]:8+224]:8) != 0.
  The `beq` branch at 0x4a28 targets 0x4a54, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x4a34 targets 0x4a54, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x4a44 targets 0x4a54, is taken when a6(=[a1+208]) >= at(?) (signed), and falls through when a6(=[a1+208]) < at(?) (signed).
  The `beq` branch at 0x4a4c targets 0x4a30 and is always taken.
  The `beq` branch at 0x4a54 targets 0x4a88, is taken when a3(?) == a5(?), and falls through when a3(?) != a5(?).
  The `beq` branch at 0x4a64 targets 0x4a70, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x4a9c targets 0x4ab4, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The return at 0x4a70 has v0 = ?.
  The return at 0x4a80 has v0 = ?.
  The return at 0x4a94 has v0 = ?.
  The return at 0x4aac has v0 = ?.
  The return at 0x4ac0 has v0 = ?.
- `odsy_mm_remove_pbuffer_group_from_list` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x4ca8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x4ca8-0x4d08 (96 bytes).
  It occupies 96 bytes.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0xe0, including `ld` at 0x4ca8, `ld` at 0x4cbc.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0xe8, including `ld` at 0x4cb0, `ld` at 0x4cb8.
  2 such `sd` accesses store 8 bytes to [a1+224]:8 +0xe8, including `sd` at 0x4cb4, `sd` at 0x4ce8.
  The `sd` at 0x4cc8 stores 8 bytes to [a1+232]:8 +0xe0.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x678, including `sd` at 0x4cf0, `sd` at 0x4d04.
  The `ld` at 0x4cf4 loads 8 bytes from a0 (arg0 at entry) +0x678.
  The `beq` branch at 0x4cac targets 0x4cd4, is taken when a4(=[a1+224]:8) == 0, and falls through when a4(=[a1+224]:8) != 0.
  The `beq` branch at 0x4cc0 targets 0x4cec, is taken when a3(=[a1+232]:8) == 0, and falls through when a3(=[a1+232]:8) != 0.
  The `beq` branch at 0x4cd4 targets 0x4cf4, is taken when a3(=[a1+232]:8) == 0, and falls through when a3(=[a1+232]:8) != 0.
  The `beq` branch at 0x4cdc targets 0x4cc0, is taken when a4(=[a1+224]:8) == 0, and falls through when a4(=[a1+224]:8) != 0.
  The `beq` branch at 0x4ce4 targets 0x4cb8 and is always taken.
  The `bne` branch at 0x4cf8 targets 0x4ccc, is taken when at(=[a0+1656]:8) != a1, and falls through when at(=[a0+1656]:8) == a1.
  The return at 0x4ccc has v0 = ?.
  The return at 0x4cec has v0 = ?.
  The return at 0x4d00 has v0 = ?.
- `odsy_mm_insert_pbuffer_group_into_list` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x4d08 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x4d08-0x4dc8 (192 bytes).
  It occupies 192 bytes.
  The `ld` at 0x4d08 loads 8 bytes from a0 (arg0 at entry) +0x678.
  The `lw` at 0x4d14 loads 4 bytes from [a0+1656]:8 +0xd0.
  The `ld` at 0x4d18 loads 8 bytes from [a0+1656]:8 +0xe0.
  The `lw` at 0x4d1c loads 4 bytes from a1 (arg1 at entry) +0xd0.
  The `lw` at 0x4d3c loads 4 bytes from ?.
  The `ld` at 0x4d50 loads 8 bytes from ?.
  5 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0xe0, including `sd` at 0x4d5c, `sd` at 0x4d84, `sd` at 0x4d8c.
  5 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0xe8, including `sd` at 0x4d60, `sd` at 0x4d7c, `sd` at 0x4d88.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x4d68, `sd` at 0x4d6c, `sd` at 0x4d90.
  3 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x678, including `sd` at 0x4d78, `sd` at 0x4d98, `sd` at 0x4dc4.
  The `sd` at 0x4da4 stores 8 bytes to [a0+1656]:8 +0xe0.
  The `sd` at 0x4dbc stores 8 bytes to [a0+1656]:8 +0xe8.
  The `beq` branch at 0x4d0c targets 0x4d78, is taken when a3(=[a0+1656]:8) == 0, and falls through when a3(=[a0+1656]:8) != 0.
  The `beq` branch at 0x4d20 targets 0x4d9c, is taken when a4(=[[a0+1656]:8+224]:8) == 0, and falls through when a4(=[[a0+1656]:8+224]:8) != 0.
  The `beq` branch at 0x4d28 targets 0x4d54, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x4d34 targets 0x4d54, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x4d44 targets 0x4d54, is taken when a6(=[a1+208]) >= at(?) (signed), and falls through when a6(=[a1+208]) < at(?) (signed).
  The `beq` branch at 0x4d4c targets 0x4d30 and is always taken.
  The `beq` branch at 0x4d54 targets 0x4d88, is taken when a3(?) == a5(?), and falls through when a3(?) != a5(?).
  The `beq` branch at 0x4d64 targets 0x4d70, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x4d9c targets 0x4db4, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The return at 0x4d70 has v0 = ?.
  The return at 0x4d80 has v0 = ?.
  The return at 0x4d94 has v0 = ?.
  The return at 0x4dac has v0 = ?.
  The return at 0x4dc0 has v0 = ?.
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
- `odsy_i2c_stop` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0xd40 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
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
- `odsy_i2c_short_recvbyte` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0x1aac (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
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
- `odsy_i2c_long_recvbyte` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0x1b14 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
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
- `odsy_i2c_becomeSlaveRecv` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0x27ec (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
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
- `odsy_i2c_slave_recvbyte` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0x3130 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
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
- `odsy_i2c_xfer_done_loop` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0x3a60 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
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
- `odsy_i2c_busy_high_loop` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0x3eb4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
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
- `odsy_i2c_recv_ack` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0x4310 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
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
- `odsy_i2c_init_port_handle` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)` at 0x477c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`.
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
- `odsy_usdelay` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x0-0x94 (148 bytes).
  It occupies 148 bytes.
  The `lw` at 0x0 loads 4 bytes from a0 (arg0 at entry) +0x5720.
  The `jal` at 0x18 calls in_panic_mode with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x28 calls us_delay with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x80 calls nano_delay with a0=sp-48, a1=0xf4240, a2=?, a3=?.
  The `bne` branch at 0x10 targets 0x28, is taken when at(=[a0+22304]) != 0, and falls through when at(=[a0+22304]) == 0.
  The `beq` branch at 0x20 targets 0x40, is taken when v0(=ret(in_panic_mode)) == 0, and falls through when v0(=ret(in_panic_mode)) != 0.
  The `beq` branch at 0x8c targets 0x38 and is always taken.
  The return at 0x38 has v0 = one of ret(us_delay), ret(nano_delay).
- `odsyPipeNrFromBase` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x94 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x94-0xdc (72 bytes).
  It occupies 72 bytes.
  The `ld` at 0xac loads 8 bytes from ?.
  The `beq` branch at 0xb0 targets 0xd4, is taken when at(?) == a0, and falls through when at(?) != a0.
  The `bne` branch at 0xc0 targets 0xa0, is taken when a3(?) < 0x2 (signed), and falls through when a3(?) >= 0x2 (signed).
  The return at 0xcc has v0 = -0x1.
  The return at 0xd4 has v0 = ?.
- `odsy_earlyinit` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0xdc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0xdc-0x2dc (512 bytes).
  It occupies 512 bytes.
  2 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x178, `lhu` at 0x17c.
  The `ld` at 0x188 loads 8 bytes from ?.
  The `sh` at 0x1ac stores 2 bytes to ?.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1b0, `sw` at 0x2b8.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1ec, `lw` at 0x1f8, `lw` at 0x234.
  The `jal` at 0x110 calls bzero with a0=sym(OdsyBoards), a1=0xae50, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x164 calls odsyReset with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x16c calls odsy_tport_lock_init with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x184 calls htp_register_board with a0=?, a1=sym(odsy_htp_fncs), a2=?, a3=?.
  The `jal` at 0x1b4 calls odsyFindBoardAddr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1dc calls in_panic_mode with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x210 calls init_sema with a0=?, a1=0x0, a2=0x0, a3=-0x1.
  The `jal` at 0x220 calls timeout with a0=sym(odsy_earlyinit_timeout), a1=?, a2=0xc8, a3=?.
  The `jal` at 0x22c calls psema with a0=?, a1=0x19, a2=?, a3=?.
  The `jal` at 0x24c calls cmn_err with a0=0x5, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x298 calls in_panic_mode with a0=?, a1=?, a2=?, a3=[sym(.sdata)+8].
  The `jal` at 0x2c8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xe4 targets 0x2bc, is taken when at(=[sym(.sdata)+12]) != 0, and falls through when at(=[sym(.sdata)+12]) == 0.
  The `beq` branch at 0xfc targets 0x130, is taken when v1(=[sym(.sdata)+8]) == 0, and falls through when v1(=[sym(.sdata)+8]) != 0.
  The `beq` branch at 0x128 targets 0x144 and is always taken.
  The `beq` branch at 0x15c targets 0x198 and is always taken.
  The `beq` branch at 0x190 targets 0x25c, is taken when s0(?) >= 0x2 (signed), and falls through when s0(?) < 0x2 (signed).
  The `beq` branch at 0x1a8 targets 0x298, is taken when a3(=[sym(.sdata)+8]) == 0, and falls through when a3(=[sym(.sdata)+8]) != 0.
  The `beq` branch at 0x1bc targets 0x25c, is taken when v0(=ret(odsyFindBoardAddr)) == 0, and falls through when v0(=ret(odsyFindBoardAddr)) != 0.
  The `bne` branch at 0x1d4 targets 0x164, is taken when v1(=[sym(.sdata)+8]) != 0, and falls through when v1(=[sym(.sdata)+8]) == 0.
  The `bne` branch at 0x1e4 targets 0x164, is taken when v0(=ret(in_panic_mode)) != 0, and falls through when v0(=ret(in_panic_mode)) == 0.
  The `bne` branch at 0x1f0 targets 0x164, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x200 targets 0x164, is taken when a3(?) < 0x2 (signed), and falls through when a3(?) >= 0x2 (signed).
  The `bne` branch at 0x23c targets 0x1d4, is taken when at(?) < 0x2 (signed), and falls through when at(?) >= 0x2 (signed).
  The `beq` branch at 0x254 targets 0x1d4 and is always taken.
  The `bne` branch at 0x2a0 targets 0x1b0, is taken when v0(=ret(in_panic_mode)) != 0, and falls through when v0(=ret(in_panic_mode)) == 0.
  The `beq` branch at 0x2ac targets 0x1b4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x2b4 targets 0x1b4 and is always taken.
  The `beq` branch at 0x2d4 targets 0x290 and is always taken.
  The return at 0x290 has v0 = one of ?, 0x0.
- `odsyInitIntr` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x428 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x428-0x5d4 (428 bytes).
  It occupies 428 bytes.
  The `sw` at 0x464 stores 4 bytes to ?.
  7 such `sd` accesses store 8 bytes to ?, including `sd` at 0x484, `sd` at 0x498, `sd` at 0x4ac.
  12 such `ld` accesses load 8 bytes from ?, including `ld` at 0x4e0, `ld` at 0x4ec, `ld` at 0x4f8.
  5 such `sh` accesses store 2 bytes to ?, including `sh` at 0x4f4, `sh` at 0x500, `sh` at 0x50c.
  The `jal` at 0x460 calls device_desc_dup with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x474 calls xtalk_intr_alloc with a0=a1 at entry (arg1), a1=ret(device_desc_dup), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x488 calls xtalk_intr_alloc with a0=a1 at entry (arg1), a1=ret(device_desc_dup), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x49c calls xtalk_intr_alloc with a0=a1 at entry (arg1), a1=ret(device_desc_dup), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x4b0 calls xtalk_intr_alloc with a0=a1 at entry (arg1), a1=ret(device_desc_dup), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x4c4 calls xtalk_intr_alloc with a0=a1 at entry (arg1), a1=ret(device_desc_dup), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x4d8 calls device_desc_free with a0=ret(device_desc_dup), a1=?, a2=?, a3=?.
  The `jal` at 0x4e4 calls xtalk_intr_vector_get with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x4f0 calls xtalk_intr_vector_get with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x4fc calls xtalk_intr_vector_get with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x508 calls xtalk_intr_vector_get with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x514 calls xtalk_intr_vector_get with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x534 calls xtalk_intr_connect with a0=?, a1=sym(odsyXtErrorInterrupt), a2=?, a3=0x0, a4=0x0, a5=0x0.
  The `jal` at 0x550 calls xtalk_intr_connect with a0=?, a1=sym(odsyFlagInterrupt), a2=?, a3=0x0, a4=0x0, a5=0x0.
  The `jal` at 0x56c calls xtalk_intr_connect with a0=?, a1=sym(odsyDmaInterrupt), a2=?, a3=0x0, a4=0x0, a5=0x0.
  The `jal` at 0x588 calls xtalk_intr_connect with a0=?, a1=sym(odsyRetraceHandler), a2=?, a3=0x0, a4=0x0, a5=0x0.
  The `jal` at 0x5a4 calls xtalk_intr_connect with a0=?, a1=sym(odsySsyncInterrupt), a2=?, a3=0x0, a4=0x0, a5=0x0.
  The `jal` at 0x5ac calls xtalk_intr_addr_get with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x5b8 calls xtalk_intr_addr_get with a0=?, a1=?, a2=?, a3=?.
  The return at 0x5cc has v0 = ret(xtalk_intr_addr_get).
- `odsyFindBoardAddr` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x5d4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x5d4-0x6a4 (208 bytes).
  It occupies 208 bytes.
  The `lh` at 0x5f0 loads 2 bytes from ?.
  2 such `lw` accesses load 4 bytes from ret(xtalk_early_piotrans_addr) +0x24, including `lw` at 0x638, `lw` at 0x654.
  The `sd` at 0x63c stores 8 bytes to ?.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x640, `sh` at 0x664.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x648, `sw` at 0x650, `sw` at 0x660.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x688, `ld` at 0x698.
  The `jal` at 0x620 calls xtalk_early_piotrans_addr with a0=0xc013, a1=0x23, a2=a0 at entry (arg0), a3=0x0, a4=0x401000, a5=0x0.
  The `jal` at 0x690 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=a3 at entry (arg3).
  The `bne` branch at 0x600 targets 0x680, is taken when at(?) != v0(=-0x1), and falls through when at(?) == v0(=-0x1).
  The `beq` branch at 0x630 targets 0x664, is taken when v0(=ret(xtalk_early_piotrans_addr)) == 0, and falls through when v0(=ret(xtalk_early_piotrans_addr)) != 0.
  The `beq` branch at 0x69c targets 0x670 and is always taken.
  The return at 0x678 has v0 = one of ret(xtalk_early_piotrans_addr), ?.
- `odsyInitBoardGfx` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x6a4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x6a4-0x8bc (536 bytes).
  It occupies 536 bytes.
  7 such `sw` accesses store 4 bytes to ?, including `sw` at 0x72c, `sw` at 0x730, `sw` at 0x744.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x7b8, `lw` at 0x7e8.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x7c4, `sd` at 0x7d4, `sd` at 0x820.
  The `jal` at 0x6d8 calls bzero with a0=?, a1=0xc8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x6ec calls init_sema with a0=?, a1=0x1, a2=0x0, a3=-0x1.
  The `jal` at 0x6f8 calls OdsyInit32kSlotMask with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x70c calls init_mutex with a0=?, a1=0x0, a2=0x0, a3=-0x1.
  The `jal` at 0x724 calls init_sv with a0=?, a1=0x0, a2=0x0, a3=-0x1.
  The `jal` at 0x74c calls init_sema with a0=?, a1=0x1, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0x758 calls spinlock_init with a0=?, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x76c calls init_mutex with a0=?, a1=0x0, a2=0x0, a3=-0x1.
  The `jal` at 0x780 calls init_mutex with a0=?, a1=0x0, a2=0x0, a3=-0x1.
  The `jal` at 0x794 calls init_sema with a0=?, a1=0x1, a2=0x0, a3=-0x1.
  The `jal` at 0x79c calls odsyInitDDRNs with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x7a4 calls odsyInitHwWrRgn with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x7b0 calls kmem_zalloc with a0=0xc000, a1=0x8800, a2=?, a3=?.
  The `jal` at 0x808 calls add_to_inventory with a0=0x7, a1=0x15, a2=0x0, a3=0x0.
  The `jal` at 0x834 calls init_mutex with a0=?, a1=0x0, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0x848 calls init_mutex with a0=?, a1=0x0, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0x85c calls init_mutex with a0=?, a1=0x0, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0x870 calls GfxRegisterBoard with a0=sym(odsy_gfx_fncs), a1=?, a2=?, a3=?.
  The `beq` branch at 0x7d0 targets 0x890, is taken when a0(?) == at(=0x20), and falls through when a0(?) != at(=0x20).
  The `beq` branch at 0x7d8 targets 0x8a0, is taken when a0(?) == a2(=0x40), and falls through when a0(?) != a2(=0x40).
  The `beq` branch at 0x7e0 targets 0x8b4, is taken when a0(?) == at(=0x80), and falls through when a0(?) != at(=0x80).
  The `beq` branch at 0x7ec targets 0x898, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x7f4 targets 0x8a8, is taken when s7(=0x1) == a0(?), and falls through when s7(=0x1) != a0(?).
  The `beq` branch at 0x890 targets 0x7e8 and is always taken.
  The `beq` branch at 0x898 targets 0x7f8 and is always taken.
  The `beq` branch at 0x8a0 targets 0x7e8 and is always taken.
  The `beq` branch at 0x8ac targets 0x7f8 and is always taken.
  The `beq` branch at 0x8b4 targets 0x7e8 and is always taken.
  The return at 0x888 has v0 = ret(GfxRegisterBoard).
- `odsy_init_ddrncount_timeout` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0xe64 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0xe64-0xe9c (56 bytes).
  It occupies 56 bytes.
  The `jal` at 0xe7c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xe84 calls vsema with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0xe94 has v0 = ret(vsema).
- `odsy_earlyinit_timeout` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0xe9c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0xe9c-0xeb8 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0xea4 calls vsema with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xeb0 has v0 = ret(vsema).
- `odsyZeroOut` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0xeb8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0xeb8-0xf7c (196 bytes).
  It occupies 196 bytes.
  The `ld` at 0xecc loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  11 such `sw` accesses store 4 bytes to [a0+736]:8 +0x110000, including `sw` at 0xee4, `sw` at 0xef0, `sw` at 0xefc.
  The `beq` branch at 0xeec targets 0xf28 and is always taken.
  The `beq` branch at 0xef4 targets 0xf64, is taken when a4(?) == a7(=0x231), and falls through when a4(?) != a7(=0x231).
  The `blez` branch at 0xf0c targets 0xf20, is taken when a6(?) <= 0 (signed), and falls through when a6(?) > 0 (signed).
  The `bgtz` branch at 0xf18 targets 0xf14, is taken when a1(?) > 0 (signed), and falls through when a1(?) <= 0 (signed).
  The `beq` branch at 0xf24 targets 0xf44, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xf30 targets 0xef4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xf3c targets 0xf00 and is always taken.
  The `beq` branch at 0xf74 targets 0xf00 and is always taken.
  The return at 0xf5c has v0 = 0x0.
- `odsyInitDMA` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x1f40 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x1f40-0x2030 (240 bytes).
  It occupies 240 bytes.
  7 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1f90, `ld` at 0x1f98, `ld` at 0x1fa0.
  10 such `sd` accesses store 8 bytes to ?, including `sd` at 0x1f94, `sd` at 0x1f9c, `sd` at 0x1fa4.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1fbc, `sw` at 0x1fe0, `sw` at 0x2000.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x1fd0, `sh` at 0x1ff8.
  The `jal` at 0x1f6c calls init_mutex with a0=?, a1=0x0, a2=0x0, a3=-0x1.
  The `jal` at 0x1f88 calls init_sv with a0=?, a1=0x0, a2=0x0, a3=-0x1.
  The `jal` at 0x1fb0 calls OdsyAlloc32kSlot with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1fd4 calls OdsyAlloc32kSlot with a0=?, a1=?, a2=(ret(OdsyAlloc32kSlot) + ret(OdsyAlloc32kSlot)), a3=?.
  The return at 0x2028 has v0 = (ret(OdsyAlloc32kSlot) + ret(OdsyAlloc32kSlot)).
- `odsy_DCDResetDone` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x2380 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x2380-0x23f8 (120 bytes).
  It occupies 120 bytes.
  The `sb` at 0x2384 stores 1 byte to a0 (arg0 at entry) +0x20.
  The `ld` at 0x23e0 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `jal` at 0x23a8 calls odsy_i2cDDCRegRead with a0=a0 at entry (arg0), a1=0x3, a2=sp-48, a3=?.
  The `jal` at 0x23dc calls odsy_usdelay with a0=[a0+16]:8, a1=0x1f4, a2=?, a3=?.
  The `beq` branch at 0x23b8 targets 0x23d8, is taken when (v1(?) & 0x2) == 0, and falls through when (v1(?) & 0x2) != 0.
  The `bne` branch at 0x23e8 targets 0x23a4, is taken when s5(?) < 0x1388 (signed), and falls through when s5(?) >= 0x1388 (signed).
  The `beq` branch at 0x23f0 targets 0x23c4 and is always taken.
  The return at 0x23d0 has v0 = one of 0x0, 0x1.
- `odsyInitHwWrRgn` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x3370 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x3370-0x3498 (296 bytes).
  It occupies 296 bytes.
  2 such `ld` accesses load 8 bytes from ((a0 << 0x3) + sym(flag_desc)) +0x7210, including `ld` at 0x337c, `ld` at 0x346c.
  5 such `sd` accesses store 8 bytes to ?, including `sd` at 0x33ac, `sd` at 0x33d0, `sd` at 0x3400.
  The `sw` at 0x33c8 stores 4 bytes to ?.
  The `sd` at 0x3494 stores 8 bytes to ((a0 << 0x3) + sym(flag_desc)) +0x7210.
  The `jal` at 0x3458 calls printf with a0=sym(.rodata), a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x347c calls kmem_zalloc with a0=0x20000, a1=0x8800, a2=sym(flag_desc), a3=a3 at entry (arg3).
  The `beq` branch at 0x3388 targets 0x3470, is taken when v0(=[((a0 << 0x3) + sym(flag_desc))+29200]:8) == 0, and falls through when v0(=[((a0 << 0x3) + sym(flag_desc))+29200]:8) != 0.
  The `bne` branch at 0x33cc targets 0x33b0, is taken when a0(?) < 0x4 (unsigned), and falls through when a0(?) >= 0x4 (unsigned).
  The `beq` branch at 0x33d4 targets 0x344c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x33ec targets 0x3414, is taken when (v0(?) & 0xffff) == 0, and falls through when (v0(?) & 0xffff) != 0.
  The `bne` branch at 0x340c targets 0x33f4, is taken when (a0(?) & 0xffff) != 0, and falls through when (a0(?) & 0xffff) == 0.
  The `beq` branch at 0x341c targets 0x3440, is taken when a1(?) >= 0x4 (unsigned), and falls through when a1(?) < 0x4 (unsigned).
  The `bne` branch at 0x3438 targets 0x3424, is taken when a1(?) < 0x4 (unsigned), and falls through when a1(?) >= 0x4 (unsigned).
  The `beq` branch at 0x3468 targets 0x33dc and is always taken.
  The `beq` branch at 0x3490 targets 0x3390 and is always taken.
  The return at 0x3444 has v0 = ?.
- `odsy_teardown` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x3498 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x3498-0x3538 (160 bytes).
  It occupies 160 bytes.
  The `lw` at 0x34bc loads 4 bytes from a0 (arg0 at entry) +0x2d8.
  The `sw` at 0x34cc stores 4 bytes to a0 (arg0 at entry) +0x2d8.
  The `ld` at 0x3500 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `jal` at 0x34b4 calls psema with a0=a0+4648, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x34d4 calls vsema with a0=a0+4648, a1=?, a2=?, a3=?.
  The `jal` at 0x34f4 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x34fc calls odsyPrintRegs with a0=[a0+736]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x3518 calls gthread_scan with a0=sym(GfxKiller), a1=sp-64, a2=0x9, a3=?.
  The `jal` at 0x3524 calls vsema with a0=a0+4648, a1=?, a2=?, a3=?.
  The `beq` branch at 0x34c8 targets 0x34ec, is taken when at(=[a0+728]+1) == v0(=0x1), and falls through when at(=[a0+728]+1) != v0(=0x1).
  The `beq` branch at 0x3530 targets 0x34e4 and is always taken.
  The return at 0x34e4 has v0 = ret(vsema).
- `odsyUnpinAndUnmapGctxRegions` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x570 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x570-0x65c (236 bytes).
  It occupies 236 bytes.
  The `ld` at 0x570 loads 8 bytes from a0 (arg0 at entry) +0x78.
  The `ld` at 0x584 loads 8 bytes from a0 (arg0 at entry) +0x60.
  The `ld` at 0x5a4 loads 8 bytes from a0 (arg0 at entry) +0x68.
  The `sd` at 0x5ac stores 8 bytes to a0 (arg0 at entry) +0x68.
  The `sd` at 0x5b0 stores 8 bytes to a0 (arg0 at entry) +0x60.
  3 such `ld` accesses load 8 bytes from ret(OdsyNextCSetElem) +0x10, including `ld` at 0x5d8, `ld` at 0x600, `ld` at 0x614.
  The `ld` at 0x5e0 loads 8 bytes from ret(OdsyNextCSetElem) +0x8.
  The `jal` at 0x590 calls unmaputokv with a0=[a0+96]:8, a1=0x2b78, a2=?, a3=?.
  The `jal` at 0x5a0 calls unuseracc with a0=[a0+104]:8, a1=0x2b78, a2=0x111, a3=?.
  The `jal` at 0x5bc calls OdsyInitCSetCursor with a0=a0+224, a1=?, a2=?, a3=?.
  The `jal` at 0x5c4 calls OdsyNextCSetElem with a0=a0+224, a1=?, a2=?, a3=?.
  The `jal` at 0x5dc calls kmem_free with a0=[ret(OdsyNextCSetElem)+8]:8, a1=0x4000, a2=?, a3=?.
  The `jal` at 0x5e8 calls kmem_free with a0=ret(OdsyNextCSetElem), a1=0x20, a2=?, a3=?.
  The `jal` at 0x5f0 calls OdsyNextCSetElem with a0=a0+224, a1=?, a2=?, a3=?.
  The `jal` at 0x60c calls odsyUnmapPages with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=?.
  The `jal` at 0x630 calls OdsyDestroyCSet with a0=a0+224, a1=0x0, a2=?, a3=?.
  The `jal` at 0x64c calls odsyUnmapPages with a0=a0+128, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x57c targets 0x648, is taken when at(=[a0+120]:8) != 0, and falls through when at(=[a0+120]:8) == 0.
  The `beq` branch at 0x588 targets 0x5b4, is taken when a0(=[a0+96]:8) == 0, and falls through when a0(=[a0+96]:8) != 0.
  The `beq` branch at 0x5cc targets 0x628, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x5d4 targets 0x604 and is always taken.
  The `beq` branch at 0x5f8 targets 0x628, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x604 targets 0x5e8, is taken when v1(=[ret(OdsyNextCSetElem)+16]:8) == 0, and falls through when v1(=[ret(OdsyNextCSetElem)+16]:8) != 0.
  The `beq` branch at 0x618 targets 0x5e8, is taken when a1(=[ret(OdsyNextCSetElem)+16]:8) == 0, and falls through when a1(=[ret(OdsyNextCSetElem)+16]:8) != 0.
  The `beq` branch at 0x620 targets 0x5dc and is always taken.
  The `beq` branch at 0x654 targets 0x584 and is always taken.
  The return at 0x640 has v0 = ret(OdsyDestroyCSet).
- `odsyUnmap` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x65c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x65c-0x6bc (96 bytes).
  It occupies 96 bytes.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x690, `ld` at 0x694, `ld` at 0x698.
  The `jal` at 0x670 calls as_lookup_current with a0=sp-96, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x6a4 calls (unknown callee) with a0=?, a1=?, a2=sp-80, a3=0x0.
  The return at 0x6b4 has v0 = ret(?).
- `odsyUnpinAndUnmapSGRegions` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x6bc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x6bc-0x75c (160 bytes).
  It occupies 160 bytes.
  3 such `ld` accesses load 8 bytes from ret(OdsyNextCSetElem) +0x8, including `ld` at 0x6ec, `ld` at 0x714, `ld` at 0x738.
  The `ld` at 0x720 loads 8 bytes from ret(OdsyNextCSetElem) +0x10.
  The `jal` at 0x6cc calls OdsyInitCSetCursor with a0=a0+104, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x6d8 calls OdsyNextCSetElem with a0=a0+104, a1=?, a2=?, a3=?.
  The `jal` at 0x6f0 calls kmem_free with a0=[ret(OdsyNextCSetElem)+8]:8, a1=0x4000, a2=?, a3=?.
  The `jal` at 0x6fc calls kmem_free with a0=ret(OdsyNextCSetElem), a1=0x20, a2=?, a3=?.
  The `jal` at 0x704 calls OdsyNextCSetElem with a0=a0+104, a1=?, a2=?, a3=?.
  The `jal` at 0x72c calls odsyUnmapPages with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=?.
  The `jal` at 0x744 calls OdsyDestroyCSet with a0=a0+104, a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x6e0 targets 0x73c, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x6e8 targets 0x718 and is always taken.
  The `beq` branch at 0x70c targets 0x73c, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x718 targets 0x6f0, is taken when a0(=[ret(OdsyNextCSetElem)+8]:8) == 0, and falls through when a0(=[ret(OdsyNextCSetElem)+8]:8) != 0.
  The `beq` branch at 0x724 targets 0x6f0, is taken when at(=[ret(OdsyNextCSetElem)+16]:8) == 0, and falls through when at(=[ret(OdsyNextCSetElem)+16]:8) != 0.
  The `beq` branch at 0x734 targets 0x6f0 and is always taken.
  The return at 0x754 has v0 = ret(OdsyDestroyCSet).
- `odsyPinAndMapASRegions` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x75c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x75c-0x7e0 (132 bytes).
  It occupies 132 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x760, `ld` at 0x7c0.
  The `sd` at 0x764 stores 8 bytes to a0 (arg0 at entry) +0x38.
  The `sd` at 0x768 stores 8 bytes to a0 (arg0 at entry) +0x28.
  The `ld` at 0x790 loads 8 bytes from [a0+8]:8 +0x8.
  The `ld` at 0x7d4 loads 8 bytes from [a0+8]:8 +0x10.
  The `jal` at 0x78c calls odsyMapPages with a0=0x0, a1=a0+32, a2=[[a0+8]:8+8]:8, a3=0x10000, a4=sym(.data), a5=0x1, a6=a0+40.
  The `jal` at 0x7d0 calls odsyMapPages with a0=0x0, a1=a0+48, a2=[[a0+8]:8+16]:8, a3=0xc000, a4=sym(.data), a5=0x1, a6=a0+56.
  The `beq` branch at 0x798 targets 0x7ac, is taken when v0(=ret(odsyMapPages)) == 0, and falls through when v0(=ret(odsyMapPages)) != 0.
  The `beq` branch at 0x7d8 targets 0x7a4 and is always taken.
  The return at 0x7a4 has v0 = ret(odsyMapPages).
- `odsyUnpinAndUnmapASRegions` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x7e0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x7e0-0x848 (104 bytes).
  It occupies 104 bytes.
  The `ld` at 0x7e4 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x7fc loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `jal` at 0x81c calls odsyUnmapPages with a0=a0+40, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x834 calls odsyUnmapPages with a0=a0+56, a1=?, a2=?, a3=?.
  The `bne` branch at 0x7f4 targets 0x818, is taken when at(=[a0+40]:8) != 0, and falls through when at(=[a0+40]:8) == 0.
  The `bne` branch at 0x800 targets 0x830, is taken when v1(=[a0+56]:8) != 0, and falls through when v1(=[a0+56]:8) == 0.
  The `beq` branch at 0x828 targets 0x7fc and is always taken.
  The `beq` branch at 0x840 targets 0x804 and is always taken.
  The return at 0x810 has v0 = ?.
- `odsyPinAndMapPfStatRegions` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x848 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x848-0x8a8 (96 bytes).
  It occupies 96 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2840, including `lw` at 0x86c, `lw` at 0x88c.
  The `ld` at 0x898 loads 8 bytes from a0 (arg0 at entry) +0x2848.
  The `jal` at 0x894 calls odsyMapPages with a0=0x0, a1=a0+10320, a2=[a0+10312]:8, a3=[a0+10304], a4=sp-64, a5=0x1, a6=a0+10328.
  The return at 0x8a0 has v0 = ret(odsyMapPages).
- `odsyUnpinAndUnmapPfStatRegions` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x8a8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x8a8-0x8d8 (48 bytes).
  It occupies 48 bytes.
  The `ld` at 0x8a8 loads 8 bytes from a0 (arg0 at entry) +0x2848.
  The `jal` at 0x8c8 calls odsyUnmapPages with a0=a0+10328, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x8b0 targets 0x8c4, is taken when at(=[a0+10312]:8) != 0, and falls through when at(=[a0+10312]:8) == 0.
  The `beq` branch at 0x8d0 targets 0x8bc and is always taken.
  The return at 0x8bc has v0 = one of 0x0, ret(odsyUnmapPages).
- `odsyUnmapPages` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)` at 0x9bc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`.
  Range: 0x9bc-0x9e4 (40 bytes).
  It occupies 40 bytes.
  The `ld` at 0x9bc loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sd` at 0x9c8 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0x9cc calls gfxdd_munmap with a0=[a0]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x9dc has v0 = 0x0.
- `odsyMMinit` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x0-0x1c0 (448 bytes).
  It occupies 448 bytes.
  The `sd` at 0x2c stores 8 bytes to a1 (arg1 at entry) +0x4e8.
  The `sw` at 0x40 stores 4 bytes to a1 (arg1 at entry) +0x4e0.
  The `sd` at 0x50 stores 8 bytes to a1 (arg1 at entry) +0x0.
  5 such `sd` accesses store 8 bytes to ?, including `sd` at 0x68, `sd` at 0xa4, `sd` at 0xb8.
  The `sd` at 0x6c stores 8 bytes to a1 (arg1 at entry) +0x4f8.
  The `sd` at 0x74 stores 8 bytes to a1 (arg1 at entry) +0x4f0.
  The `sd` at 0xa8 stores 8 bytes to a1 (arg1 at entry) +0x578.
  The `sw` at 0xb4 stores 4 bytes to a1 (arg1 at entry) +0x570.
  The `lw` at 0xc0 loads 4 bytes from ?.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0xc4, `sw` at 0xc8, `sw` at 0xe4.
  The `sh` at 0xd0 stores 2 bytes to ?.
  The `ld` at 0xfc loads 8 bytes from ?.
  The `sb` at 0x118 stores 1 byte to a1 (arg1 at entry) +0x248.
  The `sb` at 0x124 stores 1 byte to a1 (arg1 at entry) +0x1c0.
  The `sb` at 0x144 stores 1 byte to ?.
  The `sb` at 0x14c stores 1 byte to a1 (arg1 at entry) +0xb0.
  The `sw` at 0x150 stores 4 bytes to a1 (arg1 at entry) +0x34.
  The `sw` at 0x154 stores 4 bytes to a1 (arg1 at entry) +0x30.
  The `sw` at 0x158 stores 4 bytes to a1 (arg1 at entry) +0x2c.
  The `sw` at 0x15c stores 4 bytes to a1 (arg1 at entry) +0x40.
  The `sw` at 0x164 stores 4 bytes to a1 (arg1 at entry) +0x3c.
  The `sw` at 0x168 stores 4 bytes to a1 (arg1 at entry) +0x38.
  The `sb` at 0x16c stores 1 byte to a1 (arg1 at entry) +0x29.
  The `sw` at 0x170 stores 4 bytes to a1 (arg1 at entry) +0x50.
  The `sh` at 0x174 stores 2 bytes to a1 (arg1 at entry) +0x18.
  The `sd` at 0x178 stores 8 bytes to a1 (arg1 at entry) +0x20.
  The `sw` at 0x180 stores 4 bytes to a1 (arg1 at entry) +0xd8.
  The `sw` at 0x184 stores 4 bytes to a1 (arg1 at entry) +0x270.
  The `sw` at 0x188 stores 4 bytes to a1 (arg1 at entry) +0x1e8.
  The `lw` at 0x18c loads 4 bytes from a1 (arg1 at entry) +0x58.
  The `sw` at 0x190 stores 4 bytes to a1 (arg1 at entry) +0x48.
  The `sw` at 0x194 stores 4 bytes to a1 (arg1 at entry) +0x44.
  The `sb` at 0x1a4 stores 1 byte to a1 (arg1 at entry) +0x28.
  The `sw` at 0x1b0 stores 4 bytes to a1 (arg1 at entry) +0x58.
  The `jal` at 0xc calls odsyPipeNrFromBase with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x64 targets 0x54, is taken when a1(?) < 0x10 (signed), and falls through when a1(?) >= 0x10 (signed).
  The `bne` branch at 0xa0 targets 0x7c, is taken when a1(?) < 0x4 (signed), and falls through when a1(?) >= 0x4 (signed).
  The `beq` branch at 0xb0 targets 0xf4 and is always taken.
  The `beq` branch at 0xf0 targets 0x110, is taken when a1(?) >= 0x10 (signed), and falls through when a1(?) < 0x10 (signed).
  The `beq` branch at 0x100 targets 0xe8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x108 targets 0xb8 and is always taken.
  The `bne` branch at 0x140 targets 0x128, is taken when a1(?) < 0x4 (signed), and falls through when a1(?) >= 0x4 (signed).
  The return at 0x1b8 has v0 = ?.
- `odsyInitMM` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x1c0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x1c0-0x234 (116 bytes).
  It occupies 116 bytes.
  The `sd` at 0x1e8 stores 8 bytes to a0 (arg0 at entry) +0x950.
  The `sd` at 0x1ec stores 8 bytes to a0 (arg0 at entry) +0x948.
  The `sw` at 0x1f0 stores 4 bytes to a0 (arg0 at entry) +0x93c.
  The `sw` at 0x1f4 stores 4 bytes to a0 (arg0 at entry) +0x938.
  The `sd` at 0x1f8 stores 8 bytes to a0 (arg0 at entry) +0x940.
  The `sw` at 0x1fc stores 4 bytes to a0 (arg0 at entry) +0x984.
  The `sw` at 0x204 stores 4 bytes to a0 (arg0 at entry) +0x97c.
  The `sw` at 0x20c stores 4 bytes to a0 (arg0 at entry) +0x974.
  The `sw` at 0x210 stores 4 bytes to a0 (arg0 at entry) +0x96c.
  The `sw` at 0x214 stores 4 bytes to a0 (arg0 at entry) +0x978.
  The `sw` at 0x218 stores 4 bytes to a0 (arg0 at entry) +0x970.
  The `sw` at 0x220 stores 4 bytes to a0 (arg0 at entry) +0x968.
  The `sd` at 0x224 stores 8 bytes to a0 (arg0 at entry) +0x960.
  The `jal` at 0x1d4 calls OdsyInitCSet with a0=a0+2232, a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1e0 calls OdsyInitCSet with a0=a0+2272, a1=0x4, a2=?, a3=?.
  The return at 0x22c has v0 = 0xc80.
- `mm_init_freespace` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x234 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x234-0x370 (316 bytes).
  It occupies 316 bytes.
  The `lw` at 0x234 loads 4 bytes from a0 (arg0 at entry) +0x694.
  The `ld` at 0x238 loads 8 bytes from a0 (arg0 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0xd8, including `lw` at 0x23c, `lw` at 0x360.
  The `lw` at 0x240 loads 4 bytes from [a0]:8 +0xfc.
  The `lw` at 0x244 loads 4 bytes from a0 (arg0 at entry) +0x68c.
  The `lw` at 0x250 loads 4 bytes from a0 (arg0 at entry) +0x684.
  The `sw` at 0x27c stores 4 bytes to a0 (arg0 at entry) +0x698.
  The `sd` at 0x280 stores 8 bytes to a0 (arg0 at entry) +0x668.
  The `sd` at 0x284 stores 8 bytes to a0 (arg0 at entry) +0x660.
  The `sw` at 0x288 stores 4 bytes to a0 (arg0 at entry) +0x654.
  The `sw` at 0x28c stores 4 bytes to a0 (arg0 at entry) +0x650.
  The `sd` at 0x290 stores 8 bytes to a0 (arg0 at entry) +0x658.
  The `sd` at 0x2ec stores 8 bytes to a0 (arg0 at entry) +0x6a0.
  The `sw` at 0x308 stores 4 bytes to a0 (arg0 at entry) +0x6bc.
  The `sd` at 0x314 stores 8 bytes to a0 (arg0 at entry) +0x6a8.
  The `sd` at 0x31c stores 8 bytes to a0 (arg0 at entry) +0x6b0.
  The `sw` at 0x324 stores 4 bytes to a0 (arg0 at entry) +0x6b8.
  The `lw` at 0x354 loads 4 bytes from a0 (arg0 at entry) +0x698.
  The `sw` at 0x358 stores 4 bytes to a0 (arg0 at entry) +0x684.
  The `sw` at 0x35c stores 4 bytes to a0 (arg0 at entry) +0x68c.
  The `sw` at 0x364 stores 4 bytes to a0 (arg0 at entry) +0x694.
  The `jal` at 0x2ac calls kabi_num_lockable_pages with a0=?, a1=?, a2=?, a3=?, a4=0x64.
  The `jal` at 0x2e8 calls kabi_num_lockable_pages with a0=?, a1=?, a2=?, a3=?, a7=0x64.
  The `jal` at 0x33c calls cmn_err with a0=0x1, a1=sym(.rodata), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x34c calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x278 targets 0x338, is taken when a1(?) < at(=([a0+1668] + ([a0+1676] + [a0+1684]))) (signed), and falls through when a1(?) >= at(=([a0+1668] + ([a0+1676] + [a0+1684]))) (signed).
  The `beq` branch at 0x368 targets 0x280 and is always taken.
  The return at 0x330 has v0 = 0x1.
- `gfP_OdsyMMdebug` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x370 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x370-0x6c4 (852 bytes).
  It occupies 852 bytes.
  10 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x378, `sw` at 0x414, `sw` at 0x498.
  11 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0x3a0, `ld` at 0x3d8, `ld` at 0x418.
  The `ld` at 0x3dc loads 8 bytes from [a0+32]:8 +0x48.
  6 such `lw` accesses load 4 bytes from [a0+32]:8 +0x50, including `lw` at 0x3f8, `lw` at 0x41c, `lw` at 0x4a0.
  6 such `sw` accesses store 4 bytes to [a0+32]:8 +0x50, including `sw` at 0x40c, `sw` at 0x424, `sw` at 0x4a8.
  4 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0x428, `lw` at 0x4b4, `lw` at 0x5b0.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x464, `ld` at 0x514.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x470, `lw` at 0x53c, `lw` at 0x548.
  The `sd` at 0x5fc stores 8 bytes to [a0+32]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x68, including `lw` at 0x604, `lw` at 0x61c.
  The `jal` at 0x39c calls copyin with a0=a2 at entry (arg2), a1=sp-160, a2=0x18, a3=a3 at entry (arg3).
  The `jal` at 0x408 calls SpewObjectToUser with a0=[a0+32]:8+768, a1=-0x1, a2=-0x1, a3=0x0, a4=sp-128, a5=sp-136, a6=[[a0+32]:8+80]+1.
  The `jal` at 0x48c calls SpewObjectToUser with a0=?, a1=0x0, a2=-0x2, a3=?, a4=sp-128, a5=sp-136.
  The `jal` at 0x4bc calls OdsyInitCSetCursor with a0=[a0+32]:8+2232, a1=?, a2=?, a3=?.
  The `jal` at 0x4c4 calls OdsyNextCSetElem with a0=[a0+32]:8+2232, a1=?, a2=?, a3=?.
  The `jal` at 0x4e4 calls OdsyInitCSetCursor with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x4f0 calls OdsyNextCSetElem with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x544 calls SpewObjectToUser with a0=?, a1=?, a2=?, a3=?, a4=sp-128, a5=sp-136.
  The `jal` at 0x564 calls OdsyNextCSetElem with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x574 calls OdsyNextCSetElem with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x58c calls copyout with a0=sp-136, a1=?, a2=0x4, a3=?.
  The `jal` at 0x5f0 calls psema with a0=[a0+32]:8+56, a1=0x219, a2=?, a3=?, a4=[[a0+32]:8+72]:8.
  The `jal` at 0x610 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x638 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x658 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x68c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a5=[[a0+32]:8+80]-1, a6=[a0+32]:8.
  The `jal` at 0x6b4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=0xe, a3=?.
  The `bne` branch at 0x3a4 targets 0x630, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0x3b0 targets 0x5dc, is taken when v0(?) == at(=0x2), and falls through when v0(?) != at(=0x2).
  The `bne` branch at 0x3b8 targets 0x650, is taken when v0(?) != v1(=0x1), and falls through when v0(?) == v1(=0x1).
  The `bne` branch at 0x3d0 targets 0x5b4, is taken when v0(?) < 0x11 (signed), and falls through when v0(?) >= 0x11 (signed).
  The `bne` branch at 0x3e0 targets 0x5ec, is taken when a4(=[[a0+32]:8+72]:8) != s1(=a0), and falls through when a4(=[[a0+32]:8+72]:8) == s1(=a0).
  The `beq` branch at 0x410 targets 0x444, is taken when v0(=ret(SpewObjectToUser)) == 0, and falls through when v0(=ret(SpewObjectToUser)) != 0.
  The `beq` branch at 0x448 targets 0x45c and is always taken.
  The `beq` branch at 0x458 targets 0x4b8, is taken when s4(?) >= 0x10 (signed), and falls through when s4(?) < 0x10 (signed).
  The `beq` branch at 0x468 targets 0x450, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x478 targets 0x450, is taken when (a1(?) & 0x1) == 0, and falls through when (a1(?) & 0x1) != 0.
  The `beq` branch at 0x494 targets 0x450, is taken when v0(=ret(SpewObjectToUser)) == 0, and falls through when v0(=ret(SpewObjectToUser)) != 0.
  The `beq` branch at 0x4b0 targets 0x42c and is always taken.
  The `beq` branch at 0x4cc targets 0x588, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x4f8 targets 0x574, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x51c targets 0x554, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x528 targets 0x670, is taken when a4(?) >= at(?) (unsigned), and falls through when a4(?) < at(?) (unsigned).
  The `bne` branch at 0x54c targets 0x5c4, is taken when v0(=ret(SpewObjectToUser)) != 0, and falls through when v0(=ret(SpewObjectToUser)) == 0.
  The `bne` branch at 0x55c targets 0x50c, is taken when s2(?) < 0x10 (signed), and falls through when s2(?) >= 0x10 (signed).
  The `bne` branch at 0x56c targets 0x504, is taken when v0(=ret(OdsyNextCSetElem)) != 0, and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `bne` branch at 0x57c targets 0x4dc, is taken when v0(=ret(OdsyNextCSetElem)) != 0, and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `bne` branch at 0x594 targets 0x6a4, is taken when v0(=ret(copyout)) != 0, and falls through when v0(=ret(copyout)) == 0.
  The `beq` branch at 0x5ac targets 0x5e4 and is always taken.
  The `beq` branch at 0x5bc targets 0x42c and is always taken.
  The `beq` branch at 0x5d4 targets 0x42c and is always taken.
  The `beq` branch at 0x5e4 targets 0x42c and is always taken.
  The `beq` branch at 0x608 targets 0x3ec, is taken when a4(=[[a0+32]:8+104]) == 0, and falls through when a4(=[[a0+32]:8+104]) != 0.
  The `bne` branch at 0x620 targets 0x610, is taken when at(=[[a0+32]:8+104]) != 0, and falls through when at(=[[a0+32]:8+104]) == 0.
  The `beq` branch at 0x628 targets 0x3ec and is always taken.
  The `beq` branch at 0x648 targets 0x42c and is always taken.
  The `beq` branch at 0x668 targets 0x42c and is always taken.
  The `beq` branch at 0x69c targets 0x42c and is always taken.
  The `beq` branch at 0x6bc targets 0x5a0 and is always taken.
  The return at 0x43c has v0 = one of [a3], 0xe, ?, 0x16, 0xb.
- `SpewObjectToUser` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x6c4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x6c4-0x7ac (232 bytes).
  It occupies 232 bytes.
  The `lw` at 0x6cc loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lw` at 0x704 loads 4 bytes from ?.
  The `sw` at 0x710 stores 4 bytes to ?.
  The `lw` at 0x714 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x728, `lw` at 0x734.
  The `lw` at 0x740 loads 4 bytes from a0 (arg0 at entry) +0x68.
  2 such `ld` accesses load 8 bytes from a4 (arg4 at entry) +0x0, including `ld` at 0x758, `ld` at 0x774.
  The `lw` at 0x768 loads 4 bytes from a5 (arg5 at entry) +0x0.
  The `sw` at 0x770 stores 4 bytes to a5 (arg5 at entry) +0x0.
  The `sd` at 0x780 stores 8 bytes to a4 (arg4 at entry) +0x0.
  The `jal` at 0x754 calls copyout with a0=sp-144, a1=[a4]:8, a2=0x44, a3=a3 at entry (arg3), a4=[a0+60].
  The `jal` at 0x798 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bgtz` branch at 0x70c targets 0x6f8, is taken when v0(?) > 0 (signed), and falls through when v0(?) <= 0 (signed).
  The `bne` branch at 0x75c targets 0x790, is taken when v0(=ret(copyout)) != 0, and falls through when v0(=ret(copyout)) == 0.
  The `beq` branch at 0x7a4 targets 0x784 and is always taken.
  The return at 0x788 has v0 = one of 0x0, 0xe.
- `gfP_OdsyMMattach` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x7ac (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x7ac-0xbec (1088 bytes).
  It occupies 1088 bytes.
  10 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0x7b4, `ld` at 0x8c4, `ld` at 0x91c.
  The `ld` at 0x808 loads 8 bytes from ret(odsyGctxFromRnid) +0x68.
  The `ld` at 0x818 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0x81c loads 8 bytes from [a0]:8 +0x8.
  11 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x828, `sw` at 0x854, `sw` at 0x93c.
  The `sd` at 0x864 stores 8 bytes to ret(odsyGctxFromRnid) +0x98.
  The `sw` at 0x87c stores 4 bytes to ret(odsyGctxFromRnid) +0xa0.
  The `ld` at 0x8c8 loads 8 bytes from [a0+32]:8 +0x48.
  7 such `lw` accesses load 4 bytes from [a0+32]:8 +0x50, including `lw` at 0x8d4, `lw` at 0x920, `lw` at 0x98c.
  6 such `sw` accesses store 4 bytes to [a0+32]:8 +0x50, including `sw` at 0x8dc, `sw` at 0x928, `sw` at 0x994.
  The `ld` at 0x908 loads 8 bytes from ret(odsyGctxFromRnid) +0x98.
  The `sd` at 0x964 stores 8 bytes to ?.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x968, `sw` at 0x978, `sw` at 0x9a8.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x96c, `lw` at 0x99c, `lw` at 0x9b0.
  7 such `ld` accesses load 8 bytes from ?, including `ld` at 0x970, `ld` at 0x980, `ld` at 0x9b8.
  The `sd` at 0xa20 stores 8 bytes to [a0+32]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x68, including `lw` at 0xa28, `lw` at 0xa44.
  The `lw` at 0xaa8 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `jal` at 0x7d8 calls copyin with a0=a2 at entry (arg2), a1=sp-192, a2=0x48, a3=a3 at entry (arg3).
  The `jal` at 0x7ec calls odsyGctxFromRnid with a0=?, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x840 calls odsyPinAndMapGctxSwShadowRgn with a0=ret(odsyGctxFromRnid), a1=a3 at entry (arg3), a2=?, a3=?, a5=a0 at entry (arg0).
  The `jal` at 0x878 calls OdsyInitCSet with a0=ret(odsyGctxFromRnid)+184, a1=0x4, a2=?, a3=ret(odsyPinAndMapGctxSwShadowRgn), a5=-0x1.
  The `jal` at 0x884 calls OdsyInitCSet with a0=ret(odsyGctxFromRnid)+224, a1=0x4, a2=?, a3=?.
  The `jal` at 0x890 calls OdsyInitCSet with a0=ret(odsyGctxFromRnid)+264, a1=0x4, a2=?, a3=?.
  The `jal` at 0x8a8 calls OdsyAllocSpecificCSetId with a0=?, a1=?, a2=0x1, a3=?.
  The `jal` at 0x8f4 calls odsyGctxFromRnid with a0=?, a1=?, a2=?, a3=?, a5=[[a0+32]:8+80]+1.
  The `jal` at 0x948 calls OdsyAllocCSetId with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x9f4 calls copyout with a0=sp-192, a1=a2 at entry (arg2), a2=0x48, a3=ret(OdsyAllocCSetId), a4=-0x1.
  The `jal` at 0xa10 calls psema with a0=[a0+32]:8+56, a1=0x219, a2=?, a3=?, a4=a0 at entry (arg0).
  The `jal` at 0xa34 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0xa64 calls odsy_mm_sg_new with a0=a0 at entry (arg0), a1=?, a2=a3 at entry (arg3), a3=?, a5=[[a0+32]:8+80]+1.
  The `jal` at 0xa94 calls copyout with a0=sp-192, a1=a2 at entry (arg2), a2=0x48, a3=[[a0+32]:8+80]-1, a4=[a0+32]:8.
  The `jal` at 0xab0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xad8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a5=a0 at entry (arg0).
  The `jal` at 0xafc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=[[a0]:8+8]:8, a5=a0 at entry (arg0).
  The `jal` at 0xb38 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a5=[[a0+32]:8+80]-1, a6=[a0+32]:8.
  The `jal` at 0xb64 calls odsy_mm_sg_destroy with a0=?, a1=?, a2=?, a3=ret(OdsyAllocCSetId), a4=-0x1.
  The `jal` at 0xb88 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xbac calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xbd0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x7e0 targets 0xaac, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0x800 targets 0xacc, is taken when v0(=ret(odsyGctxFromRnid)) == 0, and falls through when v0(=ret(odsyGctxFromRnid)) != 0.
  The `beq` branch at 0x810 targets 0x838, is taken when v1(=[ret(odsyGctxFromRnid)+104]:8) == 0, and falls through when v1(=[ret(odsyGctxFromRnid)+104]:8) != 0.
  The `bne` branch at 0x820 targets 0xaf4, is taken when a4(=[[a0]:8+8]:8) != a5(=a0), and falls through when a4(=[[a0]:8+8]:8) == a5(=a0).
  The `beq` branch at 0x84c targets 0x864, is taken when v0(=ret(odsyPinAndMapGctxSwShadowRgn)) == 0, and falls through when v0(=ret(odsyPinAndMapGctxSwShadowRgn)) != 0.
  The `beq` branch at 0x85c targets 0x82c and is always taken.
  The `beq` branch at 0x8b8 targets 0x8a0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x8cc targets 0xa10, is taken when v1(=[[a0+32]:8+72]:8) != a4(=a0), and falls through when v1(=[[a0+32]:8+72]:8) == a4(=a0).
  The `beq` branch at 0x8e4 targets 0xa58, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x8ec targets 0xa5c, is taken when at(=-0x1) == a3(?), and falls through when at(=-0x1) != a3(?).
  The `beq` branch at 0x900 targets 0xb18, is taken when v0(=ret(odsyGctxFromRnid)) == 0, and falls through when v0(=ret(odsyGctxFromRnid)) != 0.
  The `bne` branch at 0x910 targets 0x940, is taken when v1(=[ret(odsyGctxFromRnid)+152]:8) != 0, and falls through when v1(=[ret(odsyGctxFromRnid)+152]:8) == 0.
  The `beq` branch at 0x938 targets 0x82c and is always taken.
  The `beq` branch at 0x954 targets 0xb54, is taken when v0(=ret(OdsyAllocCSetId)) == a4(=-0x1), and falls through when v0(=ret(OdsyAllocCSetId)) != a4(=-0x1).
  The `bne` branch at 0x9fc targets 0xba4, is taken when v0(=ret(copyout)) != 0, and falls through when v0(=ret(copyout)) == 0.
  The `beq` branch at 0xa08 targets 0x82c and is always taken.
  The `beq` branch at 0xa2c targets 0x8d4, is taken when v1(=[[a0+32]:8+104]) == 0, and falls through when v1(=[[a0+32]:8+104]) != 0.
  The `bne` branch at 0xa48 targets 0xa34, is taken when a4(=[[a0+32]:8+104]) != 0, and falls through when a4(=[[a0+32]:8+104]) == 0.
  The `beq` branch at 0xa50 targets 0x8d8 and is always taken.
  The `bne` branch at 0xa6c targets 0x940, is taken when v0(=ret(odsy_mm_sg_new)) != 0, and falls through when v0(=ret(odsy_mm_sg_new)) == 0.
  The `bne` branch at 0xa9c targets 0xbc8, is taken when v0(=ret(copyout)) != 0, and falls through when v0(=ret(copyout)) == 0.
  The `beq` branch at 0xaa4 targets 0x82c and is always taken.
  The `beq` branch at 0xac4 targets 0x82c and is always taken.
  The `beq` branch at 0xaec targets 0x82c and is always taken.
  The `beq` branch at 0xb10 targets 0x82c and is always taken.
  The `beq` branch at 0xb4c targets 0x82c and is always taken.
  The `bne` branch at 0xb5c targets 0xb70, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xb9c targets 0x82c and is always taken.
  The `beq` branch at 0xbc0 targets 0x82c and is always taken.
  The `beq` branch at 0xbe4 targets 0x82c and is always taken.
  The return at 0x830 has v0 = one of 0x0, ret(odsyPinAndMapGctxSwShadowRgn), 0x16, [a3], 0xe, 0xc.
- `odsyMMdetach` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0xbec (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0xbec-0xccc (224 bytes).
  It occupies 224 bytes.
  The `ld` at 0xbf4 loads 8 bytes from a1 (arg1 at entry) +0x98.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0xc0c, `ld` at 0xc50, `ld` at 0xc80.
  The `ld` at 0xc10 loads 8 bytes from [a0+32]:8 +0x48.
  3 such `lw` accesses load 4 bytes from [a0+32]:8 +0x50, including `lw` at 0xc1c, `lw` at 0xc54, `lw` at 0xcb4.
  2 such `sw` accesses store 4 bytes to [a0+32]:8 +0x50, including `sw` at 0xc30, `sw` at 0xc5c.
  The `sd` at 0xc34 stores 8 bytes to a1 (arg1 at entry) +0x98.
  The `lw` at 0xc38 loads 4 bytes from [a1+152]:8 +0x10.
  The `sw` at 0xc4c stores 4 bytes to [a1+152]:8 +0x10.
  The `sd` at 0xc84 stores 8 bytes to [a0+32]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x68, including `lw` at 0xc8c, `lw` at 0xca4.
  The `jal` at 0xc2c calls odsy_mm_sg_remove_gctx with a0=[a1+152]:8, a1=a1 at entry (arg1), a2=?, a3=[a0+32]:8.
  The `jal` at 0xc78 calls psema with a0=[a0+32]:8+56, a1=0x219, a2=a2 at entry (arg2), a3=[a0+32]:8.
  The `jal` at 0xc98 calls us_delay with a0=0x2, a1=?, a2=?, a3=[a0+32]:8.
  The `jal` at 0xcbc calls odsy_mm_sg_destroy with a0=[a1+152]:8, a1=?, a2=?, a3=?.
  The `beq` branch at 0xc04 targets 0xc60, is taken when s1(=[a1+152]:8) == 0, and falls through when s1(=[a1+152]:8) != 0.
  The `bne` branch at 0xc14 targets 0xc74, is taken when at(=[[a0+32]:8+72]:8) != s0(=a0), and falls through when at(=[[a0+32]:8+72]:8) == s0(=a0).
  The `beq` branch at 0xc48 targets 0xcb8, is taken when v1(=[[a1+152]:8+16]-1) == 0, and falls through when v1(=[[a1+152]:8+16]-1) != 0.
  The `beq` branch at 0xc90 targets 0xc1c, is taken when at(=[[a0+32]:8+104]) == 0, and falls through when at(=[[a0+32]:8+104]) != 0.
  The `bne` branch at 0xca8 targets 0xc98, is taken when v1(=[[a0+32]:8+104]) != 0, and falls through when v1(=[[a0+32]:8+104]) == 0.
  The `beq` branch at 0xcb0 targets 0xc20 and is always taken.
  The `beq` branch at 0xcc4 targets 0xc50 and is always taken.
  The return at 0xc6c has v0 = ?.
- `odsy_mm_sg_remove_gctx` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0xccc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0xccc-0xe7c (432 bytes).
  It occupies 432 bytes.
  3 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xa0, including `lw` at 0xdf0, `lw` at 0xe08, `lw` at 0xe54.
  The `lw` at 0xe18 loads 4 bytes from a1 (arg1 at entry) +0xcc.
  The `sw` at 0xe6c stores 4 bytes to a1 (arg1 at entry) +0xa0.
  The `jal` at 0xcec calls OdsyInitCSetCursor with a0=a1+264, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xcf4 calls OdsyNextCSetElem with a0=a1+264, a1=?, a2=?, a3=?.
  The `jal` at 0xd04 calls odsy_mm_grp_destroy with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=?.
  The `jal` at 0xd0c calls OdsyInitCSetCursor with a0=a1+264, a1=?, a2=?, a3=?.
  The `jal` at 0xd14 calls OdsyNextCSetElem with a0=a1+264, a1=?, a2=?, a3=?.
  The `jal` at 0xd2c calls OdsyDestroyCSet with a0=a1+264, a1=0x0, a2=?, a3=?.
  The `jal` at 0xd34 calls OdsyInitCSetCursor with a0=a1+184, a1=?, a2=?, a3=?.
  The `jal` at 0xd3c calls OdsyNextCSetElem with a0=a1+184, a1=?, a2=?, a3=?.
  The `jal` at 0xd64 calls OdsyDeallocCSetId with a0=a1+184, a1=?, a2=?, a3=?.
  The `jal` at 0xd6c calls OdsyNextCSetElem with a0=a1+184, a1=?, a2=?, a3=?.
  The `jal` at 0xd7c calls OdsyInitCSetCursor with a0=a1+184, a1=?, a2=?, a3=?.
  The `jal` at 0xd84 calls OdsyNextCSetElem with a0=a1+184, a1=?, a2=?, a3=?.
  The `jal` at 0xd94 calls odsy_mm_cores_destroy with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=?.
  The `jal` at 0xd9c calls OdsyInitCSetCursor with a0=a1+184, a1=?, a2=?, a3=?.
  The `jal` at 0xda4 calls OdsyNextCSetElem with a0=a1+184, a1=?, a2=?, a3=?.
  The `jal` at 0xdc0 calls OdsyInitCSetCursor with a0=a0+64, a1=?, a2=?, a3=?.
  The `jal` at 0xdc8 calls OdsyNextCSetElem with a0=a0+64, a1=?, a2=?, a3=?.
  The `jal` at 0xde0 calls OdsyNextCSetElem with a0=a0+64, a1=?, a2=?, a3=?.
  The `jal` at 0xdf4 calls OdsyLookupCSetId with a0=ret(OdsyNextCSetElem)+160, a1=[a1+160], a2=?, a3=?.
  The `jal` at 0xe04 calls OdsyDeallocCSetId with a0=ret(OdsyNextCSetElem)+160, a1=[a1+160], a2=?, a3=?.
  The `jal` at 0xe30 calls conbuf_flush with a0=0x3, a1=?, a2=[sym(kdebug)]:2, a3=?.
  The `jal` at 0xe3c calls debug with a0=sym(.rodata), a1=?, a2=?, a3=?.
  The `jal` at 0xe48 calls OdsyDestroyCSet with a0=a1+184, a1=0x0, a2=?, a3=?.
  The `jal` at 0xe58 calls OdsyDeallocCSetId with a0=a0+24, a1=[a1+160], a2=?, a3=?.
  The `beq` branch at 0xcfc targets 0xd28, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` branch at 0xd1c targets 0xd04, is taken when v0(=ret(OdsyNextCSetElem)) != 0, and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `beq` branch at 0xd44 targets 0xd7c, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` branch at 0xd54 targets 0xd7c, is taken when a1(=0x1) != v0(=ret(OdsyNextCSetElem)), and falls through when a1(=0x1) == v0(=ret(OdsyNextCSetElem)).
  The `bne` branch at 0xd74 targets 0xd54, is taken when v0(=ret(OdsyNextCSetElem)) != 0, and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `beq` branch at 0xd8c targets 0xdb8, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` branch at 0xdac targets 0xd94, is taken when v0(=ret(OdsyNextCSetElem)) != 0, and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `beq` branch at 0xdd0 targets 0xe18, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0xdd8 targets 0xdec and is always taken.
  The `beq` branch at 0xde8 targets 0xe14, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0xdfc targets 0xde0, is taken when v0(=ret(OdsyLookupCSetId)) == 0, and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `beq` branch at 0xe0c targets 0xde0 and is always taken.
  The `beq` branch at 0xe20 targets 0xe44, is taken when v1(=[a1+204]) == 0, and falls through when v1(=[a1+204]) != 0.
  The `beq` branch at 0xe28 targets 0xe48, is taken when a2(=[sym(kdebug)]:2) == 0, and falls through when a2(=[sym(kdebug)]:2) != 0.
  The return at 0xe74 has v0 = ret(OdsyDeallocCSetId).
- `gfP_OdsyMMalloc` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0xe7c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0xe7c-0x123c (960 bytes).
  It occupies 960 bytes.
  9 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xe80, `sw` at 0x10ec, `sw` at 0x1114.
  The `ld` at 0xe88 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0xe98 loads 8 bytes from [a0+72]:8 +0x70.
  The `ld` at 0xec8 loads 8 bytes from [[a0+72]:8+112]:8 +0x98.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0xf04, `ld` at 0xff0, `ld` at 0x103c.
  The `ld` at 0xf08 loads 8 bytes from [a0+32]:8 +0x48.
  3 such `lw` accesses load 4 bytes from [a0+32]:8 +0x50, including `lw` at 0xf14, `lw` at 0xff8, `lw` at 0x1070.
  2 such `sw` accesses store 4 bytes to [a0+32]:8 +0x50, including `sw` at 0xf1c, `sw` at 0x1010.
  The `ld` at 0xf54 loads 8 bytes from ?.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0xf64, `lw` at 0xf70, `lw` at 0xf7c.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xfb0, `lbu` at 0xfc0.
  The `lw` at 0x1024 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `sd` at 0x1040 stores 8 bytes to [a0+32]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x68, including `lw` at 0x1048, `lw` at 0x1060.
  The `jal` at 0xee4 calls copyin with a0=a2 at entry (arg2), a1=sp-208, a2=0x48, a3=a3 at entry (arg3), a6=0x0, a7=0x0.
  The `jal` at 0xf34 calls OdsyLookupCSetId with a0=?, a1=?, a2=?, a3=?, a5=-0x1.
  The `jal` at 0xfd0 calls odsy_mm_obj_destroy with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100c calls copyout with a0=sp-208, a1=a2 at entry (arg2), a2=0x48, a3=?, a6=[[a0+32]:8+80]-1, a7=[a0+32]:8.
  The `jal` at 0x1034 calls psema with a0=[a0+32]:8+56, a1=0x219, a2=?, a3=?, a4=[[a0+32]:8+72]:8.
  The `jal` at 0x1054 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x107c calls odsy_mm_grp_new with a0=[[a0+72]:8+112]:8, a1=?, a2=sp-208, a3=?, a5=-0x1.
  The `jal` at 0x10c4 calls odsy_mm_obj_new with a0=?, a1=?, a2=?, a3=sp-196.
  The `jal` at 0x1108 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0x0, a7=0x0.
  The `jal` at 0x1138 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0x0, a7=0x0.
  The `jal` at 0x1168 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x119c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x11c0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x11e4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=ret(OdsyLookupCSetId).
  The `jal` at 0x1210 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x122c calls odsy_mm_grp_destroy with a0=?, a1=?, a2=?, a3=?, a5=-0x1.
  The `beq` branch at 0xeb4 targets 0x10f0, is taken when s2(=[[a0+72]:8+112]:8) == 0, and falls through when s2(=[[a0+72]:8+112]:8) != 0.
  The `beq` branch at 0xed4 targets 0x1124, is taken when at(=[[[a0+72]:8+112]:8+152]:8) == 0, and falls through when at(=[[[a0+72]:8+112]:8+152]:8) != 0.
  The `bne` branch at 0xeec targets 0x1154, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0xefc targets 0x1184, is taken when a2(?) >= 0x10 (signed), and falls through when a2(?) < 0x10 (signed).
  The `bne` branch at 0xf0c targets 0x1034, is taken when a4(=[[a0+32]:8+72]:8) != s0(=a0), and falls through when a4(=[[a0+32]:8+72]:8) == s0(=a0).
  The `beq` branch at 0xf28 targets 0x1074, is taken when a5(=-0x1) == a1(?), and falls through when a5(=-0x1) != a1(?).
  The `beq` branch at 0xf40 targets 0x11dc, is taken when v0(=ret(OdsyLookupCSetId)) == 0, and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `beq` branch at 0xf5c targets 0xfdc, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xf68 targets 0xfd0, is taken when a4(?) != a5(?), and falls through when a4(?) == a5(?).
  The `bne` branch at 0xf74 targets 0xfd0, is taken when at(?) != v1(?), and falls through when at(?) == v1(?).
  The `bne` branch at 0xf80 targets 0xfd0, is taken when a4(?) != a5(?), and falls through when a4(?) == a5(?).
  The `bne` branch at 0xf8c targets 0xfd0, is taken when at(?) != v1(?), and falls through when at(?) == v1(?).
  The `bne` branch at 0xf98 targets 0xfd0, is taken when a4(?) != a5(?), and falls through when a4(?) == a5(?).
  The `bne` branch at 0xfa8 targets 0xfd0, is taken when at(?) != v1(?), and falls through when at(?) == v1(?).
  The `bne` branch at 0xfb8 targets 0xfd0, is taken when a4(?) != a5(?), and falls through when a4(?) == a5(?).
  The `beq` branch at 0xfc8 targets 0xfdc, is taken when at(?) == v1(?), and falls through when at(?) != v1(?).
  The `beq` branch at 0xfe8 targets 0x10a0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x101c targets 0x11b8, is taken when v0(=ret(copyout)) != 0, and falls through when v0(=ret(copyout)) == 0.
  The `beq` branch at 0x104c targets 0xf14, is taken when at(=[[a0+32]:8+104]) == 0, and falls through when at(=[[a0+32]:8+104]) != 0.
  The `bne` branch at 0x1064 targets 0x1054, is taken when v1(=[[a0+32]:8+104]) != 0, and falls through when v1(=[[a0+32]:8+104]) == 0.
  The `beq` branch at 0x106c targets 0xf18 and is always taken.
  The `beq` branch at 0x1088 targets 0x1208, is taken when v0(=ret(odsy_mm_grp_new)) == 0, and falls through when v0(=ret(odsy_mm_grp_new)) != 0.
  The `bne` branch at 0x1094 targets 0xff0, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bne` branch at 0x10a0 targets 0xff0, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x10ac targets 0xff0, is taken when s3(?) != 0, and falls through when s3(?) == 0.
  The `bne` branch at 0x10cc targets 0xff0, is taken when v0(=ret(odsy_mm_obj_new)) != 0, and falls through when v0(=ret(odsy_mm_obj_new)) == 0.
  The `beq` branch at 0x10d8 targets 0x122c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x10e8 targets 0xff0 and is always taken.
  The `beq` branch at 0x111c targets 0x1028 and is always taken.
  The `beq` branch at 0x114c targets 0x1028 and is always taken.
  The `beq` branch at 0x117c targets 0x1028 and is always taken.
  The `beq` branch at 0x11b0 targets 0x1028 and is always taken.
  The `beq` branch at 0x11d4 targets 0x1028 and is always taken.
  The `beq` branch at 0x1200 targets 0xfdc and is always taken.
  The `beq` branch at 0x1224 targets 0x1090 and is always taken.
  The `beq` branch at 0x1234 targets 0x10e0 and is always taken.
  The return at 0x102c has v0 = one of [a3], 0x1, 0xe, 0x16.
- `gfP_OdsyMMdealloc` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x123c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x123c-0x14cc (656 bytes).
  It occupies 656 bytes.
  The `ld` at 0x123c loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x1244 loads 8 bytes from [a0+72]:8 +0x70.
  The `ld` at 0x1260 loads 8 bytes from [[a0+72]:8+112]:8 +0x98.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0x128c, `ld` at 0x1308, `ld` at 0x133c.
  The `ld` at 0x1290 loads 8 bytes from [a0+32]:8 +0x48.
  4 such `lw` accesses load 4 bytes from [a0+32]:8 +0x50, including `lw` at 0x129c, `lw` at 0x130c, `lw` at 0x1370.
  3 such `sw` accesses store 4 bytes to [a0+32]:8 +0x50, including `sw` at 0x12a8, `sw` at 0x1314, `sw` at 0x1384.
  The `ld` at 0x12e4 loads 8 bytes from ?.
  The `lw` at 0x12fc loads 4 bytes from ?.
  The `sd` at 0x1340 stores 8 bytes to [a0+32]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x68, including `lw` at 0x1348, `lw` at 0x1360.
  6 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x1398, `sw` at 0x13e0, `sw` at 0x143c.
  The `jal` at 0x127c calls copyin with a0=a2 at entry (arg2), a1=sp-160, a2=0x48, a3=a3 at entry (arg3), a4=[[[a0+72]:8+112]:8+152]:8.
  The `jal` at 0x12b0 calls OdsyLookupCSetId with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x12f0 calls odsy_mm_obj_destroy with a0=?, a1=ret(OdsyLookupCSetId), a2=?, a3=?.
  The `jal` at 0x1334 calls psema with a0=[a0+32]:8+56, a1=0x219, a2=?, a3=?, a5=[[a0+32]:8+72]:8.
  The `jal` at 0x1354 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x13a8 calls copyout with a0=sp-160, a1=a2 at entry (arg2), a2=0x48, a3=?.
  The `jal` at 0x13c4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x13e4 calls odsy_mm_grp_destroy with a0=ret(OdsyLookupCSetId), a1=ret(OdsyLookupCSetId), a2=?, a3=?.
  The `jal` at 0x13f8 calls odsy_mm_grp_destroy with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1420 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1450 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[[a0+72]:8+112]:8+152]:8.
  The `jal` at 0x147c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x14ac calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x1258 targets 0x1408, is taken when a1(=[[a0+72]:8+112]:8) == 0, and falls through when a1(=[[a0+72]:8+112]:8) != 0.
  The `beq` branch at 0x126c targets 0x1440, is taken when a4(=[[[a0+72]:8+112]:8+152]:8) == 0, and falls through when a4(=[[[a0+72]:8+112]:8+152]:8) != 0.
  The `bne` branch at 0x1284 targets 0x1470, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `bne` branch at 0x1294 targets 0x1334, is taken when a5(=[[a0+32]:8+72]:8) != s0(=a0), and falls through when a5(=[[a0+32]:8+72]:8) == s0(=a0).
  The `beq` branch at 0x12c0 targets 0x1374, is taken when v0(=ret(OdsyLookupCSetId)) == 0, and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `beq` branch at 0x12cc targets 0x13e4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x12dc targets 0x149c, is taken when a2(?) >= 0x10 (signed), and falls through when a2(?) < 0x10 (signed).
  The `beq` branch at 0x12e8 targets 0x1308, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1300 targets 0x13f4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x131c targets 0x139c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x134c targets 0x129c, is taken when at(=[[a0+32]:8+104]) == 0, and falls through when at(=[[a0+32]:8+104]) != 0.
  The `bne` branch at 0x1364 targets 0x1354, is taken when v1(=[[a0+32]:8+104]) != 0, and falls through when v1(=[[a0+32]:8+104]) == 0.
  The `beq` branch at 0x136c targets 0x12a0 and is always taken.
  The `beq` branch at 0x1394 targets 0x132c and is always taken.
  The `beq` branch at 0x13b4 targets 0x1324, is taken when v0(=ret(copyout)) == 0, and falls through when v0(=ret(copyout)) != 0.
  The `beq` branch at 0x13dc targets 0x132c and is always taken.
  The `beq` branch at 0x13ec targets 0x1308 and is always taken.
  The `beq` branch at 0x1400 targets 0x1308 and is always taken.
  The `beq` branch at 0x1438 targets 0x132c and is always taken.
  The `beq` branch at 0x1468 targets 0x132c and is always taken.
  The `beq` branch at 0x1494 targets 0x132c and is always taken.
  The `beq` branch at 0x14c4 targets 0x132c and is always taken.
  The return at 0x132c has v0 = one of 0x0, 0x1, 0xe, 0x16.
- `odsy_mm_mkres_timeout` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x14cc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x14cc-0x1504 (56 bytes).
  It occupies 56 bytes.
  The `jal` at 0x14e4 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x14ec calls odsy_teardown with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0x14fc has v0 = ret(odsy_teardown).
- `gfP_OdsyMMmakeResident` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x1504 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x1504-0x1898 (916 bytes).
  It occupies 916 bytes.
  The `ld` at 0x150c loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x1510 loads 8 bytes from [a0+72]:8 +0x70.
  The `ld` at 0x1530 loads 8 bytes from [[a0+72]:8+112]:8 +0x98.
  The `ld` at 0x1544 loads 8 bytes from [[[a0+72]:8+112]:8+152]:8 +0x8.
  11 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x157c, `sw` at 0x1720, `sw` at 0x1748.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0x1590, `ld` at 0x16b4, `ld` at 0x16e4.
  The `ld` at 0x1594 loads 8 bytes from [a0+32]:8 +0x48.
  3 such `lw` accesses load 4 bytes from [a0+32]:8 +0x50, including `lw` at 0x15a0, `lw` at 0x16b8, `lw` at 0x1718.
  2 such `sw` accesses store 4 bytes to [a0+32]:8 +0x50, including `sw` at 0x15a8, `sw` at 0x16c0.
  2 such `lw` accesses load 4 bytes from [[a0+72]:8+112]:8 +0xa0, including `lw` at 0x15c8, `lw` at 0x17f8.
  The `ld` at 0x160c loads 8 bytes from ret(OdsyFindMatchingCSetElem) +0x28.
  The `ld` at 0x1610 loads 8 bytes from ret(OdsyFindMatchingCSetElem) +0x20.
  The `lhu` at 0x1614 loads 2 bytes from [ret(OdsyFindMatchingCSetElem)+40]:8 +0x4.
  The `lhu` at 0x1618 loads 2 bytes from [ret(OdsyFindMatchingCSetElem)+32]:8 +0x0.
  The `lw` at 0x1624 loads 4 bytes from ret(OdsyFindMatchingCSetElem) +0x0.
  2 such `lw` accesses load 4 bytes from ret(OdsyFindMatchingCSetElem) +0x4, including `lw` at 0x1628, `lw` at 0x1644.
  The `sw` at 0x1640 stores 4 bytes to ?.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1658, `ld` at 0x1690.
  The `lw` at 0x1664 loads 4 bytes from ?.
  The `lw` at 0x16c4 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `sd` at 0x16e8 stores 8 bytes to [a0+32]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x68, including `lw` at 0x16f0, `lw` at 0x1708.
  The `jal` at 0x154c calls copyin with a0=a2 at entry (arg2), a1=sp-112, a2=0x8, a3=a3 at entry (arg3).
  The `jal` at 0x1580 calls RRM_CheckValidFault with a0=a0 at entry (arg0), a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x15b4 calls OdsyLookupCSetId with a0=[[[a0+72]:8+112]:8+152]:8+64, a1=?, a2=?, a3=?, a5=[[a0+32]:8+80]+1.
  The `jal` at 0x15cc calls OdsyLookupCSetId with a0=ret(OdsyLookupCSetId)+160, a1=[[[a0+72]:8+112]:8+160], a2=?, a3=?.
  The `jal` at 0x15fc calls OdsyFindMatchingCSetElem with a0=ret(OdsyLookupCSetId), a1=sp-104, a2=sym(CoresidRangeFinder), a3=?.
  The `jal` at 0x168c calls timeout with a0=sym(odsy_mm_mkres_timeout), a1=?, a2=0x5dc, a3=?.
  The `jal` at 0x1698 calls odsy_mm_commit with a0=ret(OdsyFindMatchingCSetElem), a1=?, a2=?, a3=?.
  The `jal` at 0x16a8 calls untimeout with a0=ret(timeout), a1=?, a2=?, a3=?.
  The `jal` at 0x16dc calls psema with a0=[a0+32]:8+56, a1=0x219, a2=?, a3=?, a4=[[a0+32]:8+72]:8.
  The `jal` at 0x16fc calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x173c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1764 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x178c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x17b4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x17e0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x180c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=[[[a0+72]:8+112]:8+160], a3=?.
  The `jal` at 0x1834 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1858 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1878 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1880 calls untimeout with a0=ret(timeout), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1524 targets 0x1758, is taken when s1(=[[a0+72]:8+112]:8) == 0, and falls through when s1(=[[a0+72]:8+112]:8) != 0.
  The `beq` branch at 0x1534 targets 0x1780, is taken when s4(=[[[a0+72]:8+112]:8+152]:8) == 0, and falls through when s4(=[[[a0+72]:8+112]:8+152]:8) != 0.
  The `bne` branch at 0x1554 targets 0x17a8, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0x1560 targets 0x1730, is taken when v0(?) >= 0x10 (signed), and falls through when v0(?) < 0x10 (signed).
  The `beq` branch at 0x156c targets 0x1730, is taken when a0(?) >= 0x10 (signed), and falls through when a0(?) < 0x10 (signed).
  The `bne` branch at 0x1574 targets 0x1734, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bltz` branch at 0x1588 targets 0x171c, is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed), and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `bne` branch at 0x1598 targets 0x16dc, is taken when a4(=[[a0+32]:8+72]:8) != s0(=a0), and falls through when a4(=[[a0+32]:8+72]:8) == s0(=a0).
  The `beq` branch at 0x15c0 targets 0x17d0, is taken when v0(=ret(OdsyLookupCSetId)) == 0, and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `beq` branch at 0x15d4 targets 0x17f8, is taken when v0(=ret(OdsyLookupCSetId)) == 0, and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `beq` branch at 0x1604 targets 0x1824, is taken when v0(=ret(OdsyFindMatchingCSetElem)) == 0, and falls through when v0(=ret(OdsyFindMatchingCSetElem)) != 0.
  The `beq` branch at 0x161c targets 0x184c, is taken when at(=[[ret(OdsyFindMatchingCSetElem)+32]:8]:2) == v1(=[[ret(OdsyFindMatchingCSetElem)+40]:8+4]:2), and falls through when at(=[[ret(OdsyFindMatchingCSetElem)+32]:8]:2) != v1(=[[ret(OdsyFindMatchingCSetElem)+40]:8+4]:2).
  The `bne` branch at 0x1630 targets 0x1680, is taken when a2(=[ret(OdsyFindMatchingCSetElem)+4]) < v0(=[ret(OdsyFindMatchingCSetElem)]) (signed), and falls through when a2(=[ret(OdsyFindMatchingCSetElem)+4]) >= v0(=[ret(OdsyFindMatchingCSetElem)]) (signed).
  The `beq` branch at 0x1638 targets 0x1650 and is always taken.
  The `bne` branch at 0x164c targets 0x167c, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x165c targets 0x1648, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x166c targets 0x164c, is taken when (a3(?) & 0x2) == 0, and falls through when (a3(?) & 0x2) != 0.
  The `beq` branch at 0x1674 targets 0x1640 and is always taken.
  The `bne` branch at 0x16a0 targets 0x1870, is taken when v0(=ret(odsy_mm_commit)) != 0, and falls through when v0(=ret(odsy_mm_commit)) == 0.
  The `beq` branch at 0x16f4 targets 0x15a0, is taken when at(=[[a0+32]:8+104]) == 0, and falls through when at(=[[a0+32]:8+104]) != 0.
  The `bne` branch at 0x170c targets 0x16fc, is taken when v1(=[[a0+32]:8+104]) != 0, and falls through when v1(=[[a0+32]:8+104]) == 0.
  The `beq` branch at 0x1714 targets 0x15a4 and is always taken.
  The `beq` branch at 0x1728 targets 0x16c8 and is always taken.
  The `beq` branch at 0x1750 targets 0x16c8 and is always taken.
  The `beq` branch at 0x1778 targets 0x16c8 and is always taken.
  The `beq` branch at 0x17a0 targets 0x16c8 and is always taken.
  The `beq` branch at 0x17c8 targets 0x16c8 and is always taken.
  The `beq` branch at 0x17f0 targets 0x16b4 and is always taken.
  The `beq` branch at 0x181c targets 0x16b4 and is always taken.
  The `beq` branch at 0x1844 targets 0x16b4 and is always taken.
  The `beq` branch at 0x1868 targets 0x16b4 and is always taken.
  The `beq` branch at 0x1890 targets 0x16b4 and is always taken.
  The return at 0x16d4 has v0 = one of [a3], 0xe, 0x16, 0x1.
- `MapKernelRegionIntoUserSpace` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x1898 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x1898-0x18f4 (92 bytes).
  It occupies 92 bytes.
  The `ld` at 0x18b8 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x18d8 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `ld` at 0x18e4 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `jal` at 0x18e0 calls odsyMapPages with a0=0x0, a1=a0+16, a2=[a0+8]:8, a3=[a0+28], a4=sp-64, a5=0x1, a6=a0 at entry (arg0).
  The return at 0x18ec has v0 = ret(odsyMapPages).
- `CoresidRangeFinder` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x18f4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x18f4-0x193c (72 bytes).
  It occupies 72 bytes.
  The `ld` at 0x18f4 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x18f8 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x18fc loads 4 bytes from [a0+8]:8 +0x0.
  The `lw` at 0x1908 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x190c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x191c loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x1920 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x1900 targets 0x1934, is taken when at(=[a1+8]) != v0(=[[a0+8]:8]), and falls through when at(=[a1+8]) == v0(=[[a0+8]:8]).
  The `bne` branch at 0x1914 targets 0x1934, is taken when v1(=[a1]) != a2(=[a0+4]), and falls through when v1(=[a1]) == a2(=[a0+4]).
  The `bne` branch at 0x1924 targets 0x1934, is taken when a3(=[a0]) != at(=[a1+4]), and falls through when a3(=[a0]) == at(=[a1+4]).
  The return at 0x192c has v0 = 0x0.
  The return at 0x1934 has v0 = 0x1.
- `CoresidSubRangeFinder` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x193c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x193c-0x198c (80 bytes).
  It occupies 80 bytes.
  The `ld` at 0x193c loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x1940 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x1944 loads 4 bytes from [a0+8]:8 +0x0.
  The `lw` at 0x1950 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x1954 loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `lw` at 0x1968 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x196c loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `bne` branch at 0x1948 targets 0x1984, is taken when at(=[a1+8]) != v0(=[[a0+8]:8]), and falls through when at(=[a1+8]) == v0(=[[a0+8]:8]).
  The `bne` branch at 0x1960 targets 0x1984, is taken when v1(=[a0+4]) < a2(=[a1]) (signed), and falls through when v1(=[a0+4]) >= a2(=[a1]) (signed).
  The `bne` branch at 0x1974 targets 0x1984, is taken when a3(=[a1+4]) < at(=[a0]) (signed), and falls through when a3(=[a1+4]) >= at(=[a0]) (signed).
  The return at 0x197c has v0 = 0x0.
  The return at 0x1984 has v0 = 0x1.
- `odsy_mm_cores_exists` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x198c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x198c-0x1a08 (124 bytes).
  It occupies 124 bytes.
  The `ld` at 0x1998 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x19a0 loads 4 bytes from a1 (arg1 at entry) +0xa0.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x0, including `lh` at 0x19c4, `lh` at 0x19d0.
  The `lw` at 0x19e0 loads 4 bytes from ?.
  The `jal` at 0x19a4 calls OdsyLookupCSetId with a0=[a0+8]:8+160, a1=[a1+160], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x19e8 calls OdsyFindMatchingCSetElem with a0=ret(OdsyLookupCSetId), a1=sp-64, a2=sym(CoresidSubRangeFinder), a3=?, a4=[a0]:2, a5=[a0]:2.
  The `bne` branch at 0x19ac targets 0x19c0, is taken when v0(=ret(OdsyLookupCSetId)) != 0, and falls through when v0(=ret(OdsyLookupCSetId)) == 0.
  The `beq` branch at 0x19f0 targets 0x1a00, is taken when v0(=ret(OdsyFindMatchingCSetElem)) == 0, and falls through when v0(=ret(OdsyFindMatchingCSetElem)) != 0.
  The `beq` branch at 0x19f8 targets 0x19b8 and is always taken.
  The `beq` branch at 0x1a00 targets 0x19b8 and is always taken.
  The return at 0x19b8 has v0 = one of 0x0, 0x1.
- `odsy_mm_cores_obj_in` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x1a08 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x1a08-0x1a44 (60 bytes).
  It occupies 60 bytes.
  The `ld` at 0x1a0c loads 8 bytes from a1 (arg1 at entry) +0x8.
  The `ld` at 0x1a18 loads 8 bytes from ?.
  The `beq` branch at 0x1a20 targets 0x1a3c, is taken when at(?) == a0, and falls through when at(?) != a0.
  The `bne` branch at 0x1a28 targets 0x1a14, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The return at 0x1a34 has v0 = 0x0.
  The return at 0x1a3c has v0 = 0x1.
- `gfP_OdsyMMquery` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x1a44 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x1a44-0x1e5c (1048 bytes).
  It occupies 1048 bytes.
  The `ld` at 0x1a4c loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x1a64 loads 8 bytes from [a0+72]:8 +0x70.
  The `ld` at 0x1a9c loads 8 bytes from [[a0+72]:8+112]:8 +0x98.
  10 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x1ac0, `sw` at 0x1b50, `sw` at 0x1c88.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0x1b0c, `ld` at 0x1b54, `ld` at 0x1c28.
  The `ld` at 0x1b10 loads 8 bytes from [a0+32]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x50, including `lw` at 0x1b28, `lw` at 0x1b5c.
  2 such `sw` accesses store 4 bytes to [a0+32]:8 +0x50, including `sw` at 0x1b3c, `sw` at 0x1b74.
  The `lw` at 0x1b88 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `lw` at 0x1b98 loads 4 bytes from ret(OdsyLookupCSetId) +0x0.
  The `lw` at 0x1ba0 loads 4 bytes from ret(OdsyLookupCSetId) +0xc8.
  2 such `lw` accesses load 4 bytes from [[a0+72]:8+112]:8 +0xa0, including `lw` at 0x1bb0, `lw` at 0x1ca0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1c08, `lw` at 0x1c10.
  The `sd` at 0x1c2c stores 8 bytes to [a0+32]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x68, including `lw` at 0x1c34, `lw` at 0x1c4c.
  The `sb` at 0x1e34 stores 1 byte to ?.
  The `jal` at 0x1abc calls copyin with a0=a2 at entry (arg2), a1=sp-240, a2=0x28, a3=a3 at entry (arg3), a4=0x0, a7=0x0.
  The `jal` at 0x1b38 calls OdsyLookupCSetId with a0=?, a1=?, a2=?, a3=?, a4=[a0+32]:8.
  The `jal` at 0x1b70 calls copyout with a0=sp-240, a1=a2 at entry (arg2), a2=0x28, a3=?, a7=[[a0+32]:8+80]-1.
  The `jal` at 0x1bac calls OdsyLookupCSetId with a0=ret(OdsyLookupCSetId)+160, a1=[[[a0+72]:8+112]:8+160], a2=?, a3=?, a5=ret(OdsyLookupCSetId).
  The `jal` at 0x1bf0 calls OdsyFindMatchingCSetElem with a0=?, a1=sp-200, a2=sym(CoresidRangeFinder), a3=?.
  The `jal` at 0x1c20 calls psema with a0=[a0+32]:8+56, a1=0x219, a2=?, a3=?, a4=[a0+32]:8.
  The `jal` at 0x1c40 calls us_delay with a0=0x2, a1=?, a2=?, a3=?, a4=[a0+32]:8.
  The `jal` at 0x1c64 calls kmem_alloc with a0=0x28, a1=0x0, a2=?, a3=?, a4=ret(OdsyLookupCSetId).
  The `jal` at 0x1c94 calls OdsyInitCSet with a0=ret(kmem_alloc), a1=0x2, a2=?, a3=?, a4=ret(kmem_alloc).
  The `jal` at 0x1ca8 calls OdsyAllocSpecificCSetId with a0=?, a1=[[[a0+72]:8+112]:8+160], a2=?, a3=?.
  The `jal` at 0x1ce4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1d18 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x0, a7=0x0.
  The `jal` at 0x1d48 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x0, a7=0x0.
  The `jal` at 0x1d78 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1d9c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1dd0 calls odsy_mm_cores_new with a0=[[a0+72]:8+112]:8, a1=?, a2=?, a3=?, a5=[[a0+72]:8+112]:8+184, a6=sp-240.
  The `jal` at 0x1e04 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=?, a3=?, a5=-0x1.
  The `jal` at 0x1e10 calls OdsyDestroyCSet with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x1e3c calls kmem_free with a0=?, a1=0x28, a2=?, a3=?.
  The `beq` branch at 0x1a80 targets 0x1d00, is taken when s3(=[[a0+72]:8+112]:8) == 0, and falls through when s3(=[[a0+72]:8+112]:8) != 0.
  The `beq` branch at 0x1aa8 targets 0x1d34, is taken when at(=[[[a0+72]:8+112]:8+152]:8) == 0, and falls through when at(=[[[a0+72]:8+112]:8+152]:8) != 0.
  The `bne` branch at 0x1ac4 targets 0x1d64, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `bltz` branch at 0x1ae4 targets 0x1cd0, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `beq` branch at 0x1aec targets 0x1cd0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bltz` branch at 0x1af4 targets 0x1cd0, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `beq` branch at 0x1afc targets 0x1cd0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x1b04 targets 0x1cd0, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x1b1c targets 0x1c1c, is taken when at(=[[a0+32]:8+72]:8) != s0(=a0), and falls through when at(=[[a0+32]:8+72]:8) == s0(=a0).
  The `bne` branch at 0x1b44 targets 0x1b98, is taken when v0(=ret(OdsyLookupCSetId)) != 0, and falls through when v0(=ret(OdsyLookupCSetId)) == 0.
  The `bne` branch at 0x1b80 targets 0x1d94, is taken when v0(=ret(copyout)) != 0, and falls through when v0(=ret(copyout)) == 0.
  The `beq` branch at 0x1bb4 targets 0x1c60, is taken when v0(=ret(OdsyLookupCSetId)) == 0, and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `bne` branch at 0x1bc0 targets 0x1b54, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x1bc8 targets 0x1b54, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x1bf8 targets 0x1db8, is taken when v0(=ret(OdsyFindMatchingCSetElem)) == 0, and falls through when v0(=ret(OdsyFindMatchingCSetElem)) != 0.
  The `bne` branch at 0x1c00 targets 0x1b54, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x1c14 targets 0x1b54 and is always taken.
  The `beq` branch at 0x1c38 targets 0x1b28, is taken when a5(=[[a0+32]:8+104]) == 0, and falls through when a5(=[[a0+32]:8+104]) != 0.
  The `bne` branch at 0x1c50 targets 0x1c40, is taken when at(=[[a0+32]:8+104]) != 0, and falls through when at(=[[a0+32]:8+104]) == 0.
  The `beq` branch at 0x1c58 targets 0x1b28 and is always taken.
  The `bne` branch at 0x1c70 targets 0x1c8c, is taken when v0(=ret(kmem_alloc)) != 0, and falls through when v0(=ret(kmem_alloc)) == 0.
  The `beq` branch at 0x1c84 targets 0x1cc4 and is always taken.
  The `beq` branch at 0x1cb4 targets 0x1dfc, is taken when v0(=ret(OdsyAllocSpecificCSetId)) == a5(=-0x1), and falls through when v0(=ret(OdsyAllocSpecificCSetId)) != a5(=-0x1).
  The `beq` branch at 0x1cc8 targets 0x1bbc and is always taken.
  The `beq` branch at 0x1cf8 targets 0x1b8c and is always taken.
  The `beq` branch at 0x1d2c targets 0x1b8c and is always taken.
  The `beq` branch at 0x1d5c targets 0x1b8c and is always taken.
  The `beq` branch at 0x1d8c targets 0x1b8c and is always taken.
  The `beq` branch at 0x1db0 targets 0x1b8c and is always taken.
  The `bne` branch at 0x1dd8 targets 0x1df0, is taken when v0(=ret(odsy_mm_cores_new)) != 0, and falls through when v0(=ret(odsy_mm_cores_new)) == 0.
  The `beq` branch at 0x1df4 targets 0x1bfc and is always taken.
  The `bne` branch at 0x1e30 targets 0x1e20, is taken when a7(?) < 0x28 (unsigned), and falls through when a7(?) >= 0x28 (unsigned).
  The `beq` branch at 0x1e54 targets 0x1cbc and is always taken.
  The return at 0x1b90 has v0 = one of [a3], 0x16, 0x1, 0xe.
- `odsy_mm_ctxsw_timeout` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x2614 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x2614-0x264c (56 bytes).
  It occupies 56 bytes.
  The `jal` at 0x262c calls cmn_err with a0=0x1, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2634 calls odsy_teardown with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0x2644 has v0 = ret(odsy_teardown).
- `odsyMMvalidatePcxSwap` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x264c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x264c-0x2738 (236 bytes).
  It occupies 236 bytes.
  The `lw` at 0x264c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x265c loads 8 bytes from a1 (arg1 at entry) +0x98.
  The `ld` at 0x2700 loads 8 bytes from ret(OdsyNextCSetElem) +0x28.
  The `lhu` at 0x2704 loads 2 bytes from [ret(OdsyNextCSetElem)+40]:8 +0x6.
  The `lw` at 0x2710 loads 4 bytes from ret(OdsyNextCSetElem) +0x40.
  The `jal` at 0x2694 calls OdsyLookupCSetId with a0=a1+224, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x26ac calls timeout with a0=sym(odsy_mm_ctxsw_timeout), a1=a0 at entry (arg0), a2=0x5dc, a3=?.
  The `jal` at 0x26c0 calls OdsyInitCSetCursor with a0=a1+184, a1=?, a2=?, a3=?.
  The `jal` at 0x26c8 calls OdsyNextCSetElem with a0=a1+184, a1=?, a2=?, a3=?.
  The `jal` at 0x26e0 calls odsy_mm_commit with a0=ret(OdsyNextCSetElem), a1=0x1, a2=[[ret(OdsyNextCSetElem)+40]:8+6]:2, a3=[ret(OdsyNextCSetElem)+64].
  The `jal` at 0x26e8 calls OdsyNextCSetElem with a0=a1+184, a1=?, a2=?, a3=?.
  The `jal` at 0x2724 calls untimeout with a0=ret(timeout), a1=0x1, a2=?, a3=?.
  The `beq` branch at 0x2654 targets 0x2680, is taken when at(=[a1]) == 0, and falls through when at(=[a1]) != 0.
  The `beq` branch at 0x2660 targets 0x2680, is taken when v1(=[a1+152]:8) == 0, and falls through when v1(=[a1+152]:8) != 0.
  The `beq` branch at 0x266c targets 0x2688 and is always taken.
  The `beq` branch at 0x2680 targets 0x2674 and is always taken.
  The `beq` branch at 0x269c targets 0x2674, is taken when v0(=ret(OdsyLookupCSetId)) == 0, and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `beq` branch at 0x26d0 targets 0x2724, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x26d8 targets 0x26f8 and is always taken.
  The `beq` branch at 0x26f0 targets 0x2724, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x26f8 targets 0x26e8, is taken when a1(=0x1) == v0(=ret(OdsyNextCSetElem)), and falls through when a1(=0x1) != v0(=ret(OdsyNextCSetElem)).
  The `beq` branch at 0x2708 targets 0x26e8, is taken when a2(=[[ret(OdsyNextCSetElem)+40]:8+6]:2) == 0, and falls through when a2(=[[ret(OdsyNextCSetElem)+40]:8+6]:2) != 0.
  The `bne` branch at 0x2714 targets 0x26e8, is taken when a3(=[ret(OdsyNextCSetElem)+64]) != 0, and falls through when a3(=[ret(OdsyNextCSetElem)+64]) == 0.
  The `beq` branch at 0x271c targets 0x26e0 and is always taken.
  The `beq` branch at 0x2730 targets 0x2678 and is always taken.
  The return at 0x2678 has v0 = 0x0.
- `odsy_mm_find_current_as` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x2738 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x2738-0x28cc (404 bytes).
  It occupies 404 bytes.
  The `ld` at 0x2788 loads 8 bytes from ret(OdsyNextCSetElem) +0x18.
  The `ld` at 0x2794 loads 8 bytes from ret(OdsyNextCSetElem) +0x10.
  The `sw` at 0x27e8 stores 4 bytes to ret(kmem_alloc) +0x0.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x27f8, `sw` at 0x280c.
  4 such `sd` accesses store 8 bytes to ?, including `sd` at 0x2800, `sd` at 0x2808, `sd` at 0x2810.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x285c, `sb` at 0x28b4.
  The `lw` at 0x2890 loads 4 bytes from ?.
  The `jal` at 0x2750 calls as_lookup_current with a0=sp-64, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2758 calls OdsyInitCSetCursor with a0=a0+1528, a1=?, a2=?, a3=?.
  The `jal` at 0x2760 calls OdsyNextCSetElem with a0=a0+1528, a1=?, a2=?, a3=?.
  The `jal` at 0x2778 calls OdsyNextCSetElem with a0=a0+1528, a1=?, a2=?, a3=?.
  The `jal` at 0x27bc calls kmem_alloc with a0=0x40, a1=0x0, a2=?, a3=?.
  The `jal` at 0x27e4 calls OdsyAllocCSetId with a0=a0+1528, a1=ret(kmem_alloc), a2=?, a3=?, a4=-0x1.
  The `jal` at 0x2814 calls odsyPinAndMapASRegions with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2838 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x2864 calls kmem_free with a0=?, a1=0x40, a2=?, a3=?, a5=0x1.
  The `jal` at 0x287c calls cmn_err with a0=0x5, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x288c calls OdsyDeallocCSetId with a0=a0+1528, a1=?, a2=?, a3=?.
  The `jal` at 0x28bc calls kmem_free with a0=?, a1=0x40, a2=?, a3=?, a5=0x1.
  The `beq` branch at 0x2768 targets 0x27bc, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x2770 targets 0x2788 and is always taken.
  The `beq` branch at 0x2780 targets 0x27b8, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` branch at 0x278c targets 0x2778, is taken when at(=[ret(OdsyNextCSetElem)+24]:8) != v1(?), and falls through when at(=[ret(OdsyNextCSetElem)+24]:8) == v1(?).
  The `bne` branch at 0x2798 targets 0x2778, is taken when a2(=[ret(OdsyNextCSetElem)+16]:8) != a3(?), and falls through when a2(=[ret(OdsyNextCSetElem)+16]:8) == a3(?).
  The `bne` branch at 0x27c8 targets 0x27d8, is taken when v0(=ret(kmem_alloc)) != 0, and falls through when v0(=ret(kmem_alloc)) == 0.
  The `beq` branch at 0x27d0 targets 0x27a4 and is always taken.
  The `beq` branch at 0x27f0 targets 0x282c, is taken when v0(=ret(OdsyAllocCSetId)) == at(=-0x1), and falls through when v0(=ret(OdsyAllocCSetId)) != at(=-0x1).
  The `bne` branch at 0x281c targets 0x2874, is taken when v0(=ret(odsyPinAndMapASRegions)) != 0, and falls through when v0(=ret(odsyPinAndMapASRegions)) == 0.
  The `beq` branch at 0x2824 targets 0x27a4 and is always taken.
  The `bne` branch at 0x2858 targets 0x2848, is taken when a4(?) < 0x40 (unsigned), and falls through when a4(?) >= 0x40 (unsigned).
  The `beq` branch at 0x286c targets 0x27a4 and is always taken.
  The `bne` branch at 0x28b0 targets 0x28a0, is taken when a4(?) < 0x40 (unsigned), and falls through when a4(?) >= 0x40 (unsigned).
  The `beq` branch at 0x28c4 targets 0x27a4 and is always taken.
  The return at 0x27b0 has v0 = one of ret(OdsyNextCSetElem), 0x0, ?.
- `mm_as_remove_sg` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x28cc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x28cc-0x2944 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x28cc loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `sw` at 0x28e0 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sd` at 0x28ec stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `ld` at 0x28f0 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x28f8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sb` at 0x2924 stores 1 byte to ?.
  The `jal` at 0x28fc calls OdsyDeallocCSetId with a0=[a0+8]:8+1528, a1=[a0], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2904 calls odsyUnpinAndUnmapASRegions with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x292c calls kmem_free with a0=a0 at entry (arg0), a1=0x40, a2=0x5, a3=?.
  The `beq` branch at 0x28e8 targets 0x2938, is taken when v0(=[a0+4]-1) >= 0x1 (unsigned), and falls through when v0(=[a0+4]-1) < 0x1 (unsigned).
  The `bne` branch at 0x2920 targets 0x2914, is taken when a0(?) < 0x40 (unsigned), and falls through when a0(?) >= 0x40 (unsigned).
  The return at 0x293c has v0 = one of [a0+4]-1, ret(kmem_free).
- `odsy_mm_sg_new` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x2944 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x2944-0x2a64 (288 bytes).
  It occupies 288 bytes.
  The `sw` at 0x298c stores 4 bytes to ret(kmem_alloc) +0x10.
  2 such `sd` accesses store 8 bytes to ret(kmem_alloc) +0x0, including `sd` at 0x2990, `sd` at 0x2a14.
  The `sd` at 0x299c stores 8 bytes to ret(kmem_alloc) +0x8.
  2 such `sw` accesses store 4 bytes to ret(kmem_alloc) +0x14, including `sw` at 0x29a8, `sw` at 0x29e8.
  The `sw` at 0x29c4 stores 4 bytes to ret(kmem_alloc) +0xa0.
  The `sw` at 0x29c8 stores 4 bytes to ret(kmem_alloc) +0x98.
  The `sd` at 0x29d0 stores 8 bytes to ret(kmem_alloc) +0x90.
  The `lw` at 0x2a04 loads 4 bytes from ret(odsy_mm_find_current_as) +0x4.
  The `sw` at 0x2a10 stores 4 bytes to ret(odsy_mm_find_current_as) +0x4.
  The `jal` at 0x295c calls kmem_alloc with a0=0xa8, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x29a4 calls OdsyInitCSet with a0=ret(kmem_alloc)+24, a1=0x4, a2=?, a3=?.
  The `jal` at 0x29b0 calls OdsyInitCSet with a0=ret(kmem_alloc)+64, a1=0x4, a2=?, a3=?.
  The `jal` at 0x29bc calls OdsyInitCSet with a0=ret(kmem_alloc)+104, a1=0x4, a2=?, a3=?.
  The `jal` at 0x29d4 calls OdsyAllocCSetId with a0=a1+1488, a1=ret(kmem_alloc), a2=?, a3=?.
  The `jal` at 0x29ec calls odsy_mm_find_current_as with a0=a1 at entry (arg1), a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x2a2c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x2a34 calls odsy_mm_sg_destroy with a0=ret(kmem_alloc), a1=?, a2=?, a3=?.
  The `jal` at 0x2a54 calls cmn_err with a0=0x5, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x2970 targets 0x298c, is taken when v0(=ret(kmem_alloc)) != 0, and falls through when v0(=ret(kmem_alloc)) == 0.
  The `beq` branch at 0x29e0 targets 0x2a20, is taken when v0(=ret(OdsyAllocCSetId)) == v1(=-0x1), and falls through when v0(=ret(OdsyAllocCSetId)) != v1(=-0x1).
  The `beq` branch at 0x29fc targets 0x2a48, is taken when v0(=ret(odsy_mm_find_current_as)) == 0, and falls through when v0(=ret(odsy_mm_find_current_as)) != 0.
  The `beq` branch at 0x2a18 targets 0x2984 and is always taken.
  The `beq` branch at 0x2a40 targets 0x2984 and is always taken.
  The `beq` branch at 0x2a5c targets 0x2a34 and is always taken.
  The return at 0x2984 has v0 = one of 0x0, ret(kmem_alloc).
- `odsy_mm_sg_destroy` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x2a64 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x2a64-0x2b38 (212 bytes).
  It occupies 212 bytes.
  The `ld` at 0x2ab4 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x2ab8 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `ld` at 0x2acc loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sb` at 0x2b14 stores 1 byte to ?.
  The `jal` at 0x2a7c calls OdsyInitCSetCursor with a0=a0+64, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2a84 calls OdsyNextCSetElem with a0=a0+64, a1=?, a2=?, a3=?.
  The `jal` at 0x2a94 calls odsy_mm_grp_destroy with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=?.
  The `jal` at 0x2a9c calls OdsyInitCSetCursor with a0=a0+64, a1=?, a2=?, a3=?.
  The `jal` at 0x2aa4 calls OdsyNextCSetElem with a0=a0+64, a1=?, a2=?, a3=?.
  The `jal` at 0x2abc calls OdsyDeallocCSetId with a0=[a0+8]:8+1488, a1=[a0+20], a2=?, a3=?.
  The `jal` at 0x2ac4 calls odsyUnpinAndUnmapSGRegions with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x2ad0 calls mm_as_remove_sg with a0=[a0]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x2adc calls OdsyDestroyCSet with a0=a0+64, a1=0x0, a2=?, a3=?.
  The `jal` at 0x2ae8 calls OdsyDestroyCSet with a0=a0+24, a1=0x0, a2=?, a3=?.
  The `jal` at 0x2af4 calls OdsyDestroyCSet with a0=a0+104, a1=0x0, a2=?, a3=?.
  The `jal` at 0x2b1c calls kmem_free with a0=a0 at entry (arg0), a1=0xa8, a2=?, a3=?.
  The `beq` branch at 0x2a8c targets 0x2ab4, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` branch at 0x2aac targets 0x2a94, is taken when v0(=ret(OdsyNextCSetElem)) != 0, and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `bne` branch at 0x2b10 targets 0x2b04, is taken when v0(?) < 0xa8 (unsigned), and falls through when v0(?) >= 0xa8 (unsigned).
  The return at 0x2b30 has v0 = ret(kmem_free).
- `odsy_mm_obj_new` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x2b38 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x2b38-0x2e20 (744 bytes).
  It occupies 744 bytes.
  2 such `lbu` accesses load 1 byte from a3 (arg3 at entry) +0x1, including `lbu` at 0x2b40, `lbu` at 0x2c20.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x10, including `lw` at 0x2b88, `lw` at 0x2c28.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x14, including `lw` at 0x2ba0, `lw` at 0x2c30.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x18, including `lw` at 0x2bac, `lw` at 0x2c38.
  The `lw` at 0x2be0 loads 4 bytes from ret(kmem_alloc) +0x40.
  The `sd` at 0x2be4 stores 8 bytes to ret(kmem_alloc) +0x8.
  2 such `sh` accesses store 2 bytes to ret(kmem_alloc) +0x0, including `sh` at 0x2bf4, `sh` at 0x2d54.
  The `sd` at 0x2bfc stores 8 bytes to ret(kmem_alloc) +0x80.
  The `sw` at 0x2c0c stores 4 bytes to ret(kmem_alloc) +0x40.
  The `lbu` at 0x2c10 loads 1 byte from a3 (arg3 at entry) +0x0.
  The `sb` at 0x2c14 stores 1 byte to ret(kmem_alloc) +0x10.
  The `lbu` at 0x2c18 loads 1 byte from a3 (arg3 at entry) +0x2.
  The `sb` at 0x2c1c stores 1 byte to ret(kmem_alloc) +0x12.
  The `sb` at 0x2c24 stores 1 byte to ret(kmem_alloc) +0x11.
  The `sw` at 0x2c2c stores 4 bytes to ret(kmem_alloc) +0x20.
  The `sw` at 0x2c34 stores 4 bytes to ret(kmem_alloc) +0x24.
  The `sw` at 0x2c3c stores 4 bytes to ret(kmem_alloc) +0x28.
  The `lw` at 0x2c40 loads 4 bytes from a3 (arg3 at entry) +0x4.
  The `sw` at 0x2c44 stores 4 bytes to ret(kmem_alloc) +0x14.
  The `lw` at 0x2c48 loads 4 bytes from a3 (arg3 at entry) +0x8.
  The `sw` at 0x2c4c stores 4 bytes to ret(kmem_alloc) +0x18.
  The `lw` at 0x2c50 loads 4 bytes from a3 (arg3 at entry) +0xc.
  The `sw` at 0x2c58 stores 4 bytes to ret(kmem_alloc) +0x1c.
  The `lw` at 0x2c68 loads 4 bytes from a3 (arg3 at entry) +0x1c.
  2 such `sw` accesses store 4 bytes to ret(kmem_alloc) +0x2c, including `sw` at 0x2c70, `sw` at 0x2d94.
  The `lw` at 0x2c78 loads 4 bytes from a3 (arg3 at entry) +0x20.
  2 such `sw` accesses store 4 bytes to ret(kmem_alloc) +0x30, including `sw` at 0x2c80, `sw` at 0x2da0.
  The `lbu` at 0x2cd4 loads 1 byte from ret(kmem_alloc) +0x11.
  The `sw` at 0x2ce0 stores 4 bytes to ret(kmem_alloc) +0x68.
  The `sd` at 0x2ce8 stores 8 bytes to ret(kmem_alloc) +0x60.
  The `sw` at 0x2cf0 stores 4 bytes to ret(kmem_alloc) +0x58.
  The `sd` at 0x2cf8 stores 8 bytes to ret(kmem_alloc) +0x50.
  The `lw` at 0x2d00 loads 4 bytes from (([ret(kmem_alloc)+17]:1 << 0x2) + sym(.data)) +0x0.
  The `sw` at 0x2d04 stores 4 bytes to ret(kmem_alloc) +0x4c.
  The `sw` at 0x2d10 stores 4 bytes to ret(kmem_alloc) +0x48.
  The `sw` at 0x2d14 stores 4 bytes to ret(kmem_alloc) +0x3c.
  The `sd` at 0x2d5c stores 8 bytes to ((a2 << 0x3) + a1) +0x10.
  The `lw` at 0x2d60 loads 4 bytes from a1 (arg1 at entry) +0x90.
  The `sw` at 0x2d74 stores 4 bytes to a1 (arg1 at entry) +0x90.
  The `jal` at 0x2bc4 calls kmem_alloc with a0=0x88, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[a3+20], a5=[a3+24].
  The `jal` at 0x2d18 calls odsy_mm_reserve with a0=ret(kmem_alloc), a1=?, a2=[(([ret(kmem_alloc)+17]:1 << 0x2) + sym(.data))], a3=sym(.data), a4=([a3+24] + [a3+12]), a6=[a3+8], a7=[a3+12].
  The `jal` at 0x2d28 calls odsy_mm_obj_destroy with a0=ret(kmem_alloc), a1=?, a2=?, a3=?.
  The `jal` at 0x2db0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2dd0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=[a3+20], a4=-0x9, a6=[a3+8], a7=[a3+12].
  The `jal` at 0x2df0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=[a3+20], a4=([a3+24] + [a3+12]), a6=[a3+8], a7=[a3+12].
  The `jal` at 0x2e0c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x8, a5=0x4.
  The `beq` branch at 0x2b5c targets 0x2b88, is taken when a0(=[a3+1]:1) == at(=0x20), and falls through when a0(=[a3+1]:1) != at(=0x20).
  The `beq` branch at 0x2b68 targets 0x2b88, is taken when a0(=[a3+1]:1) == v1(=0x10), and falls through when a0(=[a3+1]:1) != v1(=0x10).
  The `beq` branch at 0x2b70 targets 0x2b88, is taken when a0(=[a3+1]:1) == a4(=0x8), and falls through when a0(=[a3+1]:1) != a4(=0x8).
  The `beq` branch at 0x2b78 targets 0x2b88, is taken when a0(=[a3+1]:1) == a5(=0x4), and falls through when a0(=[a3+1]:1) != a5(=0x4).
  The `bne` branch at 0x2b80 targets 0x2e04, is taken when a0(=[a3+1]:1) != at(=0x2), and falls through when a0(=[a3+1]:1) == at(=0x2).
  The `beq` branch at 0x2b90 targets 0x2da4, is taken when a0(=[a3+16]) == 0, and falls through when a0(=[a3+16]) != 0.
  The `bne` branch at 0x2b98 targets 0x2da8, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x2ba4 targets 0x2da8, is taken when a4(=[a3+20]) == 0, and falls through when a4(=[a3+20]) != 0.
  The `beq` branch at 0x2bb4 targets 0x2da4, is taken when a5(=[a3+24]) == 0, and falls through when a5(=[a3+24]) != 0.
  The `beq` branch at 0x2bd8 targets 0x2d78, is taken when v0(=ret(kmem_alloc)) == 0, and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` branch at 0x2c7c targets 0x2d84, is taken when (v0(?) & 0x1) == 0, and falls through when (v0(?) & 0x1) != 0.
  The `beq` branch at 0x2c84 targets 0x2d8c, is taken when a0(=[a3+28]) == 0, and falls through when a0(=[a3+28]) != 0.
  The `bne` branch at 0x2c90 targets 0x2dc4, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x2cb0 targets 0x2d98, is taken when a1(=[a3+32]) == 0, and falls through when a1(=[a3+32]) != 0.
  The `bne` branch at 0x2cb8 targets 0x2de4, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x2d20 targets 0x2d4c, is taken when v0(=ret(odsy_mm_reserve)) == 0, and falls through when v0(=ret(odsy_mm_reserve)) != 0.
  The `beq` branch at 0x2d70 targets 0x2d3c and is always taken.
  The `beq` branch at 0x2d7c targets 0x2d3c and is always taken.
  The `bne` branch at 0x2d84 targets 0x2c90, is taken when a0(=[a3+28]) != 0, and falls through when a0(=[a3+28]) == 0.
  The `beq` branch at 0x2d90 targets 0x2c94 and is always taken.
  The `beq` branch at 0x2d9c targets 0x2cbc and is always taken.
  The `beq` branch at 0x2dbc targets 0x2d3c and is always taken.
  The `beq` branch at 0x2ddc targets 0x2d3c and is always taken.
  The `beq` branch at 0x2dfc targets 0x2d3c and is always taken.
  The `beq` branch at 0x2e18 targets 0x2d3c and is always taken.
  The return at 0x2d44 has v0 = one of 0x0, ret(kmem_alloc).
- `odsy_mm_obj_destroy` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x2e20 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x2e20-0x2f4c (300 bytes).
  It occupies 300 bytes.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x2e20, `ld` at 0x2e70, `ld` at 0x2ee0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x2e24, `lw` at 0x2e54.
  2 such `ld` accesses load 8 bytes from [a0+8]:8 +0x8, including `ld` at 0x2e2c, `ld` at 0x2e74.
  2 such `ld` accesses load 8 bytes from [[a0+8]:8+8]:8 +0x8, including `ld` at 0x2e38, `ld` at 0x2e78.
  The `ld` at 0x2e8c loads 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x50, including `ld` at 0x2e90, `ld` at 0x2ec0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x58, including `lw` at 0x2ea0, `lw` at 0x2eb8.
  The `ld` at 0x2ea4 loads 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x6b0.
  The `lw` at 0x2ea8 loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x6b8.
  The `sd` at 0x2eb4 stores 8 bytes to [[[a0+8]:8+8]:8+8]:8 +0x6b0.
  The `sw` at 0x2ec4 stores 4 bytes to a0 (arg0 at entry) +0x58.
  The `sd` at 0x2ec8 stores 8 bytes to a0 (arg0 at entry) +0x50.
  The `lh` at 0x2ecc loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sd` at 0x2ee8 stores 8 bytes to ([a0+8]:8 + ([a0]:2 << 0x3)) +0x10.
  The `lw` at 0x2ef0 loads 4 bytes from [a0+8]:8 +0x90.
  The `sw` at 0x2ef8 stores 4 bytes to [a0+8]:8 +0x90.
  The `sb` at 0x2f10 stores 1 byte to ?.
  The `ld` at 0x2f30 loads 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x6a8.
  The `sw` at 0x2f48 stores 4 bytes to [[[a0+8]:8+8]:8+8]:8 +0x6b8.
  The `jal` at 0x2e4c calls odsy_mm_decommit with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+64], a3=a3 at entry (arg3).
  The `jal` at 0x2e68 calls odsy_mm_release with a0=a0 at entry (arg0), a1=?, a2=[a0+64], a3=?.
  The `jal` at 0x2e88 calls odsyDMAWait with a0=[[[[a0+8]:8+8]:8+8]:8]:8, a1=0x0, a2=0x1, a3=a0+96.
  The `jal` at 0x2ebc calls kmem_free with a0=[a0+80]:8, a1=[a0+88], a2=?, a3=?.
  The `jal` at 0x2f18 calls kmem_free with a0=a0 at entry (arg0), a1=0x88, a2=0x11, a3=?.
  The `beq` branch at 0x2e40 targets 0x2e5c, is taken when (a2(=[a0+64]) & 0x8) == 0, and falls through when (a2(=[a0+64]) & 0x8) != 0.
  The `beq` branch at 0x2e60 targets 0x2e70, is taken when (a2(=[a0+64]) & 0x4) == 0, and falls through when (a2(=[a0+64]) & 0x4) != 0.
  The `beq` branch at 0x2e98 targets 0x2ecc, is taken when a1(=[a0+80]:8) == 0, and falls through when a1(=[a0+80]:8) != 0.
  The `beq` branch at 0x2eb0 targets 0x2f30, is taken when at(=[[[[a0+8]:8+8]:8+8]:8+1720]) == 0, and falls through when at(=[[[[a0+8]:8+8]:8+8]:8+1720]) != 0.
  The `beq` branch at 0x2ed8 targets 0x2efc, is taken when a0(=[a0]:2) == at(=-0x1), and falls through when a0(=[a0]:2) != at(=-0x1).
  The `bne` branch at 0x2f0c targets 0x2f00, is taken when a0(?) < 0x88 (unsigned), and falls through when a0(?) >= 0x88 (unsigned).
  The `bne` branch at 0x2f38 targets 0x2eb8, is taken when v1(=[[[[a0+8]:8+8]:8+8]:8+1704]:8) < a0(?) (signed), and falls through when v1(=[[[[a0+8]:8+8]:8+8]:8+1704]:8) >= a0(?) (signed).
  The `beq` branch at 0x2f44 targets 0x2eb8 and is always taken.
  The return at 0x2f28 has v0 = ret(kmem_free).
- `odsy_mm_sg_remove_grp` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x2f4c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x2f4c-0x2f8c (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x2f4c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `sw` at 0x2f80 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `jal` at 0x2f6c calls OdsyDeallocCSetId with a0=a0+64, a1=[a1], a2=a2 at entry (arg2), a3=[a1], a4=a0 at entry (arg0).
  The `beq` branch at 0x2f5c targets 0x2f84, is taken when at(=-0x1) == a3(=[a1]), and falls through when at(=-0x1) != a3(=[a1]).
  The return at 0x2f84 has v0 = one of ?, -0x1.
- `odsy_mm_sg_add_grp` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x2f8c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x2f8c-0x320c (640 bytes).
  It occupies 640 bytes.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x2ff8, `sw` at 0x3114.
  The `sd` at 0x305c stores 8 bytes to ret(kmem_alloc) +0x8.
  The `sd` at 0x3080 stores 8 bytes to ret(kmem_alloc) +0x10.
  The `sd` at 0x308c stores 8 bytes to ret(kmem_alloc) +0x18.
  The `lw` at 0x3098 loads 4 bytes from a2 (arg2 at entry) +0x34.
  The `sw` at 0x30a0 stores 4 bytes to a2 (arg2 at entry) +0x34.
  The `ld` at 0x30a8 loads 8 bytes from ret(kmem_alloc) +0x10.
  The `sh` at 0x30ac stores 2 bytes to a2 (arg2 at entry) +0x40.
  The `sd` at 0x30b0 stores 8 bytes to a2 (arg2 at entry) +0x38.
  The `lw` at 0x30e0 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwu` at 0x315c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x3160 loads 8 bytes from ?.
  The `sd` at 0x3174 stores 8 bytes to a1 (arg1 at entry) +0x98.
  The `jal` at 0x2fd4 calls OdsyAllocCSetId with a0=a0+64, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3014 calls OdsyLookupCSetId with a0=a0+104, a1=?, a2=?, a3=?.
  The `jal` at 0x303c calls kmem_alloc with a0=0x20, a1=0x0, a2=?, a3=?.
  The `jal` at 0x3050 calls kmem_alloc with a0=0x4000, a1=0x0, a2=?, a3=?.
  The `jal` at 0x3068 calls OdsyAllocSpecificCSetId with a0=a0+104, a1=?, a2=ret(kmem_alloc), a3=?.
  The `jal` at 0x3088 calls MapKernelRegionIntoUserSpace with a0=ret(kmem_alloc), a1=0x1, a2=?, a3=?, a4=-0x1, a5=0x4000.
  The `jal` at 0x3108 calls OdsyDeallocCSetId with a0=a0+64, a1=?, a2=?, a3=?, a4=one of 0x0, 0x1.
  The `jal` at 0x3188 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x31a4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x31c0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x31dc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=-0x1.
  The `jal` at 0x31f8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x2fe0 targets 0x3134, is taken when v0(=ret(OdsyAllocCSetId)) == at(=-0x1), and falls through when v0(=ret(OdsyAllocCSetId)) != at(=-0x1).
  The `bne` branch at 0x3020 targets 0x30d8, is taken when v0(=ret(OdsyLookupCSetId)) != 0, and falls through when v0(=ret(OdsyLookupCSetId)) == 0.
  The `beq` branch at 0x3034 targets 0x3180, is taken when a3(?) >= 0x80 (unsigned), and falls through when a3(?) < 0x80 (unsigned).
  The `beq` branch at 0x3044 targets 0x319c, is taken when v0(=ret(kmem_alloc)) == 0, and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` branch at 0x3058 targets 0x31b8, is taken when v0(=ret(kmem_alloc)) == 0, and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` branch at 0x3074 targets 0x31d4, is taken when v0(=ret(OdsyAllocSpecificCSetId)) == a4(=-0x1), and falls through when v0(=ret(OdsyAllocSpecificCSetId)) != a4(=-0x1).
  The `bne` branch at 0x3090 targets 0x31f0, is taken when v0(=ret(MapKernelRegionIntoUserSpace)) != 0, and falls through when v0(=ret(MapKernelRegionIntoUserSpace)) == 0.
  The `beq` branch at 0x30d8 targets 0x313c, is taken when s1(=one of 0x0, 0x1) == 0, and falls through when s1(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x30f4 targets 0x3118, is taken when at(?) == v1(=-0x1), and falls through when at(?) != v1(=-0x1).
  The `beq` branch at 0x3134 targets 0x311c and is always taken.
  The `bne` branch at 0x313c targets 0x30e0, is taken when a4(=one of 0x0, 0x1) != 0, and falls through when a4(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0x3144 targets 0x30e0, is taken when at(=one of 0x0, 0x1) != 0, and falls through when at(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0x314c targets 0x30e0, is taken when v1(=one of 0x0, 0x1) != 0, and falls through when v1(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0x3154 targets 0x30e0, is taken when a3(=one of 0x0, 0x1) != 0, and falls through when a3(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x3178 targets 0x311c and is always taken.
  The `beq` branch at 0x3194 targets 0x30d4 and is always taken.
  The `beq` branch at 0x31b0 targets 0x30cc and is always taken.
  The `beq` branch at 0x31cc targets 0x30c4 and is always taken.
  The `beq` branch at 0x31e8 targets 0x30bc and is always taken.
  The `beq` branch at 0x3204 targets 0x30b4 and is always taken.
  The return at 0x312c has v0 = one of -0x1, ret(OdsyAllocCSetId), ?.
- `odsy_mm_grp_new` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x320c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x320c-0x3324 (280 bytes).
  It occupies 280 bytes.
  2 such `sw` accesses store 4 bytes to ret(kmem_alloc) +0xcc, including `sw` at 0x3258, `sw` at 0x32f8.
  The `sw` at 0x3264 stores 4 bytes to ret(kmem_alloc) +0x0.
  The `sw` at 0x3268 stores 4 bytes to ret(kmem_alloc) +0x90.
  The `sw` at 0x326c stores 4 bytes to ret(kmem_alloc) +0xd0.
  The `sd` at 0x3274 stores 8 bytes to ret(kmem_alloc) +0xe8.
  The `sd` at 0x3280 stores 8 bytes to ret(kmem_alloc) +0xe0.
  The `sd` at 0x3290 stores 8 bytes to ret(kmem_alloc) +0xd8.
  The `sd` at 0x3294 stores 8 bytes to ret(kmem_alloc) +0x8.
  The `lbu` at 0x3298 loads 1 byte from a2 (arg2 at entry) +0xc.
  The `sw` at 0x32ac stores 4 bytes to ret(kmem_alloc) +0xc8.
  The `lw` at 0x32b0 loads 4 bytes from ret(kmem_alloc) +0x0.
  The `lw` at 0x32c4 loads 4 bytes from ret(kmem_alloc) +0xc8.
  The `jal` at 0x322c calls kmem_alloc with a0=0xf0, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3260 calls bzero with a0=ret(kmem_alloc)+16, a1=0x80, a2=?, a3=?.
  The `jal` at 0x327c calls OdsyInitCSet with a0=ret(kmem_alloc)+160, a1=0x2, a2=?, a3=?.
  The `jal` at 0x32a8 calls odsy_mm_sg_add_grp with a0=a1 at entry (arg1), a1=ret(kmem_alloc), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x32d8 calls OdsyAllocCSetId with a0=a0+264, a1=ret(kmem_alloc), a2=?, a3=[ret(kmem_alloc)], a4=[ret(kmem_alloc)+200].
  The `jal` at 0x32fc calls odsy_mm_grp_destroy with a0=ret(kmem_alloc), a1=?, a2=?, a3=?.
  The `bne` branch at 0x3238 targets 0x3250, is taken when v0(=ret(kmem_alloc)) != 0, and falls through when v0(=ret(kmem_alloc)) == 0.
  The `beq` branch at 0x32bc targets 0x32fc, is taken when a3(=[ret(kmem_alloc)]) == v0(=-0x1), and falls through when a3(=[ret(kmem_alloc)]) != v0(=-0x1).
  The `beq` branch at 0x32c8 targets 0x3314, is taken when a4(=[ret(kmem_alloc)+200]) == 0, and falls through when a4(=[ret(kmem_alloc)+200]) != 0.
  The `beq` branch at 0x32ec targets 0x3314, is taken when v0(=ret(OdsyAllocCSetId)) == a3(=-0x1), and falls through when v0(=ret(OdsyAllocCSetId)) != a3(=-0x1).
  The `beq` branch at 0x32f4 targets 0x3318, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x330c targets 0x3248 and is always taken.
  The `bne` branch at 0x3314 targets 0x32fc, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x331c targets 0x3248 and is always taken.
  The return at 0x3248 has v0 = one of 0x0, ret(kmem_alloc).
- `odsy_mm_grp_destroy` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x3324 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x3324-0x34d4 (432 bytes).
  It occupies 432 bytes.
  The `lw` at 0x3324 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0x3360 loads 8 bytes from ?.
  The `sd` at 0x3378 stores 8 bytes to ?.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x33c4, `sb` at 0x34b0.
  The `ld` at 0x3408 loads 8 bytes from ret(OdsyNextCSetElem) +0x10.
  The `lw` at 0x3448 loads 4 bytes from [ret(OdsyNextCSetElem)+16]:8 +0xa0.
  The `lw` at 0x346c loads 4 bytes from a0 (arg0 at entry) +0xcc.
  The `ld` at 0x347c loads 8 bytes from a0 (arg0 at entry) +0xd8.
  The `ld` at 0x3488 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `jal` at 0x336c calls odsy_mm_obj_destroy with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3384 calls OdsyInitCSetCursor with a0=a0+160, a1=?, a2=?, a3=?.
  The `jal` at 0x3390 calls OdsyNextCSetElem with a0=a0+160, a1=?, a2=?, a3=?.
  The `jal` at 0x33cc calls kmem_free with a0=ret(OdsyNextCSetElem), a1=0x28, a2=?, a3=?.
  The `jal` at 0x33d4 calls OdsyInitCSetCursor with a0=a0+160, a1=?, a2=?, a3=?.
  The `jal` at 0x33dc calls OdsyNextCSetElem with a0=a0+160, a1=?, a2=?, a3=?.
  The `jal` at 0x33f0 calls OdsyInitCSetCursor with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=?.
  The `jal` at 0x33f8 calls OdsyNextCSetElem with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=?.
  The `jal` at 0x340c calls odsy_mm_cores_destroy with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=?.
  The `jal` at 0x3414 calls OdsyInitCSetCursor with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=?.
  The `jal` at 0x341c calls OdsyNextCSetElem with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=?.
  The `jal` at 0x3438 calls OdsyDestroyCSet with a0=ret(OdsyNextCSetElem), a1=0x0, a2=?, a3=?.
  The `jal` at 0x3444 calls OdsyDeallocCSetId with a0=a0+160, a1=[[ret(OdsyNextCSetElem)+16]:8+160], a2=?, a3=?.
  The `jal` at 0x3464 calls OdsyDestroyCSet with a0=a0+160, a1=0x0, a2=?, a3=?.
  The `jal` at 0x3480 calls OdsyDeallocCSetId with a0=[a0+216]:8+264, a1=[a0+204], a2=-0x1, a3=?.
  The `jal` at 0x348c calls odsy_mm_sg_remove_grp with a0=[a0+8]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x34bc calls kmem_free with a0=a0 at entry (arg0), a1=0xf0, a2=?, a3=?.
  The `beq` branch at 0x3334 targets 0x3498, is taken when at(=[a0]) == v0(=-0x1), and falls through when at(=[a0]) != v0(=-0x1).
  The `beq` branch at 0x3348 targets 0x3358 and is always taken.
  The `beq` branch at 0x3354 targets 0x337c, is taken when s0(?) >= 0x10 (signed), and falls through when s0(?) < 0x10 (signed).
  The `beq` branch at 0x3364 targets 0x3350, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x3374 targets 0x3350 and is always taken.
  The `beq` branch at 0x339c targets 0x345c, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x33a4 targets 0x33ec and is always taken.
  The `bne` branch at 0x33ac targets 0x3434 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `bne` branch at 0x33c0 targets 0x33b4, is taken when v0(?) < 0x28 (unsigned), and falls through when v0(?) >= 0x28 (unsigned).
  The `beq` branch at 0x33e4 targets 0x3454, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x3400 targets 0x33ac, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` branch at 0x3424 targets 0x3408, is taken when v0(=ret(OdsyNextCSetElem)) != 0, and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `beq` branch at 0x342c targets 0x33b4, is taken when s1(=[ret(OdsyNextCSetElem)+16]:8) == 0, and falls through when s1(=[ret(OdsyNextCSetElem)+16]:8) != 0.
  The `beq` branch at 0x344c targets 0x33b4 and is always taken.
  The `beq` branch at 0x3474 targets 0x3488, is taken when a2(=-0x1) == a1(=[a0+204]), and falls through when a2(=-0x1) != a1(=[a0+204]).
  The `bne` branch at 0x34ac targets 0x34a0, is taken when v0(?) < 0xf0 (unsigned), and falls through when v0(?) >= 0xf0 (unsigned).
  The return at 0x34cc has v0 = ret(kmem_free).
- `odsy_mm_cores_destroy` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x34d4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x34d4-0x3594 (192 bytes).
  It occupies 192 bytes.
  The `lw` at 0x34d4 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `ld` at 0x34f8 loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `sw` at 0x34fc stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `lw` at 0x3504 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `ld` at 0x3510 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `sw` at 0x3520 stores 4 bytes to a0 (arg0 at entry) +0x30.
  The `lw` at 0x3528 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x3534 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x3538 loads 8 bytes from [a0+8]:8 +0x8.
  The `ld` at 0x353c loads 8 bytes from [[a0+8]:8+8]:8 +0x8.
  The `ld` at 0x3540 loads 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x0.
  The `sb` at 0x356c stores 1 byte to ?.
  The `jal` at 0x34f4 calls OdsyDeallocCSetId with a0=[a0+56]:8, a1=[a0+52], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3518 calls OdsyDeallocCSetId with a0=[a0+16]:8+184, a1=[a0+48], a2=?, a3=?.
  The `jal` at 0x3548 calls OdsyFree32kSlot with a0=[[[[a0+8]:8+8]:8+8]:8]:8+6112, a1=[a0+24], a2=?, a3=?.
  The `jal` at 0x3578 calls kmem_free with a0=a0 at entry (arg0), a1=0x48, a2=?, a3=?.
  The `beq` branch at 0x34e8 targets 0x3504, is taken when a1(=[a0+52]) == s1(=-0x1), and falls through when a1(=[a0+52]) != s1(=-0x1).
  The `beq` branch at 0x3508 targets 0x3528, is taken when a1(=[a0+48]) == s1(=-0x1), and falls through when a1(=[a0+48]) != s1(=-0x1).
  The `beq` branch at 0x352c targets 0x3558, is taken when a1(=[a0+24]) == s1(=-0x1), and falls through when a1(=[a0+24]) != s1(=-0x1).
  The `bne` branch at 0x3568 targets 0x355c, is taken when a0(?) < 0x48 (unsigned), and falls through when a0(?) >= 0x48 (unsigned).
  The return at 0x358c has v0 = ret(kmem_free).
- `odsy_mm_cores_new` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x3594 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x3594-0x3980 (1004 bytes).
  It occupies 1004 bytes.
  The `ld` at 0x35dc loads 8 bytes from a1 (arg1 at entry) +0x8.
  The `ld` at 0x35e4 loads 8 bytes from [a1+8]:8 +0x8.
  The `ld` at 0x35f0 loads 8 bytes from [[a1+8]:8+8]:8 +0x0.
  The `sw` at 0x3620 stores 4 bytes to ret(kmem_alloc) +0x40.
  2 such `sw` accesses store 4 bytes to ret(kmem_alloc) +0x18, including `sw` at 0x3628, `sw` at 0x36b0.
  2 such `sw` accesses store 4 bytes to ret(kmem_alloc) +0x34, including `sw` at 0x362c, `sw` at 0x3690.
  2 such `sw` accesses store 4 bytes to ret(kmem_alloc) +0x30, including `sw` at 0x3630, `sw` at 0x3674.
  The `sd` at 0x3644 stores 8 bytes to ret(kmem_alloc) +0x38.
  The `sw` at 0x3648 stores 4 bytes to ret(kmem_alloc) +0x4.
  The `sd` at 0x364c stores 8 bytes to ret(kmem_alloc) +0x10.
  2 such `sd` accesses store 8 bytes to ret(kmem_alloc) +0x8, including `sd` at 0x3650, `sd` at 0x371c.
  The `sw` at 0x3658 stores 4 bytes to ret(kmem_alloc) +0x0.
  2 such `lw` accesses load 4 bytes from ret(kmem_alloc) +0x30, including `lw` at 0x36a8, `lw` at 0x3838.
  The `sd` at 0x3734 stores 8 bytes to ret(kmem_alloc) +0x18.
  3 such `ld` accesses load 8 bytes from ret(kmem_alloc) +0x8, including `ld` at 0x3774, `ld` at 0x391c, `ld` at 0x3940.
  The `sw` at 0x3790 stores 4 bytes to ?.
  The `lw` at 0x379c loads 4 bytes from a6 (arg6 at entry) +0x0.
  The `sh` at 0x37a0 stores 2 bytes to a6 (arg6 at entry) +0x20.
  The `sw` at 0x37a8 stores 4 bytes to a6 (arg6 at entry) +0x0.
  The `ld` at 0x37ac loads 8 bytes from ret(kmem_alloc) +0x10.
  The `sd` at 0x37b0 stores 8 bytes to a6 (arg6 at entry) +0x18.
  The `lw` at 0x3820 loads 4 bytes from ret(kmem_alloc) +0x18.
  The `ld` at 0x3824 loads 8 bytes from [[a1+8]:8+8]:8 +0x8.
  The `sd` at 0x3830 stores 8 bytes to ret(kmem_alloc) +0x20.
  The `sh` at 0x3834 stores 2 bytes to ([[[a1+8]:8+8]:8+8]:8 + ([ret(kmem_alloc)+24] + [ret(kmem_alloc)+24])) +0x0.
  The `ld` at 0x383c loads 8 bytes from ?.
  The `sd` at 0x3854 stores 8 bytes to ret(kmem_alloc) +0x28.
  3 such `sb` accesses store 1 byte to ?, including `sb` at 0x38d4, `sb` at 0x3930, `sb` at 0x3960.
  The `jal` at 0x35f8 calls kmem_alloc with a0=0x48, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3660 calls OdsyAllocCSetId with a0=a5 at entry (arg5), a1=ret(kmem_alloc), a2=a2 at entry (arg2), a3=a4 at entry (arg4), a4=-0x1.
  The `jal` at 0x367c calls OdsyAllocCSetId with a0=a4 at entry (arg4), a1=ret(kmem_alloc), a2=?, a3=?, a7=-0x1.
  The `jal` at 0x3694 calls OdsyAlloc32kSlot with a0=[[[a1+8]:8+8]:8]:8+6112, a1=?, a2=?, a3=?.
  The `jal` at 0x36c4 calls OdsyLookupCSetId with a0=a0+224, a1=?, a2=?, a3=?, a7=-0x1.
  The `jal` at 0x36ec calls kmem_alloc with a0=0x20, a1=0x0, a2=ret(OdsyLookupCSetId), a3=?.
  The `jal` at 0x3700 calls bzero with a0=ret(kmem_alloc), a1=0x20, a2=?, a3=?.
  The `jal` at 0x370c calls kmem_alloc with a0=0x4000, a1=0x0, a2=?, a3=?.
  The `jal` at 0x3730 calls OdsyAllocSpecificCSetId with a0=a0+224, a1=?, a2=ret(kmem_alloc), a3=?.
  The `jal` at 0x3754 calls MapKernelRegionIntoUserSpace with a0=ret(kmem_alloc), a1=0x3, a2=ret(kmem_alloc), a3=?.
  The `jal` at 0x3804 calls odsy_mm_cores_destroy with a0=ret(kmem_alloc), a1=?, a2=?, a3=?.
  The `jal` at 0x3850 calls bzero with a0=?, a1=0x10, a2=?, a3=?, a4=([[[a1+8]:8+8]:8+8]:8 + ([ret(kmem_alloc)+24] + [ret(kmem_alloc)+24])), a5=([ret(kmem_alloc)+24] + [ret(kmem_alloc)+24]).
  The `jal` at 0x386c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=ret(OdsyLookupCSetId), a3=?.
  The `jal` at 0x3890 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x38b0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x38dc calls kmem_free with a0=ret(kmem_alloc), a1=0x20, a2=?, a3=0x25.
  The `jal` at 0x38fc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=ret(kmem_alloc), a3=?.
  The `jal` at 0x3908 calls OdsyDeallocCSetId with a0=a0+224, a1=?, a2=?, a3=?.
  The `jal` at 0x393c calls kmem_free with a0=[ret(kmem_alloc)+8]:8, a1=0x4000, a2=?, a3=0x27.
  The `jal` at 0x3968 calls kmem_free with a0=ret(kmem_alloc), a1=0x20, a2=?, a3=0x29.
  The `bne` branch at 0x360c targets 0x3620, is taken when s0(=ret(kmem_alloc)) != 0, and falls through when s0(=ret(kmem_alloc)) == 0.
  The `beq` branch at 0x366c targets 0x3804, is taken when v0(=ret(OdsyAllocCSetId)) == a7(=-0x1), and falls through when v0(=ret(OdsyAllocCSetId)) != a7(=-0x1).
  The `beq` branch at 0x3688 targets 0x3800, is taken when v0(=ret(OdsyAllocCSetId)) == t0(=-0x1), and falls through when v0(=ret(OdsyAllocCSetId)) != t0(=-0x1).
  The `beq` branch at 0x36a0 targets 0x3804, is taken when v0(=ret(OdsyAlloc32kSlot)) == a7(=-0x1), and falls through when v0(=ret(OdsyAlloc32kSlot)) != a7(=-0x1).
  The `bne` branch at 0x36d0 targets 0x37d4, is taken when v0(=ret(OdsyLookupCSetId)) != 0, and falls through when v0(=ret(OdsyLookupCSetId)) == 0.
  The `beq` branch at 0x36e0 targets 0x3864, is taken when a7(?) >= 0x20 (unsigned), and falls through when a7(?) < 0x20 (unsigned).
  The `beq` branch at 0x36f4 targets 0x3884, is taken when v0(=ret(kmem_alloc)) == 0, and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` branch at 0x3718 targets 0x38a8, is taken when v0(=ret(kmem_alloc)) == 0, and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` branch at 0x3748 targets 0x37bc, is taken when v0(=ret(OdsyAllocSpecificCSetId)) == at(=-0x1), and falls through when v0(=ret(OdsyAllocSpecificCSetId)) != at(=-0x1).
  The `bne` branch at 0x375c targets 0x38f4, is taken when v0(=ret(MapKernelRegionIntoUserSpace)) != 0, and falls through when v0(=ret(MapKernelRegionIntoUserSpace)) == 0.
  The `bne` branch at 0x3768 targets 0x3798, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `bne` branch at 0x378c targets 0x3774, is taken when v0(?) < 0x2 (signed), and falls through when v0(?) >= 0x2 (signed).
  The `bne` branch at 0x37dc targets 0x3800, is taken when t0(=one of 0x0, 0x1) != 0, and falls through when t0(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0x37e4 targets 0x3804, is taken when at(=one of 0x0, 0x1) != 0, and falls through when at(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0x37ec targets 0x3800, is taken when v1(=one of 0x0, 0x1) != 0, and falls through when v1(=one of 0x0, 0x1) == 0.
  The `bne` branch at 0x37f4 targets 0x3800, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x37fc targets 0x3818, is taken when t0(=one of 0x0, 0x1) == 0, and falls through when t0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x3810 targets 0x3618 and is always taken.
  The `beq` branch at 0x385c targets 0x3618 and is always taken.
  The `beq` branch at 0x387c targets 0x37cc and is always taken.
  The `beq` branch at 0x38a0 targets 0x37c4 and is always taken.
  The `bne` branch at 0x38d0 targets 0x38c0, is taken when a1(?) < 0x20 (unsigned), and falls through when a1(?) >= 0x20 (unsigned).
  The `beq` branch at 0x38ec targets 0x37bc and is always taken.
  The `bne` branch at 0x392c targets 0x3918, is taken when a1(?) < 0x4000 (signed), and falls through when a1(?) >= 0x4000 (signed).
  The `bne` branch at 0x395c targets 0x394c, is taken when a1(?) < 0x20 (unsigned), and falls through when a1(?) >= 0x20 (unsigned).
  The `beq` branch at 0x3978 targets 0x37b4 and is always taken.
  The return at 0x3618 has v0 = one of 0x0, ret(kmem_alloc).
- `SetupDMAParams` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x3980 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x3980-0x3b84 (516 bytes).
  It occupies 516 bytes.
  The `lw` at 0x39ac loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0x39b0 loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `sw` at 0x39cc stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `lw` at 0x39d0 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `lw` at 0x39d4 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0x39e8 stores 4 bytes to a1 (arg1 at entry) +0x8.
  The `lw` at 0x39ec loads 4 bytes from a1 (arg1 at entry) +0xc.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x39f0, `lw` at 0x3ae8.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0xc, including `sw` at 0x3a04, `sw` at 0x3a18.
  The `lw` at 0x3a08 loads 4 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x3a1c loads 4 bytes from a1 (arg1 at entry) +0x4.
  The `lw` at 0x3a20 loads 4 bytes from a0 (arg0 at entry) +0x14.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x4, including `sw` at 0x3a30, `sw` at 0x3a44.
  The `lw` at 0x3a34 loads 4 bytes from a0 (arg0 at entry) +0x18.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x11, including `lbu` at 0x3a48, `lbu` at 0x3aec.
  The `lw` at 0x3a94 loads 4 bytes from a1 (arg1 at entry) +0x10.
  The `lw` at 0x3ac4 loads 4 bytes from ?.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x10, including `sw` at 0x3ad4, `sw` at 0x3ae4.
  The `lw` at 0x3af0 loads 4 bytes from a1 (arg1 at entry) +0x1c.
  The `lw` at 0x3b34 loads 4 bytes from a1 (arg1 at entry) +0x18.
  The `sw` at 0x3b48 stores 4 bytes to a1 (arg1 at entry) +0x1c.
  The `sw` at 0x3b54 stores 4 bytes to a1 (arg1 at entry) +0x18.
  The `jal` at 0x39a4 calls bzero with a0=a1 at entry (arg1), a1=0x20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x3a64 targets 0x3b6c, is taken when a0(=[a0+17]:1) == at(=0x10), and falls through when a0(=[a0+17]:1) != at(=0x10).
  The `beq` branch at 0x3a70 targets 0x3b74, is taken when a0(=[a0+17]:1) == at(=0x8), and falls through when a0(=[a0+17]:1) != at(=0x8).
  The `beq` branch at 0x3a78 targets 0x3b7c, is taken when a0(=[a0+17]:1) == v0(=0x4), and falls through when a0(=[a0+17]:1) != v0(=0x4).
  The `beq` branch at 0x3a80 targets 0x3b64, is taken when a0(=[a0+17]:1) == v1(=0x2), and falls through when a0(=[a0+17]:1) != v1(=0x2).
  The `beq` branch at 0x3b64 targets 0x3a88 and is always taken.
  The `beq` branch at 0x3b6c targets 0x3a88 and is always taken.
  The `beq` branch at 0x3b74 targets 0x3a88 and is always taken.
  The `beq` branch at 0x3b7c targets 0x3a88 and is always taken.
  The return at 0x3b5c has v0 = ((a2 | 0x32) << 0x18).
- `mm_okay_to_swap_in` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x3b84 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x3b84-0x3cf0 (364 bytes).
  It occupies 364 bytes.
  The `lw` at 0x3b90 loads 4 bytes from a0 (arg0 at entry) +0x38.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x3b98, `ld` at 0x3c94.
  2 such `ld` accesses load 8 bytes from [a0+8]:8 +0x8, including `ld` at 0x3ba0, `ld` at 0x3ca8.
  The `lw` at 0x3ba4 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `ld` at 0x3ba8 loads 8 bytes from [[a0+8]:8+8]:8 +0x8.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x3c34, `ld` at 0x3c90, `ld` at 0x3ca4.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x3c48, `lw` at 0x3c58, `lw` at 0x3c5c.
  The `lh` at 0x3c88 loads 2 bytes from ?.
  The `lh` at 0x3c8c loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x3c9c loads 4 bytes from [a0+8]:8 +0x0.
  The `lw` at 0x3cbc loads 4 bytes from [[a0+8]:8+8]:8 +0x14.
  The `jal` at 0x3bbc calls OdsyInitCSetCursor with a0=[[[a0+8]:8+8]:8+8]:8+1488, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3bc4 calls OdsyNextCSetElem with a0=[[[a0+8]:8+8]:8+8]:8+1488, a1=?, a2=?, a3=?.
  The `jal` at 0x3bdc calls OdsyNextCSetElem with a0=[[[a0+8]:8+8]:8+8]:8+1488, a1=?, a2=?, a3=?.
  The `jal` at 0x3bec calls OdsyInitCSetCursor with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x3bf4 calls OdsyNextCSetElem with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x3c0c calls OdsyNextCSetElem with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x3cb8 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=[[[a0+8]:8+8]:8+20], a3=[[a0+8]:8], a4=[a0]:2.
  The `beq` branch at 0x3bcc targets 0x3ccc, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x3bd4 targets 0x3be8 and is always taken.
  The `beq` branch at 0x3be4 targets 0x3ccc, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x3bfc targets 0x3bdc, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x3c04 targets 0x3c1c and is always taken.
  The `beq` branch at 0x3c14 targets 0x3bdc, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x3c1c targets 0x3c2c and is always taken.
  The `beq` branch at 0x3c28 targets 0x3c0c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x3c38 targets 0x3c24, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x3c40 targets 0x3c28, is taken when t2(?) == s1(=a0), and falls through when t2(?) != s1(=a0).
  The `beq` branch at 0x3c50 targets 0x3c28, is taken when (at(?) & 0x1) == 0, and falls through when (at(?) & 0x1) != 0.
  The `bne` branch at 0x3c68 targets 0x3c74, is taken when a4(?) < s0(=[a0+56]) (signed), and falls through when a4(?) >= s0(=[a0+56]) (signed).
  The `bne` branch at 0x3c70 targets 0x3c88, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x3c78 targets 0x3c24, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x3c80 targets 0x3c28, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x3cc4 targets 0x3cd4 and is always taken.
  The return at 0x3ce8 has v0 = one of 0x0, 0x1.
- `odsy_mm_check_for_mutations` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x3cf0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x3cf0-0x3df4 (260 bytes).
  It occupies 260 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x3d90, `ld` at 0x3dac.
  The `lw` at 0x3d9c loads 4 bytes from ?.
  The `jal` at 0x3d08 calls OdsyInitCSetCursor with a0=a0+1488, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3d10 calls OdsyNextCSetElem with a0=a0+1488, a1=?, a2=?, a3=?.
  The `jal` at 0x3d38 calls OdsyNextCSetElem with a0=a0+1488, a1=?, a2=?, a3=?.
  The `jal` at 0x3d48 calls OdsyInitCSetCursor with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x3d50 calls OdsyNextCSetElem with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x3d68 calls OdsyNextCSetElem with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x3dc0 calls odsy_mm_obj_xfr_backing_store with a0=?, a1=sp-80, a2=0x1, a3=?.
  The `beq` branch at 0x3d20 targets 0x3dd0, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x3d30 targets 0x3d44 and is always taken.
  The `beq` branch at 0x3d40 targets 0x3dd0, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x3d58 targets 0x3d38, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x3d60 targets 0x3d78 and is always taken.
  The `beq` branch at 0x3d70 targets 0x3d38, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x3d78 targets 0x3d88 and is always taken.
  The `beq` branch at 0x3d84 targets 0x3d68, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x3d94 targets 0x3d80, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x3da4 targets 0x3d84, is taken when (a1(?) & 0x1) == 0, and falls through when (a1(?) & 0x1) != 0.
  The `beq` branch at 0x3db0 targets 0x3d84, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x3dc8 targets 0x3d80 and is always taken.
  The return at 0x3dec has v0 = one of 0x0, ?.
- `odsy_mm_jettison_freerun_backing_store` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x3df4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x3df4-0x3f30 (316 bytes).
  It occupies 316 bytes.
  7 such `ld` accesses load 8 bytes from ?, including `ld` at 0x3e90, `ld` at 0x3ebc, `ld` at 0x3ed8.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x3e94, `lw` at 0x3ec8, `lw` at 0x3f08.
  The `ld` at 0x3e98 loads 8 bytes from a0 (arg0 at entry) +0x6b0.
  The `sd` at 0x3ea0 stores 8 bytes to a0 (arg0 at entry) +0x6b0.
  The `sw` at 0x3ea4 stores 4 bytes to ?.
  The `sd` at 0x3ea8 stores 8 bytes to ?.
  The `jal` at 0x3e0c calls OdsyInitCSetCursor with a0=a0+1488, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3e14 calls OdsyNextCSetElem with a0=a0+1488, a1=?, a2=?, a3=?.
  The `jal` at 0x3e44 calls OdsyNextCSetElem with a0=a0+1488, a1=?, a2=?, a3=?.
  The `jal` at 0x3e54 calls OdsyInitCSetCursor with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x3e5c calls OdsyNextCSetElem with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x3e74 calls OdsyNextCSetElem with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=?.
  The `jal` at 0x3e8c calls kmem_free with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3efc calls odsyDMAWait with a0=?, a1=0x0, a2=0x1, a3=?.
  The `beq` branch at 0x3e28 targets 0x3f0c, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x3e3c targets 0x3e50 and is always taken.
  The `beq` branch at 0x3e4c targets 0x3f0c, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x3e64 targets 0x3e44, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x3e6c targets 0x3e84 and is always taken.
  The `beq` branch at 0x3e7c targets 0x3e44, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x3e84 targets 0x3eb4 and is always taken.
  The `beq` branch at 0x3eb0 targets 0x3e74, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x3ec0 targets 0x3eac, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `beq` branch at 0x3ed0 targets 0x3eb0, is taken when (at(?) & 0x1) == 0, and falls through when (at(?) & 0x1) != 0.
  The `beq` branch at 0x3edc targets 0x3eb0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x3f04 targets 0x3e8c and is always taken.
  The return at 0x3f28 has v0 = ret(OdsyNextCSetElem).
- `odsy_mm_B_warn` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x3f30 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x3f30-0x3f70 (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x3f30 loads 4 bytes from a0 (arg0 at entry) +0x6bc.
  The `sw` at 0x3f64 stores 4 bytes to a0 (arg0 at entry) +0x6bc.
  The `jal` at 0x3f54 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x3f38 targets 0x3f48, is taken when at(=[a0+1724]) == 0, and falls through when at(=[a0+1724]) != 0.
  The `beq` branch at 0x3f68 targets 0x3f40 and is always taken.
  The return at 0x3f40 has v0 = one of ?, ret(cmn_err).
- `odsy_mm_B_okay` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x3f70 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x3f70-0x3f78 (8 bytes).
  It occupies 8 bytes.
  The return at 0x3f70 has v0 = ?.
- `odsy_mm_obj_xfr_backing_store` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x3f78 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x3f78-0x44b0 (1336 bytes).
  It occupies 1336 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x28, including `lw` at 0x3f80, `lw` at 0x4160, `lw` at 0x4228.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0x3f88, `ld` at 0x41d0, `ld` at 0x4404.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x48, including `lw` at 0x3f90, `lw` at 0x41d4.
  3 such `ld` accesses load 8 bytes from [a0+8]:8 +0x8, including `ld` at 0x3f9c, `ld` at 0x41d8, `ld` at 0x4408.
  3 such `ld` accesses load 8 bytes from [[a0+8]:8+8]:8 +0x8, including `ld` at 0x3fa4, `ld` at 0x41e0, `ld` at 0x440c.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x50, including `ld` at 0x3fa8, `ld` at 0x41e4, `ld` at 0x4424.
  3 such `ld` accesses load 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x0, including `ld` at 0x3fac, `ld` at 0x41ec, `ld` at 0x4420.
  The `ld` at 0x3fc0 loads 8 bytes from [[[[a0+8]:8+8]:8+8]:8]:8 +0x2e0.
  3 such `ld` accesses load 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x6b0, including `ld` at 0x3fd8, `ld` at 0x4010, `ld` at 0x4430.
  2 such `ld` accesses load 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x6a0, including `ld` at 0x3fdc, `ld` at 0x4020.
  3 such `lw` accesses load 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x6b8, including `lw` at 0x3ff0, `lw` at 0x400c, `lw` at 0x4290.
  2 such `sw` accesses store 4 bytes to [[[a0+8]:8+8]:8+8]:8 +0x6b8, including `sw` at 0x4000, `sw` at 0x4454.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x50, including `sd` at 0x4074, `sd` at 0x445c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x58, including `sw` at 0x4080, `sw` at 0x4460.
  2 such `sd` accesses store 8 bytes to [[[a0+8]:8+8]:8+8]:8 +0x6b0, including `sd` at 0x4088, `sd` at 0x4444.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4c, including `sw` at 0x40dc, `sw` at 0x42a4, `sw` at 0x4464.
  54 such `sw` accesses store 4 bytes to table(0x110000) +0x0, including `sw` at 0x40e0, `sw` at 0x40e8, `sw` at 0x40f0.
  The `lbu` at 0x4184 loads 1 byte from a0 (arg0 at entry) +0x11.
  The `lw` at 0x4188 loads 4 bytes from a0 (arg0 at entry) +0x30.
  The `lw` at 0x4194 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0x41ac loads 4 bytes from a0 (arg0 at entry) +0x38.
  The `lw` at 0x427c loads 4 bytes from a0 (arg0 at entry) +0x68.
  The `sw` at 0x4288 stores 4 bytes to a0 (arg0 at entry) +0x68.
  19 such `sw` accesses store 4 bytes to ?, including `sw` at 0x42bc, `sw` at 0x42c8, `sw` at 0x42d0.
  The `ld` at 0x4434 loads 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x6a8.
  The `jal` at 0x4004 calls odsy_mm_jettison_freerun_backing_store with a0=[[[a0+8]:8+8]:8+8]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4044 calls odsy_mm_B_warn with a0=[[[a0+8]:8+8]:8+8]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x4068 calls kmem_alloc with a0=?, a1=0x2000, a2=?, a3=?.
  The `jal` at 0x4078 calls odsy_mm_B_okay with a0=[[[a0+8]:8+8]:8+8]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x4094 calls SetupDMAParams with a0=a0 at entry (arg0), a1=sp-176, a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x4218 calls odsyDMAOp with a0=0x0, a1=[[[[a0+8]:8+8]:8+8]:8]:8, a2=0x0, a3=?, a4=[a0+72], a5=a1 at entry (arg1), a6=sp-176, a7=a0+96.
  The `jal` at 0x433c calls odsy_mm_B_warn with a0=[[[a0+8]:8+8]:8+8]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x441c calls odsyDMAWait with a0=[[[[a0+8]:8+8]:8+8]:8]:8, a1=0x0, a2=0x1, a3=a0+96, a4=[a0+104]+1.
  The `jal` at 0x4428 calls kmem_free with a0=[a0+80]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x4478 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x3fc8 targets 0x408c, is taken when at(=[a0+80]:8) != 0, and falls through when at(=[a0+80]:8) == 0.
  The `beq` branch at 0x3fd0 targets 0x43e8, is taken when s2(=a2) == 0, and falls through when s2(=a2) != 0.
  The `beq` branch at 0x3fe8 targets 0x4060, is taken when v1(=[[[[a0+8]:8+8]:8+8]:8+1696]:8) >= v0(?) (signed), and falls through when v1(=[[[[a0+8]:8+8]:8+8]:8+1696]:8) < v0(?) (signed).
  The `beq` branch at 0x3ff4 targets 0x4020, is taken when v1(=[[[[a0+8]:8+8]:8+8]:8+1720]) == 0, and falls through when v1(=[[[[a0+8]:8+8]:8+8]:8+1720]) != 0.
  The `bne` branch at 0x4018 targets 0x405c, is taken when a3(=[[[[a0+8]:8+8]:8+8]:8+1720]) != 0, and falls through when a3(=[[[[a0+8]:8+8]:8+8]:8+1720]) == 0.
  The `beq` branch at 0x402c targets 0x405c, is taken when v1(=[[[[a0+8]:8+8]:8+8]:8+1696]:8) >= v0(?) (signed), and falls through when v1(=[[[[a0+8]:8+8]:8+8]:8+1696]:8) < v0(?) (signed).
  The `beq` branch at 0x4054 targets 0x426c and is always taken.
  The `beq` branch at 0x4070 targets 0x432c, is taken when v0(=ret(kmem_alloc)) == 0, and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` branch at 0x40c4 targets 0x4354, is taken when s2(=a2) == 0, and falls through when s2(=a2) != 0.
  The `beq` branch at 0x4178 targets 0x4238, is taken when v1(=[a0+40]) == 0, and falls through when v1(=[a0+40]) != 0.
  The `bne` branch at 0x4220 targets 0x4470, is taken when v0(=ret(odsyDMAOp)) != 0, and falls through when v0(=ret(odsyDMAOp)) == 0.
  The `bne` branch at 0x4230 targets 0x4184, is taken when s4(?) < at(=[a0+40]) (unsigned), and falls through when s4(?) >= at(=[a0+40]) (unsigned).
  The `beq` branch at 0x4254 targets 0x4274, is taken when v1(=a2) == 0, and falls through when v1(=a2) != 0.
  The `beq` branch at 0x429c targets 0x4404, is taken when a3(=[[[[a0+8]:8+8]:8+8]:8+1720]) == 0, and falls through when a3(=[[[[a0+8]:8+8]:8+8]:8+1720]) != 0.
  The `beq` branch at 0x4324 targets 0x425c and is always taken.
  The `beq` branch at 0x434c targets 0x426c and is always taken.
  The `beq` branch at 0x43e0 targets 0x415c and is always taken.
  The `beq` branch at 0x43fc targets 0x426c and is always taken.
  The `bne` branch at 0x4448 targets 0x445c, is taken when a3(=[[[[a0+8]:8+8]:8+8]:8+1704]:8) < a4(?) (signed), and falls through when a3(=[[[[a0+8]:8+8]:8+8]:8+1704]:8) >= a4(?) (signed).
  The `beq` branch at 0x4468 targets 0x42b0 and is always taken.
  The `beq` branch at 0x44a8 targets 0x426c and is always taken.
  The return at 0x426c has v0 = one of 0x0, 0xc, 0x16.
- `odsy_mm_reserve` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x44b0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x44b0-0x4680 (464 bytes).
  It occupies 464 bytes.
  The `ld` at 0x44b4 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x44bc loads 8 bytes from [a0+8]:8 +0x8.
  The `ld` at 0x44c0 loads 8 bytes from [[a0+8]:8+8]:8 +0x8.
  2 such `lw` accesses load 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x69c, including `lw` at 0x44c4, `lw` at 0x4520.
  2 such `sw` accesses store 4 bytes to [[[a0+8]:8+8]:8+8]:8 +0x69c, including `sw` at 0x44e4, `sw` at 0x4528.
  The `lbu` at 0x44e8 loads 1 byte from a0 (arg0 at entry) +0x10.
  The `lw` at 0x4570 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `sw` at 0x4584 stores 4 bytes to a0 (arg0 at entry) +0x40.
  3 such `ld` accesses load 8 bytes from ret(OdsyNextCSetElem) +0x28, including `ld` at 0x45d0, `ld` at 0x45dc, `ld` at 0x45e8.
  2 such `sh` accesses store 2 bytes to [ret(OdsyNextCSetElem)+40]:8 +0x2, including `sh` at 0x45d4, `sh` at 0x45ec.
  The `sh` at 0x45e0 stores 2 bytes to [ret(OdsyNextCSetElem)+40]:8 +0x0.
  The `sw` at 0x45fc stores 4 bytes to ret(OdsyNextCSetElem) +0x40.
  The `jal` at 0x454c calls odsy_mm_reserve_pbuffer with a0=a0 at entry (arg0), a1=0x4, a2=0x6, a3=?.
  The `jal` at 0x4580 calls OdsyInitCSetCursor with a0=[a0+8]:8+160, a1=?, a2=?, a3=?.
  The `jal` at 0x4588 calls OdsyNextCSetElem with a0=[a0+8]:8+160, a1=?, a2=?, a3=?.
  The `jal` at 0x45a4 calls OdsyNextCSetElem with a0=[a0+8]:8+160, a1=?, a2=?, a3=?.
  The `jal` at 0x45b4 calls OdsyInitCSetCursor with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=?.
  The `jal` at 0x45bc calls OdsyNextCSetElem with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=?.
  The `jal` at 0x45f8 calls OdsyNextCSetElem with a0=ret(OdsyNextCSetElem), a1=[ret(OdsyNextCSetElem)+40]:8, a2=[ret(OdsyNextCSetElem)+40]:8, a3=[ret(OdsyNextCSetElem)+40]:8.
  The `jal` at 0x4628 calls mm_init_freespace with a0=[[[a0+8]:8+8]:8+8]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4640 calls odsy_mm_reserve_texture with a0=a0 at entry (arg0), a1=0x4, a2=0x6, a3=?.
  The `jal` at 0x4664 calls odsy_mm_reserve_scratch with a0=a0 at entry (arg0), a1=0x4, a2=0x6, a3=?.
  The `beq` branch at 0x44e0 targets 0x4624, is taken when s2(=0x1) == at(=[[[[a0+8]:8+8]:8+8]:8+1692]+1), and falls through when s2(=0x1) != at(=[[[[a0+8]:8+8]:8+8]:8+1692]+1).
  The `beq` branch at 0x44f4 targets 0x4544, is taken when v0(=[a0+16]:1) == v1(=0x3), and falls through when v0(=[a0+16]:1) != v1(=0x3).
  The `beq` branch at 0x44fc targets 0x4638, is taken when v0(=[a0+16]:1) == a1(=0x4), and falls through when v0(=[a0+16]:1) != a1(=0x4).
  The `beq` branch at 0x4504 targets 0x465c, is taken when v0(=[a0+16]:1) == a2(=0x6), and falls through when v0(=[a0+16]:1) != a2(=0x6).
  The `beq` branch at 0x4514 targets 0x4568, is taken when s0(=one of 0x0, 0xc) == 0, and falls through when s0(=one of 0x0, 0xc) != 0.
  The `bne` branch at 0x4560 targets 0x451c, is taken when s0(=one of 0x0, 0xc) != 0, and falls through when s0(=one of 0x0, 0xc) == 0.
  The `beq` branch at 0x4594 targets 0x4614, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x459c targets 0x45b4 and is always taken.
  The `beq` branch at 0x45ac targets 0x4610, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x45c4 targets 0x45a4, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` branch at 0x4600 targets 0x45cc, is taken when v0(=ret(OdsyNextCSetElem)) != 0, and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `beq` branch at 0x4608 targets 0x45a4 and is always taken.
  The `beq` branch at 0x461c targets 0x4538 and is always taken.
  The `beq` branch at 0x4630 targets 0x44e8 and is always taken.
  The `beq` branch at 0x4654 targets 0x4514 and is always taken.
  The `beq` branch at 0x4678 targets 0x4514 and is always taken.
  The return at 0x453c has v0 = one of 0x0, 0xc.
- `odsy_mm_release` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x4680 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x4680-0x471c (156 bytes).
  It occupies 156 bytes.
  The `lbu` at 0x4680 loads 1 byte from a0 (arg0 at entry) +0x10.
  The `lw` at 0x46dc loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `ld` at 0x46e4 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0x46ec stores 4 bytes to a0 (arg0 at entry) +0x40.
  The `ld` at 0x46f0 loads 8 bytes from [a0+8]:8 +0x8.
  The `ld` at 0x46f4 loads 8 bytes from [[a0+8]:8+8]:8 +0x8.
  The `lw` at 0x46f8 loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x69c.
  The `sw` at 0x4704 stores 4 bytes to [[[a0+8]:8+8]:8+8]:8 +0x69c.
  The `jal` at 0x46b8 calls odsy_mm_release_pbuffer with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+16]:1, a3=a3 at entry (arg3).
  The `jal` at 0x46cc calls odsy_mm_release_scratch with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+16]:1, a3=a3 at entry (arg3).
  The `jal` at 0x470c calls odsy_mm_release_texture with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+16]:1, a3=a3 at entry (arg3).
  The `beq` branch at 0x4694 targets 0x46b4, is taken when a2(=[a0+16]:1) == at(=0x3), and falls through when a2(=[a0+16]:1) != at(=0x3).
  The `beq` branch at 0x469c targets 0x4708, is taken when a2(=[a0+16]:1) == v0(=0x4), and falls through when a2(=[a0+16]:1) != v0(=0x4).
  The `beq` branch at 0x46a4 targets 0x46c8, is taken when a2(=[a0+16]:1) == v1(=0x6), and falls through when a2(=[a0+16]:1) != v1(=0x6).
  The `beq` branch at 0x46c0 targets 0x46d8 and is always taken.
  The `beq` branch at 0x4700 targets 0x46ac and is always taken.
  The `beq` branch at 0x4714 targets 0x46d8 and is always taken.
  The return at 0x46ac has v0 = one of 0x4, ?.
- `odsy_mm_reserve_texture` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x471c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x471c-0x4878 (348 bytes).
  It occupies 348 bytes.
  The `ld` at 0x4728 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x4730 loads 8 bytes from [a0+8]:8 +0x8.
  The `lw` at 0x4734 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `ld` at 0x4738 loads 8 bytes from [[a0+8]:8+8]:8 +0x90.
  The `lw` at 0x473c loads 4 bytes from [a0+8]:8 +0xd0.
  The `ld` at 0x4754 loads 8 bytes from [[a0+8]:8+8]:8 +0x8.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4758, `lw` at 0x478c.
  The `ld` at 0x475c loads 8 bytes from ?.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4774, `sw` at 0x486c.
  The `lw` at 0x47b8 loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x694.
  The `lw` at 0x47bc loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x690.
  The `lw` at 0x47d0 loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x684.
  The `lw` at 0x47d4 loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x680.
  The `lw` at 0x47f0 loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x698.
  The `sw` at 0x4814 stores 4 bytes to [[a0+8]:8+8]:8 +0x98.
  The `lw` at 0x4818 loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x688.
  The `sw` at 0x482c stores 4 bytes to [[[a0+8]:8+8]:8+8]:8 +0x688.
  The `sw` at 0x4838 stores 4 bytes to [a0+8]:8 +0xd0.
  The `jal` at 0x483c calls odsy_mm_sg_remove_texture_group_from_list with a0=[[a0+8]:8+8]:8, a1=[a0+8]:8, a2=?, a3=?, a4=([a0+60] + [[a0+8]:8+208]), a5=[[[a0+8]:8+8]:8+8]:8.
  The `jal` at 0x4848 calls odsy_mm_sg_insert_texture_group_into_list with a0=[[a0+8]:8+8]:8, a1=[a0+8]:8, a2=?, a3=?.
  The `beq` branch at 0x4750 targets 0x4870, is taken when a1(=[[[a0+8]:8+8]:8+144]:8) == 0, and falls through when a1(=[[[a0+8]:8+8]:8+144]:8) != 0.
  The `beq` branch at 0x4770 targets 0x4780, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x4778 targets 0x4758, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x4794 targets 0x4868, is taken when a3(?) < a4(=([a0+60] + [[a0+8]:8+208])) (signed), and falls through when a3(?) >= a4(=([a0+60] + [[a0+8]:8+208])) (signed).
  The `bne` branch at 0x47a4 targets 0x4788, is taken when v0(?) < 0x2 (signed), and falls through when v0(?) >= 0x2 (signed).
  The `beq` branch at 0x47b0 targets 0x4834, is taken when v0(?) == a3(=0x2), and falls through when v0(?) != a3(=0x2).
  The `beq` branch at 0x47c4 targets 0x47d0, is taken when a0(=[[[[a0+8]:8+8]:8+8]:8+1680]) >= v0(=[[[[a0+8]:8+8]:8+8]:8+1684]) (signed), and falls through when a0(=[[[[a0+8]:8+8]:8+8]:8+1680]) < v0(=[[[[a0+8]:8+8]:8+8]:8+1684]) (signed).
  The `beq` branch at 0x47dc targets 0x47e8, is taken when v0(=[[[[a0+8]:8+8]:8+8]:8+1664]) >= a6(=[[[[a0+8]:8+8]:8+8]:8+1668]) (signed), and falls through when v0(=[[[[a0+8]:8+8]:8+8]:8+1664]) < a6(=[[[[a0+8]:8+8]:8+8]:8+1668]) (signed).
  The `beq` branch at 0x4804 targets 0x4814, is taken when a2(=[[[[a0+8]:8+8]:8+8]:8+1688]) >= a3(?) (signed), and falls through when a2(=[[[[a0+8]:8+8]:8+8]:8+1688]) < a3(?) (signed).
  The `beq` branch at 0x480c targets 0x4858 and is always taken.
  The `beq` branch at 0x4820 targets 0x4834, is taken when a2(=[[[[a0+8]:8+8]:8+8]:8+1672]) >= v0(=table(0x0)) (signed), and falls through when a2(=[[[[a0+8]:8+8]:8+8]:8+1672]) < v0(=table(0x0)) (signed).
  The `beq` branch at 0x4868 targets 0x47ac and is always taken.
  The `beq` branch at 0x4870 targets 0x4780 and is always taken.
  The return at 0x4860 has v0 = one of 0x0, 0x1.
- `odsy_mm_release_texture` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x4878 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x4878-0x49a8 (304 bytes).
  It occupies 304 bytes.
  The `lw` at 0x4880 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `ld` at 0x4888 loads 8 bytes from a0 (arg0 at entry) +0x8.
  2 such `lw` accesses load 4 bytes from [a0+8]:8 +0xd0, including `lw` at 0x4890, `lw` at 0x48b4.
  The `ld` at 0x4894 loads 8 bytes from [a0+8]:8 +0x8.
  The `ld` at 0x48a0 loads 8 bytes from [[a0+8]:8+8]:8 +0x8.
  The `sw` at 0x48a8 stores 4 bytes to [a0+8]:8 +0xd0.
  The `ld` at 0x48c8 loads 8 bytes from [[a0+8]:8+8]:8 +0x90.
  The `lw` at 0x48d8 loads 4 bytes from [[a0+8]:8+8]:8 +0x98.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x48dc, `lw` at 0x4970.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x48e0, `ld` at 0x4974.
  The `sw` at 0x48fc stores 4 bytes to [[a0+8]:8+8]:8 +0x98.
  2 such `lw` accesses load 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x688, including `lw` at 0x4900, `lw` at 0x4990.
  2 such `sw` accesses store 4 bytes to [[[a0+8]:8+8]:8+8]:8 +0x688, including `sw` at 0x4910, `sw` at 0x49a4.
  2 such `ld` accesses load 8 bytes from ret(OdsyNextCSetElem) +0x90, including `ld` at 0x4930, `ld` at 0x4960.
  The `jal` at 0x48ac calls odsy_mm_sg_remove_texture_group_from_list with a0=[[a0+8]:8+8]:8, a1=[a0+8]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x48c0 calls odsy_mm_sg_insert_texture_group_into_list with a0=[[a0+8]:8+8]:8, a1=[a0+8]:8, a2=?, a3=?.
  The `jal` at 0x4914 calls OdsyInitCSetCursor with a0=[[[a0+8]:8+8]:8+8]:8+1488, a1=?, a2=?, a3=?, a4=[[[a0+8]:8+8]:8+152].
  The `jal` at 0x491c calls OdsyNextCSetElem with a0=[[[a0+8]:8+8]:8+8]:8+1488, a1=?, a2=?, a3=?.
  The `jal` at 0x4950 calls OdsyNextCSetElem with a0=[[[a0+8]:8+8]:8+8]:8+1488, a1=?, a2=?, a3=?.
  The `beq` branch at 0x48b8 targets 0x48c8, is taken when v1(=[[a0+8]:8+208]) == 0, and falls through when v1(=[[a0+8]:8+208]) != 0.
  The `beq` branch at 0x48d4 targets 0x48fc, is taken when a0(=[[[a0+8]:8+8]:8+144]:8) == 0, and falls through when a0(=[[[a0+8]:8+8]:8+144]:8) != 0.
  The `beq` branch at 0x48ec targets 0x48fc, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x48f4 targets 0x48dc, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bne` branch at 0x4904 targets 0x4934, is taken when at(=[[[[a0+8]:8+8]:8+8]:8+1672]) != a4(=[[[a0+8]:8+8]:8+152]), and falls through when at(=[[[[a0+8]:8+8]:8+8]:8+1672]) == a4(=[[[a0+8]:8+8]:8+152]).
  The `beq` branch at 0x4924 targets 0x4934, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x492c targets 0x4964 and is always taken.
  The `beq` branch at 0x4958 targets 0x4934, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x4968 targets 0x4990, is taken when a0(=[ret(OdsyNextCSetElem)+144]:8) == 0, and falls through when a0(=[ret(OdsyNextCSetElem)+144]:8) != 0.
  The `beq` branch at 0x4980 targets 0x4990, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x4988 targets 0x4970, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4998 targets 0x4950, is taken when a3(=[[[[a0+8]:8+8]:8+8]:8+1672]) >= a1(?) (signed), and falls through when a3(=[[[[a0+8]:8+8]:8+8]:8+1672]) < a1(?) (signed).
  The `beq` branch at 0x49a0 targets 0x4950 and is always taken.
  The return at 0x4948 has v0 = one of ?, ret(OdsyNextCSetElem).
- `odsy_mm_sg_remove_texture_group_from_list` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x49a8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x49a8-0x4a08 (96 bytes).
  It occupies 96 bytes.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0xe0, including `ld` at 0x49a8, `ld` at 0x49bc.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0xe8, including `ld` at 0x49b0, `ld` at 0x49b8.
  2 such `sd` accesses store 8 bytes to [a1+224]:8 +0xe8, including `sd` at 0x49b4, `sd` at 0x49e8.
  The `sd` at 0x49c8 stores 8 bytes to [a1+232]:8 +0xe0.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x90, including `sd` at 0x49f0, `sd` at 0x4a04.
  The `ld` at 0x49f4 loads 8 bytes from a0 (arg0 at entry) +0x90.
  The `beq` branch at 0x49ac targets 0x49d4, is taken when a4(=[a1+224]:8) == 0, and falls through when a4(=[a1+224]:8) != 0.
  The `beq` branch at 0x49c0 targets 0x49ec, is taken when a3(=[a1+232]:8) == 0, and falls through when a3(=[a1+232]:8) != 0.
  The `beq` branch at 0x49d4 targets 0x49f4, is taken when a3(=[a1+232]:8) == 0, and falls through when a3(=[a1+232]:8) != 0.
  The `beq` branch at 0x49dc targets 0x49c0, is taken when a4(=[a1+224]:8) == 0, and falls through when a4(=[a1+224]:8) != 0.
  The `beq` branch at 0x49e4 targets 0x49b8 and is always taken.
  The `bne` branch at 0x49f8 targets 0x49cc, is taken when at(=[a0+144]:8) != a1, and falls through when at(=[a0+144]:8) == a1.
  The return at 0x49cc has v0 = ?.
  The return at 0x49ec has v0 = ?.
  The return at 0x4a00 has v0 = ?.
- `odsy_mm_sg_insert_texture_group_into_list` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x4a08 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x4a08-0x4ac8 (192 bytes).
  It occupies 192 bytes.
  The `ld` at 0x4a08 loads 8 bytes from a0 (arg0 at entry) +0x90.
  The `lw` at 0x4a14 loads 4 bytes from [a0+144]:8 +0xd0.
  The `ld` at 0x4a18 loads 8 bytes from [a0+144]:8 +0xe0.
  The `lw` at 0x4a1c loads 4 bytes from a1 (arg1 at entry) +0xd0.
  The `lw` at 0x4a3c loads 4 bytes from ?.
  The `ld` at 0x4a50 loads 8 bytes from ?.
  5 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0xe0, including `sd` at 0x4a5c, `sd` at 0x4a84, `sd` at 0x4a8c.
  5 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0xe8, including `sd` at 0x4a60, `sd` at 0x4a7c, `sd` at 0x4a88.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x4a68, `sd` at 0x4a6c, `sd` at 0x4a90.
  3 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x90, including `sd` at 0x4a78, `sd` at 0x4a98, `sd` at 0x4ac4.
  The `sd` at 0x4aa4 stores 8 bytes to [a0+144]:8 +0xe0.
  The `sd` at 0x4abc stores 8 bytes to [a0+144]:8 +0xe8.
  The `beq` branch at 0x4a0c targets 0x4a78, is taken when a3(=[a0+144]:8) == 0, and falls through when a3(=[a0+144]:8) != 0.
  The `beq` branch at 0x4a20 targets 0x4a9c, is taken when a4(=[[a0+144]:8+224]:8) == 0, and falls through when a4(=[[a0+144]:8+224]:8) != 0.
  The `beq` branch at 0x4a28 targets 0x4a54, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x4a34 targets 0x4a54, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x4a44 targets 0x4a54, is taken when a6(=[a1+208]) >= at(?) (signed), and falls through when a6(=[a1+208]) < at(?) (signed).
  The `beq` branch at 0x4a4c targets 0x4a30 and is always taken.
  The `beq` branch at 0x4a54 targets 0x4a88, is taken when a3(?) == a5(?), and falls through when a3(?) != a5(?).
  The `beq` branch at 0x4a64 targets 0x4a70, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x4a9c targets 0x4ab4, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The return at 0x4a70 has v0 = ?.
  The return at 0x4a80 has v0 = ?.
  The return at 0x4a94 has v0 = ?.
  The return at 0x4aac has v0 = ?.
  The return at 0x4ac0 has v0 = ?.
- `odsy_mm_reserve_pbuffer` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x4ac8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x4ac8-0x4c10 (328 bytes).
  It occupies 328 bytes.
  The `ld` at 0x4ad0 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x4ad8 loads 8 bytes from [a0+8]:8 +0x8.
  The `ld` at 0x4adc loads 8 bytes from [[a0+8]:8+8]:8 +0x8.
  The `lw` at 0x4ae0 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `ld` at 0x4ae4 loads 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x678.
  The `lw` at 0x4ae8 loads 4 bytes from [a0+8]:8 +0xd0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x4b04, `lw` at 0x4b38.
  The `ld` at 0x4b08 loads 8 bytes from ?.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x4b20, `sw` at 0x4c04.
  The `lw` at 0x4b64 loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x694.
  The `lw` at 0x4b68 loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x690.
  The `lw` at 0x4b7c loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x68c.
  The `lw` at 0x4b80 loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x688.
  The `lw` at 0x4b9c loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x698.
  The `sw` at 0x4bc4 stores 4 bytes to [[[a0+8]:8+8]:8+8]:8 +0x680.
  The `sw` at 0x4bd0 stores 4 bytes to [a0+8]:8 +0xd0.
  The `jal` at 0x4bd4 calls odsy_mm_remove_pbuffer_group_from_list with a0=[[[a0+8]:8+8]:8+8]:8, a1=[a0+8]:8, a2=?, a3=?, a4=([a0+60] + [[a0+8]:8+208]).
  The `jal` at 0x4be0 calls odsy_mm_insert_pbuffer_group_into_list with a0=[[[a0+8]:8+8]:8+8]:8, a1=[a0+8]:8, a2=?, a3=?.
  The `beq` branch at 0x4afc targets 0x4c08, is taken when a1(=[[[[a0+8]:8+8]:8+8]:8+1656]:8) == 0, and falls through when a1(=[[[[a0+8]:8+8]:8+8]:8+1656]:8) != 0.
  The `beq` branch at 0x4b1c targets 0x4b2c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x4b24 targets 0x4b04, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x4b40 targets 0x4c00, is taken when a3(?) < a4(=([a0+60] + [[a0+8]:8+208])) (signed), and falls through when a3(?) >= a4(=([a0+60] + [[a0+8]:8+208])) (signed).
  The `bne` branch at 0x4b50 targets 0x4b34, is taken when v0(?) < 0x2 (signed), and falls through when v0(?) >= 0x2 (signed).
  The `beq` branch at 0x4b5c targets 0x4bcc, is taken when v0(?) == a3(=0x2), and falls through when v0(?) != a3(=0x2).
  The `beq` branch at 0x4b70 targets 0x4b7c, is taken when a0(=[[[[a0+8]:8+8]:8+8]:8+1680]) >= a1(=[[[[a0+8]:8+8]:8+8]:8+1684]) (signed), and falls through when a0(=[[[[a0+8]:8+8]:8+8]:8+1680]) < a1(=[[[[a0+8]:8+8]:8+8]:8+1684]) (signed).
  The `beq` branch at 0x4b8c targets 0x4b98, is taken when a1(=[[[[a0+8]:8+8]:8+8]:8+1672]) >= a5(=[[[[a0+8]:8+8]:8+8]:8+1676]) (signed), and falls through when a1(=[[[[a0+8]:8+8]:8+8]:8+1672]) < a5(=[[[[a0+8]:8+8]:8+8]:8+1676]) (signed).
  The `beq` branch at 0x4bb0 targets 0x4bc0, is taken when a2(=[[[[a0+8]:8+8]:8+8]:8+1688]) >= a3(?) (signed), and falls through when a2(=[[[[a0+8]:8+8]:8+8]:8+1688]) < a3(?) (signed).
  The `beq` branch at 0x4bb8 targets 0x4bf4 and is always taken.
  The `beq` branch at 0x4c00 targets 0x4b58 and is always taken.
  The `beq` branch at 0x4c08 targets 0x4b2c and is always taken.
  The return at 0x4bf8 has v0 = one of 0x0, 0x1.
- `odsy_mm_release_pbuffer` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x4c10 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x4c10-0x4ca8 (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0x4c10 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `ld` at 0x4c1c loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x4c24 loads 8 bytes from [a0+8]:8 +0x8.
  2 such `lw` accesses load 4 bytes from [a0+8]:8 +0xd0, including `lw` at 0x4c28, `lw` at 0x4c48.
  The `ld` at 0x4c2c loads 8 bytes from [[a0+8]:8+8]:8 +0x8.
  The `sw` at 0x4c3c stores 4 bytes to [a0+8]:8 +0xd0.
  The `ld` at 0x4c64 loads 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x678.
  The `lw` at 0x4c78 loads 4 bytes from ?.
  The `ld` at 0x4c7c loads 8 bytes from ?.
  The `sw` at 0x4c98 stores 4 bytes to [[[a0+8]:8+8]:8+8]:8 +0x680.
  The `jal` at 0x4c40 calls odsy_mm_remove_pbuffer_group_from_list with a0=[[[a0+8]:8+8]:8+8]:8, a1=[a0+8]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4c58 calls odsy_mm_insert_pbuffer_group_into_list with a0=[[[a0+8]:8+8]:8+8]:8, a1=[a0+8]:8, a2=?, a3=?.
  The `beq` branch at 0x4c4c targets 0x4c64, is taken when at(=[[a0+8]:8+208]) == 0, and falls through when at(=[[a0+8]:8+208]) != 0.
  The `beq` branch at 0x4c70 targets 0x4c98, is taken when a3(=[[[[a0+8]:8+8]:8+8]:8+1656]:8) == 0, and falls through when a3(=[[[[a0+8]:8+8]:8+8]:8+1656]:8) != 0.
  The `beq` branch at 0x4c88 targets 0x4c98, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x4c90 targets 0x4c78, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The return at 0x4ca0 has v0 = ?.
- `odsy_mm_remove_pbuffer_group_from_list` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x4ca8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x4ca8-0x4d08 (96 bytes).
  It occupies 96 bytes.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0xe0, including `ld` at 0x4ca8, `ld` at 0x4cbc.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0xe8, including `ld` at 0x4cb0, `ld` at 0x4cb8.
  2 such `sd` accesses store 8 bytes to [a1+224]:8 +0xe8, including `sd` at 0x4cb4, `sd` at 0x4ce8.
  The `sd` at 0x4cc8 stores 8 bytes to [a1+232]:8 +0xe0.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x678, including `sd` at 0x4cf0, `sd` at 0x4d04.
  The `ld` at 0x4cf4 loads 8 bytes from a0 (arg0 at entry) +0x678.
  The `beq` branch at 0x4cac targets 0x4cd4, is taken when a4(=[a1+224]:8) == 0, and falls through when a4(=[a1+224]:8) != 0.
  The `beq` branch at 0x4cc0 targets 0x4cec, is taken when a3(=[a1+232]:8) == 0, and falls through when a3(=[a1+232]:8) != 0.
  The `beq` branch at 0x4cd4 targets 0x4cf4, is taken when a3(=[a1+232]:8) == 0, and falls through when a3(=[a1+232]:8) != 0.
  The `beq` branch at 0x4cdc targets 0x4cc0, is taken when a4(=[a1+224]:8) == 0, and falls through when a4(=[a1+224]:8) != 0.
  The `beq` branch at 0x4ce4 targets 0x4cb8 and is always taken.
  The `bne` branch at 0x4cf8 targets 0x4ccc, is taken when at(=[a0+1656]:8) != a1, and falls through when at(=[a0+1656]:8) == a1.
  The return at 0x4ccc has v0 = ?.
  The return at 0x4cec has v0 = ?.
  The return at 0x4d00 has v0 = ?.
- `odsy_mm_insert_pbuffer_group_into_list` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x4d08 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x4d08-0x4dc8 (192 bytes).
  It occupies 192 bytes.
  The `ld` at 0x4d08 loads 8 bytes from a0 (arg0 at entry) +0x678.
  The `lw` at 0x4d14 loads 4 bytes from [a0+1656]:8 +0xd0.
  The `ld` at 0x4d18 loads 8 bytes from [a0+1656]:8 +0xe0.
  The `lw` at 0x4d1c loads 4 bytes from a1 (arg1 at entry) +0xd0.
  The `lw` at 0x4d3c loads 4 bytes from ?.
  The `ld` at 0x4d50 loads 8 bytes from ?.
  5 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0xe0, including `sd` at 0x4d5c, `sd` at 0x4d84, `sd` at 0x4d8c.
  5 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0xe8, including `sd` at 0x4d60, `sd` at 0x4d7c, `sd` at 0x4d88.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x4d68, `sd` at 0x4d6c, `sd` at 0x4d90.
  3 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x678, including `sd` at 0x4d78, `sd` at 0x4d98, `sd` at 0x4dc4.
  The `sd` at 0x4da4 stores 8 bytes to [a0+1656]:8 +0xe0.
  The `sd` at 0x4dbc stores 8 bytes to [a0+1656]:8 +0xe8.
  The `beq` branch at 0x4d0c targets 0x4d78, is taken when a3(=[a0+1656]:8) == 0, and falls through when a3(=[a0+1656]:8) != 0.
  The `beq` branch at 0x4d20 targets 0x4d9c, is taken when a4(=[[a0+1656]:8+224]:8) == 0, and falls through when a4(=[[a0+1656]:8+224]:8) != 0.
  The `beq` branch at 0x4d28 targets 0x4d54, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x4d34 targets 0x4d54, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x4d44 targets 0x4d54, is taken when a6(=[a1+208]) >= at(?) (signed), and falls through when a6(=[a1+208]) < at(?) (signed).
  The `beq` branch at 0x4d4c targets 0x4d30 and is always taken.
  The `beq` branch at 0x4d54 targets 0x4d88, is taken when a3(?) == a5(?), and falls through when a3(?) != a5(?).
  The `beq` branch at 0x4d64 targets 0x4d70, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x4d9c targets 0x4db4, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The return at 0x4d70 has v0 = ?.
  The return at 0x4d80 has v0 = ?.
  The return at 0x4d94 has v0 = ?.
  The return at 0x4dac has v0 = ?.
  The return at 0x4dc0 has v0 = ?.
- `odsy_mm_reserve_scratch` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x4dc8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x4dc8-0x4e6c (164 bytes).
  It occupies 164 bytes.
  The `ld` at 0x4dc8 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x4dcc loads 8 bytes from [a0+8]:8 +0x8.
  The `ld` at 0x4dd0 loads 8 bytes from [a0+8]:8 +0xd8.
  The `lw` at 0x4dd4 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `lw` at 0x4dd8 loads 4 bytes from [[a0+8]:8+216]:8 +0x1d8.
  The `lw` at 0x4ddc loads 4 bytes from [[a0+8]:8+8]:8 +0xa0.
  The `ld` at 0x4dec loads 8 bytes from [[a0+8]:8+8]:8 +0x8.
  The `lw` at 0x4df0 loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x690.
  The `lw` at 0x4e00 loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x68c.
  The `lw` at 0x4e04 loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x688.
  The `sw` at 0x4e1c stores 4 bytes to [[[a0+8]:8+8]:8+8]:8 +0x690.
  The `sw` at 0x4e20 stores 4 bytes to [[a0+8]:8+8]:8 +0xa0.
  The `sw` at 0x4e24 stores 4 bytes to [[a0+8]:8+216]:8 +0x1d8.
  The `lw` at 0x4e34 loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x684.
  The `lw` at 0x4e38 loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x680.
  The `lw` at 0x4e50 loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x698.
  The `beq` branch at 0x4de8 targets 0x4e24, is taken when at(=[[[a0+8]:8+8]:8+160]) >= a3(=([a0+60] + [[[a0+8]:8+216]:8+472])) (unsigned), and falls through when at(=[[[a0+8]:8+8]:8+160]) < a3(=([a0+60] + [[[a0+8]:8+216]:8+472])) (unsigned).
  The `beq` branch at 0x4df8 targets 0x4e20, is taken when at(=[[[[a0+8]:8+8]:8+8]:8+1680]) >= a3(=([a0+60] + [[[a0+8]:8+216]:8+472])) (signed), and falls through when at(=[[[[a0+8]:8+8]:8+8]:8+1680]) < a3(=([a0+60] + [[[a0+8]:8+216]:8+472])) (signed).
  The `beq` branch at 0x4e0c targets 0x4e34, is taken when a7(=[[[[a0+8]:8+8]:8+8]:8+1672]) >= a6(=[[[[a0+8]:8+8]:8+8]:8+1676]) (signed), and falls through when a7(=[[[[a0+8]:8+8]:8+8]:8+1672]) < a6(=[[[[a0+8]:8+8]:8+8]:8+1676]) (signed).
  The `beq` branch at 0x4e14 targets 0x4e34 and is always taken.
  The `beq` branch at 0x4e44 targets 0x4e50, is taken when a7(=[[[[a0+8]:8+8]:8+8]:8+1664]) >= t0(=[[[[a0+8]:8+8]:8+8]:8+1668]) (signed), and falls through when a7(=[[[[a0+8]:8+8]:8+8]:8+1664]) < t0(=[[[[a0+8]:8+8]:8+8]:8+1668]) (signed).
  The `beq` branch at 0x4e5c targets 0x4e1c, is taken when a1(=[[[[a0+8]:8+8]:8+8]:8+1688]) >= at(?) (signed), and falls through when a1(=[[[[a0+8]:8+8]:8+8]:8+1688]) < at(?) (signed).
  The return at 0x4e2c has v0 = 0x0.
  The return at 0x4e64 has v0 = 0x1.
- `odsy_mm_release_scratch` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x4e6c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x4e6c-0x4f8c (288 bytes).
  It occupies 288 bytes.
  The `ld` at 0x4e70 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x4e78 loads 8 bytes from [a0+8]:8 +0x8.
  The `ld` at 0x4e7c loads 8 bytes from [a0+8]:8 +0xd8.
  The `lw` at 0x4e80 loads 4 bytes from a0 (arg0 at entry) +0x3c.
  The `lw` at 0x4e84 loads 4 bytes from [[a0+8]:8+216]:8 +0x1d8.
  The `ld` at 0x4e88 loads 8 bytes from [[a0+8]:8+8]:8 +0x8.
  The `sw` at 0x4e90 stores 4 bytes to [[a0+8]:8+216]:8 +0x1d8.
  The `lw` at 0x4e94 loads 4 bytes from [[a0+8]:8+8]:8 +0xa0.
  2 such `lw` accesses load 4 bytes from ret(OdsyNextCSetElem) +0x1d8, including `lw` at 0x4ed4, `lw` at 0x4f04.
  The `sw` at 0x4ee0 stores 4 bytes to [[[a0+8]:8+8]:8+8]:8 +0x690.
  The `sw` at 0x4f1c stores 4 bytes to [[a0+8]:8+8]:8 +0xa0.
  The `lw` at 0x4f28 loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x690.
  2 such `lw` accesses load 4 bytes from ret(OdsyNextCSetElem) +0xa0, including `lw` at 0x4f60, `lw` at 0x4f74.
  The `jal` at 0x4eb8 calls OdsyInitCSetCursor with a0=[[a0+8]:8+8]:8+24, a1=[[a0+8]:8+216]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4ec0 calls OdsyNextCSetElem with a0=[[a0+8]:8+8]:8+24, a1=?, a2=?, a3=?.
  The `jal` at 0x4ef4 calls OdsyNextCSetElem with a0=[[a0+8]:8+8]:8+24, a1=?, a2=?, a3=?.
  The `jal` at 0x4f40 calls OdsyInitCSetCursor with a0=[[[a0+8]:8+8]:8+8]:8+1488, a1=[[[a0+8]:8+216]:8+472], a2=?, a3=?.
  The `jal` at 0x4f48 calls OdsyNextCSetElem with a0=[[[a0+8]:8+8]:8+8]:8+1488, a1=?, a2=?, a3=?.
  The `jal` at 0x4f64 calls OdsyNextCSetElem with a0=[[[a0+8]:8+8]:8+8]:8+1488, a1=?, a2=?, a3=?.
  The `bne` branch at 0x4ea0 targets 0x4ee4, is taken when at(=[[[a0+8]:8+8]:8+160]) != v0(=[[[a0+8]:8+216]:8+472]), and falls through when at(=[[[a0+8]:8+8]:8+160]) == v0(=[[[a0+8]:8+216]:8+472]).
  The `beq` branch at 0x4ec8 targets 0x4f1c, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x4ed0 targets 0x4f08 and is always taken.
  The `beq` branch at 0x4efc targets 0x4f1c, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x4f0c targets 0x4ef4, is taken when s0(?) >= a0(=[ret(OdsyNextCSetElem)+472]) (signed), and falls through when s0(?) < a0(=[ret(OdsyNextCSetElem)+472]) (signed).
  The `beq` branch at 0x4f14 targets 0x4ef4 and is always taken.
  The `bne` branch at 0x4f2c targets 0x4ee4, is taken when v1(=[[[[a0+8]:8+8]:8+8]:8+1680]) != a1(=[[[a0+8]:8+216]:8+472]), and falls through when v1(=[[[[a0+8]:8+8]:8+8]:8+1680]) == a1(=[[[a0+8]:8+216]:8+472]).
  The `beq` branch at 0x4f54 targets 0x4edc, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x4f5c targets 0x4f78 and is always taken.
  The `beq` branch at 0x4f6c targets 0x4ed8, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x4f7c targets 0x4f64, is taken when s0(?) >= v0(=[ret(OdsyNextCSetElem)+160]) (unsigned), and falls through when s0(?) < v0(=[ret(OdsyNextCSetElem)+160]) (unsigned).
  The `beq` branch at 0x4f84 targets 0x4f64 and is always taken.
  The return at 0x4eec has v0 = one of [[[a0+8]:8+216]:8+472], ret(OdsyNextCSetElem).
- `odsy_mm_commit` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x4f8c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x4f8c-0x51b8 (556 bytes).
  It occupies 556 bytes.
  The `ld` at 0x4f98 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x4f9c loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `ld` at 0x4fa0 loads 8 bytes from [a0+8]:8 +0x8.
  The `ld` at 0x4fac loads 8 bytes from [[a0+8]:8+8]:8 +0x8.
  2 such `lw` accesses load 4 bytes from ret(mm_get_extent) +0x20, including `lw` at 0x4fec, `lw` at 0x516c.
  7 such `sw` accesses store 4 bytes to ?, including `sw` at 0x5008, `sw` at 0x5064, `sw` at 0x5100.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0x501c, `ld` at 0x50cc, `ld` at 0x50e8.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0x5028, `lw` at 0x5054, `lw` at 0x5058.
  The `lw` at 0x5070 loads 4 bytes from a0 (arg0 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x5074, `lw` at 0x5114.
  The `lh` at 0x50ec loads 2 bytes from ?.
  The `ld` at 0x5120 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `sh` at 0x5128 stores 2 bytes to [a0+40]:8 +0x0.
  The `sw` at 0x5134 stores 4 bytes to a0 (arg0 at entry) +0x40.
  The `lw` at 0x5150 loads 4 bytes from ret(mm_get_extent) +0x0.
  The `jal` at 0x4ffc calls odsy_mm_obj_xfr_backing_store with a0=?, a1=sp-96, a2=0x0, a3=?.
  The `jal` at 0x5044 calls mm_get_extent with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x513c calls mm_get_extent with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x518c calls odsy_mm_obj_xfr_backing_store with a0=?, a1=sp-92, a2=0x0, a3=?.
  The `beq` branch at 0x4fb4 targets 0x4fd0, is taken when at(=[a0+64]) == 0, and falls through when at(=[a0+64]) != 0.
  The `beq` branch at 0x4fc8 targets 0x50b4 and is always taken.
  The `beq` branch at 0x4fdc targets 0x5014 and is always taken.
  The `beq` branch at 0x5010 targets 0x5070, is taken when s0(?) >= 0x10 (signed), and falls through when s0(?) < 0x10 (signed).
  The `beq` branch at 0x5020 targets 0x500c, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0x5030 targets 0x500c, is taken when (v0(?) & 0x1) != 0, and falls through when (v0(?) & 0x1) == 0.
  The `beq` branch at 0x5038 targets 0x500c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x504c targets 0x51a0, is taken when v0(=ret(mm_get_extent)) == 0, and falls through when v0(=ret(mm_get_extent)) != 0.
  The `beq` branch at 0x5060 targets 0x500c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x5068 targets 0x4fe4 and is always taken.
  The `bne` branch at 0x507c targets 0x5090, is taken when v0(=[a0+4]) < s0(=[a0]) (signed), and falls through when v0(=[a0+4]) >= s0(=[a0]) (signed).
  The `beq` branch at 0x5084 targets 0x50c8 and is always taken.
  The `beq` branch at 0x50a0 targets 0x5118, is taken when s4(=one of 0x0, 0xc) == 0, and falls through when s4(=one of 0x0, 0xc) != 0.
  The `bne` branch at 0x50c0 targets 0x5090, is taken when v0(=[a0+4]) < s0(?) (signed), and falls through when v0(=[a0+4]) >= s0(?) (signed).
  The `beq` branch at 0x50d0 targets 0x50bc, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x50e0 targets 0x5138, is taken when (at(?) & 0x1) == 0, and falls through when (at(?) & 0x1) != 0.
  The `beq` branch at 0x5110 targets 0x50bc and is always taken.
  The `beq` branch at 0x5130 targets 0x50a8 and is always taken.
  The `beq` branch at 0x5144 targets 0x508c, is taken when v0(=ret(mm_get_extent)) == 0, and falls through when v0(=ret(mm_get_extent)) != 0.
  The `beq` branch at 0x5164 targets 0x5198, is taken when (a3(?) & 0x8) == 0, and falls through when (a3(?) & 0x8) != 0.
  The `beq` branch at 0x517c targets 0x5198, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x5198 targets 0x50e8 and is always taken.
  The `beq` branch at 0x51b0 targets 0x50a8 and is always taken.
  The return at 0x50b4 has v0 = one of 0x0, 0xc.
- `odsy_mm_decommit` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)` at 0x51b8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`.
  Range: 0x51b8-0x5220 (104 bytes).
  It occupies 104 bytes.
  The `ld` at 0x51b8 loads 8 bytes from a0 (arg0 at entry) +0x80.
  The `sw` at 0x51e8 stores 4 bytes to a0 (arg0 at entry) +0x38.
  The `ld` at 0x51ec loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lh` at 0x51f0 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0x51f4 loads 8 bytes from [a0+8]:8 +0x98.
  The `sw` at 0x5200 stores 4 bytes to ([[a0+8]:8+152]:8 + ([a0]:2 << 0x2)) +0x0.
  The `lw` at 0x5204 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `sw` at 0x5214 stores 4 bytes to a0 (arg0 at entry) +0x40.
  The `jal` at 0x51d4 calls mm_release_extent with a0=[a0+128]:8, a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0), a4=[a0+128]:8.
  The `beq` branch at 0x51c0 targets 0x51e4, is taken when a4(=[a0+128]:8) == 0, and falls through when a4(=[a0+128]:8) != 0.
  The return at 0x5218 has v0 = 0x0.
- `odsyInitRetrace` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Range: 0x0-0x8c (140 bytes).
  It occupies 140 bytes.
  The `sw` at 0x24 stores 4 bytes to a0 (arg0 at entry) +0x1274.
  The `sd` at 0x28 stores 8 bytes to a0 (arg0 at entry) +0x1788.
  The `sw` at 0x38 stores 4 bytes to a0 (arg0 at entry) +0x127c.
  The `sw` at 0x44 stores 4 bytes to a0 (arg0 at entry) +0x1250.
  The `sd` at 0x68 stores 8 bytes to a0 (arg0 at entry) +0xb8.
  The `sw` at 0x70 stores 4 bytes to a0 (arg0 at entry) +0xb0.
  The `sd` at 0x78 stores 8 bytes to a0 (arg0 at entry) +0x1258.
  The `sw` at 0x7c stores 4 bytes to a0 (arg0 at entry) +0x1260.
  The `jal` at 0x1c calls bzero with a0=a0+4664, a1=0x558, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x40 calls init_mutex with a0=a0+4664, a1=0x0, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0x5c calls init_sv with a0=a0+4680, a1=0x0, a2=sym(.rodata), a3=-0x1.
  The return at 0x84 has v0 = ret(init_sv).
- `odsyValidateBuffer` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)` at 0x8c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Range: 0x8c-0x104 (120 bytes).
  It occupies 120 bytes.
  The `ld` at 0xa0 loads 8 bytes from ((((a1 << 0x2) + a1) << 0x3) + a0) +0x12a0.
  The `ld` at 0xb8 loads 8 bytes from ((((a1 << 0x2) + a1) << 0x3) + a0) +0x1288.
  The `ld` at 0xc0 loads 8 bytes from [((((a1 << 0x2) + a1) << 0x3) + a0)+4744]:8 +0x90.
  The `lw` at 0xcc loads 4 bytes from ((((a1 << 0x2) + a1) << 0x3) + a0) +0x12a8.
  The `ld` at 0xd4 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xe4 loads 4 bytes from a0 (arg0 at entry) +0x1278.
  The `sw` at 0xf4 stores 4 bytes to a0 (arg0 at entry) +0x1278.
  The `jal` at 0xbc calls rrmValidateBuffer with a0=[[((((a1 << 0x2) + a1) << 0x3) + a0)+4744]:8+144]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=((((a1 << 0x2) + a1) << 0x3) + a0).
  The `jal` at 0xd0 calls rrmValidateMGRSwapBuf with a0=[a0]:8, a1=[((((a1 << 0x2) + a1) << 0x3) + a0)+4776], a2=a2 at entry (arg2), a3=((((a1 << 0x2) + a1) << 0x3) + a0).
  The `beq` branch at 0xb0 targets 0xcc, is taken when at(=[((((a1 << 0x2) + a1) << 0x3) + a0)+4768]:8) == 0, and falls through when at(=[((((a1 << 0x2) + a1) << 0x3) + a0)+4768]:8) != 0.
  The `beq` branch at 0xc4 targets 0xdc and is always taken.
  The return at 0xfc has v0 = a1.
- `odsySwap_softsync_intr` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)` at 0x780 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Range: 0x780-0x87c (252 bytes).
  It occupies 252 bytes.
  The `sw` at 0x7d4 stores 4 bytes to a0 (arg0 at entry) +0x1264.
  The `lw` at 0x7e8 loads 4 bytes from a0 (arg0 at entry) +0x1278.
  The `lw` at 0x804 loads 4 bytes from a0 (arg0 at entry) +0x1264.
  The `ld` at 0x814 loads 8 bytes from ?.
  The `lw` at 0x818 loads 4 bytes from ?.
  The `ld` at 0x81c loads 8 bytes from a0 (arg0 at entry) +0x2f0.
  2 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x824, `lhu` at 0x82c.
  The `jal` at 0x7a8 calls mutex_lock with a0=a0+4664, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x7d0 calls odsySwapBuffer with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+4708].
  The `jal` at 0x854 calls mutex_unlock with a0=a0+4664, a1=?, a2=?, a3=?.
  The `beq` branch at 0x7b8 targets 0x7e4 and is always taken.
  The `beq` branch at 0x7e0 targets 0x854, is taken when s0(?) >= 0x20 (signed), and falls through when s0(?) < 0x20 (signed).
  The `beq` branch at 0x7fc targets 0x7d8, is taken when (v1(=[a0+4728]) & a3(?)) == 0, and falls through when (v1(=[a0+4728]) & a3(?)) != 0.
  The `beq` branch at 0x80c targets 0x7d8, is taken when (a3(?) & a4(=[a0+4708])) == 0, and falls through when (a3(?) & a4(=[a0+4708])) != 0.
  The `beq` branch at 0x834 targets 0x7c0, is taken when a1(?) >= a0(?) (signed), and falls through when a1(?) < a0(?) (signed).
  The `beq` branch at 0x83c targets 0x7d8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x844 targets 0x7d8, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x84c targets 0x7c4 and is always taken.
  The return at 0x874 has v0 = ret(mutex_unlock).
- `gf_OdsySchedRetraceEvent` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)` at 0xa14 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Range: 0xa14-0xab4 (160 bytes).
  It occupies 160 bytes.
  The `ld` at 0xa48 loads 8 bytes from a0 (arg0 at entry) +0x1788.
  The `ld` at 0xa5c loads 8 bytes from ?.
  The `sd` at 0xa80 stores 8 bytes to a1 (arg1 at entry) +0x28.
  The `sd` at 0xa88 stores 8 bytes to a0 (arg0 at entry) +0x1788.
  The `jal` at 0xa40 calls mutex_lock with a0=a0+4664, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa94 calls mutex_unlock with a0=a0+4664, a1=?, a2=?, a3=?.
  The `beq` branch at 0xa4c targets 0xa78, is taken when a0(=[a0+6024]:8) == 0, and falls through when a0(=[a0+6024]:8) != 0.
  The `beq` branch at 0xa54 targets 0xa8c, is taken when s1(=a1) == v0(=[a0+6024]:8), and falls through when s1(=a1) != v0(=[a0+6024]:8).
  The `beq` branch at 0xa60 targets 0xa78, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0xa68 targets 0xa5c, is taken when s1(=a1) != v0(?), and falls through when s1(=a1) == v0(?).
  The `beq` branch at 0xa70 targets 0xa90 and is always taken.
  The `beq` branch at 0xa78 targets 0xa8c, is taken when s1(=a1) == v0(?), and falls through when s1(=a1) != v0(?).
  The return at 0xaac has v0 = one of 0x0, 0x1.
- `gf_OdsyUnSchedRetraceEvent` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)` at 0xab4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`.
  Range: 0xab4-0xb68 (180 bytes).
  It occupies 180 bytes.
  The `ld` at 0xae8 loads 8 bytes from a0 (arg0 at entry) +0x1788.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0xb00, `ld` at 0xb20.
  The `sd` at 0xb30 stores 8 bytes to ?.
  The `sd` at 0xb3c stores 8 bytes to a0 (arg0 at entry) +0x1788.
  The `jal` at 0xae0 calls mutex_lock with a0=a0+4664, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xb48 calls mutex_unlock with a0=a0+4664, a1=?, a2=?, a3=?.
  The `beq` branch at 0xaf0 targets 0xb18, is taken when v0(=[a0+6024]:8) == 0, and falls through when v0(=[a0+6024]:8) != 0.
  The `beq` branch at 0xaf8 targets 0xb20, is taken when s1(=a1) == v0(=[a0+6024]:8), and falls through when s1(=a1) != v0(=[a0+6024]:8).
  The `beq` branch at 0xb08 targets 0xb18, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0xb10 targets 0xb00, is taken when a0(?) != s1(=a1), and falls through when a0(?) == s1(=a1).
  The `bne` branch at 0xb18 targets 0xb44, is taken when at(=a1) != v0(?), and falls through when at(=a1) == v0(?).
  The `beq` branch at 0xb28 targets 0xb3c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xb34 targets 0xb44 and is always taken.
  The return at 0xb60 has v0 = one of 0x0, 0x1.
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
## Skipped routines

Skipped because docs on `origin/main` already contain an entry for the same binary/member: `odsy_mm_release` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `odsy_mm_reserve_texture` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `odsy_mm_release_texture` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `odsy_mm_reserve_pbuffer` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `odsy_mm_release_pbuffer` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `odsy_mm_reserve_scratch` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `odsy_mm_release_scratch` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `odsy_mm_commit` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `odsy_mm_decommit` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `mm_get_extent` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `mm_release_extent` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `mm_shake` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `odsyInitRetrace` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `odsyValidateBuffer` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `odsySwapBuffer` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `gf_OdsySchedSwapBuf` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `odsySwap_softsync_intr` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `gf_OdsyUnSchedSwapBuf` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `gf_OdsySchedRetraceEvent` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `gf_OdsyUnSchedRetraceEvent` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `gf_OdsySetDisplayMode` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `gf_OdsySchedMGRSwapBuf` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `gf_OdsyFrsInstall` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `odsyRetraceHandler` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `gf_OdsySuspend` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)), `gf_OdsyResume` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)), `gf_OdsyExit` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)), `gf_OdsyReleaseGfxSema` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)), `odsyDiagExit` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)), `ODSY_SET_GC` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsy_sboxfi` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsy_pnt2i` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsy_cmov2i` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsy_drawbitmap` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsy_getdesc` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsy_tpinit` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsy_unblank` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsyDownloadUcode` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ucode.o)), `gf_OdsyDownload` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ucode.o)), `gf_OdsyInfo` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)), `gf_OdsyPrivate` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)), `OdsyInitCSet` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)), `OdsyInitCSetCursor` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)), `OdsyAllocCSetId` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)), `odsy_regmatch` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)), `gf_OdsyAttach` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)), `gfP_OdsyBRDMGRsetColors` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `odsyConfigFb` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `gfP_OdsyBRDMGRconfigFb` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `gf_OdsyPositionCursor` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `gfP_OdsyBRDMGRcursor` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `odsyBlankScreen` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `odsy_copyin_frame_line_tables` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `setDACreg` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `odsy_initDCD2DAC` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `odsy_reconfigDCD2FPLD` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `odsy_LoadDCD2Regs` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `odsyLoadTimingTable` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `gfP_OdsyBRDMGRloadTimingTable` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `gfP_OdsyBRDMGRenableVTG` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `gfP_OdsyBRDMGRi2ccmd` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `gfP_OdsyBRDMGRSetDACGain` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `odsySetDACGain` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `gf_OdsyValidateClip` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)), `odsyClipMask` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)), `odsyClipPush` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)), `gf_OdsyValidateBanks` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)), `gf_OdsySetNullClip` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)), `gfP_OdsySetClipMask` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)), `odsy_ctxsw_timeout` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)), `gfP_OdsySaveHwShadow` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)), `gf_OdsyPcxSwap` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)), `odsyRestoreRaster` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)), `odsyRestoreXform` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)), `odsyRestoreVB` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)), `odsyRestoreGfe` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)), `odsyRestorePIOPixel` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)), `odsySetProgram` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)), `odsyRestartContext` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)), `odsy_i2cFixupAfterErr` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)), `odsy_i2cProbe2b` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)), `odsyInitDDRNs` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)), `gf_OdsyCreateDDRN` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)), `gf_OdsyDestroyDDRN` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)), `gfP_OdsyDIAGallocScanbuf` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)), `gfP_OdsyDIAGgetShadowPtrs` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)), `odsyInitPfRgn` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)), `odsyDestroyPfRgn` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)), `gfP_OdsyPerfStat` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)), `odsy_NewDmaRegion` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)), `odsy_DeleteDmaRegion` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)), `odsy_DmaRegion_BuildXlatTbl` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)), `gfP_OdsyDIAGdma` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)), `odsyDMAOps` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)), `odsyDMAOp` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)), `odsyInitDrawables` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)), `gfP_OdsySetDrawBuffer` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)), `odsyPushBufferSelect` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)), `gfP_OdsyMakeCurrent` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)), `gfP_OdsyPbufAssoc` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)), `gfP_OdsyPbufDeassoc` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)), `odsy_poll_dfifo_level` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)), `odsy_flow_am_i_attached` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)), `odsyHiwaterInterrupt` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)), `odsyLowaterInterrupt` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)), `odsyFifoTimer` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)), `odsyFifoTimeout` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)), `odsy_i2c_start` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)), `odsy_i2c_sendbyte` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)), `odsy_i2cReset` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)), `odsy_init` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)), `odsy_attach` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)), `odsyGatherInfo` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)), `gf_OdsyInitialize` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)), `gf_OdsyStart` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)), `odsyLLPReset` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)), `odsyLowLevelReset` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)), `odsyReset` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)), `odsyInitCfifo` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)), `odsyInitInterrupts` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)), `odsyDisableInterrupts` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)), `odsyInitDBE` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)), `odsyPrintRegs` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)), `odsyXtErrorInterrupt` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)), `odsyFlagInterrupt` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)), `odsyDmaInterrupt` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)), `odsySsyncInterrupt` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)), `odsyGenlockInterrupt` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)), `gf_OdsyMapGfx` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)), `gf_OdsyUnMapGfx` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)), `gf_OdsyInvalTLB` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)), `odsyPinAndMapGctxSwShadowRgn` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)), `odsyMapPages` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)), `gfP_OdsyMMxfr` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `mm_get_extent` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `mm_release_extent` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `mm_shake` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `odsySwapBuffer` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `gf_OdsySchedSwapBuf` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `gf_OdsyUnSchedSwapBuf` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `gf_OdsySetDisplayMode` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `gf_OdsySchedMGRSwapBuf` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `gf_OdsyFrsInstall` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `gf_OdsyFrsUninstall` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `odsyRetraceHandler` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `gf_OdsySuspend` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)), `gf_OdsyResume` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)), `gf_OdsyExit` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)), `gf_OdsyReleaseGfxSema` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)), `odsyDiagExit` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)), `ODSY_SET_GC` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsy_sboxfi` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsy_pnt2i` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsy_cmov2i` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsy_drawbitmap` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsy_getdesc` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsy_tpinit` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsy_unblank` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsyDownloadUcode` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ucode.o)), `gf_OdsyDownload` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ucode.o)), `tp_open` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_close` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_wput` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_xmit_qenable` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_xmit` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_tx` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_start` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_stop` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_rcv_qenable` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_rcv` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_rsrv` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_rx` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_flushr` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_guiop` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_write` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_unblank` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_gwinsize` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tpcons_write` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_init` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_initlock` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_dogui` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `gfx_earlyinit` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `gf_OdsyInfo` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy.o)), `gfP_OdsyInvalidIoctl` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy.o)), `gf_OdsyPrivate` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy.o)), `odsyGctxFromRnid` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy.o)), `OdsyInitCSet` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)), `OdsyDestroyCSet` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)), `OdsyInitCSetCursor` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)), `OdsyNextCSetElem` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)), `OdsyFindMatchingCSetElem` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)), `NewChunkNode` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)), `OdsyAllocSpecificCSetId` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)), `OdsyAllocCSetId` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)), `OdsyDeallocCSetId` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)), `OdsyLookupCSetId` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)), `OdsyInit32kSlotMask` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)), `OdsyAlloc32kSlot` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)), `OdsyFree32kSlot` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)), `odsyHashAlloc` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)), `odsyHashDealloc` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)), `odsyHashLookup` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)).
