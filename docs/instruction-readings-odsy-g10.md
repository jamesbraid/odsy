# Instruction readings from hostfacts

Each entry reports selected accesses through non-stack pointers, calls and their argument slots, conditional branches, and return values from the exact binary build named in its header. Every claim cites its instruction address. These are software observations, graded Inferred; they do not establish hardware behaviour.

- `odsy_mm_sg_remove_texture_group_from_list` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x49a8, 96 bytes) Inferred.
  Performs 2 8-byte loads from a1 (arg1 at entry) +0xe0, including `ld` at 0x49a8, `ld` at 0x49bc.
  Performs 2 8-byte loads from a1 (arg1 at entry) +0xe8, including `ld` at 0x49b0, `ld` at 0x49b8.
  Performs 2 8-byte stores to [a1+224]:8 +0xe8, including `sd` at 0x49b4, `sd` at 0x49e8.
  Stores 8 bytes from `a4` to [a1+232]:8 +0xe0 (`sd` at 0x49c8).
  Performs 2 8-byte stores to a0 (arg0 at entry) +0x90, including `sd` at 0x49f0, `sd` at 0x4a04.
  Loads 8 bytes from a0 (arg0 at entry) +0x90 into `at` (`ld` at 0x49f4).
  The `beq` at 0x49ac is taken when a4(=[a1+224]:8) == 0 and falls through when a4(=[a1+224]:8) != 0.
  The `beq` at 0x49c0 is taken when a3(=[a1+232]:8) == 0 and falls through when a3(=[a1+232]:8) != 0.
  The `beq` at 0x49d4 is taken when a3(=[a1+232]:8) == 0 and falls through when a3(=[a1+232]:8) != 0.
  The `beq` at 0x49dc is taken when a4(=[a1+224]:8) == 0 and falls through when a4(=[a1+224]:8) != 0.
  The `bne` at 0x49f8 is taken when at(=[a0+144]:8) != a1 and falls through when at(=[a0+144]:8) == a1.
  The `jr` at 0x49cc returns with v0 = ?.
  The `jr` at 0x49ec returns with v0 = ?.
  The `jr` at 0x4a00 returns with v0 = ?.

- `odsy_mm_sg_insert_texture_group_into_list` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x4a08, 192 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x90 into `a3` (`ld` at 0x4a08).
  Loads 4 bytes from [a0+144]:8 +0xd0 into `a7` (`lw` at 0x4a14).
  Loads 8 bytes from [a0+144]:8 +0xe0 into `a4` (`ld` at 0x4a18).
  Loads 4 bytes from a1 (arg1 at entry) +0xd0 into `a6` (`lw` at 0x4a1c).
  Loads 4 bytes from ? (base unknown) into `at` (`lw` at 0x4a3c).
  Loads 8 bytes from ? (base unknown) into `a4` (`ld` at 0x4a50).
  Performs 5 8-byte stores to a1 (arg1 at entry) +0xe0, including `sd` at 0x4a5c, `sd` at 0x4a84, `sd` at 0x4a8c.
  Performs 5 8-byte stores to a1 (arg1 at entry) +0xe8, including `sd` at 0x4a60, `sd` at 0x4a7c, `sd` at 0x4a88.
  Performs 3 8-byte stores to ? (base unknown), including `sd` at 0x4a68, `sd` at 0x4a6c, `sd` at 0x4a90.
  Performs 3 8-byte stores to a0 (arg0 at entry) +0x90, including `sd` at 0x4a78, `sd` at 0x4a98, `sd` at 0x4ac4.
  Stores 8 bytes from `a1` to [a0+144]:8 +0xe0 (`sd` at 0x4aa4).
  Stores 8 bytes from `a1` to [a0+144]:8 +0xe8 (`sd` at 0x4abc).
  The `beq` at 0x4a0c is taken when a3(=[a0+144]:8) == 0 and falls through when a3(=[a0+144]:8) != 0.
  The `beq` at 0x4a20 is taken when a4(=[[a0+144]:8+224]:8) == 0 and falls through when a4(=[[a0+144]:8+224]:8) != 0.
  The `beq` at 0x4a28 is taken when a7(?) == 0 and falls through when a7(?) != 0.
  The `beq` at 0x4a34 is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0x4a44 is taken when a6(=[a1+208]) >= at(?) (signed) and falls through when a6(=[a1+208]) < at(?) (signed).
  The `beq` at 0x4a54 is taken when a3(?) == a5(?) and falls through when a3(?) != a5(?).
  The `beq` at 0x4a64 is taken when a3(?) == 0 and falls through when a3(?) != 0.
  The `beq` at 0x4a9c is taken when a7(?) == 0 and falls through when a7(?) != 0.
  The `jr` at 0x4a70 returns with v0 = ?.
  The `jr` at 0x4a80 returns with v0 = ?.
  The `jr` at 0x4a94 returns with v0 = ?.
  The `jr` at 0x4aac returns with v0 = ?.
  The `jr` at 0x4ac0 returns with v0 = ?.

- `odsy_mm_remove_pbuffer_group_from_list` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x4ca8, 96 bytes) Inferred.
  Performs 2 8-byte loads from a1 (arg1 at entry) +0xe0, including `ld` at 0x4ca8, `ld` at 0x4cbc.
  Performs 2 8-byte loads from a1 (arg1 at entry) +0xe8, including `ld` at 0x4cb0, `ld` at 0x4cb8.
  Performs 2 8-byte stores to [a1+224]:8 +0xe8, including `sd` at 0x4cb4, `sd` at 0x4ce8.
  Stores 8 bytes from `a4` to [a1+232]:8 +0xe0 (`sd` at 0x4cc8).
  Performs 2 8-byte stores to a0 (arg0 at entry) +0x678, including `sd` at 0x4cf0, `sd` at 0x4d04.
  Loads 8 bytes from a0 (arg0 at entry) +0x678 into `at` (`ld` at 0x4cf4).
  The `beq` at 0x4cac is taken when a4(=[a1+224]:8) == 0 and falls through when a4(=[a1+224]:8) != 0.
  The `beq` at 0x4cc0 is taken when a3(=[a1+232]:8) == 0 and falls through when a3(=[a1+232]:8) != 0.
  The `beq` at 0x4cd4 is taken when a3(=[a1+232]:8) == 0 and falls through when a3(=[a1+232]:8) != 0.
  The `beq` at 0x4cdc is taken when a4(=[a1+224]:8) == 0 and falls through when a4(=[a1+224]:8) != 0.
  The `bne` at 0x4cf8 is taken when at(=[a0+1656]:8) != a1 and falls through when at(=[a0+1656]:8) == a1.
  The `jr` at 0x4ccc returns with v0 = ?.
  The `jr` at 0x4cec returns with v0 = ?.
  The `jr` at 0x4d00 returns with v0 = ?.

- `odsy_mm_insert_pbuffer_group_into_list` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x4d08, 192 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x678 into `a3` (`ld` at 0x4d08).
  Loads 4 bytes from [a0+1656]:8 +0xd0 into `a7` (`lw` at 0x4d14).
  Loads 8 bytes from [a0+1656]:8 +0xe0 into `a4` (`ld` at 0x4d18).
  Loads 4 bytes from a1 (arg1 at entry) +0xd0 into `a6` (`lw` at 0x4d1c).
  Loads 4 bytes from ? (base unknown) into `at` (`lw` at 0x4d3c).
  Loads 8 bytes from ? (base unknown) into `a4` (`ld` at 0x4d50).
  Performs 5 8-byte stores to a1 (arg1 at entry) +0xe0, including `sd` at 0x4d5c, `sd` at 0x4d84, `sd` at 0x4d8c.
  Performs 5 8-byte stores to a1 (arg1 at entry) +0xe8, including `sd` at 0x4d60, `sd` at 0x4d7c, `sd` at 0x4d88.
  Performs 3 8-byte stores to ? (base unknown), including `sd` at 0x4d68, `sd` at 0x4d6c, `sd` at 0x4d90.
  Performs 3 8-byte stores to a0 (arg0 at entry) +0x678, including `sd` at 0x4d78, `sd` at 0x4d98, `sd` at 0x4dc4.
  Stores 8 bytes from `a1` to [a0+1656]:8 +0xe0 (`sd` at 0x4da4).
  Stores 8 bytes from `a1` to [a0+1656]:8 +0xe8 (`sd` at 0x4dbc).
  The `beq` at 0x4d0c is taken when a3(=[a0+1656]:8) == 0 and falls through when a3(=[a0+1656]:8) != 0.
  The `beq` at 0x4d20 is taken when a4(=[[a0+1656]:8+224]:8) == 0 and falls through when a4(=[[a0+1656]:8+224]:8) != 0.
  The `beq` at 0x4d28 is taken when a7(?) == 0 and falls through when a7(?) != 0.
  The `beq` at 0x4d34 is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0x4d44 is taken when a6(=[a1+208]) >= at(?) (signed) and falls through when a6(=[a1+208]) < at(?) (signed).
  The `beq` at 0x4d54 is taken when a3(?) == a5(?) and falls through when a3(?) != a5(?).
  The `beq` at 0x4d64 is taken when a3(?) == 0 and falls through when a3(?) != 0.
  The `beq` at 0x4d9c is taken when a7(?) == 0 and falls through when a7(?) != 0.
  The `jr` at 0x4d70 returns with v0 = ?.
  The `jr` at 0x4d80 returns with v0 = ?.
  The `jr` at 0x4d94 returns with v0 = ?.
  The `jr` at 0x4dac returns with v0 = ?.
  The `jr` at 0x4dc0 returns with v0 = ?.

- `odsy_tport_lock_init` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`, 0x0, 48 bytes) Inferred.
  Calls `wbflush` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x10).
  Calls `spinlock_init` via direct with a0=sym(odsy_tport_lock), a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1c).
  The `jr` at 0x28 returns with v0 = ret(spinlock_init); f0 = ret(spinlock_init).

- `odsy_color` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`, 0x6b0, 188 bytes) Inferred.
  Performs 8 4-byte stores to a0 (arg0 at entry) +0x110000, including `sw` at 0x70c, `sw` at 0x718, `sw` at 0x720.
  Stores 4 bytes from `a0` to sym(.bss) +0x8 (`sw` at 0x748).
  Calls `wbflush` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x6d8).
  Calls `mutex_spinlock` via direct with a0=sym(odsy_tport_lock), a1=?, a2=?, a3=? (`jal` at 0x6e4).
  Calls `wbflush` via direct with a0=a1 at entry (arg1), a1=sym(.bss), a2=a0+0x110000, a3=0xffffffffc580c406, a4=0xffffffffce80cc08, a5=0x23008003, a6=0x22008001 (`jal` at 0x750).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x75c).
  The `beq` at 0x6bc is taken when at(=[sym(odsy_tport_mute)]) == 0 and falls through when at(=[sym(odsy_tport_mute)]) != 0.
  The `jr` at 0x6c4 returns with v0 = ?.

- `odsy_mapcolor` (`builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`, 0x76c, 252 bytes) Inferred.
  Stores 8 bytes from `a0` to a0 (arg0 at entry) +0x400000 (`sd` at 0x840).
  Calls `wbflush` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x7a0).
  Calls `mutex_spinlock` via direct with a0=sym(odsy_tport_lock), a1=?, a2=?, a3=? (`jal` at 0x7ac).
  Calls `odsy_poll_dfifo_level` via direct with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=? (`jal` at 0x7bc).
  Calls `wbflush` via direct with a0=?, a1=a0+0x400000, a2=?, a3=a0 at entry (arg0) (`jal` at 0x84c).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x858).
  The `beq` at 0x784 is taken when at(=[sym(odsy_tport_mute)]) == 0 and falls through when at(=[sym(odsy_tport_mute)]) != 0.
  The `jr` at 0x78c returns with v0 = ?.

