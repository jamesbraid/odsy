# Readings: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`

One entry per routine, filed here from the reading batches by binary.

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

- `odsyGatherInfo` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x8bc
  **Inferred.** Branches on a1 being zero or equal to 1 or 2, may make a tail call to an unresolved callee at 0x9a8, loads a word at 0xa3c and polls the DFIFO three times with `odsy_poll_dfifo_level`. The shared state is guarded by four `mutex_spinlock` calls with six `mutex_spinunlock` calls and by one `psema` and four `vsema` calls, and four `cmn_err` calls are made. The return at 0x900 is -1 or 0. Role (from name): collecting board information at init; the facts do not show what is read or which fields are stored.
  Reviewed: 2026-11-12

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

## `gf_OdsyInitialize` at `0xf7c`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0xf7c-0x141c (1184 bytes).
  It occupies 1184 bytes.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0xf7c, `ld` at 0x12b0, `ld` at 0x130c.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x1220, including `lw` at 0xf84, `lw` at 0x13f4.
  The `ld` at 0xfa0 loads 8 bytes from [a0+32]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x50, including `lw` at 0xfb4, `lw` at 0x12b4.
  2 such `sw` accesses store 4 bytes to [a0+32]:8 +0x50, including `sw` at 0xfc8, `sw` at 0x12c4.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x30, including `lw` at 0xfcc, `lw` at 0xfe8, `lw` at 0x1204.
  3 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x30, including `sw` at 0xff4, `sw` at 0x120c, `sw` at 0x1258.
  10 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2d0, including `ld` at 0xff8, `ld` at 0x1034, `ld` at 0x1060.
  12 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2e0, including `ld` at 0x1020, `ld` at 0x102c, `ld` at 0x10c8.
  3 such `sw` accesses store 4 bytes to [a0+32]:8 +0x28a8, including `sw` at 0x1024, `sw` at 0x127c, `sw` at 0x1388.
  3 such `sw` accesses store 4 bytes to [[a0+32]:8+736]:8 +0x107c, including `sw` at 0x1028, `sw` at 0x1280, `sw` at 0x1390.
  3 such `lw` accesses load 4 bytes from [[a0+32]:8+736]:8 +0x106c, including `lw` at 0x1030, `lw` at 0x1158, `lw` at 0x1288.
  3 such `sw` accesses store 4 bytes to [[a0+32]:8+736]:8 +0x1084, including `sw` at 0x10c4, `sw` at 0x10cc, `sw` at 0x10d4.
  2 such `sw` accesses store 4 bytes to [a0+32]:8 +0x28a4, including `sw` at 0x10dc, `sw` at 0x1378.
  2 such `sw` accesses store 4 bytes to [[a0+32]:8+736]:8 +0x1074, including `sw` at 0x10e0, `sw` at 0x137c.
  4 such `lh` accesses load 2 bytes from [a0+32]:8 +0x2be, including `lh` at 0x10ec, `lh` at 0x1120, `lh` at 0x11dc.
  The `lw` at 0x1144 loads 4 bytes from [a0+32]:8 +0x56f0.
  The `sd` at 0x1154 stores 8 bytes to [a0+32]:8 +0x2d0.
  The `ld` at 0x11b8 loads 8 bytes from [a0+32]:8 +0x2f0.
  The `sw` at 0x11bc stores 4 bytes to [a0+32]:8 +0x5700.
  The `sd` at 0x11c8 stores 8 bytes to [a0+32]:8 +0x5708.
  The `sh` at 0x11d4 stores 2 bytes to ([[a0+32]:8+752]:8 + (ret(OdsyAlloc32kSlot) + ret(OdsyAlloc32kSlot))) +0x0.
  The `sh` at 0x11e0 stores 2 bytes to [a0+32]:8 +0x2c4.
  The `sd` at 0x11e4 stores 8 bytes to [a0+32]:8 +0x5640.
  The `sd` at 0x11e8 stores 8 bytes to [a0+32]:8 +0x5628.
  The `sw` at 0x12ac stores 4 bytes to [a0+32]:8 +0x5720.
  The `sd` at 0x1310 stores 8 bytes to [a0+32]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x68, including `lw` at 0x1318, `lw` at 0x1330.
  The `lw` at 0x1354 loads 4 bytes from [a0+32]:8 +0x28a4.
  The `jal` at 0xfc4 calls htp_register_board with a0=0x0, a1=0x0, a2=0x0, a3=0x0, a5=[a0+32]:8.
  The `jal` at 0xfdc calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x100c calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+720]:8, a2=?, a3=?.
  The `jal` at 0x103c calls gfx_flow_detach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=?, a4=[[[a0+32]:8+736]:8+4204], a5=[[a0+32]:8+736]:8.
  The `jal` at 0x1054 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1078 calls gfx_flow_dealloc with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+720]:8, a2=?, a3=?.
  The `jal` at 0x10e8 calls odsyInitCfifo with a0=[[a0+32]:8+702]:2, a1=0x1, a2=[[a0+32]:8+736]:8, a3=?.
  The `jal` at 0x10fc calls gfx_flow_dealloc with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x111c calls odsyReset with a0=[[a0+32]:8+702]:2, a1=?, a2=?, a3=?.
  The `jal` at 0x1148 calls gfx_flow_alloc with a0=[[a0+32]:8+22256], a1=([[a0+32]:8+736]:8 | 0x100000), a2=0x1ffff, a3=0x800, a4=0x2710, a5=sym(odsyHiwaterInterrupt), a6=[a0+32]:8, a7=0x1.
  The `jal` at 0x116c calls us_delay with a0=0x5, a1=?, a2=[[a0+32]:8+736]:8, a3=?.
  The `jal` at 0x118c calls OdsyInit32kSlotMask with a0=[a0+32]:8+6112, a1=0x0, a2=?, a3=?.
  The `jal` at 0x11a4 calls OdsyAlloc32kSlot with a0=[a0+32]:8+6112, a1=?, a2=?, a3=?.
  The `jal` at 0x11ac calls OdsyAlloc32kSlot with a0=[a0+32]:8+6112, a1=?, a2=?, a3=?.
  The `jal` at 0x11d0 calls odsyInitMM with a0=[a0+32]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x11d8 calls odsyInitDMA with a0=[[a0+32]:8+702]:2, a1=?, a2=?, a3=?.
  The `jal` at 0x11ec calls odsyInitRetrace with a0=[a0+32]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x11f4 calls odsyInitInterrupts with a0=[[a0+32]:8+702]:2, a1=?, a2=?, a3=?.
  The `jal` at 0x11fc calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1220 calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+720]:8, a2=?, a3=?.
  The `jal` at 0x1230 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1238 calls odsyZeroOut with a0=[a0+32]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x1240 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1268 calls gfx_flow_am_i_attached with a0=[[a0+32]:8+720]:8, a1=[[a0+32]:8+720]:8, a2=?, a3=?.
  The `jal` at 0x1294 calls gfx_flow_detach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=[[a0+32]:8+736]:8, a3=?.
  The `jal` at 0x12a0 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1304 calls psema with a0=[a0+32]:8+56, a1=0x219, a2=[[a0+32]:8+4640], a3=?, a5=[a0+32]:8.
  The `jal` at 0x1324 calls us_delay with a0=0x2, a1=?, a2=?, a3=?, a5=[a0+32]:8.
  The `jal` at 0x1348 calls gfx_flow_attach_me with a0=[[a0+32]:8+720]:8, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x1358 calls gfx_flow_credit_tnum_get with a0=[[a0+32]:8+720]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x13ac calls cmn_err with a0=0x4, a1=sym(.rodata), a2=[[a0+32]:8+4640], a3=?.
  The `jal` at 0x13c0 calls init_sema with a0=?, a1=0x0, a2=0x0, a3=-0x1.
  The `jal` at 0x13d0 calls timeout with a0=sym(odsy_init_ddrncount_timeout), a1=?, a2=0x1f4, a3=?.
  The `jal` at 0x13dc calls psema with a0=?, a1=0x19, a2=?, a3=?.
  The `bne` branch at 0xf98 targets 0x1394, is taken when a2(=[[a0+32]:8+4640]) != 0, and falls through when a2(=[[a0+32]:8+4640]) == 0.
  The `bne` branch at 0xfa4 targets 0x1300, is taken when at(=[[a0+32]:8+72]:8) != s7(=a0), and falls through when at(=[[a0+32]:8+72]:8) == s7(=a0).
  The `beq` branch at 0xfd4 targets 0x1064, is taken when (v1(=[a0+48]) & 0x3) == 0, and falls through when (v1(=[a0+48]) & 0x3) != 0.
  The `beq` branch at 0xffc targets 0x104c, is taken when a1(=[[a0+32]:8+720]:8) == 0, and falls through when a1(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x1018 targets 0x1054, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x1044 targets 0x1054 and is always taken.
  The `beq` branch at 0x105c targets 0x1070 and is always taken.
  The `beq` branch at 0x1070 targets 0x1090, is taken when a1(=[[a0+32]:8+720]:8) == 0, and falls through when a1(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x10bc targets 0x1118 and is always taken.
  The `beq` branch at 0x10f0 targets 0x1114, is taken when v0(=ret(odsyInitCfifo)) == 0, and falls through when v0(=ret(odsyInitCfifo)) != 0.
  The `beq` branch at 0x110c targets 0x12d8, is taken when s5(?) >= 0x5 (signed), and falls through when s5(?) < 0x5 (signed).
  The `beq` branch at 0x1114 targets 0x1184, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x1164 targets 0x10c4, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `bne` branch at 0x1174 targets 0x1158, is taken when s6(?) != 0, and falls through when s6(?) == 0.
  The `beq` branch at 0x117c targets 0x10c4 and is always taken.
  The `beq` branch at 0x1214 targets 0x1230, is taken when a1(=[[a0+32]:8+720]:8) == 0, and falls through when a1(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x1228 targets 0x1344, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x1260 targets 0x12a0, is taken when a1(=[[a0+32]:8+720]:8) == 0, and falls through when a1(=[[a0+32]:8+720]:8) != 0.
  The `beq` branch at 0x1270 targets 0x12a0, is taken when v0(=ret(gfx_flow_am_i_attached)) == 0, and falls through when v0(=ret(gfx_flow_am_i_attached)) != 0.
  The `beq` branch at 0x12f8 targets 0x12c8 and is always taken.
  The `beq` branch at 0x131c targets 0xfb0, is taken when a4(=[[a0+32]:8+104]) == 0, and falls through when a4(=[[a0+32]:8+104]) != 0.
  The `bne` branch at 0x1334 targets 0x1324, is taken when at(=[[a0+32]:8+104]) != 0, and falls through when at(=[[a0+32]:8+104]) == 0.
  The `beq` branch at 0x133c targets 0xfb0 and is always taken.
  The `beq` branch at 0x138c targets 0x1230 and is always taken.
  The `beq` branch at 0x13ec targets 0x1410, is taken when v0(?) >= 0xb (signed), and falls through when v0(?) < 0xb (signed).
  The `bne` branch at 0x13fc targets 0x13a4, is taken when a2(=[[a0+32]:8+4640]) != 0, and falls through when a2(=[[a0+32]:8+4640]) == 0.
  The `beq` branch at 0x1408 targets 0xfa0 and is always taken.
  The `beq` branch at 0x1414 targets 0x12c8 and is always taken.
  The return at 0x12d0 has v0 = one of ret(odsyInitCfifo), -0x1.

## `gf_OdsyStart` at `0x141c`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x141c-0x149c (128 bytes).
  It occupies 128 bytes.
  The `ld` at 0x1424 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `sw` at 0x1430 stores 4 bytes to [a0+32]:8 +0x2dc.
  The `sh` at 0x1438 stores 2 bytes to [a0+32]:8 +0x2c4.
  The `sw` at 0x143c stores 4 bytes to [a0+32]:8 +0x2d8.
  The `sw` at 0x1440 stores 4 bytes to [a0+32]:8 +0x54.
  The `sw` at 0x1444 stores 4 bytes to [a0+32]:8 +0x78.
  The `sw` at 0x1448 stores 4 bytes to [a0+32]:8 +0x68.
  The `sw` at 0x144c stores 4 bytes to [a0+32]:8 +0x10.
  The `sd` at 0x1450 stores 8 bytes to [a0+32]:8 +0x8.
  The `ld` at 0x1460 loads 8 bytes from [a0+32]:8 +0x2f0.
  The `sw` at 0x1464 stores 4 bytes to [a0+32]:8 +0x28d4.
  2 such `ld` accesses load 8 bytes from [a0+32]:8 +0x2e0, including `ld` at 0x1468, `ld` at 0x1484.
  The `sw` at 0x1474 stores 4 bytes to [a0+32]:8 +0x28d0.
  The `sw` at 0x1478 stores 4 bytes to [[a0+32]:8+736]:8 +0x4034.
  The `lw` at 0x1480 loads 4 bytes from [a0+32]:8 +0x28d4.
  The `sw` at 0x1498 stores 4 bytes to [[a0+32]:8+736]:8 +0x403c.
  The `jal` at 0x1454 calls odsyInitDrawables with a0=[a0+32]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x145c calls kvtophys with a0=[[a0+32]:8+752]:8, a1=?, a2=?, a3=?.
  The return at 0x1494 has v0 = 0x0.

## `odsyLLPReset` at `0x149c`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x149c-0x151c (128 bytes).
  It occupies 128 bytes.
  The `lw` at 0x149c loads 4 bytes from a0 (arg0 at entry) +0x56f0.
  The `ld` at 0x14a4 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `lw` at 0x14ac loads 4 bytes from [a0+736]:8 +0x24.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x14d8, `sw` at 0x1510.
  The `lw` at 0x14dc loads 4 bytes from a0 (arg0 at entry) +0x2c0.
  The `lw` at 0x14f0 loads 4 bytes from table(0x900000001000010c) +0x0.
  The `sw` at 0x1504 stores 4 bytes to table(0x9000000010000134) +0x0.
  The `jal` at 0x14bc calls xwidget_reset with a0=[a0+22256], a1=a1 at entry (arg1), a2=[a0+22256], a3=a3 at entry (arg3).
  The `jal` at 0x1500 calls odsy_usdelay with a0=a0 at entry (arg0), a1=0x2710, a2=table(0x9000000010000000), a3=entry(0x900000001000010c).
  The `beq` branch at 0x14b4 targets 0x14dc, is taken when a2(=[a0+22256]) == 0, and falls through when a2(=[a0+22256]) != 0.
  The `beq` branch at 0x1514 targets 0x14c8 and is always taken.
  The return at 0x14d4 has v0 = ?.

## `odsyLowLevelReset` at `0x151c`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x151c-0x1800 (740 bytes).
  It occupies 740 bytes.
  The `lw` at 0x1528 loads 4 bytes from abs 0x9000000010000004.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2874, including `lw` at 0x153c, `lw` at 0x1768, `lw` at 0x1784.
  The `lw` at 0x156c loads 4 bytes from abs 0x900000001000007c.
  The `sw` at 0x1584 stores 4 bytes to abs 0x900000001000007c.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1590, `lw` at 0x15c0, `lw` at 0x15d0.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1598, `sw` at 0x174c.
  The `lw` at 0x1600 loads 4 bytes from abs 0x9000000010000024.
  2 such `sw` accesses store 4 bytes to abs 0x9000000010000024, including `sw` at 0x164c, `sw` at 0x1754.
  The `lw` at 0x1650 loads 4 bytes from table(0x900000001000010c) +0x0.
  The `sw` at 0x1708 stores 4 bytes to table(0x900000001000010c) +0x0.
  6 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x2888, including `sw` at 0x1710, `sw` at 0x1728, `sw` at 0x173c.
  6 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2e0, including `ld` at 0x171c, `ld` at 0x1758, `ld` at 0x1764.
  3 such `sw` accesses store 4 bytes to [a0+736]:8 +0x100c, including `sw` at 0x1734, `sw` at 0x17c4, `sw` at 0x17d8.
  The `lw` at 0x175c loads 4 bytes from a0 (arg0 at entry) +0x2884.
  2 such `sw` accesses store 4 bytes to [a0+736]:8 +0x1004, including `sw` at 0x1760, `sw` at 0x177c.
  2 such `sw` accesses store 4 bytes to [a0+736]:8 +0x24, including `sw` at 0x176c, `sw` at 0x1788.
  The `sw` at 0x1778 stores 4 bytes to a0 (arg0 at entry) +0x2884.
  The `jal` at 0x1730 calls odsy_usdelay with a0=a0 at entry (arg0), a1=0x30d40, a2=?, a3=0x9000000010000024, a4=table(0x9000000010000000), a5=0x200, a7=[a0+736]:8.
  The `jal` at 0x17c0 calls us_delay with a0=0x30d40, a1=0x30d40, a2=?, a3=0x9000000010000024, a4=table(0x9000000010000000), a5=0x9000000010000000, a7=[a0+736]:8.
  The `jal` at 0x17d4 calls odsyLLPReset with a0=a0 at entry (arg0), a1=[a0+736]:8, a2=?, a3=?.
  The `jal` at 0x17e0 calls odsy_usdelay with a0=a0 at entry (arg0), a1=0x3e8, a2=?, a3=?.
  The `beq` branch at 0x1564 targets 0x17f8, is taken when t0(=0x4) >= at(?) (unsigned), and falls through when t0(=0x4) < at(?) (unsigned).
  The `beq` branch at 0x1580 targets 0x15ac and is always taken.
  The `beq` branch at 0x15a4 targets 0x15fc, is taken when a0(?) >= 0x10 (signed), and falls through when a0(?) < 0x10 (signed).
  The `beq` branch at 0x15ac targets 0x159c, is taken when a6(?) == a0(?), and falls through when a6(?) != a0(?).
  The `beq` branch at 0x15c8 targets 0x159c, is taken when (a2(?) & a4(=0xffffffff80000000)) == 0, and falls through when (a2(?) & a4(=0xffffffff80000000)) != 0.
  The `beq` branch at 0x15d8 targets 0x159c, is taken when (at(?) & 0x20) == 0, and falls through when (at(?) & 0x20) != 0.
  The `bne` branch at 0x15e0 targets 0x1798, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x15ec targets 0x179c, is taken when a0(?) >= 0x10 (signed), and falls through when a0(?) < 0x10 (signed).
  The `beq` branch at 0x15f4 targets 0x1588 and is always taken.
  The `beq` branch at 0x1718 targets 0x17a4, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x179c targets 0x1590 and is always taken.
  The `beq` branch at 0x17f0 targets 0x1748 and is always taken.
  The `beq` branch at 0x17f8 targets 0x15fc and is always taken.
  The return at 0x1790 has v0 = 0x400000.

## `odsyReset` at `0x1800`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x1800-0x1c44 (1092 bytes).
  It occupies 1092 bytes.
  75 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1828, `sw` at 0x1864, `sw` at 0x1868.
  3 such `sh` accesses store 2 bytes to ?, including `sh` at 0x1830, `sh` at 0x187c, `sh` at 0x1884.
  37 such `ld` accesses load 8 bytes from ?, including `ld` at 0x183c, `ld` at 0x18a8, `ld` at 0x18c8.
  16 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1998, `lw` at 0x19e8, `lw` at 0x1a60.
  The `jal` at 0x1844 calls bzero with a0=?, a1=0x1f4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1858 calls strncpy with a0=?, a1=sym(.rodata), a2=0x10, a3=?.
  The `jal` at 0x188c calls odsyLowLevelReset with a0=?, a1=?, a2=0x500, a3=0x400, a4=0x1f4, a5=-0x1.
  The `jal` at 0x1898 calls odsyGatherInfo with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=?.
  The `jal` at 0x18a4 calls odsyMMinit with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x18b4 calls odsyInitDBE with a0=?, a1=sym(odsy_default_timing1), a2=0x1, a3=?.
  The `jal` at 0x18c0 calls odsyGatherInfo with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jal` at 0x1a7c calls printf with a0=sym(.rodata), a1=?, a2=0x4, a3=?.
  The `jal` at 0x1aa4 calls printf with a0=sym(.rodata), a1=?, a2=0x2, a3=?.
  The `jal` at 0x1ad0 calls printf with a0=sym(.rodata), a1=?, a2=0x80, a3=?.
  The `jal` at 0x1adc calls odsy_usdelay with a0=?, a1=0x190, a2=?, a3=?.
  The `jal` at 0x1b00 calls odsy_usdelay with a0=?, a1=0x190, a2=?, a3=?.
  The `jal` at 0x1b20 calls odsy_usdelay with a0=?, a1=0x190, a2=?, a3=?.
  The `jal` at 0x1b4c calls odsy_usdelay with a0=?, a1=0x190, a2=?, a3=?.
  The `beq` branch at 0x1a6c targets 0x1bf4, is taken when a1(?) == at(=0x2), and falls through when a1(?) != at(=0x2).
  The `beq` branch at 0x1a74 targets 0x1bb8, is taken when a0(?) == a2(=0x4), and falls through when a0(?) != a2(=0x4).
  The `beq` branch at 0x1a94 targets 0x1c08, is taken when a1(?) == a2(=0x2), and falls through when a1(?) != a2(=0x2).
  The `beq` branch at 0x1a9c targets 0x1bc8, is taken when a0(?) == at(=0x3), and falls through when a0(?) != at(=0x3).
  The `beq` branch at 0x1ab8 targets 0x1c18, is taken when a1(?) == v0(=0x20), and falls through when a1(?) != v0(=0x20).
  The `beq` branch at 0x1ac0 targets 0x1c2c, is taken when a0(?) == v1(=0x40), and falls through when a0(?) != v1(=0x40).
  The `beq` branch at 0x1ac8 targets 0x1bdc, is taken when a0(?) == a2(=0x80), and falls through when a0(?) != a2(=0x80).
  The `beq` branch at 0x1bc0 targets 0x1a84 and is always taken.
  The `beq` branch at 0x1bd4 targets 0x1aac and is always taken.
  The `beq` branch at 0x1bec targets 0x1ad8 and is always taken.
  The `beq` branch at 0x1c00 targets 0x1a84 and is always taken.
  The `beq` branch at 0x1c10 targets 0x1aac and is always taken.
  The `beq` branch at 0x1c24 targets 0x1ad8 and is always taken.
  The `beq` branch at 0x1c3c targets 0x1ad8 and is always taken.
  The return at 0x1bb0 has v0 = ?.

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

## `odsyInitInterrupts` at `0x2030`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x2030-0x2320 (752 bytes).
  It occupies 752 bytes.
  12 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2044, `ld` at 0x2048, `ld` at 0x2094.
  25 such `sw` accesses store 4 bytes to ?, including `sw` at 0x2054, `sw` at 0x2058, `sw` at 0x20b0.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2060, `lw` at 0x20d0, `lw` at 0x20f8.
  5 such `lh` accesses load 2 bytes from ?, including `lh` at 0x206c, `lh` at 0x2100, `lh` at 0x210c.
  The return at 0x2318 has v0 = ?.

- `odsyInitInterrupts` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x2030
  **Inferred.** The range makes no calls. It loads doublewords and halfwords and stores about 25 words, but the base registers of those accesses are not resolved in the facts, so the addresses it touches are unknown. The name suggests interrupt setup for the board, but nothing here shows which interrupt registers it writes. The role is only partly settled.
  Reviewed: 2026-11-12

- `odsyInitInterrupts` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)` at 0x2030
  **Inferred.** Reads and writes memory through pointers the rendering does not resolve: 12 doubleword loads (for example at 0x2044 and 0x2048), 25 word stores (for example at 0x2054 and 0x2058), and word and halfword loads from 0x2060 to 0x2100. It has no named callee in the rendered facts and returns v0 unresolved at 0x2318. The rendered facts do not tie it to an interrupt register, so the name is not confirmed here.
  Reviewed: 2026-11-12

## `odsyDisableInterrupts` at `0x2320`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x2320-0x2380 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x2320 loads 4 bytes from a0 (arg0 at entry) +0x2878.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x2e0, including `ld` at 0x2328, `ld` at 0x2360, `ld` at 0x2370.
  The `sw` at 0x2334 stores 4 bytes to a0 (arg0 at entry) +0x2878.
  The `sw` at 0x2338 stores 4 bytes to [a0+736]:8 +0x34.
  The `lw` at 0x2340 loads 4 bytes from a0 (arg0 at entry) +0x2894.
  The `sw` at 0x2368 stores 4 bytes to a0 (arg0 at entry) +0x2894.
  The `sw` at 0x236c stores 4 bytes to [a0+736]:8 +0x1044.
  The `sw` at 0x237c stores 4 bytes to [a0+736]:8 +0x103c.
  The return at 0x2378 has v0 = [a0+736]:8.

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

## `odsyPrintRegs` at `0x3538`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_init.o)`.
  Range: 0x3538-0x358c (84 bytes).
  It occupies 84 bytes.
  The `lw` at 0x3548 loads 4 bytes from a0 (arg0 at entry) +0x1064.
  The `lw` at 0x354c loads 4 bytes from a0 (arg0 at entry) +0x1014.
  The `jal` at 0x3558 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=[a0+4116], a3=sym(flag_desc).
  The `jal` at 0x3574 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=[a0+4196], a3=sym(flag_desc).
  The return at 0x3584 has v0 = ret(cmn_err).