- `odsy_i2c_stop` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`, 0xd40, 2164 bytes) Inferred.
  Performs 77 8-byte loads from a0 (arg0 at entry) +0x10, including `ld` at 0xd40, `ld` at 0xd74, `ld` at 0xdc4.
  Performs 6 4-byte loads from [a0+16]:8 +0x5720, including `lw` at 0xd44, `lw` at 0xd78, `lw` at 0xe00.
  Performs 24 8-byte loads from [a0+16]:8 +0x2e0, including `ld` at 0xd64, `ld` at 0xdd8, `ld` at 0xe54.
  Performs 4 8-byte loads from a0 (arg0 at entry) +0x0, including `ld` at 0xd90, `ld` at 0xda0, `ld` at 0xdbc.
  Performs 3 4-byte loads from [a0]:8 +0x0, including `lw` at 0xd94, `lw` at 0xda4, `lwu` at 0xdd0.
  Performs 3 4-byte stores to [a0]:8 +0x0, including `sw` at 0xd9c, `sw` at 0xdac, `sw` at 0xe8c.
  Loads 2 bytes from a0 (arg0 at entry) +0x18 into `at` (`lhu` at 0xdb4).
  Performs 17 8-byte stores to [[a0+16]:8+736]:8 +0x400000, including `sd` at 0xdf8, `sd` at 0xf4c, `sd` at 0xf8c.
  Performs 8 8-byte loads from [a0+16]:8 +0x2828, including `ld` at 0xe34, `ld` at 0xf9c, `ld` at 0x1034.
  Performs 32 4-byte loads from [a0+16]:8 +0x55f0, including `lw` at 0xefc, `lwu` at 0xf30, `lw` at 0xf54.
  Performs 8 2-byte loads from [a0+16]:8 +0x2830, including `lhu` at 0xf00, `lhu` at 0xf60, `lhu` at 0x1198.
  Performs 20 4-byte stores to [a0+16]:8 +0x55f0, including `sw` at 0xf24, `sw` at 0xf70, `sw` at 0xfbc.
  Performs 4 8-byte stores to [a0+16]:8 +0x2828, including `sd` at 0x100c, `sd` at 0x12a8, `sd` at 0x13e8.
  Loads 2 bytes from a0 (arg0 at entry) +0x1a into `at` (`lhu` at 0x1078).
  Performs 2 8-byte loads from a0 (arg0 at entry) +0x8, including `ld` at 0x1094, `ld` at 0x10b0.
  Loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2)) +0x220000 into `a3` (`lw` at 0x1098).
  Stores 4 bytes from `a3` to [a0+8]:8 +0x0 (`sw` at 0x109c).
  Loads 4 bytes from [a0+8]:8 +0x0 into `v1` (`lw` at 0x10b4).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0xd60).
  Calls `odsy_i2c_xfer_done_loop` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0xe0c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0xe28).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+16]:8+10280]:8, a4=[a0+16]:8 (`jal` at 0xe40).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0xe50).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0xe64).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[a0+16]:8 (`jal` at 0xe78).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0xea0).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[[a0+16]:8+10280]:8, a4=[a0+16]:8 (`jal` at 0xecc).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0xedc).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0xef0).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=-0x2 (`jal` at 0x1018).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=[[a0+16]:8+22304], a3=?, a4=[a0+16]:8 (`jal` at 0x1028).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x1044).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x1054).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x1068).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x10d8).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8 (`jal` at 0x10f4).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x1104).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x1118).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=[[a0+16]:8+22304], a3=[a0]:8, a4=[a0+16]:8 (`jal` at 0x112c).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x113c).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x114c).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8 (`jal` at 0x1164).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x1174).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x1188).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=-0x2 (`jal` at 0x12b4).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x12c8).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=-0x2 (`jal` at 0x13f4).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=[[a0+16]:8+22304], a3=[([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2))+2228224], a4=[a0+16]:8 (`jal` at 0x1404).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x1420).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x1430).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x1444).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x1454).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x1464).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x1478).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=-0x2 (`jal` at 0x15a4).
  The `beq` at 0xd54 is taken when at(=[[a0+16]:8+22304]) == 0 and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0xd6c is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0xd7c is taken when v1(=[[a0+16]:8+22304]) == 0 and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0xe04 is taken when a2(=[[a0+16]:8+22304]) == 0 and falls through when a2(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0xe18 is taken when v0(=ret(odsy_i2c_xfer_done_loop)) == 0 and falls through when v0(=ret(odsy_i2c_xfer_done_loop)) != 0.
  The `beq` at 0xe38 is taken when a3(=[[a0+16]:8+10280]:8) == 0 and falls through when a3(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0xe58 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0xe98 is taken when a2(=[[a0+16]:8+22304]) == 0 and falls through when a2(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0xeac is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0xeb8 is taken when at(=[[a0+16]:8+22304]) == 0 and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0xf14 is taken when 0 >= a0(?) (unsigned) and falls through when 0 < a0(?) (unsigned).
  The `beq` at 0xfa8 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x1038 is taken when at(=[[a0+16]:8+10280]:8) == 0 and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x105c is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x10a8 is taken when a2(=[[a0+16]:8+22304]) == 0 and falls through when a2(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x10c8 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `beq` at 0x10e8 is taken when a2(=[[a0+16]:8+10280]:8) == 0 and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x110c is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x11ac is taken when 0 >= a0(?) (unsigned) and falls through when 0 < a0(?) (unsigned).
  The `beq` at 0x1244 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x12ec is taken when 0 >= a0(?) (unsigned) and falls through when 0 < a0(?) (unsigned).
  The `beq` at 0x1384 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x1414 is taken when at(=[[a0+16]:8+10280]:8) == 0 and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x1438 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x149c is taken when 0 >= a0(?) (unsigned) and falls through when 0 < a0(?) (unsigned).
  The `beq` at 0x1534 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `jr` at 0xd88 returns with v0 = ?.

- `odsy_i2c_short_recvbyte` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`, 0x1aac, 104 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a0` (`ld` at 0x1adc).
  Loads 4 bytes from [a0+8]:8 +0x0 into `a0` (`lw` at 0x1ae4).
  Stores 1 byte from `a0` to a1 (arg1 at entry) +0x0 (`sb` at 0x1b08).
  Calls `odsy_i2c_xfer_done_loop` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1ab8).
  The `beq` at 0x1ac4 is taken when v0(=ret(odsy_i2c_xfer_done_loop)) == 0 and falls through when v0(=ret(odsy_i2c_xfer_done_loop)) != 0.
  The `beq` at 0x1af4 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `jr` at 0x1ad0 returns with v0 = ?; f0 = ret(odsy_i2c_xfer_done_loop).

- `odsy_i2c_long_recvbyte` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`, 0x1b14, 3288 bytes) Inferred.
  Performs 114 8-byte loads from a0 (arg0 at entry) +0x10, including `ld` at 0x1b1c, `ld` at 0x1b48, `ld` at 0x1b94.
  Performs 9 4-byte loads from [a0+16]:8 +0x5720, including `lw` at 0x1b24, `lw` at 0x1b58, `lw` at 0x1b98.
  Performs 36 8-byte loads from [a0+16]:8 +0x2e0, including `ld` at 0x1b44, `ld` at 0x1b74, `ld` at 0x1c00.
  Performs 3 2-byte loads from a0 (arg0 at entry) +0x18, including `lhu` at 0x1b70, `lhu` at 0x1c90, `lhu` at 0x1f6c.
  Performs 11 8-byte loads from a0 (arg0 at entry) +0x0, including `ld` at 0x1b88, `ld` at 0x1ba4, `ld` at 0x1bb8.
  Loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+24]:2 + [a0+24]:2) << 0x2)) +0x220000 into `a5` (`lw` at 0x1b8c).
  Performs 9 4-byte stores to [a0]:8 +0x0, including `sw` at 0x1b90, `sw` at 0x1bb4, `sw` at 0x1bc8.
  Performs 8 4-byte loads from [a0]:8 +0x0, including `lw` at 0x1ba8, `lw` at 0x1bbc, `lw` at 0x1be0.
  Performs 12 8-byte loads from [a0+16]:8 +0x2828, including `ld` at 0x1c30, `ld` at 0x1d7c, `ld` at 0x1e70.
  Performs 26 8-byte stores to [[a0+16]:8+736]:8 +0x400000, including `sd` at 0x1cd4, `sd` at 0x1e20, `sd` at 0x1e60.
  Performs 48 4-byte loads from [a0+16]:8 +0x55f0, including `lw` at 0x1dd0, `lwu` at 0x1e04, `lw` at 0x1e28.
  Performs 12 2-byte loads from [a0+16]:8 +0x2830, including `lhu` at 0x1dd4, `lhu` at 0x1e34, `lhu` at 0x2064.
  Performs 30 4-byte stores to [a0+16]:8 +0x55f0, including `sw` at 0x1df8, `sw` at 0x1e44, `sw` at 0x1e90.
  Performs 6 8-byte stores to [a0+16]:8 +0x2828, including `sd` at 0x1ee0, `sd` at 0x2170, `sd` at 0x2380.
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x1b40).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x1bfc).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=0x220000, a6=[a0+16]:8 (`jal` at 0x1c24).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x1c3c).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x1c4c).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x1c60).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=[a0+16]:8 (`jal` at 0x1c74).
  Calls `odsy_i2c_short_recvbyte` via direct with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=?, a3=? (`jal` at 0x1ce8).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x1d24).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x1d50).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x1d60).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=[[a0+16]:8+22304], a6=[a0+16]:8 (`jal` at 0x1d70).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x1d8c).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x1d9c).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x1db0).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x1dc4).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=one of 0x400000, 0x7960400100000000, a6=[a0+16]:8, a7=-0x2 (`jal` at 0x1eec).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[[a0+16]:8+22304], a5=[([[a0+16]:8+736]:8 + (([a0+24]:2 + [a0+24]:2) << 0x2))+2228224], a6=[a0+16]:8 (`jal` at 0x1efc).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x1f18).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x1f28).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x1f3c).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a4=[[a0+16]:8+22304], a5=-0x101, a6=[a0+16]:8 (`jal` at 0x1f50).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x1fe0).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x1ff0).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[[a0+16]:8+22304], a6=[a0+16]:8 (`jal` at 0x2000).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x201c).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x202c).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x2040).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x2054).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=one of 0x400000, 0x7960400100000000, a6=[a0+16]:8, a7=-0x2 (`jal` at 0x217c).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x218c).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x219c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=0x400000, a5=[[a0+16]:8+22304], a6=[a0+16]:8 (`jal` at 0x21dc).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a5=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x21f8).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x2208).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x221c).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a5=a2 at entry (arg2), a6=[a0+16]:8 (`jal` at 0x2230).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x2240).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x2250).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x2264).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a6=[a0+16]:8, a7=-0x2 (`jal` at 0x238c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x23a0).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a6=[a0+16]:8, a7=-0x2 (`jal` at 0x24cc).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a5=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x24dc).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x24ec).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=a2 at entry (arg2), a6=[a0+16]:8 (`jal` at 0x24fc).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x2518).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x2528).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x253c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x2550).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a6=[a0+16]:8, a7=-0x2 (`jal` at 0x267c).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x268c).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x269c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x26b0).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a6=[a0+16]:8, a7=-0x2 (`jal` at 0x27dc).
  The `beq` at 0x1b34 is taken when at(=[[a0+16]:8+22304]) == 0 and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x1b50 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x1b5c is taken when v1(=[[a0+16]:8+22304]) == 0 and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x1b9c is taken when a4(=[[a0+16]:8+22304]) == 0 and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x1bdc is taken when v0(=0x1) == v1(=a1) and falls through when v0(=0x1) != v1(=a1).
  The `beq` at 0x1bf4 is taken when a4(=[[a0+16]:8+22304]) == 0 and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x1c08 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x1c14 is taken when a5(=[[a0+16]:8+22304]) == 0 and falls through when a5(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x1c34 is taken when at(=[[a0+16]:8+10280]:8) == 0 and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x1c54 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x1ce0 is taken when a5(=[[a0+16]:8+22304]) == 0 and falls through when a5(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x1cfc is taken when a4(=0x1) == a5(=a2) and falls through when a4(=0x1) != a5(=a2).
  The `beq` at 0x1d18 is taken when v1(=[[a0+16]:8+22304]) == 0 and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x1d30 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x1d3c is taken when a4(=[[a0+16]:8+22304]) == 0 and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x1d80 is taken when a4(=[[a0+16]:8+10280]:8) == 0 and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x1da4 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x1de8 is taken when 0 >= a2(?) (unsigned) and falls through when 0 < a2(?) (unsigned).
  The `beq` at 0x1e7c is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x1f0c is taken when a4(=[[a0+16]:8+10280]:8) == 0 and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x1f30 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x1fbc is taken when a4(=[[a0+16]:8+22304]) == 0 and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x1fc8 is taken when v1(=0x1) == a4(=a2) and falls through when v1(=0x1) != a4(=a2).
  The `beq` at 0x1fd0 is taken when a5(=a1) == 0 and falls through when a5(=a1) != 0.
  The `beq` at 0x2010 is taken when a4(=[[a0+16]:8+10280]:8) == 0 and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x2034 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x2078 is taken when 0 >= a2(?) (unsigned) and falls through when 0 < a2(?) (unsigned).
  The `beq` at 0x210c is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `bne` at 0x21bc is taken when a4(=a1) != 0 and falls through when a4(=a1) == 0.
  The `beq` at 0x21ec is taken when a5(=[[a0+16]:8+10280]:8) == 0 and falls through when a5(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x2210 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x2288 is taken when 0 >= t0(?) (unsigned) and falls through when 0 < t0(?) (unsigned).
  The `beq` at 0x231c is taken when t0(?) == 0 and falls through when t0(?) != 0.
  The `beq` at 0x23c4 is taken when 0 >= a2(?) (unsigned) and falls through when 0 < a2(?) (unsigned).
  The `beq` at 0x245c is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x250c is taken when a4(=[[a0+16]:8+10280]:8) == 0 and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x2530 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x2574 is taken when 0 >= t0(?) (unsigned) and falls through when 0 < t0(?) (unsigned).
  The `beq` at 0x260c is taken when t0(?) == 0 and falls through when t0(?) != 0.
  The `beq` at 0x26d4 is taken when 0 >= a3(?) (unsigned) and falls through when 0 < a3(?) (unsigned).
  The `beq` at 0x276c is taken when a3(?) == 0 and falls through when a3(?) != 0.
  The `jr` at 0x1b68 returns with v0 = ?.

- `odsy_i2c_becomeSlaveRecv` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`, 0x27ec, 2372 bytes) Inferred.
  Performs 76 8-byte loads from a0 (arg0 at entry) +0x10, including `ld` at 0x2828, `ld` at 0x2840, `ld` at 0x2888.
  Performs 6 4-byte loads from [a0+16]:8 +0x5720, including `lw` at 0x282c, `lw` at 0x2850, `lw` at 0x288c.
  Performs 24 8-byte loads from [a0+16]:8 +0x2e0, including `ld` at 0x283c, `ld` at 0x2868, `ld` at 0x2924.
  Performs 2 2-byte loads from a0 (arg0 at entry) +0x18, including `lhu` at 0x2864, `lhu` at 0x29c0.
  Performs 11 8-byte loads from a0 (arg0 at entry) +0x0, including `ld` at 0x287c, `ld` at 0x2898, `ld` at 0x28a8.
  Loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+24]:2 + [a0+24]:2) << 0x2)) +0x220000 into `a5` (`lw` at 0x2880).
  Performs 8 4-byte stores to [a0]:8 +0x0, including `sw` at 0x2884, `sw` at 0x28a4, `sw` at 0x28b8.
  Performs 8 4-byte loads from [a0]:8 +0x0, including `lw` at 0x289c, `lw` at 0x28ac, `lw` at 0x28c0.
  Performs 8 8-byte loads from [a0+16]:8 +0x2828, including `ld` at 0x2954, `ld` at 0x2a7c, `ld` at 0x2b70.
  Performs 17 8-byte stores to [[a0+16]:8+736]:8 +0x400000, including `sd` at 0x2a04, `sd` at 0x2b20, `sd` at 0x2b60.
  Performs 32 4-byte loads from [a0+16]:8 +0x55f0, including `lw` at 0x2ad0, `lwu` at 0x2b04, `lw` at 0x2b28.
  Performs 8 2-byte loads from [a0+16]:8 +0x2830, including `lhu` at 0x2ad4, `lhu` at 0x2b34, `lhu` at 0x2cd4.
  Performs 20 4-byte stores to [a0+16]:8 +0x55f0, including `sw` at 0x2af8, `sw` at 0x2b44, `sw` at 0x2b90.
  Performs 4 8-byte stores to [a0+16]:8 +0x2828, including `sd` at 0x2be0, `sd` at 0x2de0, `sd` at 0x2f8c.
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a0` (`ld` at 0x2c60).
  Loads 4 bytes from [a0+8]:8 +0x0 into `a0` (`lw` at 0x2c64).
  Stores 1 byte from `a0` to a3 (arg3 at entry) +0x0 (`sb` at 0x2fac).
  Calls `odsy_i2c_busy_high_loop` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2804).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x2838).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x2920).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=0x220000, a6=[a0+16]:8 (`jal` at 0x2948).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x2960).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x2970).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x2984).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x2998).
  Calls `odsy_i2c_xfer_done_loop` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x2a18).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x2a3c).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x2a4c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=[[a0+16]:8+22304], a6=[a0+16]:8 (`jal` at 0x2a70).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a5=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x2a8c).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x2a9c).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x2ab0).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x2ac4).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=one of 0x400000, 0x7960400100000000, a6=[a0+16]:8, a7=-0x2 (`jal` at 0x2bec).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[[a0+16]:8+22304], a5=[([[a0+16]:8+736]:8 + (([a0+24]:2 + [a0+24]:2) << 0x2))+2228224], a6=[a0+16]:8 (`jal` at 0x2bfc).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x2c18).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x2c28).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x2c3c).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a4=0xfffffffffe03ffff, a5=[[a0+16]:8+22304], a6=[a0+16]:8 (`jal` at 0x2c50).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a5=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x2ca0).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x2cb0).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x2cc4).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a5=one of 0x400000, 0x7960400100000000, a6=[a0+16]:8, a7=-0x2 (`jal` at 0x2dec).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x2dfc).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x2e0c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=[[a0+16]:8+736]:8+0x400000, a6=[a0+16]:8 (`jal` at 0x2e1c).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x2e38).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x2e48).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x2e5c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x2e70).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a6=[a0+16]:8, a7=-0x2 (`jal` at 0x2f98).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x2fd0).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x2fe0).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x2ff4).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=[a0+16]:8, a6=[a0+16]:8, a7=-0x2 (`jal` at 0x3120).
  The `beq` at 0x2810 is taken when v0(=ret(odsy_i2c_busy_high_loop)) == 0 and falls through when v0(=ret(odsy_i2c_busy_high_loop)) != 0.
  The `beq` at 0x2830 is taken when at(=[[a0+16]:8+22304]) == 0 and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x2848 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x2854 is taken when v1(=[[a0+16]:8+22304]) == 0 and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x2890 is taken when a4(=[[a0+16]:8+22304]) == 0 and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x28d4 is taken when v1(=a1) == a4(=0x1) and falls through when v1(=a1) != a4(=0x1).
  The `beq` at 0x28e0 is taken when a4(=a1) == 0 and falls through when a4(=a1) != 0.
  The `beq` at 0x2918 is taken when a5(=[[a0+16]:8+22304]) == 0 and falls through when a5(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x292c is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x2938 is taken when a5(=[[a0+16]:8+22304]) == 0 and falls through when a5(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x2958 is taken when at(=[[a0+16]:8+10280]:8) == 0 and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x2978 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x2a10 is taken when v1(=[[a0+16]:8+22304]) == 0 and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x2a24 is taken when v0(=ret(odsy_i2c_xfer_done_loop)) == 0 and falls through when v0(=ret(odsy_i2c_xfer_done_loop)) != 0.
  The `beq` at 0x2a80 is taken when a5(=[[a0+16]:8+10280]:8) == 0 and falls through when a5(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x2aa4 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x2ae8 is taken when 0 >= a2(?) (unsigned) and falls through when 0 < a2(?) (unsigned).
  The `beq` at 0x2b7c is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x2c0c is taken when a4(=[[a0+16]:8+10280]:8) == 0 and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x2c30 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` at 0x2c78 is taken when a4(?) != 0 and falls through when a4(?) == 0.
  The `beq` at 0x2c90 is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0x2ce8 is taken when 0 >= a2(?) (unsigned) and falls through when 0 < a2(?) (unsigned).
  The `beq` at 0x2d7c is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x2e2c is taken when a4(=[[a0+16]:8+10280]:8) == 0 and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x2e50 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x2e94 is taken when 0 >= t0(?) (unsigned) and falls through when 0 < t0(?) (unsigned).
  The `beq` at 0x2f28 is taken when t0(?) == 0 and falls through when t0(?) != 0.
  The `beq` at 0x3018 is taken when 0 >= a2(?) (unsigned) and falls through when 0 < a2(?) (unsigned).
  The `beq` at 0x30b0 is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `jr` at 0x2820 returns with v0 = ?.

- `odsy_i2c_slave_recvbyte` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`, 0x3130, 2352 bytes) Inferred.
  Performs 2 8-byte loads from a0 (arg0 at entry) +0x0, including `ld` at 0x3130, `ld` at 0x354c.
  Performs 2 4-byte loads from [a0]:8 +0x0, including `lw` at 0x3138, `lw` at 0x3550.
  Performs 2 4-byte stores to [a0]:8 +0x0, including `sw` at 0x3168, `sw` at 0x3574.
  Performs 76 8-byte loads from a0 (arg0 at entry) +0x10, including `ld` at 0x316c, `ld` at 0x3194, `ld` at 0x31e0.
  Performs 6 4-byte loads from [a0+16]:8 +0x5720, including `lw` at 0x3174, `lw` at 0x31a0, `lw` at 0x31e4.
  Performs 24 8-byte loads from [a0+16]:8 +0x2e0, including `ld` at 0x3190, `ld` at 0x31bc, `ld` at 0x325c.
  Performs 2 2-byte loads from a0 (arg0 at entry) +0x1a, including `lhu` at 0x31b8, `lhu` at 0x3310.
  Performs 8 8-byte loads from a0 (arg0 at entry) +0x8, including `ld` at 0x31d4, `ld` at 0x31f0, `ld` at 0x327c.
  Performs 2 4-byte loads from ([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2)) +0x220000, including `lw` at 0x31d8, `lw` at 0x3330.
  Performs 2 4-byte stores to [a0+8]:8 +0x0, including `sw` at 0x31dc, `sw` at 0x3334.
  Performs 4 4-byte loads from [a0+8]:8 +0x0, including `lw` at 0x31f8, `lw` at 0x3284, `lw` at 0x3354.
  Performs 8 8-byte loads from [a0+16]:8 +0x2828, including `ld` at 0x323c, `ld` at 0x346c, `ld` at 0x3508.
  Stores 1 byte from `a5` to ? (base unknown) (`sb` at 0x335c).
  Performs 32 4-byte loads from [a0+16]:8 +0x55f0, including `lw` at 0x33cc, `lwu` at 0x3400, `lw` at 0x3424.
  Performs 8 2-byte loads from [a0+16]:8 +0x2830, including `lhu` at 0x33d0, `lhu` at 0x3430, `lhu` at 0x368c.
  Performs 20 4-byte stores to [a0+16]:8 +0x55f0, including `sw` at 0x33f4, `sw` at 0x3440, `sw` at 0x348c.
  Performs 16 8-byte stores to [[a0+16]:8+736]:8 +0x400000, including `sd` at 0x341c, `sd` at 0x345c, `sd` at 0x3478.
  Performs 4 8-byte stores to [a0+16]:8 +0x2828, including `sd` at 0x34e0, `sd` at 0x379c, `sd` at 0x38e0.
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x318c).
  Calls `odsy_i2c_xfer_done_loop` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x3210).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=[[a0+16]:8+22304], a6=[a0+16]:8 (`jal` at 0x3230).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x3248).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x3258).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x326c).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x32cc).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[a0+16]:8+22304], a6=[a0+16]:8, a7=[a0]:8 (`jal` at 0x32f4).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x339c).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x33ac).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x33c0).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8 (`jal` at 0x34ec).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[a0+8]:8, a6=[a0+16]:8 (`jal` at 0x34fc).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x3518).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x3528).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x353c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a5=[[a0+16]:8+22304], a6=[a0+16]:8 (`jal` at 0x3584).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x35a0).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x35b0).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x35c4).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a4=[[a0+16]:8+22304], a6=[a0+16]:8 (`jal` at 0x35d8).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x35e8).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x35f8).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=?, a4=[a0+8]:8, a5=(([a0+26]:2 + [a0+26]:2) << 0x2), a6=[a0+16]:8 (`jal` at 0x3608).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x3624).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x3634).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x3648).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a6=[a0+16]:8 (`jal` at 0x3658).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x3668).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x367c).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8 (`jal` at 0x37a8).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x37bc).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8 (`jal` at 0x38ec).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[[a0+16]:8+10280]:8, a6=[a0+16]:8 (`jal` at 0x38fc).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x390c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x3920).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8 (`jal` at 0x3a50).
  The `beq` at 0x3160 is taken when at(?) == a1 and falls through when at(?) != a1.
  The `beq` at 0x3180 is taken when a4(=[[a0+16]:8+22304]) == 0 and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x3198 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x31a4 is taken when a5(=[[a0+16]:8+22304]) == 0 and falls through when a5(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x31e8 is taken when at(=[[a0+16]:8+22304]) == 0 and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x3208 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x321c is taken when v0(=ret(odsy_i2c_xfer_done_loop)) == 0 and falls through when v0(=ret(odsy_i2c_xfer_done_loop)) != 0.
  The `beq` at 0x3240 is taken when at(=[[a0+16]:8+10280]:8) == 0 and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x3260 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `bne` at 0x32a0 is taken when a4(?) != 0 and falls through when a4(?) == 0.
  The `bne` at 0x32a8 is taken when a5(?) != 0 and falls through when a5(?) == 0.
  The `bne` at 0x32b4 is taken when at(=a2) < v1(?) (signed) and falls through when at(=a2) >= v1(?) (signed).
  The `beq` at 0x32c4 is taken when a4(=[[a0+16]:8+22304]) == 0 and falls through when a4(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x32d4 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x32e0 is taken when a5(=[[a0+16]:8+22304]) == 0 and falls through when a5(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x3340 is taken when at(=[[a0+16]:8+22304]) == 0 and falls through when at(=[[a0+16]:8+22304]) != 0.
  The `bne` at 0x3384 is taken when v1(?) != 0 and falls through when v1(?) == 0.
  The `beq` at 0x33e4 is taken when 0 >= a2(?) (unsigned) and falls through when 0 < a2(?) (unsigned).
  The `beq` at 0x3474 is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x350c is taken when at(=[[a0+16]:8+10280]:8) == 0 and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x3530 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x3594 is taken when at(=[[a0+16]:8+10280]:8) == 0 and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x35b8 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x3618 is taken when a4(=[[a0+16]:8+10280]:8) == 0 and falls through when a4(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x363c is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x36a0 is taken when 0 >= a7(?) (unsigned) and falls through when 0 < a7(?) (unsigned).
  The `beq` at 0x3730 is taken when a7(?) == 0 and falls through when a7(?) != 0.
  The `beq` at 0x37e0 is taken when 0 >= a2(?) (unsigned) and falls through when 0 < a2(?) (unsigned).
  The `beq` at 0x3874 is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x3944 is taken when 0 >= a7(?) (unsigned) and falls through when 0 < a7(?) (unsigned).
  The `beq` at 0x39d8 is taken when a7(?) == 0 and falls through when a7(?) != 0.
  The `jr` at 0x31b0 returns with v0 = ?.

- `odsy_i2c_xfer_done_loop` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`, 0x3a60, 1108 bytes) Inferred.
  Performs 39 8-byte loads from a0 (arg0 at entry) +0x10, including `ld` at 0x3a88, `ld` at 0x3aa8, `ld` at 0x3af0.
  Performs 3 4-byte loads from [a0+16]:8 +0x5720, including `lw` at 0x3a8c, `lw` at 0x3aac, `lw` at 0x3af4.
  Performs 12 8-byte loads from [a0+16]:8 +0x2e0, including `ld` at 0x3a9c, `ld` at 0x3ad0, `ld` at 0x3b6c.
  Loads 2 bytes from a0 (arg0 at entry) +0x1a into `v1` (`lhu` at 0x3acc).
  Performs 4 8-byte loads from a0 (arg0 at entry) +0x8, including `ld` at 0x3ae4, `ld` at 0x3b00, `ld` at 0x3be8.
  Loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2)) +0x220000 into `a4` (`lw` at 0x3ae8).
  Stores 4 bytes from `a4` to [a0+8]:8 +0x0 (`sw` at 0x3aec).
  Loads 4 bytes from [a0+8]:8 +0x0 into `a2` (`lw` at 0x3b04).
  Performs 4 8-byte loads from [a0+16]:8 +0x2828, including `ld` at 0x3b48, `ld` at 0x3bac, `ld` at 0x3cbc.
  Performs 16 4-byte loads from [a0+16]:8 +0x55f0, including `lw` at 0x3c1c, `lwu` at 0x3c4c, `lw` at 0x3c70.
  Performs 4 2-byte loads from [a0+16]:8 +0x2830, including `lhu` at 0x3c20, `lhu` at 0x3c7c, `lhu` at 0x3d84.
  Performs 10 4-byte stores to [a0+16]:8 +0x55f0, including `sw` at 0x3c40, `sw` at 0x3c8c, `sw` at 0x3cdc.
  Performs 8 8-byte stores to [[a0+16]:8+736]:8 +0x400000, including `sd` at 0x3c68, `sd` at 0x3cac, `sd` at 0x3cc8.
  Performs 2 8-byte stores to [a0+16]:8 +0x2828, including `sd` at 0x3d30, `sd` at 0x3e98.
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x3a98).
  Calls `odsy_usdelay` via direct with a0=[a0+16]:8, a1=0x1f4, a2=?, a3=? (`jal` at 0x3b1c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=[[a0+16]:8+22304], a3=?, a4=[a0+16]:8 (`jal` at 0x3b3c).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+16]:8+10280]:8, a4=[a0+16]:8 (`jal` at 0x3b58).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x3b68).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x3b7c).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x3b90).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[[a0+16]:8+22304], a4=[a0+16]:8 (`jal` at 0x3ba0).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8 (`jal` at 0x3bb8).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x3bc8).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x3bdc).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[[a0+16]:8+10280]:8, a4=[a0+16]:8 (`jal` at 0x3bec).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x3bfc).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x3c10).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8 (`jal` at 0x3d3c).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8 (`jal` at 0x3d50).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x3d60).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x3d74).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8 (`jal` at 0x3ea4).
  The `beq` at 0x3a80 is taken when s1(?) >= 0x1f4 (unsigned) and falls through when s1(?) < 0x1f4 (unsigned).
  The `beq` at 0x3a90 is taken when v1(=[[a0+16]:8+22304]) == 0 and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x3aa4 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x3ab0 is taken when a2(=[[a0+16]:8+22304]) == 0 and falls through when a2(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x3af8 is taken when a3(=[[a0+16]:8+22304]) == 0 and falls through when a3(=[[a0+16]:8+22304]) != 0.
  The `bne` at 0x3b10 is taken when a2(?) != 0 and falls through when a2(?) == 0.
  The `beq` at 0x3b4c is taken when a3(=[[a0+16]:8+10280]:8) == 0 and falls through when a3(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x3b70 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x3bb0 is taken when a2(=[[a0+16]:8+10280]:8) == 0 and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x3bd0 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x3c34 is taken when 0 >= a1(?) (unsigned) and falls through when 0 < a1(?) (unsigned).
  The `beq` at 0x3cc4 is taken when a1(?) == 0 and falls through when a1(?) != 0.
  The `beq` at 0x3d98 is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x3e2c is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `jr` at 0x3ac4 returns with v0 = one of 0x0, 0x2, 0x3.

- `odsy_i2c_busy_high_loop` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`, 0x3eb4, 1116 bytes) Inferred.
  Performs 39 8-byte loads from a0 (arg0 at entry) +0x10, including `ld` at 0x3edc, `ld` at 0x3efc, `ld` at 0x3f44.
  Performs 3 4-byte loads from [a0+16]:8 +0x5720, including `lw` at 0x3ee0, `lw` at 0x3f00, `lw` at 0x3f48.
  Performs 12 8-byte loads from [a0+16]:8 +0x2e0, including `ld` at 0x3ef0, `ld` at 0x3f24, `ld` at 0x3fc8.
  Loads 2 bytes from a0 (arg0 at entry) +0x1a into `v1` (`lhu` at 0x3f20).
  Performs 4 8-byte loads from a0 (arg0 at entry) +0x8, including `ld` at 0x3f38, `ld` at 0x3f54, `ld` at 0x4044.
  Loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2)) +0x220000 into `a4` (`lw` at 0x3f3c).
  Stores 4 bytes from `a4` to [a0+8]:8 +0x0 (`sw` at 0x3f40).
  Loads 4 bytes from [a0+8]:8 +0x0 into `a2` (`lw` at 0x3f5c).
  Performs 4 8-byte loads from [a0+16]:8 +0x2828, including `ld` at 0x3fa4, `ld` at 0x4008, `ld` at 0x4118.
  Performs 16 4-byte loads from [a0+16]:8 +0x55f0, including `lw` at 0x4078, `lwu` at 0x40a8, `lw` at 0x40cc.
  Performs 4 2-byte loads from [a0+16]:8 +0x2830, including `lhu` at 0x407c, `lhu` at 0x40d8, `lhu` at 0x41e0.
  Performs 10 4-byte stores to [a0+16]:8 +0x55f0, including `sw` at 0x409c, `sw` at 0x40e8, `sw` at 0x4138.
  Performs 8 8-byte stores to [[a0+16]:8+736]:8 +0x400000, including `sd` at 0x40c4, `sd` at 0x4108, `sd` at 0x4124.
  Performs 2 8-byte stores to [a0+16]:8 +0x2828, including `sd` at 0x418c, `sd` at 0x42f4.
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x3eec).
  Calls `odsy_usdelay` via direct with a0=[a0+16]:8, a1=0x1f4, a2=?, a3=0x7fffff (`jal` at 0x3f78).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=[[a0+16]:8+22304], a3=?, a4=[a0+16]:8 (`jal` at 0x3f98).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x3fb4).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x3fc4).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x3fd8).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x3fec).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[[a0+16]:8+22304], a4=[a0+16]:8 (`jal` at 0x3ffc).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8 (`jal` at 0x4014).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x4024).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x4038).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x4048).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x4058).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x406c).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8 (`jal` at 0x4198).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8 (`jal` at 0x41ac).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x41bc).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x41d0).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8 (`jal` at 0x4300).
  The `beq` at 0x3ed4 is taken when s1(?) >= 0x1f4 (unsigned) and falls through when s1(?) < 0x1f4 (unsigned).
  The `beq` at 0x3ee4 is taken when v1(=[[a0+16]:8+22304]) == 0 and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x3ef8 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x3f04 is taken when a2(=[[a0+16]:8+22304]) == 0 and falls through when a2(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x3f4c is taken when a3(=[[a0+16]:8+22304]) == 0 and falls through when a3(=[[a0+16]:8+22304]) != 0.
  The `bne` at 0x3f6c is taken when a2(?) != 0 and falls through when a2(?) == 0.
  The `beq` at 0x3fa8 is taken when at(=[[a0+16]:8+10280]:8) == 0 and falls through when at(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x3fcc is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x400c is taken when a2(=[[a0+16]:8+10280]:8) == 0 and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x402c is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x4090 is taken when 0 >= a1(?) (unsigned) and falls through when 0 < a1(?) (unsigned).
  The `beq` at 0x4120 is taken when a1(?) == 0 and falls through when a1(?) != 0.
  The `beq` at 0x41f4 is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x4288 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `jr` at 0x3f18 returns with v0 = one of 0x0, 0x2, 0x3.

- `odsy_i2c_recv_ack` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`, 0x4310, 1132 bytes) Inferred.
  Performs 2 8-byte loads from a0 (arg0 at entry) +0x8, including `ld` at 0x432c, `ld` at 0x43a8.
  Loads 4 bytes from [a0+8]:8 +0x0 into `at` (`lw` at 0x4330).
  Performs 39 8-byte loads from a0 (arg0 at entry) +0x10, including `ld` at 0x4348, `ld` at 0x434c, `ld` at 0x436c.
  Performs 3 4-byte loads from [a0+16]:8 +0x5720, including `lw` at 0x4350, `lw` at 0x4370, `lw` at 0x43b8.
  Performs 12 8-byte loads from [a0+16]:8 +0x2e0, including `ld` at 0x4360, `ld` at 0x4394, `ld` at 0x442c.
  Loads 2 bytes from a0 (arg0 at entry) +0x1a into `v1` (`lhu` at 0x4390).
  Loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2)) +0x220000 into `a4` (`lw` at 0x43ac).
  Stores 4 bytes from `a4` to [a0+8]:8 +0x0 (`sw` at 0x43b0).
  Performs 4 8-byte loads from [a0+16]:8 +0x2828, including `ld` at 0x440c, `ld` at 0x446c, `ld` at 0x4584.
  Performs 16 4-byte loads from [a0+16]:8 +0x55f0, including `lw` at 0x44e0, `lwu` at 0x4514, `lw` at 0x4538.
  Performs 4 2-byte loads from [a0+16]:8 +0x2830, including `lhu` at 0x44e4, `lhu` at 0x4544, `lhu` at 0x464c.
  Performs 10 4-byte stores to [a0+16]:8 +0x55f0, including `sw` at 0x4508, `sw` at 0x4554, `sw` at 0x45a4.
  Performs 8 8-byte stores to [[a0+16]:8+736]:8 +0x400000, including `sd` at 0x4530, `sd` at 0x4574, `sd` at 0x4590.
  Performs 2 8-byte stores to [a0+16]:8 +0x2828, including `sd` at 0x45f8, `sd` at 0x4760.
  Calls `odsy_usdelay` via direct with a0=[a0+16]:8, a1=0x1f4, a2=?, a3=? (`jal` at 0x4344).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xf, a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x435c).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=[[a0+16]:8+22304], a3=?, a4=[a0+16]:8 (`jal` at 0x4400).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[[a0+16]:8+10280]:8, a4=[a0+16]:8 (`jal` at 0x4418).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x4428).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x443c).
  Calls `psema` via direct with a0=[a0+16]:8+10256, a1=0x19, a2=?, a3=?, a4=[a0+16]:8 (`jal` at 0x4450).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=[[a0+16]:8+22304], a4=[a0+16]:8 (`jal` at 0x4460).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8 (`jal` at 0x4478).
  Calls `odsy_poll_dfifo_level` via direct with a0=[[a0+16]:8+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x4488).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=? (`jal` at 0x449c).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=?, a3=[[a0+16]:8+10280]:8, a4=[a0+16]:8 (`jal` at 0x44b0).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x44c0).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x44d4).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8 (`jal` at 0x4604).
  Calls `vsema` via direct with a0=[a0+16]:8+10256, a1=?, a2=[[a0+16]:8+10280]:8, a3=?, a4=[a0+16]:8 (`jal` at 0x4618).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x4628).
  Calls `mutex_spinlock` via direct with a0=[a0+16]:8+10272, a1=?, a2=?, a3=? (`jal` at 0x463c).
  Calls `mutex_spinunlock` via direct with a0=[a0+16]:8+10272, a1=ret(mutex_spinlock), a2=?, a3=[a0+16]:8, a4=-0x2, a5=([[a0+16]:8+22000] | 0x2), a6=[a0+16]:8 (`jal` at 0x476c).
  The `beq` at 0x433c is taken when at(?) == s1(=a1) and falls through when at(?) != s1(=a1).
  The `beq` at 0x4354 is taken when v1(=[[a0+16]:8+22304]) == 0 and falls through when v1(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x4368 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x4374 is taken when a2(=[[a0+16]:8+22304]) == 0 and falls through when a2(=[[a0+16]:8+22304]) != 0.
  The `beq` at 0x43bc is taken when a3(=[[a0+16]:8+22304]) == 0 and falls through when a3(=[[a0+16]:8+22304]) != 0.
  The `bne` at 0x43d0 is taken when a2(?) < 0x1f4 (unsigned) and falls through when a2(?) >= 0x1f4 (unsigned).
  The `beq` at 0x4410 is taken when a3(=[[a0+16]:8+10280]:8) == 0 and falls through when a3(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x4430 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x4470 is taken when a2(=[[a0+16]:8+10280]:8) == 0 and falls through when a2(=[[a0+16]:8+10280]:8) != 0.
  The `beq` at 0x4490 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x44f8 is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x458c is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x4660 is taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  The `beq` at 0x46f4 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `jr` at 0x4388 returns with v0 = one of 0x0, 0x2, 0x3.

- `odsy_i2c_init_port_handle` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)`, 0x477c, 1076 bytes) Inferred.
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0x1c (`sw` at 0x47b4).
  Stores 8 bytes from `s0` to a0 (arg0 at entry) +0x10 (`sd` at 0x47b8).
  Performs 3 4-byte loads from a1 (arg1 at entry) +0x5720, including `lw` at 0x47bc, `lw` at 0x47e4, `lw` at 0x487c.
  Performs 11 8-byte loads from a1 (arg1 at entry) +0x2e0, including `ld` at 0x47d4, `ld` at 0x48dc, `ld` at 0x4964.
  Performs 2 8-byte stores to a0 (arg0 at entry) +0x8, including `sd` at 0x4810, `sd` at 0x4890.
  Performs 2 8-byte stores to a0 (arg0 at entry) +0x0, including `sd` at 0x4814, `sd` at 0x4898.
  Performs 2 2-byte stores to a0 (arg0 at entry) +0x1a, including `sh` at 0x481c, `sh` at 0x489c.
  Performs 2 2-byte stores to a0 (arg0 at entry) +0x18, including `sh` at 0x4824, `sh` at 0x48a8.
  Loads 2 bytes from a0 (arg0 at entry) +0x18 into `v1` (`lhu` at 0x482c).
  Performs 2 8-byte loads from a0 (arg0 at entry) +0x10, including `ld` at 0x4830, `ld` at 0x4858.
  Performs 2 8-byte loads from [a0+16]:8 +0x2e0, including `ld` at 0x4834, `ld` at 0x485c.
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `v1` (`ld` at 0x4844).
  Loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+24]:2 + [a0+24]:2) << 0x2)) +0x220000 into `at` (`lw` at 0x484c).
  Stores 4 bytes from `at` to [a0]:8 +0x0 (`sw` at 0x4850).
  Loads 2 bytes from a0 (arg0 at entry) +0x1a into `at` (`lhu` at 0x4854).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a3` (`ld` at 0x486c).
  Loads 4 bytes from ([[a0+16]:8+736]:8 + (([a0+26]:2 + [a0+26]:2) << 0x2)) +0x220000 into `v1` (`lw` at 0x4874).
  Stores 4 bytes from `v1` to [a0+8]:8 +0x0 (`sw` at 0x4878).
  Performs 4 8-byte loads from a1 (arg1 at entry) +0x2828, including `ld` at 0x48b8, `ld` at 0x493c, `ld` at 0x4a20.
  Performs 8 4-byte loads from a1 (arg1 at entry) +0x55f0, including `lw` at 0x4988, `lw` at 0x49e0, `lw` at 0x4a30.
  Performs 4 2-byte loads from a1 (arg1 at entry) +0x2830, including `lhu` at 0x498c, `lhu` at 0x49dc, `lhu` at 0x4ab4.
  Performs 8 4-byte stores to a1 (arg1 at entry) +0x55f0, including `sw` at 0x49d0, `sw` at 0x4a0c, `sw` at 0x4a54.
  Performs 8 8-byte stores to [a1+736]:8 +0x400000, including `sd` at 0x49d8, `sd` at 0x4a14, `sd` at 0x4a2c.
  Performs 2 8-byte stores to a1 (arg1 at entry) +0x2828, including `sd` at 0x4a60, `sd` at 0x4b88.
  Calls `odsy_poll_dfifo_level` via direct with a0=[a1+736]:8, a1=0xe, a2=?, a3=? (`jal` at 0x47d0).
  Calls `mutex_spinlock` via direct with a0=a1+10272, a1=?, a2=?, a3=?, a4=[a1+22304] (`jal` at 0x48b0).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x48cc).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a1+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x48d8).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x48e8).
  Calls `psema` via direct with a0=a1+10256, a1=0x19, a2=a2 at entry (arg2), a3=[a1+22304] (`jal` at 0x48fc).
  Calls `vsema` via direct with a0=a1+10256, a1=a1+10256, a2=?, a3=? (`jal` at 0x4914).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4920).
  Calls `mutex_spinlock` via direct with a0=a1+10272, a1=?, a2=?, a3=[a0+8]:8, a4=0x220000 (`jal` at 0x4934).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=[a1+10280]:8, a4=a1+10256 (`jal` at 0x4954).
  Calls `odsy_poll_dfifo_level` via direct with a0=[a1+736]:8, a1=0xc, a2=?, a3=? (`jal` at 0x4960).
  Calls `vsema` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4970).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4980).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=0x400000, a3=?, a5=-0x2 (`jal` at 0x4a78).
  Calls `vsema` via direct with a0=a1+10256, a1=?, a2=?, a3=[a1+10280]:8, a4=a1+10256 (`jal` at 0x4a8c).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4a98).
  Calls `mutex_spinlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4aa8).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=0x400000, a3=?, a5=-0x2 (`jal` at 0x4ba0).
  The `bltz` at 0x4790 is taken when a2 < 0 (signed) and falls through when a2 >= 0 (signed).
  The `beq` at 0x4798 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `beq` at 0x47a0 is taken when a2 == 0 and falls through when a2 != 0.
  The `beq` at 0x47ac is taken when a2 == v1(=0x1) and falls through when a2 != v1(=0x1).
  The `beq` at 0x47c4 is taken when a3(=[a1+22304]) == 0 and falls through when a3(=[a1+22304]) != 0.
  The `beq` at 0x47dc is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x47e8 is taken when a4(=[a1+22304]) == 0 and falls through when a4(=[a1+22304]) != 0.
  The `beq` at 0x4880 is taken when at(=[a1+22304]) == 0 and falls through when at(=[a1+22304]) != 0.
  The `beq` at 0x48bc is taken when v1(=[a1+10280]:8) == 0 and falls through when v1(=[a1+10280]:8) != 0.
  The `beq` at 0x48e0 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x4948 is taken when a3(=[a1+10280]:8) == 0 and falls through when a3(=[a1+10280]:8) != 0.
  The `beq` at 0x4968 is taken when v0(=ret(odsy_poll_dfifo_level)) == 0 and falls through when v0(=ret(odsy_poll_dfifo_level)) != 0.
  The `beq` at 0x49a4 is taken when 0 >= a6(?) (unsigned) and falls through when 0 < a6(?) (unsigned).
  The `beq` at 0x4a28 is taken when a6(?) == 0 and falls through when a6(?) != 0.
  The `beq` at 0x4acc is taken when 0 >= a6(?) (unsigned) and falls through when 0 < a6(?) (unsigned).
  The `beq` at 0x4b50 is taken when a6(?) == 0 and falls through when a6(?) != 0.
  The `jr` at 0x47f4 returns with v0 = one of 0x0, 0x1, 0x3.

- `odsy_usdelay` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x0, 148 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x5720 into `at` (`lw` at 0x0).
  Calls `in_panic_mode` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x18).
  Calls `us_delay` via direct with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jal` at 0x28).
  Calls `nano_delay` via direct with a0=sp-48, a1=0xf4240, a2=?, a3=? (`jal` at 0x80).
  The `bne` at 0x10 is taken when at(=[a0+22304]) != 0 and falls through when at(=[a0+22304]) == 0.
  The `beq` at 0x20 is taken when v0(=ret(in_panic_mode)) == 0 and falls through when v0(=ret(in_panic_mode)) != 0.
  The `jr` at 0x38 returns with v0 = ?.

- `odsyPipeNrFromBase` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x94, 72 bytes) Inferred.
  Loads 8 bytes from ? (base unknown) into `at` (`ld` at 0xac).
  The `beq` at 0xb0 is taken when at(?) == a0 and falls through when at(?) != a0.
  The `bne` at 0xc0 is taken when a3(?) < 0x2 (signed) and falls through when a3(?) >= 0x2 (signed).
  The `jr` at 0xcc returns with v0 = -0x1.
  The `jr` at 0xd4 returns with v0 = ?.

- `odsy_earlyinit` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0xdc, 512 bytes) Inferred.
  Performs 2 2-byte loads from ? (base unknown), including `lhu` at 0x178, `lhu` at 0x17c.
  Loads 8 bytes from ? (base unknown) into `a0` (`ld` at 0x188).
  Stores 2 bytes from `s3` to ? (base unknown) (`sh` at 0x1ac).
  Performs 2 4-byte stores to ? (base unknown), including `sw` at 0x1b0, `sw` at 0x2b8.
  Performs 4 4-byte loads from ? (base unknown), including `lw` at 0x1ec, `lw` at 0x1f8, `lw` at 0x234.
  Calls `bzero` via direct with a0=sym(OdsyBoards), a1=0xae50, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x110).
  Calls `odsyReset` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x164).
  Calls `odsy_tport_lock_init` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x16c).
  Calls `htp_register_board` via direct with a0=?, a1=sym(odsy_htp_fncs), a2=?, a3=? (`jal` at 0x184).
  Calls `odsyFindBoardAddr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1b4).
  Calls `in_panic_mode` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1dc).
  Calls `init_sema` via direct with a0=?, a1=0x0, a2=0x0, a3=-0x1 (`jal` at 0x210).
  Calls `timeout` via direct with a0=sym(odsy_earlyinit_timeout), a1=?, a2=0xc8, a3=? (`jal` at 0x220).
  Calls `psema` via direct with a0=?, a1=0x19, a2=?, a3=? (`jal` at 0x22c).
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x24c).
  Calls `in_panic_mode` via direct with a0=?, a1=?, a2=?, a3=[sym(.sdata)+8] (`jal` at 0x298).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2c8).
  The `bne` at 0xe4 is taken when at(=[sym(.sdata)+12]) != 0 and falls through when at(=[sym(.sdata)+12]) == 0.
  The `beq` at 0xfc is taken when v1(=[sym(.sdata)+8]) == 0 and falls through when v1(=[sym(.sdata)+8]) != 0.
  The `beq` at 0x190 is taken when s0(?) >= 0x2 (signed) and falls through when s0(?) < 0x2 (signed).
  The `beq` at 0x1a8 is taken when a3(=[sym(.sdata)+8]) == 0 and falls through when a3(=[sym(.sdata)+8]) != 0.
  The `beq` at 0x1bc is taken when v0(=ret(odsyFindBoardAddr)) == 0 and falls through when v0(=ret(odsyFindBoardAddr)) != 0.
  The `bne` at 0x1d4 is taken when v1(=[sym(.sdata)+8]) != 0 and falls through when v1(=[sym(.sdata)+8]) == 0.
  The `bne` at 0x1e4 is taken when v0(=ret(in_panic_mode)) != 0 and falls through when v0(=ret(in_panic_mode)) == 0.
  The `bne` at 0x1f0 is taken when a2(?) != 0 and falls through when a2(?) == 0.
  The `bne` at 0x200 is taken when a3(?) < 0x2 (signed) and falls through when a3(?) >= 0x2 (signed).
  The `bne` at 0x23c is taken when at(?) < 0x2 (signed) and falls through when at(?) >= 0x2 (signed).
  The `bne` at 0x2a0 is taken when v0(=ret(in_panic_mode)) != 0 and falls through when v0(=ret(in_panic_mode)) == 0.
  The `beq` at 0x2ac is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `jr` at 0x290 returns with v0 = ?.

- `odsyInitIntr` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x428, 428 bytes) Inferred.
  Stores 4 bytes from `a1` to ? (base unknown) (`sw` at 0x464).
  Performs 7 8-byte stores to ? (base unknown), including `sd` at 0x484, `sd` at 0x498, `sd` at 0x4ac.
  Performs 12 8-byte loads from ? (base unknown), including `ld` at 0x4e0, `ld` at 0x4ec, `ld` at 0x4f8.
  Performs 5 2-byte stores to ? (base unknown), including `sh` at 0x4f4, `sh` at 0x500, `sh` at 0x50c.
  Calls `device_desc_dup` via direct with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x460).
  Calls `xtalk_intr_alloc` via direct with a0=a1 at entry (arg1), a1=ret(device_desc_dup), a2=a2 at entry (arg2), a3=? (`jal` at 0x474).
  Calls `xtalk_intr_alloc` via direct with a0=a1 at entry (arg1), a1=ret(device_desc_dup), a2=a2 at entry (arg2), a3=? (`jal` at 0x488).
  Calls `xtalk_intr_alloc` via direct with a0=a1 at entry (arg1), a1=ret(device_desc_dup), a2=a2 at entry (arg2), a3=? (`jal` at 0x49c).
  Calls `xtalk_intr_alloc` via direct with a0=a1 at entry (arg1), a1=ret(device_desc_dup), a2=a2 at entry (arg2), a3=? (`jal` at 0x4b0).
  Calls `xtalk_intr_alloc` via direct with a0=a1 at entry (arg1), a1=ret(device_desc_dup), a2=a2 at entry (arg2), a3=? (`jal` at 0x4c4).
  Calls `device_desc_free` via direct with a0=ret(device_desc_dup), a1=?, a2=?, a3=? (`jal` at 0x4d8).
  Calls `xtalk_intr_vector_get` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4e4).
  Calls `xtalk_intr_vector_get` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4f0).
  Calls `xtalk_intr_vector_get` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4fc).
  Calls `xtalk_intr_vector_get` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x508).
  Calls `xtalk_intr_vector_get` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x514).
  Calls `xtalk_intr_connect` via direct with a0=?, a1=sym(odsyXtErrorInterrupt), a2=?, a3=0x0, a4=0x0, a5=0x0 (`jal` at 0x534).
  Calls `xtalk_intr_connect` via direct with a0=?, a1=sym(odsyFlagInterrupt), a2=?, a3=0x0, a4=0x0, a5=0x0 (`jal` at 0x550).
  Calls `xtalk_intr_connect` via direct with a0=?, a1=sym(odsyDmaInterrupt), a2=?, a3=0x0, a4=0x0, a5=0x0 (`jal` at 0x56c).
  Calls `xtalk_intr_connect` via direct with a0=?, a1=sym(odsyRetraceHandler), a2=?, a3=0x0, a4=0x0, a5=0x0 (`jal` at 0x588).
  Calls `xtalk_intr_connect` via direct with a0=?, a1=sym(odsySsyncInterrupt), a2=?, a3=0x0, a4=0x0, a5=0x0 (`jal` at 0x5a4).
  Calls `xtalk_intr_addr_get` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x5ac).
  Calls `xtalk_intr_addr_get` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x5b8).
  The `jr` at 0x5cc returns with v0 = ret(xtalk_intr_addr_get); f0 = ret(xtalk_intr_addr_get).

- `odsyFindBoardAddr` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x5d4, 208 bytes) Inferred.
  Loads 2 bytes from ? (base unknown) into `at` (`lh` at 0x5f0).
  Performs 2 4-byte loads from ret(xtalk_early_piotrans_addr) +0x24, including `lw` at 0x638, `lw` at 0x654.
  Stores 8 bytes from `v0` to ? (base unknown) (`sd` at 0x63c).
  Performs 2 2-byte stores to ? (base unknown), including `sh` at 0x640, `sh` at 0x664.
  Performs 3 4-byte stores to ? (base unknown), including `sw` at 0x648, `sw` at 0x650, `sw` at 0x660.
  Performs 2 8-byte loads from ? (base unknown), including `ld` at 0x688, `ld` at 0x698.
  Calls `xtalk_early_piotrans_addr` via direct with a0=0xc013, a1=0x23, a2=a0 at entry (arg0), a3=0x0, a4=0x401000, a5=0x0 (`jal` at 0x620).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=a3 at entry (arg3) (`jal` at 0x690).
  The `bne` at 0x600 is taken when at(?) != v0(=-0x1) and falls through when at(?) == v0(=-0x1).
  The `beq` at 0x630 is taken when v0(=ret(xtalk_early_piotrans_addr)) == 0 and falls through when v0(=ret(xtalk_early_piotrans_addr)) != 0.
  The `jr` at 0x678 returns with v0 = ?.

- `odsyInitBoardGfx` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x6a4, 536 bytes) Inferred.
  Performs 7 4-byte stores to ? (base unknown), including `sw` at 0x72c, `sw` at 0x730, `sw` at 0x744.
  Performs 2 4-byte loads from ? (base unknown), including `lw` at 0x7b8, `lw` at 0x7e8.
  Performs 3 8-byte stores to ? (base unknown), including `sd` at 0x7c4, `sd` at 0x7d4, `sd` at 0x820.
  Calls `bzero` via direct with a0=?, a1=0xc8, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x6d8).
  Calls `init_sema` via direct with a0=?, a1=0x1, a2=0x0, a3=-0x1 (`jal` at 0x6ec).
  Calls `OdsyInit32kSlotMask` via direct with a0=?, a1=0x0, a2=?, a3=? (`jal` at 0x6f8).
  Calls `init_mutex` via direct with a0=?, a1=0x0, a2=0x0, a3=-0x1 (`jal` at 0x70c).
  Calls `init_sv` via direct with a0=?, a1=0x0, a2=0x0, a3=-0x1 (`jal` at 0x724).
  Calls `init_sema` via direct with a0=?, a1=0x1, a2=sym(.rodata), a3=-0x1 (`jal` at 0x74c).
  Calls `spinlock_init` via direct with a0=?, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x758).
  Calls `init_mutex` via direct with a0=?, a1=0x0, a2=0x0, a3=-0x1 (`jal` at 0x76c).
  Calls `init_mutex` via direct with a0=?, a1=0x0, a2=0x0, a3=-0x1 (`jal` at 0x780).
  Calls `init_sema` via direct with a0=?, a1=0x1, a2=0x0, a3=-0x1 (`jal` at 0x794).
  Calls `odsyInitDDRNs` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x79c).
  Calls `odsyInitHwWrRgn` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x7a4).
  Calls `kmem_zalloc` via direct with a0=0xc000, a1=0x8800, a2=?, a3=? (`jal` at 0x7b0).
  Calls `add_to_inventory` via direct with a0=0x7, a1=0x15, a2=0x0, a3=0x0 (`jal` at 0x808).
  Calls `init_mutex` via direct with a0=?, a1=0x0, a2=sym(.rodata), a3=-0x1 (`jal` at 0x834).
  Calls `init_mutex` via direct with a0=?, a1=0x0, a2=sym(.rodata), a3=-0x1 (`jal` at 0x848).
  Calls `init_mutex` via direct with a0=?, a1=0x0, a2=sym(.rodata), a3=-0x1 (`jal` at 0x85c).
  Calls `GfxRegisterBoard` via direct with a0=sym(odsy_gfx_fncs), a1=?, a2=?, a3=? (`jal` at 0x870).
  The `beq` at 0x7d0 is taken when a0(?) == at(=0x20) and falls through when a0(?) != at(=0x20).
  The `beq` at 0x7d8 is taken when a0(?) == a2(=0x40) and falls through when a0(?) != a2(=0x40).
  The `beq` at 0x7e0 is taken when a0(?) == at(=0x80) and falls through when a0(?) != at(=0x80).
  The `beq` at 0x7ec is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x7f4 is taken when s7(=0x1) == a0(?) and falls through when s7(=0x1) != a0(?).
  The `jr` at 0x888 returns with v0 = ret(GfxRegisterBoard); f0 = ret(GfxRegisterBoard).

- `odsy_init_ddrncount_timeout` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0xe64, 56 bytes) Inferred.
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xe7c).
  Calls `vsema` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0xe84).
  The `jr` at 0xe94 returns with v0 = ret(vsema); f0 = ret(vsema).

- `odsy_earlyinit_timeout` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0xe9c, 28 bytes) Inferred.
  Calls `vsema` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xea4).
  The `jr` at 0xeb0 returns with v0 = ret(vsema); f0 = ret(vsema).

- `odsyZeroOut` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0xeb8, 196 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a2` (`ld` at 0xecc).
  Performs 11 4-byte stores to [a0+736]:8 +0x110000, including `sw` at 0xee4, `sw` at 0xef0, `sw` at 0xefc.
  The `beq` at 0xef4 is taken when a4(?) == a7(=0x231) and falls through when a4(?) != a7(=0x231).
  The `blez` at 0xf0c is taken when a6(?) <= 0 (signed) and falls through when a6(?) > 0 (signed).
  The `bgtz` at 0xf18 is taken when a1(?) > 0 (signed) and falls through when a1(?) <= 0 (signed).
  The `beq` at 0xf24 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `beq` at 0xf30 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `jr` at 0xf5c returns with v0 = 0x0.
- `odsyInitDMA` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x1f40, 240 bytes) Inferred.
  Performs 7 8-byte loads from ? (base unknown), including `ld` at 0x1f90, `ld` at 0x1f98, `ld` at 0x1fa0.
  Performs 10 8-byte stores to ? (base unknown), including `sd` at 0x1f94, `sd` at 0x1f9c, `sd` at 0x1fa4.
  Performs 6 4-byte stores to ? (base unknown), including `sw` at 0x1fbc, `sw` at 0x1fe0, `sw` at 0x2000.
  Performs 2 2-byte stores to ? (base unknown), including `sh` at 0x1fd0, `sh` at 0x1ff8.
  Calls `init_mutex` via direct with a0=?, a1=0x0, a2=0x0, a3=-0x1 (`jal` at 0x1f6c).
  Calls `init_sv` via direct with a0=?, a1=0x0, a2=0x0, a3=-0x1 (`jal` at 0x1f88).
  Calls `OdsyAlloc32kSlot` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1fb0).
  Calls `OdsyAlloc32kSlot` via direct with a0=?, a1=?, a2=(ret(OdsyAlloc32kSlot) + ret(OdsyAlloc32kSlot)), a3=? (`jal` at 0x1fd4).
  The `jr` at 0x2028 returns with v0 = (ret(OdsyAlloc32kSlot) + ret(OdsyAlloc32kSlot)); f0 = ret(OdsyAlloc32kSlot).

- `odsy_DCDResetDone` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x2380, 120 bytes) Inferred.
  Stores 1 byte from `at` to a0 (arg0 at entry) +0x20 (`sb` at 0x2384).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a0` (`ld` at 0x23e0).
  Calls `odsy_i2cDDCRegRead` via direct with a0=a0 at entry (arg0), a1=0x3, a2=sp-48, a3=? (`jal` at 0x23a8).
  Calls `odsy_usdelay` via direct with a0=[a0+16]:8, a1=0x1f4, a2=?, a3=? (`jal` at 0x23dc).
  The `beq` at 0x23b8 is taken when (v1(?) & 0x2) == 0 and falls through when (v1(?) & 0x2) != 0.
  The `bne` at 0x23e8 is taken when s5(?) < 0x1388 (signed) and falls through when s5(?) >= 0x1388 (signed).
  The `jr` at 0x23d0 returns with v0 = one of 0x0, 0x1.

- `odsyInitHwWrRgn` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x3370, 296 bytes) Inferred.
  Loads 8 bytes from ((a0 << 0x3) + sym(flag_desc)) +0x7210 into `v0` (`ld` at 0x337c).
  Performs 6 8-byte stores to ? (base unknown), including `sd` at 0x33ac, `sd` at 0x33d0, `sd` at 0x3400.
  Stores 4 bytes from `zero` to ? (base unknown) (`sw` at 0x33c8).
  Loads 8 bytes from ? (base unknown) into `v0` (`ld` at 0x346c).
  Calls `printf` via direct with a0=sym(.rodata), a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x3458).
  Calls `kmem_zalloc` via direct with a0=0x20000, a1=0x8800, a2=sym(flag_desc), a3=a3 at entry (arg3) (`jal` at 0x347c).
  The `beq` at 0x3388 is taken when v0(=[((a0 << 0x3) + sym(flag_desc))+29200]:8) == 0 and falls through when v0(=[((a0 << 0x3) + sym(flag_desc))+29200]:8) != 0.
  The `bne` at 0x33cc is taken when a0(?) < 0x4 (unsigned) and falls through when a0(?) >= 0x4 (unsigned).
  The `beq` at 0x33d4 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `beq` at 0x33ec is taken when (v0(?) & 0xffff) == 0 and falls through when (v0(?) & 0xffff) != 0.
  The `bne` at 0x340c is taken when (a0(?) & 0xffff) != 0 and falls through when (a0(?) & 0xffff) == 0.
  The `beq` at 0x341c is taken when a1(?) >= 0x4 (unsigned) and falls through when a1(?) < 0x4 (unsigned).
  The `bne` at 0x3438 is taken when a1(?) < 0x4 (unsigned) and falls through when a1(?) >= 0x4 (unsigned).
  The `jr` at 0x3444 returns with v0 = ?.

- `odsy_teardown` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`, 0x3498, 160 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x2d8 into `at` (`lw` at 0x34bc).
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x2d8 (`sw` at 0x34cc).
  Loads 8 bytes from a0 (arg0 at entry) +0x2e0 into `a0` (`ld` at 0x3500).
  Calls `psema` via direct with a0=a0+4648, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x34b4).
  Calls `vsema` via direct with a0=a0+4648, a1=?, a2=?, a3=? (`jal` at 0x34d4).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x34f4).
  Calls `odsyPrintRegs` via direct with a0=[a0+736]:8, a1=?, a2=?, a3=? (`jal` at 0x34fc).
  Calls `gthread_scan` via direct with a0=sym(GfxKiller), a1=sp-64, a2=0x9, a3=? (`jal` at 0x3518).
  Calls `vsema` via direct with a0=a0+4648, a1=?, a2=?, a3=? (`jal` at 0x3524).
  The `beq` at 0x34c8 is taken when at(=[a0+728]+1) == v0(=0x1) and falls through when at(=[a0+728]+1) != v0(=0x1).
  The `jr` at 0x34e4 returns with v0 = ret(vsema); f0 = ret(vsema).

- `odsyUnpinAndUnmapGctxRegions` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`, 0x570, 236 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x78 into `at` (`ld` at 0x570).
  Loads 8 bytes from a0 (arg0 at entry) +0x60 into `a0` (`ld` at 0x584).
  Loads 8 bytes from a0 (arg0 at entry) +0x68 into `a0` (`ld` at 0x5a4).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x68 (`sd` at 0x5ac).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x60 (`sd` at 0x5b0).
  Performs 3 8-byte loads from ret(OdsyNextCSetElem) +0x10, including `ld` at 0x5d8, `ld` at 0x600, `ld` at 0x614.
  Loads 8 bytes from ret(OdsyNextCSetElem) +0x8 into `a0` (`ld` at 0x5e0).
  Calls `unmaputokv` via direct with a0=[a0+96]:8, a1=0x2b78, a2=?, a3=? (`jal` at 0x590).
  Calls `unuseracc` via direct with a0=[a0+104]:8, a1=0x2b78, a2=0x111, a3=? (`jal` at 0x5a0).
  Calls `OdsyInitCSetCursor` via direct with a0=a0+224, a1=?, a2=?, a3=? (`jal` at 0x5bc).
  Calls `OdsyNextCSetElem` via direct with a0=a0+224, a1=?, a2=?, a3=? (`jal` at 0x5c4).
  Calls `kmem_free` via direct with a0=[ret(OdsyNextCSetElem)+8]:8, a1=0x4000, a2=?, a3=? (`jal` at 0x5dc).
  Calls `kmem_free` via direct with a0=ret(OdsyNextCSetElem), a1=0x20, a2=?, a3=? (`jal` at 0x5e8).
  Calls `OdsyNextCSetElem` via direct with a0=a0+224, a1=?, a2=?, a3=? (`jal` at 0x5f0).
  Calls `odsyUnmapPages` via direct with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=? (`jal` at 0x60c).
  Calls `OdsyDestroyCSet` via direct with a0=a0+224, a1=0x0, a2=?, a3=? (`jal` at 0x630).
  Calls `odsyUnmapPages` via direct with a0=a0+128, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x64c).
  The `bne` at 0x57c is taken when at(=[a0+120]:8) != 0 and falls through when at(=[a0+120]:8) == 0.
  The `beq` at 0x588 is taken when a0(=[a0+96]:8) == 0 and falls through when a0(=[a0+96]:8) != 0.
  The `beq` at 0x5cc is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x5f8 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x604 is taken when v1(=[ret(OdsyNextCSetElem)+16]:8) == 0 and falls through when v1(=[ret(OdsyNextCSetElem)+16]:8) != 0.
  The `beq` at 0x618 is taken when a1(=[ret(OdsyNextCSetElem)+16]:8) == 0 and falls through when a1(=[ret(OdsyNextCSetElem)+16]:8) != 0.
  The `jr` at 0x640 returns with v0 = ret(OdsyDestroyCSet); f0 = ret(OdsyDestroyCSet).

- `odsyUnmap` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`, 0x65c, 96 bytes) Inferred.
  Performs 3 8-byte loads from ? (base unknown), including `ld` at 0x690, `ld` at 0x694, `ld` at 0x698.
  Calls `as_lookup_current` via direct with a0=sp-96, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x670).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=sp-80, a3=0x0 (`jalr` at 0x6a4).
  The `jr` at 0x6b4 returns with v0 = ret(?); f0 = ret(?).

- `odsyUnpinAndUnmapSGRegions` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`, 0x6bc, 160 bytes) Inferred.
  Performs 3 8-byte loads from ret(OdsyNextCSetElem) +0x8, including `ld` at 0x6ec, `ld` at 0x714, `ld` at 0x738.
  Loads 8 bytes from ret(OdsyNextCSetElem) +0x10 into `at` (`ld` at 0x720).
  Calls `OdsyInitCSetCursor` via direct with a0=a0+104, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x6cc).
  Calls `OdsyNextCSetElem` via direct with a0=a0+104, a1=?, a2=?, a3=? (`jal` at 0x6d8).
  Calls `kmem_free` via direct with a0=[ret(OdsyNextCSetElem)+8]:8, a1=0x4000, a2=?, a3=? (`jal` at 0x6f0).
  Calls `kmem_free` via direct with a0=ret(OdsyNextCSetElem), a1=0x20, a2=?, a3=? (`jal` at 0x6fc).
  Calls `OdsyNextCSetElem` via direct with a0=a0+104, a1=?, a2=?, a3=? (`jal` at 0x704).
  Calls `odsyUnmapPages` via direct with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=? (`jal` at 0x72c).
  Calls `OdsyDestroyCSet` via direct with a0=a0+104, a1=0x0, a2=?, a3=? (`jal` at 0x744).
  The `beq` at 0x6e0 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x70c is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x718 is taken when a0(=[ret(OdsyNextCSetElem)+8]:8) == 0 and falls through when a0(=[ret(OdsyNextCSetElem)+8]:8) != 0.
  The `beq` at 0x724 is taken when at(=[ret(OdsyNextCSetElem)+16]:8) == 0 and falls through when at(=[ret(OdsyNextCSetElem)+16]:8) != 0.
  The `jr` at 0x754 returns with v0 = ret(OdsyDestroyCSet); f0 = ret(OdsyDestroyCSet).

- `odsyPinAndMapASRegions` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`, 0x75c, 132 bytes) Inferred.
  Performs 2 8-byte loads from a0 (arg0 at entry) +0x8, including `ld` at 0x760, `ld` at 0x7c0.
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x38 (`sd` at 0x764).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x28 (`sd` at 0x768).
  Loads 8 bytes from [a0+8]:8 +0x8 into `a2` (`ld` at 0x790).
  Loads 8 bytes from [a0+8]:8 +0x10 into `a2` (`ld` at 0x7d4).
  Calls `odsyMapPages` via direct with a0=0x0, a1=a0+32, a2=[[a0+8]:8+8]:8, a3=0x10000, a4=sym(.data), a5=0x1, a6=a0+40 (`jal` at 0x78c).
  Calls `odsyMapPages` via direct with a0=0x0, a1=a0+48, a2=[[a0+8]:8+16]:8, a3=0xc000, a4=sym(.data), a5=0x1, a6=a0+56 (`jal` at 0x7d0).
  The `beq` at 0x798 is taken when v0(=ret(odsyMapPages)) == 0 and falls through when v0(=ret(odsyMapPages)) != 0.
  The `jr` at 0x7a4 returns with v0 = ret(odsyMapPages); f0 = ret(odsyMapPages).

- `odsyUnpinAndUnmapASRegions` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`, 0x7e0, 104 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x28 into `at` (`ld` at 0x7e4).
  Loads 8 bytes from a0 (arg0 at entry) +0x38 into `v1` (`ld` at 0x7fc).
  Calls `odsyUnmapPages` via direct with a0=a0+40, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x81c).
  Calls `odsyUnmapPages` via direct with a0=a0+56, a1=?, a2=?, a3=? (`jal` at 0x834).
  The `bne` at 0x7f4 is taken when at(=[a0+40]:8) != 0 and falls through when at(=[a0+40]:8) == 0.
  The `bne` at 0x800 is taken when v1(=[a0+56]:8) != 0 and falls through when v1(=[a0+56]:8) == 0.
  The `jr` at 0x810 returns with v0 = ?.

- `odsyPinAndMapPfStatRegions` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`, 0x848, 96 bytes) Inferred.
  Performs 2 4-byte loads from a0 (arg0 at entry) +0x2840, including `lw` at 0x86c, `lw` at 0x88c.
  Loads 8 bytes from a0 (arg0 at entry) +0x2848 into `a2` (`ld` at 0x898).
  Calls `odsyMapPages` via direct with a0=0x0, a1=a0+10320, a2=[a0+10312]:8, a3=[a0+10304], a4=sp-64, a5=0x1, a6=a0+10328 (`jal` at 0x894).
  The `jr` at 0x8a0 returns with v0 = ret(odsyMapPages); f0 = ret(odsyMapPages).

- `odsyUnpinAndUnmapPfStatRegions` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`, 0x8a8, 48 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x2848 into `at` (`ld` at 0x8a8).
  Calls `odsyUnmapPages` via direct with a0=a0+10328, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x8c8).
  The `bne` at 0x8b0 is taken when at(=[a0+10312]:8) != 0 and falls through when at(=[a0+10312]:8) == 0.
  The `jr` at 0x8bc returns with v0 = ?.

- `odsyUnmapPages` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)`, 0x9bc, 40 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `at` (`ld` at 0x9bc).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x0 (`sd` at 0x9c8).
  Calls `gfxdd_munmap` via direct with a0=[a0]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x9cc).
  The `jr` at 0x9dc returns with v0 = 0x0; f0 = ret(gfxdd_munmap).

- `odsyMMinit` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x0, 448 bytes) Inferred.
  Stores 8 bytes from `zero` to a1 (arg1 at entry) +0x4e8 (`sd` at 0x2c).
  Stores 4 bytes from `v1` to a1 (arg1 at entry) +0x4e0 (`sw` at 0x40).
  Stores 8 bytes from `at` to a1 (arg1 at entry) +0x0 (`sd` at 0x50).
  Performs 5 8-byte stores to ? (base unknown), including `sd` at 0x68, `sd` at 0xa4, `sd` at 0xb8.
  Stores 8 bytes from `v1` to a1 (arg1 at entry) +0x4f8 (`sd` at 0x6c).
  Stores 8 bytes from `v0` to a1 (arg1 at entry) +0x4f0 (`sd` at 0x74).
  Stores 8 bytes from `zero` to a1 (arg1 at entry) +0x578 (`sd` at 0xa8).
  Stores 4 bytes from `a6` to a1 (arg1 at entry) +0x570 (`sw` at 0xb4).
  Loads 4 bytes from ? (base unknown) into `v0` (`lw` at 0xc0).
  Performs 3 4-byte stores to ? (base unknown), including `sw` at 0xc4, `sw` at 0xc8, `sw` at 0xe4.
  Stores 2 bytes from `a1` to ? (base unknown) (`sh` at 0xd0).
  Loads 8 bytes from ? (base unknown) into `a2` (`ld` at 0xfc).
  Stores 1 byte from `a6` to a1 (arg1 at entry) +0x248 (`sb` at 0x118).
  Stores 1 byte from `a5` to a1 (arg1 at entry) +0x1c0 (`sb` at 0x124).
  Stores 1 byte from `a2` to ? (base unknown) (`sb` at 0x144).
  Stores 1 byte from `at` to a1 (arg1 at entry) +0xb0 (`sb` at 0x14c).
  Stores 4 bytes from `zero` to a1 (arg1 at entry) +0x34 (`sw` at 0x150).
  Stores 4 bytes from `zero` to a1 (arg1 at entry) +0x30 (`sw` at 0x154).
  Stores 4 bytes from `zero` to a1 (arg1 at entry) +0x2c (`sw` at 0x158).
  Stores 4 bytes from `a5` to a1 (arg1 at entry) +0x40 (`sw` at 0x15c).
  Stores 4 bytes from `a1` to a1 (arg1 at entry) +0x3c (`sw` at 0x164).
  Stores 4 bytes from `a0` to a1 (arg1 at entry) +0x38 (`sw` at 0x168).
  Stores 1 byte from `a6` to a1 (arg1 at entry) +0x29 (`sb` at 0x16c).
  Stores 4 bytes from `zero` to a1 (arg1 at entry) +0x50 (`sw` at 0x170).
  Stores 2 bytes from `zero` to a1 (arg1 at entry) +0x18 (`sh` at 0x174).
  Stores 8 bytes from `zero` to a1 (arg1 at entry) +0x20 (`sd` at 0x178).
  Stores 4 bytes from `v0` to a1 (arg1 at entry) +0xd8 (`sw` at 0x180).
  Stores 4 bytes from `v0` to a1 (arg1 at entry) +0x270 (`sw` at 0x184).
  Stores 4 bytes from `v0` to a1 (arg1 at entry) +0x1e8 (`sw` at 0x188).
  Loads 4 bytes from a1 (arg1 at entry) +0x58 into `v1` (`lw` at 0x18c).
  Stores 4 bytes from `ra` to a1 (arg1 at entry) +0x48 (`sw` at 0x190).
  Stores 4 bytes from `ra` to a1 (arg1 at entry) +0x44 (`sw` at 0x194).
  Stores 1 byte from `zero` to a1 (arg1 at entry) +0x28 (`sb` at 0x1a4).
  Stores 4 bytes from `v0` to a1 (arg1 at entry) +0x58 (`sw` at 0x1b0).
  Calls `odsyPipeNrFromBase` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xc).
  The `bne` at 0x64 is taken when a1(?) < 0x10 (signed) and falls through when a1(?) >= 0x10 (signed).
  The `bne` at 0xa0 is taken when a1(?) < 0x4 (signed) and falls through when a1(?) >= 0x4 (signed).
  The `beq` at 0xf0 is taken when a1(?) >= 0x10 (signed) and falls through when a1(?) < 0x10 (signed).
  The `beq` at 0x100 is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `bne` at 0x140 is taken when a1(?) < 0x4 (signed) and falls through when a1(?) >= 0x4 (signed).
  The `jr` at 0x1b8 returns with v0 = ?; f0 = ret(odsyPipeNrFromBase).

- `odsyInitMM` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x1c0, 116 bytes) Inferred.
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x950 (`sd` at 0x1e8).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x948 (`sd` at 0x1ec).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x93c (`sw` at 0x1f0).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x938 (`sw` at 0x1f4).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x940 (`sd` at 0x1f8).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x984 (`sw` at 0x1fc).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x97c (`sw` at 0x204).
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x974 (`sw` at 0x20c).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x96c (`sw` at 0x210).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x978 (`sw` at 0x214).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x970 (`sw` at 0x218).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x968 (`sw` at 0x220).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x960 (`sd` at 0x224).
  Calls `OdsyInitCSet` via direct with a0=a0+2232, a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1d4).
  Calls `OdsyInitCSet` via direct with a0=a0+2272, a1=0x4, a2=?, a3=? (`jal` at 0x1e0).
  The `jr` at 0x22c returns with v0 = 0xc80; f0 = ret(OdsyInitCSet).

- `mm_init_freespace` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x234, 316 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x694 into `v1` (`lw` at 0x234).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a1` (`ld` at 0x238).
  Performs 2 4-byte loads from a0 (arg0 at entry) +0xd8, including `lw` at 0x23c, `lw` at 0x360.
  Loads 4 bytes from [a0]:8 +0xfc into `a1` (`lw` at 0x240).
  Loads 4 bytes from a0 (arg0 at entry) +0x68c into `v0` (`lw` at 0x244).
  Loads 4 bytes from a0 (arg0 at entry) +0x684 into `at` (`lw` at 0x250).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0x698 (`sw` at 0x27c).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x668 (`sd` at 0x280).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x660 (`sd` at 0x284).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0x654 (`sw` at 0x288).
  Stores 4 bytes from `a3` to a0 (arg0 at entry) +0x650 (`sw` at 0x28c).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x658 (`sd` at 0x290).
  Stores 8 bytes from `a6` to a0 (arg0 at entry) +0x6a0 (`sd` at 0x2ec).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x6bc (`sw` at 0x308).
  Stores 8 bytes from `ra` to a0 (arg0 at entry) +0x6a8 (`sd` at 0x314).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x6b0 (`sd` at 0x31c).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x6b8 (`sw` at 0x324).
  Loads 4 bytes from a0 (arg0 at entry) +0x698 into `a1` (`lw` at 0x354).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x684 (`sw` at 0x358).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x68c (`sw` at 0x35c).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x694 (`sw` at 0x364).
  Calls `kabi_num_lockable_pages` via direct with a0=?, a1=?, a2=?, a3=?, a4=0x64 (`jal` at 0x2ac).
  Calls `kabi_num_lockable_pages` via direct with a0=?, a1=?, a2=?, a3=?, a7=0x64 (`jal` at 0x2e8).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=a2 at entry (arg2), a3=? (`jal` at 0x33c).
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x34c).
  The `bne` at 0x278 is taken when a1(?) < at(=([a0+1668] + ([a0+1676] + [a0+1684]))) (signed) and falls through when a1(?) >= at(=([a0+1668] + ([a0+1676] + [a0+1684]))) (signed).
  The `jr` at 0x330 returns with v0 = 0x1; f0 = ret(kabi_num_lockable_pages).

- `gfP_OdsyMMdebug` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x370, 852 bytes) Inferred.
  Performs 10 4-byte stores to a3 (arg3 at entry) +0x0, including `sw` at 0x378, `sw` at 0x414, `sw` at 0x498.
  Performs 11 8-byte loads from a0 (arg0 at entry) +0x20, including `ld` at 0x3a0, `ld` at 0x3d8, `ld` at 0x418.
  Loads 8 bytes from [a0+32]:8 +0x48 into `a4` (`ld` at 0x3dc).
  Performs 6 4-byte loads from [a0+32]:8 +0x50, including `lw` at 0x3f8, `lw` at 0x41c, `lw` at 0x4a0.
  Performs 6 4-byte stores to [a0+32]:8 +0x50, including `sw` at 0x40c, `sw` at 0x424, `sw` at 0x4a8.
  Performs 4 4-byte loads from a3 (arg3 at entry) +0x0, including `lw` at 0x428, `lw` at 0x4b4, `lw` at 0x5b0.
  Performs 2 8-byte loads from ? (base unknown), including `ld` at 0x464, `ld` at 0x514.
  Performs 3 4-byte loads from ? (base unknown), including `lw` at 0x470, `lw` at 0x53c, `lw` at 0x548.
  Stores 8 bytes from `s1` to [a0+32]:8 +0x48 (`sd` at 0x5fc).
  Performs 2 4-byte loads from [a0+32]:8 +0x68, including `lw` at 0x604, `lw` at 0x61c.
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-160, a2=0x18, a3=a3 at entry (arg3) (`jal` at 0x39c).
  Calls `SpewObjectToUser` via direct with a0=[a0+32]:8+768, a1=-0x1, a2=-0x1, a3=0x0, a4=sp-128, a5=sp-136, a6=[[a0+32]:8+80]+1 (`jal` at 0x408).
  Calls `SpewObjectToUser` via direct with a0=?, a1=0x0, a2=-0x2, a3=?, a4=sp-128, a5=sp-136 (`jal` at 0x48c).
  Calls `OdsyInitCSetCursor` via direct with a0=[a0+32]:8+2232, a1=?, a2=?, a3=? (`jal` at 0x4bc).
  Calls `OdsyNextCSetElem` via direct with a0=[a0+32]:8+2232, a1=?, a2=?, a3=? (`jal` at 0x4c4).
  Calls `OdsyInitCSetCursor` via direct with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=? (`jal` at 0x4e4).
  Calls `OdsyNextCSetElem` via direct with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=? (`jal` at 0x4f0).
  Calls `SpewObjectToUser` via direct with a0=?, a1=?, a2=?, a3=?, a4=sp-128, a5=sp-136 (`jal` at 0x544).
  Calls `OdsyNextCSetElem` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x564).
  Calls `OdsyNextCSetElem` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x574).
  Calls `copyout` via direct with a0=sp-136, a1=?, a2=0x4, a3=? (`jal` at 0x58c).
  Calls `psema` via direct with a0=[a0+32]:8+56, a1=0x219, a2=?, a3=?, a4=[[a0+32]:8+72]:8 (`jal` at 0x5f0).
  Calls `us_delay` via direct with a0=0x2, a1=?, a2=?, a3=? (`jal` at 0x610).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x638).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x658).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a5=[[a0+32]:8+80]-1, a6=[a0+32]:8 (`jal` at 0x68c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=0xe, a3=? (`jal` at 0x6b4).
  The `bne` at 0x3a4 is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `beq` at 0x3b0 is taken when v0(?) == at(=0x2) and falls through when v0(?) != at(=0x2).
  The `bne` at 0x3b8 is taken when v0(?) != v1(=0x1) and falls through when v0(?) == v1(=0x1).
  The `bne` at 0x3d0 is taken when v0(?) < 0x11 (signed) and falls through when v0(?) >= 0x11 (signed).
  The `bne` at 0x3e0 is taken when a4(=[[a0+32]:8+72]:8) != s1(=a0) and falls through when a4(=[[a0+32]:8+72]:8) == s1(=a0).
  The `beq` at 0x410 is taken when v0(=ret(SpewObjectToUser)) == 0 and falls through when v0(=ret(SpewObjectToUser)) != 0.
  The `beq` at 0x458 is taken when s4(?) >= 0x10 (signed) and falls through when s4(?) < 0x10 (signed).
  The `beq` at 0x468 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x478 is taken when (a1(?) & 0x1) == 0 and falls through when (a1(?) & 0x1) != 0.
  The `beq` at 0x494 is taken when v0(=ret(SpewObjectToUser)) == 0 and falls through when v0(=ret(SpewObjectToUser)) != 0.
  The `beq` at 0x4cc is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x4f8 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x51c is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x528 is taken when a4(?) >= at(?) (unsigned) and falls through when a4(?) < at(?) (unsigned).
  The `bne` at 0x54c is taken when v0(=ret(SpewObjectToUser)) != 0 and falls through when v0(=ret(SpewObjectToUser)) == 0.
  The `bne` at 0x55c is taken when s2(?) < 0x10 (signed) and falls through when s2(?) >= 0x10 (signed).
  The `bne` at 0x56c is taken when v0(=ret(OdsyNextCSetElem)) != 0 and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `bne` at 0x57c is taken when v0(=ret(OdsyNextCSetElem)) != 0 and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `bne` at 0x594 is taken when v0(=ret(copyout)) != 0 and falls through when v0(=ret(copyout)) == 0.
  The `beq` at 0x608 is taken when a4(=[[a0+32]:8+104]) == 0 and falls through when a4(=[[a0+32]:8+104]) != 0.
  The `bne` at 0x620 is taken when at(=[[a0+32]:8+104]) != 0 and falls through when at(=[[a0+32]:8+104]) == 0.
  The `jr` at 0x43c returns with v0 = ?.

- `SpewObjectToUser` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x6c4, 232 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x38 into `at` (`lw` at 0x6cc).
  Loads 4 bytes from ? (base unknown) into `v1` (`lw` at 0x704).
  Stores 4 bytes from `v1` to ? (base unknown) (`sw` at 0x710).
  Loads 4 bytes from a0 (arg0 at entry) +0x3c into `a4` (`lw` at 0x714).
  Performs 2 4-byte loads from a0 (arg0 at entry) +0x40, including `lw` at 0x728, `lw` at 0x734.
  Loads 4 bytes from a0 (arg0 at entry) +0x68 into `a0` (`lw` at 0x740).
  Performs 2 8-byte loads from a4 (arg4 at entry) +0x0, including `ld` at 0x758, `ld` at 0x774.
  Loads 4 bytes from a5 (arg5 at entry) +0x0 into `a7` (`lw` at 0x768).
  Stores 4 bytes from `a7` to a5 (arg5 at entry) +0x0 (`sw` at 0x770).
  Stores 8 bytes from `a6` to a4 (arg4 at entry) +0x0 (`sd` at 0x780).
  Calls `copyout` via direct with a0=sp-144, a1=[a4]:8, a2=0x44, a3=a3 at entry (arg3), a4=[a0+60] (`jal` at 0x754).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x798).
  The `bgtz` at 0x70c is taken when v0(?) > 0 (signed) and falls through when v0(?) <= 0 (signed).
  The `bne` at 0x75c is taken when v0(=ret(copyout)) != 0 and falls through when v0(=ret(copyout)) == 0.
  The `jr` at 0x788 returns with v0 = one of 0x0, 0xe.

- `gfP_OdsyMMattach` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x7ac, 1088 bytes) Inferred.
  Performs 10 8-byte loads from a0 (arg0 at entry) +0x20, including `ld` at 0x7b4, `ld` at 0x8c4, `ld` at 0x91c.
  Loads 8 bytes from ret(odsyGctxFromRnid) +0x68 into `v1` (`ld` at 0x808).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a4` (`ld` at 0x818).
  Loads 8 bytes from [a0]:8 +0x8 into `a4` (`ld` at 0x81c).
  Performs 11 4-byte stores to a3 (arg3 at entry) +0x0, including `sw` at 0x828, `sw` at 0x854, `sw` at 0x93c.
  Stores 8 bytes from `zero` to ret(odsyGctxFromRnid) +0x98 (`sd` at 0x864).
  Stores 4 bytes from `a5` to ret(odsyGctxFromRnid) +0xa0 (`sw` at 0x87c).
  Loads 8 bytes from [a0+32]:8 +0x48 into `v1` (`ld` at 0x8c8).
  Performs 7 4-byte loads from [a0+32]:8 +0x50, including `lw` at 0x8d4, `lw` at 0x920, `lw` at 0x98c.
  Performs 6 4-byte stores to [a0+32]:8 +0x50, including `sw` at 0x8dc, `sw` at 0x928, `sw` at 0x994.
  Loads 8 bytes from ret(odsyGctxFromRnid) +0x98 into `v1` (`ld` at 0x908).
  Stores 8 bytes from `a6` to ? (base unknown) (`sd` at 0x964).
  Performs 3 4-byte stores to ? (base unknown), including `sw` at 0x968, `sw` at 0x978, `sw` at 0x9a8.
  Performs 5 4-byte loads from ? (base unknown), including `lw` at 0x96c, `lw` at 0x99c, `lw` at 0x9b0.
  Performs 7 8-byte loads from ? (base unknown), including `ld` at 0x970, `ld` at 0x980, `ld` at 0x9b8.
  Stores 8 bytes from `v0` to [a0+32]:8 +0x48 (`sd` at 0xa20).
  Performs 2 4-byte loads from [a0+32]:8 +0x68, including `lw` at 0xa28, `lw` at 0xa44.
  Loads 4 bytes from a3 (arg3 at entry) +0x0 into `v0` (`lw` at 0xaa8).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-192, a2=0x48, a3=a3 at entry (arg3) (`jal` at 0x7d8).
  Calls `odsyGctxFromRnid` via direct with a0=?, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x7ec).
  Calls `odsyPinAndMapGctxSwShadowRgn` via direct with a0=ret(odsyGctxFromRnid), a1=a3 at entry (arg3), a2=?, a3=?, a5=a0 at entry (arg0) (`jal` at 0x840).
  Calls `OdsyInitCSet` via direct with a0=ret(odsyGctxFromRnid)+184, a1=0x4, a2=?, a3=ret(odsyPinAndMapGctxSwShadowRgn), a5=-0x1 (`jal` at 0x878).
  Calls `OdsyInitCSet` via direct with a0=ret(odsyGctxFromRnid)+224, a1=0x4, a2=?, a3=? (`jal` at 0x884).
  Calls `OdsyInitCSet` via direct with a0=ret(odsyGctxFromRnid)+264, a1=0x4, a2=?, a3=? (`jal` at 0x890).
  Calls `OdsyAllocSpecificCSetId` via direct with a0=?, a1=?, a2=0x1, a3=? (`jal` at 0x8a8).
  Calls `odsyGctxFromRnid` via direct with a0=?, a1=?, a2=?, a3=?, a5=[[a0+32]:8+80]+1 (`jal` at 0x8f4).
  Calls `OdsyAllocCSetId` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x948).
  Calls `copyout` via direct with a0=sp-192, a1=a2 at entry (arg2), a2=0x48, a3=ret(OdsyAllocCSetId), a4=-0x1 (`jal` at 0x9f4).
  Calls `psema` via direct with a0=[a0+32]:8+56, a1=0x219, a2=?, a3=?, a4=a0 at entry (arg0) (`jal` at 0xa10).
  Calls `us_delay` via direct with a0=0x2, a1=?, a2=?, a3=? (`jal` at 0xa34).
  Calls `odsy_mm_sg_new` via direct with a0=a0 at entry (arg0), a1=?, a2=a3 at entry (arg3), a3=?, a5=[[a0+32]:8+80]+1 (`jal` at 0xa64).
  Calls `copyout` via direct with a0=sp-192, a1=a2 at entry (arg2), a2=0x48, a3=[[a0+32]:8+80]-1, a4=[a0+32]:8 (`jal` at 0xa94).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0xab0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a5=a0 at entry (arg0) (`jal` at 0xad8).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=[[a0]:8+8]:8, a5=a0 at entry (arg0) (`jal` at 0xafc).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a5=[[a0+32]:8+80]-1, a6=[a0+32]:8 (`jal` at 0xb38).
  Calls `odsy_mm_sg_destroy` via direct with a0=?, a1=?, a2=?, a3=ret(OdsyAllocCSetId), a4=-0x1 (`jal` at 0xb64).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0xb88).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0xbac).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0xbd0).
  The `bne` at 0x7e0 is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `beq` at 0x800 is taken when v0(=ret(odsyGctxFromRnid)) == 0 and falls through when v0(=ret(odsyGctxFromRnid)) != 0.
  The `beq` at 0x810 is taken when v1(=[ret(odsyGctxFromRnid)+104]:8) == 0 and falls through when v1(=[ret(odsyGctxFromRnid)+104]:8) != 0.
  The `bne` at 0x820 is taken when a4(=[[a0]:8+8]:8) != a5(=a0) and falls through when a4(=[[a0]:8+8]:8) == a5(=a0).
  The `beq` at 0x84c is taken when v0(=ret(odsyPinAndMapGctxSwShadowRgn)) == 0 and falls through when v0(=ret(odsyPinAndMapGctxSwShadowRgn)) != 0.
  The `beq` at 0x8b8 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `bne` at 0x8cc is taken when v1(=[[a0+32]:8+72]:8) != a4(=a0) and falls through when v1(=[[a0+32]:8+72]:8) == a4(=a0).
  The `beq` at 0x8e4 is taken when a3(?) == 0 and falls through when a3(?) != 0.
  The `beq` at 0x8ec is taken when at(=-0x1) == a3(?) and falls through when at(=-0x1) != a3(?).
  The `beq` at 0x900 is taken when v0(=ret(odsyGctxFromRnid)) == 0 and falls through when v0(=ret(odsyGctxFromRnid)) != 0.
  The `bne` at 0x910 is taken when v1(=[ret(odsyGctxFromRnid)+152]:8) != 0 and falls through when v1(=[ret(odsyGctxFromRnid)+152]:8) == 0.
  The `beq` at 0x954 is taken when v0(=ret(OdsyAllocCSetId)) == a4(=-0x1) and falls through when v0(=ret(OdsyAllocCSetId)) != a4(=-0x1).
  The `bne` at 0x9fc is taken when v0(=ret(copyout)) != 0 and falls through when v0(=ret(copyout)) == 0.
  The `beq` at 0xa2c is taken when v1(=[[a0+32]:8+104]) == 0 and falls through when v1(=[[a0+32]:8+104]) != 0.
  The `bne` at 0xa48 is taken when a4(=[[a0+32]:8+104]) != 0 and falls through when a4(=[[a0+32]:8+104]) == 0.
  The `bne` at 0xa6c is taken when v0(=ret(odsy_mm_sg_new)) != 0 and falls through when v0(=ret(odsy_mm_sg_new)) == 0.
  The `bne` at 0xa9c is taken when v0(=ret(copyout)) != 0 and falls through when v0(=ret(copyout)) == 0.
  The `bne` at 0xb5c is taken when at(?) != 0 and falls through when at(?) == 0.
  The `jr` at 0x830 returns with v0 = ?.

- `odsyMMdetach` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0xbec, 224 bytes) Inferred.
  Loads 8 bytes from a1 (arg1 at entry) +0x98 into `s1` (`ld` at 0xbf4).
  Performs 5 8-byte loads from a0 (arg0 at entry) +0x20, including `ld` at 0xc0c, `ld` at 0xc50, `ld` at 0xc80.
  Loads 8 bytes from [a0+32]:8 +0x48 into `at` (`ld` at 0xc10).
  Performs 3 4-byte loads from [a0+32]:8 +0x50, including `lw` at 0xc1c, `lw` at 0xc54, `lw` at 0xcb4.
  Performs 2 4-byte stores to [a0+32]:8 +0x50, including `sw` at 0xc30, `sw` at 0xc5c.
  Stores 8 bytes from `zero` to a1 (arg1 at entry) +0x98 (`sd` at 0xc34).
  Loads 4 bytes from [a1+152]:8 +0x10 into `v1` (`lw` at 0xc38).
  Stores 4 bytes from `v1` to [a1+152]:8 +0x10 (`sw` at 0xc4c).
  Stores 8 bytes from `s0` to [a0+32]:8 +0x48 (`sd` at 0xc84).
  Performs 2 4-byte loads from [a0+32]:8 +0x68, including `lw` at 0xc8c, `lw` at 0xca4.
  Calls `odsy_mm_sg_remove_gctx` via direct with a0=[a1+152]:8, a1=a1 at entry (arg1), a2=?, a3=[a0+32]:8 (`jal` at 0xc2c).
  Calls `psema` via direct with a0=[a0+32]:8+56, a1=0x219, a2=a2 at entry (arg2), a3=[a0+32]:8 (`jal` at 0xc78).
  Calls `us_delay` via direct with a0=0x2, a1=?, a2=?, a3=[a0+32]:8 (`jal` at 0xc98).
  Calls `odsy_mm_sg_destroy` via direct with a0=[a1+152]:8, a1=?, a2=?, a3=? (`jal` at 0xcbc).
  The `beq` at 0xc04 is taken when s1(=[a1+152]:8) == 0 and falls through when s1(=[a1+152]:8) != 0.
  The `bne` at 0xc14 is taken when at(=[[a0+32]:8+72]:8) != s0(=a0) and falls through when at(=[[a0+32]:8+72]:8) == s0(=a0).
  The `beq` at 0xc48 is taken when v1(=[[a1+152]:8+16]-1) == 0 and falls through when v1(=[[a1+152]:8+16]-1) != 0.
  The `beq` at 0xc90 is taken when at(=[[a0+32]:8+104]) == 0 and falls through when at(=[[a0+32]:8+104]) != 0.
  The `bne` at 0xca8 is taken when v1(=[[a0+32]:8+104]) != 0 and falls through when v1(=[[a0+32]:8+104]) == 0.
  The `jr` at 0xc6c returns with v0 = ?.

- `odsy_mm_sg_remove_gctx` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0xccc, 432 bytes) Inferred.
  Performs 3 4-byte loads from a1 (arg1 at entry) +0xa0, including `lw` at 0xdf0, `lw` at 0xe08, `lw` at 0xe54.
  Loads 4 bytes from a1 (arg1 at entry) +0xcc into `v1` (`lw` at 0xe18).
  Stores 4 bytes from `a2` to a1 (arg1 at entry) +0xa0 (`sw` at 0xe6c).
  Calls `OdsyInitCSetCursor` via direct with a0=a1+264, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xcec).
  Calls `OdsyNextCSetElem` via direct with a0=a1+264, a1=?, a2=?, a3=? (`jal` at 0xcf4).
  Calls `odsy_mm_grp_destroy` via direct with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=? (`jal` at 0xd04).
  Calls `OdsyInitCSetCursor` via direct with a0=a1+264, a1=?, a2=?, a3=? (`jal` at 0xd0c).
  Calls `OdsyNextCSetElem` via direct with a0=a1+264, a1=?, a2=?, a3=? (`jal` at 0xd14).
  Calls `OdsyDestroyCSet` via direct with a0=a1+264, a1=0x0, a2=?, a3=? (`jal` at 0xd2c).
  Calls `OdsyInitCSetCursor` via direct with a0=a1+184, a1=?, a2=?, a3=? (`jal` at 0xd34).
  Calls `OdsyNextCSetElem` via direct with a0=a1+184, a1=?, a2=?, a3=? (`jal` at 0xd3c).
  Calls `OdsyDeallocCSetId` via direct with a0=a1+184, a1=?, a2=?, a3=? (`jal` at 0xd64).
  Calls `OdsyNextCSetElem` via direct with a0=a1+184, a1=?, a2=?, a3=? (`jal` at 0xd6c).
  Calls `OdsyInitCSetCursor` via direct with a0=a1+184, a1=?, a2=?, a3=? (`jal` at 0xd7c).
  Calls `OdsyNextCSetElem` via direct with a0=a1+184, a1=?, a2=?, a3=? (`jal` at 0xd84).
  Calls `odsy_mm_cores_destroy` via direct with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=? (`jal` at 0xd94).
  Calls `OdsyInitCSetCursor` via direct with a0=a1+184, a1=?, a2=?, a3=? (`jal` at 0xd9c).
  Calls `OdsyNextCSetElem` via direct with a0=a1+184, a1=?, a2=?, a3=? (`jal` at 0xda4).
  Calls `OdsyInitCSetCursor` via direct with a0=a0+64, a1=?, a2=?, a3=? (`jal` at 0xdc0).
  Calls `OdsyNextCSetElem` via direct with a0=a0+64, a1=?, a2=?, a3=? (`jal` at 0xdc8).
  Calls `OdsyNextCSetElem` via direct with a0=a0+64, a1=?, a2=?, a3=? (`jal` at 0xde0).
  Calls `OdsyLookupCSetId` via direct with a0=ret(OdsyNextCSetElem)+160, a1=[a1+160], a2=?, a3=? (`jal` at 0xdf4).
  Calls `OdsyDeallocCSetId` via direct with a0=ret(OdsyNextCSetElem)+160, a1=[a1+160], a2=?, a3=? (`jal` at 0xe04).
  Calls `conbuf_flush` via direct with a0=0x3, a1=?, a2=[sym(kdebug)]:2, a3=? (`jal` at 0xe30).
  Calls `debug` via direct with a0=sym(.rodata), a1=?, a2=?, a3=? (`jal` at 0xe3c).
  Calls `OdsyDestroyCSet` via direct with a0=a1+184, a1=0x0, a2=?, a3=? (`jal` at 0xe48).
  Calls `OdsyDeallocCSetId` via direct with a0=a0+24, a1=[a1+160], a2=?, a3=? (`jal` at 0xe58).
  The `beq` at 0xcfc is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` at 0xd1c is taken when v0(=ret(OdsyNextCSetElem)) != 0 and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `beq` at 0xd44 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` at 0xd54 is taken when a1(=0x1) != v0(=ret(OdsyNextCSetElem)) and falls through when a1(=0x1) == v0(=ret(OdsyNextCSetElem)).
  The `bne` at 0xd74 is taken when v0(=ret(OdsyNextCSetElem)) != 0 and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `beq` at 0xd8c is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` at 0xdac is taken when v0(=ret(OdsyNextCSetElem)) != 0 and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `beq` at 0xdd0 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0xde8 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0xdfc is taken when v0(=ret(OdsyLookupCSetId)) == 0 and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `beq` at 0xe20 is taken when v1(=[a1+204]) == 0 and falls through when v1(=[a1+204]) != 0.
  The `beq` at 0xe28 is taken when a2(=[sym(kdebug)]:2) == 0 and falls through when a2(=[sym(kdebug)]:2) != 0.
  The `jr` at 0xe74 returns with v0 = ret(OdsyDeallocCSetId); f0 = ret(OdsyDeallocCSetId).

- `gfP_OdsyMMalloc` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0xe7c, 960 bytes) Inferred.
  Performs 9 4-byte stores to a3 (arg3 at entry) +0x0, including `sw` at 0xe80, `sw` at 0x10ec, `sw` at 0x1114.
  Loads 8 bytes from a0 (arg0 at entry) +0x48 into `s2` (`ld` at 0xe88).
  Loads 8 bytes from [a0+72]:8 +0x70 into `s2` (`ld` at 0xe98).
  Loads 8 bytes from [[a0+72]:8+112]:8 +0x98 into `at` (`ld` at 0xec8).
  Performs 5 8-byte loads from a0 (arg0 at entry) +0x20, including `ld` at 0xf04, `ld` at 0xff0, `ld` at 0x103c.
  Loads 8 bytes from [a0+32]:8 +0x48 into `a4` (`ld` at 0xf08).
  Performs 3 4-byte loads from [a0+32]:8 +0x50, including `lw` at 0xf14, `lw` at 0xff8, `lw` at 0x1070.
  Performs 2 4-byte stores to [a0+32]:8 +0x50, including `sw` at 0xf1c, `sw` at 0x1010.
  Loads 8 bytes from ? (base unknown) into `v0` (`ld` at 0xf54).
  Performs 8 4-byte loads from ? (base unknown), including `lw` at 0xf64, `lw` at 0xf70, `lw` at 0xf7c.
  Performs 2 1-byte loads from ? (base unknown), including `lbu` at 0xfb0, `lbu` at 0xfc0.
  Loads 4 bytes from a3 (arg3 at entry) +0x0 into `v0` (`lw` at 0x1024).
  Stores 8 bytes from `s0` to [a0+32]:8 +0x48 (`sd` at 0x1040).
  Performs 2 4-byte loads from [a0+32]:8 +0x68, including `lw` at 0x1048, `lw` at 0x1060.
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-208, a2=0x48, a3=a3 at entry (arg3), a6=0x0, a7=0x0 (`jal` at 0xee4).
  Calls `OdsyLookupCSetId` via direct with a0=?, a1=?, a2=?, a3=?, a5=-0x1 (`jal` at 0xf34).
  Calls `odsy_mm_obj_destroy` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xfd0).
  Calls `copyout` via direct with a0=sp-208, a1=a2 at entry (arg2), a2=0x48, a3=?, a6=[[a0+32]:8+80]-1, a7=[a0+32]:8 (`jal` at 0x100c).
  Calls `psema` via direct with a0=[a0+32]:8+56, a1=0x219, a2=?, a3=?, a4=[[a0+32]:8+72]:8 (`jal` at 0x1034).
  Calls `us_delay` via direct with a0=0x2, a1=?, a2=?, a3=? (`jal` at 0x1054).
  Calls `odsy_mm_grp_new` via direct with a0=[[a0+72]:8+112]:8, a1=?, a2=sp-208, a3=?, a5=-0x1 (`jal` at 0x107c).
  Calls `odsy_mm_obj_new` via direct with a0=?, a1=?, a2=?, a3=sp-196 (`jal` at 0x10c4).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0x0, a7=0x0 (`jal` at 0x1108).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0x0, a7=0x0 (`jal` at 0x1138).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1168).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x119c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x11c0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=ret(OdsyLookupCSetId) (`jal` at 0x11e4).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1210).
  Calls `odsy_mm_grp_destroy` via direct with a0=?, a1=?, a2=?, a3=?, a5=-0x1 (`jal` at 0x122c).
  The `beq` at 0xeb4 is taken when s2(=[[a0+72]:8+112]:8) == 0 and falls through when s2(=[[a0+72]:8+112]:8) != 0.
  The `beq` at 0xed4 is taken when at(=[[[a0+72]:8+112]:8+152]:8) == 0 and falls through when at(=[[[a0+72]:8+112]:8+152]:8) != 0.
  The `bne` at 0xeec is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `beq` at 0xefc is taken when a2(?) >= 0x10 (signed) and falls through when a2(?) < 0x10 (signed).
  The `bne` at 0xf0c is taken when a4(=[[a0+32]:8+72]:8) != s0(=a0) and falls through when a4(=[[a0+32]:8+72]:8) == s0(=a0).
  The `beq` at 0xf28 is taken when a5(=-0x1) == a1(?) and falls through when a5(=-0x1) != a1(?).
  The `beq` at 0xf40 is taken when v0(=ret(OdsyLookupCSetId)) == 0 and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `beq` at 0xf5c is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `bne` at 0xf68 is taken when a4(?) != a5(?) and falls through when a4(?) == a5(?).
  The `bne` at 0xf74 is taken when at(?) != v1(?) and falls through when at(?) == v1(?).
  The `bne` at 0xf80 is taken when a4(?) != a5(?) and falls through when a4(?) == a5(?).
  The `bne` at 0xf8c is taken when at(?) != v1(?) and falls through when at(?) == v1(?).
  The `bne` at 0xf98 is taken when a4(?) != a5(?) and falls through when a4(?) == a5(?).
  The `bne` at 0xfa8 is taken when at(?) != v1(?) and falls through when at(?) == v1(?).
  The `bne` at 0xfb8 is taken when a4(?) != a5(?) and falls through when a4(?) == a5(?).
  The `beq` at 0xfc8 is taken when at(?) == v1(?) and falls through when at(?) != v1(?).
  The `beq` at 0xfe8 is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `bne` at 0x101c is taken when v0(=ret(copyout)) != 0 and falls through when v0(=ret(copyout)) == 0.
  The `beq` at 0x104c is taken when at(=[[a0+32]:8+104]) == 0 and falls through when at(=[[a0+32]:8+104]) != 0.
  The `bne` at 0x1064 is taken when v1(=[[a0+32]:8+104]) != 0 and falls through when v1(=[[a0+32]:8+104]) == 0.
  The `beq` at 0x1088 is taken when v0(=ret(odsy_mm_grp_new)) == 0 and falls through when v0(=ret(odsy_mm_grp_new)) != 0.
  The `bne` at 0x1094 is taken when a4(?) != 0 and falls through when a4(?) == 0.
  The `bne` at 0x10a0 is taken when a5(?) != 0 and falls through when a5(?) == 0.
  The `bne` at 0x10ac is taken when s3(?) != 0 and falls through when s3(?) == 0.
  The `bne` at 0x10cc is taken when v0(=ret(odsy_mm_obj_new)) != 0 and falls through when v0(=ret(odsy_mm_obj_new)) == 0.
  The `beq` at 0x10d8 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `jr` at 0x102c returns with v0 = ?.

- `gfP_OdsyMMdealloc` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x123c, 656 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x48 into `a1` (`ld` at 0x123c).
  Loads 8 bytes from [a0+72]:8 +0x70 into `a1` (`ld` at 0x1244).
  Loads 8 bytes from [[a0+72]:8+112]:8 +0x98 into `a4` (`ld` at 0x1260).
  Performs 6 8-byte loads from a0 (arg0 at entry) +0x20, including `ld` at 0x128c, `ld` at 0x1308, `ld` at 0x133c.
  Loads 8 bytes from [a0+32]:8 +0x48 into `a5` (`ld` at 0x1290).
  Performs 4 4-byte loads from [a0+32]:8 +0x50, including `lw` at 0x129c, `lw` at 0x130c, `lw` at 0x1370.
  Performs 3 4-byte stores to [a0+32]:8 +0x50, including `sw` at 0x12a8, `sw` at 0x1314, `sw` at 0x1384.
  Loads 8 bytes from ? (base unknown) into `v0` (`ld` at 0x12e4).
  Loads 4 bytes from ? (base unknown) into `a4` (`lw` at 0x12fc).
  Stores 8 bytes from `s0` to [a0+32]:8 +0x48 (`sd` at 0x1340).
  Performs 2 4-byte loads from [a0+32]:8 +0x68, including `lw` at 0x1348, `lw` at 0x1360.
  Performs 6 4-byte stores to a3 (arg3 at entry) +0x0, including `sw` at 0x1398, `sw` at 0x13e0, `sw` at 0x143c.
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-160, a2=0x48, a3=a3 at entry (arg3), a4=[[[a0+72]:8+112]:8+152]:8 (`jal` at 0x127c).
  Calls `OdsyLookupCSetId` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x12b0).
  Calls `odsy_mm_obj_destroy` via direct with a0=?, a1=ret(OdsyLookupCSetId), a2=?, a3=? (`jal` at 0x12f0).
  Calls `psema` via direct with a0=[a0+32]:8+56, a1=0x219, a2=?, a3=?, a5=[[a0+32]:8+72]:8 (`jal` at 0x1334).
  Calls `us_delay` via direct with a0=0x2, a1=?, a2=?, a3=? (`jal` at 0x1354).
  Calls `copyout` via direct with a0=sp-160, a1=a2 at entry (arg2), a2=0x48, a3=? (`jal` at 0x13a8).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x13c4).
  Calls `odsy_mm_grp_destroy` via direct with a0=ret(OdsyLookupCSetId), a1=ret(OdsyLookupCSetId), a2=?, a3=? (`jal` at 0x13e4).
  Calls `odsy_mm_grp_destroy` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x13f8).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1420).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[[[a0+72]:8+112]:8+152]:8 (`jal` at 0x1450).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x147c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x14ac).
  The `beq` at 0x1258 is taken when a1(=[[a0+72]:8+112]:8) == 0 and falls through when a1(=[[a0+72]:8+112]:8) != 0.
  The `beq` at 0x126c is taken when a4(=[[[a0+72]:8+112]:8+152]:8) == 0 and falls through when a4(=[[[a0+72]:8+112]:8+152]:8) != 0.
  The `bne` at 0x1284 is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `bne` at 0x1294 is taken when a5(=[[a0+32]:8+72]:8) != s0(=a0) and falls through when a5(=[[a0+32]:8+72]:8) == s0(=a0).
  The `beq` at 0x12c0 is taken when v0(=ret(OdsyLookupCSetId)) == 0 and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `beq` at 0x12cc is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0x12dc is taken when a2(?) >= 0x10 (signed) and falls through when a2(?) < 0x10 (signed).
  The `beq` at 0x12e8 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `beq` at 0x1300 is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0x131c is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `beq` at 0x134c is taken when at(=[[a0+32]:8+104]) == 0 and falls through when at(=[[a0+32]:8+104]) != 0.
  The `bne` at 0x1364 is taken when v1(=[[a0+32]:8+104]) != 0 and falls through when v1(=[[a0+32]:8+104]) == 0.
  The `beq` at 0x13b4 is taken when v0(=ret(copyout)) == 0 and falls through when v0(=ret(copyout)) != 0.
  The `jr` at 0x132c returns with v0 = one of 0x0, 0x1, 0xe, 0x16.

- `odsy_mm_mkres_timeout` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x14cc, 56 bytes) Inferred.
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x14e4).
  Calls `odsy_teardown` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x14ec).
  The `jr` at 0x14fc returns with v0 = ret(odsy_teardown); f0 = ret(odsy_teardown).

- `gfP_OdsyMMmakeResident` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x1504, 916 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x48 into `s1` (`ld` at 0x150c).
  Loads 8 bytes from [a0+72]:8 +0x70 into `s1` (`ld` at 0x1510).
  Loads 8 bytes from [[a0+72]:8+112]:8 +0x98 into `s4` (`ld` at 0x1530).
  Loads 8 bytes from [[[a0+72]:8+112]:8+152]:8 +0x8 into `t8` (`ld` at 0x1544).
  Performs 11 4-byte stores to a3 (arg3 at entry) +0x0, including `sw` at 0x157c, `sw` at 0x1720, `sw` at 0x1748.
  Performs 5 8-byte loads from a0 (arg0 at entry) +0x20, including `ld` at 0x1590, `ld` at 0x16b4, `ld` at 0x16e4.
  Loads 8 bytes from [a0+32]:8 +0x48 into `a4` (`ld` at 0x1594).
  Performs 3 4-byte loads from [a0+32]:8 +0x50, including `lw` at 0x15a0, `lw` at 0x16b8, `lw` at 0x1718.
  Performs 2 4-byte stores to [a0+32]:8 +0x50, including `sw` at 0x15a8, `sw` at 0x16c0.
  Performs 2 4-byte loads from [[a0+72]:8+112]:8 +0xa0, including `lw` at 0x15c8, `lw` at 0x17f8.
  Loads 8 bytes from ret(OdsyFindMatchingCSetElem) +0x28 into `v1` (`ld` at 0x160c).
  Loads 8 bytes from ret(OdsyFindMatchingCSetElem) +0x20 into `at` (`ld` at 0x1610).
  Loads 2 bytes from [ret(OdsyFindMatchingCSetElem)+40]:8 +0x4 into `v1` (`lhu` at 0x1614).
  Loads 2 bytes from [ret(OdsyFindMatchingCSetElem)+32]:8 +0x0 into `at` (`lhu` at 0x1618).
  Loads 4 bytes from ret(OdsyFindMatchingCSetElem) +0x0 into `v0` (`lw` at 0x1624).
  Performs 2 4-byte loads from ret(OdsyFindMatchingCSetElem) +0x4, including `lw` at 0x1628, `lw` at 0x1644.
  Stores 4 bytes from `a1` to ? (base unknown) (`sw` at 0x1640).
  Performs 2 8-byte loads from ? (base unknown), including `ld` at 0x1658, `ld` at 0x1690.
  Loads 4 bytes from ? (base unknown) into `a3` (`lw` at 0x1664).
  Loads 4 bytes from a3 (arg3 at entry) +0x0 into `v0` (`lw` at 0x16c4).
  Stores 8 bytes from `s0` to [a0+32]:8 +0x48 (`sd` at 0x16e8).
  Performs 2 4-byte loads from [a0+32]:8 +0x68, including `lw` at 0x16f0, `lw` at 0x1708.
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-112, a2=0x8, a3=a3 at entry (arg3) (`jal` at 0x154c).
  Calls `RRM_CheckValidFault` via direct with a0=a0 at entry (arg0), a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1580).
  Calls `OdsyLookupCSetId` via direct with a0=[[[a0+72]:8+112]:8+152]:8+64, a1=?, a2=?, a3=?, a5=[[a0+32]:8+80]+1 (`jal` at 0x15b4).
  Calls `OdsyLookupCSetId` via direct with a0=ret(OdsyLookupCSetId)+160, a1=[[[a0+72]:8+112]:8+160], a2=?, a3=? (`jal` at 0x15cc).
  Calls `OdsyFindMatchingCSetElem` via direct with a0=ret(OdsyLookupCSetId), a1=sp-104, a2=sym(CoresidRangeFinder), a3=? (`jal` at 0x15fc).
  Calls `timeout` via direct with a0=sym(odsy_mm_mkres_timeout), a1=?, a2=0x5dc, a3=? (`jal` at 0x168c).
  Calls `odsy_mm_commit` via direct with a0=ret(OdsyFindMatchingCSetElem), a1=?, a2=?, a3=? (`jal` at 0x1698).
  Calls `untimeout` via direct with a0=ret(timeout), a1=?, a2=?, a3=? (`jal` at 0x16a8).
  Calls `psema` via direct with a0=[a0+32]:8+56, a1=0x219, a2=?, a3=?, a4=[[a0+32]:8+72]:8 (`jal` at 0x16dc).
  Calls `us_delay` via direct with a0=0x2, a1=?, a2=?, a3=? (`jal` at 0x16fc).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x173c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1764).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x178c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x17b4).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x17e0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=[[[a0+72]:8+112]:8+160], a3=? (`jal` at 0x180c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1834).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1858).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1878).
  Calls `untimeout` via direct with a0=ret(timeout), a1=?, a2=?, a3=? (`jal` at 0x1880).
  The `beq` at 0x1524 is taken when s1(=[[a0+72]:8+112]:8) == 0 and falls through when s1(=[[a0+72]:8+112]:8) != 0.
  The `beq` at 0x1534 is taken when s4(=[[[a0+72]:8+112]:8+152]:8) == 0 and falls through when s4(=[[[a0+72]:8+112]:8+152]:8) != 0.
  The `bne` at 0x1554 is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `beq` at 0x1560 is taken when v0(?) >= 0x10 (signed) and falls through when v0(?) < 0x10 (signed).
  The `beq` at 0x156c is taken when a0(?) >= 0x10 (signed) and falls through when a0(?) < 0x10 (signed).
  The `bne` at 0x1574 is taken when a1(?) != 0 and falls through when a1(?) == 0.
  The `bltz` at 0x1588 is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed) and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `bne` at 0x1598 is taken when a4(=[[a0+32]:8+72]:8) != s0(=a0) and falls through when a4(=[[a0+32]:8+72]:8) == s0(=a0).
  The `beq` at 0x15c0 is taken when v0(=ret(OdsyLookupCSetId)) == 0 and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `beq` at 0x15d4 is taken when v0(=ret(OdsyLookupCSetId)) == 0 and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `beq` at 0x1604 is taken when v0(=ret(OdsyFindMatchingCSetElem)) == 0 and falls through when v0(=ret(OdsyFindMatchingCSetElem)) != 0.
  The `beq` at 0x161c is taken when at(=[[ret(OdsyFindMatchingCSetElem)+32]:8]:2) == v1(=[[ret(OdsyFindMatchingCSetElem)+40]:8+4]:2) and falls through when at(=[[ret(OdsyFindMatchingCSetElem)+32]:8]:2) != v1(=[[ret(OdsyFindMatchingCSetElem)+40]:8+4]:2).
  The `bne` at 0x1630 is taken when a2(=[ret(OdsyFindMatchingCSetElem)+4]) < v0(=[ret(OdsyFindMatchingCSetElem)]) (signed) and falls through when a2(=[ret(OdsyFindMatchingCSetElem)+4]) >= v0(=[ret(OdsyFindMatchingCSetElem)]) (signed).
  The `bne` at 0x164c is taken when a4(?) != 0 and falls through when a4(?) == 0.
  The `beq` at 0x165c is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x166c is taken when (a3(?) & 0x2) == 0 and falls through when (a3(?) & 0x2) != 0.
  The `bne` at 0x16a0 is taken when v0(=ret(odsy_mm_commit)) != 0 and falls through when v0(=ret(odsy_mm_commit)) == 0.
  The `beq` at 0x16f4 is taken when at(=[[a0+32]:8+104]) == 0 and falls through when at(=[[a0+32]:8+104]) != 0.
  The `bne` at 0x170c is taken when v1(=[[a0+32]:8+104]) != 0 and falls through when v1(=[[a0+32]:8+104]) == 0.
  The `jr` at 0x16d4 returns with v0 = ?.

- `MapKernelRegionIntoUserSpace` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x1898, 92 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x18 into `at` (`ld` at 0x18b8).
  Loads 4 bytes from a0 (arg0 at entry) +0x1c into `a3` (`lw` at 0x18d8).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a2` (`ld` at 0x18e4).
  Calls `odsyMapPages` via direct with a0=0x0, a1=a0+16, a2=[a0+8]:8, a3=[a0+28], a4=sp-64, a5=0x1, a6=a0 at entry (arg0) (`jal` at 0x18e0).
  The `jr` at 0x18ec returns with v0 = ret(odsyMapPages); f0 = ret(odsyMapPages).
- `CoresidRangeFinder` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x18f4, 72 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `v0` (`ld` at 0x18f4).
  Loads 4 bytes from a1 (arg1 at entry) +0x8 into `at` (`lw` at 0x18f8).
  Loads 4 bytes from [a0+8]:8 +0x0 into `v0` (`lw` at 0x18fc).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `a2` (`lw` at 0x1908).
  Loads 4 bytes from a1 (arg1 at entry) +0x0 into `v1` (`lw` at 0x190c).
  Loads 4 bytes from a1 (arg1 at entry) +0x4 into `at` (`lw` at 0x191c).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `a3` (`lw` at 0x1920).
  The `bne` at 0x1900 is taken when at(=[a1+8]) != v0(=[[a0+8]:8]) and falls through when at(=[a1+8]) == v0(=[[a0+8]:8]).
  The `bne` at 0x1914 is taken when v1(=[a1]) != a2(=[a0+4]) and falls through when v1(=[a1]) == a2(=[a0+4]).
  The `bne` at 0x1924 is taken when a3(=[a0]) != at(=[a1+4]) and falls through when a3(=[a0]) == at(=[a1+4]).
  The `jr` at 0x192c returns with v0 = 0x0.
  The `jr` at 0x1934 returns with v0 = 0x1.

- `CoresidSubRangeFinder` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x193c, 80 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `v0` (`ld` at 0x193c).
  Loads 4 bytes from a1 (arg1 at entry) +0x8 into `at` (`lw` at 0x1940).
  Loads 4 bytes from [a0+8]:8 +0x0 into `v0` (`lw` at 0x1944).
  Loads 4 bytes from a1 (arg1 at entry) +0x0 into `a2` (`lw` at 0x1950).
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `v1` (`lw` at 0x1954).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `at` (`lw` at 0x1968).
  Loads 4 bytes from a1 (arg1 at entry) +0x4 into `a3` (`lw` at 0x196c).
  The `bne` at 0x1948 is taken when at(=[a1+8]) != v0(=[[a0+8]:8]) and falls through when at(=[a1+8]) == v0(=[[a0+8]:8]).
  The `bne` at 0x1960 is taken when v1(=[a0+4]) < a2(=[a1]) (signed) and falls through when v1(=[a0+4]) >= a2(=[a1]) (signed).
  The `bne` at 0x1974 is taken when a3(=[a1+4]) < at(=[a0]) (signed) and falls through when a3(=[a1+4]) >= at(=[a0]) (signed).
  The `jr` at 0x197c returns with v0 = 0x0.
  The `jr` at 0x1984 returns with v0 = 0x1.

- `odsy_mm_cores_exists` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x198c, 124 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a0` (`ld` at 0x1998).
  Loads 4 bytes from a1 (arg1 at entry) +0xa0 into `a1` (`lw` at 0x19a0).
  Performs 2 2-byte loads from a0 (arg0 at entry) +0x0, including `lh` at 0x19c4, `lh` at 0x19d0.
  Loads 4 bytes from ? (base unknown) into `a3` (`lw` at 0x19e0).
  Calls `OdsyLookupCSetId` via direct with a0=[a0+8]:8+160, a1=[a1+160], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x19a4).
  Calls `OdsyFindMatchingCSetElem` via direct with a0=ret(OdsyLookupCSetId), a1=sp-64, a2=sym(CoresidSubRangeFinder), a3=?, a4=[a0]:2, a5=[a0]:2 (`jal` at 0x19e8).
  The `bne` at 0x19ac is taken when v0(=ret(OdsyLookupCSetId)) != 0 and falls through when v0(=ret(OdsyLookupCSetId)) == 0.
  The `beq` at 0x19f0 is taken when v0(=ret(OdsyFindMatchingCSetElem)) == 0 and falls through when v0(=ret(OdsyFindMatchingCSetElem)) != 0.
  The `jr` at 0x19b8 returns with v0 = one of 0x0, 0x1.

- `odsy_mm_cores_obj_in` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x1a08, 60 bytes) Inferred.
  Loads 8 bytes from a1 (arg1 at entry) +0x8 into `a4` (`ld` at 0x1a0c).
  Loads 8 bytes from ? (base unknown) into `at` (`ld` at 0x1a18).
  The `beq` at 0x1a20 is taken when at(?) == a0 and falls through when at(?) != a0.
  The `bne` at 0x1a28 is taken when v1(?) != 0 and falls through when v1(?) == 0.
  The `jr` at 0x1a34 returns with v0 = 0x0.
  The `jr` at 0x1a3c returns with v0 = 0x1.

- `gfP_OdsyMMquery` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x1a44, 1048 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x48 into `s3` (`ld` at 0x1a4c).
  Loads 8 bytes from [a0+72]:8 +0x70 into `s3` (`ld` at 0x1a64).
  Loads 8 bytes from [[a0+72]:8+112]:8 +0x98 into `at` (`ld` at 0x1a9c).
  Performs 10 4-byte stores to a3 (arg3 at entry) +0x0, including `sw` at 0x1ac0, `sw` at 0x1b50, `sw` at 0x1c88.
  Performs 5 8-byte loads from a0 (arg0 at entry) +0x20, including `ld` at 0x1b0c, `ld` at 0x1b54, `ld` at 0x1c28.
  Loads 8 bytes from [a0+32]:8 +0x48 into `at` (`ld` at 0x1b10).
  Performs 2 4-byte loads from [a0+32]:8 +0x50, including `lw` at 0x1b28, `lw` at 0x1b5c.
  Performs 2 4-byte stores to [a0+32]:8 +0x50, including `sw` at 0x1b3c, `sw` at 0x1b74.
  Loads 4 bytes from a3 (arg3 at entry) +0x0 into `v0` (`lw` at 0x1b88).
  Loads 4 bytes from ret(OdsyLookupCSetId) +0x0 into `t1` (`lw` at 0x1b98).
  Loads 4 bytes from ret(OdsyLookupCSetId) +0xc8 into `t0` (`lw` at 0x1ba0).
  Performs 2 4-byte loads from [[a0+72]:8+112]:8 +0xa0, including `lw` at 0x1bb0, `lw` at 0x1ca0.
  Performs 2 4-byte loads from ? (base unknown), including `lw` at 0x1c08, `lw` at 0x1c10.
  Stores 8 bytes from `s0` to [a0+32]:8 +0x48 (`sd` at 0x1c2c).
  Performs 2 4-byte loads from [a0+32]:8 +0x68, including `lw` at 0x1c34, `lw` at 0x1c4c.
  Stores 1 byte from `t0` to ? (base unknown) (`sb` at 0x1e34).
  Calls `copyin` via direct with a0=a2 at entry (arg2), a1=sp-240, a2=0x28, a3=a3 at entry (arg3), a4=0x0, a7=0x0 (`jal` at 0x1abc).
  Calls `OdsyLookupCSetId` via direct with a0=?, a1=?, a2=?, a3=?, a4=[a0+32]:8 (`jal` at 0x1b38).
  Calls `copyout` via direct with a0=sp-240, a1=a2 at entry (arg2), a2=0x28, a3=?, a7=[[a0+32]:8+80]-1 (`jal` at 0x1b70).
  Calls `OdsyLookupCSetId` via direct with a0=ret(OdsyLookupCSetId)+160, a1=[[[a0+72]:8+112]:8+160], a2=?, a3=?, a5=ret(OdsyLookupCSetId) (`jal` at 0x1bac).
  Calls `OdsyFindMatchingCSetElem` via direct with a0=?, a1=sp-200, a2=sym(CoresidRangeFinder), a3=? (`jal` at 0x1bf0).
  Calls `psema` via direct with a0=[a0+32]:8+56, a1=0x219, a2=?, a3=?, a4=[a0+32]:8 (`jal` at 0x1c20).
  Calls `us_delay` via direct with a0=0x2, a1=?, a2=?, a3=?, a4=[a0+32]:8 (`jal` at 0x1c40).
  Calls `kmem_alloc` via direct with a0=0x28, a1=0x0, a2=?, a3=?, a4=ret(OdsyLookupCSetId) (`jal` at 0x1c64).
  Calls `OdsyInitCSet` via direct with a0=ret(kmem_alloc), a1=0x2, a2=?, a3=?, a4=ret(kmem_alloc) (`jal` at 0x1c94).
  Calls `OdsyAllocSpecificCSetId` via direct with a0=?, a1=[[[a0+72]:8+112]:8+160], a2=?, a3=? (`jal` at 0x1ca8).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1ce4).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x0, a7=0x0 (`jal` at 0x1d18).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x0, a7=0x0 (`jal` at 0x1d48).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1d78).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1d9c).
  Calls `odsy_mm_cores_new` via direct with a0=[[a0+72]:8+112]:8, a1=?, a2=?, a3=?, a5=[[a0+72]:8+112]:8+184, a6=sp-240 (`jal` at 0x1dd0).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=?, a3=?, a5=-0x1 (`jal` at 0x1e04).
  Calls `OdsyDestroyCSet` via direct with a0=?, a1=0x0, a2=?, a3=? (`jal` at 0x1e10).
  Calls `kmem_free` via direct with a0=?, a1=0x28, a2=?, a3=? (`jal` at 0x1e3c).
  The `beq` at 0x1a80 is taken when s3(=[[a0+72]:8+112]:8) == 0 and falls through when s3(=[[a0+72]:8+112]:8) != 0.
  The `beq` at 0x1aa8 is taken when at(=[[[a0+72]:8+112]:8+152]:8) == 0 and falls through when at(=[[[a0+72]:8+112]:8+152]:8) != 0.
  The `bne` at 0x1ac4 is taken when v0(=ret(copyin)) != 0 and falls through when v0(=ret(copyin)) == 0.
  The `bltz` at 0x1ae4 is taken when a3(?) < 0 (signed) and falls through when a3(?) >= 0 (signed).
  The `beq` at 0x1aec is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `bltz` at 0x1af4 is taken when a2(?) < 0 (signed) and falls through when a2(?) >= 0 (signed).
  The `beq` at 0x1afc is taken when a5(?) == 0 and falls through when a5(?) != 0.
  The `bne` at 0x1b04 is taken when a6(?) != 0 and falls through when a6(?) == 0.
  The `bne` at 0x1b1c is taken when at(=[[a0+32]:8+72]:8) != s0(=a0) and falls through when at(=[[a0+32]:8+72]:8) == s0(=a0).
  The `bne` at 0x1b44 is taken when v0(=ret(OdsyLookupCSetId)) != 0 and falls through when v0(=ret(OdsyLookupCSetId)) == 0.
  The `bne` at 0x1b80 is taken when v0(=ret(copyout)) != 0 and falls through when v0(=ret(copyout)) == 0.
  The `beq` at 0x1bb4 is taken when v0(=ret(OdsyLookupCSetId)) == 0 and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `bne` at 0x1bc0 is taken when at(?) != 0 and falls through when at(?) == 0.
  The `bne` at 0x1bc8 is taken when v1(?) != 0 and falls through when v1(?) == 0.
  The `beq` at 0x1bf8 is taken when v0(=ret(OdsyFindMatchingCSetElem)) == 0 and falls through when v0(=ret(OdsyFindMatchingCSetElem)) != 0.
  The `bne` at 0x1c00 is taken when a6(?) != 0 and falls through when a6(?) == 0.
  The `beq` at 0x1c38 is taken when a5(=[[a0+32]:8+104]) == 0 and falls through when a5(=[[a0+32]:8+104]) != 0.
  The `bne` at 0x1c50 is taken when at(=[[a0+32]:8+104]) != 0 and falls through when at(=[[a0+32]:8+104]) == 0.
  The `bne` at 0x1c70 is taken when v0(=ret(kmem_alloc)) != 0 and falls through when v0(=ret(kmem_alloc)) == 0.
  The `beq` at 0x1cb4 is taken when v0(=ret(OdsyAllocSpecificCSetId)) == a5(=-0x1) and falls through when v0(=ret(OdsyAllocSpecificCSetId)) != a5(=-0x1).
  The `bne` at 0x1dd8 is taken when v0(=ret(odsy_mm_cores_new)) != 0 and falls through when v0(=ret(odsy_mm_cores_new)) == 0.
  The `bne` at 0x1e30 is taken when a7(?) < 0x28 (unsigned) and falls through when a7(?) >= 0x28 (unsigned).
  The `jr` at 0x1b90 returns with v0 = ?.

- `odsy_mm_ctxsw_timeout` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x2614, 56 bytes) Inferred.
  Calls `cmn_err` via direct with a0=0x1, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x262c).
  Calls `odsy_teardown` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x2634).
  The `jr` at 0x2644 returns with v0 = ret(odsy_teardown); f0 = ret(odsy_teardown).

- `odsyMMvalidatePcxSwap` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x264c, 236 bytes) Inferred.
  Loads 4 bytes from a1 (arg1 at entry) +0x0 into `at` (`lw` at 0x264c).
  Loads 8 bytes from a1 (arg1 at entry) +0x98 into `v1` (`ld` at 0x265c).
  Loads 8 bytes from ret(OdsyNextCSetElem) +0x28 into `a2` (`ld` at 0x2700).
  Loads 2 bytes from [ret(OdsyNextCSetElem)+40]:8 +0x6 into `a2` (`lhu` at 0x2704).
  Loads 4 bytes from ret(OdsyNextCSetElem) +0x40 into `a3` (`lw` at 0x2710).
  Calls `OdsyLookupCSetId` via direct with a0=a1+224, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2694).
  Calls `timeout` via direct with a0=sym(odsy_mm_ctxsw_timeout), a1=a0 at entry (arg0), a2=0x5dc, a3=? (`jal` at 0x26ac).
  Calls `OdsyInitCSetCursor` via direct with a0=a1+184, a1=?, a2=?, a3=? (`jal` at 0x26c0).
  Calls `OdsyNextCSetElem` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x26c8).
  Calls `odsy_mm_commit` via direct with a0=ret(OdsyNextCSetElem), a1=0x1, a2=[[ret(OdsyNextCSetElem)+40]:8+6]:2, a3=[ret(OdsyNextCSetElem)+64] (`jal` at 0x26e0).
  Calls `OdsyNextCSetElem` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x26e8).
  Calls `untimeout` via direct with a0=?, a1=0x1, a2=?, a3=? (`jal` at 0x2724).
  The `beq` at 0x2654 is taken when at(=[a1]) == 0 and falls through when at(=[a1]) != 0.
  The `beq` at 0x2660 is taken when v1(=[a1+152]:8) == 0 and falls through when v1(=[a1+152]:8) != 0.
  The `beq` at 0x269c is taken when v0(=ret(OdsyLookupCSetId)) == 0 and falls through when v0(=ret(OdsyLookupCSetId)) != 0.
  The `beq` at 0x26d0 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x26f0 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x26f8 is taken when a1(=0x1) == v0(=ret(OdsyNextCSetElem)) and falls through when a1(=0x1) != v0(=ret(OdsyNextCSetElem)).
  The `beq` at 0x2708 is taken when a2(=[[ret(OdsyNextCSetElem)+40]:8+6]:2) == 0 and falls through when a2(=[[ret(OdsyNextCSetElem)+40]:8+6]:2) != 0.
  The `bne` at 0x2714 is taken when a3(=[ret(OdsyNextCSetElem)+64]) != 0 and falls through when a3(=[ret(OdsyNextCSetElem)+64]) == 0.
  The `jr` at 0x2678 returns with v0 = 0x0.

- `odsy_mm_find_current_as` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x2738, 404 bytes) Inferred.
  Loads 8 bytes from ret(OdsyNextCSetElem) +0x18 into `at` (`ld` at 0x2788).
  Loads 8 bytes from ret(OdsyNextCSetElem) +0x10 into `a2` (`ld` at 0x2794).
  Stores 4 bytes from `a4` to ret(kmem_alloc) +0x0 (`sw` at 0x27e8).
  Performs 2 4-byte stores to ? (base unknown), including `sw` at 0x27f8, `sw` at 0x280c.
  Performs 4 8-byte stores to ? (base unknown), including `sd` at 0x2800, `sd` at 0x2808, `sd` at 0x2810.
  Performs 2 1-byte stores to ? (base unknown), including `sb` at 0x285c, `sb` at 0x28b4.
  Loads 4 bytes from ? (base unknown) into `a1` (`lw` at 0x2890).
  Calls `as_lookup_current` via direct with a0=sp-64, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2750).
  Calls `OdsyInitCSetCursor` via direct with a0=a0+1528, a1=?, a2=?, a3=? (`jal` at 0x2758).
  Calls `OdsyNextCSetElem` via direct with a0=a0+1528, a1=?, a2=?, a3=? (`jal` at 0x2760).
  Calls `OdsyNextCSetElem` via direct with a0=a0+1528, a1=?, a2=?, a3=? (`jal` at 0x2778).
  Calls `kmem_alloc` via direct with a0=0x40, a1=0x0, a2=?, a3=? (`jal` at 0x27bc).
  Calls `OdsyAllocCSetId` via direct with a0=a0+1528, a1=ret(kmem_alloc), a2=?, a3=?, a4=-0x1 (`jal` at 0x27e4).
  Calls `odsyPinAndMapASRegions` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2814).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x2838).
  Calls `kmem_free` via direct with a0=?, a1=0x40, a2=?, a3=?, a5=0x1 (`jal` at 0x2864).
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x287c).
  Calls `OdsyDeallocCSetId` via direct with a0=a0+1528, a1=?, a2=?, a3=? (`jal` at 0x288c).
  Calls `kmem_free` via direct with a0=?, a1=0x40, a2=?, a3=?, a5=0x1 (`jal` at 0x28bc).
  The `beq` at 0x2768 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x2780 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` at 0x278c is taken when at(=[ret(OdsyNextCSetElem)+24]:8) != v1(?) and falls through when at(=[ret(OdsyNextCSetElem)+24]:8) == v1(?).
  The `bne` at 0x2798 is taken when a2(=[ret(OdsyNextCSetElem)+16]:8) != a3(?) and falls through when a2(=[ret(OdsyNextCSetElem)+16]:8) == a3(?).
  The `bne` at 0x27c8 is taken when v0(=ret(kmem_alloc)) != 0 and falls through when v0(=ret(kmem_alloc)) == 0.
  The `beq` at 0x27f0 is taken when v0(=ret(OdsyAllocCSetId)) == at(=-0x1) and falls through when v0(=ret(OdsyAllocCSetId)) != at(=-0x1).
  The `bne` at 0x281c is taken when v0(=ret(odsyPinAndMapASRegions)) != 0 and falls through when v0(=ret(odsyPinAndMapASRegions)) == 0.
  The `bne` at 0x2858 is taken when a4(?) < 0x40 (unsigned) and falls through when a4(?) >= 0x40 (unsigned).
  The `bne` at 0x28b0 is taken when a4(?) < 0x40 (unsigned) and falls through when a4(?) >= 0x40 (unsigned).
  The `jr` at 0x27b0 returns with v0 = ?.

- `mm_as_remove_sg` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x28cc, 120 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x4 into `v0` (`lw` at 0x28cc).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x4 (`sw` at 0x28e0).
  Stores 8 bytes from `zero` to a1 (arg1 at entry) +0x0 (`sd` at 0x28ec).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a0` (`ld` at 0x28f0).
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `a1` (`lw` at 0x28f8).
  Stores 1 byte from `a2` to ? (base unknown) (`sb` at 0x2924).
  Calls `OdsyDeallocCSetId` via direct with a0=[a0+8]:8+1528, a1=[a0], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x28fc).
  Calls `odsyUnpinAndUnmapASRegions` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x2904).
  Calls `kmem_free` via direct with a0=a0 at entry (arg0), a1=0x40, a2=0x5, a3=? (`jal` at 0x292c).
  The `beq` at 0x28e8 is taken when v0(=[a0+4]-1) >= 0x1 (unsigned) and falls through when v0(=[a0+4]-1) < 0x1 (unsigned).
  The `bne` at 0x2920 is taken when a0(?) < 0x40 (unsigned) and falls through when a0(?) >= 0x40 (unsigned).
  The `jr` at 0x293c returns with v0 = ?.

- `odsy_mm_sg_new` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x2944, 288 bytes) Inferred.
  Stores 4 bytes from `zero` to ret(kmem_alloc) +0x10 (`sw` at 0x298c).
  Stores 8 bytes from `zero` to ret(kmem_alloc) +0x0 (`sd` at 0x2990).
  Stores 8 bytes from `s1` to ret(kmem_alloc) +0x8 (`sd` at 0x299c).
  Performs 2 4-byte stores to ret(kmem_alloc) +0x14, including `sw` at 0x29a8, `sw` at 0x29e8.
  Stores 4 bytes from `zero` to ret(kmem_alloc) +0xa0 (`sw` at 0x29c4).
  Stores 4 bytes from `zero` to ret(kmem_alloc) +0x98 (`sw` at 0x29c8).
  Stores 8 bytes from `zero` to ret(kmem_alloc) +0x90 (`sd` at 0x29d0).
  Loads 4 bytes from ret(odsy_mm_find_current_as) +0x4 into `a2` (`lw` at 0x2a04).
  Stores 4 bytes from `a2` to ret(odsy_mm_find_current_as) +0x4 (`sw` at 0x2a10).
  Stores 8 bytes from `s0` to ? (base unknown) (`sd` at 0x2a14).
  Calls `kmem_alloc` via direct with a0=0xa8, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x295c).
  Calls `OdsyInitCSet` via direct with a0=ret(kmem_alloc)+24, a1=0x4, a2=?, a3=? (`jal` at 0x29a4).
  Calls `OdsyInitCSet` via direct with a0=ret(kmem_alloc)+64, a1=0x4, a2=?, a3=? (`jal` at 0x29b0).
  Calls `OdsyInitCSet` via direct with a0=ret(kmem_alloc)+104, a1=0x4, a2=?, a3=? (`jal` at 0x29bc).
  Calls `OdsyAllocCSetId` via direct with a0=a1+1488, a1=ret(kmem_alloc), a2=?, a3=? (`jal` at 0x29d4).
  Calls `odsy_mm_find_current_as` via direct with a0=a1 at entry (arg1), a1=sym(.rodata), a2=?, a3=? (`jal` at 0x29ec).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x2a2c).
  Calls `odsy_mm_sg_destroy` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2a34).
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x2a54).
  The `bne` at 0x2970 is taken when v0(=ret(kmem_alloc)) != 0 and falls through when v0(=ret(kmem_alloc)) == 0.
  The `beq` at 0x29e0 is taken when v0(=ret(OdsyAllocCSetId)) == v1(=-0x1) and falls through when v0(=ret(OdsyAllocCSetId)) != v1(=-0x1).
  The `beq` at 0x29fc is taken when v0(=ret(odsy_mm_find_current_as)) == 0 and falls through when v0(=ret(odsy_mm_find_current_as)) != 0.
  The `jr` at 0x2984 returns with v0 = ?.

- `odsy_mm_sg_destroy` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x2a64, 212 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a0` (`ld` at 0x2ab4).
  Loads 4 bytes from a0 (arg0 at entry) +0x14 into `a1` (`lw` at 0x2ab8).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a0` (`ld` at 0x2acc).
  Stores 1 byte from `a0` to ? (base unknown) (`sb` at 0x2b14).
  Calls `OdsyInitCSetCursor` via direct with a0=a0+64, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2a7c).
  Calls `OdsyNextCSetElem` via direct with a0=a0+64, a1=?, a2=?, a3=? (`jal` at 0x2a84).
  Calls `odsy_mm_grp_destroy` via direct with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=? (`jal` at 0x2a94).
  Calls `OdsyInitCSetCursor` via direct with a0=a0+64, a1=?, a2=?, a3=? (`jal` at 0x2a9c).
  Calls `OdsyNextCSetElem` via direct with a0=a0+64, a1=?, a2=?, a3=? (`jal` at 0x2aa4).
  Calls `OdsyDeallocCSetId` via direct with a0=[a0+8]:8+1488, a1=[a0+20], a2=?, a3=? (`jal` at 0x2abc).
  Calls `odsyUnpinAndUnmapSGRegions` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x2ac4).
  Calls `mm_as_remove_sg` via direct with a0=[a0]:8, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x2ad0).
  Calls `OdsyDestroyCSet` via direct with a0=a0+64, a1=0x0, a2=?, a3=? (`jal` at 0x2adc).
  Calls `OdsyDestroyCSet` via direct with a0=a0+24, a1=0x0, a2=?, a3=? (`jal` at 0x2ae8).
  Calls `OdsyDestroyCSet` via direct with a0=a0+104, a1=0x0, a2=?, a3=? (`jal` at 0x2af4).
  Calls `kmem_free` via direct with a0=a0 at entry (arg0), a1=0xa8, a2=?, a3=? (`jal` at 0x2b1c).
  The `beq` at 0x2a8c is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` at 0x2aac is taken when v0(=ret(OdsyNextCSetElem)) != 0 and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `bne` at 0x2b10 is taken when v0(?) < 0xa8 (unsigned) and falls through when v0(?) >= 0xa8 (unsigned).
  The `jr` at 0x2b30 returns with v0 = ret(kmem_free); f0 = ret(kmem_free).

- `odsy_mm_obj_new` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x2b38, 744 bytes) Inferred.
  Performs 2 1-byte loads from a3 (arg3 at entry) +0x1, including `lbu` at 0x2b40, `lbu` at 0x2c20.
  Performs 2 4-byte loads from a3 (arg3 at entry) +0x10, including `lw` at 0x2b88, `lw` at 0x2c28.
  Performs 2 4-byte loads from a3 (arg3 at entry) +0x14, including `lw` at 0x2ba0, `lw` at 0x2c30.
  Performs 2 4-byte loads from a3 (arg3 at entry) +0x18, including `lw` at 0x2bac, `lw` at 0x2c38.
  Loads 4 bytes from ret(kmem_alloc) +0x40 into `a5` (`lw` at 0x2be0).
  Stores 8 bytes from `s0` to ret(kmem_alloc) +0x8 (`sd` at 0x2be4).
  Performs 2 2-byte stores to ret(kmem_alloc) +0x0, including `sh` at 0x2bf4, `sh` at 0x2d54.
  Stores 8 bytes from `zero` to ret(kmem_alloc) +0x80 (`sd` at 0x2bfc).
  Stores 4 bytes from `a3` to ret(kmem_alloc) +0x40 (`sw` at 0x2c0c).
  Loads 1 byte from a3 (arg3 at entry) +0x0 into `a1` (`lbu` at 0x2c10).
  Stores 1 byte from `a1` to ret(kmem_alloc) +0x10 (`sb` at 0x2c14).
  Loads 1 byte from a3 (arg3 at entry) +0x2 into `a0` (`lbu` at 0x2c18).
  Stores 1 byte from `a0` to ret(kmem_alloc) +0x12 (`sb` at 0x2c1c).
  Stores 1 byte from `v1` to ret(kmem_alloc) +0x11 (`sb` at 0x2c24).
  Stores 4 bytes from `t1` to ret(kmem_alloc) +0x20 (`sw` at 0x2c2c).
  Stores 4 bytes from `a3` to ret(kmem_alloc) +0x24 (`sw` at 0x2c34).
  Stores 4 bytes from `t0` to ret(kmem_alloc) +0x28 (`sw` at 0x2c3c).
  Loads 4 bytes from a3 (arg3 at entry) +0x4 into `v0` (`lw` at 0x2c40).
  Stores 4 bytes from `v0` to ret(kmem_alloc) +0x14 (`sw` at 0x2c44).
  Loads 4 bytes from a3 (arg3 at entry) +0x8 into `a6` (`lw` at 0x2c48).
  Stores 4 bytes from `a6` to ret(kmem_alloc) +0x18 (`sw` at 0x2c4c).
  Loads 4 bytes from a3 (arg3 at entry) +0xc into `a7` (`lw` at 0x2c50).
  Stores 4 bytes from `a7` to ret(kmem_alloc) +0x1c (`sw` at 0x2c58).
  Loads 4 bytes from a3 (arg3 at entry) +0x1c into `a0` (`lw` at 0x2c68).
  Performs 2 4-byte stores to ret(kmem_alloc) +0x2c, including `sw` at 0x2c70, `sw` at 0x2d94.
  Loads 4 bytes from a3 (arg3 at entry) +0x20 into `a1` (`lw` at 0x2c78).
  Performs 2 4-byte stores to ret(kmem_alloc) +0x30, including `sw` at 0x2c80, `sw` at 0x2da0.
  Loads 1 byte from ret(kmem_alloc) +0x11 into `a2` (`lbu` at 0x2cd4).
  Stores 4 bytes from `zero` to ret(kmem_alloc) +0x68 (`sw` at 0x2ce0).
  Stores 8 bytes from `t2` to ret(kmem_alloc) +0x60 (`sd` at 0x2ce8).
  Stores 4 bytes from `zero` to ret(kmem_alloc) +0x58 (`sw` at 0x2cf0).
  Stores 8 bytes from `zero` to ret(kmem_alloc) +0x50 (`sd` at 0x2cf8).
  Loads 4 bytes from (([ret(kmem_alloc)+17]:1 << 0x2) + sym(.data)) +0x0 into `a2` (`lw` at 0x2d00).
  Stores 4 bytes from `zero` to ret(kmem_alloc) +0x4c (`sw` at 0x2d04).
  Stores 4 bytes from `a0` to ret(kmem_alloc) +0x48 (`sw` at 0x2d10).
  Stores 4 bytes from `a1` to ret(kmem_alloc) +0x3c (`sw` at 0x2d14).
  Stores 8 bytes from `s2` to ((a2 << 0x3) + a1) +0x10 (`sd` at 0x2d5c).
  Loads 4 bytes from a1 (arg1 at entry) +0x90 into `a5` (`lw` at 0x2d60).
  Stores 4 bytes from `a5` to a1 (arg1 at entry) +0x90 (`sw` at 0x2d74).
  Calls `kmem_alloc` via direct with a0=0x88, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[a3+20], a5=[a3+24] (`jal` at 0x2bc4).
  Calls `odsy_mm_reserve` via direct with a0=ret(kmem_alloc), a1=?, a2=[(([ret(kmem_alloc)+17]:1 << 0x2) + sym(.data))], a3=sym(.data), a4=([a3+24] + [a3+12]), a6=[a3+8], a7=[a3+12] (`jal` at 0x2d18).
  Calls `odsy_mm_obj_destroy` via direct with a0=ret(kmem_alloc), a1=?, a2=?, a3=? (`jal` at 0x2d28).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2db0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=[a3+20], a4=-0x9, a6=[a3+8], a7=[a3+12] (`jal` at 0x2dd0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=[a3+20], a4=([a3+24] + [a3+12]), a6=[a3+8], a7=[a3+12] (`jal` at 0x2df0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x8, a5=0x4 (`jal` at 0x2e0c).
  The `beq` at 0x2b5c is taken when a0(=[a3+1]:1) == at(=0x20) and falls through when a0(=[a3+1]:1) != at(=0x20).
  The `beq` at 0x2b68 is taken when a0(=[a3+1]:1) == v1(=0x10) and falls through when a0(=[a3+1]:1) != v1(=0x10).
  The `beq` at 0x2b70 is taken when a0(=[a3+1]:1) == a4(=0x8) and falls through when a0(=[a3+1]:1) != a4(=0x8).
  The `beq` at 0x2b78 is taken when a0(=[a3+1]:1) == a5(=0x4) and falls through when a0(=[a3+1]:1) != a5(=0x4).
  The `bne` at 0x2b80 is taken when a0(=[a3+1]:1) != at(=0x2) and falls through when a0(=[a3+1]:1) == at(=0x2).
  The `beq` at 0x2b90 is taken when a0(=[a3+16]) == 0 and falls through when a0(=[a3+16]) != 0.
  The `bne` at 0x2b98 is taken when v1(?) != 0 and falls through when v1(?) == 0.
  The `beq` at 0x2ba4 is taken when a4(=[a3+20]) == 0 and falls through when a4(=[a3+20]) != 0.
  The `beq` at 0x2bb4 is taken when a5(=[a3+24]) == 0 and falls through when a5(=[a3+24]) != 0.
  The `beq` at 0x2bd8 is taken when v0(=ret(kmem_alloc)) == 0 and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` at 0x2c7c is taken when (v0(?) & 0x1) == 0 and falls through when (v0(?) & 0x1) != 0.
  The `beq` at 0x2c84 is taken when a0(=[a3+28]) == 0 and falls through when a0(=[a3+28]) != 0.
  The `bne` at 0x2c90 is taken when at(?) != 0 and falls through when at(?) == 0.
  The `beq` at 0x2cb0 is taken when a1(=[a3+32]) == 0 and falls through when a1(=[a3+32]) != 0.
  The `bne` at 0x2cb8 is taken when v1(?) != 0 and falls through when v1(?) == 0.
  The `beq` at 0x2d20 is taken when v0(=ret(odsy_mm_reserve)) == 0 and falls through when v0(=ret(odsy_mm_reserve)) != 0.
  The `bne` at 0x2d84 is taken when a0(=[a3+28]) != 0 and falls through when a0(=[a3+28]) == 0.
  The `jr` at 0x2d44 returns with v0 = ?.

- `odsy_mm_obj_destroy` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x2e20, 300 bytes) Inferred.
  Performs 4 8-byte loads from a0 (arg0 at entry) +0x8, including `ld` at 0x2e20, `ld` at 0x2e70, `ld` at 0x2ee0.
  Performs 2 4-byte loads from a0 (arg0 at entry) +0x40, including `lw` at 0x2e24, `lw` at 0x2e54.
  Performs 2 8-byte loads from [a0+8]:8 +0x8, including `ld` at 0x2e2c, `ld` at 0x2e74.
  Performs 2 8-byte loads from [[a0+8]:8+8]:8 +0x8, including `ld` at 0x2e38, `ld` at 0x2e78.
  Loads 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x0 into `a0` (`ld` at 0x2e8c).
  Performs 2 8-byte loads from a0 (arg0 at entry) +0x50, including `ld` at 0x2e90, `ld` at 0x2ec0.
  Performs 2 4-byte loads from a0 (arg0 at entry) +0x58, including `lw` at 0x2ea0, `lw` at 0x2eb8.
  Performs 2 8-byte loads from ? (base unknown), including `ld` at 0x2ea4, `ld` at 0x2f30.
  Loads 4 bytes from ? (base unknown) into `at` (`lw` at 0x2ea8).
  Stores 8 bytes from `a0` to ? (base unknown) (`sd` at 0x2eb4).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x58 (`sw` at 0x2ec4).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x50 (`sd` at 0x2ec8).
  Loads 2 bytes from a0 (arg0 at entry) +0x0 into `a0` (`lh` at 0x2ecc).
  Stores 8 bytes from `zero` to ([a0+8]:8 + ([a0]:2 << 0x3)) +0x10 (`sd` at 0x2ee8).
  Loads 4 bytes from [a0+8]:8 +0x90 into `v0` (`lw` at 0x2ef0).
  Stores 4 bytes from `v0` to [a0+8]:8 +0x90 (`sw` at 0x2ef8).
  Stores 1 byte from `a2` to ? (base unknown) (`sb` at 0x2f10).
  Stores 4 bytes from `a1` to ? (base unknown) (`sw` at 0x2f48).
  Calls `odsy_mm_decommit` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+64], a3=a3 at entry (arg3) (`jal` at 0x2e4c).
  Calls `odsy_mm_release` via direct with a0=a0 at entry (arg0), a1=?, a2=[a0+64], a3=? (`jal` at 0x2e68).
  Calls `odsyDMAWait` via direct with a0=[[[[a0+8]:8+8]:8+8]:8]:8, a1=0x0, a2=0x1, a3=a0+96 (`jal` at 0x2e88).
  Calls `kmem_free` via direct with a0=[a0+80]:8, a1=[a0+88], a2=?, a3=? (`jal` at 0x2ebc).
  Calls `kmem_free` via direct with a0=a0 at entry (arg0), a1=0x88, a2=0x11, a3=? (`jal` at 0x2f18).
  The `beq` at 0x2e40 is taken when (a2(=[a0+64]) & 0x8) == 0 and falls through when (a2(=[a0+64]) & 0x8) != 0.
  The `beq` at 0x2e60 is taken when (a2(=[a0+64]) & 0x4) == 0 and falls through when (a2(=[a0+64]) & 0x4) != 0.
  The `beq` at 0x2e98 is taken when a1(=[a0+80]:8) == 0 and falls through when a1(=[a0+80]:8) != 0.
  The `beq` at 0x2eb0 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `beq` at 0x2ed8 is taken when a0(=[a0]:2) == at(=-0x1) and falls through when a0(=[a0]:2) != at(=-0x1).
  The `bne` at 0x2f0c is taken when a0(?) < 0x88 (unsigned) and falls through when a0(?) >= 0x88 (unsigned).
  The `bne` at 0x2f38 is taken when v1(?) < a0(?) (signed) and falls through when v1(?) >= a0(?) (signed).
  The `jr` at 0x2f28 returns with v0 = ret(kmem_free); f0 = ret(kmem_free).

- `odsy_mm_sg_remove_grp` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x2f4c, 64 bytes) Inferred.
  Loads 4 bytes from a1 (arg1 at entry) +0x0 into `a3` (`lw` at 0x2f4c).
  Stores 4 bytes from `v0` to a1 (arg1 at entry) +0x0 (`sw` at 0x2f80).
  Calls `OdsyDeallocCSetId` via direct with a0=a0+64, a1=[a1], a2=a2 at entry (arg2), a3=[a1], a4=a0 at entry (arg0) (`jal` at 0x2f6c).
  The `beq` at 0x2f5c is taken when at(=-0x1) == a3(=[a1]) and falls through when at(=-0x1) != a3(=[a1]).
  The `jr` at 0x2f84 returns with v0 = ?.

- `odsy_mm_sg_add_grp` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x2f8c, 640 bytes) Inferred.
  Performs 2 4-byte stores to a1 (arg1 at entry) +0x0, including `sw` at 0x2ff8, `sw` at 0x3114.
  Stores 8 bytes from `v0` to ret(kmem_alloc) +0x8 (`sd` at 0x305c).
  Stores 8 bytes from `zero` to ret(kmem_alloc) +0x10 (`sd` at 0x3080).
  Stores 8 bytes from `a5` to ret(kmem_alloc) +0x18 (`sd` at 0x308c).
  Loads 4 bytes from a2 (arg2 at entry) +0x34 into `a4` (`lw` at 0x3098).
  Stores 4 bytes from `a4` to a2 (arg2 at entry) +0x34 (`sw` at 0x30a0).
  Loads 8 bytes from ret(kmem_alloc) +0x10 into `at` (`ld` at 0x30a8).
  Stores 2 bytes from `a3` to a2 (arg2 at entry) +0x40 (`sh` at 0x30ac).
  Stores 8 bytes from `at` to a2 (arg2 at entry) +0x38 (`sd` at 0x30b0).
  Performs 2 4-byte loads from a1 (arg1 at entry) +0x0, including `lw` at 0x30e0, `lwu` at 0x315c.
  Loads 8 bytes from ? (base unknown) into `a4` (`ld` at 0x3160).
  Stores 8 bytes from `a4` to a1 (arg1 at entry) +0x98 (`sd` at 0x3174).
  Calls `OdsyAllocCSetId` via direct with a0=a0+64, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2fd4).
  Calls `OdsyLookupCSetId` via direct with a0=a0+104, a1=?, a2=?, a3=? (`jal` at 0x3014).
  Calls `kmem_alloc` via direct with a0=0x20, a1=0x0, a2=?, a3=? (`jal` at 0x303c).
  Calls `kmem_alloc` via direct with a0=0x4000, a1=0x0, a2=?, a3=? (`jal` at 0x3050).
  Calls `OdsyAllocSpecificCSetId` via direct with a0=?, a1=?, a2=ret(kmem_alloc), a3=? (`jal` at 0x3068).
  Calls `MapKernelRegionIntoUserSpace` via direct with a0=ret(kmem_alloc), a1=0x1, a2=?, a3=?, a4=-0x1, a5=0x4000 (`jal` at 0x3088).
  Calls `OdsyDeallocCSetId` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3108).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x3188).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x31a4).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x31c0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=-0x1 (`jal` at 0x31dc).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x31f8).
  The `beq` at 0x2fe0 is taken when v0(=ret(OdsyAllocCSetId)) == at(=-0x1) and falls through when v0(=ret(OdsyAllocCSetId)) != at(=-0x1).
  The `bne` at 0x3020 is taken when v0(=ret(OdsyLookupCSetId)) != 0 and falls through when v0(=ret(OdsyLookupCSetId)) == 0.
  The `beq` at 0x3034 is taken when a3(?) >= 0x80 (unsigned) and falls through when a3(?) < 0x80 (unsigned).
  The `beq` at 0x3044 is taken when v0(=ret(kmem_alloc)) == 0 and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` at 0x3058 is taken when v0(=ret(kmem_alloc)) == 0 and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` at 0x3074 is taken when v0(=ret(OdsyAllocSpecificCSetId)) == a4(=-0x1) and falls through when v0(=ret(OdsyAllocSpecificCSetId)) != a4(=-0x1).
  The `bne` at 0x3090 is taken when v0(=ret(MapKernelRegionIntoUserSpace)) != 0 and falls through when v0(=ret(MapKernelRegionIntoUserSpace)) == 0.
  The `beq` at 0x30d8 is taken when s1(?) == 0 and falls through when s1(?) != 0.
  The `beq` at 0x30f4 is taken when at(?) == v1(=-0x1) and falls through when at(?) != v1(=-0x1).
  The `bne` at 0x313c is taken when a4(?) != 0 and falls through when a4(?) == 0.
  The `bne` at 0x3144 is taken when at(?) != 0 and falls through when at(?) == 0.
  The `bne` at 0x314c is taken when v1(?) != 0 and falls through when v1(?) == 0.
  The `bne` at 0x3154 is taken when a3(?) != 0 and falls through when a3(?) == 0.
  The `jr` at 0x312c returns with v0 = ?.

- `odsy_mm_grp_new` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x320c, 280 bytes) Inferred.
  Performs 2 4-byte stores to ret(kmem_alloc) +0xcc, including `sw` at 0x3258, `sw` at 0x32f8.
  Stores 4 bytes from `at` to ret(kmem_alloc) +0x0 (`sw` at 0x3264).
  Stores 4 bytes from `zero` to ret(kmem_alloc) +0x90 (`sw` at 0x3268).
  Stores 4 bytes from `zero` to ret(kmem_alloc) +0xd0 (`sw` at 0x326c).
  Stores 8 bytes from `zero` to ret(kmem_alloc) +0xe8 (`sd` at 0x3274).
  Stores 8 bytes from `zero` to ret(kmem_alloc) +0xe0 (`sd` at 0x3280).
  Stores 8 bytes from `v1` to ret(kmem_alloc) +0xd8 (`sd` at 0x3290).
  Stores 8 bytes from `a0` to ret(kmem_alloc) +0x8 (`sd` at 0x3294).
  Loads 1 byte from a2 (arg2 at entry) +0xc into `v0` (`lbu` at 0x3298).
  Stores 4 bytes from `v0` to ret(kmem_alloc) +0xc8 (`sw` at 0x32ac).
  Loads 4 bytes from ret(kmem_alloc) +0x0 into `a3` (`lw` at 0x32b0).
  Loads 4 bytes from ret(kmem_alloc) +0xc8 into `a4` (`lw` at 0x32c4).
  Calls `kmem_alloc` via direct with a0=0xf0, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x322c).
  Calls `bzero` via direct with a0=ret(kmem_alloc)+16, a1=0x80, a2=?, a3=? (`jal` at 0x3260).
  Calls `OdsyInitCSet` via direct with a0=ret(kmem_alloc)+160, a1=0x2, a2=?, a3=? (`jal` at 0x327c).
  Calls `odsy_mm_sg_add_grp` via direct with a0=a1 at entry (arg1), a1=ret(kmem_alloc), a2=a2 at entry (arg2), a3=? (`jal` at 0x32a8).
  Calls `OdsyAllocCSetId` via direct with a0=a0+264, a1=ret(kmem_alloc), a2=?, a3=[ret(kmem_alloc)], a4=[ret(kmem_alloc)+200] (`jal` at 0x32d8).
  Calls `odsy_mm_grp_destroy` via direct with a0=ret(kmem_alloc), a1=?, a2=?, a3=? (`jal` at 0x32fc).
  The `bne` at 0x3238 is taken when v0(=ret(kmem_alloc)) != 0 and falls through when v0(=ret(kmem_alloc)) == 0.
  The `beq` at 0x32bc is taken when a3(=[ret(kmem_alloc)]) == v0(=-0x1) and falls through when a3(=[ret(kmem_alloc)]) != v0(=-0x1).
  The `beq` at 0x32c8 is taken when a4(=[ret(kmem_alloc)+200]) == 0 and falls through when a4(=[ret(kmem_alloc)+200]) != 0.
  The `beq` at 0x32ec is taken when v0(=ret(OdsyAllocCSetId)) == a3(=-0x1) and falls through when v0(=ret(OdsyAllocCSetId)) != a3(=-0x1).
  The `beq` at 0x32f4 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `bne` at 0x3314 is taken when a0(?) != 0 and falls through when a0(?) == 0.
  The `jr` at 0x3248 returns with v0 = ?.

- `odsy_mm_grp_destroy` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x3324, 432 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `at` (`lw` at 0x3324).
  Loads 8 bytes from ? (base unknown) into `a0` (`ld` at 0x3360).
  Stores 8 bytes from `zero` to ? (base unknown) (`sd` at 0x3378).
  Performs 2 1-byte stores to ? (base unknown), including `sb` at 0x33c4, `sb` at 0x34b0.
  Loads 8 bytes from ret(OdsyNextCSetElem) +0x10 into `s1` (`ld` at 0x3408).
  Loads 4 bytes from [ret(OdsyNextCSetElem)+16]:8 +0xa0 into `a1` (`lw` at 0x3448).
  Loads 4 bytes from a0 (arg0 at entry) +0xcc into `a1` (`lw` at 0x346c).
  Loads 8 bytes from a0 (arg0 at entry) +0xd8 into `a0` (`ld` at 0x347c).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a0` (`ld` at 0x3488).
  Calls `odsy_mm_obj_destroy` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x336c).
  Calls `OdsyInitCSetCursor` via direct with a0=a0+160, a1=?, a2=?, a3=? (`jal` at 0x3384).
  Calls `OdsyNextCSetElem` via direct with a0=a0+160, a1=?, a2=?, a3=? (`jal` at 0x3390).
  Calls `kmem_free` via direct with a0=ret(OdsyNextCSetElem), a1=0x28, a2=?, a3=? (`jal` at 0x33cc).
  Calls `OdsyInitCSetCursor` via direct with a0=a0+160, a1=?, a2=?, a3=? (`jal` at 0x33d4).
  Calls `OdsyNextCSetElem` via direct with a0=a0+160, a1=?, a2=?, a3=? (`jal` at 0x33dc).
  Calls `OdsyInitCSetCursor` via direct with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=? (`jal` at 0x33f0).
  Calls `OdsyNextCSetElem` via direct with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=? (`jal` at 0x33f8).
  Calls `odsy_mm_cores_destroy` via direct with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=? (`jal` at 0x340c).
  Calls `OdsyInitCSetCursor` via direct with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=? (`jal` at 0x3414).
  Calls `OdsyNextCSetElem` via direct with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=? (`jal` at 0x341c).
  Calls `OdsyDestroyCSet` via direct with a0=ret(OdsyNextCSetElem), a1=0x0, a2=?, a3=? (`jal` at 0x3438).
  Calls `OdsyDeallocCSetId` via direct with a0=a0+160, a1=[[ret(OdsyNextCSetElem)+16]:8+160], a2=?, a3=? (`jal` at 0x3444).
  Calls `OdsyDestroyCSet` via direct with a0=a0+160, a1=0x0, a2=?, a3=? (`jal` at 0x3464).
  Calls `OdsyDeallocCSetId` via direct with a0=[a0+216]:8+264, a1=[a0+204], a2=-0x1, a3=? (`jal` at 0x3480).
  Calls `odsy_mm_sg_remove_grp` via direct with a0=[a0+8]:8, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x348c).
  Calls `kmem_free` via direct with a0=a0 at entry (arg0), a1=0xf0, a2=?, a3=? (`jal` at 0x34bc).
  The `beq` at 0x3334 is taken when at(=[a0]) == v0(=-0x1) and falls through when at(=[a0]) != v0(=-0x1).
  The `beq` at 0x3354 is taken when s0(?) >= 0x10 (signed) and falls through when s0(?) < 0x10 (signed).
  The `beq` at 0x3364 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x339c is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` at 0x33c0 is taken when v0(?) < 0x28 (unsigned) and falls through when v0(?) >= 0x28 (unsigned).
  The `beq` at 0x33e4 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x3400 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` at 0x3424 is taken when v0(=ret(OdsyNextCSetElem)) != 0 and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `beq` at 0x342c is taken when s1(=[ret(OdsyNextCSetElem)+16]:8) == 0 and falls through when s1(=[ret(OdsyNextCSetElem)+16]:8) != 0.
  The `beq` at 0x3474 is taken when a2(=-0x1) == a1(=[a0+204]) and falls through when a2(=-0x1) != a1(=[a0+204]).
  The `bne` at 0x34ac is taken when v0(?) < 0xf0 (unsigned) and falls through when v0(?) >= 0xf0 (unsigned).
  The `jr` at 0x34cc returns with v0 = ret(kmem_free); f0 = ret(kmem_free).

- `odsy_mm_cores_destroy` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x34d4, 192 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x34 into `a1` (`lw` at 0x34d4).
  Loads 8 bytes from a0 (arg0 at entry) +0x38 into `a0` (`ld` at 0x34f8).
  Stores 4 bytes from `s1` to a0 (arg0 at entry) +0x34 (`sw` at 0x34fc).
  Loads 4 bytes from a0 (arg0 at entry) +0x30 into `a1` (`lw` at 0x3504).
  Loads 8 bytes from a0 (arg0 at entry) +0x10 into `a0` (`ld` at 0x3510).
  Stores 4 bytes from `s1` to a0 (arg0 at entry) +0x30 (`sw` at 0x3520).
  Loads 4 bytes from a0 (arg0 at entry) +0x18 into `a1` (`lw` at 0x3528).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a0` (`ld` at 0x3534).
  Loads 8 bytes from [a0+8]:8 +0x8 into `a0` (`ld` at 0x3538).
  Loads 8 bytes from [[a0+8]:8+8]:8 +0x8 into `a0` (`ld` at 0x353c).
  Loads 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x0 into `a0` (`ld` at 0x3540).
  Stores 1 byte from `a1` to ? (base unknown) (`sb` at 0x356c).
  Calls `OdsyDeallocCSetId` via direct with a0=[a0+56]:8, a1=[a0+52], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x34f4).
  Calls `OdsyDeallocCSetId` via direct with a0=[a0+16]:8+184, a1=[a0+48], a2=?, a3=? (`jal` at 0x3518).
  Calls `OdsyFree32kSlot` via direct with a0=[[[[a0+8]:8+8]:8+8]:8]:8+6112, a1=[a0+24], a2=?, a3=? (`jal` at 0x3548).
  Calls `kmem_free` via direct with a0=a0 at entry (arg0), a1=0x48, a2=?, a3=? (`jal` at 0x3578).
  The `beq` at 0x34e8 is taken when a1(=[a0+52]) == s1(=-0x1) and falls through when a1(=[a0+52]) != s1(=-0x1).
  The `beq` at 0x3508 is taken when a1(=[a0+48]) == s1(=-0x1) and falls through when a1(=[a0+48]) != s1(=-0x1).
  The `beq` at 0x352c is taken when a1(=[a0+24]) == s1(=-0x1) and falls through when a1(=[a0+24]) != s1(=-0x1).
  The `bne` at 0x3568 is taken when a0(?) < 0x48 (unsigned) and falls through when a0(?) >= 0x48 (unsigned).
  The `jr` at 0x358c returns with v0 = ret(kmem_free); f0 = ret(kmem_free).

- `odsy_mm_cores_new` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x3594, 1004 bytes) Inferred.
  Loads 8 bytes from a1 (arg1 at entry) +0x8 into `at` (`ld` at 0x35dc).
  Loads 8 bytes from [a1+8]:8 +0x8 into `at` (`ld` at 0x35e4).
  Loads 8 bytes from [[a1+8]:8+8]:8 +0x0 into `at` (`ld` at 0x35f0).
  Stores 4 bytes from `zero` to ret(kmem_alloc) +0x40 (`sw` at 0x3620).
  Performs 2 4-byte stores to ret(kmem_alloc) +0x18, including `sw` at 0x3628, `sw` at 0x36b0.
  Performs 2 4-byte stores to ret(kmem_alloc) +0x34, including `sw` at 0x362c, `sw` at 0x3690.
  Performs 2 4-byte stores to ret(kmem_alloc) +0x30, including `sw` at 0x3630, `sw` at 0x3674.
  Stores 8 bytes from `a3` to ret(kmem_alloc) +0x38 (`sd` at 0x3644).
  Stores 4 bytes from `a2` to ret(kmem_alloc) +0x4 (`sw` at 0x3648).
  Stores 8 bytes from `v1` to ret(kmem_alloc) +0x10 (`sd` at 0x364c).
  Stores 8 bytes from `a0` to ret(kmem_alloc) +0x8 (`sd` at 0x3650).
  Stores 4 bytes from `a1` to ret(kmem_alloc) +0x0 (`sw` at 0x3658).
  Loads 4 bytes from ret(kmem_alloc) +0x30 into `a1` (`lw` at 0x36a8).
  Performs 4 8-byte stores to ? (base unknown), including `sd` at 0x371c, `sd` at 0x3734, `sd` at 0x3830.
  Performs 6 8-byte loads from ? (base unknown), including `ld` at 0x3774, `ld` at 0x37ac, `ld` at 0x3824.
  Stores 4 bytes from `at` to ? (base unknown) (`sw` at 0x3790).
  Loads 4 bytes from a6 (arg6 at entry) +0x0 into `a7` (`lw` at 0x379c).
  Stores 2 bytes from `v1` to a6 (arg6 at entry) +0x20 (`sh` at 0x37a0).
  Stores 4 bytes from `a7` to a6 (arg6 at entry) +0x0 (`sw` at 0x37a8).
  Stores 8 bytes from `t0` to a6 (arg6 at entry) +0x18 (`sd` at 0x37b0).
  Performs 2 4-byte loads from ? (base unknown), including `lw` at 0x3820, `lw` at 0x3838.
  Stores 2 bytes from `zero` to ? (base unknown) (`sh` at 0x3834).
  Performs 3 1-byte stores to ? (base unknown), including `sb` at 0x38d4, `sb` at 0x3930, `sb` at 0x3960.
  Calls `kmem_alloc` via direct with a0=0x48, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x35f8).
  Calls `OdsyAllocCSetId` via direct with a0=a5 at entry (arg5), a1=ret(kmem_alloc), a2=a2 at entry (arg2), a3=a4 at entry (arg4), a4=-0x1 (`jal` at 0x3660).
  Calls `OdsyAllocCSetId` via direct with a0=a4 at entry (arg4), a1=ret(kmem_alloc), a2=?, a3=?, a7=-0x1 (`jal` at 0x367c).
  Calls `OdsyAlloc32kSlot` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3694).
  Calls `OdsyLookupCSetId` via direct with a0=a0+224, a1=?, a2=?, a3=?, a7=-0x1 (`jal` at 0x36c4).
  Calls `kmem_alloc` via direct with a0=0x20, a1=0x0, a2=ret(OdsyLookupCSetId), a3=? (`jal` at 0x36ec).
  Calls `bzero` via direct with a0=ret(kmem_alloc), a1=0x20, a2=?, a3=? (`jal` at 0x3700).
  Calls `kmem_alloc` via direct with a0=0x4000, a1=0x0, a2=?, a3=? (`jal` at 0x370c).
  Calls `OdsyAllocSpecificCSetId` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3730).
  Calls `MapKernelRegionIntoUserSpace` via direct with a0=?, a1=0x3, a2=?, a3=? (`jal` at 0x3754).
  Calls `odsy_mm_cores_destroy` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3804).
  Calls `bzero` via direct with a0=?, a1=0x10, a2=?, a3=? (`jal` at 0x3850).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=ret(OdsyLookupCSetId), a3=? (`jal` at 0x386c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x3890).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x38b0).
  Calls `kmem_free` via direct with a0=?, a1=0x20, a2=?, a3=0x25 (`jal` at 0x38dc).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x38fc).
  Calls `OdsyDeallocCSetId` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3908).
  Calls `kmem_free` via direct with a0=?, a1=0x4000, a2=?, a3=0x27 (`jal` at 0x393c).
  Calls `kmem_free` via direct with a0=?, a1=0x20, a2=?, a3=0x29 (`jal` at 0x3968).
  The `bne` at 0x360c is taken when s0(=ret(kmem_alloc)) != 0 and falls through when s0(=ret(kmem_alloc)) == 0.
  The `beq` at 0x366c is taken when v0(=ret(OdsyAllocCSetId)) == a7(=-0x1) and falls through when v0(=ret(OdsyAllocCSetId)) != a7(=-0x1).
  The `beq` at 0x3688 is taken when v0(=ret(OdsyAllocCSetId)) == t0(=-0x1) and falls through when v0(=ret(OdsyAllocCSetId)) != t0(=-0x1).
  The `beq` at 0x36a0 is taken when v0(=ret(OdsyAlloc32kSlot)) == a7(=-0x1) and falls through when v0(=ret(OdsyAlloc32kSlot)) != a7(=-0x1).
  The `bne` at 0x36d0 is taken when v0(=ret(OdsyLookupCSetId)) != 0 and falls through when v0(=ret(OdsyLookupCSetId)) == 0.
  The `beq` at 0x36e0 is taken when a7(?) >= 0x20 (unsigned) and falls through when a7(?) < 0x20 (unsigned).
  The `beq` at 0x36f4 is taken when v0(=ret(kmem_alloc)) == 0 and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` at 0x3718 is taken when v0(=ret(kmem_alloc)) == 0 and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` at 0x3748 is taken when v0(=ret(OdsyAllocSpecificCSetId)) == at(=-0x1) and falls through when v0(=ret(OdsyAllocSpecificCSetId)) != at(=-0x1).
  The `bne` at 0x375c is taken when v0(=ret(MapKernelRegionIntoUserSpace)) != 0 and falls through when v0(=ret(MapKernelRegionIntoUserSpace)) == 0.
  The `bne` at 0x3768 is taken when a7(?) != 0 and falls through when a7(?) == 0.
  The `bne` at 0x378c is taken when v0(?) < 0x2 (signed) and falls through when v0(?) >= 0x2 (signed).
  The `bne` at 0x37dc is taken when t0(?) != 0 and falls through when t0(?) == 0.
  The `bne` at 0x37e4 is taken when at(?) != 0 and falls through when at(?) == 0.
  The `bne` at 0x37ec is taken when v1(?) != 0 and falls through when v1(?) == 0.
  The `bne` at 0x37f4 is taken when a7(?) != 0 and falls through when a7(?) == 0.
  The `beq` at 0x37fc is taken when t0(?) == 0 and falls through when t0(?) != 0.
  The `bne` at 0x38d0 is taken when a1(?) < 0x20 (unsigned) and falls through when a1(?) >= 0x20 (unsigned).
  The `bne` at 0x392c is taken when a1(?) < 0x4000 (signed) and falls through when a1(?) >= 0x4000 (signed).
  The `bne` at 0x395c is taken when a1(?) < 0x20 (unsigned) and falls through when a1(?) >= 0x20 (unsigned).
  The `jr` at 0x3618 returns with v0 = ?.

- `SetupDMAParams` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x3980, 516 bytes) Inferred.
  Loads 4 bytes from a1 (arg1 at entry) +0x0 into `v1` (`lw` at 0x39ac).
  Loads 4 bytes from a0 (arg0 at entry) +0x38 into `a0` (`lw` at 0x39b0).
  Stores 4 bytes from `v1` to a1 (arg1 at entry) +0x0 (`sw` at 0x39cc).
  Loads 4 bytes from a1 (arg1 at entry) +0x8 into `ra` (`lw` at 0x39d0).
  Loads 4 bytes from a0 (arg0 at entry) +0x2c into `at` (`lw` at 0x39d4).
  Stores 4 bytes from `ra` to a1 (arg1 at entry) +0x8 (`sw` at 0x39e8).
  Loads 4 bytes from a1 (arg1 at entry) +0xc into `a3` (`lw` at 0x39ec).
  Performs 2 4-byte loads from a0 (arg0 at entry) +0x20, including `lw` at 0x39f0, `lw` at 0x3ae8.
  Performs 2 4-byte stores to a1 (arg1 at entry) +0xc, including `sw` at 0x3a04, `sw` at 0x3a18.
  Loads 4 bytes from a0 (arg0 at entry) +0x24 into `ra` (`lw` at 0x3a08).
  Loads 4 bytes from a1 (arg1 at entry) +0x4 into `v0` (`lw` at 0x3a1c).
  Loads 4 bytes from a0 (arg0 at entry) +0x14 into `v1` (`lw` at 0x3a20).
  Performs 2 4-byte stores to a1 (arg1 at entry) +0x4, including `sw` at 0x3a30, `sw` at 0x3a44.
  Loads 4 bytes from a0 (arg0 at entry) +0x18 into `v1` (`lw` at 0x3a34).
  Performs 2 1-byte loads from a0 (arg0 at entry) +0x11, including `lbu` at 0x3a48, `lbu` at 0x3aec.
  Loads 4 bytes from a1 (arg1 at entry) +0x10 into `a1` (`lw` at 0x3a94).
  Loads 4 bytes from ? (base unknown) into `a3` (`lw` at 0x3ac4).
  Performs 2 4-byte stores to a1 (arg1 at entry) +0x10, including `sw` at 0x3ad4, `sw` at 0x3ae4.
  Loads 4 bytes from a1 (arg1 at entry) +0x1c into `a1` (`lw` at 0x3af0).
  Loads 4 bytes from a1 (arg1 at entry) +0x18 into `a0` (`lw` at 0x3b34).
  Stores 4 bytes from `a4` to a1 (arg1 at entry) +0x1c (`sw` at 0x3b48).
  Stores 4 bytes from `a0` to a1 (arg1 at entry) +0x18 (`sw` at 0x3b54).
  Calls `bzero` via direct with a0=a1 at entry (arg1), a1=0x20, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x39a4).
  The `beq` at 0x3a64 is taken when a0(=[a0+17]:1) == at(=0x10) and falls through when a0(=[a0+17]:1) != at(=0x10).
  The `beq` at 0x3a70 is taken when a0(=[a0+17]:1) == at(=0x8) and falls through when a0(=[a0+17]:1) != at(=0x8).
  The `beq` at 0x3a78 is taken when a0(=[a0+17]:1) == v0(=0x4) and falls through when a0(=[a0+17]:1) != v0(=0x4).
  The `beq` at 0x3a80 is taken when a0(=[a0+17]:1) == v1(=0x2) and falls through when a0(=[a0+17]:1) != v1(=0x2).
  The `jr` at 0x3b5c returns with v0 = ((a2 | 0x32) << 0x18); f0 = ret(bzero).

- `mm_okay_to_swap_in` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x3b84, 364 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x38 into `s0` (`lw` at 0x3b90).
  Performs 2 8-byte loads from a0 (arg0 at entry) +0x8, including `ld` at 0x3b98, `ld` at 0x3c94.
  Performs 2 8-byte loads from [a0+8]:8 +0x8, including `ld` at 0x3ba0, `ld` at 0x3ca8.
  Loads 4 bytes from a0 (arg0 at entry) +0x3c into `s2` (`lw` at 0x3ba4).
  Loads 8 bytes from [[a0+8]:8+8]:8 +0x8 into `s4` (`ld` at 0x3ba8).
  Performs 3 8-byte loads from ? (base unknown), including `ld` at 0x3c34, `ld` at 0x3c90, `ld` at 0x3ca4.
  Performs 5 4-byte loads from ? (base unknown), including `lw` at 0x3c48, `lw` at 0x3c58, `lw` at 0x3c5c.
  Loads 2 bytes from ? (base unknown) into `a7` (`lh` at 0x3c88).
  Loads 2 bytes from a0 (arg0 at entry) +0x0 into `a4` (`lh` at 0x3c8c).
  Loads 4 bytes from [a0+8]:8 +0x0 into `a3` (`lw` at 0x3c9c).
  Loads 4 bytes from [[a0+8]:8+8]:8 +0x14 into `a2` (`lw` at 0x3cbc).
  Calls `OdsyInitCSetCursor` via direct with a0=[[[a0+8]:8+8]:8+8]:8+1488, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3bbc).
  Calls `OdsyNextCSetElem` via direct with a0=[[[a0+8]:8+8]:8+8]:8+1488, a1=?, a2=?, a3=? (`jal` at 0x3bc4).
  Calls `OdsyNextCSetElem` via direct with a0=[[[a0+8]:8+8]:8+8]:8+1488, a1=?, a2=?, a3=? (`jal` at 0x3bdc).
  Calls `OdsyInitCSetCursor` via direct with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=? (`jal` at 0x3bec).
  Calls `OdsyNextCSetElem` via direct with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=? (`jal` at 0x3bf4).
  Calls `OdsyNextCSetElem` via direct with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=? (`jal` at 0x3c0c).
  Calls `cmn_err` via direct with a0=0x7, a1=sym(.rodata), a2=[[[a0+8]:8+8]:8+20], a3=[[a0+8]:8], a4=[a0]:2 (`jal` at 0x3cb8).
  The `beq` at 0x3bcc is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x3be4 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x3bfc is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x3c14 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x3c28 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `beq` at 0x3c38 is taken when t2(?) == 0 and falls through when t2(?) != 0.
  The `beq` at 0x3c40 is taken when t2(?) == s1(=a0) and falls through when t2(?) != s1(=a0).
  The `beq` at 0x3c50 is taken when (at(?) & 0x1) == 0 and falls through when (at(?) & 0x1) != 0.
  The `bne` at 0x3c68 is taken when a4(?) < s0(=[a0+56]) (signed) and falls through when a4(?) >= s0(=[a0+56]) (signed).
  The `bne` at 0x3c70 is taken when v1(?) != 0 and falls through when v1(?) == 0.
  The `beq` at 0x3c78 is taken when a1(?) == 0 and falls through when a1(?) != 0.
  The `bne` at 0x3c80 is taken when a2(?) != 0 and falls through when a2(?) == 0.
  The `jr` at 0x3ce8 returns with v0 = one of 0x0, 0x1.

- `odsy_mm_check_for_mutations` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x3cf0, 260 bytes) Inferred.
  Performs 2 8-byte loads from ? (base unknown), including `ld` at 0x3d90, `ld` at 0x3dac.
  Loads 4 bytes from ? (base unknown) into `a1` (`lw` at 0x3d9c).
  Calls `OdsyInitCSetCursor` via direct with a0=a0+1488, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3d08).
  Calls `OdsyNextCSetElem` via direct with a0=a0+1488, a1=?, a2=?, a3=? (`jal` at 0x3d10).
  Calls `OdsyNextCSetElem` via direct with a0=a0+1488, a1=?, a2=?, a3=? (`jal` at 0x3d38).
  Calls `OdsyInitCSetCursor` via direct with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=? (`jal` at 0x3d48).
  Calls `OdsyNextCSetElem` via direct with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=? (`jal` at 0x3d50).
  Calls `OdsyNextCSetElem` via direct with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=? (`jal` at 0x3d68).
  Calls `odsy_mm_obj_xfr_backing_store` via direct with a0=?, a1=sp-80, a2=0x1, a3=? (`jal` at 0x3dc0).
  The `beq` at 0x3d20 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x3d40 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x3d58 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x3d70 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x3d84 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `beq` at 0x3d94 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `beq` at 0x3da4 is taken when (a1(?) & 0x1) == 0 and falls through when (a1(?) & 0x1) != 0.
  The `beq` at 0x3db0 is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `jr` at 0x3dec returns with v0 = ?; f0 = ret(OdsyNextCSetElem).

- `odsy_mm_jettison_freerun_backing_store` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x3df4, 316 bytes) Inferred.
  Performs 7 8-byte loads from ? (base unknown), including `ld` at 0x3e90, `ld` at 0x3ebc, `ld` at 0x3ed8.
  Performs 3 4-byte loads from ? (base unknown), including `lw` at 0x3e94, `lw` at 0x3ec8, `lw` at 0x3f08.
  Loads 8 bytes from a0 (arg0 at entry) +0x6b0 into `at` (`ld` at 0x3e98).
  Stores 8 bytes from `at` to a0 (arg0 at entry) +0x6b0 (`sd` at 0x3ea0).
  Stores 4 bytes from `zero` to ? (base unknown) (`sw` at 0x3ea4).
  Stores 8 bytes from `zero` to ? (base unknown) (`sd` at 0x3ea8).
  Calls `OdsyInitCSetCursor` via direct with a0=a0+1488, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3e0c).
  Calls `OdsyNextCSetElem` via direct with a0=a0+1488, a1=?, a2=?, a3=? (`jal` at 0x3e14).
  Calls `OdsyNextCSetElem` via direct with a0=a0+1488, a1=?, a2=?, a3=? (`jal` at 0x3e44).
  Calls `OdsyInitCSetCursor` via direct with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=? (`jal` at 0x3e54).
  Calls `OdsyNextCSetElem` via direct with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=? (`jal` at 0x3e5c).
  Calls `OdsyNextCSetElem` via direct with a0=ret(OdsyNextCSetElem)+64, a1=?, a2=?, a3=? (`jal` at 0x3e74).
  Calls `kmem_free` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3e8c).
  Calls `odsyDMAWait` via direct with a0=?, a1=0x0, a2=0x1, a3=? (`jal` at 0x3efc).
  The `beq` at 0x3e28 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x3e4c is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x3e64 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x3e7c is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x3eb0 is taken when a1(?) == 0 and falls through when a1(?) != 0.
  The `beq` at 0x3ec0 is taken when s5(?) == 0 and falls through when s5(?) != 0.
  The `beq` at 0x3ed0 is taken when (at(?) & 0x1) == 0 and falls through when (at(?) & 0x1) != 0.
  The `beq` at 0x3edc is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `jr` at 0x3f28 returns with v0 = ret(OdsyNextCSetElem); f0 = ret(OdsyNextCSetElem).

- `odsy_mm_B_warn` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x3f30, 64 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x6bc into `at` (`lw` at 0x3f30).
  Stores 4 bytes from `ra` to a0 (arg0 at entry) +0x6bc (`sw` at 0x3f64).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3f54).
  The `beq` at 0x3f38 is taken when at(=[a0+1724]) == 0 and falls through when at(=[a0+1724]) != 0.
  The `jr` at 0x3f40 returns with v0 = ?.

- `odsy_mm_B_okay` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x3f70, 8 bytes) Inferred.
  The `jr` at 0x3f70 returns with v0 = ?.
- `odsy_mm_obj_xfr_backing_store` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x3f78, 1336 bytes) Inferred.
  Performs 3 4-byte loads from a0 (arg0 at entry) +0x28, including `lw` at 0x3f80, `lw` at 0x4160, `lw` at 0x4228.
  Performs 3 8-byte loads from a0 (arg0 at entry) +0x8, including `ld` at 0x3f88, `ld` at 0x41d0, `ld` at 0x4404.
  Performs 2 4-byte loads from a0 (arg0 at entry) +0x48, including `lw` at 0x3f90, `lw` at 0x41d4.
  Performs 3 8-byte loads from [a0+8]:8 +0x8, including `ld` at 0x3f9c, `ld` at 0x41d8, `ld` at 0x4408.
  Performs 3 8-byte loads from [[a0+8]:8+8]:8 +0x8, including `ld` at 0x3fa4, `ld` at 0x41e0, `ld` at 0x440c.
  Performs 3 8-byte loads from a0 (arg0 at entry) +0x50, including `ld` at 0x3fa8, `ld` at 0x41e4, `ld` at 0x4424.
  Performs 3 8-byte loads from [[[a0+8]:8+8]:8+8]:8 +0x0, including `ld` at 0x3fac, `ld` at 0x41ec, `ld` at 0x4420.
  Loads 8 bytes from [[[[a0+8]:8+8]:8+8]:8]:8 +0x2e0 into `v0` (`ld` at 0x3fc0).
  Performs 3 8-byte loads from [[[a0+8]:8+8]:8+8]:8 +0x6b0, including `ld` at 0x3fd8, `ld` at 0x4010, `ld` at 0x4430.
  Performs 2 8-byte loads from [[[a0+8]:8+8]:8+8]:8 +0x6a0, including `ld` at 0x3fdc, `ld` at 0x4020.
  Performs 3 4-byte loads from [[[a0+8]:8+8]:8+8]:8 +0x6b8, including `lw` at 0x3ff0, `lw` at 0x400c, `lw` at 0x4290.
  Performs 2 4-byte stores to [[[a0+8]:8+8]:8+8]:8 +0x6b8, including `sw` at 0x4000, `sw` at 0x4454.
  Performs 2 8-byte stores to a0 (arg0 at entry) +0x50, including `sd` at 0x4074, `sd` at 0x445c.
  Performs 2 4-byte stores to a0 (arg0 at entry) +0x58, including `sw` at 0x4080, `sw` at 0x4460.
  Performs 2 8-byte stores to [[[a0+8]:8+8]:8+8]:8 +0x6b0, including `sd` at 0x4088, `sd` at 0x4444.
  Performs 3 4-byte stores to a0 (arg0 at entry) +0x4c, including `sw` at 0x40dc, `sw` at 0x42a4, `sw` at 0x4464.
  Performs 54 4-byte stores to table(0x110000) +0x0, including `sw` at 0x40e0, `sw` at 0x40e8, `sw` at 0x40f0.
  Loads 1 byte from a0 (arg0 at entry) +0x11 into `a7` (`lbu` at 0x4184).
  Loads 4 bytes from a0 (arg0 at entry) +0x30 into `a6` (`lw` at 0x4188).
  Loads 4 bytes from a0 (arg0 at entry) +0x1c into `a5` (`lw` at 0x4194).
  Loads 4 bytes from a0 (arg0 at entry) +0x38 into `a2` (`lw` at 0x41ac).
  Loads 4 bytes from a0 (arg0 at entry) +0x68 into `a4` (`lw` at 0x427c).
  Stores 4 bytes from `a4` to a0 (arg0 at entry) +0x68 (`sw` at 0x4288).
  Performs 19 4-byte stores to ? (base unknown), including `sw` at 0x42bc, `sw` at 0x42c8, `sw` at 0x42d0.
  Loads 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x6a8 into `a3` (`ld` at 0x4434).
  Calls `odsy_mm_jettison_freerun_backing_store` via direct with a0=[[[a0+8]:8+8]:8+8]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x4004).
  Calls `odsy_mm_B_warn` via direct with a0=[[[a0+8]:8+8]:8+8]:8, a1=?, a2=?, a3=? (`jal` at 0x4044).
  Calls `kmem_alloc` via direct with a0=?, a1=0x2000, a2=?, a3=? (`jal` at 0x4068).
  Calls `odsy_mm_B_okay` via direct with a0=[[[a0+8]:8+8]:8+8]:8, a1=?, a2=?, a3=? (`jal` at 0x4078).
  Calls `SetupDMAParams` via direct with a0=a0 at entry (arg0), a1=sp-176, a2=a2 at entry (arg2), a3=? (`jal` at 0x4094).
  Calls `odsyDMAOp` via direct with a0=0x0, a1=[[[[a0+8]:8+8]:8+8]:8]:8, a2=0x0, a3=?, a4=[a0+72], a5=a1 at entry (arg1), a6=sp-176, a7=a0+96 (`jal` at 0x4218).
  Calls `odsy_mm_B_warn` via direct with a0=[[[a0+8]:8+8]:8+8]:8, a1=?, a2=?, a3=? (`jal` at 0x433c).
  Calls `odsyDMAWait` via direct with a0=[[[[a0+8]:8+8]:8+8]:8]:8, a1=0x0, a2=0x1, a3=a0+96, a4=[a0+104]+1 (`jal` at 0x441c).
  Calls `kmem_free` via direct with a0=[a0+80]:8, a1=?, a2=?, a3=? (`jal` at 0x4428).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata), a2=?, a3=? (`jal` at 0x4478).
  The `bne` at 0x3fc8 is taken when at(=[a0+80]:8) != 0 and falls through when at(=[a0+80]:8) == 0.
  The `beq` at 0x3fd0 is taken when s2(=a2) == 0 and falls through when s2(=a2) != 0.
  The `beq` at 0x3fe8 is taken when v1(=[[[[a0+8]:8+8]:8+8]:8+1696]:8) >= v0(?) (signed) and falls through when v1(=[[[[a0+8]:8+8]:8+8]:8+1696]:8) < v0(?) (signed).
  The `beq` at 0x3ff4 is taken when v1(=[[[[a0+8]:8+8]:8+8]:8+1720]) == 0 and falls through when v1(=[[[[a0+8]:8+8]:8+8]:8+1720]) != 0.
  The `bne` at 0x4018 is taken when a3(=[[[[a0+8]:8+8]:8+8]:8+1720]) != 0 and falls through when a3(=[[[[a0+8]:8+8]:8+8]:8+1720]) == 0.
  The `beq` at 0x402c is taken when v1(=[[[[a0+8]:8+8]:8+8]:8+1696]:8) >= v0(?) (signed) and falls through when v1(=[[[[a0+8]:8+8]:8+8]:8+1696]:8) < v0(?) (signed).
  The `beq` at 0x4070 is taken when v0(=ret(kmem_alloc)) == 0 and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` at 0x40c4 is taken when s2(=a2) == 0 and falls through when s2(=a2) != 0.
  The `beq` at 0x4178 is taken when v1(=[a0+40]) == 0 and falls through when v1(=[a0+40]) != 0.
  The `bne` at 0x4220 is taken when v0(=ret(odsyDMAOp)) != 0 and falls through when v0(=ret(odsyDMAOp)) == 0.
  The `bne` at 0x4230 is taken when s4(?) < at(=[a0+40]) (unsigned) and falls through when s4(?) >= at(=[a0+40]) (unsigned).
  The `beq` at 0x4254 is taken when v1(=a2) == 0 and falls through when v1(=a2) != 0.
  The `beq` at 0x429c is taken when a3(=[[[[a0+8]:8+8]:8+8]:8+1720]) == 0 and falls through when a3(=[[[[a0+8]:8+8]:8+8]:8+1720]) != 0.
  The `bne` at 0x4448 is taken when a3(=[[[[a0+8]:8+8]:8+8]:8+1704]:8) < a4(?) (signed) and falls through when a3(=[[[[a0+8]:8+8]:8+8]:8+1704]:8) >= a4(?) (signed).
  The `jr` at 0x426c returns with v0 = one of 0x0, 0xc, 0x16.

- `odsy_mm_reserve` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x44b0, 464 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `v0` (`ld` at 0x44b4).
  Loads 8 bytes from [a0+8]:8 +0x8 into `v0` (`ld` at 0x44bc).
  Loads 8 bytes from [[a0+8]:8+8]:8 +0x8 into `v0` (`ld` at 0x44c0).
  Loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x69c into `at` (`lw` at 0x44c4).
  Stores 4 bytes from `at` to [[[a0+8]:8+8]:8+8]:8 +0x69c (`sw` at 0x44e4).
  Loads 1 byte from a0 (arg0 at entry) +0x10 into `v0` (`lbu` at 0x44e8).
  Loads 4 bytes from ? (base unknown) into `s1` (`lw` at 0x4520).
  Stores 4 bytes from `s1` to ? (base unknown) (`sw` at 0x4528).
  Loads 4 bytes from a0 (arg0 at entry) +0x40 into `at` (`lw` at 0x4570).
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x40 (`sw` at 0x4584).
  Performs 3 8-byte loads from ret(OdsyNextCSetElem) +0x28, including `ld` at 0x45d0, `ld` at 0x45dc, `ld` at 0x45e8.
  Performs 2 2-byte stores to [ret(OdsyNextCSetElem)+40]:8 +0x2, including `sh` at 0x45d4, `sh` at 0x45ec.
  Stores 2 bytes from `zero` to [ret(OdsyNextCSetElem)+40]:8 +0x0 (`sh` at 0x45e0).
  Stores 4 bytes from `zero` to ret(OdsyNextCSetElem) +0x40 (`sw` at 0x45fc).
  Calls `odsy_mm_reserve_pbuffer` via direct with a0=a0 at entry (arg0), a1=0x4, a2=0x6, a3=? (`jal` at 0x454c).
  Calls `OdsyInitCSetCursor` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4580).
  Calls `OdsyNextCSetElem` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4588).
  Calls `OdsyNextCSetElem` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x45a4).
  Calls `OdsyInitCSetCursor` via direct with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=? (`jal` at 0x45b4).
  Calls `OdsyNextCSetElem` via direct with a0=ret(OdsyNextCSetElem), a1=?, a2=?, a3=? (`jal` at 0x45bc).
  Calls `OdsyNextCSetElem` via direct with a0=ret(OdsyNextCSetElem), a1=[ret(OdsyNextCSetElem)+40]:8, a2=[ret(OdsyNextCSetElem)+40]:8, a3=[ret(OdsyNextCSetElem)+40]:8 (`jal` at 0x45f8).
  Calls `mm_init_freespace` via direct with a0=[[[a0+8]:8+8]:8+8]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x4628).
  Calls `odsy_mm_reserve_texture` via direct with a0=a0 at entry (arg0), a1=0x4, a2=0x6, a3=? (`jal` at 0x4640).
  Calls `odsy_mm_reserve_scratch` via direct with a0=a0 at entry (arg0), a1=0x4, a2=0x6, a3=? (`jal` at 0x4664).
  The `beq` at 0x44e0 is taken when s2(=0x1) == at(=[[[[a0+8]:8+8]:8+8]:8+1692]+1) and falls through when s2(=0x1) != at(=[[[[a0+8]:8+8]:8+8]:8+1692]+1).
  The `beq` at 0x44f4 is taken when v0(=[a0+16]:1) == v1(=0x3) and falls through when v0(=[a0+16]:1) != v1(=0x3).
  The `beq` at 0x44fc is taken when v0(=[a0+16]:1) == a1(=0x4) and falls through when v0(=[a0+16]:1) != a1(=0x4).
  The `beq` at 0x4504 is taken when v0(=[a0+16]:1) == a2(=0x6) and falls through when v0(=[a0+16]:1) != a2(=0x6).
  The `beq` at 0x4514 is taken when s0(=one of 0x0, 0xc) == 0 and falls through when s0(=one of 0x0, 0xc) != 0.
  The `bne` at 0x4560 is taken when s0(=one of 0x0, 0xc) != 0 and falls through when s0(=one of 0x0, 0xc) == 0.
  The `beq` at 0x4594 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x45ac is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x45c4 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` at 0x4600 is taken when v0(=ret(OdsyNextCSetElem)) != 0 and falls through when v0(=ret(OdsyNextCSetElem)) == 0.
  The `jr` at 0x453c returns with v0 = one of 0x0, 0xc.

- `odsy_mm_release` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x4680, 156 bytes) Inferred.
  Loads 1 byte from a0 (arg0 at entry) +0x10 into `a2` (`lbu` at 0x4680).
  Loads 4 bytes from a0 (arg0 at entry) +0x40 into `v0` (`lw` at 0x46dc).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `at` (`ld` at 0x46e4).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x40 (`sw` at 0x46ec).
  Loads 8 bytes from [a0+8]:8 +0x8 into `at` (`ld` at 0x46f0).
  Loads 8 bytes from [[a0+8]:8+8]:8 +0x8 into `at` (`ld` at 0x46f4).
  Loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x69c into `a1` (`lw` at 0x46f8).
  Stores 4 bytes from `a1` to [[[a0+8]:8+8]:8+8]:8 +0x69c (`sw` at 0x4704).
  Calls `odsy_mm_release_pbuffer` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+16]:1, a3=a3 at entry (arg3) (`jal` at 0x46b8).
  Calls `odsy_mm_release_scratch` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+16]:1, a3=a3 at entry (arg3) (`jal` at 0x46cc).
  Calls `odsy_mm_release_texture` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[a0+16]:1, a3=a3 at entry (arg3) (`jal` at 0x470c).
  The `beq` at 0x4694 is taken when a2(=[a0+16]:1) == at(=0x3) and falls through when a2(=[a0+16]:1) != at(=0x3).
  The `beq` at 0x469c is taken when a2(=[a0+16]:1) == v0(=0x4) and falls through when a2(=[a0+16]:1) != v0(=0x4).
  The `beq` at 0x46a4 is taken when a2(=[a0+16]:1) == v1(=0x6) and falls through when a2(=[a0+16]:1) != v1(=0x6).
  The `jr` at 0x46ac returns with v0 = ?.

- `odsy_mm_reserve_texture` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x471c, 348 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `s1` (`ld` at 0x4728).
  Loads 8 bytes from [a0+8]:8 +0x8 into `s0` (`ld` at 0x4730).
  Loads 4 bytes from a0 (arg0 at entry) +0x3c into `a4` (`lw` at 0x4734).
  Loads 8 bytes from [[a0+8]:8+8]:8 +0x90 into `a1` (`ld` at 0x4738).
  Loads 4 bytes from [a0+8]:8 +0xd0 into `a5` (`lw` at 0x473c).
  Loads 8 bytes from [[a0+8]:8+8]:8 +0x8 into `a5` (`ld` at 0x4754).
  Performs 2 4-byte loads from ? (base unknown), including `lw` at 0x4758, `lw` at 0x478c.
  Loads 8 bytes from ? (base unknown) into `a1` (`ld` at 0x475c).
  Performs 2 4-byte stores to ? (base unknown), including `sw` at 0x4774, `sw` at 0x486c.
  Loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x694 into `v0` (`lw` at 0x47b8).
  Loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x690 into `a0` (`lw` at 0x47bc).
  Loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x684 into `a6` (`lw` at 0x47d0).
  Loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x680 into `v0` (`lw` at 0x47d4).
  Loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x698 into `a2` (`lw` at 0x47f0).
  Stores 4 bytes from `v0` to [[a0+8]:8+8]:8 +0x98 (`sw` at 0x4814).
  Loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x688 into `a2` (`lw` at 0x4818).
  Stores 4 bytes from `v0` to [[[a0+8]:8+8]:8+8]:8 +0x688 (`sw` at 0x482c).
  Stores 4 bytes from `a4` to [a0+8]:8 +0xd0 (`sw` at 0x4838).
  Calls `odsy_mm_sg_remove_texture_group_from_list` via direct with a0=[[a0+8]:8+8]:8, a1=[a0+8]:8, a2=?, a3=?, a4=([a0+60] + [[a0+8]:8+208]), a5=[[[a0+8]:8+8]:8+8]:8 (`jal` at 0x483c).
  Calls `odsy_mm_sg_insert_texture_group_into_list` via direct with a0=[[a0+8]:8+8]:8, a1=[a0+8]:8, a2=?, a3=? (`jal` at 0x4848).
  The `beq` at 0x4750 is taken when a1(=[[[a0+8]:8+8]:8+144]:8) == 0 and falls through when a1(=[[[a0+8]:8+8]:8+144]:8) != 0.
  The `beq` at 0x4770 is taken when a1(?) == 0 and falls through when a1(?) != 0.
  The `bne` at 0x4778 is taken when a2(?) != 0 and falls through when a2(?) == 0.
  The `bne` at 0x4794 is taken when a3(?) < a4(=([a0+60] + [[a0+8]:8+208])) (signed) and falls through when a3(?) >= a4(=([a0+60] + [[a0+8]:8+208])) (signed).
  The `bne` at 0x47a4 is taken when v0(?) < 0x2 (signed) and falls through when v0(?) >= 0x2 (signed).
  The `beq` at 0x47b0 is taken when v0(?) == a3(=0x2) and falls through when v0(?) != a3(=0x2).
  The `beq` at 0x47c4 is taken when a0(=[[[[a0+8]:8+8]:8+8]:8+1680]) >= v0(=[[[[a0+8]:8+8]:8+8]:8+1684]) (signed) and falls through when a0(=[[[[a0+8]:8+8]:8+8]:8+1680]) < v0(=[[[[a0+8]:8+8]:8+8]:8+1684]) (signed).
  The `beq` at 0x47dc is taken when v0(=[[[[a0+8]:8+8]:8+8]:8+1664]) >= a6(=[[[[a0+8]:8+8]:8+8]:8+1668]) (signed) and falls through when v0(=[[[[a0+8]:8+8]:8+8]:8+1664]) < a6(=[[[[a0+8]:8+8]:8+8]:8+1668]) (signed).
  The `beq` at 0x4804 is taken when a2(=[[[[a0+8]:8+8]:8+8]:8+1688]) >= a3(?) (signed) and falls through when a2(=[[[[a0+8]:8+8]:8+8]:8+1688]) < a3(?) (signed).
  The `beq` at 0x4820 is taken when a2(=[[[[a0+8]:8+8]:8+8]:8+1672]) >= v0(=table(0x0)) (signed) and falls through when a2(=[[[[a0+8]:8+8]:8+8]:8+1672]) < v0(=table(0x0)) (signed).
  The `jr` at 0x4860 returns with v0 = one of 0x0, 0x1.

- `odsy_mm_release_texture` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x4878, 304 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x3c into `v0` (`lw` at 0x4880).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `s4` (`ld` at 0x4888).
  Performs 2 4-byte loads from [a0+8]:8 +0xd0, including `lw` at 0x4890, `lw` at 0x48b4.
  Loads 8 bytes from [a0+8]:8 +0x8 into `s1` (`ld` at 0x4894).
  Loads 8 bytes from [[a0+8]:8+8]:8 +0x8 into `s0` (`ld` at 0x48a0).
  Stores 4 bytes from `at` to [a0+8]:8 +0xd0 (`sw` at 0x48a8).
  Loads 8 bytes from [[a0+8]:8+8]:8 +0x90 into `a0` (`ld` at 0x48c8).
  Loads 4 bytes from [[a0+8]:8+8]:8 +0x98 into `a4` (`lw` at 0x48d8).
  Performs 2 4-byte loads from ? (base unknown), including `lw` at 0x48dc, `lw` at 0x4970.
  Performs 2 8-byte loads from ? (base unknown), including `ld` at 0x48e0, `ld` at 0x4974.
  Stores 4 bytes from `a1` to [[a0+8]:8+8]:8 +0x98 (`sw` at 0x48fc).
  Performs 2 4-byte loads from [[[a0+8]:8+8]:8+8]:8 +0x688, including `lw` at 0x4900, `lw` at 0x4990.
  Performs 2 4-byte stores to [[[a0+8]:8+8]:8+8]:8 +0x688, including `sw` at 0x4910, `sw` at 0x49a4.
  Performs 2 8-byte loads from ret(OdsyNextCSetElem) +0x90, including `ld` at 0x4930, `ld` at 0x4960.
  Calls `odsy_mm_sg_remove_texture_group_from_list` via direct with a0=[[a0+8]:8+8]:8, a1=[a0+8]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x48ac).
  Calls `odsy_mm_sg_insert_texture_group_into_list` via direct with a0=[[a0+8]:8+8]:8, a1=[a0+8]:8, a2=?, a3=? (`jal` at 0x48c0).
  Calls `OdsyInitCSetCursor` via direct with a0=[[[a0+8]:8+8]:8+8]:8+1488, a1=?, a2=?, a3=?, a4=[[[a0+8]:8+8]:8+152] (`jal` at 0x4914).
  Calls `OdsyNextCSetElem` via direct with a0=[[[a0+8]:8+8]:8+8]:8+1488, a1=?, a2=?, a3=? (`jal` at 0x491c).
  Calls `OdsyNextCSetElem` via direct with a0=[[[a0+8]:8+8]:8+8]:8+1488, a1=?, a2=?, a3=? (`jal` at 0x4950).
  The `beq` at 0x48b8 is taken when v1(=[[a0+8]:8+208]) == 0 and falls through when v1(=[[a0+8]:8+208]) != 0.
  The `beq` at 0x48d4 is taken when a0(=[[[a0+8]:8+8]:8+144]:8) == 0 and falls through when a0(=[[[a0+8]:8+8]:8+144]:8) != 0.
  The `beq` at 0x48ec is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `bne` at 0x48f4 is taken when a3(?) != 0 and falls through when a3(?) == 0.
  The `bne` at 0x4904 is taken when at(=[[[[a0+8]:8+8]:8+8]:8+1672]) != a4(=[[[a0+8]:8+8]:8+152]) and falls through when at(=[[[[a0+8]:8+8]:8+8]:8+1672]) == a4(=[[[a0+8]:8+8]:8+152]).
  The `beq` at 0x4924 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x4958 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x4968 is taken when a0(=[ret(OdsyNextCSetElem)+144]:8) == 0 and falls through when a0(=[ret(OdsyNextCSetElem)+144]:8) != 0.
  The `beq` at 0x4980 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `bne` at 0x4988 is taken when a2(?) != 0 and falls through when a2(?) == 0.
  The `beq` at 0x4998 is taken when a3(=[[[[a0+8]:8+8]:8+8]:8+1672]) >= a1(?) (signed) and falls through when a3(=[[[[a0+8]:8+8]:8+8]:8+1672]) < a1(?) (signed).
  The `jr` at 0x4948 returns with v0 = ?.

- `odsy_mm_sg_remove_texture_group_from_list` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x49a8, 96 bytes) Inferred.
  Performs 2 8-byte loads from a1 (arg1 at entry) +0xe0, including `ld` at 0x49a8, `ld` at 0x49bc.
  Performs 2 8-byte loads from a1 (arg1 at entry) +0xe8, including `ld` at 0x49b0, `ld` at 0x49b8.
  Performs 2 8-byte stores to [a1+224]:8 +0xe8, including `sd` at 0x49b4, `sd` at 0x49e8.
  Stores 8 bytes from `a4` to [a1+232]:8 +0xe0 (`sd` at 0x49c8).
  Performs 2 8-byte stores to a0 (arg0 at entry) +0x90, including `sd` at 0x49f0, `sd` at 0x4a04.
  Loads 8 bytes from a0 (arg0 at entry) +0x90 into `at` (`ld` at 0x49f4).
  The `beq` at 0x49ac is taken when a4(=[a1+224]:8) == 0 and falls through when a4(=[a1+224]:8) != 0.
  The `beq` at 0x49c0 is taken when a3(=[a1+232]:8) == 0 and falls through when a3(=[a1+232]:8) != 0.
  The `beq` at 0x49d4 is taken when a3(=[a1+232]:8) == 0 and falls through when a3(=[a1+232]:8) != 0.
  The `beq` at 0x49dc is taken when a4(=[a1+224]:8) == 0 and falls through when a4(=[a1+224]:8) != 0.
  The `bne` at 0x49f8 is taken when at(=[a0+144]:8) != a1 and falls through when at(=[a0+144]:8) == a1.
  The `jr` at 0x49cc returns with v0 = ?.
  The `jr` at 0x49ec returns with v0 = ?.
  The `jr` at 0x4a00 returns with v0 = ?.

- `odsy_mm_sg_insert_texture_group_into_list` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x4a08, 192 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x90 into `a3` (`ld` at 0x4a08).
  Loads 4 bytes from [a0+144]:8 +0xd0 into `a7` (`lw` at 0x4a14).
  Loads 8 bytes from [a0+144]:8 +0xe0 into `a4` (`ld` at 0x4a18).
  Loads 4 bytes from a1 (arg1 at entry) +0xd0 into `a6` (`lw` at 0x4a1c).
  Loads 4 bytes from ? (base unknown) into `at` (`lw` at 0x4a3c).
  Loads 8 bytes from ? (base unknown) into `a4` (`ld` at 0x4a50).
  Performs 5 8-byte stores to a1 (arg1 at entry) +0xe0, including `sd` at 0x4a5c, `sd` at 0x4a84, `sd` at 0x4a8c.
  Performs 5 8-byte stores to a1 (arg1 at entry) +0xe8, including `sd` at 0x4a60, `sd` at 0x4a7c, `sd` at 0x4a88.
  Performs 3 8-byte stores to ? (base unknown), including `sd` at 0x4a68, `sd` at 0x4a6c, `sd` at 0x4a90.
  Performs 3 8-byte stores to a0 (arg0 at entry) +0x90, including `sd` at 0x4a78, `sd` at 0x4a98, `sd` at 0x4ac4.
  Stores 8 bytes from `a1` to [a0+144]:8 +0xe0 (`sd` at 0x4aa4).
  Stores 8 bytes from `a1` to [a0+144]:8 +0xe8 (`sd` at 0x4abc).
  The `beq` at 0x4a0c is taken when a3(=[a0+144]:8) == 0 and falls through when a3(=[a0+144]:8) != 0.
  The `beq` at 0x4a20 is taken when a4(=[[a0+144]:8+224]:8) == 0 and falls through when a4(=[[a0+144]:8+224]:8) != 0.
  The `beq` at 0x4a28 is taken when a7(?) == 0 and falls through when a7(?) != 0.
  The `beq` at 0x4a34 is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0x4a44 is taken when a6(=[a1+208]) >= at(?) (signed) and falls through when a6(=[a1+208]) < at(?) (signed).
  The `beq` at 0x4a54 is taken when a3(?) == a5(?) and falls through when a3(?) != a5(?).
  The `beq` at 0x4a64 is taken when a3(?) == 0 and falls through when a3(?) != 0.
  The `beq` at 0x4a9c is taken when a7(?) == 0 and falls through when a7(?) != 0.
  The `jr` at 0x4a70 returns with v0 = ?.
  The `jr` at 0x4a80 returns with v0 = ?.
  The `jr` at 0x4a94 returns with v0 = ?.
  The `jr` at 0x4aac returns with v0 = ?.
  The `jr` at 0x4ac0 returns with v0 = ?.

- `odsy_mm_reserve_pbuffer` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x4ac8, 328 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `s1` (`ld` at 0x4ad0).
  Loads 8 bytes from [a0+8]:8 +0x8 into `s0` (`ld` at 0x4ad8).
  Loads 8 bytes from [[a0+8]:8+8]:8 +0x8 into `s0` (`ld` at 0x4adc).
  Loads 4 bytes from a0 (arg0 at entry) +0x3c into `a4` (`lw` at 0x4ae0).
  Loads 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x678 into `a1` (`ld` at 0x4ae4).
  Loads 4 bytes from [a0+8]:8 +0xd0 into `at` (`lw` at 0x4ae8).
  Performs 2 4-byte loads from ? (base unknown), including `lw` at 0x4b04, `lw` at 0x4b38.
  Loads 8 bytes from ? (base unknown) into `a1` (`ld` at 0x4b08).
  Performs 2 4-byte stores to ? (base unknown), including `sw` at 0x4b20, `sw` at 0x4c04.
  Loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x694 into `a1` (`lw` at 0x4b64).
  Loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x690 into `a0` (`lw` at 0x4b68).
  Loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x68c into `a5` (`lw` at 0x4b7c).
  Loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x688 into `a1` (`lw` at 0x4b80).
  Loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x698 into `a2` (`lw` at 0x4b9c).
  Stores 4 bytes from `a1` to [[[a0+8]:8+8]:8+8]:8 +0x680 (`sw` at 0x4bc4).
  Stores 4 bytes from `a4` to [a0+8]:8 +0xd0 (`sw` at 0x4bd0).
  Calls `odsy_mm_remove_pbuffer_group_from_list` via direct with a0=[[[a0+8]:8+8]:8+8]:8, a1=[a0+8]:8, a2=?, a3=?, a4=([a0+60] + [[a0+8]:8+208]) (`jal` at 0x4bd4).
  Calls `odsy_mm_insert_pbuffer_group_into_list` via direct with a0=[[[a0+8]:8+8]:8+8]:8, a1=[a0+8]:8, a2=?, a3=? (`jal` at 0x4be0).
  The `beq` at 0x4afc is taken when a1(=[[[[a0+8]:8+8]:8+8]:8+1656]:8) == 0 and falls through when a1(=[[[[a0+8]:8+8]:8+8]:8+1656]:8) != 0.
  The `beq` at 0x4b1c is taken when a1(?) == 0 and falls through when a1(?) != 0.
  The `bne` at 0x4b24 is taken when a2(?) != 0 and falls through when a2(?) == 0.
  The `bne` at 0x4b40 is taken when a3(?) < a4(=([a0+60] + [[a0+8]:8+208])) (signed) and falls through when a3(?) >= a4(=([a0+60] + [[a0+8]:8+208])) (signed).
  The `bne` at 0x4b50 is taken when v0(?) < 0x2 (signed) and falls through when v0(?) >= 0x2 (signed).
  The `beq` at 0x4b5c is taken when v0(?) == a3(=0x2) and falls through when v0(?) != a3(=0x2).
  The `beq` at 0x4b70 is taken when a0(=[[[[a0+8]:8+8]:8+8]:8+1680]) >= a1(=[[[[a0+8]:8+8]:8+8]:8+1684]) (signed) and falls through when a0(=[[[[a0+8]:8+8]:8+8]:8+1680]) < a1(=[[[[a0+8]:8+8]:8+8]:8+1684]) (signed).
  The `beq` at 0x4b8c is taken when a1(=[[[[a0+8]:8+8]:8+8]:8+1672]) >= a5(=[[[[a0+8]:8+8]:8+8]:8+1676]) (signed) and falls through when a1(=[[[[a0+8]:8+8]:8+8]:8+1672]) < a5(=[[[[a0+8]:8+8]:8+8]:8+1676]) (signed).
  The `beq` at 0x4bb0 is taken when a2(=[[[[a0+8]:8+8]:8+8]:8+1688]) >= a3(?) (signed) and falls through when a2(=[[[[a0+8]:8+8]:8+8]:8+1688]) < a3(?) (signed).
  The `jr` at 0x4bf8 returns with v0 = one of 0x0, 0x1.

- `odsy_mm_release_pbuffer` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x4c10, 152 bytes) Inferred.
  Loads 4 bytes from a0 (arg0 at entry) +0x3c into `v0` (`lw` at 0x4c10).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `s1` (`ld` at 0x4c1c).
  Loads 8 bytes from [a0+8]:8 +0x8 into `s0` (`ld` at 0x4c24).
  Performs 2 4-byte loads from [a0+8]:8 +0xd0, including `lw` at 0x4c28, `lw` at 0x4c48.
  Loads 8 bytes from [[a0+8]:8+8]:8 +0x8 into `s0` (`ld` at 0x4c2c).
  Stores 4 bytes from `at` to [a0+8]:8 +0xd0 (`sw` at 0x4c3c).
  Loads 8 bytes from [[[a0+8]:8+8]:8+8]:8 +0x678 into `a3` (`ld` at 0x4c64).
  Loads 4 bytes from ? (base unknown) into `v0` (`lw` at 0x4c78).
  Loads 8 bytes from ? (base unknown) into `a3` (`ld` at 0x4c7c).
  Stores 4 bytes from `a1` to [[[a0+8]:8+8]:8+8]:8 +0x680 (`sw` at 0x4c98).
  Calls `odsy_mm_remove_pbuffer_group_from_list` via direct with a0=[[[a0+8]:8+8]:8+8]:8, a1=[a0+8]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x4c40).
  Calls `odsy_mm_insert_pbuffer_group_into_list` via direct with a0=[[[a0+8]:8+8]:8+8]:8, a1=[a0+8]:8, a2=?, a3=? (`jal` at 0x4c58).
  The `beq` at 0x4c4c is taken when at(=[[a0+8]:8+208]) == 0 and falls through when at(=[[a0+8]:8+208]) != 0.
  The `beq` at 0x4c70 is taken when a3(=[[[[a0+8]:8+8]:8+8]:8+1656]:8) == 0 and falls through when a3(=[[[[a0+8]:8+8]:8+8]:8+1656]:8) != 0.
  The `beq` at 0x4c88 is taken when a3(?) == 0 and falls through when a3(?) != 0.
  The `bne` at 0x4c90 is taken when v1(?) != 0 and falls through when v1(?) == 0.
  The `jr` at 0x4ca0 returns with v0 = ?.

- `odsy_mm_remove_pbuffer_group_from_list` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x4ca8, 96 bytes) Inferred.
  Performs 2 8-byte loads from a1 (arg1 at entry) +0xe0, including `ld` at 0x4ca8, `ld` at 0x4cbc.
  Performs 2 8-byte loads from a1 (arg1 at entry) +0xe8, including `ld` at 0x4cb0, `ld` at 0x4cb8.
  Performs 2 8-byte stores to [a1+224]:8 +0xe8, including `sd` at 0x4cb4, `sd` at 0x4ce8.
  Stores 8 bytes from `a4` to [a1+232]:8 +0xe0 (`sd` at 0x4cc8).
  Performs 2 8-byte stores to a0 (arg0 at entry) +0x678, including `sd` at 0x4cf0, `sd` at 0x4d04.
  Loads 8 bytes from a0 (arg0 at entry) +0x678 into `at` (`ld` at 0x4cf4).
  The `beq` at 0x4cac is taken when a4(=[a1+224]:8) == 0 and falls through when a4(=[a1+224]:8) != 0.
  The `beq` at 0x4cc0 is taken when a3(=[a1+232]:8) == 0 and falls through when a3(=[a1+232]:8) != 0.
  The `beq` at 0x4cd4 is taken when a3(=[a1+232]:8) == 0 and falls through when a3(=[a1+232]:8) != 0.
  The `beq` at 0x4cdc is taken when a4(=[a1+224]:8) == 0 and falls through when a4(=[a1+224]:8) != 0.
  The `bne` at 0x4cf8 is taken when at(=[a0+1656]:8) != a1 and falls through when at(=[a0+1656]:8) == a1.
  The `jr` at 0x4ccc returns with v0 = ?.
  The `jr` at 0x4cec returns with v0 = ?.
  The `jr` at 0x4d00 returns with v0 = ?.

- `odsy_mm_insert_pbuffer_group_into_list` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x4d08, 192 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x678 into `a3` (`ld` at 0x4d08).
  Loads 4 bytes from [a0+1656]:8 +0xd0 into `a7` (`lw` at 0x4d14).
  Loads 8 bytes from [a0+1656]:8 +0xe0 into `a4` (`ld` at 0x4d18).
  Loads 4 bytes from a1 (arg1 at entry) +0xd0 into `a6` (`lw` at 0x4d1c).
  Loads 4 bytes from ? (base unknown) into `at` (`lw` at 0x4d3c).
  Loads 8 bytes from ? (base unknown) into `a4` (`ld` at 0x4d50).
  Performs 5 8-byte stores to a1 (arg1 at entry) +0xe0, including `sd` at 0x4d5c, `sd` at 0x4d84, `sd` at 0x4d8c.
  Performs 5 8-byte stores to a1 (arg1 at entry) +0xe8, including `sd` at 0x4d60, `sd` at 0x4d7c, `sd` at 0x4d88.
  Performs 3 8-byte stores to ? (base unknown), including `sd` at 0x4d68, `sd` at 0x4d6c, `sd` at 0x4d90.
  Performs 3 8-byte stores to a0 (arg0 at entry) +0x678, including `sd` at 0x4d78, `sd` at 0x4d98, `sd` at 0x4dc4.
  Stores 8 bytes from `a1` to [a0+1656]:8 +0xe0 (`sd` at 0x4da4).
  Stores 8 bytes from `a1` to [a0+1656]:8 +0xe8 (`sd` at 0x4dbc).
  The `beq` at 0x4d0c is taken when a3(=[a0+1656]:8) == 0 and falls through when a3(=[a0+1656]:8) != 0.
  The `beq` at 0x4d20 is taken when a4(=[[a0+1656]:8+224]:8) == 0 and falls through when a4(=[[a0+1656]:8+224]:8) != 0.
  The `beq` at 0x4d28 is taken when a7(?) == 0 and falls through when a7(?) != 0.
  The `beq` at 0x4d34 is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `beq` at 0x4d44 is taken when a6(=[a1+208]) >= at(?) (signed) and falls through when a6(=[a1+208]) < at(?) (signed).
  The `beq` at 0x4d54 is taken when a3(?) == a5(?) and falls through when a3(?) != a5(?).
  The `beq` at 0x4d64 is taken when a3(?) == 0 and falls through when a3(?) != 0.
  The `beq` at 0x4d9c is taken when a7(?) == 0 and falls through when a7(?) != 0.
  The `jr` at 0x4d70 returns with v0 = ?.
  The `jr` at 0x4d80 returns with v0 = ?.
  The `jr` at 0x4d94 returns with v0 = ?.
  The `jr` at 0x4dac returns with v0 = ?.
  The `jr` at 0x4dc0 returns with v0 = ?.

- `odsy_mm_reserve_scratch` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x4dc8, 164 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a4` (`ld` at 0x4dc8).
  Loads 8 bytes from [a0+8]:8 +0x8 into `a5` (`ld` at 0x4dcc).
  Loads 8 bytes from [a0+8]:8 +0xd8 into `a4` (`ld` at 0x4dd0).
  Loads 4 bytes from a0 (arg0 at entry) +0x3c into `a3` (`lw` at 0x4dd4).
  Loads 4 bytes from [[a0+8]:8+216]:8 +0x1d8 into `v0` (`lw` at 0x4dd8).
  Loads 4 bytes from [[a0+8]:8+8]:8 +0xa0 into `at` (`lw` at 0x4ddc).
  Loads 8 bytes from [[a0+8]:8+8]:8 +0x8 into `v0` (`ld` at 0x4dec).
  Loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x690 into `at` (`lw` at 0x4df0).
  Loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x68c into `a6` (`lw` at 0x4e00).
  Loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x688 into `a7` (`lw` at 0x4e04).
  Stores 4 bytes from `a3` to [[[a0+8]:8+8]:8+8]:8 +0x690 (`sw` at 0x4e1c).
  Stores 4 bytes from `a3` to [[a0+8]:8+8]:8 +0xa0 (`sw` at 0x4e20).
  Stores 4 bytes from `a3` to [[a0+8]:8+216]:8 +0x1d8 (`sw` at 0x4e24).
  Loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x684 into `t0` (`lw` at 0x4e34).
  Loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x680 into `a7` (`lw` at 0x4e38).
  Loads 4 bytes from [[[a0+8]:8+8]:8+8]:8 +0x698 into `a1` (`lw` at 0x4e50).
  The `beq` at 0x4de8 is taken when at(=[[[a0+8]:8+8]:8+160]) >= a3(=([a0+60] + [[[a0+8]:8+216]:8+472])) (unsigned) and falls through when at(=[[[a0+8]:8+8]:8+160]) < a3(=([a0+60] + [[[a0+8]:8+216]:8+472])) (unsigned).
  The `beq` at 0x4df8 is taken when at(=[[[[a0+8]:8+8]:8+8]:8+1680]) >= a3(=([a0+60] + [[[a0+8]:8+216]:8+472])) (signed) and falls through when at(=[[[[a0+8]:8+8]:8+8]:8+1680]) < a3(=([a0+60] + [[[a0+8]:8+216]:8+472])) (signed).
  The `beq` at 0x4e0c is taken when a7(=[[[[a0+8]:8+8]:8+8]:8+1672]) >= a6(=[[[[a0+8]:8+8]:8+8]:8+1676]) (signed) and falls through when a7(=[[[[a0+8]:8+8]:8+8]:8+1672]) < a6(=[[[[a0+8]:8+8]:8+8]:8+1676]) (signed).
  The `beq` at 0x4e44 is taken when a7(=[[[[a0+8]:8+8]:8+8]:8+1664]) >= t0(=[[[[a0+8]:8+8]:8+8]:8+1668]) (signed) and falls through when a7(=[[[[a0+8]:8+8]:8+8]:8+1664]) < t0(=[[[[a0+8]:8+8]:8+8]:8+1668]) (signed).
  The `beq` at 0x4e5c is taken when a1(=[[[[a0+8]:8+8]:8+8]:8+1688]) >= at(?) (signed) and falls through when a1(=[[[[a0+8]:8+8]:8+8]:8+1688]) < at(?) (signed).
  The `jr` at 0x4e2c returns with v0 = 0x0.
  The `jr` at 0x4e64 returns with v0 = 0x1.

- `odsy_mm_release_scratch` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x4e6c, 288 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a1` (`ld` at 0x4e70).
  Loads 8 bytes from [a0+8]:8 +0x8 into `s1` (`ld` at 0x4e78).
  Loads 8 bytes from [a0+8]:8 +0xd8 into `a1` (`ld` at 0x4e7c).
  Loads 4 bytes from a0 (arg0 at entry) +0x3c into `v1` (`lw` at 0x4e80).
  Loads 4 bytes from [[a0+8]:8+216]:8 +0x1d8 into `v0` (`lw` at 0x4e84).
  Loads 8 bytes from [[a0+8]:8+8]:8 +0x8 into `a0` (`ld` at 0x4e88).
  Stores 4 bytes from `v1` to [[a0+8]:8+216]:8 +0x1d8 (`sw` at 0x4e90).
  Loads 4 bytes from [[a0+8]:8+8]:8 +0xa0 into `at` (`lw` at 0x4e94).
  Performs 2 4-byte loads from ret(OdsyNextCSetElem) +0x1d8, including `lw` at 0x4ed4, `lw` at 0x4f04.
  Stores 4 bytes from `s0` to ? (base unknown) (`sw` at 0x4ee0).
  Stores 4 bytes from `s0` to [[a0+8]:8+8]:8 +0xa0 (`sw` at 0x4f1c).
  Loads 4 bytes from ? (base unknown) into `v1` (`lw` at 0x4f28).
  Performs 2 4-byte loads from ret(OdsyNextCSetElem) +0xa0, including `lw` at 0x4f60, `lw` at 0x4f74.
  Calls `OdsyInitCSetCursor` via direct with a0=[[a0+8]:8+8]:8+24, a1=[[a0+8]:8+216]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x4eb8).
  Calls `OdsyNextCSetElem` via direct with a0=[[a0+8]:8+8]:8+24, a1=?, a2=?, a3=? (`jal` at 0x4ec0).
  Calls `OdsyNextCSetElem` via direct with a0=[[a0+8]:8+8]:8+24, a1=?, a2=?, a3=? (`jal` at 0x4ef4).
  Calls `OdsyInitCSetCursor` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4f40).
  Calls `OdsyNextCSetElem` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4f48).
  Calls `OdsyNextCSetElem` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x4f64).
  The `bne` at 0x4ea0 is taken when at(=[[[a0+8]:8+8]:8+160]) != v0(=[[[a0+8]:8+216]:8+472]) and falls through when at(=[[[a0+8]:8+8]:8+160]) == v0(=[[[a0+8]:8+216]:8+472]).
  The `beq` at 0x4ec8 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x4efc is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x4f0c is taken when s0(?) >= a0(=[ret(OdsyNextCSetElem)+472]) (signed) and falls through when s0(?) < a0(=[ret(OdsyNextCSetElem)+472]) (signed).
  The `bne` at 0x4f2c is taken when v1(?) != a1(?) and falls through when v1(?) == a1(?).
  The `beq` at 0x4f54 is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x4f6c is taken when v0(=ret(OdsyNextCSetElem)) == 0 and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` at 0x4f7c is taken when s0(?) >= v0(=[ret(OdsyNextCSetElem)+160]) (unsigned) and falls through when s0(?) < v0(=[ret(OdsyNextCSetElem)+160]) (unsigned).
  The `jr` at 0x4eec returns with v0 = ?.

- `odsy_mm_commit` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x4f8c, 556 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `s2` (`ld` at 0x4f98).
  Loads 4 bytes from a0 (arg0 at entry) +0x40 into `at` (`lw` at 0x4f9c).
  Loads 8 bytes from [a0+8]:8 +0x8 into `v0` (`ld` at 0x4fa0).
  Loads 8 bytes from [[a0+8]:8+8]:8 +0x8 into `v0` (`ld` at 0x4fac).
  Performs 2 4-byte loads from ret(mm_get_extent) +0x20, including `lw` at 0x4fec, `lw` at 0x516c.
  Performs 7 4-byte stores to ? (base unknown), including `sw` at 0x5008, `sw` at 0x5064, `sw` at 0x5100.
  Performs 4 8-byte loads from ? (base unknown), including `ld` at 0x501c, `ld` at 0x50cc, `ld` at 0x50e8.
  Performs 8 4-byte loads from ? (base unknown), including `lw` at 0x5028, `lw` at 0x5054, `lw` at 0x5058.
  Loads 4 bytes from a0 (arg0 at entry) +0x0 into `s0` (`lw` at 0x5070).
  Performs 2 4-byte loads from a0 (arg0 at entry) +0x4, including `lw` at 0x5074, `lw` at 0x5114.
  Loads 2 bytes from ? (base unknown) into `a4` (`lh` at 0x50ec).
  Loads 8 bytes from a0 (arg0 at entry) +0x28 into `s0` (`ld` at 0x5120).
  Stores 2 bytes from `a4` to [a0+40]:8 +0x0 (`sh` at 0x5128).
  Stores 4 bytes from `a4` to a0 (arg0 at entry) +0x40 (`sw` at 0x5134).
  Loads 4 bytes from ret(mm_get_extent) +0x0 into `at` (`lw` at 0x5150).
  Calls `odsy_mm_obj_xfr_backing_store` via direct with a0=?, a1=sp-96, a2=0x0, a3=? (`jal` at 0x4ffc).
  Calls `mm_get_extent` via direct with a0=?, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x5044).
  Calls `mm_get_extent` via direct with a0=?, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x513c).
  Calls `odsy_mm_obj_xfr_backing_store` via direct with a0=?, a1=sp-92, a2=0x0, a3=? (`jal` at 0x518c).
  The `beq` at 0x4fb4 is taken when at(=[a0+64]) == 0 and falls through when at(=[a0+64]) != 0.
  The `beq` at 0x5010 is taken when s0(?) >= 0x10 (signed) and falls through when s0(?) < 0x10 (signed).
  The `beq` at 0x5020 is taken when s1(?) == 0 and falls through when s1(?) != 0.
  The `bne` at 0x5030 is taken when (v0(?) & 0x1) != 0 and falls through when (v0(?) & 0x1) == 0.
  The `beq` at 0x5038 is taken when v1(?) == 0 and falls through when v1(?) != 0.
  The `beq` at 0x504c is taken when v0(=ret(mm_get_extent)) == 0 and falls through when v0(=ret(mm_get_extent)) != 0.
  The `beq` at 0x5060 is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `bne` at 0x507c is taken when v0(=[a0+4]) < s0(=[a0]) (signed) and falls through when v0(=[a0+4]) >= s0(=[a0]) (signed).
  The `beq` at 0x50a0 is taken when s4(=one of 0x0, 0xc) == 0 and falls through when s4(=one of 0x0, 0xc) != 0.
  The `bne` at 0x50c0 is taken when v0(=[a0+4]) < s0(?) (signed) and falls through when v0(=[a0+4]) >= s0(?) (signed).
  The `beq` at 0x50d0 is taken when s1(?) == 0 and falls through when s1(?) != 0.
  The `beq` at 0x50e0 is taken when (at(?) & 0x1) == 0 and falls through when (at(?) & 0x1) != 0.
  The `beq` at 0x5144 is taken when v0(=ret(mm_get_extent)) == 0 and falls through when v0(=ret(mm_get_extent)) != 0.
  The `beq` at 0x5164 is taken when (a3(?) & 0x8) == 0 and falls through when (a3(?) & 0x8) != 0.
  The `beq` at 0x517c is taken when a4(?) == 0 and falls through when a4(?) != 0.
  The `jr` at 0x50b4 returns with v0 = one of 0x0, 0xc.

- `odsy_mm_decommit` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`, 0x51b8, 104 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x80 into `a4` (`ld` at 0x51b8).
  Stores 4 bytes from `v1` to a0 (arg0 at entry) +0x38 (`sw` at 0x51e8).
  Loads 8 bytes from a0 (arg0 at entry) +0x8 into `a0` (`ld` at 0x51ec).
  Loads 2 bytes from a0 (arg0 at entry) +0x0 into `a1` (`lh` at 0x51f0).
  Loads 8 bytes from [a0+8]:8 +0x98 into `a0` (`ld` at 0x51f4).
  Stores 4 bytes from `v1` to ([[a0+8]:8+152]:8 + ([a0]:2 << 0x2)) +0x0 (`sw` at 0x5200).
  Loads 4 bytes from a0 (arg0 at entry) +0x40 into `at` (`lw` at 0x5204).
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x40 (`sw` at 0x5214).
  Calls `mm_release_extent` via direct with a0=[a0+128]:8, a1=0x0, a2=a2 at entry (arg2), a3=a0 at entry (arg0), a4=[a0+128]:8 (`jal` at 0x51d4).
  The `beq` at 0x51c0 is taken when a4(=[a0+128]:8) == 0 and falls through when a4(=[a0+128]:8) != 0.
  The `jr` at 0x5218 returns with v0 = 0x0.

- `odsyInitRetrace` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`, 0x0, 140 bytes) Inferred.
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x1274 (`sw` at 0x24).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x1788 (`sd` at 0x28).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x127c (`sw` at 0x38).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x1250 (`sw` at 0x44).
  Stores 8 bytes from `at` to a0 (arg0 at entry) +0xb8 (`sd` at 0x68).
  Stores 4 bytes from `ra` to a0 (arg0 at entry) +0xb0 (`sw` at 0x70).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x1258 (`sd` at 0x78).
  Stores 4 bytes from `zero` to a0 (arg0 at entry) +0x1260 (`sw` at 0x7c).
  Calls `bzero` via direct with a0=a0+4664, a1=0x558, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1c).
  Calls `init_mutex` via direct with a0=a0+4664, a1=0x0, a2=sym(.rodata), a3=-0x1 (`jal` at 0x40).
  Calls `init_sv` via direct with a0=a0+4680, a1=0x0, a2=sym(.rodata), a3=-0x1 (`jal` at 0x5c).
  The `jr` at 0x84 returns with v0 = ret(init_sv); f0 = ret(init_sv).

- `odsyValidateBuffer` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`, 0x8c, 120 bytes) Inferred.
  Loads 8 bytes from ((((a1 << 0x2) + a1) << 0x3) + a0) +0x12a0 into `at` (`ld` at 0xa0).
  Loads 8 bytes from ((((a1 << 0x2) + a1) << 0x3) + a0) +0x1288 into `a0` (`ld` at 0xb8).
  Loads 8 bytes from [((((a1 << 0x2) + a1) << 0x3) + a0)+4744]:8 +0x90 into `a0` (`ld` at 0xc0).
  Loads 4 bytes from ((((a1 << 0x2) + a1) << 0x3) + a0) +0x12a8 into `a1` (`lw` at 0xcc).
  Loads 8 bytes from a0 (arg0 at entry) +0x0 into `a0` (`ld` at 0xd4).
  Loads 4 bytes from a0 (arg0 at entry) +0x1278 into `a2` (`lw` at 0xe4).
  Stores 4 bytes from `a2` to a0 (arg0 at entry) +0x1278 (`sw` at 0xf4).
  Calls `rrmValidateBuffer` via direct with a0=[[((((a1 << 0x2) + a1) << 0x3) + a0)+4744]:8+144]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=((((a1 << 0x2) + a1) << 0x3) + a0) (`jal` at 0xbc).
  Calls `rrmValidateMGRSwapBuf` via direct with a0=[a0]:8, a1=[((((a1 << 0x2) + a1) << 0x3) + a0)+4776], a2=a2 at entry (arg2), a3=((((a1 << 0x2) + a1) << 0x3) + a0) (`jal` at 0xd0).
  The `beq` at 0xb0 is taken when at(=[((((a1 << 0x2) + a1) << 0x3) + a0)+4768]:8) == 0 and falls through when at(=[((((a1 << 0x2) + a1) << 0x3) + a0)+4768]:8) != 0.
  The `jr` at 0xfc returns with v0 = a1.

- `odsySwap_softsync_intr` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`, 0x780, 252 bytes) Inferred.
  Stores 4 bytes from `at` to a0 (arg0 at entry) +0x1264 (`sw` at 0x7d4).
  Loads 4 bytes from a0 (arg0 at entry) +0x1278 into `v1` (`lw` at 0x7e8).
  Loads 4 bytes from a0 (arg0 at entry) +0x1264 into `a4` (`lw` at 0x804).
  Loads 8 bytes from ? (base unknown) into `a2` (`ld` at 0x814).
  Loads 4 bytes from ? (base unknown) into `a2` (`lw` at 0x818).
  Loads 8 bytes from a0 (arg0 at entry) +0x2f0 into `a1` (`ld` at 0x81c).
  Performs 2 2-byte loads from ? (base unknown), including `lhu` at 0x824, `lhu` at 0x82c.
  Calls `mutex_lock` via direct with a0=a0+4664, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x7a8).
  Calls `odsySwapBuffer` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[a0+4708] (`jal` at 0x7d0).
  Calls `mutex_unlock` via direct with a0=a0+4664, a1=?, a2=?, a3=? (`jal` at 0x854).
  The `beq` at 0x7e0 is taken when s0(?) >= 0x20 (signed) and falls through when s0(?) < 0x20 (signed).
  The `beq` at 0x7fc is taken when (v1(=[a0+4728]) & a3(?)) == 0 and falls through when (v1(=[a0+4728]) & a3(?)) != 0.
  The `beq` at 0x80c is taken when (a3(?) & a4(=[a0+4708])) == 0 and falls through when (a3(?) & a4(=[a0+4708])) != 0.
  The `beq` at 0x834 is taken when a1(?) >= a0(?) (signed) and falls through when a1(?) < a0(?) (signed).
  The `beq` at 0x83c is taken when a2(?) == 0 and falls through when a2(?) != 0.
  The `beq` at 0x844 is taken when at(?) == 0 and falls through when at(?) != 0.
  The `jr` at 0x874 returns with v0 = ret(mutex_unlock); f0 = ret(mutex_unlock).

- `gf_OdsySchedRetraceEvent` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`, 0xa14, 160 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x1788 into `a0` (`ld` at 0xa48).
  Loads 8 bytes from ? (base unknown) into `v0` (`ld` at 0xa5c).
  Stores 8 bytes from `a0` to a1 (arg1 at entry) +0x28 (`sd` at 0xa80).
  Stores 8 bytes from `s1` to a0 (arg0 at entry) +0x1788 (`sd` at 0xa88).
  Calls `mutex_lock` via direct with a0=a0+4664, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xa40).
  Calls `mutex_unlock` via direct with a0=a0+4664, a1=?, a2=?, a3=? (`jal` at 0xa94).
  The `beq` at 0xa4c is taken when a0(=[a0+6024]:8) == 0 and falls through when a0(=[a0+6024]:8) != 0.
  The `beq` at 0xa54 is taken when s1(=a1) == v0(=[a0+6024]:8) and falls through when s1(=a1) != v0(=[a0+6024]:8).
  The `beq` at 0xa60 is taken when v0(?) == 0 and falls through when v0(?) != 0.
  The `bne` at 0xa68 is taken when s1(=a1) != v0(?) and falls through when s1(=a1) == v0(?).
  The `beq` at 0xa78 is taken when s1(=a1) == v0(?) and falls through when s1(=a1) != v0(?).
  The `jr` at 0xaac returns with v0 = one of 0x0, 0x1; f0 = ret(mutex_unlock).

- `gf_OdsyUnSchedRetraceEvent` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)`, 0xab4, 180 bytes) Inferred.
  Loads 8 bytes from a0 (arg0 at entry) +0x1788 into `v0` (`ld` at 0xae8).
  Performs 2 8-byte loads from ? (base unknown), including `ld` at 0xb00, `ld` at 0xb20.
  Stores 8 bytes from `a0` to ? (base unknown) (`sd` at 0xb30).
  Stores 8 bytes from `a0` to a0 (arg0 at entry) +0x1788 (`sd` at 0xb3c).
  Calls `mutex_lock` via direct with a0=a0+4664, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xae0).
  Calls `mutex_unlock` via direct with a0=a0+4664, a1=?, a2=?, a3=? (`jal` at 0xb48).
  The `beq` at 0xaf0 is taken when v0(=[a0+6024]:8) == 0 and falls through when v0(=[a0+6024]:8) != 0.
  The `beq` at 0xaf8 is taken when s1(=a1) == v0(=[a0+6024]:8) and falls through when s1(=a1) != v0(=[a0+6024]:8).
  The `beq` at 0xb08 is taken when a0(?) == 0 and falls through when a0(?) != 0.
  The `bne` at 0xb10 is taken when a0(?) != s1(=a1) and falls through when a0(?) == s1(=a1).
  The `bne` at 0xb18 is taken when at(=a1) != v0(?) and falls through when at(=a1) == v0(?).
  The `beq` at 0xb28 is taken when a1(?) == 0 and falls through when a1(?) != 0.
  The `jr` at 0xb60 returns with v0 = one of 0x0, 0x1; f0 = ret(mutex_unlock).

- `odsy_tport_lock_init` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`, 0x0, 48 bytes) Inferred.
  Calls `wbflush` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x10).
  Calls `spinlock_init` via direct with a0=sym(odsy_tport_lock), a1=sym(.rodata), a2=?, a3=? (`jal` at 0x1c).
  The `jr` at 0x28 returns with v0 = ret(spinlock_init); f0 = ret(spinlock_init).

- `odsy_color` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`, 0x6b0, 188 bytes) Inferred.
  Performs 8 4-byte stores to a0 (arg0 at entry) +0x110000, including `sw` at 0x70c, `sw` at 0x718, `sw` at 0x720.
  Stores 4 bytes from `a0` to sym(.bss) +0x8 (`sw` at 0x748).
  Calls `wbflush` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x6d8).
  Calls `mutex_spinlock` via direct with a0=sym(odsy_tport_lock), a1=?, a2=?, a3=? (`jal` at 0x6e4).
  Calls `wbflush` via direct with a0=a1 at entry (arg1), a1=sym(.bss), a2=a0+0x110000, a3=0xffffffffc580c406, a4=0xffffffffce80cc08, a5=0x23008003, a6=0x22008001 (`jal` at 0x750).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x75c).
  The `beq` at 0x6bc is taken when at(=[sym(odsy_tport_mute)]) == 0 and falls through when at(=[sym(odsy_tport_mute)]) != 0.
  The `jr` at 0x6c4 returns with v0 = ?.

- `odsy_mapcolor` (`builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)`, 0x76c, 252 bytes) Inferred.
  Stores 8 bytes from `a0` to a0 (arg0 at entry) +0x400000 (`sd` at 0x840).
  Calls `wbflush` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x7a0).
  Calls `mutex_spinlock` via direct with a0=sym(odsy_tport_lock), a1=?, a2=?, a3=? (`jal` at 0x7ac).
  Calls `odsy_poll_dfifo_level` via direct with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=? (`jal` at 0x7bc).
  Calls `wbflush` via direct with a0=?, a1=a0+0x400000, a2=?, a3=a0 at entry (arg0) (`jal` at 0x84c).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x858).
  The `beq` at 0x784 is taken when at(=[sym(odsy_tport_mute)]) == 0 and falls through when at(=[sym(odsy_tport_mute)]) != 0.
  The `jr` at 0x78c returns with v0 = ?.

## Skipped routines

Skipped because docs on `origin/main` already contain an entry for the same binary/member: `odsy_mm_release` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `odsy_mm_reserve_texture` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `odsy_mm_release_texture` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `odsy_mm_reserve_pbuffer` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `odsy_mm_release_pbuffer` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `odsy_mm_reserve_scratch` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `odsy_mm_release_scratch` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `odsy_mm_commit` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `odsy_mm_decommit` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `mm_get_extent` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `mm_release_extent` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `mm_shake` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `odsyInitRetrace` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `odsyValidateBuffer` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `odsySwapBuffer` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `gf_OdsySchedSwapBuf` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `odsySwap_softsync_intr` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `gf_OdsyUnSchedSwapBuf` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `gf_OdsySchedRetraceEvent` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `gf_OdsyUnSchedRetraceEvent` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `gf_OdsySetDisplayMode` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `gf_OdsySchedMGRSwapBuf` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `gf_OdsyFrsInstall` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `odsyRetraceHandler` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `gf_OdsySuspend` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)), `gf_OdsyResume` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)), `gf_OdsyExit` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)), `gf_OdsyReleaseGfxSema` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)), `odsyDiagExit` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)), `ODSY_SET_GC` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsy_sboxfi` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsy_pnt2i` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsy_cmov2i` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsy_drawbitmap` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsy_getdesc` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsy_tpinit` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsy_unblank` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsyDownloadUcode` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ucode.o)), `gf_OdsyDownload` (builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ucode.o)), `gf_OdsyInfo` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)), `gf_OdsyPrivate` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy.o)), `OdsyInitCSet` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)), `OdsyInitCSetCursor` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)), `OdsyAllocCSetId` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)), `odsy_regmatch` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)), `gf_OdsyAttach` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_attach.o)), `gfP_OdsyBRDMGRsetColors` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `odsyConfigFb` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `gfP_OdsyBRDMGRconfigFb` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `gf_OdsyPositionCursor` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `gfP_OdsyBRDMGRcursor` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `odsyBlankScreen` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `odsy_copyin_frame_line_tables` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `setDACreg` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `odsy_initDCD2DAC` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `odsy_reconfigDCD2FPLD` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `odsy_LoadDCD2Regs` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `odsyLoadTimingTable` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `gfP_OdsyBRDMGRloadTimingTable` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `gfP_OdsyBRDMGRenableVTG` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `gfP_OdsyBRDMGRi2ccmd` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `gfP_OdsyBRDMGRSetDACGain` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `odsySetDACGain` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_brdmgr.o)), `gf_OdsyValidateClip` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)), `odsyClipMask` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)), `odsyClipPush` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)), `gf_OdsyValidateBanks` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)), `gf_OdsySetNullClip` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)), `gfP_OdsySetClipMask` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_clip.o)), `odsy_ctxsw_timeout` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)), `gfP_OdsySaveHwShadow` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)), `gf_OdsyPcxSwap` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)), `odsyRestoreRaster` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)), `odsyRestoreXform` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)), `odsyRestoreVB` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)), `odsyRestoreGfe` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)), `odsyRestorePIOPixel` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)), `odsySetProgram` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)), `odsyRestartContext` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ctxsw.o)), `odsy_i2cFixupAfterErr` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)), `odsy_i2cProbe2b` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddc.o)), `odsyInitDDRNs` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)), `gf_OdsyCreateDDRN` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)), `gf_OdsyDestroyDDRN` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)), `gfP_OdsyDIAGallocScanbuf` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)), `gfP_OdsyDIAGgetShadowPtrs` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)), `odsyInitPfRgn` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)), `odsyDestroyPfRgn` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)), `gfP_OdsyPerfStat` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_diag.o)), `odsy_NewDmaRegion` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)), `odsy_DeleteDmaRegion` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)), `odsy_DmaRegion_BuildXlatTbl` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)), `gfP_OdsyDIAGdma` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)), `odsyDMAOps` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)), `odsyDMAOp` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)), `odsyInitDrawables` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)), `gfP_OdsySetDrawBuffer` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)), `odsyPushBufferSelect` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)), `gfP_OdsyMakeCurrent` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)), `gfP_OdsyPbufAssoc` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)), `gfP_OdsyPbufDeassoc` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_drawable.o)), `odsy_poll_dfifo_level` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)), `odsy_flow_am_i_attached` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)), `odsyHiwaterInterrupt` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)), `odsyLowaterInterrupt` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)), `odsyFifoTimer` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)), `odsyFifoTimeout` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_flow.o)), `odsy_i2c_start` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)), `odsy_i2c_sendbyte` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)), `odsy_i2cReset` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_i2c.o)), `odsy_init` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)), `odsy_attach` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)), `odsyGatherInfo` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)), `gf_OdsyInitialize` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)), `gf_OdsyStart` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)), `odsyLLPReset` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)), `odsyLowLevelReset` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)), `odsyReset` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)), `odsyInitCfifo` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)), `odsyInitInterrupts` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)), `odsyDisableInterrupts` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)), `odsyInitDBE` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)), `odsyPrintRegs` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)), `odsyXtErrorInterrupt` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)), `odsyFlagInterrupt` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)), `odsyDmaInterrupt` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)), `odsySsyncInterrupt` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)), `odsyGenlockInterrupt` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)), `gf_OdsyMapGfx` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)), `gf_OdsyUnMapGfx` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)), `gf_OdsyInvalTLB` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)), `odsyPinAndMapGctxSwShadowRgn` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)), `odsyMapPages` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_map.o)), `gfP_OdsyMMxfr` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `mm_get_extent` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `mm_release_extent` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `mm_shake` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)), `odsySwapBuffer` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `gf_OdsySchedSwapBuf` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `gf_OdsyUnSchedSwapBuf` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `gf_OdsySetDisplayMode` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `gf_OdsySchedMGRSwapBuf` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `gf_OdsyFrsInstall` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `gf_OdsyFrsUninstall` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `odsyRetraceHandler` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_retrace.o)), `gf_OdsySuspend` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)), `gf_OdsyResume` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)), `gf_OdsyExit` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)), `gf_OdsyReleaseGfxSema` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)), `odsyDiagExit` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_sched.o)), `ODSY_SET_GC` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsy_sboxfi` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsy_pnt2i` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsy_cmov2i` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsy_drawbitmap` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsy_getdesc` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsy_tpinit` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsy_unblank` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_tport.o)), `odsyDownloadUcode` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ucode.o)), `gf_OdsyDownload` (builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ucode.o)), `tp_open` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_close` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_wput` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_xmit_qenable` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_xmit` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_tx` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_start` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_stop` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_rcv_qenable` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_rcv` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_rsrv` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_rx` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_flushr` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_guiop` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_write` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_unblank` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_gwinsize` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tpcons_write` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_init` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_initlock` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `tp_dogui` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `gfx_earlyinit` (usr/cpu/sysgen/IP30boot/tport.a(tport.o)), `gf_OdsyInfo` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy.o)), `gfP_OdsyInvalidIoctl` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy.o)), `gf_OdsyPrivate` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy.o)), `odsyGctxFromRnid` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy.o)), `OdsyInitCSet` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)), `OdsyDestroyCSet` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)), `OdsyInitCSetCursor` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)), `OdsyNextCSetElem` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)), `OdsyFindMatchingCSetElem` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)), `NewChunkNode` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)), `OdsyAllocSpecificCSetId` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)), `OdsyAllocCSetId` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)), `OdsyDeallocCSetId` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)), `OdsyLookupCSetId` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)), `OdsyInit32kSlotMask` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)), `OdsyAlloc32kSlot` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)), `OdsyFree32kSlot` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)), `odsyHashAlloc` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)), `odsyHashDealloc` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)), `odsyHashLookup` (usr/cpu/sysgen/IP35boot/odyssey.a(odsy_adt.o)).
