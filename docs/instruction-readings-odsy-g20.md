# Instruction readings from hostfacts

Each entry records selected memory accesses, calls and arguments, branch conditions, and return values from the exact binary range cited. These facts describe software behavior in the named build; they do not establish hardware behavior.

Skipped 44,688 located rows and 5,579 understood rows because they already have entries, 235 named-only or undocumented kernel rows because an exact routine entry already exists, and 55,840 other named-only or undocumented rows because they fall outside this 250-routine hardware-first slice.

- `heartclock_intr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x80bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x80bc-0x80d0 (20 bytes).
  It occupies 20 bytes.
  The `sd` at 0x80cc stores 8 bytes to abs 0xffffffffaff10028.
  The return at 0x80c8 has v0 = 0xffffffffaff10000.
- `powerintr_pollflash` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x8480 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x8480-0x84e0 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x8498 calls srflash_softpower_check with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x84ac calls timeout with a0=sym(powerintr_pollflash), a1=0x0, a2=0x1f4, a3=?.
  The `jal` at 0x84c8 calls cmn_err with a0=0x5, a1=sym(.rodata)+1760, a2=?, a3=?.
  The `jal` at 0x84d0 calls powerintr_back [0x8578] with a0=?, a1=?, a2=?, a3=?.
  The `bltz` branch at 0x8490 targets 0x84c0, is taken when at(=[sym(.sdata)+168]-1) < 0 (signed), and falls through when at(=[sym(.sdata)+168]-1) >= 0 (signed).
  The `beq` branch at 0x84a0 targets 0x84c0, is taken when v0(=ret(srflash_softpower_check)) == 0, and falls through when v0(=ret(srflash_softpower_check)) != 0.
  The `beq` branch at 0x84d8 targets 0x84b8 and is always taken.
  The return at 0x84b8 has v0 = one of ret(timeout), ret(powerintr_back).
- `powerintr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x84e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x84e0-0x8578 (152 bytes).
  It occupies 152 bytes.
  The `jal` at 0x84e8 calls cpu_clearpower with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x84f0 calls flushbus with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x8514 calls srflash_softpower_startdown with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x8524 calls powerintr_back [0x8578] with a0=?, a1=sym(.rodata)+1760, a2=?, a3=?.
  The `jal` at 0x853c calls flash_led [0x8648] with a0=0x3, a1=?, a2=?, a3=?.
  The `jal` at 0x8558 calls cmn_err with a0=0x5, a1=sym(.rodata)+1760, a2=0x1, a3=?.
  The `jal` at 0x8568 calls timeout with a0=sym(powerintr_pollflash), a1=0x0, a2=0x1f4, a3=?.
  The `beq` branch at 0x84fc targets 0x8534, is taken when at(=[sym(.sdata)+176]) == 0, and falls through when at(=[sym(.sdata)+176]) != 0.
  The `beq` branch at 0x8504 targets 0x8514, is taken when v0(=[sym(.sdata)+172]) == 0, and falls through when v0(=[sym(.sdata)+172]) != 0.
  The `bne` branch at 0x851c targets 0x854c, is taken when v0(=ret(srflash_softpower_startdown)) != 0, and falls through when v0(=ret(srflash_softpower_startdown)) == 0.
  The `beq` branch at 0x852c targets 0x850c and is always taken.
  The `beq` branch at 0x8544 targets 0x8504 and is always taken.
  The `beq` branch at 0x8570 targets 0x850c and is always taken.
  The return at 0x850c has v0 = one of [sym(.sdata)+172], ret(powerintr_back), ret(timeout).
- `powerintr_back` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x8578 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x8578-0x8648 (208 bytes).
  It occupies 208 bytes.
  The `jal` at 0x85bc calls sigtopid with a0=0x1, a1=0x2, a2=0x12, a3=0x0, a4=0x0, a5=0x0.
  The `jal` at 0x85d0 calls us_delay with a0=0x7a120, a1=?, a2=?, a3=[sym(clean_shutdown_time)].
  The `jal` at 0x85d8 calls cpu_soft_powerdown with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x8600 calls timeout with a0=sym(cpu_godown), a1=0x0, a2=?, a3=[sym(clean_shutdown_time)].
  The `jal` at 0x8610 calls set_autopoweron with a0=?, a1=?, a2=?, a3=[sym(lbolt)]+100.
  The `jal` at 0x8624 calls cmn_err with a0=0x5, a1=sym(.rodata)+1760, a2=[sym(lbolt)], a3=[sym(.sbss)+192].
  The `jal` at 0x8630 calls us_delay with a0=0x7a120, a1=?, a2=?, a3=?.
  The `jal` at 0x8638 calls cpu_soft_powerdown with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x8590 targets 0x85ac, is taken when a3(=[sym(.sbss)+192]) == 0, and falls through when a3(=[sym(.sbss)+192]) != 0.
  The `bne` branch at 0x8598 targets 0x8620, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x85c4 targets 0x85e8, is taken when v0(=ret(sigtopid)) == 0, and falls through when v0(=ret(sigtopid)) != 0.
  The `beq` branch at 0x85e0 targets 0x85a4 and is always taken.
  The `beq` branch at 0x8618 targets 0x85a4 and is always taken.
  The `beq` branch at 0x8640 targets 0x85a4 and is always taken.
  The return at 0x85a4 has v0 = one of ?, ret(cpu_soft_powerdown), ret(set_autopoweron).
- `r12k_perf_overflow_intr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x9564 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x9564-0x95c4 (96 bytes).
  It occupies 96 bytes.
  The `beq` branch at 0x9570 targets 0x9580, is taken when t0(?) >= 0 (signed), and falls through when t0(?) < 0 (signed).
  The `beq` branch at 0x9580 targets 0x958c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x959c targets 0x95ac, is taken when t0(?) >= 0 (signed), and falls through when t0(?) < 0 (signed).
  The `beq` branch at 0x95ac targets 0x95b8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The return at 0x95bc has v0 = ?.
- `r10k_perf_overflow_intr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x95c4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x95c4-0x95f4 (48 bytes).
  It occupies 48 bytes.
  The `beq` branch at 0x95d0 targets 0x95e0, is taken when t0(?) >= 0 (signed), and falls through when t0(?) < 0 (signed).
  The `beq` branch at 0x95e0 targets 0x95ec, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The return at 0x95ec has v0 = ?.
- `handle_intr_wgflush` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x9a9c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x9a9c-0x9ae8 (76 bytes).
  It occupies 76 bytes.
  The `sd` at 0x9a9c stores 8 bytes to abs 0xffffffffffffc038.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x9ae0).
  The `beq` branch at 0x9ad8 targets 0x9b30, is taken when k0(?) == 0, and falls through when k0(?) != 0.
- `splhintr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb8fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb8fc-0xb914 (24 bytes).
  It occupies 24 bytes.
  The return at 0xb90c has v0 = ?.
- `delay_for_intr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xba20 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xba20-0xba28 (8 bytes).
  It occupies 8 bytes.
  The return at 0xba20 has v0 = ?.
- `intrnorm` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xcbc0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xcbc0-0xd064 (1188 bytes).
  It occupies 1188 bytes.
  The `lb` at 0xcbc0 loads 1 byte from abs 0xffffffffffffc708.
  The `ld` at 0xcbcc loads 8 bytes from abs 0xffffffffffffc460.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0xcbd4, `ld` at 0xcc1c.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc028, including `ld` at 0xcbec, `ld` at 0xcd04, `ld` at 0xcd94.
  2 such `lb` accesses load 1 byte from abs 0xffffffffffffc04f, including `lb` at 0xcbf8, `lb` at 0xccf4.
  4 such `sb` accesses store 1 byte to abs 0xffffffffffffc04f, including `sb` at 0xcc18, `sb` at 0xcc94, `sb` at 0xccc4.
  The `ld` at 0xcc20 loads 8 bytes from [-0x3fe8]:8 +0x3e0.
  The `sd` at 0xcc28 stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x248.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc030, including `ld` at 0xcc30, `ld` at 0xccac, `ld` at 0xccc8.
  The `sd` at 0xcc34 stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x240.
  22 such `sd` accesses store 8 bytes to ?, including `sd` at 0xcca4, `sd` at 0xcd1c, `sd` at 0xcd24.
  The `ld` at 0xcca8 loads 8 bytes from abs 0xffffffffffffc020.
  The `sd` at 0xccb0 stores 8 bytes to [-0x3fe0]:8 +0x228.
  The `sd` at 0xcccc stores 8 bytes to [-0x3fd0]:8 +0xe0.
  The `sb` at 0xccd4 stores 1 byte to abs 0xffffffffffffc053.
  The `lb` at 0xccd8 loads 1 byte from abs 0xffffffffffffc050.
  The `ld` at 0xcd08 loads 8 bytes from [-0x3fd8]:8 +0x88.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc038, including `ld` at 0xcd30, `ld` at 0xce88, `ld` at 0xd060.
  The `ld` at 0xcd98 loads 8 bytes from [-0x3fd8]:8 +0x90.
  The `sd` at 0xcd9c stores 8 bytes to abs 0xffffffffffffc018.
  The `lh` at 0xcda4 loads 2 bytes from [-0x3fd8]:8 +0xa8.
  The `sd` at 0xcdcc stores 8 bytes to abs 0xffffffffffffc038.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0xce50, `lw` at 0xcf70, `lw` at 0xd014.
  The `ld` at 0xce6c loads 8 bytes from abs 0xffffffffffffc728.
  The `sw` at 0xce78 stores 4 bytes to [-0x38d8]:8 +0x4.
  2 such `sd` accesses store 8 bytes to abs 0xffffffffffffc718, including `sd` at 0xce90, `sd` at 0xced4.
  The `sd` at 0xce98 stores 8 bytes to abs 0xffffffffffffc720.
  The `ld` at 0xcea4 loads 8 bytes from abs 0xffffffffffffc720.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc718, including `ld` at 0xceb4, `ld` at 0xcf9c, `ld` at 0xcfdc.
  The `lw` at 0xd038 loads 4 bytes from abs 0xffffffffffffc710.
  The `sw` at 0xd040 stores 4 bytes to abs 0xffffffffffffc710.
  The `lw` at 0xd04c loads 4 bytes from abs 0xffffffffffffc70c.
  The `sw` at 0xd058 stores 4 bytes to abs 0xffffffffffffc70c.
  Calls ecommon via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xcc4c).
  Calls ecommon via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xccb4).
  Calls ecommon_allsaved via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xcce4).
  Calls ecommon via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xccec).
  The `jal` at 0xcd8c calls tfi_save with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xcda0 calls uli_setasids with a0=[[-0x3fd8]:8+168]:2, a1=?, a2=?, a3=?.
  Calls ecommon_allsaved via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0xcda8).
  Calls ecommon via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xcdc4).
  The `jalr` at 0xce9c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  Calls .text via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0xcebc).
  Calls .text via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0xd05c).
  The `beq` branch at 0xcbc8 targets 0xcbec, is taken when k1(?) == 0, and falls through when k1(?) != 0.
  The `beq` branch at 0xcbd0 targets 0xcbec, is taken when k1(=[-0x3ba0]:8) == 0, and falls through when k1(=[-0x3ba0]:8) != 0.
  The `bne` branch at 0xcbd8 targets 0xcbec, is taken when k1(=[-0x3ba0]:8) != k0(=[-0x3fe8]:8), and falls through when k1(=[-0x3ba0]:8) == k0(=[-0x3fe8]:8).
  The `bgez` branch at 0xcbe4 targets 0xcdcc, is taken when k1(?) >= 0 (signed), and falls through when k1(?) < 0 (signed).
  The `bne` branch at 0xcbf0 targets 0xccf4, is taken when k0(=[-0x3fd8]:8) != 0, and falls through when k0(=[-0x3fd8]:8) == 0.
  The `beq` branch at 0xcc00 targets 0xcdb0, is taken when k0(=[-0x3fb1]:1-2) == 0, and falls through when k0(=[-0x3fb1]:1-2) != 0.
  The `beq` branch at 0xcc08 targets 0xcc90, is taken when k0(=[-0x3fb1]:1-1) == 0, and falls through when k0(=[-0x3fb1]:1-1) != 0.
  The `beq` branch at 0xcc10 targets 0xccbc, is taken when k0(=[-0x3fb1]:1-3) == 0, and falls through when k0(=[-0x3fb1]:1-3) != 0.
  The `beq` branch at 0xccdc targets 0xccec, is taken when k0(=[-0x3fb0]:1) == 0, and falls through when k0(=[-0x3fb0]:1) != 0.
  The `beq` branch at 0xccfc targets 0xcdb0, is taken when k1(=[-0x3fb1]:1) == at(=0x2), and falls through when k1(=[-0x3fb1]:1) != at(=0x2).
  The `bltz` branch at 0xcdf4 targets 0xd05c, is taken when k0(?) < 0 (signed), and falls through when k0(?) >= 0 (signed).
  The `bne` branch at 0xce1c targets 0xce30, is taken when (k0(?) & k1(?)) != 0, and falls through when (k0(?) & k1(?)) == 0.
  The `beq` branch at 0xce28 targets 0xce34 and is always taken.
  The `beq` branch at 0xce40 targets 0xd05c, is taken when (k0(?) & 0x2) == 0, and falls through when (k0(?) & 0x2) != 0.
  The `bne` branch at 0xce58 targets 0xd05c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xce64 targets 0xd05c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xce70 targets 0xd05c, is taken when k1(=[-0x38d8]:8) == 0, and falls through when k1(=[-0x38d8]:8) != 0.
  The `beq` branch at 0xceb0 targets 0xcec4, is taken when k0(=[-0x38e0]:8) == k1(?), and falls through when k0(=[-0x38e0]:8) != k1(?).
  The `bne` branch at 0xcec8 targets 0xced4, is taken when k0(=[-0x38e8]:8) != k1(?), and falls through when k0(=[-0x38e8]:8) == k1(?).
  The `bne` branch at 0xcee8 targets 0xcf70, is taken when (k0(?) & 0x3fff) != 0, and falls through when (k0(?) & 0x3fff) == 0.
  The `bltzl` branch at 0xcf14 targets 0xd02c, is taken when k0(?) < 0 (signed), and falls through when k0(?) >= 0 (signed); its branch-likely delay slot `addiu at,zero,4` at 0xcf18 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xcf3c targets 0xcf50, is taken when (k0(?) & k1(?)) != 0, and falls through when (k0(?) & k1(?)) == 0.
  The `beq` branch at 0xcf48 targets 0xcf54 and is always taken.
  The `beql` branch at 0xcf60 targets 0xd02c, is taken when (k0(?) & 0x2) == 0, and falls through when (k0(?) & 0x2) != 0; its branch-likely delay slot `addiu at,zero,4` at 0xcf64 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xcf78 targets 0xcfb0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xcf88 targets 0xd02c, is taken when k0(?) == 0, and falls through when k0(?) != 0.
  The `bne` branch at 0xcf94 targets 0xd02c, is taken when k0(?) != 0, and falls through when k0(?) == 0.
  The `bne` branch at 0xcfa0 targets 0xd05c, is taken when at(=[-0x38e8]:8) != 0, and falls through when at(=[-0x38e8]:8) == 0.
  The `beq` branch at 0xcfa8 targets 0xd02c and is always taken.
  The `bne` branch at 0xcfb4 targets 0xcfd0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xcfc0 targets 0xd02c, is taken when (k0(?) & 0x8) == 0, and falls through when (k0(?) & 0x8) != 0.
  The `beq` branch at 0xcfc8 targets 0xd02c and is always taken.
  The `bne` branch at 0xcfd4 targets 0xcff0, is taken when k0(=0x2) != at(?), and falls through when k0(=0x2) == at(?).
  The `bne` branch at 0xcfe0 targets 0xd05c, is taken when at(=[-0x38e8]:8) != 0, and falls through when at(=[-0x38e8]:8) == 0.
  The `beq` branch at 0xcfe8 targets 0xd02c and is always taken.
  The `beq` branch at 0xcff4 targets 0xd004, is taken when at(?) >= 0x8 (unsigned), and falls through when at(?) < 0x8 (unsigned).
  The `beq` branch at 0xcffc targets 0xd02c and is always taken.
  The `beq` branch at 0xd00c targets 0xd02c, is taken when k0(?) == 0, and falls through when k0(?) != 0.
  The `beq` branch at 0xd020 targets 0xd02c, is taken when k0(?) == 0, and falls through when k0(?) != 0.
  The `bne` branch at 0xd048 targets 0xd05c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0xd054 targets 0xd05c and is always taken.
  The instructions from 0xcc54 to 0xcc8c are not reached by any path from the entry, and their branches are not listed.
- `strayfp_intr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe644 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe644-0xe698 (84 bytes).
  It occupies 84 bytes.
  The `jal` at 0xe64c calls getsr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xe658 calls setsr with a0=(ret(getsr) | 0x20000000), a1=?, a2=?, a3=?.
  The `jal` at 0xe660 calls set_fpc_csr with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0xe668 calls getsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xe678 calls setsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xe684 calls cmn_err with a0=0x5, a1=sym(.rodata)+3328, a2=?, a3=?.
  The return at 0xe690 has v0 = ret(cmn_err).
- `fp_intr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe6e8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe6e8-0xe814 (300 bytes).
  It occupies 300 bytes.
  The `ld` at 0xe6f0 loads 8 bytes from abs 0xffffffffffffc018.
  The `ld` at 0xe708 loads 8 bytes from [-0x3fe8]:8 +0x318.
  The `lbu` at 0xe70c loads 1 byte from [[-0x3fe8]:8+792]:8 +0x215.
  2 such `sb` accesses store 1 byte to [[-0x3fe8]:8+792]:8 +0x215, including `sb` at 0xe720, `sb` at 0xe800.
  The `ld` at 0xe724 loads 8 bytes from a0 (arg0 at entry) +0x118.
  2 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x540, including `lw` at 0xe74c, `lw` at 0xe768.
  The `lw` at 0xe760 loads 4 bytes from [-0x3fe8]:8 +0x544.
  The `ld` at 0xe764 loads 8 bytes from a0 (arg0 at entry) +0x120.
  The `sd` at 0xe7e4 stores 8 bytes to a0 (arg0 at entry) +0x160.
  The `sd` at 0xe7ec stores 8 bytes to a0 (arg0 at entry) +0x120.
  The `jal` at 0xe73c calls load_fpcsr with a0=[[[-0x3fe8]:8+792]:8+533]:1, a1=[[-0x3fe8]:8+792]:8, a2=a2 at entry (arg2), a3=0x1.
  The `jal` at 0xe750 calls emulate_branch with a0=a0 at entry (arg0), a1=[[-0x3fe8]:8+1344], a2=ret(load_fpcsr), a3=sp-48.
  The `jal` at 0xe794 calls softfp_dispatch [0xe814] with a0=a0 at entry (arg0), a1=?, a2=0x11, a3=0x13, a4=0x23.
  The `jal` at 0xe7a8 calls checkfp with a0=[-0x3fe8]:8, a1=0x2, a2=?, a3=?.
  The `jal` at 0xe7b8 calls sendSIGFPE [0xe698] with a0=[-0x3fe8]:8, a1=?, a2=0x11, a3=0x13, a4=0x23.
  The `jal` at 0xe7f0 calls strayfp_intr [0xe644] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1.
  The `jal` at 0xe804 calls sendSIGFPE [0xe698] with a0=[-0x3fe8]:8, a1=[[-0x3fe8]:8+792]:8, a2=a2 at entry (arg2), a3=0x1, a4=0x2.
  The `beq` branch at 0xe700 targets 0xe7f0, is taken when s0(=[-0x3fe8]:8) == 0, and falls through when s0(=[-0x3fe8]:8) != 0.
  The `beq` branch at 0xe710 targets 0xe724, is taken when a0(=[[[-0x3fe8]:8+792]:8+533]:1) == 0, and falls through when a0(=[[[-0x3fe8]:8+792]:8+533]:1) != 0.
  The `beq` branch at 0xe718 targets 0xe800, is taken when a0(=[[[-0x3fe8]:8+792]:8+533]:1) == a3(=0x1), and falls through when a0(=[[[-0x3fe8]:8+792]:8+533]:1) != a3(=0x1).
  The `beq` branch at 0xe734 targets 0xe764, is taken when (at(=[a0+280]:8) & v0(=0x80000000)) == 0, and falls through when (at(=[a0+280]:8) & v0(=0x80000000)) != 0.
  The `beq` branch at 0xe75c targets 0xe774 and is always taken.
  The `beq` branch at 0xe784 targets 0xe7d4, is taken when a0(?) == a2(=0x11), and falls through when a0(?) != a2(=0x11).
  The `bne` branch at 0xe78c targets 0xe7b8, is taken when a0(?) != a3(=0x13), and falls through when a0(?) == a3(=0x13).
  The `beq` branch at 0xe79c targets 0xe7e4, is taken when v0(=ret(softfp_dispatch)) == 0, and falls through when v0(=ret(softfp_dispatch)) != 0.
  The `beq` branch at 0xe7b0 targets 0xe7c4 and is always taken.
  The `bne` branch at 0xe7d4 targets 0xe78c, is taken when a5(?) != a4(=0x23), and falls through when a5(?) == a4(=0x23).
  The `beq` branch at 0xe7dc targets 0xe794 and is always taken.
  The `beq` branch at 0xe7e8 targets 0xe7c0 and is always taken.
  The `beq` branch at 0xe7f8 targets 0xe7c4 and is always taken.
  The `beq` branch at 0xe80c targets 0xe7c4 and is always taken.
  The return at 0xe7cc has v0 = one of ret(checkfp), ?, ret(strayfp_intr), ret(sendSIGFPE).
- `hwperf_overflowed_intr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19038 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19038-0x19088 (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x19038 loads 4 bytes from abs 0xffffffffffffc3fc.
  The `jal` at 0x1905c calls r10k_perf_overflow_intr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `jal` at 0x19078 calls r12k_perf_overflow_intr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `beq` branch at 0x1904c targets 0x19078, is taken when a2(?) == at(=0xe), and falls through when a2(?) != at(=0xe).
  The `beq` branch at 0x19054 targets 0x19078, is taken when a2(?) == v0(=0xf), and falls through when a2(?) != v0(=0xf).
  The `beq` branch at 0x19080 targets 0x19068 and is always taken.
  The return at 0x19070 has v0 = one of ret(r10k_perf_overflow_intr), ret(r12k_perf_overflow_intr).
- `r1nk_perf_intr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a890 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a890-0x1aa50 (448 bytes).
  It occupies 448 bytes.
  The `ld` at 0x1a898 loads 8 bytes from abs 0xffffffffffffc6d8.
  6 such `lh` accesses load 2 bytes from [-0x3928]:8 +0x30, including `lh` at 0x1a8a8, `lh` at 0x1a8d8, `lh` at 0x1a900.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1a8f0, `sw` at 0x1a9e4.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1a91c, `lw` at 0x1a958, `lw` at 0x1a9b0.
  The `lld` at 0x1a968 loads 8 bytes from ?.
  The `scd` at 0x1a974 stores 8 bytes to ?.
  The `lh` at 0x1a99c loads 2 bytes from ?.
  The `jal` at 0x1a8c8 calls r1nkperf_data_register_get with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1a8f8 calls r1nk_perf_stop_counters with a0=[-0x3928]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x1a918 calls r1nkperf_data_register_set with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x1aa10 calls r1nk_perf_intr_action with a0=a0 at entry (arg0), a1=[-0x3928]:8, a2=one of 0x0, 0x1, a3=?.
  The `jal` at 0x1aa1c calls r1nk_perf_start_counters with a0=[-0x3928]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x1aa40 calls assfail with a0=sym(.rodata)+12952, a1=sym(.rodata)+12952, a2=0x65, a3=a3 at entry (arg3).
  The `beq` branch at 0x1a8a0 targets 0x1aa24, is taken when s1(=[-0x3928]:8) == 0, and falls through when s1(=[-0x3928]:8) != 0.
  The `beq` branch at 0x1a8b0 targets 0x1aa38, is taken when a1(=[[-0x3928]:8+48]:2) >= 0x4 (signed), and falls through when a1(=[[-0x3928]:8+48]:2) < 0x4 (signed).
  The `blez` branch at 0x1a8bc targets 0x1a8f4, is taken when a1(=[[-0x3928]:8+48]:2) <= 0 (signed), and falls through when a1(=[[-0x3928]:8+48]:2) > 0 (signed).
  The `bne` branch at 0x1a8ec targets 0x1a8c8, is taken when s0(?) < a0(=[[-0x3928]:8+48]:2) (signed), and falls through when s0(?) >= a0(=[[-0x3928]:8+48]:2) (signed).
  The `blez` branch at 0x1a904 targets 0x1aa08, is taken when a2(=[[-0x3928]:8+48]:2) <= 0 (signed), and falls through when a2(=[[-0x3928]:8+48]:2) > 0 (signed).
  The `bne` branch at 0x1a934 targets 0x1a90c, is taken when s0(?) < a1(=[[-0x3928]:8+48]:2) (signed), and falls through when s0(?) >= a1(=[[-0x3928]:8+48]:2) (signed).
  The `blez` branch at 0x1a93c targets 0x1aa08, is taken when a1(=[[-0x3928]:8+48]:2) <= 0 (signed), and falls through when a1(=[[-0x3928]:8+48]:2) > 0 (signed).
  The `beq` branch at 0x1a94c targets 0x1a994 and is always taken.
  The `beql` branch at 0x1a978 targets 0x1a968, is taken when at(?) == 0, and falls through when at(?) != 0; its branch-likely delay slot `nop` at 0x1a97c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1a98c targets 0x1aa10, is taken when s0(?) >= a1(=[[-0x3928]:8+48]:2) (signed), and falls through when s0(?) < a1(=[[-0x3928]:8+48]:2) (signed).
  The `beq` branch at 0x1a9a0 targets 0x1a9e8, is taken when a4(?) == t0(=-0x1), and falls through when a4(?) != t0(=-0x1).
  The `beq` branch at 0x1a9c8 targets 0x1a954, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x1a9d4 targets 0x1a954, is taken when a5(?) < a7(=0xffffffff80000000) (unsigned), and falls through when a5(?) >= a7(=0xffffffff80000000) (unsigned).
  The `beq` branch at 0x1a9e0 targets 0x1a954 and is always taken.
  The `bne` branch at 0x1a9f8 targets 0x1a998, is taken when s0(?) < a1(=[[-0x3928]:8+48]:2) (signed), and falls through when s0(?) >= a1(=[[-0x3928]:8+48]:2) (signed).
  The `beq` branch at 0x1aa00 targets 0x1aa10 and is always taken.
  The `beq` branch at 0x1aa48 targets 0x1a8b8 and is always taken.
  The return at 0x1aa30 has v0 = one of ?, ret(r1nk_perf_start_counters).
- `r1nk_perf_intr_action` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1aa50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1aa50-0x1ab50 (256 bytes).
  It occupies 256 bytes.
  The `lh` at 0x1aa50 loads 2 bytes from a1 (arg1 at entry) +0x0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xf8, including `ld` at 0x1aa78, `ld` at 0x1aadc.
  The `ld` at 0x1aa7c loads 8 bytes from a0 (arg0 at entry) +0xf0.
  The `ld` at 0x1aa80 loads 8 bytes from a0 (arg0 at entry) +0xe0.
  The `ld` at 0x1aa88 loads 8 bytes from a0 (arg0 at entry) +0x120.
  The `ld` at 0x1aa94 loads 8 bytes from abs 0xffffffffffffc020.
  The `lbu` at 0x1aaa0 loads 1 byte from [-0x3fe0]:8 +0x70.
  The `lh` at 0x1aabc loads 2 bytes from a1 (arg1 at entry) +0xc.
  6 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x1aacc, `ld` at 0x1aaf0, `ld` at 0x1ab04.
  2 such `ld` accesses load 8 bytes from [-0x3fe8]:8 +0x3e0, including `ld` at 0x1aaf4, `ld` at 0x1ab40.
  2 such `sw` accesses store 4 bytes to [[-0x3fe8]:8+992]:8 +0x0, including `sw` at 0x1ab00, `sw` at 0x1ab4c.
  The `lw` at 0x1ab18 loads 4 bytes from [-0x3fe8]:8 +0x330.
  The `sw` at 0x1ab24 stores 4 bytes to [-0x3fe8]:8 +0x330.
  The `jal` at 0x1aa84 calls prfintr with a0=[a0+288]:8, a1=[a0+224]:8, a2=[a0+240]:8, a3=[a0+248]:8, a5=a0 at entry (arg0), a6=0x3.
  The `jal` at 0x1aad0 calls sigtouthread with a0=[-0x3fe8]:8, a1=[a1+12]:2, a2=0x0, a3=a3 at entry (arg3), a4=[a1+12]:2, a5=a0 at entry (arg0), a6=0x3.
  The `jal` at 0x1ab0c calls mutex_bitlock with a0=[-0x3fe8]:8+132, a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[[-0x3fe0]:8+112]:1, a6=0x3.
  The `jal` at 0x1ab34 calls mutex_bitunlock with a0=[-0x3fe8]:8+132, a1=0x4, a2=ret(mutex_bitlock), a3=[-0x3fe8]:8, a4=0x400000.
  The `beq` branch at 0x1aa68 targets 0x1aab4, is taken when (a4(=[a1]:2) & 0x80) == 0, and falls through when (a4(=[a1]:2) & 0x80) != 0.
  The `beq` branch at 0x1aa70 targets 0x1aa94, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1aa8c targets 0x1aaac and is always taken.
  The `beq` branch at 0x1aa98 targets 0x1aaac, is taken when a0(=[-0x3fe0]:8) == 0, and falls through when a0(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0x1aaa4 targets 0x1ab04, is taken when a5(=[[-0x3fe0]:8+112]:1) == a6(=0x3), and falls through when a5(=[[-0x3fe0]:8+112]:1) != a6(=0x3).
  The `beq` branch at 0x1aab4 targets 0x1aaac, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x1aac0 targets 0x1aaa8, is taken when a4(=[a1+12]:2) == 0, and falls through when a4(=[a1+12]:2) != 0.
  The `bne` branch at 0x1aae8 targets 0x1aaac, is taken when a7(?) != t0(=0x10), and falls through when a7(?) == t0(=0x10).
  The `beq` branch at 0x1aafc targets 0x1aaa8 and is always taken.
  The `beq` branch at 0x1ab48 targets 0x1aaa8 and is always taken.
  The return at 0x1aaac has v0 = one of ret(prfintr), ?, ret(sigtouthread).
- `router_print_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2b84 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2b84-0x2c5c (216 bytes).
  It occupies 216 bytes.
  The `ld` at 0x2b84 loads 8 bytes from a0 (arg0 at entry) +0x220.
  The `lbu` at 0x2be8 loads 1 byte from (a4 + a0) +0x257.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x250, including `ld` at 0x2c14, `ld` at 0x2c48.
  The `sb` at 0x2c28 stores 1 byte to (a4 + a0) +0x257.
  The `jal` at 0x2bf8 calls error_flag_to_type [0x2b3c] with a0=a3 at entry (arg3), a1=a1 at entry (arg1), a2=(a3 | [(a4 + a0)+599]:1), a3=a3 at entry (arg3), a4=(a4 + a0).
  The `jal` at 0x2c18 calls cmn_err with a0=0x4, a1=sym(.rodata)+616, a2=ret(error_flag_to_type), a3=?, a4=[a0+592]:8, a5=a4 at entry (arg4).
  The `jal` at 0x2c2c calls error_flag_to_type [0x2b3c] with a0=a3 at entry (arg3), a1=a1 at entry (arg1), a2=(a3 | [(a4 + a0)+599]:1), a3=a3 at entry (arg3), a4=(a4 + a0).
  The `jal` at 0x2c4c calls cmn_err with a0=0x404, a1=sym(.rodata)+616, a2=ret(error_flag_to_type), a3=?, a4=[a0+592]:8, a5=a4 at entry (arg4).
  The `beq` branch at 0x2bc0 targets 0x2be4, is taken when s2(?) >= 0x1f5 (signed), and falls through when s2(?) < 0x1f5 (signed).
  The `beq` branch at 0x2bf0 targets 0x2c28, is taken when (a3 & v0(=[(a4 + a0)+599]:1)) == 0, and falls through when (a3 & v0(=[(a4 + a0)+599]:1)) != 0.
  The `beq` branch at 0x2c20 targets 0x2c54 and is always taken.
  The `beq` branch at 0x2c54 targets 0x2bcc and is always taken.
  The return at 0x2bdc has v0 = one of 0x0, 0x1.
- `router_print_state_specific` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3ae4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3ae4-0x3cdc (504 bytes).
  It occupies 504 bytes.
  The `lbu` at 0x3b20 loads 1 byte from a0 (arg0 at entry) +0x238.
  The `sb` at 0x3b64 stores 1 byte to a0 (arg0 at entry) +0x238.
  The `ld` at 0x3b70 loads 8 bytes from abs 0xffffffffffffc400.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x2, including `lh` at 0x3b74, `lh` at 0x3bb8.
  The `ld` at 0x3b78 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x3b84 loads 8 bytes from ([[-0x3c00]:8]:8 + ([a0+2]:2 << 0x3)) +0x0.
  The `lbu` at 0x3b90 loads 1 byte from [([[-0x3c00]:8]:8 + ([a0+2]:2 << 0x3))]:8 +0x8594.
  The `lh` at 0x3be0 loads 2 bytes from (sym(compact_to_nasid_node) + ([a0+2]:2 + [a0+2]:2)) +0x0.
  The `sb` at 0x3be4 stores 1 byte to [([[-0x3c00]:8]:8 + ([a0+2]:2 << 0x3))]:8 +0x8594.
  The `lh` at 0x3c10 loads 2 bytes from a0 (arg0 at entry) +0x1f8.
  2 such `lbu` accesses load 1 byte from a0 (arg0 at entry) +0x8, including `lbu` at 0x3c2c, `lbu` at 0x3c4c.
  The `jal` at 0x3b18 calls mutex_spinlock with a0=a0+572, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3b34 calls mutex_spinunlock with a0=a0+572, a1=ret(mutex_spinlock), a2=[a0+568]:1, a3=?.
  The `jal` at 0x3b68 calls mutex_spinunlock with a0=a0+572, a1=ret(mutex_spinlock), a2=[a0+568]:1, a3=?.
  The `jalr` at 0x3ba0 calls (unknown callee) with a0=a1 at entry (arg1), a1=sym(.rodata)+616, a2=[a0+2]:2, a3=?.
  The `jal` at 0x3bac calls max with a0=0x100, a1=0x100, a2=?, a3=?.
  The `jal` at 0x3bdc calls timeout_poll with a0=[(sym(compact_to_nasid_node) + ([a0+2]:2 + [a0+2]:2))]:2, a1=0x60c020, a2=0x8000000000000000, a3=ret(max), a4=0x1, a5=([a0+2]:2 + [a0+2]:2).
  The `jal` at 0x3bec calls router_state_empty [0x399c] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x3bfc calls (unknown callee) with a0=a1 at entry (arg1), a1=sym(.rodata)+616, a2=?, a3=?.
  The `jalr` at 0x3c0c calls (unknown callee) with a0=a1 at entry (arg1), a1=sym(.rodata)+616, a2=[a0+504]:2, a3=?.
  The `jal` at 0x3c1c calls router_reg_read with a0=a0 at entry (arg0), a1=0x0, a2=sp-64, a3=?.
  The `jal` at 0x3c30 calls show_rr_status_rev_id with a0=?, a1=[a0+8]:1, a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jal` at 0x3c90 calls router_reg_read with a0=a0 at entry (arg0), a1=?, a2=sp-64, a3=?.
  The `jal` at 0x3cb4 calls show_rr_error_status with a0=?, a1=?, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=0x0.
  The `beq` branch at 0x3b28 targets 0x3b60, is taken when (s3(=a3) & a2(=[a0+568]:1)) == 0, and falls through when (s3(=a3) & a2(=[a0+568]:1)) != 0.
  The `beq` branch at 0x3b94 targets 0x3be8, is taken when a0(=[[([[-0x3c00]:8]:8 + ([a0+2]:2 << 0x3))]:8+34196]:1) == 0, and falls through when a0(=[[([[-0x3c00]:8]:8 + ([a0+2]:2 << 0x3))]:8+34196]:1) != 0.
  The `bne` branch at 0x3bf4 targets 0x3b3c, is taken when v0(=ret(router_state_empty)) != 0, and falls through when v0(=ret(router_state_empty)) == 0.
  The `beq` branch at 0x3c48 targets 0x3c60 and is always taken.
  The `beq` branch at 0x3c58 targets 0x3b3c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x3c6c targets 0x3c50, is taken when (a1(=[a0+8]:1) & a6(?)) == 0, and falls through when (a1(=[a0+8]:1) & a6(?)) != 0.
  The `bne` branch at 0x3ccc targets 0x3c48, is taken when s4(?) < 0x9 (signed), and falls through when s4(?) >= 0x9 (signed).
  The `beq` branch at 0x3cd4 targets 0x3b40 and is always taken.
  The return at 0x3b58 has v0 = one of ?, ret(show_rr_error_status).
- `router_print_state` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3cdc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3cdc-0x3db0 (212 bytes).
  It occupies 212 bytes.
  The `ld` at 0x3d08 loads 8 bytes from abs 0xffffffffffffc400.
  2 such `lh` accesses load 2 bytes from abs 0xffffffffffffc42a, including `lh` at 0x3d0c, `lh` at 0x3d48.
  The `ld` at 0x3d10 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x3d1c loads 8 bytes from ([[-0x3c00]:8]:8 + ([-0x3bd6]:2 << 0x3)) +0x0.
  The `ld` at 0x3d24 loads 8 bytes from [([[-0x3c00]:8]:8 + ([-0x3bd6]:2 << 0x3))]:8 +0x85e8.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x3d34, `ld` at 0x3d78.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x3d4c, `sh` at 0x3d74.
  2 such `lh` accesses load 2 bytes from ?, including `lh` at 0x3d50, `lh` at 0x3d5c.
  The `sw` at 0x3d68 stores 4 bytes to ?.
  The `jal` at 0x3d70 calls router_print_state_specific with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=sym(compact_to_nasid_node).
  The `jal` at 0x3da0 calls router_print_state_specific with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x3d00 targets 0x3da0, is taken when a0 != 0, and falls through when a0 == 0.
  The `beq` branch at 0x3d28 targets 0x3d84, is taken when s0(=[[([[-0x3c00]:8]:8 + ([-0x3bd6]:2 << 0x3))]:8+34280]:8) == 0, and falls through when s0(=[[([[-0x3c00]:8]:8 + ([-0x3bd6]:2 << 0x3))]:8+34280]:8) != 0.
  The `beq` branch at 0x3d30 targets 0x3d40 and is always taken.
  The `beq` branch at 0x3d38 targets 0x3d84, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x3d40 targets 0x3d38, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x3d7c targets 0x3d30, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x3da8 targets 0x3d88 and is always taken.
  The return at 0x3d98 has v0 = one of ?, ret(router_print_state_specific).
- `hubii_eint_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x17f08 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x17f08-0x180cc (452 bytes).
  It occupies 452 bytes.
  The `ld` at 0x17f08 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x17f0c loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x17f1c loads 8 bytes from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0.
  The `lw` at 0x17f2c loads 4 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8c80.
  2 such `lh` accesses load 2 bytes from ?, including `lh` at 0x17f58, `lh` at 0x1802c.
  The `ld` at 0x17f68 loads 8 bytes from table(0x9200000001c00128) +0x0.
  The `lh` at 0x1800c loads 2 bytes from (sym(compact_to_nasid_node) + (ret(get_cpu_cnode) + ret(get_cpu_cnode))) +0x0.
  The `ld` at 0x18014 loads 8 bytes from table(sym(pdaindr)) +0x8.
  The `lbu` at 0x18024 loads 1 byte from [table(sym(pdaindr))+8]:8 +0x528.
  The `sd` at 0x18058 stores 8 bytes to table(0x9200000001c00138) +0x0.
  The `sd` at 0x18078 stores 8 bytes to table(0x9200000001c00128) +0x0.
  The `jal` at 0x17f4c calls hwgraph_info_get_LBL with a0=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+35968], a1=sym(.rodata)+28464, a2=sp-48, a3=?.
  The `jal` at 0x17f9c calls intr_heuristic with a0=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+35968], a1=0x0, a2=-0x1, a3=0x4, a4=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+35968], a5=sym(.rodata)+28464, a6=sp-40.
  The `jal` at 0x17fd0 calls intr_connect_level with a0=?, a1=?, a2=0x0, a3=sym(hubii_eint_handler), a5=0x0, a6=-0x1.
  The `jal` at 0x17fec calls get_cpu_cnode with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x18088 calls assfail with a0=sym(.rodata)+28464, a1=sym(.rodata)+28464, a2=0x20e, a3=a3 at entry (arg3).
  The `jal` at 0x180a0 calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=a0 at entry (arg0), a3=?, a6=-0x1.
  The `jal` at 0x180bc calls assfail with a0=sym(.rodata)+28464, a1=sym(.rodata)+28464, a2=0x22c, a3=?.
  The `beq` branch at 0x17f38 targets 0x1807c, is taken when at(=-0x1) == s0(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+35968]), and falls through when at(=-0x1) != s0(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+35968]).
  The `beq` branch at 0x17f74 targets 0x18070, is taken when (a2(?) & 0x2) == 0, and falls through when (a2(?) & 0x2) != 0.
  The `beq` branch at 0x17fb0 targets 0x18098, is taken when s1(?) == a6(=-0x1), and falls through when s1(?) != a6(=-0x1).
  The `bltz` branch at 0x17fd8 targets 0x180b0, is taken when v0(=ret(intr_connect_level)) < 0 (signed), and falls through when v0(=ret(intr_connect_level)) >= 0 (signed).
  The `beq` branch at 0x18074 targets 0x17f7c and is always taken.
  The `beq` branch at 0x18090 targets 0x17f44 and is always taken.
  The `beq` branch at 0x180a8 targets 0x18060 and is always taken.
  The `beq` branch at 0x180c4 targets 0x17fe0 and is always taken.
  The return at 0x18068 has v0 = one of ret(get_cpu_cnode), ret(cmn_err).
- `hubni_eint_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x180cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x180cc-0x181d0 (260 bytes).
  It occupies 260 bytes.
  The `jal` at 0x180d8 calls cnodetocpu with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x18108 calls intr_connect_level with a0=?, a1=0x7e, a2=0x0, a3=sym(hubni_eint_handler), a4=0x0, a5=0x0.
  The `jal` at 0x18130 calls cnode_slice_to_cpuid with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x18154 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x18178 calls intr_connect_level with a0=?, a1=?, a2=0x0, a3=sym(hubni_rmteint_handler), a4=0x0, a5=0x0.
  The `jal` at 0x181ac calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `jal` at 0x181c0 calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `beq` branch at 0x180e8 targets 0x18190, is taken when v0(=ret(cnodetocpu)) == at(=-0x1), and falls through when v0(=ret(cnodetocpu)) != at(=-0x1).
  The `bne` branch at 0x18110 targets 0x181a8, is taken when v0(=ret(intr_connect_level)) != 0, and falls through when v0(=ret(intr_connect_level)) == 0.
  The `beq` branch at 0x18118 targets 0x1812c and is always taken.
  The `beq` branch at 0x18128 targets 0x18190, is taken when s0(?) >= 0x4 (signed), and falls through when s0(?) < 0x4 (signed).
  The `bltz` branch at 0x18144 targets 0x18120, is taken when s1(?) < 0 (signed), and falls through when s1(?) >= 0 (signed).
  The `beq` branch at 0x1814c targets 0x18120, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1815c targets 0x18120, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `beql` branch at 0x18180 targets 0x18124, is taken when v0(=ret(intr_connect_level)) == 0, and falls through when v0(=ret(intr_connect_level)) != 0; its branch-likely delay slot `addiu s0,s0,1` at 0x18184 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x18188 targets 0x181bc and is always taken.
  The `beq` branch at 0x181b4 targets 0x18118 and is always taken.
  The `beq` branch at 0x181c8 targets 0x18124 and is always taken.
  The return at 0x181a0 has v0 = one of ret(cnodetocpu), ?.
- `hubpi_eint_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x181d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x181d0-0x18828 (1624 bytes).
  It occupies 1624 bytes.
  15 such `lh` accesses load 2 bytes from abs 0xffffffffffffc428, including `lh` at 0x18208, `lh` at 0x18324, `lh` at 0x18364.
  14 such `ld` accesses load 8 bytes from (sym(pdaindr) + ([-0x3bd8]:2 << 0x4)) +0x8, including `ld` at 0x18218, `ld` at 0x18330, `ld` at 0x18370.
  14 such `lbu` accesses load 1 byte from [(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8 +0x528, including `lbu` at 0x18220, `lbu` at 0x18334, `lbu` at 0x18374.
  The `ld` at 0x18240 loads 8 bytes from one of 0x9200000001000408, 0x9200000001000410 +0x0.
  The `ld` at 0x18244 loads 8 bytes from abs 0x9200000001000400.
  The `ld` at 0x18284 loads 8 bytes from sym(.data) +0x1a88.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x182b4, `ld` at 0x186c8.
  The `ld` at 0x18310 loads 8 bytes from abs 0xffffffffffffc400.
  The `sw` at 0x18320 stores 4 bytes to [-0x3c00]:8 +0x884c.
  7 such `sd` accesses store 8 bytes to abs 0x9200000001000400, including `sd` at 0x18384, `sd` at 0x183e8, `sd` at 0x18450.
  The `ld` at 0x1843c loads 8 bytes from table(sym(pdaindr)) +0x8.
  The `lbu` at 0x18440 loads 1 byte from [table(sym(pdaindr))+8]:8 +0x528.
  The `ld` at 0x184ac loads 8 bytes from abs 0x92000000010004c8.
  The `ld` at 0x184b0 loads 8 bytes from abs 0x92000000010004d0.
  The `ld` at 0x184b4 loads 8 bytes from abs 0x9200000001000020.
  The `sd` at 0x184f4 stores 8 bytes to abs 0x92000000010004c8.
  The `sd` at 0x184f8 stores 8 bytes to abs 0x92000000010004d0.
  The `ld` at 0x186e0 loads 8 bytes from table(sym(hub_rw_err_info)) +0x148.
  The `jal` at 0x181d8 calls check_ni_errors with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x18200 calls hubni_error_handler with a0=sym(.rodata)+28464, a1=0x1, a2=?, a3=?.
  The `jal` at 0x182c4 calls kl_panic_setup with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x182f8 calls get_nasid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x18300 calls log_md_errors with a0=ret(get_nasid), a1=?, a2=?, a3=?.
  The `jal` at 0x18308 calls md_int_block with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1835c calls process_error_spool with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x183c0 calls process_error_spool with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x18424 calls process_error_spool with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x185b4 calls cmn_err with a0=0x15, a1=sym(.rodata)+28464, a2=?, a3=[0x92000000010004c8]:8, a4=0x89, a5=0x4, a7=0x92000000010004c8.
  The `jal` at 0x185cc calls cmn_err with a0=0x15, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `jal` at 0x185e0 calls cmn_err with a0=0x15, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `jal` at 0x185f4 calls cmn_err with a0=0x15, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `jal` at 0x18608 calls cmn_err with a0=0x15, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `jal` at 0x18628 calls cmn_err with a0=0x15, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `jal` at 0x1863c calls cmn_err with a0=0x15, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `jal` at 0x18648 calls cmn_err with a0=0x15, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `jal` at 0x1865c calls cmn_err with a0=0x15, a1=sym(.rodata)+28464, a2=?, a3=[0x92000000010004d0]:8.
  The `jal` at 0x1866c calls cmn_err with a0=0x15, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `jal` at 0x1868c calls cmn_err with a0=0x15, a1=sym(.rodata)+28464, a2=?, a3=[0x92000000010004c8]:8, a4=[0x92000000010004d0]:8, a5=0x4.
  The `jal` at 0x18694 calls part_id with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x186a8 calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `jal` at 0x186b8 calls cmn_err with a0=0x10, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `jal` at 0x186cc calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `jal` at 0x18700 calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=?, a5=0x4.
  The `jal` at 0x18754 calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `jal` at 0x187a4 calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `jal` at 0x187d8 calls cmn_err with a0=0x12, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `jal` at 0x187ec calls cmn_err with a0=0x12, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `jal` at 0x18804 calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `jal` at 0x18818 calls cmn_err with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `beq` branch at 0x181f0 targets 0x18208, is taken when v0(=ret(check_ni_errors)) == 0, and falls through when v0(=ret(check_ni_errors)) != 0.
  The `beq` branch at 0x18260 targets 0x182ec, is taken when (s0(?) & s5(=([sym(pi_fatal_err_cpu_b)]:8 | [sym(pi_fatal_err_cpu_a)]:8))) == 0, and falls through when (s0(?) & s5(=([sym(pi_fatal_err_cpu_b)]:8 | [sym(pi_fatal_err_cpu_a)]:8))) != 0.
  The `bne` branch at 0x1826c targets 0x187fc, is taken when (s0(?) & a2(=[sym(pi_fatal_err_cpu_a)]:8)) != 0, and falls through when (s0(?) & a2(=[sym(pi_fatal_err_cpu_a)]:8)) == 0.
  The `bne` branch at 0x18274 targets 0x18814, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `bne` branch at 0x18290 targets 0x182c4, is taken when s3(=0x400000000) < a2(=[sym(pi_err_int_pend)]:8) (unsigned), and falls through when s3(=0x400000000) >= a2(=[sym(pi_err_int_pend)]:8) (unsigned).
  The `bne` branch at 0x182a0 targets 0x186c8, is taken when (a2(?) & s5(?)) != 0, and falls through when (a2(?) & s5(?)) == 0.
  The `beq` branch at 0x182bc targets 0x1829c, is taken when s3(=0x400000000) >= a2(?) (unsigned), and falls through when s3(=0x400000000) < a2(?) (unsigned).
  The `bne` branch at 0x182d4 targets 0x187d4, is taken when (a5(=[sym(pi_fatal_err_cpu_a)]:8) & s0(?)) != 0, and falls through when (a5(=[sym(pi_fatal_err_cpu_a)]:8) & s0(?)) == 0.
  The `bne` branch at 0x182e4 targets 0x187e8, is taken when (a6(=[sym(pi_fatal_err_cpu_b)]:8) & s0(?)) != 0, and falls through when (a6(=[sym(pi_fatal_err_cpu_b)]:8) & s0(?)) == 0.
  The `bgez` branch at 0x182f0 targets 0x18324, is taken when a7(?) >= 0 (signed), and falls through when a7(?) < 0 (signed).
  The `beq` branch at 0x18354 targets 0x183a4, is taken when (s0(?) & t3(=one of 0x1, 0x2)) == 0, and falls through when (s0(?) & t3(=one of 0x1, 0x2)) != 0.
  The `beq` branch at 0x183b8 targets 0x18408, is taken when (s0(?) & a3(=one of 0x40, 0x80)) == 0, and falls through when (s0(?) & a3(=one of 0x40, 0x80)) != 0.
  The `beq` branch at 0x1841c targets 0x18470, is taken when (s0(?) & a3(=one of 0x10, 0x20)) == 0, and falls through when (s0(?) & a3(=one of 0x10, 0x20)) != 0.
  The `bne` branch at 0x18484 targets 0x186f8, is taken when (s0(?) & a4(=one of 0x100000, 0x200000)) != 0, and falls through when (s0(?) & a4(=one of 0x100000, 0x200000)) == 0.
  The `beq` branch at 0x1849c targets 0x18540, is taken when (s0(?) & a6(=one of 0x4, 0x8)) == 0, and falls through when (s0(?) & a6(=one of 0x4, 0x8)) != 0.
  The `beq` branch at 0x184c0 targets 0x1867c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x184d4 targets 0x184ec, is taken when a1(?) == t8(=0x90), and falls through when a1(?) != t8(=0x90).
  The `beq` branch at 0x184dc targets 0x184f0, is taken when a1(?) == a3(=0x92), and falls through when a1(?) != a3(=0x92).
  The `bne` branch at 0x184e8 targets 0x185a4, is taken when a1(?) != a4(=0x89), and falls through when a1(?) == a4(=0x89).
  The `bne` branch at 0x18554 targets 0x1874c, is taken when (s0(?) & t0(=one of 0x8000000, 0x10000000)) != 0, and falls through when (s0(?) & t0(=one of 0x8000000, 0x10000000)) == 0.
  The `bne` branch at 0x18570 targets 0x187a0, is taken when (s0(?) & t1(=one of 0x2000000, 0x4000000)) != 0, and falls through when (s0(?) & t1(=one of 0x2000000, 0x4000000)) == 0.
  The `beq` branch at 0x185a4 targets 0x1867c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x185c0 targets 0x185d8, is taken when (s1(=[0x92000000010004c8]:8) & 0x1) == 0, and falls through when (s1(=[0x92000000010004c8]:8) & 0x1) != 0.
  The `bgez` branch at 0x185d8 targets 0x185e8, is taken when t3(=([0x92000000010004c8]:8 << 0x3e)) >= 0 (signed), and falls through when t3(=([0x92000000010004c8]:8 << 0x3e)) < 0 (signed).
  The `beq` branch at 0x18674 targets 0x18694 and is always taken.
  The `blez` branch at 0x1869c targets 0x186b8, is taken when v0(=ret(part_id)) <= 0 (signed), and falls through when v0(=ret(part_id)) > 0 (signed).
  The `beq` branch at 0x186b0 targets 0x184f0 and is always taken.
  The `beq` branch at 0x186c0 targets 0x184f0 and is always taken.
  The `beq` branch at 0x186e8 targets 0x1829c, is taken when s3(=0x400000000) >= a2(=[table(sym(hub_rw_err_info))+328]:8) (unsigned), and falls through when s3(=0x400000000) < a2(=[table(sym(hub_rw_err_info))+328]:8) (unsigned).
  The `beq` branch at 0x186f0 targets 0x182c4 and is always taken.
  The `beq` branch at 0x18744 targets 0x18488 and is always taken.
  The `beq` branch at 0x18798 targets 0x1855c and is always taken.
  The `beq` branch at 0x187cc targets 0x18578 and is always taken.
  The `beq` branch at 0x187e0 targets 0x182e0 and is always taken.
  The `beq` branch at 0x187f4 targets 0x182f0 and is always taken.
  The `beq` branch at 0x1880c targets 0x18270 and is always taken.
  The `beq` branch at 0x18820 targets 0x18280 and is always taken.
  The return at 0x1859c has v0 = one of ?, ret(cmn_err).
- `hubni_print_state` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x18828 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x18828-0x18974 (332 bytes).
  It occupies 332 bytes.
  The `ld` at 0x18844 loads 8 bytes from abs 0xffffffffffffc400.
  The `lh` at 0x1884c loads 2 bytes from (sym(nasid_to_compact_node) + (a0 + a0)) +0x0.
  The `ld` at 0x18854 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x18878 loads 8 bytes from ([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3)) +0x0.
  The `ll` at 0x18884 loads 4 bytes from [([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8 +0x8f08.
  The `sc` at 0x1888c stores 4 bytes to [([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8 +0x8f08.
  The `lh` at 0x18928 loads 2 bytes from [([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8 +0x861a.
  The `ld` at 0x18948 loads 8 bytes from (a0 << 0x21) -0x6dfffffffe17ff00.
  The `jal` at 0x188e0 calls mutex_spintrylock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x188f8 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1890c calls (unknown callee) with a0=a1 at entry (arg1), a1=sym(.rodata)+28464, a2=?, a3=?.
  The `jalr` at 0x18924 calls (unknown callee) with a0=a1 at entry (arg1), a1=sym(.rodata)+28464, a2=[[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8+34330]:2, a3=?.
  The `jal` at 0x18944 calls show_ni_port_error with a0=[(a0 << 0x21)-7926335344140091136]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x18954 calls us_delay with a0=0x1, a1=ret(mutex_spintrylock), a2=?, a3=?.
  The `beq` branch at 0x18874 targets 0x188c0, is taken when a3 == at(=0x2), and falls through when a3 != at(=0x2).
  The `beql` branch at 0x18890 targets 0x18884, is taken when a0(=([[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8+36616] | a3)) == 0, and falls through when a0(=([[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8+36616] | a3)) != 0; its branch-likely delay slot `nop` at 0x18894 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1889c targets 0x18908, is taken when (v0(=[[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8+36616]) & s7(=a3)) == 0, and falls through when (v0(=[[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8+36616]) & s7(=a3)) != 0.
  The `beq` branch at 0x188d8 targets 0x188f8 and is never taken: its operands are equal constants, so execution always falls through.
  The `beq` branch at 0x188ec targets 0x18954, is taken when v0(=ret(mutex_spintrylock)) == 0, and falls through when v0(=ret(mutex_spintrylock)) != 0.
  The `beq` branch at 0x18900 targets 0x18880 and is always taken.
  The `beq` branch at 0x1894c targets 0x188a8 and is always taken.
  The `bne` branch at 0x18964 targets 0x188e0, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x1896c targets 0x188f4 and is always taken.
  The return at 0x188b8 has v0 = one of ?, ret(show_ni_port_error).
- `hubni_eint_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x18f1c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x18f1c-0x18f40 (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0x18f2c calls hubni_error_handler with a0=sym(.rodata)+28464, a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x18f38 has v0 = ret(hubni_error_handler).
- `hubni_rmteint_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x18f40 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x18f40-0x18f64 (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0x18f50 calls hubni_error_handler with a0=sym(.rodata)+28464, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x18f5c has v0 = ret(hubni_error_handler).
- `hubii_eint_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1affc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1affc-0x1b19c (416 bytes).
  It occupies 416 bytes.
  5 such `lh` accesses load 2 bytes from ?, including `lh` at 0x1b048, `lh` at 0x1b088, `lh` at 0x1b0c4.
  The `ld` at 0x1b05c loads 8 bytes from table(0x92000000018000a0) +0x0.
  The `ld` at 0x1b098 loads 8 bytes from table(0x9200000001c00008) +0x0.
  The `sd` at 0x1b0d8 stores 8 bytes to table(0x9200000001c001f8) +0x0.
  The `ld` at 0x1b0fc loads 8 bytes from table(0x9200000001c00138) +0x0.
  The `sd` at 0x1b114 stores 8 bytes to table(0x9200000001c00138) +0x0.
  The `ld` at 0x1b15c loads 8 bytes from table(0x9200000001c001e8) +0x0.
  The `jal` at 0x1b008 calls check_ni_errors with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1b024 calls hubni_error_handler with a0=sym(.rodata)+28464, a1=0x1, a2=?, a3=?.
  The `jal` at 0x1b03c calls hwgraph_info_get_LBL with a0=(a0 << 0x0), a1=sym(.rodata)+28464, a2=sp-48, a3=?.
  The `jal` at 0x1b074 calls hubni_error_handler_nasid [0x18d20] with a0=sym(.rodata)+28464, a1=?, a2=0x1, a3=?, a4=0x4000000000000000.
  The `jal` at 0x1b084 calls cleanup_remote_pi with a0=?, a1=0x7e, a2=?, a3=?.
  The `jal` at 0x1b0ac calls hubiio_crb_error_handler with a0=(a0 << 0x0), a1=?, a2=?, a3=?.
  The `jal` at 0x1b0b8 calls hubiio_prb_error_handler with a0=(a0 << 0x0), a1=?, a2=?, a3=?.
  The `jal` at 0x1b12c calls cmn_err with a0=0x0, a1=sym(.rodata)+28464, a2=?, a3=sym(.rodata)+28464, a4=0x4000000000000000, a7=(entry(0x9200000001c00008) << 0x36).
  The `beq` branch at 0x1b014 targets 0x1b02c, is taken when v0(=ret(check_ni_errors)) == 0, and falls through when v0(=ret(check_ni_errors)) != 0.
  The `beq` branch at 0x1b068 targets 0x1b094, is taken when (a2(=entry(0x92000000018000a0)) & a4(=0x4000000000000000)) == 0, and falls through when (a2(=entry(0x92000000018000a0)) & a4(=0x4000000000000000)) != 0.
  The `beq` branch at 0x1b08c targets 0x1b0c0 and is always taken.
  The `bltz` branch at 0x1b0a0 targets 0x1b118, is taken when a2(=(entry(0x9200000001c00008) << 0x1f)) < 0 (signed), and falls through when a2(=(entry(0x9200000001c00008) << 0x1f)) >= 0 (signed).
  The `bgez` branch at 0x1b118 targets 0x1b13c, is taken when a7(=(entry(0x9200000001c00008) << 0x36)) >= 0 (signed), and falls through when a7(=(entry(0x9200000001c00008) << 0x36)) < 0 (signed).
  The `beq` branch at 0x1b134 targets 0x1b0a8 and is always taken.
  The `bgez` branch at 0x1b13c targets 0x1b14c, is taken when t0(=(entry(0x9200000001c00008) << 0x3a)) >= 0 (signed), and falls through when t0(=(entry(0x9200000001c00008) << 0x3a)) < 0 (signed).
  The `beq` branch at 0x1b144 targets 0x1b124 and is always taken.
  The `bgez` branch at 0x1b14c targets 0x1b15c, is taken when t1(=(entry(0x9200000001c00008) << 0x3b)) >= 0 (signed), and falls through when t1(=(entry(0x9200000001c00008) << 0x3b)) < 0 (signed).
  The `beq` branch at 0x1b154 targets 0x1b124 and is always taken.
  The `beq` branch at 0x1b164 targets 0x1b174, is taken when (a0(=entry(0x9200000001c001e8)) & 0x1) == 0, and falls through when (a0(=entry(0x9200000001c001e8)) & 0x1) != 0.
  The `beq` branch at 0x1b16c targets 0x1b124 and is always taken.
  The `beq` branch at 0x1b174 targets 0x1b184, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x1b17c targets 0x1b124 and is always taken.
  The `beq` branch at 0x1b184 targets 0x1b194, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x1b18c targets 0x1b124 and is always taken.
  The `beq` branch at 0x1b194 targets 0x1b124 and is always taken.
  The return at 0x1b110 has v0 = one of ret(cleanup_remote_pi), ret(hubiio_prb_error_handler).
- `print_spool_entry` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1b624 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1b624-0x1b76c (328 bytes).
  It occupies 328 bytes.
  The `ld` at 0x1b6ac loads 8 bytes from table(sym(pi_err_status_cmd)) +0x0.
  The `jalr` at 0x1b64c calls (unknown callee) with a0=sym(.rodata)+28464, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1b65c calls decode_crb_stat with a0=sp-96, a1=?, a2=?, a3=?.
  The `jalr` at 0x1b6a8 calls (unknown callee) with a0=sym(.rodata)+28464, a1=?, a2=sym(.rodata)+28464, a3=entry(sym(pi_err_status_cmd)), a4=sym(.rodata)+28464, a5=sp-96.
  The `jalr` at 0x1b6cc calls (unknown callee) with a0=sym(.rodata)+28464, a1=?, a2=?, a3=?.
  The `jal` at 0x1b6e4 calls sprintf with a0=sp-96, a1=sym(.rodata)+28464, a2=?, a3=?.
  The `jal` at 0x1b6f8 calls decode_xrb_err with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jalr` at 0x1b734 calls (unknown callee) with a0=sym(.rodata)+28464, a1=ret(decode_xrb_err), a2=?, a3=sp-96.
  The `beq` branch at 0x1b680 targets 0x1b760, is taken when (t0(?) & 0x80) == 0, and falls through when (t0(?) & 0x80) != 0.
  The `bltz` branch at 0x1b688 targets 0x1b754, is taken when v0(=(a0 << 0x33)) < 0 (signed), and falls through when v0(=(a0 << 0x33)) >= 0 (signed).
  The `beq` branch at 0x1b6d8 targets 0x1b6f4, is taken when (s2(?) & 0x200) == 0, and falls through when (s2(?) & 0x200) != 0.
  The `beq` branch at 0x1b6ec targets 0x1b6f8 and is always taken.
  The `beq` branch at 0x1b708 targets 0x1b71c, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `beq` branch at 0x1b758 targets 0x1b690 and is always taken.
  The `beq` branch at 0x1b764 targets 0x1b688 and is always taken.
  The return at 0x1b74c has v0 = ret(?).
- `err_int_block_mask` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1b93c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1b93c-0x1b980 (68 bytes).
  It occupies 68 bytes.
  The `lh` at 0x1b93c loads 2 bytes from abs 0xffffffffffffc428.
  The `ld` at 0x1b94c loads 8 bytes from (sym(pdaindr) + ([-0x3bd8]:2 << 0x4)) +0x8.
  The `lbu` at 0x1b950 loads 1 byte from [(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8 +0x528.
  The `ld` at 0x1b96c loads 8 bytes from one of 0x9200000001000408, 0x9200000001000410 +0x0.
  The `sd` at 0x1b97c stores 8 bytes to one of 0x9200000001000408, 0x9200000001000410 +0x0.
  The return at 0x1b978 has v0 = one of 0x9200000001000408, 0x9200000001000410.
- `err_int_unblock_mask` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1b980 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1b980-0x1b9cc (76 bytes).
  It occupies 76 bytes.
  The `lh` at 0x1b980 loads 2 bytes from abs 0xffffffffffffc428.
  The `ld` at 0x1b990 loads 8 bytes from (sym(pdaindr) + ([-0x3bd8]:2 << 0x4)) +0x8.
  The `lbu` at 0x1b994 loads 1 byte from [(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8 +0x528.
  The `sd` at 0x1b9b4 stores 8 bytes to abs 0x9200000001000400.
  The `ld` at 0x1b9bc loads 8 bytes from one of 0x9200000001000408, 0x9200000001000410 +0x0.
  The `sd` at 0x1b9c8 stores 8 bytes to one of 0x9200000001000408, 0x9200000001000410 +0x0.
  The `beq` branch at 0x1b9a8 targets 0x1b9b8, is taken when a1 == 0, and falls through when a1 != 0.
  The return at 0x1b9c4 has v0 = ?.
- `md_int_block` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1b9cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1b9cc-0x1ba18 (76 bytes).
  It occupies 76 bytes.
  The `lh` at 0x1b9cc loads 2 bytes from abs 0xffffffffffffc428.
  The `ld` at 0x1b9dc loads 8 bytes from (sym(pdaindr) + ([-0x3bd8]:2 << 0x4)) +0x8.
  The `lbu` at 0x1b9e0 loads 1 byte from [(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8 +0x528.
  The `ld` at 0x1ba04 loads 8 bytes from one of 0x9200000001000408, 0x9200000001000410 +0x0.
  The `sd` at 0x1ba14 stores 8 bytes to one of 0x9200000001000408, 0x9200000001000410 +0x0.
  The return at 0x1ba10 has v0 = one of 0x9200000001000408, 0x9200000001000410.
- `md_int_unblock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1ba18 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1ba18-0x1ba60 (72 bytes).
  It occupies 72 bytes.
  The `lh` at 0x1ba18 loads 2 bytes from abs 0xffffffffffffc428.
  The `ld` at 0x1ba28 loads 8 bytes from (sym(pdaindr) + ([-0x3bd8]:2 << 0x4)) +0x8.
  The `lbu` at 0x1ba2c loads 1 byte from [(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8 +0x528.
  The `ld` at 0x1ba4c loads 8 bytes from one of 0x9200000001000408, 0x9200000001000410 +0x0.
  The `sd` at 0x1ba5c stores 8 bytes to one of 0x9200000001000408, 0x9200000001000410 +0x0.
  The return at 0x1ba58 has v0 = one of 0x9200000001000408, 0x9200000001000410.
- `intr_stray` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1eccc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1eccc-0x1ecf4 (40 bytes).
  It occupies 40 bytes.
  The `lh` at 0x1ece4 loads 2 bytes from abs 0xffffffffffffc428.
  The `jal` at 0x1ece0 calls cmn_err with a0=0x4, a1=sym(.rodata)+43384, a2=a0 at entry (arg0), a3=[-0x3bd8]:2.
  The return at 0x1ecec has v0 = ret(cmn_err).
- `intr_init_vecblk` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1ecf4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1ecf4-0x1eea8 (436 bytes).
  It occupies 436 bytes.
  The `lbu` at 0x1ed80 loads 1 byte from sym(.rodata) +0xa9a4.
  The `lw` at 0x1ed88 loads 4 bytes from sym(.rodata) +0xa9a0.
  4 such `sd` accesses store 8 bytes to ?, including `sd` at 0x1ed98, `sd` at 0x1eda0, `sd` at 0x1eda8.
  5 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1edac, `sw` at 0x1edd4, `sw` at 0x1ede4.
  The `swl` at 0x1edb0 stores 4 bytes to ?.
  The `swr` at 0x1edb4 stores 4 bytes to ?.
  3 such `sb` accesses store 1 byte to ?, including `sb` at 0x1edb8, `sb` at 0x1edc0, `sb` at 0x1edcc.
  The `lbu` at 0x1edbc loads 1 byte from sym(.rodata) +0xa9a5.
  The `lbu` at 0x1edc4 loads 1 byte from sym(.rodata) +0xa9a6.
  The `sh` at 0x1edd8 stores 2 bytes to ?.
  The `sw` at 0x1ee30 stores 4 bytes to table(0x1e18) +0x0.
  The `sw` at 0x1ee4c stores 4 bytes to table(0x1e1c) +0x0.
  The `jal` at 0x1ee00 calls init_spinlock with a0=?, a1=sym(.rodata)+43384, a2=?, a3=?.
  The `beq` branch at 0x1ed64 targets 0x1ee58 and is always taken.
  The `bne` branch at 0x1ede0 targets 0x1ed74, is taken when a3(?) < 0x40 (signed), and falls through when a3(?) >= 0x40 (signed).
  The `beq` branch at 0x1ede8 targets 0x1ee6c, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0x1ee34 targets 0x1ee50 and is never taken: its operands are equal constants, so execution always falls through.
  The `bne` branch at 0x1ee48 targets 0x1ee20 and is never taken: its operands are equal constants, so execution always falls through.
  The `beq` branch at 0x1ee50 targets 0x1ee78, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x1ee58 targets 0x1ed6c, is taken when s3(?) != 0, and falls through when s3(?) == 0.
  The `beq` branch at 0x1ee64 targets 0x1ed6c and is always taken.
  The `beq` branch at 0x1ee70 targets 0x1edf0 and is always taken.
  The return at 0x1eea0 has v0 = ret(init_spinlock).
- `do_intr_reserve_level` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1eea8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1eea8-0x1f0dc (564 bytes).
  It occupies 564 bytes.
  The `ld` at 0x1eed4 loads 8 bytes from (sym(pdaindr) + (a0 << 0x4)) +0x8.
  The `ld` at 0x1ef1c loads 8 bytes from [(sym(pdaindr) + (a0 << 0x4))+8]:8 +0x5b8.
  The `ld` at 0x1ef30 loads 8 bytes from ?.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1ef54, `lw` at 0x1efa0, `lw` at 0x1efd0.
  8 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1efd4, `sw` at 0x1efe4, `sw` at 0x1f014.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x1eff8, `sb` at 0x1f0a0.
  The `ld` at 0x1f0d0 loads 8 bytes from [(sym(pdaindr) + (a0 << 0x4))+8]:8 +0x5b0.
  The `jal` at 0x1ef2c calls mutex_spinlock_spl with a0=?, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1eff0 calls strncpy with a0=?, a1=a5 at entry (arg5), a2=?, a3=?.
  The `jal` at 0x1f030 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1f078 calls strlen with a0=a5 at entry (arg5), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1eef4 targets 0x1f0d4, is taken when t2(=[(sym(pdaindr) + (a0 << 0x4))+8]:8) == 0, and falls through when t2(=[(sym(pdaindr) + (a0 << 0x4))+8]:8) != 0.
  The `beq` branch at 0x1ef08 targets 0x1ef18, is taken when a1 >= 0x40 (signed), and falls through when a1 < 0x40 (signed).
  The `beq` branch at 0x1ef10 targets 0x1f0cc, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bgez` branch at 0x1ef38 targets 0x1ef8c, is taken when s0(?) >= 0 (signed), and falls through when s0(?) < 0 (signed).
  The `beq` branch at 0x1ef5c targets 0x1f098, is taken when (t9(?) & 0x1) == 0, and falls through when (t9(?) & 0x1) != 0.
  The `bne` branch at 0x1ef70 targets 0x1ef4c, is taken when s0(?) < 0x40 (signed), and falls through when s0(?) >= 0x40 (signed).
  The `beq` branch at 0x1ef84 targets 0x1efb4 and is always taken.
  The `beq` branch at 0x1efb4 targets 0x1f02c, is taken when s2(?) == s6(=-0x1), and falls through when s2(?) != s6(=-0x1).
  The `beq` branch at 0x1efc8 targets 0x1f0a0, is taken when s5(=a3) == 0, and falls through when s5(=a3) != 0.
  The `bne` branch at 0x1efe0 targets 0x1f078, is taken when s4(=a5) != 0, and falls through when s4(=a5) == 0.
  The `beq` branch at 0x1f01c targets 0x1f0bc, is taken when (s7(=a2) & 0x8) == 0, and falls through when (s7(=a2) & 0x8) != 0.
  The `beq` branch at 0x1f03c targets 0x1f04c, is taken when s2(?) == s6(=-0x1), and falls through when s2(?) != s6(=-0x1).
  The `bne` branch at 0x1f088 targets 0x1efec, is taken when a2(=(ret(strlen) << 0x0)) < 0x17 (signed), and falls through when a2(=(ret(strlen) << 0x0)) >= 0x17 (signed).
  The `beq` branch at 0x1f090 targets 0x1efec and is always taken.
  The `beq` branch at 0x1f098 targets 0x1ef7c and is always taken.
  The `beq` branch at 0x1f0b4 targets 0x1f02c and is always taken.
  The `beq` branch at 0x1f0c4 targets 0x1f02c and is always taken.
  The `beq` branch at 0x1f0cc targets 0x1ef24 and is always taken.
  The `beq` branch at 0x1f0d4 targets 0x1f054 and is always taken.
  The return at 0x1f070 has v0 = one of ?, -0x1.
- `intr_reserve_level` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1f0dc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1f0dc-0x1f104 (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0x1f0f0 calls do_intr_reserve_level [0x1eea8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1, a4=a3 at entry (arg3), a5=a4 at entry (arg4).
  The return at 0x1f0fc has v0 = ret(do_intr_reserve_level).
- `intr_unreserve_level` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1f104 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1f104-0x1f12c (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0x1f118 calls do_intr_reserve_level [0x1eea8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x0, a3=0x0, a4=0x0, a5=0x0.
  The return at 0x1f124 has v0 = ret(do_intr_reserve_level).
- `intr_get_ptrs` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1f12c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1f12c-0x1f188 (92 bytes).
  It occupies 92 bytes.
  The `ld` at 0x1f13c loads 8 bytes from (sym(pdaindr) + (a0 << 0x4)) +0x8.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x0, including `sd` at 0x1f150, `sd` at 0x1f16c.
  The `ld` at 0x1f154 loads 8 bytes from [(sym(pdaindr) + (a0 << 0x4))+8]:8 +0x5b0.
  2 such `sd` accesses store 8 bytes to a4 (arg4 at entry) +0x0, including `sd` at 0x1f158, `sd` at 0x1f174.
  2 such `sw` accesses store 4 bytes to a5 (arg5 at entry) +0x0, including `sw` at 0x1f15c, `sw` at 0x1f178.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x1f164, `sw` at 0x1f17c.
  The `ld` at 0x1f170 loads 8 bytes from [(sym(pdaindr) + (a0 << 0x4))+8]:8 +0x5b8.
  The `beq` branch at 0x1f148 targets 0x1f168, is taken when a1 >= 0x40 (signed), and falls through when a1 < 0x40 (signed).
  The return at 0x1f160 has v0 = [(sym(pdaindr) + (a0 << 0x4))+8]:8+1440.
  The return at 0x1f180 has v0 = [(sym(pdaindr) + (a0 << 0x4))+8]:8+1440.
- `intr_connect_level` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1f188 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1f188-0x1f4a0 (792 bytes).
  It occupies 792 bytes.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1f1cc, `ld` at 0x1f34c, `ld` at 0x1f460.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1f1f0, `lw` at 0x1f2c0, `lw` at 0x1f378.
  5 such `sd` accesses store 8 bytes to ?, including `sd` at 0x1f23c, `sd` at 0x1f25c, `sd` at 0x1f27c.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x1f29c, `sh` at 0x1f418.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1f2d0, `sw` at 0x1f380.
  4 such `ld` accesses load 8 bytes from (sym(pdaindr) + (a0 << 0x4)) +0x8, including `ld` at 0x1f2d4, `ld` at 0x1f360, `ld` at 0x1f388.
  2 such `lh` accesses load 2 bytes from [(sym(pdaindr) + (a0 << 0x4))+8]:8 +0x42a, including `lh` at 0x1f2dc, `lh` at 0x1f448.
  3 such `lbu` accesses load 1 byte from [(sym(pdaindr) + (a0 << 0x4))+8]:8 +0x528, including `lbu` at 0x1f2e4, `lbu` at 0x1f364, `lbu` at 0x1f394.
  The `lh` at 0x1f300 loads 2 bytes from (sym(compact_to_nasid_node) + ([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1066]:2 + [[(sym(pdaindr) + (a0 << 0x4))+8]:8+1066]:2)) +0x0.
  The `sd` at 0x1f330 stores 8 bytes to (([(sym(compact_to_nasid_node) + ([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1066]:2 + [[(sym(pdaindr) + (a0 << 0x4))+8]:8+1066]:2))]:2 << 0x21) + one of 0x9200000001800090, 0x9200000001a00090) +0x0.
  The `ld` at 0x1f350 loads 8 bytes from (([(sym(compact_to_nasid_node) + ([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1066]:2 + [[(sym(pdaindr) + (a0 << 0x4))+8]:8+1066]:2))]:2 << 0x21) + one of 0x9200000001800098, 0x9200000001a00098) +0x0.
  The `ll` at 0x1f3e8 loads 4 bytes from ?.
  The `sc` at 0x1f3f0 stores 4 bytes to ?.
  The `jal` at 0x1f1bc calls intr_get_ptrs [0x1f12c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-36, a3=sp-160, a4=sp-152, a5=sp-144.
  The `jal` at 0x1f1d0 calls mutex_spinlock_spl with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1f208 calls mutex_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1f44c calls intr_thread_setup [0x2179c] with a0=?, a1=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1066]:2, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=0x200, a5=a0 at entry (arg0), a7=(((a1 << 0x3) + a1) << 0x3).
  The `beq` branch at 0x1f1fc targets 0x1f224, is taken when (a1(?) & 0x2) == 0, and falls through when (a1(?) & 0x2) != 0.
  The `beq` branch at 0x1f224 targets 0x1f204, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1f3c0 targets 0x1f474, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bltz` branch at 0x1f3c8 targets 0x1f488, is taken when a7(=([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1320]:1 << 0x1e)) < 0 (signed), and falls through when a7(=([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1320]:1 << 0x1e)) >= 0 (signed).
  The `beq` branch at 0x1f3e0 targets 0x1f460, is taken when (t2(?) & 0x100) == 0, and falls through when (t2(?) & 0x100) != 0.
  The `beql` branch at 0x1f3f4 targets 0x1f3e8, is taken when t2(?) == 0, and falls through when t2(?) != 0; its branch-likely delay slot `nop` at 0x1f3f8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1f428 targets 0x1f45c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1f46c targets 0x1f204 and is always taken.
  The `bltz` branch at 0x1f474 targets 0x1f494, is taken when a7(=([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1320]:1 << 0x1e)) < 0 (signed), and falls through when a7(=([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1320]:1 << 0x1e)) >= 0 (signed).
  The `beq` branch at 0x1f480 targets 0x1f3d8 and is always taken.
  The `beq` branch at 0x1f48c targets 0x1f3d0 and is always taken.
  The `beq` branch at 0x1f498 targets 0x1f47c and is always taken.
  The return at 0x1f21c has v0 = one of -0x1, 0x0.
- `intr_disconnect_level` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1f4a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1f4a0-0x1f674 (468 bytes).
  It occupies 468 bytes.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1f4d4, `ld` at 0x1f5b8, `ld` at 0x1f624.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1f4f8, `lw` at 0x1f590, `lw` at 0x1f5e8.
  4 such `sd` accesses store 8 bytes to ?, including `sd` at 0x1f53c, `sd` at 0x1f558, `sd` at 0x1f574.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1f5a0, `sw` at 0x1f5f4.
  2 such `ld` accesses load 8 bytes from (sym(pdaindr) + (a0 << 0x4)) +0x8, including `ld` at 0x1f5d0, `ld` at 0x1f5f8.
  2 such `lbu` accesses load 1 byte from [(sym(pdaindr) + (a0 << 0x4))+8]:8 +0x528, including `lbu` at 0x1f5d4, `lbu` at 0x1f604.
  The `lh` at 0x1f600 loads 2 bytes from [(sym(pdaindr) + (a0 << 0x4))+8]:8 +0x42a.
  The `lh` at 0x1f634 loads 2 bytes from (sym(compact_to_nasid_node) + ([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1066]:2 + [[(sym(pdaindr) + (a0 << 0x4))+8]:8+1066]:2)) +0x0.
  The `sd` at 0x1f650 stores 8 bytes to table(0x9200000001800000) +0x0.
  The `jal` at 0x1f4c4 calls intr_get_ptrs [0x1f12c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-4, a3=sp-64, a4=sp-56, a5=sp-48.
  The `jal` at 0x1f4d8 calls mutex_spinlock_spl with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1f510 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock_spl), a2=?, a3=?, a5=a1 at entry (arg1).
  The `beq` branch at 0x1f508 targets 0x1f52c, is taken when a2(?) == a3(=0x3), and falls through when a2(?) != a3(=0x3).
  The `bltz` branch at 0x1f630 targets 0x1f660, is taken when t3(=([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1320]:1 << 0x1e)) < 0 (signed), and falls through when t3(=([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1320]:1 << 0x1e)) >= 0 (signed).
  The `beq` branch at 0x1f658 targets 0x1f510 and is always taken.
  The `beq` branch at 0x1f66c targets 0x1f640 and is always taken.
  The return at 0x1f524 has v0 = one of -0x1, 0x0.
- `do_intr_block_bit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1f674 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1f674-0x1f834 (448 bytes).
  It occupies 448 bytes.
  8 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1f6ac, `ld` at 0x1f6d8, `ld` at 0x1f71c.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x1f6e8, `sd` at 0x1f750, `sd` at 0x1f7dc.
  The `ld` at 0x1f6ec loads 8 bytes from (sym(pdaindr) + (a0 << 0x4)) +0x8.
  The `lbu` at 0x1f6f4 loads 1 byte from [(sym(pdaindr) + (a0 << 0x4))+8]:8 +0x528.
  The `lh` at 0x1f6f8 loads 2 bytes from [(sym(pdaindr) + (a0 << 0x4))+8]:8 +0x42a.
  The `lh` at 0x1f718 loads 2 bytes from (([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1066]:2 + [[(sym(pdaindr) + (a0 << 0x4))+8]:8+1066]:2) + sym(compact_to_nasid_node)) +0x0.
  The `jal` at 0x1f6a0 calls intr_get_ptrs [0x1f12c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-20, a3=sp-96, a4=sp-88, a5=sp-80.
  The `jal` at 0x1f6b0 calls mutex_spinlock_spl with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1f7c0 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock_spl), a2=?, a3=?.
  The `beq` branch at 0x1f6dc targets 0x1f7d4, is taken when s0(=a2) == 0, and falls through when s0(=a2) != 0.
  The `beq` branch at 0x1f724 targets 0x1f7e0, is taken when (a6(=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1320]:1) & 0x1) == 0, and falls through when (a6(=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1320]:1) & 0x1) != 0.
  The `beq` branch at 0x1f72c targets 0x1f804, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1f74c targets 0x1f7b4, is taken when s0(=a2) == 0, and falls through when s0(=a2) != 0.
  The `beq` branch at 0x1f768 targets 0x1f7b4, is taken when 0 >= t1(?) (unsigned), and falls through when 0 < t1(?) (unsigned).
  The `beq` branch at 0x1f780 targets 0x1f7b4, is taken when 0 >= a5(?) (unsigned), and falls through when 0 < a5(?) (unsigned).
  The `beq` branch at 0x1f798 targets 0x1f7b4, is taken when 0 >= a6(?) (unsigned), and falls through when 0 < a6(?) (unsigned).
  The `bne` branch at 0x1f7ac targets 0x1f770, is taken when 0 < a7(?) (unsigned), and falls through when 0 >= a7(?) (unsigned).
  The `beq` branch at 0x1f7d8 targets 0x1f6ec and is always taken.
  The `beq` branch at 0x1f7e0 targets 0x1f81c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1f7fc targets 0x1f74c and is always taken.
  The `beq` branch at 0x1f814 targets 0x1f74c and is always taken.
  The `beq` branch at 0x1f82c targets 0x1f74c and is always taken.
  The return at 0x1f7cc has v0 = ret(mutex_spinunlock).
- `intr_block_bit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1f834 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1f834-0x1f850 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x1f83c calls do_intr_block_bit with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=a3 at entry (arg3).
  The return at 0x1f848 has v0 = ret(do_intr_block_bit).
- `intr_unblock_bit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1f850 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1f850-0x1f86c (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x1f858 calls do_intr_block_bit with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x0, a3=a3 at entry (arg3).
  The return at 0x1f864 has v0 = ret(do_intr_block_bit).
- `do_intr_cpu_choose` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1f86c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1f86c-0x1f9cc (352 bytes).
  It occupies 352 bytes.
  The `ld` at 0x1f8fc loads 8 bytes from table(sym(pdaindr)) +0x8.
  The `lw` at 0x1f900 loads 4 bytes from [table(sym(pdaindr))+8]:8 +0x48.
  The `lbu` at 0x1f918 loads 1 byte from [table(sym(pdaindr))+8]:8 +0x528.
  The `ld` at 0x1f934 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x1f944 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x1f958 loads 8 bytes from ?.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1f974, `lw` at 0x1f978.
  The `jal` at 0x1f8d0 calls cnode_slice_to_cpuid with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1f8e8 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1f8b8 targets 0x1f8cc and is always taken.
  The `beq` branch at 0x1f8c8 targets 0x1f998, is taken when s0(?) >= 0x4 (signed), and falls through when s0(?) < 0x4 (signed).
  The `beq` branch at 0x1f8e0 targets 0x1f8c0, is taken when s1(?) == s4(=-0x1), and falls through when s1(?) != s4(=-0x1).
  The `beq` branch at 0x1f8f0 targets 0x1f8c0, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0x1f908 targets 0x1f8c0, is taken when (t8(=[[table(sym(pdaindr))+8]:8+72]) & 0x80) != 0, and falls through when (t8(=[[table(sym(pdaindr))+8]:8+72]) & 0x80) == 0.
  The `beq` branch at 0x1f910 targets 0x1f92c, is taken when s6(=a1) == s4(=-0x1), and falls through when s6(=a1) != s4(=-0x1).
  The `bne` branch at 0x1f924 targets 0x1f8c0, is taken when s6(=a1) != a1(?), and falls through when s6(=a1) == a1(?).
  The `beq` branch at 0x1f984 targets 0x1f8c0, is taken when a0(?) >= s8(?) (signed), and falls through when a0(?) < s8(?) (signed).
  The `beq` branch at 0x1f990 targets 0x1f8c0 and is always taken.
  The return at 0x1f9c4 has v0 = ?.
- `intr_cpu_choose_from_node` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1f9cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1f9cc-0x1f9e8 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x1f9d4 calls do_intr_cpu_choose [0x1f86c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1f9e0 has v0 = ret(do_intr_cpu_choose).
- `intr_target_from_desc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1fae4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1fae4-0x1fb9c (184 bytes).
  It occupies 184 bytes.
  The `jal` at 0x1faf4 calls device_desc_intr_target_get with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1fb0c calls cpuvertex_to_cpuid with a0=ret(device_desc_intr_target_get), a1=?, a2=?, a3=?.
  The `jal` at 0x1fb44 calls subnodevertex_to_subnode [0x1f9e8] with a0=ret(device_desc_intr_target_get), a1=sp-48, a2=sp-44, a3=?.
  The `jal` at 0x1fb54 calls master_node_get with a0=ret(device_desc_intr_target_get), a1=?, a2=?, a3=?.
  The `jal` at 0x1fb74 calls intr_cpu_choose_from_node [0x1f9cc] with a0=?, a1=a1 at entry (arg1), a2=?, a3=?, a4=ret(master_node_get).
  The `jal` at 0x1fb88 calls intr_cpu_choose_from_node [0x1f9cc] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1fb04 targets 0x1fb24, is taken when at(=-0x1) == v0(=ret(device_desc_intr_target_get)), and falls through when at(=-0x1) != v0(=ret(device_desc_intr_target_get)).
  The `beq` branch at 0x1fb20 targets 0x1fb3c, is taken when v0(=-0x1) == s0(?), and falls through when v0(=-0x1) != s0(?).
  The `beq` branch at 0x1fb4c targets 0x1fb88, is taken when v0(=ret(subnodevertex_to_subnode)) == 0, and falls through when v0(=ret(subnodevertex_to_subnode)) != 0.
  The `beq` branch at 0x1fb68 targets 0x1fb24, is taken when a0(?) == t8(=-0x1), and falls through when a0(?) != t8(=-0x1).
  The `beq` branch at 0x1fb80 targets 0x1fb24 and is always taken.
  The `beq` branch at 0x1fb94 targets 0x1fb24 and is always taken.
  The return at 0x1fb34 has v0 = ?.
- `intr_cnode_seen` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1fb9c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1fb9c-0x1fbdc (64 bytes).
  It occupies 64 bytes.
  The `lw` at 0x1fb9c loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lh` at 0x1fbb4 loads 2 bytes from ?.
  The `blez` branch at 0x1fba4 targets 0x1fbcc, is taken when a6(=[a2]) <= 0 (signed), and falls through when a6(=[a2]) > 0 (signed).
  The `beq` branch at 0x1fbbc targets 0x1fbd4, is taken when at(?) == a0, and falls through when at(?) != a0.
  The `bne` branch at 0x1fbc4 targets 0x1fbb0, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The return at 0x1fbcc has v0 = a1.
  The return at 0x1fbd4 has v0 = 0x0.
- `intr_bit_reserve_test` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1fbdc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1fbdc-0x1fc84 (168 bytes).
  It occupies 168 bytes.
  The `sw` at 0x1fc60 stores 4 bytes to a7 (arg7 at entry) +0x0.
  The `jal` at 0x1fc14 calls intr_cpu_choose_from_node [0x1f9cc] with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1fc50 calls do_intr_reserve_level [0x1eea8] with a0=?, a1=a3 at entry (arg3), a2=a4 at entry (arg4), a3=0x1, a4=a5 at entry (arg5), a5=a6 at entry (arg6).
  The `beq` branch at 0x1fc0c targets 0x1fc38, is taken when a2 == t9(=-0x1), and falls through when a2 != t9(=-0x1).
  The `beq` branch at 0x1fc38 targets 0x1fc6c, is taken when s0(?) == t9(=-0x1), and falls through when s0(?) != t9(=-0x1).
  The `bltz` branch at 0x1fc5c targets 0x1fc6c, is taken when v0(=ret(do_intr_reserve_level)) < 0 (signed), and falls through when v0(=ret(do_intr_reserve_level)) >= 0 (signed).
  The `beq` branch at 0x1fc64 targets 0x1fc74 and is always taken.
  The return at 0x1fc7c has v0 = one of ?, -0x1.
- `intr_heuristic` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1fc84 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1fc84-0x20058 (980 bytes).
  It occupies 980 bytes.
  4 such `ld` accesses load 8 bytes from table(sym(pdaindr)) +0x8, including `ld` at 0x1fd50, `ld` at 0x1fde8, `ld` at 0x1ff40.
  4 such `lbu` accesses load 1 byte from [table(sym(pdaindr))+8]:8 +0x528, including `lbu` at 0x1fd54, `lbu` at 0x1fdec, `lbu` at 0x1ff44.
  The `lh` at 0x1fe24 loads 2 bytes from ret(hwgraph_fastinfo_get) +0x72.
  The `ld` at 0x1fe40 loads 8 bytes from ret(hwgraph_fastinfo_get) +0x830.
  The `lh` at 0x1fe4c loads 2 bytes from [ret(hwgraph_fastinfo_get)+2096]:8 +0x24.
  The `ld` at 0x1fe5c loads 8 bytes from (sym(pdaindr) + ([[ret(hwgraph_fastinfo_get)+2096]:8+36]:2 << 0x4)) +0x8.
  The `lbu` at 0x1fe60 loads 1 byte from [(sym(pdaindr) + ([[ret(hwgraph_fastinfo_get)+2096]:8+36]:2 << 0x4))+8]:8 +0x528.
  4 such `lw` accesses load 4 bytes from a6 (arg6 at entry) +0x0, including `lw` at 0x1fe84, `lw` at 0x1ff5c, `lw` at 0x1ff94.
  The `lh` at 0x1fea0 loads 2 bytes from abs 0xffffffffffffc42a.
  The `sh` at 0x1ff14 stores 2 bytes to ?.
  The `ld` at 0x1ffd8 loads 8 bytes from (sym(pdaindr) + ([sym(master_procid)]:2 << 0x4)) +0x8.
  The `lh` at 0x1ffec loads 2 bytes from [(sym(pdaindr) + ([sym(master_procid)]:2 << 0x4))+8]:8 +0x42a.
  The `jal` at 0x1fcc8 calls physmem_maxradius with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1fce4 calls hwgraph_edge_get with a0=a0 at entry (arg0), a1=sym(.rodata)+43384, a2=sp-380, a3=?.
  The `jal` at 0x1fd00 calls intr_target_from_desc with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x1fd24 calls intr_bit_reserve_test [0x1fbdc] with a0=ret(intr_target_from_desc), a1=?, a2=-0x1, a3=a2 at entry (arg2), a4=a3 at entry (arg3), a5=a4 at entry (arg4), a6=a5 at entry (arg5), a7=a6 at entry (arg6).
  The `jal` at 0x1fd9c calls master_node_get with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1fdc0 calls intr_bit_reserve_test [0x1fbdc] with a0=-0x1, a1=?, a2=ret(master_node_get), a3=a2 at entry (arg2), a4=a3 at entry (arg3), a5=a4 at entry (arg4), a6=a5 at entry (arg5), a7=a6 at entry (arg6).
  The `jal` at 0x1fe08 calls hwgraph_fastinfo_get with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1fe14 calls hwgraph_vertex_unref with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1fe80 calls intr_unreserve_level with a0=?, a1=[a6], a2=?, a3=?.
  The `jal` at 0x1fe94 calls cmn_err with a0=0x4, a1=sym(.rodata)+43384, a2=a4 at entry (arg4), a3=a4 at entry (arg4).
  The `jal` at 0x1fed4 calls physmem_select_neighbor_node with a0=?, a1=?, a2=sp-120, a3=sym(intr_cnode_seen), a4=sp-376, a5=sp-384.
  The `jal` at 0x1ff18 calls intr_bit_reserve_test [0x1fbdc] with a0=-0x1, a1=?, a2=?, a3=a2 at entry (arg2), a4=a3 at entry (arg3), a5=a4 at entry (arg4), a6=a5 at entry (arg5), a7=a6 at entry (arg6).
  The `jal` at 0x1ff58 calls intr_unreserve_level with a0=?, a1=[a6], a2=?, a3=?.
  The `jal` at 0x1ff84 calls cmn_err with a0=0x4, a1=sym(.rodata)+43384, a2=a4 at entry (arg4), a3=a4 at entry (arg4).
  The `jal` at 0x1ff90 calls intr_unreserve_level with a0=?, a1=[a6], a2=?, a3=?.
  The `jal` at 0x1ffb0 calls cmn_err with a0=0x4, a1=sym(.rodata)+43384, a2=a4 at entry (arg4), a3=a4 at entry (arg4).
  The `jal` at 0x1ffe8 calls intr_bit_reserve_test [0x1fbdc] with a0=-0x1, a1=?, a2=[[(sym(pdaindr) + ([sym(master_procid)]:2 << 0x4))+8]:8+1066]:2, a3=a2 at entry (arg2), a4=a3 at entry (arg3), a5=a4 at entry (arg4), a6=a5 at entry (arg5), a7=a6 at entry (arg6).
  The `jal` at 0x20030 calls intr_unreserve_level with a0=?, a1=[a6], a2=?, a3=?.
  The `jal` at 0x20048 calls cmn_err with a0=0x4, a1=sym(.rodata)+43384, a2=a4 at entry (arg4), a3=a4 at entry (arg4).
  The `beq` branch at 0x1fcec targets 0x1fe08, is taken when v0(=ret(hwgraph_edge_get)) == 0, and falls through when v0(=ret(hwgraph_edge_get)) != 0.
  The `beq` branch at 0x1fcf8 targets 0x1fd98, is taken when s7(=a1) == 0, and falls through when s7(=a1) != 0.
  The `beq` branch at 0x1fd34 targets 0x1fd98, is taken when s7(?) == s3(=-0x1), and falls through when s7(?) != s3(=-0x1).
  The `beq` branch at 0x1fd3c targets 0x1fd68, is taken when s0(?) == s3(=-0x1), and falls through when s0(?) != s3(=-0x1).
  The `bne` branch at 0x1fd60 targets 0x1ff70, is taken when s0(?) != t8(?), and falls through when s0(?) == t8(?).
  The `beq` branch at 0x1fdd0 targets 0x1fe8c, is taken when a0(?) == s3(=-0x1), and falls through when a0(?) != s3(=-0x1).
  The `beq` branch at 0x1fdd8 targets 0x1fe00, is taken when s0(?) == s3(=-0x1), and falls through when s0(?) != s3(=-0x1).
  The `bne` branch at 0x1fdf8 targets 0x1fe80, is taken when s0(?) != a1(?), and falls through when s0(?) == a1(?).
  The `beq` branch at 0x1fe00 targets 0x1fd68 and is always taken.
  The `beq` branch at 0x1fe1c targets 0x1fe70, is taken when s0(=ret(hwgraph_fastinfo_get)) == 0, and falls through when s0(=ret(hwgraph_fastinfo_get)) != 0.
  The `beq` branch at 0x1fe30 targets 0x1fe40, is taken when a1(=[ret(hwgraph_fastinfo_get)+114]:2) == a3(=0x1), and falls through when a1(=[ret(hwgraph_fastinfo_get)+114]:2) != a3(=0x1).
  The `bne` branch at 0x1fe38 targets 0x1fcf8, is taken when a1(=[ret(hwgraph_fastinfo_get)+114]:2) != 0, and falls through when a1(=[ret(hwgraph_fastinfo_get)+114]:2) == 0.
  The `beq` branch at 0x1fe44 targets 0x1fe78, is taken when a1(=[ret(hwgraph_fastinfo_get)+2096]:8) == 0, and falls through when a1(=[ret(hwgraph_fastinfo_get)+2096]:8) != 0.
  The `beq` branch at 0x1fe68 targets 0x1fcf8 and is always taken.
  The `beq` branch at 0x1fe70 targets 0x1fcf8 and is always taken.
  The `beq` branch at 0x1fe78 targets 0x1fcf8 and is always taken.
  The `blez` branch at 0x1fea4 targets 0x1ffa0, is taken when s8(?) <= 0 (signed), and falls through when s8(?) > 0 (signed).
  The `beq` branch at 0x1feac targets 0x1fec0 and is always taken.
  The `bne` branch at 0x1febc targets 0x1ffa0, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `beq` branch at 0x1fedc targets 0x1feb4, is taken when v0(=ret(physmem_select_neighbor_node)) == 0, and falls through when v0(=ret(physmem_select_neighbor_node)) != 0.
  The `beq` branch at 0x1ff28 targets 0x1febc, is taken when a0(?) == s3(=-0x1), and falls through when a0(?) != s3(=-0x1).
  The `beq` branch at 0x1ff30 targets 0x1ff68, is taken when s0(?) == s3(=-0x1), and falls through when s0(?) != s3(=-0x1).
  The `beq` branch at 0x1ff50 targets 0x1ff68, is taken when s0(?) == a1(?), and falls through when s0(?) != a1(?).
  The `beq` branch at 0x1ff60 targets 0x1febc and is always taken.
  The `beq` branch at 0x1ff68 targets 0x1fd68 and is always taken.
  The `beq` branch at 0x1ff98 targets 0x1fd98 and is always taken.
  The `beq` branch at 0x1fff8 targets 0x20038, is taken when a0(?) == s3(=-0x1), and falls through when a0(?) != s3(=-0x1).
  The `beq` branch at 0x20000 targets 0x20028, is taken when s0(?) == s3(=-0x1), and falls through when s0(?) != s3(=-0x1).
  The `bne` branch at 0x20020 targets 0x20030, is taken when s0(?) != a1(?), and falls through when s0(?) == a1(?).
  The `beq` branch at 0x20028 targets 0x1fd68 and is always taken.
  The `beq` branch at 0x20050 targets 0x1fd68 and is always taken.
  The return at 0x1fd90 has v0 = one of ?, -0x1.
- `cause_intr_connect` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x20058 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x20058-0x200a0 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x20084 stores 4 bytes to (sym(cause_intr_tbl) + (a0 << 0x4)) +0x8.
  The `sd` at 0x20088 stores 8 bytes to (sym(cause_intr_tbl) + (a0 << 0x4)) +0x0.
  The `bltz` branch at 0x2005c targets 0x20098, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0x2006c targets 0x20098, is taken when a0 >= 0x8 (signed), and falls through when a0 < 0x8 (signed).
  The `beq` branch at 0x20074 targets 0x20098, is taken when a0 == v0(=0x2), and falls through when a0 != v0(=0x2).
  The `beq` branch at 0x2007c targets 0x20098, is taken when a0 == v0(=0x3), and falls through when a0 != v0(=0x3).
  The return at 0x20090 has v0 = 0x0.
  The return at 0x20098 has v0 = -0x1.
- `cause_intr_disconnect` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x200a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x200a0-0x200e0 (64 bytes).
  It occupies 64 bytes.
  The `ld` at 0x200bc loads 8 bytes from (sym(cause_intr_tbl) + (a0 << 0x4)) +0x0.
  The `sd` at 0x200d0 stores 8 bytes to (sym(cause_intr_tbl) + (a0 << 0x4)) +0x0.
  The `sw` at 0x200d4 stores 4 bytes to (sym(cause_intr_tbl) + (a0 << 0x4)) +0x8.
  The `bltz` branch at 0x200a4 targets 0x200c8, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0x200b4 targets 0x200c8, is taken when a0 >= 0x8 (signed), and falls through when a0 < 0x8 (signed).
  The `bne` branch at 0x200c0 targets 0x200d0, is taken when a6(=[(sym(cause_intr_tbl) + (a0 << 0x4))]:8) != 0, and falls through when a6(=[(sym(cause_intr_tbl) + (a0 << 0x4))]:8) == 0.
  The return at 0x200c8 has v0 = -0x1.
  The return at 0x200d8 has v0 = 0x0.
- `nointr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x200e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x200e0-0x200f0 (16 bytes).
  It occupies 16 bytes.
  The return at 0x200e8 has v0 = ?.
- `cpuintr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x20710 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x20710-0x20820 (272 bytes).
  It occupies 272 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc280, including `ld` at 0x20710, `ld` at 0x207c8.
  2 such `lh` accesses load 2 bytes from abs 0xffffffffffffc428, including `lh` at 0x2072c, `lh` at 0x20770.
  2 such `ld` accesses load 8 bytes from (sym(pdaindr) + ([-0x3bd8]:2 << 0x4)) +0x8, including `ld` at 0x2073c, `ld` at 0x2077c.
  2 such `lbu` accesses load 1 byte from [(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8 +0x528, including `lbu` at 0x20740, `lbu` at 0x20798.
  The `sd` at 0x20754 stores 8 bytes to abs 0x9200000001000090.
  The `lbu` at 0x20758 loads 1 byte from abs 0xffffffffffffc080.
  The `ld` at 0x2075c loads 8 bytes from abs 0x9200000001000098.
  The `lh` at 0x20784 loads 2 bytes from [(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8 +0x42c.
  The `jal` at 0x207b0 calls bcopy with a0=a1 at entry (arg1), a1=?, a2=0x168, a3=?, a4=0x9600000000000000, a5=0xffffffffff.
  The `jal` at 0x207b8 calls doacvec with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x207c0 calls doactions with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x207f0 calls log_tstamp_event with a0=0x71, a1=0x0, a2=0x0, a3=0x0, a4=0x0.
  The `jal` at 0x20810 calls log_tstamp_event with a0=0x65, a1=0x71, a2=0x0, a3=0x0, a4=0x0.
  The `bne` branch at 0x20724 targets 0x207e0, is taken when (at(=[-0x3d80]:8) & 0x20) != 0, and falls through when (at(=[-0x3d80]:8) & 0x20) == 0.
  The `beq` branch at 0x20760 targets 0x207b8, is taken when v0(=[-0x3f80]:1) == 0, and falls through when v0(=[-0x3f80]:1) != 0.
  The `beq` branch at 0x20768 targets 0x207b8, is taken when a3(=[sym(nmied)]) == 0, and falls through when a3(=[sym(nmied)]) != 0.
  The `bne` branch at 0x207d0 targets 0x20800, is taken when (a2(=[-0x3d80]:8) & 0x20) != 0, and falls through when (a2(=[-0x3d80]:8) & 0x20) == 0.
  The `beq` branch at 0x207f8 targets 0x2072c and is always taken.
  The `beq` branch at 0x20818 targets 0x207d8 and is always taken.
  The return at 0x207d8 has v0 = one of ret(doactions), ret(log_tstamp_event).
- `install_cpuintr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x20820 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x20820-0x20884 (100 bytes).
  It occupies 100 bytes.
  The `ld` at 0x20830 loads 8 bytes from (sym(pdaindr) + (a0 << 0x4)) +0x8.
  The `lbu` at 0x20838 loads 1 byte from [(sym(pdaindr) + (a0 << 0x4))+8]:8 +0x528.
  The `jal` at 0x20854 calls intr_connect_level with a0=a0 at entry (arg0), a1=?, a2=0x0, a3=sym(cpuintr), a4=0x0, a5=0x0.
  The `jal` at 0x20874 calls cmn_err with a0=0x0, a1=sym(.rodata)+43384, a2=?, a3=?.
  The `bne` branch at 0x2085c targets 0x2086c, is taken when v0(=ret(intr_connect_level)) != 0, and falls through when v0(=ret(intr_connect_level)) == 0.
  The `beq` branch at 0x2087c targets 0x20864 and is always taken.
  The return at 0x20864 has v0 = one of ret(intr_connect_level), ret(cmn_err).
- `dbgintr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x20884 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x20884-0x208d4 (80 bytes).
  It occupies 80 bytes.
  The `lh` at 0x20884 loads 2 bytes from abs 0xffffffffffffc428.
  The `ld` at 0x2089c loads 8 bytes from (sym(pdaindr) + ([-0x3bd8]:2 << 0x4)) +0x8.
  The `lbu` at 0x208a4 loads 1 byte from [(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8 +0x528.
  The `sd` at 0x208b8 stores 8 bytes to abs 0x9200000001000090.
  The `ld` at 0x208c4 loads 8 bytes from abs 0x9200000001000098.
  The `jal` at 0x208c0 calls debug with a0=sym(.rodata)+43384, a1=?, a2=0x9200000001000090, a3=a3 at entry (arg3).
  The return at 0x208cc has v0 = ret(debug).
- `install_dbgintr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x208d4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x208d4-0x20988 (180 bytes).
  It occupies 180 bytes.
  The `ld` at 0x208e4 loads 8 bytes from (sym(pdaindr) + (a0 << 0x4)) +0x8.
  The `lbu` at 0x208ec loads 1 byte from [(sym(pdaindr) + (a0 << 0x4))+8]:8 +0x528.
  The `lw` at 0x20910 loads 4 bytes from [(sym(pdaindr) + (a0 << 0x4))+8]:8 +0x73c.
  The `jal` at 0x20914 calls intr_reserve_level with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1852], a4=sym(.rodata)+43384.
  The `jal` at 0x20934 calls intr_connect_level with a0=a0 at entry (arg0), a1=?, a2=0x0, a3=sym(dbgintr), a4=0x0, a5=0x0.
  The `jal` at 0x20960 calls cmn_err with a0=0x0, a1=sym(.rodata)+43384, a2=?, a3=?.
  The `jal` at 0x20978 calls cmn_err with a0=0x0, a1=sym(.rodata)+43384, a2=?, a3=?.
  The `bne` branch at 0x2091c targets 0x20954, is taken when v0(=ret(intr_reserve_level)) != s0(?), and falls through when v0(=ret(intr_reserve_level)) == s0(?).
  The `bne` branch at 0x20940 targets 0x20970, is taken when v0(=ret(intr_connect_level)) != 0, and falls through when v0(=ret(intr_connect_level)) == 0.
  The `beq` branch at 0x20968 targets 0x20924 and is always taken.
  The `beq` branch at 0x20980 targets 0x2094c and is always taken.
  The return at 0x2094c has v0 = one of ret(intr_connect_level), ret(cmn_err).
- `tlbintr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x20988 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x20988-0x209d0 (72 bytes).
  It occupies 72 bytes.
  The `lh` at 0x20988 loads 2 bytes from abs 0xffffffffffffc428.
  The `ld` at 0x2099c loads 8 bytes from (sym(pdaindr) + ([-0x3bd8]:2 << 0x4)) +0x8.
  The `lbu` at 0x209a4 loads 1 byte from [(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8 +0x528.
  The `sd` at 0x209b8 stores 8 bytes to abs 0x9200000001000090.
  The `ld` at 0x209c0 loads 8 bytes from abs 0x9200000001000098.
  The `jal` at 0x209bc calls tlbflush_rand with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x209c8 has v0 = ret(tlbflush_rand).
- `install_tlbintr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x209d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x209d0-0x20a84 (180 bytes).
  It occupies 180 bytes.
  The `ld` at 0x209e0 loads 8 bytes from (sym(pdaindr) + (a0 << 0x4)) +0x8.
  The `lbu` at 0x209e8 loads 1 byte from [(sym(pdaindr) + (a0 << 0x4))+8]:8 +0x528.
  The `lw` at 0x20a0c loads 4 bytes from [(sym(pdaindr) + (a0 << 0x4))+8]:8 +0x73c.
  The `jal` at 0x20a10 calls intr_reserve_level with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1852], a4=sym(.rodata)+43384.
  The `jal` at 0x20a34 calls intr_connect_level with a0=a0 at entry (arg0), a1=?, a2=0x0, a3=sym(tlbintr), a4=0x0, a5=0x0.
  The `jal` at 0x20a5c calls cmn_err with a0=0x0, a1=sym(.rodata)+43384, a2=?, a3=?.
  The `jal` at 0x20a74 calls cmn_err with a0=0x0, a1=sym(.rodata)+43384, a2=?, a3=?.
  The `bne` branch at 0x20a18 targets 0x20a54, is taken when v0(=ret(intr_reserve_level)) != s0(?), and falls through when v0(=ret(intr_reserve_level)) == s0(?).
  The `bne` branch at 0x20a40 targets 0x20a6c, is taken when v0(=ret(intr_connect_level)) != 0, and falls through when v0(=ret(intr_connect_level)) == 0.
  The `beq` branch at 0x20a64 targets 0x20a24 and is always taken.
  The `beq` branch at 0x20a7c targets 0x20a4c and is always taken.
  The return at 0x20a4c has v0 = one of ret(intr_connect_level), ret(cmn_err).
- `install_gfxintr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x20c08 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x20c08-0x20c74 (108 bytes).
  It occupies 108 bytes.
  The `ld` at 0x20c20 loads 8 bytes from (sym(pdaindr) + (a0 << 0x4)) +0x8.
  The `lbu` at 0x20c2c loads 1 byte from [(sym(pdaindr) + (a0 << 0x4))+8]:8 +0x528.
  The `jal` at 0x20c44 calls intr_connect_level with a0=a0 at entry (arg0), a1=?, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a3 at entry (arg3), a5=0x0.
  The `jal` at 0x20c64 calls cmn_err with a0=0x0, a1=sym(.rodata)+43384, a2=?, a3=?.
  The `bne` branch at 0x20c4c targets 0x20c5c, is taken when v0(=ret(intr_connect_level)) != 0, and falls through when v0(=ret(intr_connect_level)) == 0.
  The `beq` branch at 0x20c6c targets 0x20c54 and is always taken.
  The return at 0x20c54 has v0 = one of ret(intr_connect_level), ret(cmn_err).
- `intr_reserve_hardwired` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x20d84 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x20d84-0x20ee0 (348 bytes).
  It occupies 348 bytes.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x20dd0, `sb` at 0x20e8c.
  The `lw` at 0x20de4 loads 4 bytes from ?.
  The `ld` at 0x20df0 loads 8 bytes from ?.
  The `lb` at 0x20e0c loads 1 byte from ?.
  The `ld` at 0x20e50 loads 8 bytes from table(sym(pdaindr)) +0x8.
  The `lh` at 0x20e54 loads 2 bytes from [table(sym(pdaindr))+8]:8 +0x42a.
  The `lbu` at 0x20e60 loads 1 byte from [table(sym(pdaindr))+8]:8 +0x528.
  The `lbu` at 0x20e70 loads 1 byte from ?.
  The `lb` at 0x20e80 loads 1 byte from sym(.data) +0x1e98.
  The `jal` at 0x20d98 calls cnodetocpu with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x20dec calls intr_reserve_level with a0=?, a1=?, a2=?, a3=0x0.
  The `jal` at 0x20e38 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x20ec8 calls cmn_err with a0=0x0, a1=sym(.rodata)+43384, a2=?, a3=?.
  The `beq` branch at 0x20db8 targets 0x20ea0, is taken when at(=-0x1) == s0(?), and falls through when at(=-0x1) != s0(?).
  The `bne` branch at 0x20dcc targets 0x20dc0, is taken when a0(?) < 0x2 (signed), and falls through when a0(?) >= 0x2 (signed).
  The `beq` branch at 0x20dd4 targets 0x20ed8 and is always taken.
  The `bne` branch at 0x20df4 targets 0x20ec0, is taken when v0(=ret(intr_reserve_level)) != s2(?), and falls through when v0(=ret(intr_reserve_level)) == s2(?).
  The `bne` branch at 0x20e14 targets 0x20ddc, is taken when a1(?) != a7(=-0x1), and falls through when a1(?) == a7(=-0x1).
  The `beq` branch at 0x20e30 targets 0x20ea0, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x20e40 targets 0x20ea0, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0x20e58 targets 0x20ea0, is taken when t9(=[[table(sym(pdaindr))+8]:8+1066]:2) != s3(=a0), and falls through when t9(=[[table(sym(pdaindr))+8]:8+1066]:2) == s3(=a0).
  The `bne` branch at 0x20e74 targets 0x20e1c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x20e90 targets 0x20ddc, is taken when a1(=[sym(hardwired_intr)]:1) != a5(=-0x1), and falls through when a1(=[sym(hardwired_intr)]:1) == a5(=-0x1).
  The `beq` branch at 0x20e98 targets 0x20e20 and is always taken.
  The `beq` branch at 0x20ed0 targets 0x20e00 and is always taken.
  The `beq` branch at 0x20ed8 targets 0x20e30 and is always taken.
  The return at 0x20eb8 has v0 = one of ret(cnodetocpu), ?, ret(cpu_enabled).
- `intr_clear_bits` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x20ee0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x20ee0-0x20f58 (120 bytes).
  It occupies 120 bytes.
  The `ld` at 0x20ee0 loads 8 bytes from a1 (arg1 at entry) +0x0.
  2 such `sd` accesses store 8 bytes to abs 0x9200000001000090, including `sd` at 0x20f1c, `sd` at 0x20f40.
  2 such `ld` accesses load 8 bytes from abs 0x9200000001000098, including `ld` at 0x20f20, `ld` at 0x20f44.
  The `beq` branch at 0x20ef8 targets 0x20f50, is taken when at(=[a1]:8) == 0, and falls through when at(=[a1]:8) != 0.
  The `beq` branch at 0x20f14 targets 0x20f24, is taken when (v0(=[a1]:8) & v1(?)) == 0, and falls through when (v0(=[a1]:8) & v1(?)) != 0.
  The `beq` branch at 0x20f24 targets 0x20f50, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x20f38 targets 0x20f48, is taken when (a5(=[a1]:8) & a7(?)) == 0, and falls through when (a5(=[a1]:8) & a7(?)) != 0.
  The `bne` branch at 0x20f48 targets 0x20f00, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The return at 0x20f50 has v0 = ?.
- `intr_clear_all` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x20f58 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x20f58-0x21094 (316 bytes).
  It occupies 316 bytes.
  The `sd` at 0x2100c stores 8 bytes to ((a0 << 0x21) + one of 0x92000000018000a8, 0x9200000001a000a8) +0x0.
  The `sd` at 0x21018 stores 8 bytes to ((a0 << 0x21) + one of 0x92000000018000b8, 0x9200000001a000b8) +0x0.
  The `sd` at 0x21024 stores 8 bytes to ((a0 << 0x21) + one of 0x92000000018000b0, 0x9200000001a000b0) +0x0.
  The `sd` at 0x21030 stores 8 bytes to ((a0 << 0x21) + one of 0x92000000018000c0, 0x9200000001a000c0) +0x0.
  The `jal` at 0x2102c calls intr_clear_bits [0x20ee0] with a0=a0 at entry (arg0), a1=((a0 << 0x21) + one of 0x9200000001800098, 0x9200000001a00098), a2=0x0, a3=sym(.rodata)+43384, a4=((a0 << 0x21) + one of 0x92000000018000b0, 0x9200000001a000b0), a5=((a0 << 0x21) + one of 0x92000000018000b8, 0x9200000001a000b8).
  The `jal` at 0x2104c calls intr_clear_bits [0x20ee0] with a0=a0 at entry (arg0), a1=((a0 << 0x21) + one of 0x92000000018000a0, 0x9200000001a000a0), a2=0x40, a3=sym(.rodata)+43384.
  The `bne` branch at 0x2105c targets 0x20fac, is taken when s0(?) < 0x2 (signed), and falls through when s0(?) >= 0x2 (signed).
  The return at 0x2108c has v0 = ret(intr_clear_bits).
- `intr_dumpvec` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21254 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21254-0x215a0 (844 bytes).
  It occupies 844 bytes.
  The `lh` at 0x212ac loads 2 bytes from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0.
  The `ld` at 0x212bc loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x212c8 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x212e4 loads 8 bytes from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x21364, `ld` at 0x21388, `ld` at 0x213a8.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0x213cc, `lw` at 0x213e8, `lw` at 0x213ec.
  The `jalr` at 0x213c4 calls (unknown callee) with a0=sym(.rodata)+43384, a1=a0 at entry (arg0), a2=?, a3=?, a5=one of 0x98, 0xa0, 0x200098, 0x2000a0.
  The `jalr` at 0x213dc calls (unknown callee) with a0=sym(.rodata)+43384, a1=?, a2=?, a3=?.
  The `jalr` at 0x213f0 calls (unknown callee) with a0=sym(.rodata)+43384, a1=?, a2=?, a3=?.
  The `jalr` at 0x21404 calls (unknown callee) with a0=sym(.rodata)+43384, a1=?, a2=?, a3=?.
  The `jalr` at 0x21414 calls (unknown callee) with a0=sym(.rodata)+43384, a1=?, a2=?, a3=?.
  The `jal` at 0x21450 calls dump_vector [0x21094] with a0=?, a1=?, a2=?, a3=?, a6=a1 at entry (arg1).
  The `jalr` at 0x214a8 calls (unknown callee) with a0=sym(.rodata)+43384, a1=?, a2=?, a3=?.
  The `jalr` at 0x21560 calls (unknown callee) with a0=sym(.rodata)+43384, a1=?, a2=?, a3=?.
  The `jalr` at 0x21578 calls (unknown callee) with a0=sym(.rodata)+43384, a1=a0 at entry (arg0), a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The `jalr` at 0x21590 calls (unknown callee) with a0=sym(.rodata)+43384, a1=a0 at entry (arg0), a2=a0 at entry (arg0), a3=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a4=(a0 + a0).
  The `bltz` branch at 0x21288 targets 0x21570, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0x21298 targets 0x21570, is taken when a0 >= at(=[sym(numnodes)]) (signed), and falls through when a0 < at(=[sym(numnodes)]) (signed).
  The `beq` branch at 0x212b4 targets 0x21588, is taken when a3(=[(sym(compact_to_nasid_node) + (a0 + a0))]:2) == v0(=-0x1), and falls through when a3(=[(sym(compact_to_nasid_node) + (a0 + a0))]:2) != v0(=-0x1).
  The `beq` branch at 0x2132c targets 0x21518, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `beq` branch at 0x2133c targets 0x21524, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `beq` branch at 0x21360 targets 0x21530, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `beq` branch at 0x21384 targets 0x21540, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `beq` branch at 0x213a4 targets 0x21550, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `beq` branch at 0x213d0 targets 0x21560, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x21424 targets 0x2146c and is always taken.
  The `beq` branch at 0x21460 targets 0x214a4, is taken when s0(?) >= 0x40 (signed), and falls through when s0(?) < 0x40 (signed).
  The `bne` branch at 0x21484 targets 0x2142c, is taken when (a7(?) & 0x1) != 0, and falls through when (a7(?) & 0x1) == 0.
  The `bne` branch at 0x2148c targets 0x2142c, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x2149c targets 0x2146c, is taken when s0(?) < 0x40 (signed), and falls through when s0(?) >= 0x40 (signed).
  The `bne` branch at 0x214c4 targets 0x2132c, is taken when s7(?) < 0x2 (signed), and falls through when s7(?) >= 0x2 (signed).
  The `bne` branch at 0x214e0 targets 0x21304, is taken when s6(?) < 0x2 (signed), and falls through when s6(?) >= 0x2 (signed).
  The `beq` branch at 0x2151c targets 0x21338 and is always taken.
  The `beq` branch at 0x21528 targets 0x2134c and is always taken.
  The `beq` branch at 0x21538 targets 0x21370 and is always taken.
  The `beq` branch at 0x21548 targets 0x21394 and is always taken.
  The `beq` branch at 0x21558 targets 0x213ac and is always taken.
  The `beq` branch at 0x21568 targets 0x213e4 and is always taken.
  The `beq` branch at 0x21580 targets 0x214ec and is always taken.
  The `beq` branch at 0x21598 targets 0x214ec and is always taken.
  The return at 0x21510 has v0 = ret(?).
- `intpend0_intrd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x216ec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x216ec-0x21720 (52 bytes).
  It occupies 52 bytes.
  The `ld` at 0x216f0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0x21704 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `jalr` at 0x21700 calls (unknown callee) with a0=[a0+16]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x21708 calls ipsema with a0=a0+32, a1=?, a2=?, a3=?.
  The return at 0x21718 has v0 = ret(ipsema).
- `intpend0_intrd_start` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21720 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21720-0x2179c (124 bytes).
  It occupies 124 bytes.
  The `lh` at 0x21734 loads 2 bytes from a0 (arg0 at entry) +0x40.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0x21738, `ld` at 0x21754.
  The `ld` at 0x21750 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ll` at 0x21770 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `sc` at 0x21778 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `jal` at 0x21730 calls setmustrun with a0=[a0+64]:2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x21740 calls xthread_set_func with a0=[-0x3fe0]:8, a1=sym(intpend0_intrd), a2=a0 at entry (arg0), a3=?.
  The `jal` at 0x2174c calls fetch_kname with a0=[a0]:8, a1=sp-32, a2=?, a3=?.
  The `jal` at 0x21760 calls strncpy with a0=[-0x3fe0]:8+848, a1=ret(fetch_kname), a2=0x10, a3=?.
  The `jal` at 0x21784 calls ipsema with a0=a0+32, a1=[a0+24], a2=a0+24, a3=0x400, a4=([a0+24] | 0x400).
  The `beql` branch at 0x2177c targets 0x21770, is taken when a4(=([a0+24] | 0x400)) == 0, and falls through when a4(=([a0+24] | 0x400)) != 0; its branch-likely delay slot `nop` at 0x21780 runs only when taken and is annulled on fall-through.
  The return at 0x21794 has v0 = ret(ipsema).
- `intr_thread_setup` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2179c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2179c-0x217f8 (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x217c8 calls sprintf with a0=sp-64, a1=sym(.rodata)+43384, a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The `jal` at 0x217e0 calls xthread_setup with a0=sp-64, a1=a3 at entry (arg3), a2=a0+24, a3=sym(intpend0_intrd_start), a4=a0 at entry (arg0).
  The return at 0x217f0 has v0 = ret(xthread_setup).
- `splhintr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dec-0x21e04 (24 bytes).
  It occupies 24 bytes.
  The return at 0x21dfc has v0 = ?.
- `delay_for_intr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21f10 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21f10-0x21f18 (8 bytes).
  It occupies 8 bytes.
  The return at 0x21f10 has v0 = ?.
- `hub_intr_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x227a4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x227a4-0x227ac (8 bytes).
  It occupies 8 bytes.
  The return at 0x227a4 has v0 = ?.
- `do_hub_intr_alloc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22800 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22800-0x22a08 (520 bytes).
  It occupies 520 bytes.
  The `lw` at 0x22874 loads 4 bytes from ?.
  The `ld` at 0x228c8 loads 8 bytes from table(sym(pdaindr)) +0x8.
  The `lh` at 0x228cc loads 2 bytes from [table(sym(pdaindr))+8]:8 +0x42a.
  The `lbu` at 0x228d4 loads 1 byte from [table(sym(pdaindr))+8]:8 +0x528.
  The `lh` at 0x22900 loads 2 bytes from (sym(compact_to_nasid_node) + ([[table(sym(pdaindr))+8]:8+1066]:2 + [[table(sym(pdaindr))+8]:8+1066]:2)) +0x0.
  2 such `sw` accesses store 4 bytes to ret(kmem_alloc_node) +0x0, including `sw` at 0x22918, `sw` at 0x22a04.
  The `sb` at 0x22930 stores 1 byte to ret(kmem_alloc_node) +0x5.
  The `sd` at 0x22944 stores 8 bytes to ret(kmem_alloc_node) +0x8.
  The `sb` at 0x22958 stores 1 byte to ret(kmem_alloc_node) +0x4.
  The `sw` at 0x2295c stores 4 bytes to ret(kmem_alloc_node) +0x20.
  The `sh` at 0x22964 stores 2 bytes to ret(kmem_alloc_node) +0x24.
  The `sw` at 0x22974 stores 4 bytes to ret(kmem_alloc_node) +0x2c.
  The `sw` at 0x2297c stores 4 bytes to ret(kmem_alloc_node) +0x28.
  The `jal` at 0x22830 calls device_desc_default_get with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x22860 calls device_desc_intr_name_get with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2286c calls device_desc_intr_swlevel_get with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x228a0 calls intr_heuristic with a0=a0 at entry (arg0), a1=?, a2=[sym(allocate_my_bit)], a3=?, a4=a2 at entry (arg2), a6=sp-92.
  The `jal` at 0x22908 calls kmem_alloc_node with a0=0x30, a1=0x1, a2=[[table(sym(pdaindr))+8]:8+1066]:2, a3=?.
  The `jal` at 0x22940 calls xwidget_info_get with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x22950 calls xwidget_info_masterid_get with a0=ret(xwidget_info_get), a1=?, a2=?, a3=?.
  The `jal` at 0x22980 calls hub_device_desc_update [0x227ac] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x229dc calls cmn_err with a0=0x4, a1=sym(.rodata)+45112, a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x229f8 calls assfail with a0=sym(.rodata)+45112, a1=sym(.rodata)+45112, a2=0x314, a3=?.
  The `bne` branch at 0x22828 targets 0x22860, is taken when a1 != 0, and falls through when a1 == 0.
  The `bne` branch at 0x2283c targets 0x22860, is taken when v0(=ret(device_desc_default_get)) != 0, and falls through when v0(=ret(device_desc_default_get)) == 0.
  The `beq` branch at 0x22858 targets 0x2288c and is always taken.
  The `beq` branch at 0x22884 targets 0x229ac, is taken when (a0(?) & 0x1) == 0, and falls through when (a0(?) & 0x1) != 0.
  The `beq` branch at 0x228b4 targets 0x229d0, is taken when s3(?) == v1(=-0x1), and falls through when s3(?) != v1(=-0x1).
  The `beq` branch at 0x22910 targets 0x229ec, is taken when v0(=ret(kmem_alloc_node)) == 0, and falls through when v0(=ret(kmem_alloc_node)) != 0.
  The `beq` branch at 0x22948 targets 0x2295c, is taken when v0(=ret(xwidget_info_get)) == 0, and falls through when v0(=ret(xwidget_info_get)) != 0.
  The `beq` branch at 0x229ac targets 0x229bc, is taken when a4(=a3) == 0, and falls through when a4(=a3) != 0.
  The `beq` branch at 0x229b4 targets 0x22890 and is always taken.
  The `bne` branch at 0x229c0 targets 0x229b4, is taken when (a0(?) & 0x4) != 0, and falls through when (a0(?) & 0x4) == 0.
  The `beq` branch at 0x229c8 targets 0x2288c and is always taken.
  The `beq` branch at 0x229e4 targets 0x22988 and is always taken.
  The `beq` branch at 0x22a00 targets 0x2291c and is always taken.
  The return at 0x229a4 has v0 = one of ret(kmem_alloc_node), 0x0.
- `hub_intr_alloc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22a08 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22a08-0x22a24 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x22a10 calls do_hub_intr_alloc [0x22800] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x0.
  The return at 0x22a1c has v0 = ret(do_hub_intr_alloc).
- `hub_intr_alloc_nothd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22a24 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22a24-0x22a40 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x22a2c calls do_hub_intr_alloc [0x22800] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1.
  The return at 0x22a38 has v0 = ret(do_hub_intr_alloc).
- `hub_intr_free` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22a40 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22a40-0x22ab8 (120 bytes).
  It occupies 120 bytes.
  The `lw` at 0x22a40 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lh` at 0x22a44 loads 2 bytes from a0 (arg0 at entry) +0x24.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x22a4c, `lw` at 0x22a84.
  The `sb` at 0x22a6c stores 1 byte to a0 (arg0 at entry) +0x5.
  The `sd` at 0x22a70 stores 8 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x22a78 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0x22a7c calls hub_intr_disconnect with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+44].
  The `jal` at 0x22a94 calls kmem_free with a0=a0 at entry (arg0), a1=0x30, a2=?, a3=[a0+44].
  The `jal` at 0x22aa4 calls intr_unreserve_level with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x22a64 targets 0x22a88, is taken when (a3(=[a0+44]) & 0x4) == 0, and falls through when (a3(=[a0+44]) & 0x4) != 0.
  The `beq` branch at 0x22a8c targets 0x22a9c, is taken when (a3(=[a0+44]) & 0x1) == 0, and falls through when (a3(=[a0+44]) & 0x1) != 0.
  The return at 0x22ab0 has v0 = ret(intr_unreserve_level).
- `hub_intr_connect` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22ab8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22ab8-0x22b40 (136 bytes).
  It occupies 136 bytes.
  The `lh` at 0x22ac4 loads 2 bytes from a0 (arg0 at entry) +0x24.
  The `lw` at 0x22ae8 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lw` at 0x22af4 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `sd` at 0x22b00 stores 8 bytes to a0 (arg0 at entry) +0x18.
  The `sd` at 0x22b08 stores 8 bytes to a0 (arg0 at entry) +0x10.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2c, including `lw` at 0x22b0c, `lw` at 0x22b3c.
  The `sw` at 0x22b18 stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `jal` at 0x22af0 calls intr_connect_level with a0=[a0+36]:2, a1=[a0+40], a2=[a0+32], a3=a1 at entry (arg1), a4=a2 at entry (arg2), a5=0x0.
  The `jalr` at 0x22b30 calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `bltz` branch at 0x22af8 targets 0x22b1c, is taken when v0(=ret(intr_connect_level)) < 0 (signed), and falls through when v0(=ret(intr_connect_level)) >= 0 (signed).
  The `bne` branch at 0x22b04 targets 0x22b30, is taken when s1(=a3) != 0, and falls through when s1(=a3) == 0.
  The `beq` branch at 0x22b38 targets 0x22b10 and is always taken.
  The return at 0x22b28 has v0 = one of ret(intr_connect_level), 0x0.
- `hub_intr_disconnect` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22b40 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22b40-0x22ba4 (100 bytes).
  It occupies 100 bytes.
  The `lw` at 0x22b40 loads 4 bytes from a0 (arg0 at entry) +0x28.
  The `lh` at 0x22b4c loads 2 bytes from a0 (arg0 at entry) +0x24.
  The `ld` at 0x22b50 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x22b70 loads 4 bytes from a0 (arg0 at entry) +0x2c.
  The `sw` at 0x22b84 stores 4 bytes to a0 (arg0 at entry) +0x2c.
  The `jal` at 0x22b68 calls intr_disconnect_level with a0=[a0+36]:2, a1=?, a2=?, a3=?.
  The `jalr` at 0x22b94 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0+40], a2=a2 at entry (arg2), a3=[a0+24]:8.
  The `bne` branch at 0x22b60 targets 0x22b94, is taken when a3(=[a0+24]:8) != 0, and falls through when a3(=[a0+24]:8) == 0.
  The `beq` branch at 0x22b9c targets 0x22b68 and is always taken.
  The return at 0x22b8c has v0 = -0x5.
- `hub_intr_cpu_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22ba4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22ba4-0x22bc0 (28 bytes).
  It occupies 28 bytes.
  The `lh` at 0x22ba4 loads 2 bytes from a0 (arg0 at entry) +0x24.
  The `ld` at 0x22bb4 loads 8 bytes from (sym(pdaindr) + ([a0+36]:2 << 0x4)) +0x8.
  The `lw` at 0x22bbc loads 4 bytes from [(sym(pdaindr) + ([a0+36]:2 << 0x4))+8]:8 +0x73c.
  The return at 0x22bb8 has v0 = [[(sym(pdaindr) + ([a0+36]:2 << 0x4))+8]:8+1852].
- `hub_intr_cpuid_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22bc0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22bc0-0x22bc8 (8 bytes).
  It occupies 8 bytes.
  The `lh` at 0x22bc4 loads 2 bytes from a0 (arg0 at entry) +0x24.
  The return at 0x22bc0 has v0 = [a0+36]:2.
- `r12k_perf_overflow_intr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x23304 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x23304-0x23364 (96 bytes).
  It occupies 96 bytes.
  The `beq` branch at 0x23310 targets 0x23320, is taken when t0(?) >= 0 (signed), and falls through when t0(?) < 0 (signed).
  The `beq` branch at 0x23320 targets 0x2332c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x2333c targets 0x2334c, is taken when t0(?) >= 0 (signed), and falls through when t0(?) < 0 (signed).
  The `beq` branch at 0x2334c targets 0x23358, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The return at 0x2335c has v0 = ?.
- `r10k_perf_overflow_intr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x23364 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x23364-0x23394 (48 bytes).
  It occupies 48 bytes.
  The `beq` branch at 0x23370 targets 0x23380, is taken when t0(?) >= 0 (signed), and falls through when t0(?) < 0 (signed).
  The `beq` branch at 0x23380 targets 0x2338c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The return at 0x2338c has v0 = ?.
- `handle_intr_wgflush` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2381c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2381c-0x23868 (76 bytes).
  It occupies 76 bytes.
  The `sd` at 0x2381c stores 8 bytes to abs 0xffffffffffffc038.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x23860).
  The `beq` branch at 0x23858 targets 0x238b0, is taken when k0(?) == 0, and falls through when k0(?) != 0.
- `encode_int_serial` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x248d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x248d0-0x24960 (144 bytes).
  It occupies 144 bytes.
  The `lbu` at 0x24900 loads 1 byte from ?.
  The `sb` at 0x24908 stores 1 byte to ?.
  The `beq` branch at 0x248e4 targets 0x24944 and is always taken.
  The `beq` branch at 0x2490c targets 0x2493c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x2492c targets 0x248ec, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x24934 targets 0x248f0 and is always taken.
  The `beq` branch at 0x24958 targets 0x24918 and is always taken.
  The return at 0x2493c has v0 = ?.
- `decode_int_serial` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24960 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x24960-0x249f8 (152 bytes).
  It occupies 152 bytes.
  The `sb` at 0x2498c stores 1 byte to ?.
  The `lbu` at 0x249b4 loads 1 byte from ?.
  The `sd` at 0x249dc stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `beq` branch at 0x24970 targets 0x249e0 and is always taken.
  The `beq` branch at 0x24994 targets 0x249c8, is taken when a3(?) >= 0x8 (unsigned), and falls through when a3(?) < 0x8 (unsigned).
  The `bne` branch at 0x249b8 targets 0x24978, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x249c0 targets 0x2497c and is always taken.
  The `beq` branch at 0x249f0 targets 0x249a0 and is always taken.
  The return at 0x249d8 has v0 = ?.
- `early_counter_intr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29874 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29874-0x29890 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x2987c calls resetcounter with a0=0xfffffffff0000000, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x29888 has v0 = ret(resetcounter).
- `compare_and_swap_ptr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29e24 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29e24-0x29e4c (40 bytes).
  It occupies 40 bytes.
  The `lld` at 0x29e24 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x29e30 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x29e28 targets 0x29e44, is taken when t0(=[a0]:8) != a1, and falls through when t0(=[a0]:8) == a1.
  The `beq` branch at 0x29e34 targets 0x29e24, is taken when v0(=a2) == 0, and falls through when v0(=a2) != 0.
  The return at 0x29e3c has v0 = a2.
  The return at 0x29e44 has v0 = 0x0.
- `hub_rtc_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29ebc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29ebc-0x29f84 (200 bytes).
  It occupies 200 bytes.
  The `lh` at 0x29f08 loads 2 bytes from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0.
  The `sd` at 0x29f58 stores 8 bytes to (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800140, 0x9200000001a00140) +0x0.
  The `sd` at 0x29f64 stores 8 bytes to (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800148, 0x9200000001a00148) +0x0.
  The `sd` at 0x29f6c stores 8 bytes to (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800150, 0x9200000001a00150) +0x0.
  The `sd` at 0x29f74 stores 8 bytes to (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800158, 0x9200000001a00158) +0x0.
  The `jal` at 0x29ec8 calls get_compact_nodeid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x29ed4 targets 0x29f78, is taken when s0(=a0) != v0(=ret(get_compact_nodeid)), and falls through when s0(=a0) == v0(=ret(get_compact_nodeid)).
  The `bne` branch at 0x29f70 targets 0x29f1c, is taken when a2(?) < 0x2 (signed), and falls through when a2(?) >= 0x2 (signed).
  The return at 0x29f7c has v0 = one of ret(get_compact_nodeid), (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800150, 0x9200000001a00150).
- `acktmoclock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29f84 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29f84-0x29fc0 (60 bytes).
  It occupies 60 bytes.
  The `lh` at 0x29f84 loads 2 bytes from abs 0xffffffffffffc428.
  The `ld` at 0x29f94 loads 8 bytes from (sym(pdaindr) + ([-0x3bd8]:2 << 0x4)) +0x8.
  The `lbu` at 0x29f98 loads 1 byte from [(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8 +0x528.
  The `sd` at 0x29fac stores 8 bytes to abs 0x9200000001000128.
  The `sd` at 0x29fbc stores 8 bytes to abs 0x9200000001000120.
  The `beq` branch at 0x29fa4 targets 0x29fb8, is taken when (at(=[[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1) & 0x1) == 0, and falls through when (at(=[[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1) & 0x1) != 0.
  The return at 0x29fb0 has v0 = ([-0x3bd8]:2 << 0x4).
  The return at 0x29fb8 has v0 = ([-0x3bd8]:2 << 0x4).
- `timestamp_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ac08 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ac08-0x2ac80 (120 bytes).
  It occupies 120 bytes.
  The `ld` at 0x2ac0c loads 8 bytes from abs 0x9200000001604200.
  The return at 0x2ac78 has v0 = ?.
- `prof_intr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ac80 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ac80-0x2ae50 (464 bytes).
  It occupies 464 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc280, including `ld` at 0x2ac80, `ld` at 0x2adf8.
  3 such `ld` accesses load 8 bytes from abs 0x9200000001604200, including `ld` at 0x2aca4, `ld` at 0x2ad54, `ld` at 0x2ada8.
  The `lw` at 0x2ace0 loads 4 bytes from abs 0xffffffffffffc53c.
  4 such `ld` accesses load 8 bytes from abs 0xffffffffffffc408, including `ld` at 0x2acf4, `ld` at 0x2ad48, `ld` at 0x2ad94.
  The `lw` at 0x2acf8 loads 4 bytes from [-0x3bf8]:8 +0x3c58.
  The `lh` at 0x2acfc loads 2 bytes from abs 0xffffffffffffc428.
  The `ld` at 0x2ad18 loads 8 bytes from (sym(pdaindr) + ([-0x3bd8]:2 << 0x4)) +0x8.
  The `lbu` at 0x2ad1c loads 1 byte from [(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8 +0x528.
  The `lh` at 0x2ad24 loads 2 bytes from abs 0xffffffffffffc42a.
  The `ld` at 0x2ad50 loads 8 bytes from abs 0x9200000001030100.
  3 such `ld` accesses load 8 bytes from [-0x3bf8]:8 +0x3c50, including `ld` at 0x2ad84, `ld` at 0x2ad98, `ld` at 0x2adec.
  2 such `sd` accesses store 8 bytes to [-0x3bf8]:8 +0x3c50, including `sd` at 0x2ad90, `sd` at 0x2ade0.
  The `sd` at 0x2adf4 stores 8 bytes to abs 0x9200000001000118.
  The `jal` at 0x2ac98 calls fastick_maint with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x2ad28 calls cnode_subnode_to_cpu with a0=[-0x3bd6]:2, a1=?, a2=([-0x3bd8]:2 << 0x4), a3=0x9200000001604200, a4=0x3b9aca00, a5=[-0x3bd8]:2, a6=0x3e8.
  The `jal` at 0x2ae20 calls log_tstamp_event with a0=0x6e, a1=0x0, a2=0x0, a3=0x0, a4=0x0.
  The `jal` at 0x2ae40 calls log_tstamp_event with a0=0x65, a1=0x6e, a2=0x0, a3=0x0, a4=0x0, a6=0x3e8.
  The `bne` branch at 0x2ac90 targets 0x2ae10, is taken when (at(=[-0x3d80]:8) & 0x20) != 0, and falls through when (at(=[-0x3d80]:8) & 0x20) == 0.
  The `bne` branch at 0x2acec targets 0x2adf8, is taken when v1(=[-0x3ac4]) != a0(?), and falls through when v1(=[-0x3ac4]) == a0(?).
  The `beq` branch at 0x2ad00 targets 0x2ad4c, is taken when a1(=[[-0x3bf8]:8+15448]) == a2(=0x1), and falls through when a1(=[[-0x3bf8]:8+15448]) != a2(=0x1).
  The `bne` branch at 0x2ad40 targets 0x2adf8, is taken when a5(?) != v0(=ret(cnode_subnode_to_cpu)), and falls through when a5(?) == v0(=ret(cnode_subnode_to_cpu)).
  The `beq` branch at 0x2ada0 targets 0x2adf0, is taken when a2(=[[-0x3bf8]:8+15440]:8) >= a5(=[0x9200000001030100]:8) (unsigned), and falls through when a2(=[[-0x3bf8]:8+15440]:8) < a5(=[0x9200000001030100]:8) (unsigned).
  The `bne` branch at 0x2ae00 targets 0x2ae30, is taken when (t2(=[-0x3d80]:8) & 0x20) != 0, and falls through when (t2(=[-0x3d80]:8) & 0x20) == 0.
  The `beq` branch at 0x2ae28 targets 0x2ac98 and is always taken.
  The `beq` branch at 0x2ae48 targets 0x2ae08 and is always taken.
  The return at 0x2ae08 has v0 = one of ?, ret(log_tstamp_event).
- `hub_xtalk_link_up` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ae50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ae50-0x2ae78 (40 bytes).
  It occupies 40 bytes.
  The `ld` at 0x2ae5c loads 8 bytes from (a0 << 0x21) -0x6dfffffffe3ffed8.
  The `beq` branch at 0x2ae64 targets 0x2ae70, is taken when (at(=[(a0 << 0x21)-7926335344142712536]:8) & 0x2000) == 0, and falls through when (at(=[(a0 << 0x21)-7926335344142712536]:8) & 0x2000) != 0.
  The return at 0x2ae70 has v0 = one of 0x0, 0x1.
- `print_hub_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2aee8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2aee8-0x2afa8 (192 bytes).
  It occupies 192 bytes.
  The `ld` at 0x2aee8 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `lbu` at 0x2af3c loads 1 byte from a0 (arg0 at entry) +0x78.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x70, including `ld` at 0x2af64, `ld` at 0x2af94.
  The `sb` at 0x2af78 stores 1 byte to a0 (arg0 at entry) +0x78.
  The `jal` at 0x2af4c calls .text with a0=a3 at entry (arg3), a1=a1 at entry (arg1), a2=(a3 | [a0+120]:1), a3=a3 at entry (arg3).
  The `jal` at 0x2af68 calls cmn_err with a0=0x4, a1=sym(.rodata)+46952, a2=ret(.text), a3=?, a4=[a0+112]:8.
  The `jal` at 0x2af7c calls .text with a0=a3 at entry (arg3), a1=a1 at entry (arg1), a2=(a3 | [a0+120]:1), a3=a3 at entry (arg3).
  The `jal` at 0x2af98 calls cmn_err with a0=0x404, a1=sym(.rodata)+46952, a2=ret(.text), a3=?, a4=[a0+112]:8.
  The `beq` branch at 0x2af1c targets 0x2af3c, is taken when s1(?) >= 0x1f5 (signed), and falls through when s1(?) < 0x1f5 (signed).
  The `beq` branch at 0x2af44 targets 0x2af78, is taken when (a3 & v0(=[a0+120]:1)) == 0, and falls through when (a3 & v0(=[a0+120]:1)) != 0.
  The `beq` branch at 0x2af70 targets 0x2afa0 and is always taken.
  The `beq` branch at 0x2afa0 targets 0x2af28 and is always taken.
  The return at 0x2af34 has v0 = one of 0x0, 0x1.
- `check_hub_error_rates` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2afa8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2afa8-0x2b04c (164 bytes).
  It occupies 164 bytes.
  The `ld` at 0x2afb0 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x2afb8 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ld` at 0x2afd0 loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `lh` at 0x2afe4 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `ld` at 0x2b000 loads 8 bytes from a0 (arg0 at entry) +0x50.
  The `ld` at 0x2b018 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `jal` at 0x2afd4 calls print_hub_error with a0=a0 at entry (arg0), a1=[a0+56]:8, a2=?, a3=0x4.
  The `jal` at 0x2afe0 calls hub_xtalk_link_up with a0=[a0+4]:2, a1=?, a2=?, a3=?.
  The `jal` at 0x2b004 calls print_hub_error with a0=a0 at entry (arg0), a1=[a0+80]:8, a2=?, a3=0x8.
  The `jal` at 0x2b01c calls print_hub_error with a0=a0 at entry (arg0), a1=[a0+72]:8, a2=?, a3=0x10.
  The `bne` branch at 0x2afe8 targets 0x2affc, is taken when v0(=ret(hub_xtalk_link_up)) != 0, and falls through when v0(=ret(hub_xtalk_link_up)) == 0.
  The `beq` branch at 0x2aff4 targets 0x2b030 and is always taken.
  The return at 0x2b044 has v0 = one of ret(print_hub_error), ?.
- `capture_hub_stats` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2b04c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2b04c-0x2b20c (448 bytes).
  It occupies 448 bytes.
  The `ld` at 0x2b070 loads 8 bytes from a1 (arg1 at entry) +0x87e8.
  3 such `ld` accesses load 8 bytes from abs 0x9200000001030100, including `ld` at 0x2b078, `ld` at 0x2b19c, `ld` at 0x2b1d0.
  The `sd` at 0x2b080 stores 8 bytes to a1 (arg1 at entry) +0x87d8.
  The `lh` at 0x2b088 loads 2 bytes from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0.
  The `ld` at 0x2b0a0 loads 8 bytes from ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dfffffffe17fee0.
  The `ld` at 0x2b0ac loads 8 bytes from a1 (arg1 at entry) +0x87f8.
  The `ld` at 0x2b0bc loads 8 bytes from a1 (arg1 at entry) +0x87f0.
  The `sd` at 0x2b0d4 stores 8 bytes to a1 (arg1 at entry) +0x87f8.
  The `ld` at 0x2b0e4 loads 8 bytes from a1 (arg1 at entry) +0x8800.
  The `sd` at 0x2b0f4 stores 8 bytes to a1 (arg1 at entry) +0x87f0.
  The `sd` at 0x2b100 stores 8 bytes to a1 (arg1 at entry) +0x8800.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x8808, including `lw` at 0x2b104, `lw` at 0x2b208.
  The `sw` at 0x2b10c stores 4 bytes to a1 (arg1 at entry) +0x8808.
  The `ld` at 0x2b12c loads 8 bytes from ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dfffffffe3ffed8.
  The `ld` at 0x2b140 loads 8 bytes from ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dfffffffe3ffed0.
  The `sd` at 0x2b144 stores 8 bytes to ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dfffffffe3ffed0.
  The `ld` at 0x2b148 loads 8 bytes from a1 (arg1 at entry) +0x8810.
  The `ld` at 0x2b14c loads 8 bytes from a1 (arg1 at entry) +0x8818.
  The `sd` at 0x2b15c stores 8 bytes to a1 (arg1 at entry) +0x8810.
  The `sd` at 0x2b16c stores 8 bytes to a1 (arg1 at entry) +0x8818.
  The `lbu` at 0x2b178 loads 1 byte from a1 (arg1 at entry) +0x8830.
  2 such `sb` accesses store 1 byte to a1 (arg1 at entry) +0x8830, including `sb` at 0x2b1a0, `sb` at 0x2b1e8.
  The `sd` at 0x2b1a4 stores 8 bytes to a1 (arg1 at entry) +0x8828.
  The `sw` at 0x2b1b8 stores 4 bytes to a1 (arg1 at entry) +0x8848.
  The `ld` at 0x2b1c8 loads 8 bytes from a1 (arg1 at entry) +0x8828.
  The `lw` at 0x2b1ec loads 4 bytes from a1 (arg1 at entry) +0x8820.
  The `sw` at 0x2b1f8 stores 4 bytes to a1 (arg1 at entry) +0x8820.
  The `jal` at 0x2b11c calls hubni_error_handler with a0=sym(.rodata)+46952, a1=0x1, a2=?, a3=a3 at entry (arg3), a6=[([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)-7926335344140091104]:8, a7=0x1fffffff000000.
  The `jal` at 0x2b18c calls check_hub_error_rates with a0=a1+34760, a1=0x87c8, a2=?, a3=[a1+34864]:1, a4=0xffff.
  The `beq` branch at 0x2b090 targets 0x2b124, is taken when (at(=[a1+34792]:8) & 0x2) == 0, and falls through when (at(=[a1+34792]:8) & 0x2) != 0.
  The `beq` branch at 0x2b0fc targets 0x2b1fc, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x2b110 targets 0x2b124, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x2b138 targets 0x2b178, is taken when (a1(?) & 0x2) == 0, and falls through when (a1(?) & 0x2) != 0.
  The `beq` branch at 0x2b168 targets 0x2b1ec, is taken when a4(=0xffff) == a6(?), and falls through when a4(=0xffff) != a6(?).
  The `beq` branch at 0x2b170 targets 0x2b1ec, is taken when a4(=0xffff) == a2(?), and falls through when a4(=0xffff) != a2(?).
  The `beq` branch at 0x2b17c targets 0x2b1c8, is taken when a3(=[a1+34864]:1) == 0, and falls through when a3(=[a1+34864]:1) != 0.
  The `beq` branch at 0x2b194 targets 0x2b1a8, is taken when v0(=ret(check_hub_error_rates)) == 0, and falls through when v0(=ret(check_hub_error_rates)) != 0.
  The `beq` branch at 0x2b1dc targets 0x2b1ac, is taken when a4(=[sym(hub_print_usecs)]) >= a5(?) (unsigned), and falls through when a4(=[sym(hub_print_usecs)]) < a5(?) (unsigned).
  The `beq` branch at 0x2b1e4 targets 0x2b1a8 and is always taken.
  The `beq` branch at 0x2b1f4 targets 0x2b178 and is always taken.
  The `bne` branch at 0x2b1fc targets 0x2b110, is taken when t0(=0xff) != a5(?), and falls through when t0(=0xff) == a5(?).
  The `beq` branch at 0x2b204 targets 0x2b108 and is always taken.
  The return at 0x2b1c0 has v0 = ?.
- `init_hub_stats` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2b20c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2b20c-0x2b358 (332 bytes).
  It occupies 332 bytes.
  The `lh` at 0x2b23c loads 2 bytes from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0.
  The `sh` at 0x2b264 stores 2 bytes to a1 (arg1 at entry) +0x87ca.
  The `sb` at 0x2b26c stores 1 byte to a1 (arg1 at entry) +0x87c8.
  The `sh` at 0x2b274 stores 2 bytes to a1 (arg1 at entry) +0x87cc.
  The `ld` at 0x2b278 loads 8 bytes from abs 0x9200000001030100.
  The `sd` at 0x2b280 stores 8 bytes to a1 (arg1 at entry) +0x87d0.
  The `ld` at 0x2b288 loads 8 bytes from table(0x9200000001e80000) +0x0.
  The `sd` at 0x2b290 stores 8 bytes to a1 (arg1 at entry) +0x87e8.
  The `sd` at 0x2b294 stores 8 bytes to table(0x9200000001c00130) +0x0.
  The `ld` at 0x2b298 loads 8 bytes from table(0x9200000001e80120) +0x0.
  The `ld` at 0x2b29c loads 8 bytes from abs 0x9200000001604200.
  The `sw` at 0x2b2dc stores 4 bytes to a1 (arg1 at entry) +0x8848.
  The `sd` at 0x2b2e4 stores 8 bytes to a1 (arg1 at entry) +0x87e0.
  The `sd` at 0x2b300 stores 8 bytes to a1 (arg1 at entry) +0x8838.
  The `lh` at 0x2b310 loads 2 bytes from a1 (arg1 at entry) +0x861a.
  The `sd` at 0x2b314 stores 8 bytes to a1 (arg1 at entry) +0x8828.
  The `sb` at 0x2b31c stores 1 byte to a1 (arg1 at entry) +0x8830.
  The `ld` at 0x2b354 loads 8 bytes from a1 (arg1 at entry) +0x8838.
  The `jal` at 0x2b244 calls bzero with a0=a1+34760, a1=0x80, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2b2e8 calls kmem_alloc_node with a0=0x50, a1=0x1, a2=a0 at entry (arg0), a3=?, a5=0xc8, a6=0x3b9aca00, a7=table(0x9200000001c00000).
  The `jal` at 0x2b30c calls sprintf with a0=?, a1=sym(.rodata)+46952, a2=[a1+34330]:2, a3=?, a4=sym(.rodata)+46952.
  The `jal` at 0x2b344 calls assfail with a0=sym(.rodata)+46952, a1=sym(.rodata)+46952, a2=0x116, a3=?.
  The `beq` branch at 0x2b2fc targets 0x2b338, is taken when v0(=ret(kmem_alloc_node)) == 0, and falls through when v0(=ret(kmem_alloc_node)) != 0.
  The `beq` branch at 0x2b350 targets 0x2b308 and is always taken.
  The return at 0x2b330 has v0 = ret(sprintf).
- `memerror_handle_uce` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2b358 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2b358-0x2b3f8 (160 bytes).
  It occupies 160 bytes.
  The `ld` at 0x2b3b8 loads 8 bytes from a2 (arg2 at entry) +0xf8.
  The `sd` at 0x2b3e4 stores 8 bytes to a3 (arg3 at entry) +0x0.
  The `jal` at 0x2b39c calls nasid_to_partid with a0=?, a1=?, a2=0xfffffc000, a3=0x7fffc0.
  The `jal` at 0x2b3a4 calls part_id with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2b3e8 calls set_dir_state_POISONED with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x2b3ac targets 0x2b3e8, is taken when s3(=ret(nasid_to_partid)) == v0(=ret(part_id)), and falls through when s3(=ret(nasid_to_partid)) != v0(=ret(part_id)).
  The `beq` branch at 0x2b3c4 targets 0x2b3dc, is taken when a4(?) == a5(=0x10), and falls through when a4(?) != a5(=0x10).
  The `beq` branch at 0x2b3e0 targets 0x2b3cc and is always taken.
  The `beq` branch at 0x2b3f0 targets 0x2b3cc and is always taken.
  The return at 0x2b3d4 has v0 = 0x1.
- `cache_sidx_to_paddr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2b3f8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2b3f8-0x2b454 (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x2b418 calls ecc_cacheop_get with a0=0x7, a1=?, a2=sp-48, a3=a3 at entry (arg3).
  The return at 0x2b44c has v0 = ?.
- `kl_compute_parity` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2b454 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2b454-0x2b4fc (168 bytes).
  It occupies 168 bytes.
  The `jal` at 0x2b4a8 calls ecc_bitcount with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x2b48c targets 0x2b4d0, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `beq` branch at 0x2b4bc targets 0x2b4c8, is taken when (v0(=ret(ecc_bitcount)) & 0x1) == 0, and falls through when (v0(=ret(ecc_bitcount)) & 0x1) != 0.
  The `bne` branch at 0x2b4c8 targets 0x2b4a8, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The return at 0x2b4f4 has v0 = one of 0x0, ?.
- `kl_compute_dir_ecc_cb` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2b4fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2b4fc-0x2b5bc (192 bytes).
  It occupies 192 bytes.
  The `ld` at 0x2b550 loads 8 bytes from ?.
  The `jal` at 0x2b558 calls ecc_bitcount with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x2b524 targets 0x2b5a8, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x2b56c targets 0x2b578, is taken when (v0(=ret(ecc_bitcount)) & 0x1) == 0, and falls through when (v0(=ret(ecc_bitcount)) & 0x1) != 0.
  The `beq` branch at 0x2b578 targets 0x2b54c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x2b5b4 targets 0x2b538 and is always taken.
  The return at 0x2b5a0 has v0 = ?.
- `kl_compute_mem_ecc_cb` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2b5bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2b5bc-0x2b630 (116 bytes).
  It occupies 116 bytes.
  The `ld` at 0x2b5ec loads 8 bytes from ?.
  The `jal` at 0x2b5f0 calls ecc_bitcount with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x2b608 targets 0x2b5e4, is taken when s0(?) < 0x8 (signed), and falls through when s0(?) >= 0x8 (signed).
  The return at 0x2b628 has v0 = ?.
- `mdir_xlate_syndrome` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2b630 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2b630-0x2b86c (572 bytes).
  It occupies 572 bytes.
  The `lbu` at 0x2b678 loads 1 byte from a0 (arg0 at entry) +0x0.
  8 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x2b684, `lbu` at 0x2b694, `lbu` at 0x2b6a4.
  The `lbu` at 0x2b774 loads 1 byte from sym(.rodata) +0xb854.
  The `lw` at 0x2b778 loads 4 bytes from sym(.rodata) +0xb850.
  The `ld` at 0x2b77c loads 8 bytes from sym(.rodata) +0xb848.
  The `sdl` at 0x2b780 stores 8 bytes to ?.
  The `sdr` at 0x2b784 stores 8 bytes to ?.
  3 such `swl` accesses store 4 bytes to ?, including `swl` at 0x2b788, `swl` at 0x2b7cc, `swl` at 0x2b810.
  3 such `swr` accesses store 4 bytes to ?, including `swr` at 0x2b78c, `swr` at 0x2b7d0, `swr` at 0x2b814.
  4 such `sb` accesses store 1 byte to ?, including `sb` at 0x2b798, `sb` at 0x2b7dc, `sb` at 0x2b818.
  The `lbu` at 0x2b7c4 loads 1 byte from sym(.rodata) +0xb87c.
  The `lw` at 0x2b7c8 loads 4 bytes from sym(.rodata) +0xb878.
  The `lbu` at 0x2b804 loads 1 byte from sym(.rodata) +0xb885.
  The `lw` at 0x2b808 loads 4 bytes from sym(.rodata) +0xb880.
  The `lbu` at 0x2b80c loads 1 byte from sym(.rodata) +0xb884.
  The `jal` at 0x2b670 calls sprintf with a0=a0 at entry (arg0), a1=sym(.rodata)+47160, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2b73c calls sprintf with a0=?, a1=sym(.rodata)+47160, a2=?, a3=?, a4=0x7f, a7=sym(.rodata)+47160.
  The `jal` at 0x2b750 calls strcat with a0=?, a1=sym(.rodata)+47160, a2=?, a3=?.
  The `jal` at 0x2b85c calls sprintf with a0=?, a1=sym(.rodata)+47160, a2=?, a3=?, a4=0x7f, a7=sym(.rodata)+47160.
  The `beq` branch at 0x2b650 targets 0x2b79c, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x2b65c targets 0x2b7e0, is taken when a1 == at(=0x2), and falls through when a1 != at(=0x2).
  The `beq` branch at 0x2b664 targets 0x2b828, is taken when a1 == v0(=0x1), and falls through when a1 != v0(=0x1).
  The `beq` branch at 0x2b67c targets 0x2b6d0, is taken when v0(=[a0]:1) == 0, and falls through when v0(=[a0]:1) != 0.
  The `beq` branch at 0x2b68c targets 0x2b6d0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x2b69c targets 0x2b6d0, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x2b6ac targets 0x2b6d0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2b6bc targets 0x2b6d0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x2b6c8 targets 0x2b684, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x2b6d0 targets 0x2b7c0, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `beq` branch at 0x2b6dc targets 0x2b770, is taken when s1(=a2) == a4(=0x7f), and falls through when s1(=a2) != a4(=0x7f).
  The `bne` branch at 0x2b6e8 targets 0x2b710, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x2b6f0 targets 0x2b71c and is always taken.
  The `beq` branch at 0x2b708 targets 0x2b71c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x2b710 targets 0x2b6f8, is taken when v0(?) != s1(=a2), and falls through when v0(?) == s1(=a2).
  The `beq` branch at 0x2b71c targets 0x2b800, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x2b728 targets 0x2b848, is taken when (a6(?) & 0x80) == 0, and falls through when (a6(?) & 0x80) != 0.
  The `bne` branch at 0x2b770 targets 0x2b6e0, is taken when s2(=a1) != 0, and falls through when s2(=a1) == 0.
  The `beq` branch at 0x2b794 targets 0x2b744 and is always taken.
  The `beq` branch at 0x2b7b8 targets 0x2b668 and is always taken.
  The `beq` branch at 0x2b7d8 targets 0x2b744 and is always taken.
  The `beq` branch at 0x2b7f8 targets 0x2b668 and is always taken.
  The `beq` branch at 0x2b820 targets 0x2b744 and is always taken.
  The `beq` branch at 0x2b840 targets 0x2b668 and is always taken.
  The `beq` branch at 0x2b864 targets 0x2b748 and is always taken.
  The return at 0x2b768 has v0 = ?.
- `mdir_xlate_addr_mem` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2b86c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2b86c-0x2b910 (164 bytes).
  It occupies 164 bytes.
  The `ld` at 0x2b870 loads 8 bytes from abs 0x9200000001780008.
  The `jal` at 0x2b8e0 calls sprintf with a0=a0 at entry (arg0), a1=sym(.rodata)+47160, a2=?, a3=?, a4=a2 at entry (arg2).
  The `jal` at 0x2b900 calls sprintf with a0=a0 at entry (arg0), a1=sym(.rodata)+47160, a2=?, a3=?, a4=a2 at entry (arg2), a6=a1 at entry (arg1).
  The `bltz` branch at 0x2b8a8 targets 0x2b8f4, is taken when a2 < 0 (signed), and falls through when a2 >= 0 (signed).
  The `beq` branch at 0x2b908 targets 0x2b8ec and is always taken.
  The return at 0x2b8ec has v0 = ret(sprintf).
- `mdir_xlate_addr_pdir` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2b910 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2b910-0x2b990 (128 bytes).
  It occupies 128 bytes.
  The `ld` at 0x2b914 loads 8 bytes from abs 0x9200000001780008.
  The `jal` at 0x2b960 calls sprintf with a0=a0 at entry (arg0), a1=sym(.rodata)+47160, a2=?, a3=a3 at entry (arg3), a4=a2 at entry (arg2).
  The `jal` at 0x2b980 calls sprintf with a0=a0 at entry (arg0), a1=sym(.rodata)+47160, a2=?, a3=?, a4=a2 at entry (arg2).
  The `bltz` branch at 0x2b948 targets 0x2b974, is taken when a2 < 0 (signed), and falls through when a2 >= 0 (signed).
  The `beq` branch at 0x2b988 targets 0x2b96c and is always taken.
  The return at 0x2b96c has v0 = ret(sprintf).
- `mdir_xlate_addr_sdir` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2b990 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2b990-0x2b9e0 (80 bytes).
  It occupies 80 bytes.
  The `ld` at 0x2b994 loads 8 bytes from abs 0x9200000001780008.
  The `jal` at 0x2b9cc calls sprintf with a0=a0 at entry (arg0), a1=sym(.rodata)+47160, a2=?, a3=?, a4=0x1ffffffff.
  The return at 0x2b9d8 has v0 = ret(sprintf).
- `sbe_printf` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2b9e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2b9e0-0x2ba58 (120 bytes).
  It occupies 120 bytes.
  The `jal` at 0x2ba3c calls vsprintf with a0=(sp + one of -0xd0, -0xcf), a1=a0 at entry (arg0), a2=sp-56, a3=a3 at entry (arg3).
  The `jal` at 0x2ba48 calls cmn_err with a0=0x4, a1=sp-208, a2=?, a3=?.
  The `bne` branch at 0x2ba08 targets 0x2ba18, is taken when at(=[sym(sbe_log_errors)]) != 0, and falls through when at(=[sym(sbe_log_errors)]) == 0.
  The `bne` branch at 0x2ba1c targets 0x2ba34, is taken when v0(=[sym(sbe_report_cons)]) != 0, and falls through when v0(=[sym(sbe_report_cons)]) == 0.
  The `beq` branch at 0x2ba2c targets 0x2ba38 and is always taken.
  The `beq` branch at 0x2ba50 targets 0x2ba10 and is always taken.
  The return at 0x2ba10 has v0 = one of ?, ret(cmn_err).
- `bank_fatal` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ba58 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ba58-0x2bb68 (272 bytes).
  It occupies 272 bytes.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc400, including `ld` at 0x2ba94, `ld` at 0x2bb00, `ld` at 0x2bb34.
  The `lh` at 0x2baa4 loads 2 bytes from (sym(nasid_to_compact_node) + (a2 + a2)) +0x0.
  3 such `ld` accesses load 8 bytes from [-0x3c00]:8 +0x0, including `ld` at 0x2baa8, `ld` at 0x2bb08, `ld` at 0x2bb3c.
  The `ld` at 0x2bab8 loads 8 bytes from ([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a2 + a2))]:2 << 0x3)) +0x0.
  The `lh` at 0x2bad8 loads 2 bytes from [([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a2 + a2))]:2 << 0x3))]:8 +0x861a.
  The `lh` at 0x2bb04 loads 2 bytes from ?.
  The `ld` at 0x2bb14 loads 8 bytes from ?.
  The `ld` at 0x2bb20 loads 8 bytes from table(0x8850) +0x0.
  The `sw` at 0x2bb30 stores 4 bytes to entry(0x8850) +0x0.
  The `lh` at 0x2bb38 loads 2 bytes from abs 0xffffffffffffc42a.
  The `ld` at 0x2bb48 loads 8 bytes from ([[-0x3c00]:8]:8 + ([-0x3bd6]:2 << 0x3)) +0x0.
  The `lh` at 0x2bb5c loads 2 bytes from [([[-0x3c00]:8]:8 + ([-0x3bd6]:2 << 0x3))]:8 +0x8596.
  The `jal` at 0x2ba84 calls cmn_err with a0=0x404, a1=sym(.rodata)+47160, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2bad4 calls cmn_err with a0=0x404, a1=sym(.rodata)+47160, a2=[[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a2 + a2))]:2 << 0x3))]:8+34330]:2, a3=a0 at entry (arg0), a4=a1 at entry (arg1), a5=(a2 + a2).
  The `jal` at 0x2bae4 calls cmn_err with a0=0x404, a1=sym(.rodata)+47160, a2=?, a3=?.
  The `jal` at 0x2baec calls get_nasid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2bb58 calls intr_disconnect_level with a0=[[([[-0x3c00]:8]:8 + ([-0x3bd6]:2 << 0x3))]:8+34198]:2, a1=0x7d, a2=([-0x3bd6]:2 << 0x3), a3=?.
  The `beq` branch at 0x2ba6c targets 0x2ba7c, is taken when at(=[sym(sbe_mfr_override)]) == 0, and falls through when at(=[sym(sbe_mfr_override)]) != 0.
  The `beq` branch at 0x2baf8 targets 0x2bb34, is taken when a2 == v0(=ret(get_nasid)), and falls through when a2 != v0(=ret(get_nasid)).
  The `beq` branch at 0x2bb2c targets 0x2ba74 and is always taken.
  The `beq` branch at 0x2bb60 targets 0x2bb00 and is always taken.
  The return at 0x2ba74 has v0 = ?.
- `memerror_sbe_intr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2bb68 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2bb68-0x2c500 (2456 bytes).
  It occupies 2456 bytes.
  5 such `ld` accesses load 8 bytes from abs 0xffffffffffffc400, including `ld` at 0x2bba8, `ld` at 0x2c038, `ld` at 0x2c13c.
  6 such `lh` accesses load 2 bytes from ?, including `lh` at 0x2bbb0, `lh` at 0x2c03c, `lh` at 0x2c140.
  5 such `ld` accesses load 8 bytes from [-0x3c00]:8 +0x0, including `ld` at 0x2bbb4, `ld` at 0x2c040, `ld` at 0x2c144.
  16 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2bbc0, `ld` at 0x2bbcc, `ld` at 0x2bbe8.
  26 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2bbd0, `lw` at 0x2bcf4, `lw` at 0x2bd1c.
  The `ld` at 0x2bcc4 loads 8 bytes from sym(.rodata) +0xba00.
  The `lw` at 0x2bcc8 loads 4 bytes from sym(.rodata) +0xba08.
  23 such `sw` accesses store 4 bytes to ?, including `sw` at 0x2bd08, `sw` at 0x2bd18, `sw` at 0x2bd2c.
  3 such `lh` accesses load 2 bytes from table(0x861a) +0x0, including `lh` at 0x2c06c, `lh` at 0x2c174, `lh` at 0x2c4d8.
  The `sh` at 0x2c268 stores 2 bytes to ?.
  The `ll` at 0x2c3bc loads 4 bytes from ?.
  The `sc` at 0x2c3c8 stores 4 bytes to ?.
  The `jal` at 0x2bc44 calls sbe_printf [0x2b9e0] with a0=sym(.rodata)+47160, a1=?, a2=?, a3=?.
  The `jal` at 0x2bc5c calls log_md_errors with a0=?, a1=0x10000, a2=?, a3=?.
  The `jal` at 0x2bc94 calls get_nasid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2bd78 calls sbe_printf [0x2b9e0] with a0=sym(.rodata)+47160, a1=?, a2=?, a3=?.
  The `jal` at 0x2bd8c calls sbe_printf [0x2b9e0] with a0=sym(.rodata)+47160, a1=?, a2=?, a3=?.
  The `jal` at 0x2bf80 calls sbe_printf [0x2b9e0] with a0=sym(.rodata)+47160, a1=sym(.rodata)+47160, a2=?, a3=?.
  The `jal` at 0x2bfe8 calls mdir_xlate_syndrome with a0=sp-224, a1=one of 0x1, 0x2, a2=?, a3=?.
  The `jal` at 0x2c014 calls sbe_printf [0x2b9e0] with a0=sym(.rodata)+47160, a1=?, a2=?, a3=sp-224, a4=sym(.rodata)+47160.
  The `jalr` at 0x2c02c calls (unknown callee) with a0=sp-224, a1=?, a2=?, a3=?.
  The `jal` at 0x2c068 calls sbe_printf [0x2b9e0] with a0=sym(.rodata)+47160, a1=entry(0x861a), a2=?, a3=sp-224.
  The `jal` at 0x2c070 calls memory_present with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2c080 calls page_ispoison with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2c090 calls sbe_printf [0x2b9e0] with a0=sym(.rodata)+47160, a1=?, a2=?, a3=?.
  The `jal` at 0x2c0b8 calls sbe_printf [0x2b9e0] with a0=sym(.rodata)+47160, a1=sym(.rodata)+47160, a2=?, a3=?.
  The `jal` at 0x2c0f4 calls mdir_xlate_syndrome with a0=sp-224, a1=0x0, a2=?, a3=?.
  The `jal` at 0x2c120 calls sbe_printf [0x2b9e0] with a0=sym(.rodata)+47160, a1=?, a2=sp-224, a3=sym(.rodata)+47160.
  The `jal` at 0x2c130 calls mdir_xlate_addr_mem with a0=sp-224, a1=?, a2=?, a3=?.
  The `jal` at 0x2c170 calls sbe_printf [0x2b9e0] with a0=sym(.rodata)+47160, a1=entry(0x861a), a2=?, a3=sp-224.
  The `jal` at 0x2c188 calls memory_present with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2c198 calls page_ispoison with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2c1a8 calls sbe_printf [0x2b9e0] with a0=sym(.rodata)+47160, a1=?, a2=?, a3=?.
  The `jal` at 0x2c1f8 calls bank_fatal [0x2ba58] with a0=?, a1=sp-224, a2=?, a3=?.
  The `jal` at 0x2c284 calls sbe_printf [0x2b9e0] with a0=sym(.rodata)+47160, a1=0x3ffffffe, a2=?, a3=?.
  The `jal` at 0x2c294 calls sbe_printf [0x2b9e0] with a0=sym(.rodata)+47160, a1=?, a2=?, a3=?.
  The `jal` at 0x2c2ac calls sbe_printf [0x2b9e0] with a0=sym(.rodata)+47160, a1=?, a2=?, a3=?.
  The `jal` at 0x2c2dc calls sbe_printf [0x2b9e0] with a0=sym(.rodata)+47160, a1=?, a2=?, a3=?.
  The `jal` at 0x2c2ec calls sbe_printf [0x2b9e0] with a0=sym(.rodata)+47160, a1=?, a2=?, a3=?.
  The `jal` at 0x2c330 calls sbe_printf [0x2b9e0] with a0=sym(.rodata)+47160, a1=?, a2=?, a3=?, a6=0x10.
  The `jal` at 0x2c360 calls sbe_printf [0x2b9e0] with a0=sym(.rodata)+47160, a1=?, a2=?, a3=sp-224.
  The `jal` at 0x2c368 calls sbe_printf [0x2b9e0] with a0=sym(.rodata)+47160, a1=?, a2=?, a3=?.
  The `jal` at 0x2c378 calls page_discard with a0=?, a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x2c398 calls bank_fatal [0x2ba58] with a0=?, a1=sp-224, a2=?, a3=?, a6=0x10.
  The `jal` at 0x2c3d4 calls __cache_wb_inval with a0=?, a1=0x8, a2=0xa800000000000000, a3=table(0x0), a4=table(0x0).
  The `jal` at 0x2c3e4 calls sbe_printf [0x2b9e0] with a0=sym(.rodata)+47160, a1=?, a2=?, a3=?.
  The `jal` at 0x2c408 calls bank_fatal [0x2ba58] with a0=?, a1=sp-224, a2=?, a3=?, a6=0x10.
  The `jal` at 0x2c428 calls sbe_printf [0x2b9e0] with a0=sym(.rodata)+47160, a1=0x3ffffffe, a2=?, a3=?.
  The `jal` at 0x2c438 calls cmn_err with a0=0x0, a1=sym(.rodata)+47160, a2=?, a3=?.
  The `jal` at 0x2c464 calls cmn_err with a0=0x4, a1=sym(.rodata)+47160, a2=sym(.rodata)+47160, a3=?, a7=-0x1.
  The `jal` at 0x2c498 calls cmn_err with a0=0x4, a1=sym(.rodata)+47160, a2=?, a3=?, a4=sym(.rodata)+47160.
  The `jal` at 0x2c4d4 calls cmn_err with a0=0x4, a1=sym(.rodata)+47160, a2=entry(0x861a), a3=?, a4=sp-224.
  The `jal` at 0x2c4e4 calls cmn_err with a0=0x10, a1=sym(.rodata)+47160, a2=?, a3=?.
  The `beq` branch at 0x2bb94 targets 0x2bc94, is taken when a0 == 0, and falls through when a0 != 0.
  The `bne` branch at 0x2bbd4 targets 0x2bc68, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x2bbf8 targets 0x2bc5c, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bltz` branch at 0x2bc04 targets 0x2bc5c, is taken when a5(?) < 0 (signed), and falls through when a5(?) >= 0 (signed).
  The `bltz` branch at 0x2bc20 targets 0x2bca8, is taken when s6(?) < 0 (signed), and falls through when s6(?) >= 0 (signed).
  The `bltz` branch at 0x2bc28 targets 0x2bca8, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `bne` branch at 0x2bc30 targets 0x2bc64, is taken when s7(=a0) != 0, and falls through when s7(=a0) == 0.
  The `beq` branch at 0x2bc38 targets 0x2bd64, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bgez` branch at 0x2bc4c targets 0x2bc68, is taken when s1(?) >= 0 (signed), and falls through when s1(?) < 0 (signed).
  The `beq` branch at 0x2bc54 targets 0x2bd78 and is always taken.
  The `beq` branch at 0x2bca0 targets 0x2bba0 and is always taken.
  The `bltz` branch at 0x2bcd0 targets 0x2bf68, is taken when s6(?) < 0 (signed), and falls through when s6(?) >= 0 (signed).
  The `bltz` branch at 0x2bce4 targets 0x2c0a0, is taken when ra(?) < 0 (signed), and falls through when ra(?) >= 0 (signed).
  The `bne` branch at 0x2bcec targets 0x2c438, is taken when at(=[sym(panic_on_sbe)]) != 0, and falls through when at(=[sym(panic_on_sbe)]) == 0.
  The `beq` branch at 0x2bd00 targets 0x2bd1c, is taken when v0(?) >= a0(=[sym(time)]) (signed), and falls through when v0(?) < a0(=[sym(time)]) (signed).
  The `beq` branch at 0x2bd14 targets 0x2bd20 and is always taken.
  The `beq` branch at 0x2bd28 targets 0x2c1ec, is taken when v0(?) >= 0x258 (signed), and falls through when v0(?) < 0x258 (signed).
  The `bne` branch at 0x2bd30 targets 0x2bc64, is taken when s5(=one of 0x0, 0x1) != 0, and falls through when s5(=one of 0x0, 0x1) == 0.
  The `blez` branch at 0x2bd54 targets 0x2c3f4, is taken when a4(?) <= 0 (signed), and falls through when a4(?) > 0 (signed).
  The `beq` branch at 0x2bd5c targets 0x2c4f4 and is always taken.
  The `bltz` branch at 0x2bd68 targets 0x2c294, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `bgez` branch at 0x2bd70 targets 0x2bd88, is taken when s1(?) >= 0 (signed), and falls through when s1(?) < 0 (signed).
  The `beq` branch at 0x2bd80 targets 0x2bc68 and is always taken.
  The `beq` branch at 0x2bd94 targets 0x2bc68 and is always taken.
  The `beq` branch at 0x2bda8 targets 0x2be5c, is taken when v0(?) >= a4(?) (signed), and falls through when v0(?) < a4(?) (signed).
  The `beq` branch at 0x2bdc0 targets 0x2be00, is taken when a2(=[sym(time)]) >= a5(?) (signed), and falls through when a2(=[sym(time)]) < a5(?) (signed).
  The `beq` branch at 0x2bdc8 targets 0x2bdfc, is taken when v0(?) == a3(?), and falls through when v0(?) != a3(?).
  The `beq` branch at 0x2be0c targets 0x2be5c, is taken when v0(?) >= a4(?) (signed), and falls through when v0(?) < a4(?) (signed).
  The `beq` branch at 0x2be20 targets 0x2bda0, is taken when a1(=[sym(time)]) >= a6(?) (signed), and falls through when a1(=[sym(time)]) < a6(?) (signed).
  The `beq` branch at 0x2be28 targets 0x2bd9c, is taken when v0(?) == a3(?), and falls through when v0(?) != a3(?).
  The `beq` branch at 0x2be54 targets 0x2bd9c and is always taken.
  The `blez` branch at 0x2be5c targets 0x2c2fc, is taken when a3(?) <= 0 (signed), and falls through when a3(?) > 0 (signed).
  The `beq` branch at 0x2be6c targets 0x2be84 and is always taken.
  The `beq` branch at 0x2be7c targets 0x2bf0c, is taken when v0(?) >= a3(?) (signed), and falls through when v0(?) < a3(?) (signed).
  The `bltz` branch at 0x2be84 targets 0x2beec, is taken when s6(?) < 0 (signed), and falls through when s6(?) >= 0 (signed).
  The `beq` branch at 0x2be8c targets 0x2bea8, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `beq` branch at 0x2bea0 targets 0x2bf00, is taken when (a5(?) & 0x1) == 0, and falls through when (a5(?) & 0x1) != 0.
  The `beq` branch at 0x2beb0 targets 0x2bf0c, is taken when v0(?) >= a3(?) (signed), and falls through when v0(?) < a3(?) (signed).
  The `bltz` branch at 0x2beb8 targets 0x2bf50, is taken when s6(?) < 0 (signed), and falls through when s6(?) >= 0 (signed).
  The `beq` branch at 0x2bec0 targets 0x2be74, is taken when s8(?) == 0, and falls through when s8(?) != 0.
  The `bne` branch at 0x2bed0 targets 0x2be74, is taken when (a6(?) & 0x1) != 0, and falls through when (a6(?) & 0x1) == 0.
  The `bnel` branch at 0x2bedc targets 0x2be78, is taken when a7(?) != a1(?), and falls through when a7(?) == a1(?); its branch-likely delay slot `addiu v0,v0,1` at 0x2bee0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x2bee4 targets 0x2bf0c and is always taken.
  The `beq` branch at 0x2bef8 targets 0x2be8c, is taken when (t0(?) & 0x1) == 0, and falls through when (t0(?) & 0x1) != 0.
  The `bnel` branch at 0x2bf04 targets 0x2beac, is taken when a5(?) != a1(?), and falls through when a5(?) == a1(?); its branch-likely delay slot `addiu v0,v0,1` at 0x2bf08 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x2bf0c targets 0x2c1b8, is taken when v0(?) != a3(?), and falls through when v0(?) == a3(?).
  The `beq` branch at 0x2bf14 targets 0x2c400, is taken when a3(?) == a6(=0x10), and falls through when a3(?) != a6(=0x10).
  The `beq` branch at 0x2bf48 targets 0x2bc64 and is always taken.
  The `bne` branch at 0x2bf58 targets 0x2bed8, is taken when (t1(?) & 0x1) != 0, and falls through when (t1(?) & 0x1) == 0.
  The `beq` branch at 0x2bf60 targets 0x2bec0 and is always taken.
  The `beq` branch at 0x2bf68 targets 0x2bf78, is taken when s7(=a0) == 0, and falls through when s7(=a0) != 0.
  The `beq` branch at 0x2bf70 targets 0x2bf7c and is always taken.
  The `bltz` branch at 0x2bff8 targets 0x2c2bc, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `beq` branch at 0x2c01c targets 0x2c2d4, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `beq` branch at 0x2c078 targets 0x2c2dc, is taken when v0(=ret(memory_present)) == 0, and falls through when v0(=ret(memory_present)) != 0.
  The `beq` branch at 0x2c088 targets 0x2c3a8, is taken when v0(=ret(page_ispoison)) == 0, and falls through when v0(=ret(page_ispoison)) != 0.
  The `beq` branch at 0x2c098 targets 0x2bce0 and is always taken.
  The `beq` branch at 0x2c0a0 targets 0x2c0b4, is taken when s7(=a0) == 0, and falls through when s7(=a0) != 0.
  The `beq` branch at 0x2c0ac targets 0x2c0b8 and is always taken.
  The `bltz` branch at 0x2c108 targets 0x2c2c8, is taken when ra(?) < 0 (signed), and falls through when ra(?) >= 0 (signed).
  The `beq` branch at 0x2c180 targets 0x2c448, is taken when a6(?) == a7(=-0x1), and falls through when a6(?) != a7(=-0x1).
  The `beq` branch at 0x2c190 targets 0x2c2ec, is taken when v0(=ret(memory_present)) == 0, and falls through when v0(=ret(memory_present)) != 0.
  The `beq` branch at 0x2c1a0 targets 0x2c208, is taken when v0(=ret(page_ispoison)) == 0, and falls through when v0(=ret(page_ispoison)) != 0.
  The `beq` branch at 0x2c1b0 targets 0x2bce8 and is always taken.
  The `beq` branch at 0x2c1d0 targets 0x2c328, is taken when t0(=[sym(sbe_max_per_page)]) == a0(?), and falls through when t0(=[sym(sbe_max_per_page)]) != a0(?).
  The `beq` branch at 0x2c1d8 targets 0x2c390, is taken when t8(=[sym(sbe_maxout)]) == a0(?), and falls through when t8(=[sym(sbe_maxout)]) != a0(?).
  The `beq` branch at 0x2c1e4 targets 0x2bc64 and is always taken.
  The `beq` branch at 0x2c200 targets 0x2bc68 and is always taken.
  The `bgez` branch at 0x2c230 targets 0x2c2ac, is taken when ra(?) >= 0 (signed), and falls through when ra(?) < 0 (signed).
  The `bltz` branch at 0x2c27c targets 0x2c428, is taken when ra(?) < 0 (signed), and falls through when ra(?) >= 0 (signed).
  The `beq` branch at 0x2c28c targets 0x2bcec and is always taken.
  The `bgez` branch at 0x2c29c targets 0x2bc68, is taken when s1(?) >= 0 (signed), and falls through when s1(?) < 0 (signed).
  The `beq` branch at 0x2c2a4 targets 0x2bd78 and is always taken.
  The `beq` branch at 0x2c2b4 targets 0x2bce8 and is always taken.
  The `beq` branch at 0x2c2c0 targets 0x2c008 and is always taken.
  The `beq` branch at 0x2c2cc targets 0x2c118 and is always taken.
  The `beq` branch at 0x2c2d4 targets 0x2c024 and is always taken.
  The `beq` branch at 0x2c2e4 targets 0x2bce0 and is always taken.
  The `beq` branch at 0x2c2f4 targets 0x2bce8 and is always taken.
  The `beq` branch at 0x2c2fc targets 0x2bf14, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x2c314 targets 0x2c418, is taken when a4(=[sym(sbe_max_per_page)]) != v0(?), and falls through when a4(=[sym(sbe_max_per_page)]) == v0(?).
  The `beq` branch at 0x2c388 targets 0x2bc64 and is always taken.
  The `beq` branch at 0x2c3a0 targets 0x2bc68 and is always taken.
  The `beql` branch at 0x2c3cc targets 0x2c3bc, is taken when a4(=table(0x0)) == 0, and falls through when a4(=table(0x0)) != 0; its branch-likely delay slot `nop` at 0x2c3d0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x2c3ec targets 0x2bce0 and is always taken.
  The `beq` branch at 0x2c3f8 targets 0x2bf18 and is always taken.
  The `beq` branch at 0x2c410 targets 0x2bc68 and is always taken.
  The `beq` branch at 0x2c418 targets 0x2c394, is taken when a2(=[sym(sbe_maxout)]) == v0(?), and falls through when a2(=[sym(sbe_maxout)]) != v0(?).
  The `beq` branch at 0x2c420 targets 0x2c1dc and is always taken.
  The `beq` branch at 0x2c430 targets 0x2bcec and is always taken.
  The `beq` branch at 0x2c440 targets 0x2bcf8 and is always taken.
  The `beq` branch at 0x2c448 targets 0x2c45c, is taken when s7(=a0) == 0, and falls through when s7(=a0) != 0.
  The `beq` branch at 0x2c454 targets 0x2c460 and is always taken.
  The `bgez` branch at 0x2c470 targets 0x2c484, is taken when a3(?) >= 0 (signed), and falls through when a3(?) < 0 (signed).
  The `beq` branch at 0x2c47c targets 0x2c488 and is always taken.
  The `beq` branch at 0x2c4ec targets 0x2c188 and is always taken.
  The `beq` branch at 0x2c4f8 targets 0x2bdb4 and is always taken.
  The return at 0x2bc8c has v0 = one of ?, ret(sbe_printf), ret(bank_fatal).
- `install_eccintr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2c500 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2c500-0x2c558 (88 bytes).
  It occupies 88 bytes.
  The `ld` at 0x2c500 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x2c504 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x2c510 loads 8 bytes from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0.
  The `lh` at 0x2c51c loads 2 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8596.
  The `jal` at 0x2c544 calls intr_connect_level with a0=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34198]:2, a1=0x7d, a2=0x0, a3=sym(memerror_sbe_intr), a4=0x0, a5=0x0, a7=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34198]:2.
  The `beq` branch at 0x2c528 targets 0x2c54c, is taken when a7(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34198]:2) == at(=-0x1), and falls through when a7(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34198]:2) != at(=-0x1).
  The return at 0x2c550 has v0 = one of ?, ret(intr_connect_level).
- `memerror_get_stats` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2c558 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2c558-0x2c5c8 (112 bytes).
  It occupies 112 bytes.
  The `ld` at 0x2c558 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x2c55c loads 8 bytes from [-0x3c00]:8 +0x0.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x0, including `lw` at 0x2c564, `lw` at 0x2c59c.
  The `ld` at 0x2c56c loads 8 bytes from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0.
  The `ld` at 0x2c580 loads 8 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8850.
  The `lw` at 0x2c594 loads 4 bytes from ?.
  The `sw` at 0x2c598 stores 4 bytes to ?.
  The `sw` at 0x2c5bc stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `blez` branch at 0x2c57c targets 0x2c5c0, is taken when a6(=[a2]) <= 0 (signed), and falls through when a6(=[a2]) > 0 (signed).
  The `beq` branch at 0x2c5a8 targets 0x2c5b8, is taken when a3(?) >= t0(=[a2]) (signed), and falls through when a3(?) < t0(=[a2]) (signed).
  The `bne` branch at 0x2c5b0 targets 0x2c58c, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x2c5c0 targets 0x2c5b8 and is always taken.
  The return at 0x2c5b8 has v0 = ?.
- `assign_wards` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2c5c8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2c5c8-0x2c748 (384 bytes).
  It occupies 384 bytes.
  4 such `ld` accesses load 8 bytes from abs 0xffffffffffffc400, including `ld` at 0x2c60c, `ld` at 0x2c644, `ld` at 0x2c688.
  3 such `ld` accesses load 8 bytes from [-0x3c00]:8 +0x0, including `ld` at 0x2c610, `ld` at 0x2c64c, `ld` at 0x2c68c.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2c61c, `ld` at 0x2c658, `ld` at 0x2c694.
  2 such `lw` accesses load 4 bytes from table(0x8f1c) +0x0, including `lw` at 0x2c624, `lw` at 0x2c660.
  The `lh` at 0x2c638 loads 2 bytes from ?.
  The `sh` at 0x2c640 stores 2 bytes to table(0x8f0c) +0x0.
  The `sw` at 0x2c668 stores 4 bytes to table(0x8f1c) +0x0.
  The `lhu` at 0x2c69c loads 2 bytes from ?.
  The `jal` at 0x2c6d0 calls physmem_select_neighbor_node with a0=?, a1=[sym(physmem_max_radius)], a2=sp-64, a3=sym(guardian_selector), a5=0x0.
  The `jal` at 0x2c6f8 calls cmn_err with a0=0x4, a1=sym(.rodata)+48392, a2=?, a3=?.
  The `jal` at 0x2c704 calls cmn_err with a0=0x4, a1=sym(.rodata)+48392, a2=?, a3=?.
  The `blez` branch at 0x2c5fc targets 0x2c714, is taken when v0(=[sym(maxnodes)]) <= 0 (signed), and falls through when v0(=[sym(maxnodes)]) > 0 (signed).
  The `beq` branch at 0x2c604 targets 0x2c73c and is always taken.
  The `beq` branch at 0x2c680 targets 0x2c714, is taken when s0(?) >= v0(=[sym(maxnodes)]) (signed), and falls through when s0(?) < v0(=[sym(maxnodes)]) (signed).
  The `bne` branch at 0x2c6a0 targets 0x2c670, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x2c6a8 targets 0x2c6bc and is always taken.
  The `bne` branch at 0x2c6b4 targets 0x2c60c, is taken when a0(?) != s3(=-0x1), and falls through when a0(?) == s3(=-0x1).
  The `bne` branch at 0x2c6d8 targets 0x2c6b4, is taken when v0(=ret(physmem_select_neighbor_node)) != 0, and falls through when v0(=ret(physmem_select_neighbor_node)) == 0.
  The `bne` branch at 0x2c6e8 targets 0x2c6b4, is taken when s2(?) < 0x8 (signed), and falls through when s2(?) >= 0x8 (signed).
  The `beq` branch at 0x2c70c targets 0x2c718 and is always taken.
  The `beq` branch at 0x2c740 targets 0x2c68c and is always taken.
  The return at 0x2c734 has v0 = one of 0x0, 0x1.
  The instructions from 0x2c6b0 to 0x2c6b0 are not reached by any path from the entry, and their branches are not listed.
- `guardian_selector` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2c748 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2c748-0x2c798 (80 bytes).
  It occupies 80 bytes.
  The `ld` at 0x2c748 loads 8 bytes from abs 0xffffffffffffc400.
  The `ld` at 0x2c74c loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x2c758 loads 8 bytes from ((a0 << 0x3) + [[-0x3c00]:8]:8) +0x0.
  The `lhu` at 0x2c764 loads 2 bytes from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8598.
  The `lw` at 0x2c770 loads 4 bytes from [((a0 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8f1c.
  The `beq` branch at 0x2c768 targets 0x2c790, is taken when at(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34200]:2) == 0, and falls through when at(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34200]:2) != 0.
  The `beq` branch at 0x2c778 targets 0x2c788, is taken when a0(=(a1 << 0x0)) >= a2(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+36636]) (signed), and falls through when a0(=(a1 << 0x0)) < a2(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+36636]) (signed).
  The return at 0x2c780 has v0 = 0x0.
  The return at 0x2c788 has v0 = 0x1.
  The return at 0x2c790 has v0 = 0x0.
- `probe_wards` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2c798 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2c798-0x2c804 (108 bytes).
  It occupies 108 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc400, including `ld` at 0x2c798, `ld` at 0x2c7d4.
  2 such `lw` accesses load 4 bytes from [-0x3c00]:8 +0x8f1c, including `lw` at 0x2c7ac, `lw` at 0x2c7dc.
  The `lh` at 0x2c7d0 loads 2 bytes from ?.
  The `jal` at 0x2c7cc calls probe_md_errors with a0=?, a1=?, a2=[-0x3c00]:8, a3=?.
  The `blez` branch at 0x2c7b4 targets 0x2c7f0, is taken when at(=[[-0x3c00]:8+36636]) <= 0 (signed), and falls through when at(=[[-0x3c00]:8+36636]) > 0 (signed).
  The `bne` branch at 0x2c7e8 targets 0x2c7c4, is taken when s1(?) < a1(=[[-0x3c00]:8+36636]) (signed), and falls through when s1(?) >= a1(=[[-0x3c00]:8+36636]) (signed).
  The return at 0x2c7fc has v0 = one of ?, ret(probe_md_errors).
- `wards_tick` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2c804 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2c804-0x2c8d8 (212 bytes).
  It occupies 212 bytes.
  4 such `ld` accesses load 8 bytes from abs 0xffffffffffffc400, including `ld` at 0x2c804, `ld` at 0x2c840, `ld` at 0x2c87c.
  3 such `lw` accesses load 4 bytes from [-0x3c00]:8 +0x8f1c, including `lw` at 0x2c818, `lw` at 0x2c848, `lw` at 0x2c884.
  The `lh` at 0x2c83c loads 2 bytes from ?.
  3 such `lw` accesses load 4 bytes from [-0x3c00]:8 +0x8f20, including `lw` at 0x2c870, `lw` at 0x2c888, `lw` at 0x2c8b0.
  2 such `sw` accesses store 4 bytes to [-0x3c00]:8 +0x8f20, including `sw` at 0x2c878, `sw` at 0x2c89c.
  The `lh` at 0x2c8c8 loads 2 bytes from ([-0x3c00]:8 + ([[-0x3c00]:8+36640] + [[-0x3c00]:8+36640])) +0x8f0c.
  The `jal` at 0x2c838 calls brl1_intr_poll with a0=?, a1=[[-0x3c00]:8+36636], a2=?, a3=[-0x3c00]:8, a4=[-0x3c00]:8+65536.
  The `jal` at 0x2c8c4 calls memerror_sbe_intr with a0=0x1, a1=[([-0x3c00]:8 + ([[-0x3c00]:8+36640] + [[-0x3c00]:8+36640]))+36620]:2, a2=?, a3=[-0x3c00]:8, a4=[-0x3c00]:8+65536, a5=[sym(disable_sbe_polling)].
  The `blez` branch at 0x2c820 targets 0x2c85c, is taken when a1(=[[-0x3c00]:8+36636]) <= 0 (signed), and falls through when a1(=[[-0x3c00]:8+36636]) > 0 (signed).
  The `bne` branch at 0x2c854 targets 0x2c830, is taken when s1(?) < a1(=[[-0x3c00]:8+36636]) (signed), and falls through when s1(?) >= a1(=[[-0x3c00]:8+36636]) (signed).
  The `beq` branch at 0x2c85c targets 0x2c8a0, is taken when a1(=[[-0x3c00]:8+36636]) == 0, and falls through when a1(=[[-0x3c00]:8+36636]) != 0.
  The `beq` branch at 0x2c868 targets 0x2c8b0, is taken when a5(=[sym(disable_sbe_polling)]) == 0, and falls through when a5(=[sym(disable_sbe_polling)]) != 0.
  The `beq` branch at 0x2c8d0 targets 0x2c870 and is always taken.
  The return at 0x2c8a8 has v0 = ?.
- `intrgroup_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2c8d8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2c8d8-0x2c988 (176 bytes).
  It occupies 176 bytes.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x2c904, `sd` at 0x2c940.
  The `sw` at 0x2c94c stores 4 bytes to ?.
  The `jal` at 0x2c90c calls spinlock_init with a0=sym(.bss)+45120, a1=sym(.rodata)+48512, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2c950 calls spinlock_init with a0=?, a1=sym(.rodata)+48512, a2=?, a3=?.
  The `bne` branch at 0x2c900 targets 0x2c8f0, is taken when a1(?) < 0x8 (signed), and falls through when a1(?) >= 0x8 (signed).
  The `bne` branch at 0x2c93c targets 0x2c92c, is taken when a1(?) < 0x8 (signed), and falls through when a1(?) >= 0x8 (signed).
  The `bne` branch at 0x2c96c targets 0x2c928, is taken when s0(?) < 0x10 (signed), and falls through when s0(?) >= 0x10 (signed).
  The return at 0x2c980 has v0 = ret(spinlock_init).
- `intrgroup_alloc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2c988 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2c988-0x2ca6c (228 bytes).
  It occupies 228 bytes.
  The `ld` at 0x2c9c4 loads 8 bytes from ?.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x2ca0c, `sd` at 0x2ca2c.
  The `sd` at 0x2ca4c stores 8 bytes to table(sym(.bss)+45120) +0x48.
  The `jal` at 0x2c9a4 calls mutex_spinlock with a0=sym(.bss)+45120, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2c9f0 calls mutex_spinunlock with a0=sym(.bss)+45120, a1=ret(mutex_spinlock), a2=?, a3=?, a7=table(sym(.bss)+45120).
  The `jal` at 0x2ca34 calls mutex_spinunlock with a0=sym(.bss)+45120, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2ca44 calls kmem_zalloc with a0=([sym(maxcpus)] << 0x2), a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x2c9cc targets 0x2ca00, is taken when (a5(?) & a6(?)) == 0, and falls through when (a5(?) & a6(?)) != 0.
  The `bne` branch at 0x2c9e4 targets 0x2c9c0, is taken when a4(?) < 0x10 (signed), and falls through when a4(?) >= 0x10 (signed).
  The `beq` branch at 0x2c9f8 targets 0x2ca50 and is always taken.
  The `bne` branch at 0x2ca28 targets 0x2ca18, is taken when t0(?) < 0x8 (signed), and falls through when t0(?) >= 0x8 (signed).
  The return at 0x2ca64 has v0 = one of 0x0, table(sym(.bss)+45120).
- `intrgroup_join` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ca6c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ca6c-0x2cbd0 (356 bytes).
  It occupies 356 bytes.
  The `ld` at 0x2caa8 loads 8 bytes from ?.
  The `sd` at 0x2caf0 stores 8 bytes to ?.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x40, including `lw` at 0x2caf4, `lw` at 0x2cb38, `lw` at 0x2cba0.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x48, including `ld` at 0x2cb50, `ld` at 0x2cb70, `ld` at 0x2cbcc.
  The `sb` at 0x2cb68 stores 1 byte to ([a0+72]:8 + (a1 << 0x2)) +0x0.
  The `ld` at 0x2cb6c loads 8 bytes from (sym(pdaindr) + (a1 << 0x4)) +0x8.
  The `lh` at 0x2cb7c loads 2 bytes from [(sym(pdaindr) + (a1 << 0x4))+8]:8 +0x42c.
  The `sh` at 0x2cb88 stores 2 bytes to ([a0+72]:8 + (a1 << 0x2)) +0x2.
  The `jal` at 0x2ca90 calls mutex_spinlock with a0=a0+68, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2cac0 calls mutex_spinunlock with a0=a0+68, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2caf8 calls sprintf with a0=sp-64, a1=sym(.rodata)+48512, a2=[a0+64], a3=?.
  The `jal` at 0x2cb14 calls intr_reserve_level with a0=a1 at entry (arg1), a1=-0x1, a2=0x0, a3=-0x1, a4=sp-64.
  The `jal` at 0x2cb3c calls intr_connect_level with a0=a1 at entry (arg1), a1=ret(intr_reserve_level), a2=0x0, a3=sym(groupintr), a4=[a0+64], a5=0x0.
  The `jal` at 0x2cb84 calls mutex_spinunlock with a0=a0+68, a1=ret(mutex_spinlock), a2=?, a3=?, a5=[[(sym(pdaindr) + (a1 << 0x4))+8]:8+1068]:2, a6=([a0+72]:8 + (a1 << 0x2)), a7=(a1 << 0x2).
  The `jal` at 0x2cba4 calls cmn_err with a0=0x0, a1=sym(.rodata)+48512, a2=ret(intr_reserve_level), a3=[a0+64].
  The `jal` at 0x2cbc0 calls cmn_err with a0=0x0, a1=sym(.rodata)+48512, a2=ret(intr_reserve_level), a3=[a0+64], a4=-0x1.
  The `beq` branch at 0x2cab4 targets 0x2cae4, is taken when (a5(?) & a7(?)) == 0, and falls through when (a5(?) & a7(?)) != 0.
  The `beq` branch at 0x2cb20 targets 0x2cb94, is taken when v0(=ret(intr_reserve_level)) == a3(=-0x1), and falls through when v0(=ret(intr_reserve_level)) != a3(=-0x1).
  The `beq` branch at 0x2cb48 targets 0x2cbb4, is taken when v0(=ret(intr_connect_level)) == a4(=-0x1), and falls through when v0(=ret(intr_connect_level)) != a4(=-0x1).
  The `beq` branch at 0x2cb8c targets 0x2cac8 and is always taken.
  The `beq` branch at 0x2cbac targets 0x2cb2c and is always taken.
  The `beq` branch at 0x2cbc8 targets 0x2cb54 and is always taken.
  The return at 0x2cadc has v0 = ret(mutex_spinunlock).
- `intrgroup_unjoin` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2cbd0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2cbd0-0x2cce4 (276 bytes).
  It occupies 276 bytes.
  The `ld` at 0x2cc0c loads 8 bytes from ?.
  The `sd` at 0x2cc2c stores 8 bytes to ?.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x48, including `ld` at 0x2cc30, `ld` at 0x2cc58, `ld` at 0x2cc6c.
  2 such `lbu` accesses load 1 byte from ([a0+72]:8 + (a1 << 0x2)) +0x0, including `lbu` at 0x2cc3c, `lbu` at 0x2cc68.
  The `sb` at 0x2cc74 stores 1 byte to ([a0+72]:8 + (a1 << 0x2)) +0x0.
  The `sh` at 0x2cc90 stores 2 bytes to ([a0+72]:8 + (a1 << 0x2)) +0x2.
  The `lw` at 0x2ccd0 loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `jal` at 0x2cbf4 calls mutex_spinlock with a0=a0+68, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2cc44 calls intr_disconnect_level with a0=a1 at entry (arg1), a1=[([a0+72]:8 + (a1 << 0x2))]:1, a2=?, a3=?.
  The `jal` at 0x2cc64 calls intr_unreserve_level with a0=a1 at entry (arg1), a1=[([a0+72]:8 + (a1 << 0x2))]:1, a2=?, a3=?.
  The `jal` at 0x2cc8c calls mutex_spinunlock with a0=a0+68, a1=ret(mutex_spinlock), a2=-0x1, a3=([a0+72]:8 + (a1 << 0x2)), a4=([a0+72]:8 + (a1 << 0x2)).
  The `jal` at 0x2ccb8 calls mutex_spinunlock with a0=a0+68, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2ccd4 calls cmn_err with a0=0x0, a1=sym(.rodata)+48512, a2=?, a3=[a0+64].
  The `beq` branch at 0x2cc1c targets 0x2ccb4, is taken when (a5(?) & a7(?)) == 0, and falls through when (a5(?) & a7(?)) != 0.
  The `beq` branch at 0x2cc50 targets 0x2ccc8, is taken when v0(=ret(intr_disconnect_level)) == a3(=-0x1), and falls through when v0(=ret(intr_disconnect_level)) != a3(=-0x1).
  The `beq` branch at 0x2ccc0 targets 0x2cc98 and is always taken.
  The `beq` branch at 0x2ccdc targets 0x2cc5c and is always taken.
  The return at 0x2ccac has v0 = ret(mutex_spinunlock).
- `intrgroup_free` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2cce4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2cce4-0x2cdcc (232 bytes).
  It occupies 232 bytes.
  The `ld` at 0x2cd3c loads 8 bytes from ?.
  The `ld` at 0x2cd64 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `lw` at 0x2cd7c loads 4 bytes from a0 (arg0 at entry) +0x40.
  The `ld` at 0x2cd94 loads 8 bytes from table(sym(.bss)+45120) +0x500.
  The `sd` at 0x2cdac stores 8 bytes to table(sym(.bss)+45120) +0x500.
  The `jal` at 0x2cd14 calls intrgroup_unjoin with a0=a0 at entry (arg0), a1=?, a2=?, a3=[sym(maxcpus)].
  The `jal` at 0x2cd60 calls kmem_free with a0=[a0+72]:8, a1=([sym(maxcpus)] << 0x2), a2=?, a3=[sym(maxcpus)].
  The `jal` at 0x2cd74 calls mutex_spinlock with a0=sym(.bss)+45120, a1=?, a2=?, a3=?.
  The `jal` at 0x2cda8 calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=table(sym(.bss)+45120).
  The `blez` branch at 0x2ccfc targets 0x2cdc4, is taken when a3(=[sym(maxcpus)]) <= 0 (signed), and falls through when a3(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x2cd08 targets 0x2cd30 and is always taken.
  The `beq` branch at 0x2cd28 targets 0x2cd60, is taken when s0(?) >= a3(=[sym(maxcpus)]) (signed), and falls through when s0(?) < a3(=[sym(maxcpus)]) (signed).
  The `bne` branch at 0x2cd48 targets 0x2cd10, is taken when (a4(?) & a5(?)) != 0, and falls through when (a4(?) & a5(?)) == 0.
  The `bne` branch at 0x2cd58 targets 0x2cd30, is taken when s0(?) < a3(=[sym(maxcpus)]) (signed), and falls through when s0(?) >= a3(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x2cdc4 targets 0x2cd5c and is always taken.
  The return at 0x2cdbc has v0 = ret(mutex_spinunlock).
- `groupintr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2cdcc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2cdcc-0x2ce4c (128 bytes).
  It occupies 128 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc280, including `ld` at 0x2cdcc, `ld` at 0x2cdf4.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffc6a8, including `lw` at 0x2cde0, `lw` at 0x2ce2c.
  The `jal` at 0x2cdec calls frs_handle_group_intr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2ce20 calls log_tstamp_event with a0=0x6f, a1=0x0, a2=0x0, a3=0x0, a4=0x0.
  The `jal` at 0x2ce3c calls log_tstamp_event with a0=0x65, a1=0x6f, a2=0x0, a3=0x0, a4=0x0.
  The `bne` branch at 0x2cdd8 targets 0x2ce10, is taken when (at(=[-0x3d80]:8) & 0x20) != 0, and falls through when (at(=[-0x3d80]:8) & 0x20) == 0.
  The `beq` branch at 0x2cde4 targets 0x2cdf4, is taken when v0(=[-0x3958]) == 0, and falls through when v0(=[-0x3958]) != 0.
  The `bne` branch at 0x2cdfc targets 0x2ce30, is taken when (v1(=[-0x3d80]:8) & 0x20) != 0, and falls through when (v1(=[-0x3d80]:8) & 0x20) == 0.
  The `beq` branch at 0x2ce28 targets 0x2cde4 and is always taken.
  The `beq` branch at 0x2ce44 targets 0x2ce08 and is always taken.
  The return at 0x2ce08 has v0 = one of ?, ret(log_tstamp_event).
- `sendgroupintr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ce4c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ce4c-0x2cf54 (264 bytes).
  It occupies 264 bytes.
  The `lh` at 0x2ce54 loads 2 bytes from abs 0xffffffffffffc428.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2ce98, `ld` at 0x2cebc, `ld` at 0x2cf0c.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x2cec0, `lbu` at 0x2cee8.
  The `ld` at 0x2cec8 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `lh` at 0x2ced0 loads 2 bytes from ?.
  The `sd` at 0x2cef4 stores 8 bytes to ?.
  The `ld` at 0x2cf50 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `jal` at 0x2cf20 calls groupintr with a0=0x0, a1=?, a2=?, a3=?, a4=[sym(maxcpus)], a6=[-0x3bd8]:2, a7=0x1.
  The `blez` branch at 0x2ce70 targets 0x2cf38, is taken when a4(=[sym(maxcpus)]) <= 0 (signed), and falls through when a4(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x2ce78 targets 0x2cf40 and is always taken.
  The `beq` branch at 0x2ce90 targets 0x2cf00, is taken when a2(?) >= a4(=[sym(maxcpus)]) (signed), and falls through when a2(?) < a4(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x2ceac targets 0x2ce80, is taken when (t9(?) & at(?)) == 0, and falls through when (t9(?) & at(?)) != 0.
  The `beq` branch at 0x2ceb4 targets 0x2ce80, is taken when a6(=[-0x3bd8]:2) == a2(?), and falls through when a6(=[-0x3bd8]:2) != a2(?).
  The `beq` branch at 0x2cef8 targets 0x2ce80 and is always taken.
  The `beq` branch at 0x2cf18 targets 0x2cf28, is taken when (a2(?) & a3(?)) == 0, and falls through when (a2(?) & a3(?)) != 0.
  The `beq` branch at 0x2cf38 targets 0x2cf04 and is always taken.
  The `beq` branch at 0x2cf4c targets 0x2ce9c and is always taken.
  The return at 0x2cf30 has v0 = 0x0.
- `hubdev_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d2d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2d2d0-0x2d2fc (44 bytes).
  It occupies 44 bytes.
  The `jal` at 0x2d2e4 calls init_mutex with a0=sym(hubdev_callout_mutex), a1=0x0, a2=sym(.rodata)+48704, a3=-0x1.
  The return at 0x2d2f4 has v0 = ret(init_mutex).
- `hubdev_docallouts` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d3d4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2d3d4-0x2d460 (140 bytes).
  It occupies 140 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2d408, `ld` at 0x2d41c.
  The `jal` at 0x2d3f4 calls mutex_lock with a0=sym(hubdev_callout_mutex), a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x2d40c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x2d428 calls mutex_unlock with a0=sym(hubdev_callout_mutex), a1=?, a2=?, a3=?.
  The `jal` at 0x2d450 calls mutex_unlock with a0=sym(hubdev_callout_mutex), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2d400 targets 0x2d428, is taken when at(=[sym(hubdev_callout_list)]:8) == 0, and falls through when at(=[sym(hubdev_callout_list)]:8) != 0.
  The `bne` branch at 0x2d414 targets 0x2d450, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `bne` branch at 0x2d420 targets 0x2d408, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x2d458 targets 0x2d438 and is always taken.
  The return at 0x2d448 has v0 = one of 0x0, ret(?).
- `hubdev_prombase_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d460 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2d460-0x2d49c (60 bytes).
  It occupies 60 bytes.
  The `lh` at 0x2d484 loads 2 bytes from ?.
  The `jal` at 0x2d474 calls hwgraph_info_get_LBL with a0=a0 at entry (arg0), a1=sym(.rodata)+48704, a2=sp-16, a3=a3 at entry (arg3).
  The return at 0x2d494 has v0 = table(0x9000000038000000).
- `hubdev_cnodeid_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d49c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2d49c-0x2d4cc (48 bytes).
  It occupies 48 bytes.
  The `lh` at 0x2d4c0 loads 2 bytes from ?.
  The `jal` at 0x2d4b0 calls hwgraph_info_get_LBL with a0=a0 at entry (arg0), a1=sym(.rodata)+48704, a2=sp-16, a3=a3 at entry (arg3).
  The return at 0x2d4c4 has v0 = ?.
- `set_pwr_fail` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d4d4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2d4d4-0x2d4dc (8 bytes).
  It occupies 8 bytes.
  The return at 0x2d4d4 has v0 = ?.
- `vme_frs_install` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d4e4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2d4e4-0x2d4ec (8 bytes).
  It occupies 8 bytes.
  The return at 0x2d4e4 has v0 = 0x0.
- `vme_frs_uninstall` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d4ec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2d4ec-0x2d4f4 (8 bytes).
  It occupies 8 bytes.
  The return at 0x2d4ec has v0 = 0x0.
- `intrnorm` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d500 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2d500-0x2d76c (620 bytes).
  It occupies 620 bytes.
  The `lw` at 0x2d500 loads 4 bytes from abs 0xffffffffffffc048.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc028, including `ld` at 0x2d58c, `ld` at 0x2d6a4, `ld` at 0x2d734.
  2 such `lb` accesses load 1 byte from abs 0xffffffffffffc04f, including `lb` at 0x2d598, `lb` at 0x2d694.
  4 such `sb` accesses store 1 byte to abs 0xffffffffffffc04f, including `sb` at 0x2d5b8, `sb` at 0x2d634, `sb` at 0x2d664.
  The `ld` at 0x2d5bc loads 8 bytes from abs 0xffffffffffffc018.
  The `ld` at 0x2d5c0 loads 8 bytes from [-0x3fe8]:8 +0x3f0.
  The `sd` at 0x2d5c8 stores 8 bytes to [[-0x3fe8]:8+1008]:8 +0x248.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc030, including `ld` at 0x2d5d0, `ld` at 0x2d64c, `ld` at 0x2d668.
  The `sd` at 0x2d5d4 stores 8 bytes to [[-0x3fe8]:8+1008]:8 +0x240.
  22 such `sd` accesses store 8 bytes to ?, including `sd` at 0x2d644, `sd` at 0x2d6bc, `sd` at 0x2d6c4.
  The `ld` at 0x2d648 loads 8 bytes from abs 0xffffffffffffc020.
  The `sd` at 0x2d650 stores 8 bytes to [-0x3fe0]:8 +0x228.
  The `sd` at 0x2d66c stores 8 bytes to [-0x3fd0]:8 +0xe0.
  The `sb` at 0x2d674 stores 1 byte to abs 0xffffffffffffc053.
  The `lb` at 0x2d678 loads 1 byte from abs 0xffffffffffffc050.
  The `ld` at 0x2d6a8 loads 8 bytes from [-0x3fd8]:8 +0x88.
  The `ld` at 0x2d6d0 loads 8 bytes from abs 0xffffffffffffc038.
  The `ld` at 0x2d738 loads 8 bytes from [-0x3fd8]:8 +0x90.
  The `sd` at 0x2d73c stores 8 bytes to abs 0xffffffffffffc018.
  The `lh` at 0x2d744 loads 2 bytes from [-0x3fd8]:8 +0xa8.
  Calls ecommon via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2d5ec).
  Calls ecommon via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2d654).
  Calls ecommon_allsaved via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2d684).
  Calls ecommon via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2d68c).
  The `jal` at 0x2d72c calls tfi_save with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2d740 calls uli_setasids with a0=[[-0x3fd8]:8+168]:2, a1=?, a2=?, a3=?.
  Calls ecommon_allsaved via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x2d748).
  Calls ecommon via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2d764).
  The `beq` branch at 0x2d50c targets 0x2d568, is taken when (k1(?) & 0x8000) == 0, and falls through when (k1(?) & 0x8000) != 0.
  The `bltz` branch at 0x2d514 targets 0x2d568, is taken when k1(?) < 0 (signed), and falls through when k1(?) >= 0 (signed).
  The `bltz` branch at 0x2d520 targets 0x2d568, is taken when k1(?) < 0 (signed), and falls through when k1(?) >= 0 (signed).
  The `beq` branch at 0x2d534 targets 0x2d554, is taken when k1(?) == 0, and falls through when k1(?) != 0.
  The `bltz` branch at 0x2d540 targets 0x2d568, is taken when k1(?) < 0 (signed), and falls through when k1(?) >= 0 (signed).
  The `bltz` branch at 0x2d54c targets 0x2d568, is taken when k1(?) < 0 (signed), and falls through when k1(?) >= 0 (signed).
  The `beq` branch at 0x2d558 targets 0x2d568, is taken when (k0(=[-0x3fb8]) & 0x40) == 0, and falls through when (k0(=[-0x3fb8]) & 0x40) != 0.
  The `beq` branch at 0x2d570 targets 0x2d588, is taken when (k1(?) & 0x1) == 0, and falls through when (k1(?) & 0x1) != 0.
  The `bne` branch at 0x2d580 targets 0x2d58c, is taken when (k1(?) & k0(?)) != 0, and falls through when (k1(?) & k0(?)) == 0.
  The `bne` branch at 0x2d590 targets 0x2d694, is taken when k0(=[-0x3fd8]:8) != 0, and falls through when k0(=[-0x3fd8]:8) == 0.
  The `beq` branch at 0x2d5a0 targets 0x2d750, is taken when k0(=[-0x3fb1]:1-2) == 0, and falls through when k0(=[-0x3fb1]:1-2) != 0.
  The `beq` branch at 0x2d5a8 targets 0x2d630, is taken when k0(=[-0x3fb1]:1-1) == 0, and falls through when k0(=[-0x3fb1]:1-1) != 0.
  The `beq` branch at 0x2d5b0 targets 0x2d65c, is taken when k0(=[-0x3fb1]:1-3) == 0, and falls through when k0(=[-0x3fb1]:1-3) != 0.
  The `beq` branch at 0x2d67c targets 0x2d68c, is taken when k0(=[-0x3fb0]:1) == 0, and falls through when k0(=[-0x3fb0]:1) != 0.
  The `beq` branch at 0x2d69c targets 0x2d750, is taken when k1(=[-0x3fb1]:1) == at(=0x2), and falls through when k1(=[-0x3fb1]:1) != at(=0x2).
  The instructions from 0x2d5f4 to 0x2d62c are not reached by any path from the entry, and their branches are not listed.
- `_j_endexceptnorm` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ded0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ded0-0x2dee0 (16 bytes).
  It occupies 16 bytes.
  Calls exception via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2ded8).
- `_j_exceptnorm_nosymmon` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ded0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ded0-0x2dee0 (16 bytes).
  It occupies 16 bytes.
  Calls exception via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2ded8).
- `_endexceptnorm_prolog` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2dee0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2dee0-0x2df00 (32 bytes).
  It occupies 32 bytes.
- `_exceptnorm_prolog` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2dee0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2dee0-0x2df00 (32 bytes).
  It occupies 32 bytes.
- `_j_endexceptnorm_nosymmon` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2dee0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2dee0-0x2df00 (32 bytes).
  It occupies 32 bytes.
- `eutlbmiss_prolog_up` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2df0c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2df0c-0x2df1c (16 bytes).
  It occupies 16 bytes.
  The `beq` branch at 0x2df0c targets 0x2df18 and is always taken.
  The instructions from 0x2df14 to 0x2df14 are not reached by any path from the entry, and their branches are not listed.
- `utlbmiss_prolog_mp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2df0c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2df0c-0x2df1c (16 bytes).
  It occupies 16 bytes.
  The `beq` branch at 0x2df0c targets 0x2df18 and is always taken.
  The instructions from 0x2df14 to 0x2df14 are not reached by any path from the entry, and their branches are not listed.
- `eutlbmiss` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2dfa8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2dfa8-0x2e030 (136 bytes).
  It occupies 136 bytes.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2dfb8, `ld` at 0x2e004, `ld` at 0x2e010.
  The `sd` at 0x2dfcc stores 8 bytes to abs 0xffffffffffffc038.
  The `ld` at 0x2e028 loads 8 bytes from abs 0xffffffffffffc038.
  The `beq` branch at 0x2dfc4 targets 0x2df90, is taken when (k1(?) & 0xf) == 0, and falls through when (k1(?) & 0xf) != 0.
- `lpg_utlbmiss` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2dfa8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2dfa8-0x2e030 (136 bytes).
  It occupies 136 bytes.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2dfb8, `ld` at 0x2e004, `ld` at 0x2e010.
  The `sd` at 0x2dfcc stores 8 bytes to abs 0xffffffffffffc038.
  The `ld` at 0x2e028 loads 8 bytes from abs 0xffffffffffffc038.
  The `beq` branch at 0x2dfc4 targets 0x2df90, is taken when (k1(?) & 0xf) == 0, and falls through when (k1(?) & 0xf) != 0.
- `eutlbmiss2` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e0bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e0bc-0x2e0c0 (4 bytes).
  It occupies 4 bytes.
- `utlbmiss_sharedseg1a` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e0bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e0bc-0x2e0c0 (4 bytes).
  It occupies 4 bytes.
- `elpg_overlay_utlbmiss` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e1e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e1e0-0x2e20c (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0x2e1ec loads 4 bytes from abs 0xffffffffffffc554.
  The `sw` at 0x2e1f8 stores 4 bytes to abs 0xffffffffffffc554.
  The `lw` at 0x2e1fc loads 4 bytes from abs 0xffffffffffffc558.
  The `sw` at 0x2e208 stores 4 bytes to abs 0xffffffffffffc558.
  Calls utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e1f4).
  Calls utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e204).
  The `beq` branch at 0x2e1e8 targets 0x2e1fc, is taken when (k1(?) & 0x10) == 0, and falls through when (k1(?) & 0x10) != 0.
- `utlbmiss1` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e1e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e1e0-0x2e20c (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0x2e1ec loads 4 bytes from abs 0xffffffffffffc554.
  The `sw` at 0x2e1f8 stores 4 bytes to abs 0xffffffffffffc554.
  The `lw` at 0x2e1fc loads 4 bytes from abs 0xffffffffffffc558.
  The `sw` at 0x2e208 stores 4 bytes to abs 0xffffffffffffc558.
  Calls utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e1f4).
  Calls utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e204).
  The `beq` branch at 0x2e1e8 targets 0x2e1fc, is taken when (k1(?) & 0x10) == 0, and falls through when (k1(?) & 0x10) != 0.
- `eutlbmiss1` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e20c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e20c-0x2e238 (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0x2e218 loads 4 bytes from abs 0xffffffffffffc554.
  The `sw` at 0x2e224 stores 4 bytes to abs 0xffffffffffffc554.
  The `lw` at 0x2e228 loads 4 bytes from abs 0xffffffffffffc558.
  The `sw` at 0x2e234 stores 4 bytes to abs 0xffffffffffffc558.
  Calls lpg_utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e220).
  Calls lpg_utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e230).
  The `beq` branch at 0x2e214 targets 0x2e228, is taken when (k1(?) & 0x10) == 0, and falls through when (k1(?) & 0x10) != 0.
- `lpg_counting_utlbmiss` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e20c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e20c-0x2e238 (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0x2e218 loads 4 bytes from abs 0xffffffffffffc554.
  The `sw` at 0x2e224 stores 4 bytes to abs 0xffffffffffffc554.
  The `lw` at 0x2e228 loads 4 bytes from abs 0xffffffffffffc558.
  The `sw` at 0x2e234 stores 4 bytes to abs 0xffffffffffffc558.
  Calls lpg_utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e220).
  Calls lpg_utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e230).
  The `beq` branch at 0x2e214 targets 0x2e228, is taken when (k1(?) & 0x10) == 0, and falls through when (k1(?) & 0x10) != 0.
- `elpg_counting_utlbmiss` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e238 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e238-0x2e264 (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0x2e244 loads 4 bytes from abs 0xffffffffffffc554.
  The `sw` at 0x2e250 stores 4 bytes to abs 0xffffffffffffc554.
  The `lw` at 0x2e254 loads 4 bytes from abs 0xffffffffffffc558.
  The `sw` at 0x2e260 stores 4 bytes to abs 0xffffffffffffc558.
  Calls utlbmiss2 via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e24c).
  Calls utlbmiss2 via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e25c).
  The `beq` branch at 0x2e240 targets 0x2e254, is taken when (k1(?) & 0x10) == 0, and falls through when (k1(?) & 0x10) != 0.
- `utlbmiss3` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e238 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e238-0x2e264 (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0x2e244 loads 4 bytes from abs 0xffffffffffffc554.
  The `sw` at 0x2e250 stores 4 bytes to abs 0xffffffffffffc554.
  The `lw` at 0x2e254 loads 4 bytes from abs 0xffffffffffffc558.
  The `sw` at 0x2e260 stores 4 bytes to abs 0xffffffffffffc558.
  Calls utlbmiss2 via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e24c).
  Calls utlbmiss2 via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e25c).
  The `beq` branch at 0x2e240 targets 0x2e254, is taken when (k1(?) & 0x10) == 0, and falls through when (k1(?) & 0x10) != 0.
- `eutlbmiss3` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e264 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e264-0x2e290 (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0x2e270 loads 4 bytes from abs 0xffffffffffffc554.
  The `sw` at 0x2e27c stores 4 bytes to abs 0xffffffffffffc554.
  The `lw` at 0x2e280 loads 4 bytes from abs 0xffffffffffffc558.
  The `sw` at 0x2e28c stores 4 bytes to abs 0xffffffffffffc558.
  Calls lpg_overlay_utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e278).
  Calls lpg_overlay_utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e288).
  The `beq` branch at 0x2e26c targets 0x2e280, is taken when (k1(?) & 0x10) == 0, and falls through when (k1(?) & 0x10) != 0.
- `lpg_overlay_counting_utlbmiss` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e264 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e264-0x2e290 (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0x2e270 loads 4 bytes from abs 0xffffffffffffc554.
  The `sw` at 0x2e27c stores 4 bytes to abs 0xffffffffffffc554.
  The `lw` at 0x2e280 loads 4 bytes from abs 0xffffffffffffc558.
  The `sw` at 0x2e28c stores 4 bytes to abs 0xffffffffffffc558.
  Calls lpg_overlay_utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e278).
  Calls lpg_overlay_utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e288).
  The `beq` branch at 0x2e26c targets 0x2e280, is taken when (k1(?) & 0x10) == 0, and falls through when (k1(?) & 0x10) != 0.
- `elpg_overlay_counting_utlbmiss` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e290 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e290-0x2e294 (4 bytes).
  It occupies 4 bytes.
  The `ld` at 0x2e290 loads 8 bytes from abs 0xffffffffffffc560.
- `utlbmiss_prolog_patch` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e290 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e290-0x2e294 (4 bytes).
  It occupies 4 bytes.
  The `ld` at 0x2e290 loads 8 bytes from abs 0xffffffffffffc560.
- `_ecc_end` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e318 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e318-0x2e33c (36 bytes).
  It occupies 36 bytes.
  The `lbu` at 0x2e330 loads 1 byte from ?.
  The `beq` branch at 0x2e324 targets 0x2e334, is taken when a4(=[sym(.sbss)+232]:8) == 0, and falls through when a4(=[sym(.sbss)+232]:8) != 0.
  The return at 0x2e334 has v0 = one of 0x0, ?.
- `get_nvreg` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e318 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e318-0x2e33c (36 bytes).
  It occupies 36 bytes.
  The `lbu` at 0x2e330 loads 1 byte from ?.
  The `beq` branch at 0x2e324 targets 0x2e334, is taken when a4(=[sym(.sbss)+232]:8) == 0, and falls through when a4(=[sym(.sbss)+232]:8) != 0.
  The return at 0x2e334 has v0 = one of 0x0, ?.
- `set_nvreg` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e33c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e33c-0x2e3bc (128 bytes).
  It occupies 128 bytes.
  The `jal` at 0x2e37c calls ioc_base [0x2ef04] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2e390 calls set_nvreg_base [0x2ef9c] with a0=ret(ioc_base), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=?.
  The `blez` branch at 0x2e358 targets 0x2e3a0, is taken when at(=[sym(nummodules)]) <= 0 (signed), and falls through when at(=[sym(nummodules)]) > 0 (signed).
  The `beq` branch at 0x2e360 targets 0x2e37c and is always taken.
  The `beq` branch at 0x2e374 targets 0x2e3a0, is taken when s0(?) >= v0(=[sym(nummodules)]) (signed), and falls through when s0(?) < v0(=[sym(nummodules)]) (signed).
  The `beq` branch at 0x2e384 targets 0x2e368, is taken when v0(=ret(ioc_base)) == 0, and falls through when v0(=ret(ioc_base)) != 0.
  The `beq` branch at 0x2e398 targets 0x2e36c and is always taken.
  The return at 0x2e3b4 has v0 = 0x0.
- `get_nvram_buf` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e3bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e3bc-0x2e460 (164 bytes).
  It occupies 164 bytes.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x2e424, `sb` at 0x2e440.
  The `sb` at 0x2e45c stores 1 byte to a2 (arg2 at entry) +0x0.
  The `jal` at 0x2e40c calls get_nvreg with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x2e3d8 targets 0x2e458, is taken when at(=(a0 + a1)) >= 0x7ff7 (signed), and falls through when at(=(a0 + a1)) < 0x7ff7 (signed).
  The `beq` branch at 0x2e3f0 targets 0x2e428, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x2e420 targets 0x2e3fc, is taken when s4(=a1-1) >= s0(?) (unsigned), and falls through when s4(=a1-1) < s0(?) (unsigned).
  The `beq` branch at 0x2e458 targets 0x2e444 and is always taken.
  The return at 0x2e450 has v0 = ?.
- `update_checksum` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e460 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e460-0x2e4c0 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x2e490 calls ioc_base [0x2ef04] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2e4a0 calls update_checksum_base [0x2f078] with a0=ret(ioc_base), a1=?, a2=?, a3=?.
  The `blez` branch at 0x2e46c targets 0x2e4b0, is taken when at(=[sym(nummodules)]) <= 0 (signed), and falls through when at(=[sym(nummodules)]) > 0 (signed).
  The `beq` branch at 0x2e474 targets 0x2e490 and is always taken.
  The `beq` branch at 0x2e488 targets 0x2e4b0, is taken when s0(?) >= v0(=[sym(nummodules)]) (signed), and falls through when s0(?) < v0(=[sym(nummodules)]) (signed).
  The `beq` branch at 0x2e498 targets 0x2e47c, is taken when v0(=ret(ioc_base)) == 0, and falls through when v0(=ret(ioc_base)) != 0.
  The `beq` branch at 0x2e4a8 targets 0x2e480 and is always taken.
  The return at 0x2e4b8 has v0 = ?.
- `set_nvram_offset` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e4c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e4c0-0x2e5a8 (232 bytes).
  It occupies 232 bytes.
  The `lbu` at 0x2e540 loads 1 byte from ?.
  The `jal` at 0x2e50c calls ioc_base [0x2ef04] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2e53c calls set_nvreg_base [0x2ef9c] with a0=ret(ioc_base), a1=?, a2=?, a3=?.
  The `jal` at 0x2e584 calls update_checksum_base [0x2f078] with a0=ret(ioc_base), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2e4f8 targets 0x2e54c, is taken when at(=(a0 + a1)) >= 0x7ff7 (signed), and falls through when at(=(a0 + a1)) < 0x7ff7 (signed).
  The `blez` branch at 0x2e500 targets 0x2e5a0, is taken when a5(=[sym(nummodules)]) <= 0 (signed), and falls through when a5(=[sym(nummodules)]) > 0 (signed).
  The `beq` branch at 0x2e518 targets 0x2e58c, is taken when v0(=ret(ioc_base)) == 0, and falls through when v0(=ret(ioc_base)) != 0.
  The `beq` branch at 0x2e520 targets 0x2e584, is taken when s4(=a1) == 0, and falls through when s4(=a1) != 0.
  The `beq` branch at 0x2e544 targets 0x2e570, is taken when v0(=ret(set_nvreg_base)) == 0, and falls through when v0(=ret(set_nvreg_base)) != 0.
  The `bne` branch at 0x2e57c targets 0x2e52c, is taken when s1(?) < s4(=a1) (unsigned), and falls through when s1(?) >= s4(=a1) (unsigned).
  The `bne` branch at 0x2e598 targets 0x2e50c, is taken when s2(?) < a4(=[sym(nummodules)]) (signed), and falls through when s2(?) >= a4(=[sym(nummodules)]) (signed).
  The `beq` branch at 0x2e5a0 targets 0x2e54c and is always taken.
  The return at 0x2e568 has v0 = one of -0x1, 0x0.
- `nvram_baseinit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e824 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e824-0x2e95c (312 bytes).
  It occupies 312 bytes.
  3 such `ld` accesses load 8 bytes from (([sym(master_nasid)]:2 << 0x21)+0x9600000000000000 | 0x2000) +0x48, including `ld` at 0x2e840, `ld` at 0x2e8c8, `ld` at 0x2e930.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2e850, `lw` at 0x2e860, `lw` at 0x2e8d4.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2e858, `ld` at 0x2e8dc, `ld` at 0x2e948.
  The `ld` at 0x2e8a0 loads 8 bytes from sym(.rodata) +0xc268.
  The `ld` at 0x2e8a4 loads 8 bytes from sym(.rodata) +0xc270.
  The `ld` at 0x2e8a8 loads 8 bytes from sym(.rodata) +0xc278.
  The `lhu` at 0x2e8ac loads 2 bytes from sym(.rodata) +0xc280.
  The `lbu` at 0x2e8b0 loads 1 byte from sym(.rodata) +0xc282.
  The `sb` at 0x2e8b4 stores 1 byte to sym(.bss) +0xb5b2.
  The `sh` at 0x2e8b8 stores 2 bytes to sym(.bss) +0xb5b0.
  The `sd` at 0x2e8bc stores 8 bytes to sym(.bss) +0xb5a8.
  The `sd` at 0x2e8c0 stores 8 bytes to sym(.bss) +0xb5a0.
  The `sd` at 0x2e8c4 stores 8 bytes to sym(.bss) +0xb598.
  The `jal` at 0x2e8fc calls sprintf with a0=sym(ioc_path), a1=sym(.rodata)+49640, a2=?, a3=([sym(master_nasid)]:2 << 0x21)+0x9600000000000000, a4=(([sym(master_nasid)]:2 << 0x21)+0x9600000000000000 | 0x2000), a5=0xffffffffff, a7=0x9600000000000000.
  The `beq` branch at 0x2e870 targets 0x2e888, is taken when a1(?) == t0(=0x310a9), and falls through when a1(?) != t0(=0x310a9).
  The `beq` branch at 0x2e878 targets 0x2e8ec, is taken when a1(?) == a2(=0x100a10a9), and falls through when a1(?) != a2(=0x100a10a9).
  The `beq` branch at 0x2e8e4 targets 0x2e880 and is always taken.
  The `beq` branch at 0x2e954 targets 0x2e880 and is always taken.
  The return at 0x2e880 has v0 = one of ?, 0x7063692f342f696f, ret(sprintf).
- `nvram_dict_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e95c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e95c-0x2e9ec (144 bytes).
  It occupies 144 bytes.
  The `jal` at 0x2e968 calls set_nvreg with a0=0x36c3, a1=0xda, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2e978 calls set_nvreg with a0=0x36c4, a1=0x0, a2=?, a3=?.
  The `jal` at 0x2e994 calls set_nvreg with a0=?, a1=0xff, a2=?, a3=?.
  The `jal` at 0x2e9a4 calls set_nvreg with a0=?, a1=0xff, a2=?, a3=?.
  The `jal` at 0x2e9b4 calls set_nvreg with a0=?, a1=0xff, a2=?, a3=?.
  The `jal` at 0x2e9d0 calls update_checksum with a0=?, a1=0xff, a2=?, a3=?.
  The `bne` branch at 0x2e9c8 targets 0x2e98c, is taken when s0(?) < 0x10 (signed), and falls through when s0(?) >= 0x10 (signed).
  The return at 0x2e9e4 has v0 = ret(update_checksum).
- `nvram_dict_size` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e9ec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e9ec-0x2ea24 (56 bytes).
  It occupies 56 bytes.
  The `jal` at 0x2e9f4 calls get_nvreg with a0=0x36c3, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2ea08 calls nvram_dict_init with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2ea10 calls get_nvreg with a0=0x36c4, a1=?, a2=?, a3=?.
  The `beq` branch at 0x2ea00 targets 0x2ea10, is taken when v0(=ret(get_nvreg)) == at(=0xda), and falls through when v0(=ret(get_nvreg)) != at(=0xda).
  The return at 0x2ea1c has v0 = ret(get_nvreg).
- `nvram_dict_first_free_index_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ea24 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ea24-0x2eac8 (164 bytes).
  It occupies 164 bytes.
  The `jal` at 0x2ea2c calls get_nvreg with a0=0x36c3, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2ea44 calls nvram_dict_init with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2ea60 calls get_nvreg with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2eaa0 calls get_nvreg with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2eab0 calls get_nvreg with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x2ea3c targets 0x2ea4c, is taken when v0(=ret(get_nvreg)) == at(=0xda), and falls through when v0(=ret(get_nvreg)) != at(=0xda).
  The `beq` branch at 0x2ea54 targets 0x2ea78 and is always taken.
  The `beq` branch at 0x2ea68 targets 0x2eaa0, is taken when s2(=0xff) == v0(=ret(get_nvreg)), and falls through when s2(=0xff) != v0(=ret(get_nvreg)).
  The `bne` branch at 0x2ea7c targets 0x2ea5c, is taken when s0(?) < 0x10 (signed), and falls through when s0(?) >= 0x10 (signed).
  The `bne` branch at 0x2eaa8 targets 0x2ea70, is taken when s2(=0xff) != v0(=ret(get_nvreg)), and falls through when s2(=0xff) == v0(=ret(get_nvreg)).
  The `bnel` branch at 0x2eab8 targets 0x2ea74, is taken when s2(=0xff) != v0(=ret(get_nvreg)), and falls through when s2(=0xff) == v0(=ret(get_nvreg)); its branch-likely delay slot `addiu s0,s0,1` at 0x2eabc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x2eac0 targets 0x2ea88 and is always taken.
  The return at 0x2ea98 has v0 = one of 0xff, ?.
- `nvram_dict_next_index_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2eac8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2eac8-0x2eb74 (172 bytes).
  It occupies 172 bytes.
  The `jal` at 0x2ead8 calls get_nvreg with a0=0x36c3, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2eaec calls nvram_dict_init with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2eb08 calls get_nvreg with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2eb20 calls get_nvreg with a0=?, a1=0xff, a2=?, a3=?.
  The `jal` at 0x2eb38 calls get_nvreg with a0=?, a1=0xff, a2=?, a3=?.
  The `beq` branch at 0x2eae4 targets 0x2eaf4, is taken when v0(=ret(get_nvreg)) == at(=0xda), and falls through when v0(=ret(get_nvreg)) != at(=0xda).
  The `beq` branch at 0x2eaf8 targets 0x2eb6c, is taken when s0(?) >= 0x10 (signed), and falls through when s0(?) < 0x10 (signed).
  The `bne` branch at 0x2eb14 targets 0x2eb58, is taken when a1(=0xff) != v0(=ret(get_nvreg)), and falls through when a1(=0xff) == v0(=ret(get_nvreg)).
  The `bne` branch at 0x2eb2c targets 0x2eb58, is taken when a1(=0xff) != v0(=ret(get_nvreg)), and falls through when a1(=0xff) == v0(=ret(get_nvreg)).
  The `bne` branch at 0x2eb44 targets 0x2eb58, is taken when a1(=0xff) != v0(=ret(get_nvreg)), and falls through when a1(=0xff) == v0(=ret(get_nvreg)).
  The `beq` branch at 0x2eb50 targets 0x2eaf4 and is always taken.
  The `beq` branch at 0x2eb6c targets 0x2eb58 and is always taken.
  The return at 0x2eb64 has v0 = one of ?, 0xff.
- `nvram_dict_index_set` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2eb74 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2eb74-0x2ec88 (276 bytes).
  It occupies 276 bytes.
  The `lbu` at 0x2ec00 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `lbu` at 0x2ec0c loads 1 byte from a0 (arg0 at entry) +0x2.
  The `lbu` at 0x2ec18 loads 1 byte from a0 (arg0 at entry) +0x3.
  The `jal` at 0x2eb8c calls get_nvreg with a0=0x36c3, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2eba0 calls nvram_dict_init with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2eba8 calls get_nvreg with a0=0x36c4, a1=?, a2=?, a3=?.
  The `jal` at 0x2ebd0 calls get_nvreg with a0=((a1 << 0x2)+14021 << 0x0), a1=?, a2=?, a3=?.
  The `jal` at 0x2ebfc calls set_nvreg with a0=?, a1=[a0+1]:1, a2=?, a3=?.
  The `jal` at 0x2ec08 calls set_nvreg with a0=?, a1=[a0+2]:1, a2=?, a3=?.
  The `jal` at 0x2ec14 calls set_nvreg with a0=((a1 << 0x2)+14023 << 0x0), a1=[a0+3]:1, a2=?, a3=?.
  The `jal` at 0x2ec1c calls update_checksum with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2ec40 calls get_nvreg with a0=((a1 << 0x2)+14022 << 0x0), a1=0xff, a2=((a1 << 0x2)+14022 << 0x0), a3=?.
  The `jal` at 0x2ec5c calls get_nvreg with a0=((a1 << 0x2)+14023 << 0x0), a1=?, a2=?, a3=?.
  The `jal` at 0x2ec78 calls set_nvreg with a0=0x36c4, a1=?, a2=?, a3=?.
  The `beq` branch at 0x2eb98 targets 0x2eba8, is taken when v0(=ret(get_nvreg)) == at(=0xda), and falls through when v0(=ret(get_nvreg)) != at(=0xda).
  The `beq` branch at 0x2ebbc targets 0x2ec28, is taken when s1(=a1) >= 0x10 (signed), and falls through when s1(=a1) < 0x10 (signed).
  The `beq` branch at 0x2ebe4 targets 0x2ec40, is taken when a1(=0xff) == v0(=ret(get_nvreg)), and falls through when a1(=0xff) != v0(=ret(get_nvreg)).
  The `bne` branch at 0x2ec50 targets 0x2ebf4, is taken when t8(=0xff) != v0(=ret(get_nvreg)), and falls through when t8(=0xff) == v0(=ret(get_nvreg)).
  The `bne` branch at 0x2ec64 targets 0x2ebf8, is taken when s2(=0xff) != v0(=ret(get_nvreg)), and falls through when s2(=0xff) == v0(=ret(get_nvreg)).
  The `beq` branch at 0x2ec80 targets 0x2ebf8 and is always taken.
  The return at 0x2ec38 has v0 = one of -0x1, 0x0.
- `nvram_dict_index_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ec88 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ec88-0x2ed28 (160 bytes).
  It occupies 160 bytes.
  The `sh` at 0x2ecfc stores 2 bytes to a0 (arg0 at entry) +0x0.
  The `sb` at 0x2ed0c stores 1 byte to a0 (arg0 at entry) +0x2.
  The `sb` at 0x2ed1c stores 1 byte to a0 (arg0 at entry) +0x3.
  The `jal` at 0x2eca0 calls get_nvreg with a0=0x36c3, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2ecb4 calls nvram_dict_init with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2ecf0 calls get_nvreg with a0=((a1 << 0x2)+14021 << 0x0), a1=-0x1, a2=?, a3=?.
  The `jal` at 0x2ed04 calls get_nvreg with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2ed14 calls get_nvreg with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x2ecac targets 0x2ecc0, is taken when v0(=ret(get_nvreg)) == at(=0xda), and falls through when v0(=ret(get_nvreg)) != at(=0xda).
  The `beq` branch at 0x2ecc0 targets 0x2ecd0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x2ecc8 targets 0x2ece8, is taken when s0(=a0) != 0, and falls through when s0(=a0) == 0.
  The `beq` branch at 0x2ed20 targets 0x2ecd0 and is always taken.
  The return at 0x2ece0 has v0 = one of -0x1, 0x0.
- `nvram_dict_index_remove` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ed28 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ed28-0x2edcc (164 bytes).
  It occupies 164 bytes.
  The `jal` at 0x2ed34 calls get_nvreg with a0=0x36c3, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2ed50 calls get_nvreg with a0=0x36c4, a1=?, a2=?, a3=?.
  The `jal` at 0x2ed78 calls set_nvreg with a0=((a0 << 0x2)+14021 << 0x0), a1=0xff, a2=?, a3=?.
  The `jal` at 0x2ed8c calls set_nvreg with a0=?, a1=0xff, a2=?, a3=?.
  The `jal` at 0x2eda0 calls set_nvreg with a0=?, a1=0xff, a2=?, a3=?.
  The `jal` at 0x2edb4 calls set_nvreg with a0=0x36c4, a1=?, a2=?, a3=?.
  The `jal` at 0x2edbc calls update_checksum with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x2ed40 targets 0x2ed50, is taken when v0(=ret(get_nvreg)) == at(=0xda), and falls through when v0(=ret(get_nvreg)) != at(=0xda).
  The `beq` branch at 0x2ed60 targets 0x2ed44, is taken when (v0(=ret(get_nvreg)) & 0xff) == 0, and falls through when (v0(=ret(get_nvreg)) & 0xff) != 0.
  The `beq` branch at 0x2edc4 targets 0x2ed48 and is always taken.
  The return at 0x2ed48 has v0 = one of ret(get_nvreg), ?, ret(update_checksum).
- `nvram_prom_version_set` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2edcc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2edcc-0x2ee0c (64 bytes).
  It occupies 64 bytes.
  The `jal` at 0x2ede4 calls set_nvreg with a0=0x3779, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2edf0 calls set_nvreg with a0=0x377a, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x2edf8 calls update_checksum with a0=?, a1=?, a2=?, a3=?.
  The return at 0x2ee04 has v0 = ret(update_checksum).
- `nvram_prom_version_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ee0c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ee0c-0x2ee4c (64 bytes).
  It occupies 64 bytes.
  The `sb` at 0x2ee30 stores 1 byte to a0 (arg0 at entry) +0x0.
  The `sb` at 0x2ee48 stores 1 byte to a1 (arg1 at entry) +0x0.
  The `jal` at 0x2ee20 calls get_nvreg with a0=0x3779, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2ee2c calls get_nvreg with a0=0x377a, a1=?, a2=?, a3=?.
  The return at 0x2ee44 has v0 = ret(get_nvreg).
- `nvram_enable_cpu_set` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ee4c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ee4c-0x2eee0 (148 bytes).
  It occupies 148 bytes.
  The `ld` at 0x2ee64 loads 8 bytes from (sym(pdaindr) + (a0 << 0x4)) +0x8.
  The `lh` at 0x2ee70 loads 2 bytes from [(sym(pdaindr) + (a0 << 0x4))+8]:8 +0x42c.
  The `lbu` at 0x2ee74 loads 1 byte from [(sym(pdaindr) + (a0 << 0x4))+8]:8 +0x528.
  The `ld` at 0x2ee9c loads 8 bytes from (sp-48 + ([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1320]:1 << 0x3)) +0x0.
  The `jal` at 0x2eea8 calls ip27log_unsetenv with a0=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1068]:2, a1=[(sp-48 + ([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1320]:1 << 0x3))]:8, a2=0x0, a3=a3 at entry (arg3), a6=[(sp-48 + ([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1320]:1 << 0x3))]:8, a7=sym(.rodata)+49640.
  The `jal` at 0x2eed0 calls ip27log_setenv with a0=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1068]:2, a1=[(sp-48 + ([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1320]:1 << 0x3))]:8, a2=sym(.rodata)+49640, a3=0x0, a6=[(sp-48 + ([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1320]:1 << 0x3))]:8, a7=sym(.rodata)+49640.
  The `beq` branch at 0x2ee98 targets 0x2eec4, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x2eed8 targets 0x2eeb4 and is always taken.
  The return at 0x2eebc has v0 = one of ret(ip27log_unsetenv), ret(ip27log_setenv).
- `set_part_reboot_nvram` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2eee0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2eee0-0x2ef04 (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0x2eef0 calls set_nvram_offset [0x2e4c0] with a0=0x46f, a1=0x1, a2=a0 at entry (arg0), a3=a3 at entry (arg3).
  The return at 0x2eefc has v0 = ret(set_nvram_offset).
- `ioc_base` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ef04 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ef04-0x2ef80 (124 bytes).
  It occupies 124 bytes.
  The `ld` at 0x2ef1c loads 8 bytes from (sym(modules) + (a0 << 0x3)) +0x0.
  The `lh` at 0x2ef30 loads 2 bytes from [(sym(modules) + (a0 << 0x3))]:8 +0x0.
  The `jal` at 0x2ef2c calls sprintf with a0=sp-272, a1=sym(.rodata)+49640, a2=[[(sym(modules) + (a0 << 0x3))]:8]:2, a3=sym(ioc_path).
  The `jal` at 0x2ef40 calls hwgraph_path_lookup with a0=[sym(hwgraph_root)], a1=sp-272, a2=sp-16, a3=0x0.
  The `jalr` at 0x2ef60 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?, a4=[sym(ioc_get_mem)]:8.
  The `beq` branch at 0x2ef48 targets 0x2ef5c, is taken when v0(=ret(hwgraph_path_lookup)) == 0, and falls through when v0(=ret(hwgraph_path_lookup)) != 0.
  The `bne` branch at 0x2ef68 targets 0x2ef78, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0x2ef70 targets 0x2ef50 and is always taken.
  The `beq` branch at 0x2ef78 targets 0x2ef54 and is always taken.
  The return at 0x2ef54 has v0 = one of 0x0, ret(?).
- `get_nvreg_base` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ef80 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ef80-0x2ef9c (28 bytes).
  It occupies 28 bytes.
  The `lbu` at 0x2ef98 loads 1 byte from ?.
  The return at 0x2ef94 has v0 = ?.
- `set_nvreg_base` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ef9c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ef9c-0x2efbc (32 bytes).
  It occupies 32 bytes.
  The `sb` at 0x2efb8 stores 1 byte to ?.
  The return at 0x2efb4 has v0 = 0x0.
- `nvchecksum_base` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2efbc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2efbc-0x2f078 (188 bytes).
  It occupies 188 bytes.
  The `jal` at 0x2eff0 calls get_nvreg_base [0x2ef80] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x2f044 calls get_nvreg with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x2efe8 targets 0x2f038 and is always taken.
  The `beq` branch at 0x2effc targets 0x2f01c, is taken when s3(=0x4bc) == s0(?), and falls through when s3(=0x4bc) != s0(?).
  The `beq` branch at 0x2f004 targets 0x2f01c, is taken when s4(=0x46f) == s0(?), and falls through when s4(=0x46f) != s0(?).
  The `beq` branch at 0x2f030 targets 0x2f054, is taken when s0(?) >= 0x7fd1 (unsigned), and falls through when s0(?) < 0x7fd1 (unsigned).
  The `bne` branch at 0x2f03c targets 0x2eff0, is taken when s2(=a0) != 0, and falls through when s2(=a0) == 0.
  The `beq` branch at 0x2f04c targets 0x2effc and is always taken.
  The return at 0x2f070 has v0 = ?.
- `update_checksum_base` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2f078 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2f078-0x2f0ac (52 bytes).
  It occupies 52 bytes.
  The `jal` at 0x2f084 calls nvchecksum_base [0x2efbc] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2f094 calls set_nvreg_base [0x2ef9c] with a0=a0 at entry (arg0), a1=0x4bc, a2=ret(nvchecksum_base), a3=?.
  The return at 0x2f0a4 has v0 = ret(set_nvreg_base).
- `moduleid_to_decompressed_rack` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2f334 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2f334-0x2f3ac (120 bytes).
  It occupies 120 bytes.
  The return at 0x2f3a4 has v0 = ?.
- `brick_lookup` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2f3ac (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2f3ac-0x2f440 (148 bytes).
  It occupies 148 bytes.
  2 such `lh` accesses load 2 bytes from ?, including `lh` at 0x2f3f8, `lh` at 0x2f404.
  The `jal` at 0x2f3f4 calls moduleid_to_decompressed_rack [0x2f334] with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x2f3d4 targets 0x2f41c, is taken when a3 <= 0 (signed), and falls through when a3 > 0 (signed).
  The `beq` branch at 0x2f3dc targets 0x2f3f4 and is always taken.
  The `beq` branch at 0x2f3ec targets 0x2f41c, is taken when s1(?) >= s3(=a3) (signed), and falls through when s1(?) < s3(=a3) (signed).
  The `bne` branch at 0x2f3fc targets 0x2f3e4, is taken when v0(=ret(moduleid_to_decompressed_rack)) != s2(=a0), and falls through when v0(=ret(moduleid_to_decompressed_rack)) == s2(=a0).
  The `bne` branch at 0x2f40c targets 0x2f3e8, is taken when s4(=a1) != v1(?), and falls through when s4(=a1) == v1(?).
  The `beq` branch at 0x2f414 targets 0x2f424 and is always taken.
  The return at 0x2f438 has v0 = one of ?, -0x1.
- `rbrick_lookup` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2f558 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2f558-0x2f57c (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0x2f568 calls brick_lookup [0x2f3ac] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(iobrick_moduleids), a3=[sym(num_rbricks)].
  The return at 0x2f574 has v0 = ret(brick_lookup).
- `iobrick_lookup` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2f5a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2f5a0-0x2f5c0 (32 bytes).
  It occupies 32 bytes.
  The `jal` at 0x2f5ac calls brick_lookup [0x2f3ac] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(iobrick_moduleids), a3=[sym(num_iobricks)].
  The return at 0x2f5b8 has v0 = ret(brick_lookup).
- `strayfp_intr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2f5c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2f5c0-0x2f614 (84 bytes).
  It occupies 84 bytes.
  The `jal` at 0x2f5c8 calls getsr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2f5d4 calls setsr with a0=(ret(getsr) | 0x20000000), a1=?, a2=?, a3=?.
  The `jal` at 0x2f5dc calls set_fpc_csr with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0x2f5e4 calls getsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2f5f4 calls setsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2f600 calls cmn_err with a0=0x5, a1=sym(.rodata)+50008, a2=?, a3=?.
  The return at 0x2f60c has v0 = ret(cmn_err).
- `fp_intr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2f664 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2f664-0x2f790 (300 bytes).
  It occupies 300 bytes.
  The `ld` at 0x2f66c loads 8 bytes from abs 0xffffffffffffc018.
  The `ld` at 0x2f684 loads 8 bytes from [-0x3fe8]:8 +0x328.
  The `lbu` at 0x2f688 loads 1 byte from [[-0x3fe8]:8+808]:8 +0x215.
  2 such `sb` accesses store 1 byte to [[-0x3fe8]:8+808]:8 +0x215, including `sb` at 0x2f69c, `sb` at 0x2f77c.
  The `ld` at 0x2f6a0 loads 8 bytes from a0 (arg0 at entry) +0x118.
  2 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x550, including `lw` at 0x2f6c8, `lw` at 0x2f6e4.
  The `lw` at 0x2f6dc loads 4 bytes from [-0x3fe8]:8 +0x554.
  The `ld` at 0x2f6e0 loads 8 bytes from a0 (arg0 at entry) +0x120.
  The `sd` at 0x2f760 stores 8 bytes to a0 (arg0 at entry) +0x160.
  The `sd` at 0x2f768 stores 8 bytes to a0 (arg0 at entry) +0x120.
  The `jal` at 0x2f6b8 calls load_fpcsr with a0=[[[-0x3fe8]:8+808]:8+533]:1, a1=[[-0x3fe8]:8+808]:8, a2=a2 at entry (arg2), a3=0x1.
  The `jal` at 0x2f6cc calls emulate_branch with a0=a0 at entry (arg0), a1=[[-0x3fe8]:8+1360], a2=ret(load_fpcsr), a3=sp-48.
  The `jal` at 0x2f710 calls softfp_dispatch [0x2f790] with a0=a0 at entry (arg0), a1=?, a2=0x11, a3=0x13, a4=0x23.
  The `jal` at 0x2f724 calls checkfp with a0=[-0x3fe8]:8, a1=0x2, a2=?, a3=?.
  The `jal` at 0x2f734 calls sendSIGFPE [0x2f614] with a0=[-0x3fe8]:8, a1=?, a2=0x11, a3=0x13, a4=0x23.
  The `jal` at 0x2f76c calls strayfp_intr [0x2f5c0] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1.
  The `jal` at 0x2f780 calls sendSIGFPE [0x2f614] with a0=[-0x3fe8]:8, a1=[[-0x3fe8]:8+808]:8, a2=a2 at entry (arg2), a3=0x1, a4=0x2.
  The `beq` branch at 0x2f67c targets 0x2f76c, is taken when s0(=[-0x3fe8]:8) == 0, and falls through when s0(=[-0x3fe8]:8) != 0.
  The `beq` branch at 0x2f68c targets 0x2f6a0, is taken when a0(=[[[-0x3fe8]:8+808]:8+533]:1) == 0, and falls through when a0(=[[[-0x3fe8]:8+808]:8+533]:1) != 0.
  The `beq` branch at 0x2f694 targets 0x2f77c, is taken when a0(=[[[-0x3fe8]:8+808]:8+533]:1) == a3(=0x1), and falls through when a0(=[[[-0x3fe8]:8+808]:8+533]:1) != a3(=0x1).
  The `beq` branch at 0x2f6b0 targets 0x2f6e0, is taken when (at(=[a0+280]:8) & v0(=0x80000000)) == 0, and falls through when (at(=[a0+280]:8) & v0(=0x80000000)) != 0.
  The `beq` branch at 0x2f6d8 targets 0x2f6f0 and is always taken.
  The `beq` branch at 0x2f700 targets 0x2f750, is taken when a0(?) == a2(=0x11), and falls through when a0(?) != a2(=0x11).
  The `bne` branch at 0x2f708 targets 0x2f734, is taken when a0(?) != a3(=0x13), and falls through when a0(?) == a3(=0x13).
  The `beq` branch at 0x2f718 targets 0x2f760, is taken when v0(=ret(softfp_dispatch)) == 0, and falls through when v0(=ret(softfp_dispatch)) != 0.
  The `beq` branch at 0x2f72c targets 0x2f740 and is always taken.
  The `bne` branch at 0x2f750 targets 0x2f708, is taken when a5(?) != a4(=0x23), and falls through when a5(?) == a4(=0x23).
  The `beq` branch at 0x2f758 targets 0x2f710 and is always taken.
  The `beq` branch at 0x2f764 targets 0x2f73c and is always taken.
  The `beq` branch at 0x2f774 targets 0x2f740 and is always taken.
  The `beq` branch at 0x2f788 targets 0x2f740 and is always taken.
  The return at 0x2f748 has v0 = one of ret(checkfp), ?, ret(strayfp_intr), ret(sendSIGFPE).
- `klhwg_invent_alloc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x321a8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x321a8-0x32228 (128 bytes).
  It occupies 128 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc400, including `ld` at 0x321d4, `ld` at 0x321f8.
  2 such `ld` accesses load 8 bytes from [-0x3c00]:8 +0x0, including `ld` at 0x321dc, `ld` at 0x321fc.
  2 such `ld` accesses load 8 bytes from ([[-0x3c00]:8]:8 + (a0 << 0x3)) +0x0, including `ld` at 0x321e8, `ld` at 0x32204.
  The `lh` at 0x321f0 loads 2 bytes from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x861a.
  The `sh` at 0x321f4 stores 2 bytes to ret(kern_malloc) +0x0.
  The `lbu` at 0x32210 loads 1 byte from [([[-0x3c00]:8]:8 + (a0 << 0x3))]:8 +0x8618.
  The `sw` at 0x32214 stores 4 bytes to ret(kern_malloc) +0x8.
  The `sh` at 0x3221c stores 2 bytes to ret(kern_malloc) +0x2.
  The `jal` at 0x321b8 calls kern_malloc with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x321c4 targets 0x321d4, is taken when v0(=ret(kern_malloc)) != 0, and falls through when v0(=ret(kern_malloc)) == 0.
  The `beq` branch at 0x321cc targets 0x32220 and is always taken.
  The return at 0x32220 has v0 = one of 0x0, ret(kern_malloc).
- `klhwg_cpu_invent_info` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x32228 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x32228-0x3233c (276 bytes).
  It occupies 276 bytes.
  The `lbu` at 0x32260 loads 1 byte from a2 (arg2 at entry) +0x2.
  2 such `sb` accesses store 1 byte to ret(klhwg_invent_alloc) +0x4, including `sb` at 0x32274, `sb` at 0x32314.
  2 such `lhu` accesses load 2 bytes from a2 (arg2 at entry) +0x38, including `lhu` at 0x32278, `lhu` at 0x322c4.
  The `sw` at 0x3227c stores 4 bytes to ret(klhwg_invent_alloc) +0xc.
  2 such `lhu` accesses load 2 bytes from a2 (arg2 at entry) +0x3c, including `lhu` at 0x32280, `lhu` at 0x32318.
  The `sw` at 0x32284 stores 4 bytes to ret(klhwg_invent_alloc) +0x10.
  The `lhu` at 0x32288 loads 2 bytes from a2 (arg2 at entry) +0x40.
  The `sw` at 0x32290 stores 4 bytes to ret(klhwg_invent_alloc) +0x18.
  The `lhu` at 0x32294 loads 2 bytes from a2 (arg2 at entry) +0x3e.
  The `sw` at 0x32298 stores 4 bytes to ret(klhwg_invent_alloc) +0x14.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x1c, including `lw` at 0x3229c, `lw` at 0x32328.
  The `sh` at 0x322a0 stores 2 bytes to ret(klhwg_invent_alloc) +0x1c.
  The `lwu` at 0x322a4 loads 4 bytes from a2 (arg2 at entry) +0x1c.
  The `ld` at 0x322b0 loads 8 bytes from (sym(pdaindr) + ([a2+28] << 0x4)) +0x8.
  The `lbu` at 0x322b4 loads 1 byte from [(sym(pdaindr) + ([a2+28] << 0x4))+8]:8 +0x528.
  The `sh` at 0x322b8 stores 2 bytes to ret(klhwg_invent_alloc) +0x1e.
  The `lhu` at 0x322bc loads 2 bytes from a2 (arg2 at entry) +0x3a.
  The `sh` at 0x322c0 stores 2 bytes to ret(klhwg_invent_alloc) +0x20.
  The `jal` at 0x3224c calls klhwg_invent_alloc with a0=a1 at entry (arg1), a1=0x1, a2=0x24, a3=a3 at entry (arg3).
  The `jal` at 0x322e0 calls hwgraph_info_add_LBL with a0=a0 at entry (arg0), a1=sym(.rodata)+51152, a2=ret(klhwg_invent_alloc), a3=?.
  The `jal` at 0x322f0 calls hwgraph_info_export_LBL with a0=a0 at entry (arg0), a1=sym(.rodata)+51152, a2=0x24, a3=?.
  The `jal` at 0x3232c calls cmn_err with a0=0x4, a1=sym(.rodata)+51152, a2=[a2+28], a3=a0 at entry (arg0), a4=[a2+56]:2, a5=([a2+28] << 0x4), a6=[a2+28], a7=[a2+62]:2.
  The `beq` branch at 0x32258 targets 0x322f8, is taken when v0(=ret(klhwg_invent_alloc)) == 0, and falls through when v0(=ret(klhwg_invent_alloc)) != 0.
  The `beq` branch at 0x3226c targets 0x32310, is taken when (at(=[a2+2]:1) & 0x1) == 0, and falls through when (at(=[a2+2]:1) & 0x1) != 0.
  The `beq` branch at 0x3228c targets 0x32318, is taken when v0(=[sym(.sdata)+404]) == 0, and falls through when v0(=[sym(.sdata)+404]) != 0.
  The `bne` branch at 0x322cc targets 0x32324, is taken when a4(=[a2+56]:2) < 0x926 (signed), and falls through when a4(=[a2+56]:2) >= 0x926 (signed).
  The `beq` branch at 0x32310 targets 0x32278 and is always taken.
  The `beq` branch at 0x3231c targets 0x32294 and is always taken.
  The `beq` branch at 0x32334 targets 0x322d8 and is always taken.
  The return at 0x32308 has v0 = one of ret(klhwg_invent_alloc), ret(hwgraph_info_export_LBL).
- `klhwg_disabled_cpu_invent_info` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3233c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3233c-0x32458 (284 bytes).
  It occupies 284 bytes.
  The `sb` at 0x3238c stores 1 byte to ret(klhwg_invent_alloc) +0x4.
  The `sh` at 0x32394 stores 2 bytes to ret(klhwg_invent_alloc) +0x2.
  2 such `lhu` accesses load 2 bytes from a2 (arg2 at entry) +0x38, including `lhu` at 0x32398, `lhu` at 0x323d0.
  The `sw` at 0x3239c stores 4 bytes to ret(klhwg_invent_alloc) +0xc.
  The `lhu` at 0x323a0 loads 2 bytes from a2 (arg2 at entry) +0x3c.
  The `sw` at 0x323a4 stores 4 bytes to ret(klhwg_invent_alloc) +0x10.
  The `lhu` at 0x323a8 loads 2 bytes from a2 (arg2 at entry) +0x40.
  The `sw` at 0x323ac stores 4 bytes to ret(klhwg_invent_alloc) +0x18.
  The `lhu` at 0x323b0 loads 2 bytes from a2 (arg2 at entry) +0x3e.
  The `sw` at 0x323b4 stores 4 bytes to ret(klhwg_invent_alloc) +0x14.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x1c, including `lw` at 0x323b8, `lw` at 0x32444.
  The `sh` at 0x323bc stores 2 bytes to ret(klhwg_invent_alloc) +0x1c.
  The `lbu` at 0x323c0 loads 1 byte from a2 (arg2 at entry) +0x18.
  The `sh` at 0x323c4 stores 2 bytes to ret(klhwg_invent_alloc) +0x1e.
  The `lhu` at 0x323c8 loads 2 bytes from a2 (arg2 at entry) +0x3a.
  The `sh` at 0x323cc stores 2 bytes to ret(klhwg_invent_alloc) +0x20.
  The `jal` at 0x32364 calls klhwg_invent_alloc with a0=a1 at entry (arg1), a1=0x1, a2=0x24, a3=a3 at entry (arg3).
  The `jal` at 0x3237c calls klhwg_invent_alloc with a0=a1 at entry (arg1), a1=0x46, a2=0x5c, a3=?.
  The `jal` at 0x323ec calls hwgraph_info_add_LBL with a0=a0 at entry (arg0), a1=sym(.rodata)+51152, a2=ret(klhwg_invent_alloc), a3=?.
  The `jal` at 0x32400 calls hwgraph_info_export_LBL with a0=a0 at entry (arg0), a1=sym(.rodata)+51152, a2=0x24, a3=?.
  The `jal` at 0x32410 calls hwgraph_info_add_LBL with a0=a0 at entry (arg0), a1=sym(.rodata)+51152, a2=?, a3=?.
  The `jal` at 0x32420 calls hwgraph_info_export_LBL with a0=a0 at entry (arg0), a1=sym(.rodata)+51152, a2=0x5c, a3=?.
  The `jal` at 0x32448 calls cmn_err with a0=0x4, a1=sym(.rodata)+51152, a2=[a2+28], a3=a0 at entry (arg0), a4=[a2+56]:2, a5=[a2+56]:2, a6=a3 at entry (arg3), a7=a2 at entry (arg2).
  The `beq` branch at 0x3236c targets 0x32428, is taken when v0(=ret(klhwg_invent_alloc)) == 0, and falls through when v0(=ret(klhwg_invent_alloc)) != 0.
  The `beq` branch at 0x32384 targets 0x32428, is taken when v0(=ret(klhwg_invent_alloc)) == 0, and falls through when v0(=ret(klhwg_invent_alloc)) != 0.
  The `bne` branch at 0x323d8 targets 0x3243c, is taken when a4(=[a2+56]:2) < 0x926 (signed), and falls through when a4(=[a2+56]:2) >= 0x926 (signed).
  The `beq` branch at 0x32450 targets 0x323e4 and is always taken.
  The return at 0x32434 has v0 = one of ret(klhwg_invent_alloc), ret(hwgraph_info_export_LBL).
- `klhwg_baseio_inventory_add` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x32458 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x32458-0x324e4 (140 bytes).
  It occupies 140 bytes.
  The `sw` at 0x3248c stores 4 bytes to ret(klhwg_invent_alloc) +0x14.
  The `sw` at 0x324a0 stores 4 bytes to ret(klhwg_invent_alloc) +0x10.
  The `sw` at 0x324b0 stores 4 bytes to ret(klhwg_invent_alloc) +0xc.
  The `jal` at 0x3247c calls klhwg_invent_alloc with a0=a1 at entry (arg1), a1=0x15, a2=0x20, a3=a3 at entry (arg3).
  The `jal` at 0x32490 calls nvram_prom_version_get with a0=sp-32, a1=sp-31, a2=?, a3=?.
  The `jal` at 0x324b4 calls hwgraph_info_add_LBL with a0=a0 at entry (arg0), a1=sym(.rodata)+51152, a2=ret(klhwg_invent_alloc), a3=?.
  The `jal` at 0x324cc calls hwgraph_info_export_LBL with a0=a0 at entry (arg0), a1=sym(.rodata)+51152, a2=0x20, a3=?.
  The return at 0x324dc has v0 = ret(hwgraph_info_export_LBL).
- `klhwg_hub_invent_info` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x324e4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x324e4-0x3257c (152 bytes).
  It occupies 152 bytes.
  The `lbu` at 0x32514 loads 1 byte from a2 (arg2 at entry) +0x2.
  The `sb` at 0x32524 stores 1 byte to ret(klhwg_invent_alloc) +0x4.
  The `sw` at 0x32530 stores 4 bytes to ret(klhwg_invent_alloc) +0x14.
  The `lbu` at 0x32534 loads 1 byte from a2 (arg2 at entry) +0x3.
  The `sw` at 0x32538 stores 4 bytes to ret(klhwg_invent_alloc) +0xc.
  The `ld` at 0x32540 loads 8 bytes from a2 (arg2 at entry) +0x58.
  The `sd` at 0x32548 stores 8 bytes to ret(klhwg_invent_alloc) +0x18.
  The `jal` at 0x32504 calls klhwg_invent_alloc with a0=a1 at entry (arg1), a1=0xe, a2=0x20, a3=a3 at entry (arg3).
  The `jal` at 0x3254c calls hwgraph_info_add_LBL with a0=a0 at entry (arg0), a1=sym(.rodata)+51152, a2=ret(klhwg_invent_alloc), a3=[a2+3]:1, a4=0x4.
  The `jal` at 0x32560 calls hwgraph_info_export_LBL with a0=a0 at entry (arg0), a1=sym(.rodata)+51152, a2=0x20, a3=?.
  The `beq` branch at 0x3250c targets 0x32568, is taken when v0(=ret(klhwg_invent_alloc)) == 0, and falls through when v0(=ret(klhwg_invent_alloc)) != 0.
  The `beq` branch at 0x3251c targets 0x3252c, is taken when (at(=[a2+2]:1) & 0x1) == 0, and falls through when (at(=[a2+2]:1) & 0x1) != 0.
  The return at 0x32574 has v0 = one of ret(klhwg_invent_alloc), ret(hwgraph_info_export_LBL).
- `klhwg_mem_invent_info` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3257c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3257c-0x327bc (576 bytes).
  It occupies 576 bytes.
  The `sh` at 0x325d4 stores 2 bytes to ret(klhwg_invent_alloc) +0x2.
  2 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0x2, including `lbu` at 0x325d8, `lbu` at 0x326dc.
  2 such `sb` accesses store 1 byte to ret(klhwg_invent_alloc) +0x4, including `sb` at 0x325e8, `sb` at 0x327a4.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x32654, `lw` at 0x3272c.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x3265c, `sw` at 0x3268c, `sw` at 0x32738.
  2 such `lh` accesses load 2 bytes from ?, including `lh` at 0x32680, `lh` at 0x326a0.
  5 such `sh` accesses store 2 bytes to ?, including `sh` at 0x32688, `sh` at 0x32690, `sh` at 0x326c4.
  3 such `lbu` accesses load 1 byte from a2 (arg2 at entry) +0x1, including `lbu` at 0x32694, `lbu` at 0x326c8, `lbu` at 0x326f0.
  The `lh` at 0x32698 loads 2 bytes from a2 (arg2 at entry) +0x4c.
  The `lbu` at 0x3270c loads 1 byte from ?.
  The `sh` at 0x32748 stores 2 bytes to ret(klhwg_invent_alloc) +0xe.
  The `sh` at 0x32750 stores 2 bytes to ret(klhwg_invent_alloc) +0xc.
  The `jal` at 0x325ac calls klhwg_invent_alloc with a0=a1 at entry (arg1), a1=0x3, a2=0x50, a3=a3 at entry (arg3).
  The `jal` at 0x32600 calls ip27log_getenv with a0=a4 at entry (arg4), a1=sym(.rodata)+51152, a2=sp-144, a3=0x0, a4=0x0.
  The `jal` at 0x32624 calls ip27log_getenv with a0=a4 at entry (arg4), a1=sym(.rodata)+51152, a2=sp-128, a3=0x0, a4=0x0.
  The `jal` at 0x326fc calls strchr with a0=sp-144, a1=?, a2=?, a3=[a2+1]:1.
  The `jal` at 0x32754 calls hwgraph_info_add_LBL with a0=a0 at entry (arg0), a1=sym(.rodata)+51152, a2=ret(klhwg_invent_alloc), a3=?.
  The `jal` at 0x3276c calls hwgraph_info_export_LBL with a0=a0 at entry (arg0), a1=sym(.rodata)+51152, a2=0x50, a3=?.
  The `beq` branch at 0x325c8 targets 0x32774, is taken when v0(=ret(klhwg_invent_alloc)) == 0, and falls through when v0(=ret(klhwg_invent_alloc)) != 0.
  The `beq` branch at 0x325e0 targets 0x327a0, is taken when (at(=[a2+2]:1) & 0x1) == 0, and falls through when (at(=[a2+2]:1) & 0x1) != 0.
  The `bltz` branch at 0x32608 targets 0x3262c, is taken when v0(=ret(ip27log_getenv)) < 0 (signed), and falls through when v0(=ret(ip27log_getenv)) >= 0 (signed).
  The `beq` branch at 0x32640 targets 0x327a8 and is always taken.
  The `beq` branch at 0x3264c targets 0x32660, is taken when (a1(=[a2+2]:1) & 0x1) == 0, and falls through when (a1(=[a2+2]:1) & 0x1) != 0.
  The `beq` branch at 0x32674 targets 0x3273c, is taken when s0(?) >= 0x8 (signed), and falls through when s0(?) < 0x8 (signed).
  The `bne` branch at 0x326b4 targets 0x326e0, is taken when a3(=[a2+1]:1) < 0x2 (signed), and falls through when a3(=[a2+1]:1) >= 0x2 (signed).
  The `beq` branch at 0x326bc targets 0x326d0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x326d0 targets 0x326f4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x326d8 targets 0x32648 and is always taken.
  The `beq` branch at 0x326e0 targets 0x326d0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x326ec targets 0x326cc and is always taken.
  The `bltz` branch at 0x326f4 targets 0x3272c, is taken when a7(?) < 0 (signed), and falls through when a7(?) >= 0 (signed).
  The `beq` branch at 0x32704 targets 0x3272c, is taken when v0(=ret(strchr)) == 0, and falls through when v0(=ret(strchr)) != 0.
  The `beq` branch at 0x32714 targets 0x32724, is taken when a3(=0x30) == a2(?), and falls through when a3(=0x30) != a2(?).
  The `beq` branch at 0x32724 targets 0x32660 and is always taken.
  The `beq` branch at 0x32734 targets 0x32660 and is always taken.
  The `beq` branch at 0x327a0 targets 0x325ec and is always taken.
  The `beq` branch at 0x327b4 targets 0x32680 and is always taken.
  The return at 0x32798 has v0 = one of ret(klhwg_invent_alloc), ret(hwgraph_info_export_LBL).
- `klhwg_add_hub` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x327bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x327bc-0x32890 (212 bytes).
  It occupies 212 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc400, including `ld` at 0x327f4, `ld` at 0x3283c.
  2 such `ld` accesses load 8 bytes from [-0x3c00]:8 +0x0, including `ld` at 0x327f8, `ld` at 0x32844.
  The `ld` at 0x3280c loads 8 bytes from ([[-0x3c00]:8]:8 + (a2 << 0x3)) +0x0.
  The `ld` at 0x32854 loads 8 bytes from ?.
  The `jal` at 0x327e0 calls hwgraph_path_add with a0=a0 at entry (arg0), a1=sym(.rodata)+51152, a2=sp-48, a3=a3 at entry (arg3).
  The `jal` at 0x327ec calls device_master_set with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x32820 calls hwgraph_info_add_LBL with a0=?, a1=sym(.rodata)+51152, a2=[([[-0x3c00]:8]:8 + (a2 << 0x3))]:8+34760, a3=0x87c8.
  The `jal` at 0x32834 calls klhwg_hub_invent_info with a0=?, a1=a2 at entry (arg2), a2=a1 at entry (arg1), a3=?.
  The `jal` at 0x32850 calls init_hub_stats with a0=a2 at entry (arg2), a1=?, a2=?, a3=?.
  The `jal` at 0x3285c calls sndrv_attach with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x32880 calls cmn_err with a0=0x4, a1=sym(.rodata)+51152, a2=?, a3=ret(hwgraph_info_add_LBL).
  The `bne` branch at 0x32828 targets 0x32870, is taken when v0(=ret(hwgraph_info_add_LBL)) != 0, and falls through when v0(=ret(hwgraph_info_add_LBL)) == 0.
  The `beq` branch at 0x32888 targets 0x32830 and is always taken.
  The return at 0x32868 has v0 = ret(sndrv_attach).
- `klhwg_add_disabled_cpu` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x32890 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x32890-0x32930 (160 bytes).
  It occupies 160 bytes.
  The `lh` at 0x3289c loads 2 bytes from a2 (arg2 at entry) +0x1e.
  The `lbu` at 0x328c0 loads 1 byte from a2 (arg2 at entry) +0x18.
  The `jal` at 0x328d8 calls sprintf with a0=sp-176, a1=sym(.rodata)+51152, a2=sym(.rodata)+51152, a3=sym(.rodata)+51152, a4=[a2+24]:1+97.
  The `jal` at 0x328e8 calls hwgraph_path_add with a0=a0 at entry (arg0), a1=sp-176, a2=sp-56, a3=?.
  The `jal` at 0x328f4 calls mark_cpuvertex_as_cpu with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x32900 calls device_master_set with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x32914 calls klhwg_disabled_cpu_invent_info with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x328b8 targets 0x3291c, is taken when at(=[a2+30]:2) == v0(=-0x1), and falls through when at(=[a2+30]:2) != v0(=-0x1).
  The return at 0x32928 has v0 = one of -0x1, ret(klhwg_disabled_cpu_invent_info).
- `klhwg_add_cpu` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x32930 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x32930-0x32af0 (448 bytes).
  It occupies 448 bytes.
  2 such `lh` accesses load 2 bytes from a2 (arg2 at entry) +0x1e, including `lh` at 0x32938, `lh` at 0x329a4.
  The `ld` at 0x32954 loads 8 bytes from (sym(pdaindr) + ([a2+30]:2 << 0x4)) +0x8.
  The `lbu` at 0x32968 loads 1 byte from [(sym(pdaindr) + ([a2+30]:2 << 0x4))+8]:8 +0x528.
  2 such `lwu` accesses load 4 bytes from a2 (arg2 at entry) +0x1c, including `lwu` at 0x329b0, `lwu` at 0x32a38.
  2 such `ld` accesses load 8 bytes from (sym(pdaindr) + ([a2+28] << 0x4)) +0x8, including `ld` at 0x329c0, `ld` at 0x32a44.
  The `ld` at 0x329d0 loads 8 bytes from [(sym(pdaindr) + ([a2+28] << 0x4))+8]:8 +0x740.
  The `sd` at 0x32a48 stores 8 bytes to [(sym(pdaindr) + ([a2+28] << 0x4))+8]:8 +0x698.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x1c, including `lw` at 0x32a4c, `lw` at 0x32aec.
  2 such `ld` accesses load 8 bytes from table(sym(pdaindr)) +0x8, including `ld` at 0x32a5c, `ld` at 0x32a78.
  2 such `ld` accesses load 8 bytes from [table(sym(pdaindr))+8]:8 +0x698, including `ld` at 0x32a60, `ld` at 0x32a88.
  The `ld` at 0x32aa0 loads 8 bytes from ?.
  The `lbu` at 0x32aa8 loads 1 byte from ?.
  The `jal` at 0x3298c calls sprintf with a0=sp-176, a1=sym(.rodata)+51152, a2=sym(.rodata)+51152, a3=?.
  The `jal` at 0x3299c calls hwgraph_path_add with a0=a0 at entry (arg0), a1=sp-176, a2=sp-56, a3=?.
  The `jal` at 0x329a8 calls mark_cpuvertex_as_cpu with a0=?, a1=[a2+30]:2, a2=?, a3=?.
  The `jal` at 0x329cc calls hwgraph_info_add_LBL with a0=?, a1=sym(.rodata)+51152, a2=[[(sym(pdaindr) + ([a2+28] << 0x4))+8]:8+1856]:8, a3=?.
  The `jal` at 0x329d8 calls device_master_set with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x329ec calls hwgraph_edge_get with a0=a0 at entry (arg0), a1=sym(.rodata)+51152, a2=sp-52, a3=?.
  The `jal` at 0x32a04 calls klhwg_cpu_invent_info with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x32a18 calls sprintf with a0=sp-176, a1=sym(.rodata)+51152, a2=?, a3=?.
  The `jal` at 0x32a20 calls strlen with a0=sp-176, a1=?, a2=?, a3=?.
  The `jal` at 0x32a30 calls kmem_alloc_node with a0=ret(strlen)+1, a1=0x101, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0x32a84 calls strcpy with a0=[[table(sym(pdaindr))+8]:8+1688]:8, a1=sp-176, a2=[a2+28], a3=?.
  The `jal` at 0x32ab4 calls sprintf with a0=sp-176, a1=sym(.rodata)+51152, a2=?, a3=?.
  The `jal` at 0x32ac4 calls hwgraph_edge_add with a0=?, a1=?, a2=sp-176, a3=?.
  The `jal` at 0x32ae0 calls assfail with a0=sym(.rodata)+51152, a1=sym(.rodata)+51152, a2=0x222, a3=[[table(sym(pdaindr))+8]:8+1688]:8, a4=[(sym(pdaindr) + ([a2+28] << 0x4))+8]:8.
  The `beq` branch at 0x329f4 targets 0x32a9c, is taken when v0(=ret(hwgraph_edge_get)) == 0, and falls through when v0(=ret(hwgraph_edge_get)) != 0.
  The `beq` branch at 0x32a64 targets 0x32ad4, is taken when a3(=[[table(sym(pdaindr))+8]:8+1688]:8) == 0, and falls through when a3(=[[table(sym(pdaindr))+8]:8+1688]:8) != 0.
  The `beq` branch at 0x32acc targets 0x32a00 and is always taken.
  The `beq` branch at 0x32ae8 targets 0x32a6c and is always taken.
  The return at 0x32a94 has v0 = ret(strcpy).
- `klhwg_add_mem` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x32af0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x32af0-0x32b58 (104 bytes).
  It occupies 104 bytes.
  The `jal` at 0x32b14 calls hwgraph_path_add with a0=a0 at entry (arg0), a1=sym(.rodata)+51152, a2=sp-64, a3=a3 at entry (arg3).
  The `jal` at 0x32b30 calls device_master_set with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x32b48 calls klhwg_mem_invent_info with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x32b1c targets 0x32b30, is taken when v0(=ret(hwgraph_path_add)) == 0, and falls through when v0(=ret(hwgraph_path_add)) != 0.
  The `beq` branch at 0x32b50 targets 0x32b28 and is always taken.
  The return at 0x32b28 has v0 = one of ret(hwgraph_path_add), ret(klhwg_mem_invent_info).
- `init_pebrick` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x32b58 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x32b58-0x32db4 (604 bytes).
  It occupies 604 bytes.
  6 such `lh` accesses load 2 bytes from a1 (arg1 at entry) +0x3a, including `lh` at 0x32b6c, `lh` at 0x32b9c, `lh` at 0x32bd8.
  2 such `lh` accesses load 2 bytes from a1 (arg1 at entry) +0x38, including `lh` at 0x32b8c, `lh` at 0x32cd8.
  The `lh` at 0x32bc8 loads 2 bytes from (sym(nasid_to_compact_node) + ([a1+58]:2 + [a1+58]:2)) +0x0.
  The `sh` at 0x32bd4 stores 2 bytes to ret(kmem_alloc) +0x8.
  The `sh` at 0x32bdc stores 2 bytes to ret(kmem_alloc) +0xa.
  The `sb` at 0x32bec stores 1 byte to ret(kmem_alloc) +0xc.
  8 such `ld` accesses load 8 bytes from abs 0xffffffffffffc400, including `ld` at 0x32bf0, `ld` at 0x32c10, `ld` at 0x32c2c.
  8 such `ld` accesses load 8 bytes from [-0x3c00]:8 +0x0, including `ld` at 0x32bf4, `ld` at 0x32c14, `ld` at 0x32c30.
  8 such `ld` accesses load 8 bytes from ([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + ([a1+58]:2 + [a1+58]:2))]:2 << 0x3)) +0x0, including `ld` at 0x32c00, `ld` at 0x32c1c, `ld` at 0x32c38.
  The `sw` at 0x32c0c stores 4 bytes to [([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + ([a1+58]:2 + [a1+58]:2))]:2 << 0x3))]:8 +0x8c80.
  The `lw` at 0x32c20 loads 4 bytes from a1 (arg1 at entry) +0x40.
  The `sw` at 0x32c28 stores 4 bytes to [([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + ([a1+58]:2 + [a1+58]:2))]:2 << 0x3))]:8 +0x85fc.
  The `sd` at 0x32c40 stores 8 bytes to [([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + ([a1+58]:2 + [a1+58]:2))]:2 << 0x3))]:8 +0x8c88.
  The `sd` at 0x32c54 stores 8 bytes to ret(kmem_alloc) +0x0.
  The `sh` at 0x32c70 stores 2 bytes to [([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + ([a1+58]:2 + [a1+58]:2))]:2 << 0x3))]:8 +0x8600.
  The `sh` at 0x32c88 stores 2 bytes to [([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + ([a1+58]:2 + [a1+58]:2))]:2 << 0x3))]:8 +0x8598.
  The `sd` at 0x32ccc stores 8 bytes to [([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + ([a1+58]:2 + [a1+58]:2))]:2 << 0x3))]:8 +0x8620.
  The `ld` at 0x32cf4 loads 8 bytes from (sym(modules) + ([sym(nummodules)] << 0x3)) -0x8.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0xe, including `lh` at 0x32cf8, `lh` at 0x32d20.
  The `lh` at 0x32cfc loads 2 bytes from [(sym(modules) + ([sym(nummodules)] << 0x3))-8]:8 +0x0.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x32d10, `sd` at 0x32d58.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x32d1c, `ld` at 0x32d74.
  The `lh` at 0x32d24 loads 2 bytes from ?.
  The `ld` at 0x32d4c loads 8 bytes from [([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + ([a1+58]:2 + [a1+58]:2))]:2 << 0x3))]:8 +0x8620.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x32d8c, `sh` at 0x32d98.
  The `jal` at 0x32b90 calls printf with a0=sym(.rodata)+51152, a1=[a1+58]:2, a2=[a1+56]:2, a3=a2 at entry (arg2).
  The `jal` at 0x32bc4 calls kmem_alloc with a0=0x450, a1=0x1, a2=?, a3=?.
  The `jal` at 0x32be4 calls hub_widget_id with a0=[a1+58]:2, a1=?, a2=?, a3=?.
  The `jal` at 0x32c90 calls iobrick_module_get_nasid with a0=[a1+58]:2, a1=0x0, a2=[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + ([a1+58]:2 + [a1+58]:2))]:2 << 0x3))]:8+65536, a3=[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + ([a1+58]:2 + [a1+58]:2))]:2 << 0x3))]:8+65536.
  The `jal` at 0x32ca0 calls set_sn12_type with a0=[a1+58]:2, a1=?, a2=?, a3=?.
  The `jal` at 0x32cac calls kmem_zalloc with a0=0xa00, a1=0x1, a2=?, a3=?.
  The `jal` at 0x32cd4 calls elsc_init with a0=ret(kmem_zalloc)+40, a1=[a1+56]:2, a2=?, a3=?, a4=[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + ([a1+58]:2 + [a1+58]:2))]:2 << 0x3))]:8+65536.
  The `jal` at 0x32d54 calls hwgraph_connectpt_get with a0=a2 at entry (arg2), a1=?, a2=?, a3=?, a7=sym(modules).
  The `jal` at 0x32d70 calls hwgraph_fastinfo_set with a0=ret(hwgraph_connectpt_get), a1=?, a2=?, a3=?.
  The `blez` branch at 0x32cec targets 0x32d38, is taken when t8(=[sym(nummodules)]) <= 0 (signed), and falls through when t8(=[sym(nummodules)]) > 0 (signed).
  The `beq` branch at 0x32d04 targets 0x32d38, is taken when t9(=[a0+14]:2) >= ra(=[[(sym(modules) + ([sym(nummodules)] << 0x3))-8]:8]:2) (signed), and falls through when t9(=[a0+14]:2) < ra(=[[(sym(modules) + ([sym(nummodules)] << 0x3))-8]:8]:2) (signed).
  The `blez` branch at 0x32d14 targets 0x32da8, is taken when a4(?) <= 0 (signed), and falls through when a4(?) > 0 (signed).
  The `bne` branch at 0x32d30 targets 0x32d0c, is taken when t0(=[a0+14]:2) < t1(?) (signed), and falls through when t0(=[a0+14]:2) >= t1(?) (signed).
  The `beq` branch at 0x32dac targets 0x32d38 and is always taken.
  The return at 0x32da0 has v0 = ret(hwgraph_fastinfo_set).
- `klhwg_add_xbow` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x32db4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x32db4-0x33068 (692 bytes).
  It occupies 692 bytes.
  The `lbu` at 0x32dbc loads 1 byte from a2 (arg2 at entry) +0x9.
  The `ld` at 0x32e2c loads 8 bytes from (a1 << 0x21) -0x6fffffffcc000000.
  The `lbu` at 0x32eb4 loads 1 byte from ?.
  3 such `lh` accesses load 2 bytes from ?, including `lh` at 0x32ec4, `lh` at 0x32ee0, `lh` at 0x32f48.
  4 such `ld` accesses load 8 bytes from abs 0xffffffffffffc400, including `ld` at 0x32f00, `ld` at 0x32f2c, `ld` at 0x32f44.
  4 such `ld` accesses load 8 bytes from [-0x3c00]:8 +0x0, including `ld` at 0x32f04, `ld` at 0x32f30, `ld` at 0x32f4c.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x32f10, `ld` at 0x32f38, `ld` at 0x32f58.
  The `sw` at 0x32f18 stores 4 bytes to table(0x85fc) +0x0.
  The `lw` at 0x32f1c loads 4 bytes from table(0x8c80) +0x0.
  2 such `sh` accesses store 2 bytes to table(0x8600) +0x0, including `sh` at 0x32f40, `sh` at 0x32f64.
  The `lh` at 0x32f74 loads 2 bytes from (sym(nasid_to_compact_node) + (a1 + a1)) +0x0.
  The `ld` at 0x32f84 loads 8 bytes from ([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a1 + a1))]:2 << 0x3)) +0x0.
  The `lw` at 0x32f90 loads 4 bytes from [([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a1 + a1))]:2 << 0x3))]:8 +0x8c80.
  The `jal` at 0x32e00 calls find_component with a0=a2 at entry (arg2), a1=0x0, a2=0x4, a3=a3 at entry (arg3).
  The `jal` at 0x32e10 calls hwgraph_vertex_create with a0=sp-80, a1=?, a2=?, a3=?.
  The `jal` at 0x32e18 calls xswitch_vertex_init with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x32e54 calls iobrick_module_get_nasid with a0=a1 at entry (arg1), a1=0x8, a2=sym(nasid_to_compact_node), a3=(sym(nasid_to_compact_node) + (a1 + a1)).
  The `jal` at 0x32e70 calls iobrick_register with a0=?, a1=?, a2=-0x1, a3=?.
  The `jal` at 0x32e8c calls hwgraph_edge_add with a0=entry(0x8c80), a1=?, a2=sym(.rodata)+51152, a3=?, a7=entry(0x8c80).
  The `jal` at 0x32ee4 calls is_specified with a0=sym(arg_maxnodes), a1=sym(.rodata)+51152, a2=?, a3=-0x1.
  The `jal` at 0x32f9c calls hwgraph_edge_add with a0=[[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a1 + a1))]:2 << 0x3))]:8+35968], a1=?, a2=sym(.rodata)+51152, a3=(sym(nasid_to_compact_node) + (a1 + a1)).
  The `jal` at 0x32fac calls elsc_module_get_nasid with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x32fc8 calls iobrick_register with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x32fdc calls cmn_err with a0=0x4, a1=sym(.rodata)+51152, a2=?, a3=-0x1.
  The `jal` at 0x33000 calls cmn_err with a0=0x4, a1=sym(.rodata)+51152, a2=0x1, a3=?.
  The `jal` at 0x33024 calls cmn_err with a0=one of 0x0, 0x4, a1=sym(.rodata)+51152, a2=?, a3=?, a6=ret(hwgraph_edge_add).
  The `jal` at 0x3304c calls cmn_err with a0=0x4, a1=sym(.rodata)+51152, a2=[[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a1 + a1))]:2 << 0x3))]:8+35968], a3=[[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a1 + a1))]:2 << 0x3))]:8+35968], a6=ret(hwgraph_edge_add).
  The `beq` branch at 0x32dd8 targets 0x32dfc, is taken when (at(=[a2+9]:1) & 0x4) == 0, and falls through when (at(=[a2+9]:1) & 0x4) != 0.
  The `beq` branch at 0x32e08 targets 0x32de0, is taken when v0(=ret(find_component)) == 0, and falls through when v0(=ret(find_component)) != 0.
  The `beq` branch at 0x32e48 targets 0x32f70, is taken when a0(?) == a1(=0xc000), and falls through when a0(?) != a1(=0xc000).
  The `beq` branch at 0x32e68 targets 0x32e78, is taken when a0(?) == a2(=-0x1), and falls through when a0(?) != a2(=-0x1).
  The `beq` branch at 0x32e78 targets 0x3305c and is always taken.
  The `bne` branch at 0x32e94 targets 0x32fec, is taken when v0(=ret(hwgraph_edge_add)) != 0, and falls through when v0(=ret(hwgraph_edge_add)) == 0.
  The `beq` branch at 0x32ea4 targets 0x32f68, is taken when s1(?) >= 0x10 (signed), and falls through when s1(?) < 0x10 (signed).
  The `beq` branch at 0x32ebc targets 0x32e9c, is taken when (a4(?) & 0x2) == 0, and falls through when (a4(?) & 0x2) != 0.
  The `beq` branch at 0x32ec8 targets 0x32fd8, is taken when s2(?) == a3(=-0x1), and falls through when s2(?) != a3(=-0x1).
  The `beq` branch at 0x32ef0 targets 0x32efc, is taken when v0(=ret(is_specified)) == 0, and falls through when v0(=ret(is_specified)) != 0.
  The `beq` branch at 0x32ef8 targets 0x32e9c, is taken when a1(?) == a6(=-0x1), and falls through when a1(?) != a6(=-0x1).
  The `beq` branch at 0x32f20 targets 0x32e80, is taken when s0(=a1) == s2(?), and falls through when s0(=a1) != s2(?).
  The `beq` branch at 0x32f60 targets 0x32e80 and is always taken.
  The `beq` branch at 0x32f68 targets 0x32de4 and is always taken.
  The `bne` branch at 0x32fa4 targets 0x33034, is taken when v0(=ret(hwgraph_edge_add)) != 0, and falls through when v0(=ret(hwgraph_edge_add)) == 0.
  The `beq` branch at 0x32fc0 targets 0x32de4, is taken when a0(?) == t9(=-0x1), and falls through when a0(?) != t9(=-0x1).
  The `beq` branch at 0x32fd0 targets 0x32de4 and is always taken.
  The `beq` branch at 0x32fe4 targets 0x32ea0 and is always taken.
  The `bne` branch at 0x32ff0 targets 0x3300c, is taken when v0(=ret(hwgraph_edge_add)) != a2(=0x1), and falls through when v0(=ret(hwgraph_edge_add)) == a2(=0x1).
  The `beq` branch at 0x3302c targets 0x32ea0 and is always taken.
  The `beq` branch at 0x33054 targets 0x32fac and is always taken.
  The `beq` branch at 0x33060 targets 0x32eb0 and is always taken.
  The return at 0x32df4 has v0 = one of ?, ret(elsc_module_get_nasid), ret(iobrick_register).
- `pimm_bearing_node` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x33068 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x33068-0x330e8 (128 bytes).
  It occupies 128 bytes.
  The `jal` at 0x33080 calls eeprom_vertex_info_set with a0=0x100, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=0x0, a4=0x0.
  The `jal` at 0x330ac calls strstr with a0=ret(eeprom_vertex_info_set), a1=sym(.rodata)+51152, a2=?, a3=?.
  The `jal` at 0x330c8 calls strstr with a0=ret(eeprom_vertex_info_set), a1=sym(.rodata)+51152, a2=?, a3=?.
  The `bne` branch at 0x33088 targets 0x330a4, is taken when v0(=ret(eeprom_vertex_info_set)) != 0, and falls through when v0(=ret(eeprom_vertex_info_set)) == 0.
  The `beq` branch at 0x330b4 targets 0x330c4, is taken when v0(=ret(strstr)) == 0, and falls through when v0(=ret(strstr)) != 0.
  The `beq` branch at 0x330bc targets 0x33094 and is always taken.
  The `beq` branch at 0x330d0 targets 0x330e0, is taken when v0(=ret(strstr)) == 0, and falls through when v0(=ret(strstr)) != 0.
  The `beq` branch at 0x330d8 targets 0x33094 and is always taken.
  The `beq` branch at 0x330e0 targets 0x33094 and is always taken.
  The return at 0x3309c has v0 = one of 0x0, 0x1.
- `klhwg_add_node` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x330e8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x330e8-0x33634 (1356 bytes).
  It occupies 1356 bytes.
  The `lh` at 0x3310c loads 2 bytes from (sym(compact_to_nasid_node) + (a1 + a1)) +0x0.
  The `ld` at 0x33124 loads 8 bytes from ([(sym(compact_to_nasid_node) + (a1 + a1))]:2 << 0x21) -0x6fffffffcc000000.
  The `ld` at 0x33168 loads 8 bytes from (([(sym(compact_to_nasid_node) + (a1 + a1))]:2 << 0x21)+0x9600000000000000 | 0x2000) +0x48.
  The `lw` at 0x33174 loads 4 bytes from ?.
  3 such `lw` accesses load 4 bytes from ret(find_lboard) +0x0, including `lw` at 0x3319c, `lw` at 0x333c0, `lw` at 0x334dc.
  The `lh` at 0x33230 loads 2 bytes from ret(find_component) +0x3a.
  The `lh` at 0x33254 loads 2 bytes from (sym(nasid_to_compact_node) + ([ret(find_component)+58]:2 + [ret(find_component)+58]:2)) +0x0.
  2 such `lbu` accesses load 1 byte from ret(find_first_component) +0x2, including `lbu` at 0x3326c, `lbu` at 0x33474.
  7 such `ld` accesses load 8 bytes from abs 0xffffffffffffc400, including `ld` at 0x332c4, `ld` at 0x332e0, `ld` at 0x33308.
  7 such `ld` accesses load 8 bytes from [-0x3c00]:8 +0x0, including `ld` at 0x332c8, `ld` at 0x332e4, `ld` at 0x3330c.
  9 such `ld` accesses load 8 bytes from ?, including `ld` at 0x332d4, `ld` at 0x332ec, `ld` at 0x332f4.
  The `sd` at 0x332dc stores 8 bytes to ?.
  3 such `lbu` accesses load 1 byte from ret(find_lboard) +0xa, including `lbu` at 0x33340, `lbu` at 0x3339c, `lbu` at 0x334b8.
  The `sb` at 0x33348 stores 1 byte to ?.
  2 such `lh` accesses load 2 bytes from ret(find_lboard) +0xe, including `lh` at 0x3335c, `lh` at 0x33590.
  The `sh` at 0x33368 stores 2 bytes to ?.
  The `lbu` at 0x3338c loads 1 byte from ?.
  The `sb` at 0x33418 stores 1 byte to ret(strrchr) +0x0.
  The `lbu` at 0x3349c loads 1 byte from ret(find_component) +0x2.
  The `sd` at 0x335ac stores 8 bytes to table(0x8620) +0x0.
  The `ld` at 0x33608 loads 8 bytes from table(0x8c70) +0x0.
  The `jal` at 0x33188 calls find_lboard with a0=?, a1=0x11, a2=?, a3=?.
  The `jal` at 0x331bc calls find_lboard with a0=?, a1=0x11, a2=[sym(.sdata)+408], a3=?.
  The `jal` at 0x331d0 calls board_to_path with a0=ret(find_lboard), a1=sp-336, a2=?, a3=?.
  The `jal` at 0x331e0 calls hwgraph_path_add with a0=a0 at entry (arg0), a1=sp-336, a2=sp-232, a3=?.
  The `jal` at 0x331f4 calls find_component with a0=ret(find_lboard), a1=0x0, a2=0x26, a3=?.
  The `jal` at 0x33228 calls init_pebrick with a0=ret(find_lboard), a1=ret(find_component), a2=?, a3=?.
  The `jal` at 0x33250 calls eeprom_vertex_info_set with a0=0x420, a1=[ret(find_component)+58]:2, a2=?, a3=0x0, a4=0x0.
  The `jal` at 0x33264 calls find_first_component with a0=ret(find_lboard), a1=0x2, a2=?, a3=?.
  The `jal` at 0x33294 calls mark_nodevertex_as_node with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x332a4 calls dev_to_name with a0=?, a1=sp-336, a2=0x64, a3=?.
  The `jal` at 0x332b0 calls strlen with a0=ret(dev_to_name), a1=?, a2=?, a3=?.
  The `jal` at 0x332bc calls kmem_alloc with a0=ret(strlen)+1, a1=0x1, a2=?, a3=?.
  The `jal` at 0x33300 calls strcpy with a0=?, a1=ret(dev_to_name), a2=?, a3=?.
  The `jal` at 0x33328 calls hwgraph_info_add_LBL with a0=?, a1=sym(.rodata)+51152, a2=?, a3=?.
  The `jal` at 0x33374 calls find_first_component with a0=ret(find_lboard), a1=0x3, a2=?, a3=?.
  The `jal` at 0x33398 calls klhwg_add_mem with a0=?, a1=?, a2=ret(find_first_component), a3=[ret(find_lboard)+10]:1.
  The `jal` at 0x333a8 calls find_first_component with a0=ret(find_lboard), a1=0x1, a2=?, a3=?.
  The `jal` at 0x333e0 calls find_lboard with a0=?, a1=0x11, a2=?, a3=?.
  The `jal` at 0x333f4 calls board_to_full_path with a0=ret(find_lboard), a1=sp-224, a2=[sym(.sdata)+408], a3=?.
  The `jal` at 0x33400 calls strrchr with a0=sp-224, a1=0x2f, a2=?, a3=?.
  The `jal` at 0x33414 calls hwgraph_link_add with a0=sp-336, a1=sp-224, a2=ret(strrchr)+1, a3=?.
  The `jal` at 0x33460 calls hwgraph_path_add with a0=?, a1=sym(.rodata)+51152, a2=sp-108, a3=?.
  The `jal` at 0x3347c calls klhwg_add_cpu with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3348c calls find_component with a0=ret(find_lboard), a1=?, a2=0x1, a3=?.
  The `jal` at 0x334b4 calls klhwg_add_disabled_cpu with a0=?, a1=?, a2=?, a3=[ret(find_lboard)+10]:1.
  The `jal` at 0x334d0 calls klhwg_add_hub with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x334ec calls hwgraph_path_add with a0=?, a1=sym(.rodata)+51152, a2=sp-120, a3=?.
  The `jal` at 0x33510 calls eeprom_vertex_info_set with a0=?, a1=?, a2=?, a3=0x0, a4=0x0.
  The `jal` at 0x33528 calls cnode_subnode_to_cpu with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x33544 calls sprintf with a0=sp-116, a1=sym(.rodata)+51152, a2=?, a3=-0x1.
  The `jal` at 0x33554 calls hwgraph_path_add with a0=?, a1=sp-116, a2=sp-112, a3=?.
  The `jal` at 0x33560 calls mark_subnodevertex_as_subnode with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3356c calls pimm_bearing_node [0x33068] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3358c calls module_lookup with a0=[ret(find_lboard)+14]:2, a1=?, a2=?, a3=[ret(find_lboard)+14]:2, a5=[ret(find_lboard)+10]:1.
  The `jal` at 0x335b0 calls chk_for_pebrick with a0=[(sym(compact_to_nasid_node) + (a1 + a1))]:2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x335cc calls cmn_err with a0=0x0, a1=sym(.rodata)+51152, a2=sp-336, a3=?.
  The `jal` at 0x335e8 calls assfail with a0=sym(.rodata)+51152, a1=sym(.rodata)+51152, a2=0x415, a3=?.
  The `jal` at 0x33610 calls cmn_err with a0=0x0, a1=sym(.rodata)+51152, a2=?, a3=?.
  The `jal` at 0x33624 calls cmn_err with a0=0x0, a1=sym(.rodata)+51152, a2=?, a3=?.
  The `beq` branch at 0x33154 targets 0x335b0, is taken when at(?) == v1(=0xc000), and falls through when at(?) != v1(=0xc000).
  The `beq` branch at 0x3317c targets 0x33188, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x33194 targets 0x331cc and is always taken.
  The `beq` branch at 0x331a0 targets 0x33424, is taken when v0(=[ret(find_lboard)]) == 0, and falls through when v0(=[ret(find_lboard)]) != 0.
  The `beq` branch at 0x331c8 targets 0x33424, is taken when s0(=ret(find_lboard)) == 0, and falls through when s0(=ret(find_lboard)) != 0.
  The `bne` branch at 0x331e8 targets 0x335c0, is taken when v0(=ret(hwgraph_path_add)) != 0, and falls through when v0(=ret(hwgraph_path_add)) == 0.
  The `beq` branch at 0x33200 targets 0x333f0, is taken when v0(=ret(find_component)) == 0, and falls through when v0(=ret(find_component)) != 0.
  The `bne` branch at 0x33214 targets 0x3319c, is taken when a3(=[sym(num_pebricks)]) < a1(=[sym(.sdata)+408]+1) (signed), and falls through when a3(=[sym(num_pebricks)]) >= a1(=[sym(.sdata)+408]+1) (signed).
  The `bne` branch at 0x33274 targets 0x3328c, is taken when (t8(=[ret(find_first_component)+2]:1) & 0x1) != 0, and falls through when (t8(=[ret(find_first_component)+2]:1) & 0x1) == 0.
  The `bne` branch at 0x3327c targets 0x33290, is taken when s6(=one of 0x0, 0x1) != 0, and falls through when s6(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x33284 targets 0x33370 and is always taken.
  The `beq` branch at 0x332f8 targets 0x335dc, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x33364 targets 0x3358c, is taken when s6(=one of 0x0, 0x1) == 0, and falls through when s6(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x33380 targets 0x33390, is taken when s7(=one of 0x0, 0x1) == 0, and falls through when s7(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x333a0 targets 0x334e0, is taken when s6(=one of 0x0, 0x1) == 0, and falls through when s6(=one of 0x0, 0x1) != 0.
  The `bne` branch at 0x333b0 targets 0x33454, is taken when v0(=ret(find_first_component)) != 0, and falls through when v0(=ret(find_first_component)) == 0.
  The `beq` branch at 0x333b8 targets 0x334c4, is taken when s7(=one of 0x0, 0x1) == 0, and falls through when s7(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x333c4 targets 0x33424, is taken when v0(=[ret(find_lboard)]) == 0, and falls through when v0(=[ret(find_lboard)]) != 0.
  The `beq` branch at 0x333e8 targets 0x331c8 and is always taken.
  The `beq` branch at 0x3341c targets 0x33260 and is always taken.
  The `bne` branch at 0x33468 targets 0x3360c, is taken when v0(=ret(hwgraph_path_add)) != 0, and falls through when v0(=ret(hwgraph_path_add)) == 0.
  The `beq` branch at 0x33470 targets 0x334a0 and is always taken.
  The `beq` branch at 0x33494 targets 0x333b8, is taken when v0(=ret(find_component)) == 0, and falls through when v0(=ret(find_component)) != 0.
  The `bne` branch at 0x334a4 targets 0x33478, is taken when (a2(?) & 0x1) != 0, and falls through when (a2(?) & 0x1) == 0.
  The `beq` branch at 0x334bc targets 0x33484 and is always taken.
  The `bne` branch at 0x334c4 targets 0x333c0, is taken when s6(=one of 0x0, 0x1) != 0, and falls through when s6(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x334d8 targets 0x333c4 and is always taken.
  The `bne` branch at 0x334f4 targets 0x33620, is taken when v0(=ret(hwgraph_path_add)) != 0, and falls through when v0(=ret(hwgraph_path_add)) == 0.
  The `beq` branch at 0x334fc targets 0x33524 and is always taken.
  The `beq` branch at 0x33520 targets 0x33584, is taken when s1(?) >= 0x2 (signed), and falls through when s1(?) < 0x2 (signed).
  The `beq` branch at 0x33534 targets 0x33518, is taken when v0(=ret(cnode_subnode_to_cpu)) == a3(=-0x1), and falls through when v0(=ret(cnode_subnode_to_cpu)) != a3(=-0x1).
  The `bne` branch at 0x33574 targets 0x33504, is taken when v0(=ret(pimm_bearing_node)) != 0, and falls through when v0(=ret(pimm_bearing_node)) == 0.
  The `beq` branch at 0x3357c targets 0x3351c and is always taken.
  The `beq` branch at 0x33584 targets 0x333a8 and is always taken.
  The `beq` branch at 0x335a8 targets 0x3336c and is always taken.
  The `beq` branch at 0x335b8 targets 0x33188 and is always taken.
  The `beq` branch at 0x335d4 targets 0x331f0 and is always taken.
  The `beq` branch at 0x33604 targets 0x33300 and is always taken.
  The `beq` branch at 0x33618 targets 0x33470 and is always taken.
  The `beq` branch at 0x3362c targets 0x334fc and is always taken.
  The return at 0x3344c has v0 = one of [ret(find_lboard)], ret(find_lboard).
- `klhwg_add_all_xbows` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x33634 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x33634-0x3374c (280 bytes).
  It occupies 280 bytes.
  The `lh` at 0x33640 loads 2 bytes from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0.
  The `ld` at 0x33664 loads 8 bytes from ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6fffffffcc000000.
  The `ld` at 0x33698 loads 8 bytes from (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)+0x9600000000000000 | 0x2000) +0x48.
  The `lw` at 0x336a4 loads 4 bytes from ?.
  2 such `lw` accesses load 4 bytes from ret(find_lboard) +0x0, including `lw` at 0x336c8, `lw` at 0x3371c.
  The `lh` at 0x3370c loads 2 bytes from ret(find_lboard) +0x20.
  The `jal` at 0x336b8 calls find_lboard with a0=?, a1=0x11, a2=?, a3=?.
  The `jal` at 0x336e8 calls find_lboard with a0=?, a1=0x11, a2=?, a3=?.
  The `jal` at 0x336fc calls find_lboard with a0=ret(find_lboard), a1=0x42, a2=?, a3=?.
  The `jal` at 0x33710 calls klhwg_add_xbow with a0=a0 at entry (arg0), a1=[ret(find_lboard)+32]:2, a2=ret(find_lboard), a3=?.
  The `jal` at 0x3373c calls chk_for_pebrick with a0=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a1=a1 at entry (arg1), a2=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a3=([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)+0x9600000000000000, a4=(([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)+0x9600000000000000 | 0x2000).
  The `beq` branch at 0x3368c targets 0x3373c, is taken when t8(?) == t9(=0xc000), and falls through when t8(?) != t9(=0xc000).
  The `beq` branch at 0x336ac targets 0x336b8, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x336c0 targets 0x336f8 and is always taken.
  The `beq` branch at 0x336cc targets 0x33720, is taken when v0(=[ret(find_lboard)]) == 0, and falls through when v0(=[ret(find_lboard)]) != 0.
  The `beq` branch at 0x336f0 targets 0x33720, is taken when v0(=ret(find_lboard)) == 0, and falls through when v0(=ret(find_lboard)) != 0.
  The `beq` branch at 0x33704 targets 0x336c8, is taken when v0(=ret(find_lboard)) == 0, and falls through when v0(=ret(find_lboard)) != 0.
  The `beq` branch at 0x33718 targets 0x336cc and is always taken.
  The `beq` branch at 0x33744 targets 0x336b8 and is always taken.
  The return at 0x33734 has v0 = one of [ret(find_lboard)], ret(find_lboard).
- `klhwg_add_all_routers` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3374c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3374c-0x33914 (456 bytes).
  It occupies 456 bytes.
  The `lh` at 0x337c4 loads 2 bytes from ?.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x337d0, `ld` at 0x337e4.
  The `lw` at 0x337f0 loads 4 bytes from ?.
  2 such `lbu` accesses load 1 byte from ret(find_lboard_class) +0x9, including `lbu` at 0x3381c, `lbu` at 0x33834.
  2 such `lw` accesses load 4 bytes from ret(find_lboard_class) +0x0, including `lw` at 0x33850, `lw` at 0x33890.
  The `lh` at 0x33910 loads 2 bytes from sym(compact_to_nasid_node) +0x0.
  The `jal` at 0x33808 calls find_lboard_class with a0=?, a1=0x31, a2=?, a3=?.
  The `jal` at 0x33824 calls find_lboard_class with a0=?, a1=0x31, a2=?, a3=?.
  The `jal` at 0x3386c calls board_to_path with a0=ret(find_lboard_class), a1=sp-192, a2=?, a3=?.
  The `jal` at 0x3387c calls hwgraph_path_add with a0=a0 at entry (arg0), a1=sp-192, a2=sp-88, a3=?.
  The `jal` at 0x338b0 calls chk_for_pebrick with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x338f4 calls cmn_err with a0=0x0, a1=sym(.rodata)+51152, a2=sp-192, a3=?.
  The `blez` branch at 0x33784 targets 0x338c0, is taken when at(=[sym(maxnodes)]) <= 0 (signed), and falls through when at(=[sym(maxnodes)]) > 0 (signed).
  The `beq` branch at 0x3379c targets 0x33904 and is always taken.
  The `beq` branch at 0x337bc targets 0x338c0, is taken when s3(?) >= t8(=[sym(maxnodes)]) (signed), and falls through when s3(?) < t8(=[sym(maxnodes)]) (signed).
  The `beq` branch at 0x337dc targets 0x338b0, is taken when s5(=0xc000) == t8(?), and falls through when s5(=0xc000) != t8(?).
  The `beq` branch at 0x337fc targets 0x33808, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x33810 targets 0x337a4, is taken when v0(=ret(find_lboard_class)) == 0, and falls through when v0(=ret(find_lboard_class)) != 0.
  The `beq` branch at 0x33818 targets 0x33838 and is always taken.
  The `beq` branch at 0x3382c targets 0x337a4, is taken when v0(=ret(find_lboard_class)) == 0, and falls through when v0(=ret(find_lboard_class)) != 0.
  The `beq` branch at 0x33848 targets 0x33868, is taken when (a7(=[ret(find_lboard_class)+9]:1) & 0x4) == 0, and falls through when (a7(=[ret(find_lboard_class)+9]:1) & 0x4) != 0.
  The `bne` branch at 0x33858 targets 0x33820, is taken when a6(=[ret(find_lboard_class)]) != 0, and falls through when a6(=[ret(find_lboard_class)]) == 0.
  The `beq` branch at 0x33860 targets 0x33824 and is always taken.
  The `bne` branch at 0x33884 targets 0x338ec, is taken when v0(=ret(hwgraph_path_add)) != 0, and falls through when v0(=ret(hwgraph_path_add)) == 0.
  The `beq` branch at 0x338a8 targets 0x33824 and is always taken.
  The `beq` branch at 0x338b8 targets 0x33808 and is always taken.
  The `beq` branch at 0x338fc targets 0x33890 and is always taken.
  The `beq` branch at 0x3390c targets 0x337c8 and is always taken.
  The return at 0x338e4 has v0 = one of ?, ret(find_lboard_class).
- `klhwg_connect_one_router` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x33914 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x33914-0x33ba0 (652 bytes).
  It occupies 652 bytes.
  The `lbu` at 0x33930 loads 1 byte from a1 (arg1 at entry) +0x9.
  2 such `lbu` accesses load 1 byte from a1 (arg1 at entry) +0x17, including `lbu` at 0x339c0, `lbu` at 0x33b78.
  The `lh` at 0x339d4 loads 2 bytes from a1 (arg1 at entry) +0xe.
  The `lw` at 0x339e4 loads 4 bytes from a1 (arg1 at entry) +0x24.
  3 such `lh` accesses load 2 bytes from ?, including `lh` at 0x33a30, `lh` at 0x33a48, `lh` at 0x33a58.
  The `lw` at 0x33a64 loads 4 bytes from ?.
  The `lbu` at 0x33aac loads 1 byte from ?.
  The `lh` at 0x33b9c loads 2 bytes from table(0x50) +0x0.
  The `jal` at 0x33988 calls board_to_path with a0=a1 at entry (arg1), a1=sp-208, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x33998 calls hwgraph_traverse with a0=a0 at entry (arg0), a1=sp-208, a2=sp-152, a3=?.
  The `jal` at 0x339a8 calls is_specified with a0=sym(arg_maxnodes), a1=?, a2=?, a3=?.
  The `jal` at 0x339d0 calls rbrick_register with a0=[a1+14]:2, a1=?, a2=[a1+23]:1, a3=?.
  The `jal` at 0x33a3c calls is_specified with a0=sym(arg_maxnodes), a1=?, a2=?, a3=?.
  The `jal` at 0x33a7c calls board_to_path with a0=?, a1=sp-144, a2=?, a3=?.
  The `jal` at 0x33a8c calls hwgraph_traverse with a0=a0 at entry (arg0), a1=sp-144, a2=sp-88, a3=?.
  The `jal` at 0x33a9c calls is_specified with a0=sym(arg_maxnodes), a1=sym(.rodata)+51152, a2=?, a3=?.
  The `jal` at 0x33ad0 calls sprintf with a0=sp-144, a1=sym(.rodata)+51152, a2=?, a3=?.
  The `jal` at 0x33ae0 calls hwgraph_edge_add with a0=?, a1=?, a2=sp-144, a3=?.
  The `jal` at 0x33afc calls is_specified with a0=sym(arg_maxnodes), a1=?, a2=0x1, a3=?.
  The `jal` at 0x33b24 calls cmn_err with a0=0x0, a1=sym(.rodata)+51152, a2=sp-144, a3=?.
  The `jal` at 0x33b50 calls cmn_err with a0=0x0, a1=sym(.rodata)+51152, a2=sp-208, a3=sp-144, a5=ret(hwgraph_edge_add).
  The `jal` at 0x33b6c calls cmn_err with a0=0x4, a1=sym(.rodata)+51152, a2=sp-208, a3=?.
  The `jal` at 0x33b80 calls cmn_err with a0=0x0, a1=sym(.rodata)+51152, a2=[a1+23]:1, a3=?.
  The `beq` branch at 0x3394c targets 0x33984, is taken when (at(=[a1+9]:1) & 0x4) == 0, and falls through when (at(=[a1+9]:1) & 0x4) != 0.
  The `beq` branch at 0x339a0 targets 0x339b8, is taken when v0(=ret(hwgraph_traverse)) == 0, and falls through when v0(=ret(hwgraph_traverse)) != 0.
  The `bne` branch at 0x339b0 targets 0x33958, is taken when v0(=ret(is_specified)) != 0, and falls through when v0(=ret(is_specified)) == 0.
  The `bne` branch at 0x339b8 targets 0x33b60, is taken when s0(=ret(hwgraph_traverse)) != 0, and falls through when s0(=ret(hwgraph_traverse)) == 0.
  The `bne` branch at 0x339c8 targets 0x33b7c, is taken when v0(=0x1) != a2(=[a1+23]:1), and falls through when v0(=0x1) == a2(=[a1+23]:1).
  The `beq` branch at 0x33a08 targets 0x33b90 and is always taken.
  The `bne` branch at 0x33a14 targets 0x33b1c, is taken when v0(=one of 0x0, 0x1) < 0x1 (unsigned), and falls through when v0(=one of 0x0, 0x1) >= 0x1 (unsigned).
  The `beq` branch at 0x33a28 targets 0x33b14, is taken when s0(?) >= 0x9 (signed), and falls through when s0(?) < 0x9 (signed).
  The `beq` branch at 0x33a34 targets 0x33a1c, is taken when ra(?) == s2(=-0x1), and falls through when ra(?) != s2(=-0x1).
  The `beq` branch at 0x33a44 targets 0x33a64, is taken when v0(=ret(is_specified)) == 0, and falls through when v0(=ret(is_specified)) != 0.
  The `beq` branch at 0x33a5c targets 0x33a1c, is taken when t8(?) == s2(=-0x1), and falls through when t8(?) != s2(=-0x1).
  The `beq` branch at 0x33a94 targets 0x33ac8, is taken when v0(=ret(hwgraph_traverse)) == 0, and falls through when v0(=ret(hwgraph_traverse)) != 0.
  The `beq` branch at 0x33aa4 targets 0x33abc, is taken when v0(=ret(is_specified)) == 0, and falls through when v0(=ret(is_specified)) != 0.
  The `bne` branch at 0x33ab4 targets 0x33a10, is taken when (t9(?) & 0x4) != 0, and falls through when (t9(?) & 0x4) == 0.
  The `beq` branch at 0x33abc targets 0x33a10 and is always taken.
  The `beq` branch at 0x33aec targets 0x33a1c, is taken when v0(=ret(hwgraph_edge_add)) == a2(=0x1), and falls through when v0(=ret(hwgraph_edge_add)) != a2(=0x1).
  The `beq` branch at 0x33af4 targets 0x33a1c, is taken when v0(=ret(hwgraph_edge_add)) == 0, and falls through when v0(=ret(hwgraph_edge_add)) != 0.
  The `bnel` branch at 0x33b04 targets 0x33a20, is taken when v0(=ret(is_specified)) != 0, and falls through when v0(=ret(is_specified)) == 0; its branch-likely delay slot `addiu s0,s0,1` at 0x33b08 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x33b0c targets 0x33b3c and is always taken.
  The `beq` branch at 0x33b14 targets 0x33958 and is always taken.
  The `beq` branch at 0x33b2c targets 0x33a1c, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x33b34 targets 0x33ac8 and is always taken.
  The `beq` branch at 0x33b58 targets 0x33a20 and is always taken.
  The `beq` branch at 0x33b74 targets 0x339c4 and is always taken.
  The `beq` branch at 0x33b88 targets 0x33958 and is always taken.
  The `beq` branch at 0x33b98 targets 0x33a34 and is always taken.
  The return at 0x3397c has v0 = one of ?, ret(is_specified), ret(cmn_err).
  The instructions from 0x33ac4 to 0x33ac4 are not reached by any path from the entry, and their branches are not listed.
- `klhwg_connect_routers` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x33ba0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x33ba0-0x33d18 (376 bytes).
  It occupies 376 bytes.
  2 such `lh` accesses load 2 bytes from ?, including `lh` at 0x33c1c, `lh` at 0x33ca0.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x33c28, `ld` at 0x33c3c.
  The `lw` at 0x33c48 loads 4 bytes from ?.
  The `lw` at 0x33ca4 loads 4 bytes from ret(find_lboard_class) +0x0.
  The `lh` at 0x33d14 loads 2 bytes from sym(compact_to_nasid_node) +0x0.
  The `jal` at 0x33c60 calls find_lboard_class with a0=?, a1=0x31, a2=?, a3=?.
  The `jal` at 0x33c80 calls find_lboard_class with a0=?, a1=0x31, a2=?, a3=?.
  The `jal` at 0x33c9c calls klhwg_connect_one_router with a0=a0 at entry (arg0), a1=ret(find_lboard_class), a2=?, a3=?.
  The `jal` at 0x33cc8 calls chk_for_pebrick with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x33be8 targets 0x33cd8, is taken when at(=[sym(maxnodes)]) <= 0 (signed), and falls through when at(=[sym(maxnodes)]) > 0 (signed).
  The `beq` branch at 0x33bf4 targets 0x33d08 and is always taken.
  The `beq` branch at 0x33c14 targets 0x33cd8, is taken when s3(?) >= v0(=[sym(maxnodes)]) (signed), and falls through when s3(?) < v0(=[sym(maxnodes)]) (signed).
  The `beq` branch at 0x33c34 targets 0x33cc8, is taken when s7(=0xc000) == t8(?), and falls through when s7(=0xc000) != t8(?).
  The `beq` branch at 0x33c54 targets 0x33c60, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x33c68 targets 0x33bfc, is taken when v0(=ret(find_lboard_class)) == 0, and falls through when v0(=ret(find_lboard_class)) != 0.
  The `beq` branch at 0x33c70 targets 0x33c94 and is always taken.
  The `beq` branch at 0x33c88 targets 0x33bfc, is taken when v0(=ret(find_lboard_class)) == 0, and falls through when v0(=ret(find_lboard_class)) != 0.
  The `bne` branch at 0x33cb8 targets 0x33c78, is taken when a1(=[ret(find_lboard_class)]) != 0, and falls through when a1(=[ret(find_lboard_class)]) == 0.
  The `beq` branch at 0x33cc0 targets 0x33c80 and is always taken.
  The `beq` branch at 0x33cd0 targets 0x33c60 and is always taken.
  The `beq` branch at 0x33d10 targets 0x33c20 and is always taken.
  The return at 0x33d00 has v0 = ?.
- `klhwg_connect_hubs` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x33d18 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x33d18-0x33f70 (600 bytes).
  It occupies 600 bytes.
  The `lbu` at 0x33d88 loads 1 byte from ?.
  The `lh` at 0x33db8 loads 2 bytes from ?.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x33dc4, `ld` at 0x33dd8.
  The `lw` at 0x33de4 loads 4 bytes from ?.
  4 such `lh` accesses load 2 bytes from ret(find_first_component) +0x3c, including `lh` at 0x33e14, `lh` at 0x33e34, `lh` at 0x33e6c.
  The `lh` at 0x33e40 loads 2 bytes from (sym(nasid_to_compact_node) + ([ret(find_first_component)+60]:2 + [ret(find_first_component)+60]:2)) +0x0.
  The `lw` at 0x33e70 loads 4 bytes from ret(find_first_component) +0x40.
  The `lh` at 0x33f6c loads 2 bytes from sym(compact_to_nasid_node) +0x0.
  The `jal` at 0x33d78 calls is_specified with a0=sym(arg_maxnodes), a1=?, a2=sym(.rodata)+51152, a3=?.
  The `jal` at 0x33dfc calls find_lboard with a0=?, a1=0x11, a2=?, a3=?.
  The `jal` at 0x33e0c calls find_first_component with a0=ret(find_lboard), a1=0x2, a2=?, a3=?.
  The `jal` at 0x33e20 calls is_specified with a0=sym(arg_maxnodes), a1=?, a2=?, a3=?, a7=[ret(find_first_component)+60]:2.
  The `jal` at 0x33e4c calls board_to_path with a0=ret(find_lboard), a1=sp-224, a2=?, a3=?.
  The `jal` at 0x33e5c calls hwgraph_traverse with a0=a0 at entry (arg0), a1=sp-224, a2=sp-168, a3=?.
  The `jal` at 0x33e88 calls board_to_path with a0=?, a1=sp-160, a2=?, a3=?.
  The `jal` at 0x33e98 calls hwgraph_traverse with a0=a0 at entry (arg0), a1=sp-160, a2=sp-104, a3=?.
  The `jal` at 0x33eb0 calls hwgraph_edge_add with a0=?, a1=?, a2=sym(.rodata)+51152, a3=?.
  The `jal` at 0x33ec8 calls chk_for_pebrick with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x33f14 calls cmn_err with a0=0x0, a1=sym(.rodata)+51152, a2=sp-160, a3=?.
  The `jal` at 0x33f2c calls cmn_err with a0=0x4, a1=sym(.rodata)+51152, a2=sp-224, a3=?.
  The `jal` at 0x33f50 calls cmn_err with a0=0x0, a1=sym(.rodata)+51152, a2=sp-224, a3=sp-160, a5=ret(hwgraph_edge_add).
  The `blez` branch at 0x33d60 targets 0x33ed8, is taken when at(=[sym(maxnodes)]) <= 0 (signed), and falls through when at(=[sym(maxnodes)]) > 0 (signed).
  The `beq` branch at 0x33d70 targets 0x33f60 and is always taken.
  The `beq` branch at 0x33d80 targets 0x33f0c, is taken when v0(=ret(is_specified)) == 0, and falls through when v0(=ret(is_specified)) != 0.
  The `beq` branch at 0x33d90 targets 0x33f0c, is taken when (t8(?) & 0x4) == 0, and falls through when (t8(?) & 0x4) != 0.
  The `beq` branch at 0x33db0 targets 0x33ed8, is taken when s1(?) >= t9(=[sym(maxnodes)]) (signed), and falls through when s1(?) < t9(=[sym(maxnodes)]) (signed).
  The `beq` branch at 0x33dd0 targets 0x33ec8, is taken when s5(=0xc000) == t8(?), and falls through when s5(=0xc000) != t8(?).
  The `beq` branch at 0x33df0 targets 0x33dfc, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x33e18 targets 0x33d98, is taken when a7(=[ret(find_first_component)+60]:2) == s7(=-0x1), and falls through when a7(=[ret(find_first_component)+60]:2) != s7(=-0x1).
  The `beq` branch at 0x33e28 targets 0x33e4c, is taken when v0(=ret(is_specified)) == 0, and falls through when v0(=ret(is_specified)) != 0.
  The `beq` branch at 0x33e44 targets 0x33d98, is taken when t0(=[(sym(nasid_to_compact_node) + ([ret(find_first_component)+60]:2 + [ret(find_first_component)+60]:2))]:2) == s7(=-0x1), and falls through when t0(=[(sym(nasid_to_compact_node) + ([ret(find_first_component)+60]:2 + [ret(find_first_component)+60]:2))]:2) != s7(=-0x1).
  The `bne` branch at 0x33e64 targets 0x33f24, is taken when v0(=ret(hwgraph_traverse)) != 0, and falls through when v0(=ret(hwgraph_traverse)) == 0.
  The `bne` branch at 0x33ea0 targets 0x33d78, is taken when v0(=ret(hwgraph_traverse)) != 0, and falls through when v0(=ret(hwgraph_traverse)) == 0.
  The `beql` branch at 0x33eb8 targets 0x33d9c, is taken when v0(=ret(hwgraph_edge_add)) == 0, and falls through when v0(=ret(hwgraph_edge_add)) != 0; its branch-likely delay slot `addiu s1,s1,1` at 0x33ebc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x33ec0 targets 0x33f3c and is always taken.
  The `beq` branch at 0x33ed0 targets 0x33dfc and is always taken.
  The `beq` branch at 0x33f1c targets 0x33d9c and is always taken.
  The `beq` branch at 0x33f34 targets 0x33e70 and is always taken.
  The `beq` branch at 0x33f58 targets 0x33d9c and is always taken.
  The `beq` branch at 0x33f68 targets 0x33dbc and is always taken.
  The return at 0x33f00 has v0 = ?.
  The instructions from 0x33f08 to 0x33f08 are not reached by any path from the entry, and their branches are not listed.
- `klhwg_device_disable_hints_add` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x33f70 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x33f70-0x341a0 (560 bytes).
  It occupies 560 bytes.
  The `lh` at 0x33ff4 loads 2 bytes from ?.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x34000, `ld` at 0x34018.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x34024, `lw` at 0x34070, `lw` at 0x340b4.
  6 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x34044, `lbu` at 0x34058, `lbu` at 0x3408c.
  The `lh` at 0x3419c loads 2 bytes from sym(compact_to_nasid_node) +0x0.
  The `jal` at 0x33f78 calls device_admin_table_init with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x34114 calls device_component_canonical_name_get with a0=?, a1=?, a2=sp-336, a3=?, a5=sym(compact_to_nasid_node).
  The `jal` at 0x34128 calls device_admin_table_update with a0=sp-336, a1=sym(.rodata)+51152, a2=sym(.rodata)+51152, a3=?.
  The `jal` at 0x3414c calls chk_for_pebrick with a0=?, a1=?, a2=?, a3=?, a5=sym(compact_to_nasid_node).
  The `blez` branch at 0x33fa4 targets 0x34160, is taken when at(=[sym(numnodes)]) <= 0 (signed), and falls through when at(=[sym(numnodes)]) > 0 (signed).
  The `beq` branch at 0x33fcc targets 0x34190 and is always taken.
  The `beq` branch at 0x33fec targets 0x34160, is taken when s4(?) >= t8(=[sym(numnodes)]) (signed), and falls through when s4(?) < t8(=[sym(numnodes)]) (signed).
  The `beq` branch at 0x34010 targets 0x3414c, is taken when s6(=0xc000) == t8(?), and falls through when s6(=0xc000) != t8(?).
  The `beq` branch at 0x3402c targets 0x34038, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x34038 targets 0x33fd4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x34040 targets 0x3405c and is always taken.
  The `beq` branch at 0x34050 targets 0x33fd4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x34068 targets 0x3408c, is taken when (a6(?) & 0x4) == 0, and falls through when (a6(?) & 0x4) != 0.
  The `bne` branch at 0x3407c targets 0x34048, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x34084 targets 0x3404c and is always taken.
  The `bne` branch at 0x34094 targets 0x34070, is taken when s8(=0x20) != a6(?), and falls through when s8(=0x20) == a6(?).
  The `blez` branch at 0x340a4 targets 0x340e4, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `beq` branch at 0x340cc targets 0x34110, is taken when (t8(?) & 0x1) == 0, and falls through when (t8(?) & 0x1) != 0.
  The `bne` branch at 0x340dc targets 0x340b0, is taken when s3(?) < a0(?) (signed), and falls through when s3(?) >= a0(?) (signed).
  The `beq` branch at 0x340f8 targets 0x34050, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x34108 targets 0x34050 and is always taken.
  The `bne` branch at 0x3413c targets 0x340ac, is taken when s3(?) < a0(?) (signed), and falls through when s3(?) >= a0(?) (signed).
  The `beq` branch at 0x34144 targets 0x340e8 and is always taken.
  The `beq` branch at 0x34158 targets 0x34038 and is always taken.
  The `beq` branch at 0x34198 targets 0x33ff8 and is always taken.
  The return at 0x34188 has v0 = one of ret(device_admin_table_init), ?.
- `klhwg_dimm_flavor_info_print` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x341a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x341a0-0x343a0 (512 bytes).
  It occupies 512 bytes.
  4 such `lh` accesses load 2 bytes from ?, including `lh` at 0x341ec, `lh` at 0x34268, `lh` at 0x342d0.
  The `lh` at 0x34218 loads 2 bytes from a1 (arg1 at entry) +0x0.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x34300, `ld` at 0x34328.
  The `lw` at 0x34334 loads 4 bytes from ?.
  The `jal` at 0x34210 calls cmn_err with a0=0x6, a1=sym(.rodata)+51152, a2=sym(.rodata)+51152, a3=?.
  The `jal` at 0x34238 calls cmn_err with a0=0x6, a1=sym(.rodata)+51152, a2=?, a3=?.
  The `jal` at 0x3428c calls cmn_err with a0=0x6, a1=sym(.rodata)+51152, a2=?, a3=?.
  The `jal` at 0x342a8 calls cmn_err with a0=0x6, a1=sym(.rodata)+51152, a2=?, a3=?.
  The `jal` at 0x342c4 calls cmn_err with a0=0x6, a1=sym(.rodata)+51152, a2=?, a3=?.
  The `jal` at 0x34314 calls chk_for_pebrick with a0=?, a1=0x9600000000000000, a2=0xffffffffff, a3=?, a6=0x9000000034000000.
  The `jal` at 0x34350 calls find_lboard with a0=?, a1=0x11, a2=?, a3=?.
  The `jal` at 0x3435c calls board_to_path with a0=ret(find_lboard), a1=sp-176, a2=?, a3=?.
  The `jal` at 0x3436c calls cmn_err with a0=0x6, a1=sym(.rodata)+51152, a2=sp-176, a3=?.
  The `blez` branch at 0x341c4 targets 0x34230, is taken when a0 <= 0 (signed), and falls through when a0 > 0 (signed).
  The `bne` branch at 0x341f0 targets 0x34264, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x341f8 targets 0x34208, is taken when t8(=a2) == 0, and falls through when t8(=a2) != 0.
  The `bne` branch at 0x34228 targets 0x341e0, is taken when s0(?) < s1(=a0) (signed), and falls through when s0(?) >= s1(=a0) (signed).
  The `bgtz` branch at 0x34240 targets 0x342d4, is taken when s1(=a0) > 0 (signed), and falls through when s1(=a0) <= 0 (signed).
  The `bne` branch at 0x34270 targets 0x3429c, is taken when a3(?) != a4(?), and falls through when a3(?) == a4(?).
  The `bne` branch at 0x34278 targets 0x3421c, is taken when a6(?) != s0(?), and falls through when a6(?) == s0(?).
  The `beq` branch at 0x34294 targets 0x3421c and is always taken.
  The `beq` branch at 0x3429c targets 0x342b8, is taken when a2(?) == a5(?), and falls through when a2(?) != a5(?).
  The `beq` branch at 0x342b0 targets 0x342cc and is always taken.
  The `beq` branch at 0x342cc targets 0x3421c and is always taken.
  The `bne` branch at 0x3430c targets 0x34324, is taken when a5(=0xc000) != a4(?), and falls through when a5(=0xc000) == a4(?).
  The `beq` branch at 0x3431c targets 0x34350 and is always taken.
  The `beq` branch at 0x34338 targets 0x3434c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x34344 targets 0x34350 and is always taken.
  The `bne` branch at 0x34390 targets 0x342ec, is taken when s0(?) < s1(=a0) (signed), and falls through when s0(?) >= s1(=a0) (signed).
  The `beq` branch at 0x34398 targets 0x3424c and is always taken.
  The return at 0x3425c has v0 = ret(cmn_err).
- `klhwg_premium_std_dimm_mix_check` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x343a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x343a0-0x345d0 (560 bytes).
  It occupies 560 bytes.
  4 such `sh` accesses store 2 bytes to ?, including `sh` at 0x34450, `sh` at 0x3450c, `sh` at 0x3453c.
  The `lh` at 0x34464 loads 2 bytes from ?.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x34470, `ld` at 0x34488.
  The `lw` at 0x34494 loads 4 bytes from ?.
  The `lh` at 0x344bc loads 2 bytes from ret(find_first_component) +0x4c.
  The `lbu` at 0x344d4 loads 1 byte from ret(find_first_component) +0x1.
  The `jal` at 0x344a8 calls find_lboard with a0=?, a1=0x11, a2=?, a3=?.
  The `jal` at 0x344b4 calls find_first_component with a0=ret(find_lboard), a1=0x3, a2=?, a3=?.
  The `jal` at 0x34558 calls chk_for_pebrick with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x34574 calls klhwg_dimm_flavor_info_print with a0=?, a1=sp-336, a2=0x0, a3=?.
  The `jal` at 0x34584 calls cmn_err with a0=0x0, a1=sym(.rodata)+51152, a2=?, a3=?.
  The `jal` at 0x3459c calls cmn_err with a0=0x204, a1=sym(.rodata)+51152, a2=?, a3=?.
  The `jal` at 0x345ac calls klhwg_dimm_flavor_info_print with a0=?, a1=sp-336, a2=0x0, a3=?.
  The `jal` at 0x345bc calls klhwg_dimm_flavor_info_print with a0=?, a1=sp-592, a2=0x1, a3=?.
  The `bne` branch at 0x343b4 targets 0x343f4, is taken when v0(=[sym(.sdata)+412]:1) != at(=0xff), and falls through when v0(=[sym(.sdata)+412]:1) == at(=0xff).
  The `beq` branch at 0x343bc targets 0x343fc and is always taken.
  The `blez` branch at 0x34424 targets 0x343c4, is taken when v1(=[sym(numnodes)]) <= 0 (signed), and falls through when v1(=[sym(numnodes)]) > 0 (signed).
  The `beq` branch at 0x3443c targets 0x34458 and is always taken.
  The `beq` branch at 0x34444 targets 0x34528, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x34454 targets 0x34510, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x34480 targets 0x34558, is taken when s6(=0xc000) == t8(?), and falls through when s6(=0xc000) != t8(?).
  The `beq` branch at 0x3449c targets 0x344a8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x344f4 targets 0x34444, is taken when at(=[ret(find_first_component)+1]:1) >= 0x2 (signed), and falls through when at(=[ret(find_first_component)+1]:1) < 0x2 (signed).
  The `beq` branch at 0x344fc targets 0x34540, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x34508 targets 0x34454 and is always taken.
  The `beq` branch at 0x34510 targets 0x343c8, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `bne` branch at 0x34518 targets 0x34568, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The `beq` branch at 0x34520 targets 0x343cc and is always taken.
  The `beq` branch at 0x34538 targets 0x34454 and is always taken.
  The `beq` branch at 0x34550 targets 0x34454 and is always taken.
  The `beq` branch at 0x34560 targets 0x344a8 and is always taken.
  The `bne` branch at 0x34568 targets 0x34594, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x3458c targets 0x345c8 and is always taken.
  The `beq` branch at 0x345c8 targets 0x343d0 and is always taken.
  The return at 0x343f4 has v0 = one of [sym(.sdata)+412]:1, ?.
- `klhwg_add_all_modules` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x345d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x345d0-0x3472c (348 bytes).
  It occupies 348 bytes.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0x34640, `ld` at 0x34664, `ld` at 0x34670.
  3 such `lh` accesses load 2 bytes from ?, including `lh` at 0x34650, `lh` at 0x34680, `lh` at 0x346cc.
  The `jal` at 0x34610 calls kern_free with a0=ret(kern_malloc), a1=sym(.rodata)+51152, a2=?, a3=?.
  The `jal` at 0x34618 calls sndrv_attach with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3464c calls sprintf with a0=sp-192, a1=sym(.rodata)+51152, a2=?, a3=?.
  The `jal` at 0x3465c calls hwgraph_path_add with a0=a0 at entry (arg0), a1=sp-192, a2=sp-64, a3=?.
  The `jal` at 0x34668 calls hwgraph_fastinfo_set with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3467c calls sprintf with a0=sp-192, a1=sym(.rodata)+51152, a2=?, a3=?.
  The `jal` at 0x3468c calls hwgraph_path_add with a0=a0 at entry (arg0), a1=sp-192, a2=sp-64, a3=?.
  The `jal` at 0x346a4 calls hwgraph_info_add_LBL with a0=?, a1=sym(.rodata)+51152, a2=0x1, a3=?.
  The `jal` at 0x346ac calls kern_malloc with a0=0x20, a1=?, a2=?, a3=?.
  The `jal` at 0x346c8 calls l1_mfg_string with a0=ret(kern_malloc), a1=?, a2=?, a3=0x0.
  The `jal` at 0x346e0 calls hwgraph_info_add_LBL with a0=?, a1=sym(.rodata)+51152, a2=ret(kern_malloc), a3=?.
  The `jal` at 0x3471c calls assfail with a0=sym(.rodata)+51152, a1=sym(.rodata)+51152, a2=0x6f0, a3=?.
  The `blez` branch at 0x345fc targets 0x346f0, is taken when at(=[sym(nummodules)]) <= 0 (signed), and falls through when at(=[sym(nummodules)]) > 0 (signed).
  The `beq` branch at 0x34608 targets 0x3463c and is always taken.
  The `beq` branch at 0x34634 targets 0x346f0, is taken when s1(?) >= v0(=[sym(nummodules)]) (signed), and falls through when s1(?) < v0(=[sym(nummodules)]) (signed).
  The `bne` branch at 0x34694 targets 0x34714, is taken when v0(=ret(hwgraph_path_add)) != 0, and falls through when v0(=ret(hwgraph_path_add)) == 0.
  The `bne` branch at 0x346d0 targets 0x34610, is taken when v0(=ret(l1_mfg_string)) != 0, and falls through when v0(=ret(l1_mfg_string)) == 0.
  The `beq` branch at 0x346e8 targets 0x34618 and is always taken.
  The `beq` branch at 0x34724 targets 0x3469c and is always taken.
  The return at 0x3470c has v0 = ?.
- `klhwg_add_all_nodes` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3472c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3472c-0x34800 (212 bytes).
  It occupies 212 bytes.
  The `ld` at 0x34768 loads 8 bytes from ((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000) +0xd0.
  The `jal` at 0x3473c calls get_nasid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x34774 calls klhwg_add_node with a0=a0 at entry (arg0), a1=?, a2=[((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8, a3=?.
  The `jal` at 0x347a0 calls klhwg_add_all_xbows with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x347cc calls klhwg_add_all_routers with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x347d4 calls klhwg_connect_routers with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x347dc calls klhwg_connect_hubs with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x347e4 calls router_guardians_set with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x347ec calls klhwg_device_disable_hints_add with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x34764 targets 0x347c4, is taken when at(=[sym(numnodes)]) <= 0 (signed), and falls through when at(=[sym(numnodes)]) > 0 (signed).
  The `bnel` branch at 0x34790 targets 0x34770, is taken when s0(?) < a0(=[sym(numnodes)]) (signed), and falls through when s0(?) >= a0(=[sym(numnodes)]) (signed); its branch-likely delay slot `or a0,s1,zero` at 0x34794 runs only when taken and is annulled on fall-through.
  The `blez` branch at 0x34798 targets 0x347c4, is taken when a0(=[sym(numnodes)]) <= 0 (signed), and falls through when a0(=[sym(numnodes)]) > 0 (signed).
  The `bne` branch at 0x347bc targets 0x347a0, is taken when s0(?) < t8(=[sym(numnodes)]) (signed), and falls through when s0(?) >= t8(=[sym(numnodes)]) (signed).
  The return at 0x347f8 has v0 = ret(klhwg_device_disable_hints_add).
- `get_freemem_start` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x349ac (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x349ac-0x34ab8 (268 bytes).
  It occupies 268 bytes.
  The `lh` at 0x349bc loads 2 bytes from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0.
  The `ld` at 0x349d4 loads 8 bytes from table(sym(ktext_repmask)) +0x0.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc400, including `ld` at 0x349e8, `ld` at 0x34a74.
  2 such `lh` accesses load 2 bytes from abs 0xffffffffffffc42a, including `lh` at 0x349ec, `lh` at 0x34a78.
  2 such `ld` accesses load 8 bytes from [-0x3c00]:8 +0x0, including `ld` at 0x349f0, `ld` at 0x34a7c.
  2 such `ld` accesses load 8 bytes from ([[-0x3c00]:8]:8 + ([-0x3bd6]:2 << 0x3)) +0x0, including `ld` at 0x349fc, `ld` at 0x34a88.
  The `ld` at 0x34a14 loads 8 bytes from [([[-0x3c00]:8]:8 + ([-0x3bd6]:2 << 0x3))]:8 +0x8580.
  The `ld` at 0x34a4c loads 8 bytes from (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)+0x9600000000000000 | 0x2000) +0x148.
  The `ld` at 0x34a64 loads 8 bytes from (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)+0x9600000000000000 | 0x2000) +0x158.
  The `ld` at 0x34aa0 loads 8 bytes from [([[-0x3c00]:8]:8 + ([-0x3bd6]:2 << 0x3))]:8 +0x8588.
  The `beq` branch at 0x349b8 targets 0x34a74, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x349e0 targets 0x34a2c, is taken when (a1(=entry(sym(ktext_repmask))) & a2(?)) == 0, and falls through when (a1(=entry(sym(ktext_repmask))) & a2(?)) != 0.
  The `beq` branch at 0x34a5c targets 0x34ab0, is taken when a2(=[sym(kdebug)]:2) == 0, and falls through when a2(=[sym(kdebug)]:2) != 0.
  The return at 0x34a24 has v0 = ?.
  The return at 0x34a6c has v0 = ?.
  The return at 0x34aa8 has v0 = ?.
  The return at 0x34ab0 has v0 = ?.
- `setup_replication_mask` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x34ab8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x34ab8-0x34b94 (220 bytes).
  It occupies 220 bytes.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x34ae0, `sd` at 0x34b50.
  The `ld` at 0x34ae4 loads 8 bytes from sym(.bss) +0xb898.
  The `sd` at 0x34af4 stores 8 bytes to sym(.bss) +0xb898.
  The `ld` at 0x34b40 loads 8 bytes from ?.
  The `ld` at 0x34b74 loads 8 bytes from ((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000) +0xd0.
  The `sd` at 0x34b78 stores 8 bytes to [((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8 +0x40.
  The `jal` at 0x34b54 calls get_nasid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `bne` branch at 0x34adc targets 0x34acc, is taken when a2(?) < 0x8 (signed), and falls through when a2(?) >= 0x8 (signed).
  The `bne` branch at 0x34af0 targets 0x34b54, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x34b00 targets 0x34b88 and is always taken.
  The `beq` branch at 0x34b14 targets 0x34b54, is taken when a2(?) >= a0 (signed), and falls through when a2(?) < a0 (signed).
  The `beq` branch at 0x34b1c targets 0x34b08, is taken when a4(=[sym(numa_kernel_replication_ratio)]) == 0, and falls through when a4(=[sym(numa_kernel_replication_ratio)]) != 0.
  The `bne` branch at 0x34b2c targets 0x34b08, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x34b4c targets 0x34b08 and is always taken.
  The `beq` branch at 0x34b8c targets 0x34b1c and is always taken.
  The return at 0x34b80 has v0 = ret(get_nasid).
- `replicate_kernel_text` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x34b94 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x34b94-0x34d0c (376 bytes).
  It occupies 376 bytes.
  The `ld` at 0x34b94 loads 8 bytes from abs 0xffffffffffffc400.
  The `lh` at 0x34b98 loads 2 bytes from abs 0xffffffffffffc42a.
  The `ld` at 0x34ba0 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x34bbc loads 8 bytes from ([[-0x3c00]:8]:8 + ([-0x3bd6]:2 << 0x3)) +0x0.
  The `ld` at 0x34bdc loads 8 bytes from [([[-0x3c00]:8]:8 + ([-0x3bd6]:2 << 0x3))]:8 +0x8588.
  The `ld` at 0x34be8 loads 8 bytes from [([[-0x3c00]:8]:8 + ([-0x3bd6]:2 << 0x3))]:8 +0x8580.
  The `ld` at 0x34c68 loads 8 bytes from ?.
  The `lh` at 0x34c7c loads 2 bytes from ?.
  The `jal` at 0x34c34 calls set_ktext_source [0x34da4] with a0=[sym(master_nasid)]:2, a1=[sym(master_nasid)]:2, a2=?, a3=?.
  The `jal` at 0x34c84 calls copy_kernel [0x34d0c] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x34c90 calls set_ktext_source [0x34da4] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x34cfc calls cmn_err with a0=0x0, a1=sym(.rodata)+55744, a2=?, a3=?, a4=sym(.rodata)+45952, a5=[[([[-0x3c00]:8]:8 + ([-0x3bd6]:2 << 0x3))]:8+34176]:8, a6=sym(_erodata), a7=[[([[-0x3c00]:8]:8 + ([-0x3bd6]:2 << 0x3))]:8+34184]:8.
  The `bne` branch at 0x34c20 targets 0x34ce4, is taken when a3(?) < a2(?) (unsigned), and falls through when a3(?) >= a2(?) (unsigned).
  The `bne` branch at 0x34c4c targets 0x34cbc, is taken when s3(=a0) < 0x2 (signed), and falls through when s3(=a0) >= 0x2 (signed).
  The `beq` branch at 0x34c78 targets 0x34c8c, is taken when (t8(?) & t9(?)) == 0, and falls through when (t8(?) & t9(?)) != 0.
  The `bne` branch at 0x34cb4 targets 0x34c68, is taken when s0(?) < s3(=a0) (signed), and falls through when s0(?) >= s3(=a0) (signed).
  The `beq` branch at 0x34d04 targets 0x34c28 and is always taken.
  The return at 0x34cdc has v0 = ret(set_ktext_source).
- `copy_kernel` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x34d0c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x34d0c-0x34da4 (152 bytes).
  It occupies 152 bytes.
  The `ld` at 0x34d14 loads 8 bytes from abs 0xffffffffffffc400.
  The `lh` at 0x34d20 loads 2 bytes from abs 0xffffffffffffc42a.
  The `ld` at 0x34d2c loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x34d4c loads 8 bytes from ([[-0x3c00]:8]:8 + ([-0x3bd6]:2 << 0x3)) +0x0.
  The `ld` at 0x34d68 loads 8 bytes from [([[-0x3c00]:8]:8 + ([-0x3bd6]:2 << 0x3))]:8 +0x8580.
  The `jal` at 0x34d90 calls bcopy with a0=sym(__elf_header), a1=?, a2=?, a3=(a0 << 0x21), a4=0xffffff01ffffffff, a5=0xa800000000000000, a7=0xffffff.
  The return at 0x34d9c has v0 = ret(bcopy).
- `set_ktext_source` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x34da4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x34da4-0x34e3c (152 bytes).
  It occupies 152 bytes.
  The `ld` at 0x34dc4 loads 8 bytes from abs 0xffffffffffffc400.
  The `lh` at 0x34dcc loads 2 bytes from (sym(nasid_to_compact_node) + (a0 + a0)) +0x0.
  The `ld` at 0x34dd4 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x34de8 loads 8 bytes from (([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8) +0x0.
  The `sd` at 0x34df8 stores 8 bytes to ((a0 << 0x21)+0x9600000000000000 | 0x2000) +0x1d0.
  The `sh` at 0x34e04 stores 2 bytes to [(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x857c.
  The `sw` at 0x34e10 stores 4 bytes to [(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8578.
  The `sd` at 0x34e20 stores 8 bytes to [(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8580.
  The `sh` at 0x34e24 stores 2 bytes to [(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x857e.
  The `sd` at 0x34e38 stores 8 bytes to [(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8588.
  The return at 0x34e34 has v0 = [(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8+34168.
- `page_dumpable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x34e3c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x34e3c-0x34f74 (312 bytes).
  It occupies 312 bytes.
  The `lh` at 0x34e54 loads 2 bytes from (sym(compact_to_nasid_node) + (a0 + a0)) +0x0.
  The `ld` at 0x34e70 loads 8 bytes from table(sym(ktext_repmask)) +0x0.
  The `ld` at 0x34e90 loads 8 bytes from abs 0xffffffffffffc400.
  The `lh` at 0x34e98 loads 2 bytes from abs 0xffffffffffffc42a.
  The `ld` at 0x34ea0 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x34ebc loads 8 bytes from ([[-0x3c00]:8]:8 + ([-0x3bd6]:2 << 0x3)) +0x0.
  The `ld` at 0x34ed8 loads 8 bytes from [([[-0x3c00]:8]:8 + ([-0x3bd6]:2 << 0x3))]:8 +0x8580.
  The `jal` at 0x34f00 calls kvtophys with a0=?, a1=([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21), a2=0xa800000000000000, a3=?, a4=entry(sym(ktext_repmask)), a5=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a6=0x1.
  The `jal` at 0x34f18 calls kvtophys with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x34e6c targets 0x34f64, is taken when a7(=[sym(master_nasid)]:2) == a5(=[(sym(compact_to_nasid_node) + (a0 + a0))]:2), and falls through when a7(=[sym(master_nasid)]:2) != a5(=[(sym(compact_to_nasid_node) + (a0 + a0))]:2).
  The `beq` branch at 0x34e88 targets 0x34f6c, is taken when (a4(=entry(sym(ktext_repmask))) & a7(?)) == 0, and falls through when (a4(=entry(sym(ktext_repmask))) & a7(?)) != 0.
  The `bne` branch at 0x34f3c targets 0x34f58, is taken when a0(?) < a1(?) (unsigned), and falls through when a0(?) >= a1(?) (unsigned).
  The `bne` branch at 0x34f44 targets 0x34f5c, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x34f50 targets 0x34f5c and is always taken.
  The `beq` branch at 0x34f64 targets 0x34f5c and is always taken.
  The `beq` branch at 0x34f6c targets 0x34f5c and is always taken.
  The return at 0x34f5c has v0 = one of 0x0, 0x1.
- `_get_count` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x37440 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x37440-0x3744c (12 bytes).
  It occupies 12 bytes.
  The return at 0x37444 has v0 = ?.
- `get_r4k_counter` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x37440 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x37440-0x3744c (12 bytes).
  It occupies 12 bytes.
  The return at 0x37444 has v0 = ?.
- `delaycounter` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x374d8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x374d8-0x374fc (36 bytes).
  It occupies 36 bytes.
  The return at 0x374f4 has v0 = ?.
- `_badaddr_val` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x37500 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x37500-0x37614 (276 bytes).
  It occupies 276 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0x37514, `ld` at 0x375e4.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x37520, `sh` at 0x375f0.
  2 such `sw` accesses store 4 bytes to abs 0xffffffffffffc48c, including `sw` at 0x3752c, `sw` at 0x375fc.
  The `lb` at 0x3753c loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0x37544 stores 1 byte to a2 (arg2 at entry) +0x0.
  The `lh` at 0x3755c loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0x37564 stores 2 bytes to a2 (arg2 at entry) +0x0.
  The `lw` at 0x3757c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x37584 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `ld` at 0x3759c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sd` at 0x375a4 stores 8 bytes to a2 (arg2 at entry) +0x0.
  The `jal` at 0x375c8 calls cmn_err with a0=0x0, a1=sym(.data)+41056, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x37518 targets 0x3752c, is taken when t2(=[-0x3fe0]:8) == 0, and falls through when t2(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0x37524 targets 0x37530 and is always taken.
  The `bne` branch at 0x37534 targets 0x37550, is taken when a1 != at(=0x1), and falls through when a1 == at(=0x1).
  The `beq` branch at 0x37548 targets 0x375d0 and is always taken.
  The `bne` branch at 0x37554 targets 0x37570, is taken when a1 != at(=0x2), and falls through when a1 == at(=0x2).
  The `beq` branch at 0x37568 targets 0x375d0 and is always taken.
  The `bne` branch at 0x37574 targets 0x37590, is taken when a1 != at(=0x4), and falls through when a1 == at(=0x4).
  The `beq` branch at 0x37588 targets 0x375d0 and is always taken.
  The `bne` branch at 0x37594 targets 0x375b0, is taken when a1 != at(=0x8), and falls through when a1 == at(=0x8).
  The `beq` branch at 0x375a8 targets 0x375d0 and is always taken.
  The `bne` branch at 0x375dc targets 0x37888, is taken when (t1(?) & 0x4000) != 0, and falls through when (t1(?) & 0x4000) == 0.
  The `beq` branch at 0x375e8 targets 0x375fc, is taken when t2(=[-0x3fe0]:8) == 0, and falls through when t2(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0x375f4 targets 0x37600 and is always taken.
  The return at 0x3760c has v0 = 0x0.
- `_wbadaddr_val` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x37614 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x37614-0x3773c (296 bytes).
  It occupies 296 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0x37628, `ld` at 0x3770c.
  2 such `sw` accesses store 4 bytes to abs 0xffffffffffffc48c, including `sw` at 0x37638, `sw` at 0x37718.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x37644, `sh` at 0x37724.
  The `lb` at 0x37654 loads 1 byte from a2 (arg2 at entry) +0x0.
  The `sb` at 0x3765c stores 1 byte to a0 (arg0 at entry) +0x0.
  The `lh` at 0x37674 loads 2 bytes from a2 (arg2 at entry) +0x0.
  The `sh` at 0x3767c stores 2 bytes to a0 (arg0 at entry) +0x0.
  The `lw` at 0x37694 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `sw` at 0x3769c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `ld` at 0x376b4 loads 8 bytes from a2 (arg2 at entry) +0x0.
  The `sd` at 0x376bc stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `lw` at 0x376f8 loads 4 bytes from abs 0x9600000000000000.
  The `jal` at 0x376e0 calls cmn_err with a0=0x0, a1=sym(.data)+41082, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x37630 targets 0x37644, is taken when t2(=[-0x3fe0]:8) != 0, and falls through when t2(=[-0x3fe0]:8) == 0.
  The `beq` branch at 0x3763c targets 0x37648 and is always taken.
  The `bne` branch at 0x3764c targets 0x37668, is taken when a1 != at(=0x1), and falls through when a1 == at(=0x1).
  The `beq` branch at 0x37660 targets 0x376e8 and is always taken.
  The `bne` branch at 0x3766c targets 0x37688, is taken when a1 != at(=0x2), and falls through when a1 == at(=0x2).
  The `beq` branch at 0x37680 targets 0x376e8 and is always taken.
  The `bne` branch at 0x3768c targets 0x376a8, is taken when a1 != at(=0x4), and falls through when a1 == at(=0x4).
  The `beq` branch at 0x376a0 targets 0x376e8 and is always taken.
  The `bne` branch at 0x376ac targets 0x376c8, is taken when a1 != at(=0x8), and falls through when a1 == at(=0x8).
  The `beq` branch at 0x376c0 targets 0x376e8 and is always taken.
  The `bne` branch at 0x37704 targets 0x37888, is taken when (t1(?) & 0x4000) != 0, and falls through when (t1(?) & 0x4000) == 0.
  The `bne` branch at 0x37710 targets 0x37724, is taken when t2(=[-0x3fe0]:8) != 0, and falls through when t2(=[-0x3fe0]:8) == 0.
  The `beq` branch at 0x3771c targets 0x37728 and is always taken.
  The return at 0x37734 has v0 = 0x0.
- `_dummy_proc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x378f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x378f0-0x378f8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x378f0 has v0 = ?.
- `first_address` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x378f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x378f0-0x378f8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x378f0 has v0 = ?.
- `hub_ioerror_local` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x37900 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x37900-0x379fc (252 bytes).
  It occupies 252 bytes.
  The `lw` at 0x3793c loads 4 bytes from a3 (arg3 at entry) +0x0.
  2 such `lh` accesses load 2 bytes from a3 (arg3 at entry) +0xc, including `lh` at 0x37940, `lh` at 0x379c4.
  2 such `lh` accesses load 2 bytes from a3 (arg3 at entry) +0xe, including `lh` at 0x37948, `lh` at 0x379c8.
  The `lh` at 0x3795c loads 2 bytes from (sym(compact_to_nasid_node) + ([a3+12]:2 + [a3+12]:2)) +0x0.
  The `lh` at 0x37968 loads 2 bytes from (sym(compact_to_nasid_node) + ([a3+14]:2 + [a3+14]:2)) +0x0.
  2 such `ld` accesses load 8 bytes from a3 (arg3 at entry) +0x10, including `ld` at 0x37970, `ld` at 0x379cc.
  The `ld` at 0x37988 loads 8 bytes from ([(sym(compact_to_nasid_node) + ([a3+14]:2 + [a3+14]:2))]:2 << 0x21) -0x6dfffffffe800000.
  The `jal` at 0x379b0 calls cmn_err with a0=0x4, a1=sym(.rodata)+56232, a2=?, a3=[(sym(compact_to_nasid_node) + ([a3+14]:2 + [a3+14]:2))]:2, a4=[a3+14]:2, a5=[(sym(compact_to_nasid_node) + ([a3+12]:2 + [a3+12]:2))]:2, a6=[a3+12]:2.
  The `jal` at 0x379bc calls kl_panic with a0=sym(.rodata)+56232, a1=?, a2=?, a3=?.
  The `jal` at 0x379e0 calls cmn_err with a0=0x4, a1=sym(.rodata)+56232, a2=[a3+16]:8, a3=?, a4=[a3+14]:2, a6=[a3+12]:2.
  The `jal` at 0x379ec calls kl_panic with a0=sym(.rodata)+56232, a1=?, a2=?, a3=?.
  The `beq` branch at 0x3790c targets 0x37934, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x37918 targets 0x37934, is taken when a2 == at(=0x2), and falls through when a2 != at(=0x2).
  The `bne` branch at 0x37920 targets 0x3793c, is taken when a2 != v0(=0x3), and falls through when a2 == v0(=0x3).
  The `beq` branch at 0x37934 targets 0x37928 and is always taken.
  The `bgez` branch at 0x37964 targets 0x37974, is taken when a2(=([a3] << 0x6)) >= 0 (signed), and falls through when a2(=([a3] << 0x6)) < 0 (signed).
  The `beq` branch at 0x3796c targets 0x37978 and is always taken.
  The `beq` branch at 0x3799c targets 0x379cc, is taken when (a3(=[([(sym(compact_to_nasid_node) + ([a3+14]:2 + [a3+14]:2))]:2 << 0x21)-7926335344146907136]:8) & a5(?)) == 0, and falls through when (a3(=[([(sym(compact_to_nasid_node) + ([a3+14]:2 + [a3+14]:2))]:2 << 0x21)-7926335344146907136]:8) & a5(?)) != 0.
  The `beq` branch at 0x379f4 targets 0x37928 and is always taken.
  The return at 0x3792c has v0 = one of 0x0, ret(kl_panic).
- `hub_xp_error_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x379fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x379fc-0x37ae4 (232 bytes).
  It occupies 232 bytes.
  The `ld` at 0x37a14 loads 8 bytes from (a1 << 0x21) -0x6dfffffffe3ffe18.
  The `ld` at 0x37a4c loads 8 bytes from abs 0xffffffffffffc400.
  The `lh` at 0x37a54 loads 2 bytes from (sym(nasid_to_compact_node) + (a1 + a1)) +0x0.
  The `ld` at 0x37a58 loads 8 bytes from [-0x3c00]:8 +0x0.
  The `ld` at 0x37a64 loads 8 bytes from ([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a1 + a1))]:2 << 0x3)) +0x0.
  The `lw` at 0x37a74 loads 4 bytes from [([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a1 + a1))]:2 << 0x3))]:8 +0x8640.
  The `jal` at 0x37a38 calls error_state_get with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=0x7.
  The `jal` at 0x37a7c calls error_state_set with a0=[[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a1 + a1))]:2 << 0x3))]:8+34368], a1=ret(error_state_get), a2=[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a1 + a1))]:2 << 0x3))]:8, a3=([(sym(nasid_to_compact_node) + (a1 + a1))]:2 << 0x3), a4=(a1 + a1).
  The `jal` at 0x37aac calls xtalk_error_handler with a0=?, a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=a4 at entry (arg4).
  The `jal` at 0x37ad4 calls error_state_set with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=?, a5=0x7, a7=0x9.
  The `beq` branch at 0x37a30 targets 0x37ab8, is taken when (at(=[(a1 << 0x21)-7926335344142712344]:8) & 0x11) == 0, and falls through when (at(=[(a1 << 0x21)-7926335344142712344]:8) & 0x11) != 0.
  The `beq` branch at 0x37a90 targets 0x37acc, is taken when v0(=ret(error_state_set)) == a5(=0x7), and falls through when v0(=ret(error_state_set)) != a5(=0x7).
  The `beq` branch at 0x37a98 targets 0x37ad4, is taken when a6(?) == t0(=0x3), and falls through when a6(?) != t0(=0x3).
  The `beq` branch at 0x37acc targets 0x37abc and is always taken.
  The `beq` branch at 0x37adc targets 0x37aa4 and is always taken.
  The return at 0x37ac4 has v0 = one of ?, 0x9.
- `is_widget_pio_enabled` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x37ae4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x37ae4-0x37b4c (104 bytes).
  It occupies 104 bytes.
  The `lh` at 0x37ae4 loads 2 bytes from a0 (arg0 at entry) +0xc.
  The `lh` at 0x37b00 loads 2 bytes from (sym(compact_to_nasid_node) + ([a0+12]:2 + [a0+12]:2)) +0x0.
  The `lbu` at 0x37b10 loads 1 byte from a0 (arg0 at entry) +0x7.
  The `ld` at 0x37b14 loads 8 bytes from ([(sym(compact_to_nasid_node) + ([a0+12]:2 + [a0+12]:2))]:2 << 0x21) -0x6dfffffffe3ffef0.
  The `beq` branch at 0x37af4 targets 0x37b3c, is taken when a3(=[a0+12]:2) == a6(=-0x1), and falls through when a3(=[a0+12]:2) != a6(=-0x1).
  The `beq` branch at 0x37b08 targets 0x37b44, is taken when a7(=[(sym(compact_to_nasid_node) + ([a0+12]:2 + [a0+12]:2))]:2) == a6(=-0x1), and falls through when a7(=[(sym(compact_to_nasid_node) + ([a0+12]:2 + [a0+12]:2))]:2) != a6(=-0x1).
  The `beq` branch at 0x37b24 targets 0x37b34, is taken when (t0(=[([(sym(compact_to_nasid_node) + ([a0+12]:2 + [a0+12]:2))]:2 << 0x21)-7926335344142712560]:8) & t1(?)) == 0, and falls through when (t0(=[([(sym(compact_to_nasid_node) + ([a0+12]:2 + [a0+12]:2))]:2 << 0x21)-7926335344142712560]:8) & t1(?)) != 0.
  The return at 0x37b2c has v0 = 0x1.
  The return at 0x37b34 has v0 = 0x0.
  The return at 0x37b3c has v0 = 0x0.
  The return at 0x37b44 has v0 = 0x0.
- `hub_ioerror_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x37b4c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x37b4c-0x37f50 (1028 bytes).
  It occupies 1028 bytes.
  The `lh` at 0x37b98 loads 2 bytes from ?.
  The `ld` at 0x37bf4 loads 8 bytes from a3 (arg3 at entry) +0x30.
  3 such `ld` accesses load 8 bytes from a3 (arg3 at entry) +0x10, including `ld` at 0x37c48, `ld` at 0x37cd4, `ld` at 0x37dd4.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0x37c54, `lw` at 0x37cc4, `lw` at 0x37e34.
  3 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x18, including `sd` at 0x37c68, `sd` at 0x37d2c, `sd` at 0x37e68.
  3 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x37c78, `sw` at 0x37d48, `sw` at 0x37e5c.
  3 such `sh` accesses store 2 bytes to a3 (arg3 at entry) +0x6, including `sh` at 0x37c84, `sh` at 0x37d38, `sh` at 0x37e48.
  3 such `lh` accesses load 2 bytes from a3 (arg3 at entry) +0x6, including `lh` at 0x37c88, `lh` at 0x37eb4, `lh` at 0x37f14.
  The `ld` at 0x37d08 loads 8 bytes from table(0x9200000001c00160) +0x0.
  The `lbu` at 0x37dfc loads 1 byte from ?.
  The `jal` at 0x37b7c calls hwgraph_info_get_LBL with a0=a0 at entry (arg0), a1=sym(.rodata)+56232, a2=sp-96, a3=a3 at entry (arg3).
  The `jal` at 0x37c98 calls is_widget_pio_enabled with a0=a3 at entry (arg3), a1=?, a2=0x5, a3=[a3+6]:2, a4=0x1.
  The `jal` at 0x37cb4 calls hub_xp_error_handler with a0=a0 at entry (arg0), a1=?, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a3 at entry (arg3).
  The `jal` at 0x37d58 calls is_widget_pio_enabled with a0=a3 at entry (arg3), a1=0x1, a2=?, a3=?.
  The `jal` at 0x37d74 calls hub_xp_error_handler with a0=a0 at entry (arg0), a1=?, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a3 at entry (arg3).
  The `jal` at 0x37da0 calls hub_xp_error_handler with a0=a0 at entry (arg0), a1=?, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a3 at entry (arg3), a5=0xa.
  The `jal` at 0x37e18 calls xtalk_pio_target_get with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x37e24 calls xtalk_pio_xtalk_addr_get with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x37e6c calls printf with a0=sym(.rodata)+56232, a1=?, a2=?, a3=?, a6=0x8.
  The `jal` at 0x37e84 calls hub_ioerror_local with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x1.
  The `jal` at 0x37e94 calls error_state_get with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x37ec0 calls hub_ioerror_local with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x37ed0 calls error_state_get with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x37f24 calls ioerror_dump with a0=sym(.rodata)+56232, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x37f40 calls ioerror_dump with a0=sym(.rodata)+56232, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x37b88 targets 0x37bc0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x37b94 targets 0x37bf4, is taken when s1(=a1) == a2(=0x5), and falls through when s1(=a1) != a2(=0x5).
  The `beq` branch at 0x37ba0 targets 0x37c88, is taken when s1(=a1) == a3(=0x6), and falls through when s1(=a1) != a3(=0x6).
  The `beq` branch at 0x37ba8 targets 0x37d84, is taken when s1(=a1) == a4(=0x9), and falls through when s1(=a1) != a4(=0x9).
  The `beq` branch at 0x37bb0 targets 0x37d94, is taken when s1(=a1) == a5(=0xa), and falls through when s1(=a1) != a5(=0xa).
  The `beq` branch at 0x37bb8 targets 0x37bd4 and is always taken.
  The `beq` branch at 0x37bc8 targets 0x37e6c, is taken when s0(?) == a6(=0x8), and falls through when s0(?) != a6(=0x8).
  The `bne` branch at 0x37c0c targets 0x37cc4, is taken when a1(?) < a7(=0x9000000000000000) (unsigned), and falls through when a1(?) >= a7(=0x9000000000000000) (unsigned).
  The `beq` branch at 0x37c18 targets 0x37cc4, is taken when a1(?) >= a2(=0x9000010000000000) (unsigned), and falls through when a1(?) < a2(=0x9000010000000000) (unsigned).
  The `bne` branch at 0x37c2c targets 0x37db4, is taken when a0(=[a3+48]:8) < a3(=table(0x92000000e0000000)) (unsigned), and falls through when a0(=[a3+48]:8) >= a3(=table(0x92000000e0000000)) (unsigned).
  The `beq` branch at 0x37c40 targets 0x37db0, is taken when a0(=[a3+48]:8) >= a4(=table(0x920000000a000000)) (unsigned), and falls through when a0(=[a3+48]:8) < a4(=table(0x920000000a000000)) (unsigned).
  The `beq` branch at 0x37c80 targets 0x37d4c and is always taken.
  The `beq` branch at 0x37c90 targets 0x37e7c, is taken when a3(=[a3+6]:2) == a4(=0x1), and falls through when a3(=[a3+6]:2) != a4(=0x1).
  The `beq` branch at 0x37ca0 targets 0x37e94, is taken when v0(=ret(is_widget_pio_enabled)) == 0, and falls through when v0(=ret(is_widget_pio_enabled)) != 0.
  The `beq` branch at 0x37cbc targets 0x37bc4 and is always taken.
  The `bgez` branch at 0x37ccc targets 0x37d8c, is taken when a5(=([a3] << 0x6)) >= 0 (signed), and falls through when a5(=([a3] << 0x6)) < 0 (signed).
  The `beq` branch at 0x37ce0 targets 0x37eec, is taken when (a0(?) & 0x7) == 0, and falls through when (a0(?) & 0x7) != 0.
  The `beq` branch at 0x37d50 targets 0x37eb8, is taken when a0(?) == a1(=0x1), and falls through when a0(?) != a1(=0x1).
  The `beq` branch at 0x37d60 targets 0x37ed0, is taken when v0(=ret(is_widget_pio_enabled)) == 0, and falls through when v0(=ret(is_widget_pio_enabled)) != 0.
  The `beq` branch at 0x37d7c targets 0x37bc4 and is always taken.
  The `beq` branch at 0x37d84 targets 0x37bd0 and is always taken.
  The `beq` branch at 0x37d8c targets 0x37bd4 and is always taken.
  The `beq` branch at 0x37da8 targets 0x37bc4 and is always taken.
  The `bne` branch at 0x37dbc targets 0x37eb0, is taken when a0(=[a3+48]:8) < a2(=table(0x9200000020000000)) (unsigned), and falls through when a0(=[a3+48]:8) >= a2(=table(0x9200000020000000)) (unsigned).
  The `beq` branch at 0x37dcc targets 0x37f10, is taken when a0(=[a3+48]:8) >= a3(=table(0x9200000100000000)) (unsigned), and falls through when a0(=[a3+48]:8) < a3(=table(0x9200000100000000)) (unsigned).
  The `beq` branch at 0x37e04 targets 0x37f04, is taken when a4(?) == a2(?), and falls through when a4(?) != a2(?).
  The `bne` branch at 0x37e0c targets 0x37dec, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x37e64 targets 0x37d4c and is always taken.
  The `beq` branch at 0x37e74 targets 0x37bd4 and is always taken.
  The `beq` branch at 0x37e8c targets 0x37bc4 and is always taken.
  The `beq` branch at 0x37ea0 targets 0x37f18, is taken when v0(=ret(error_state_get)) == a1(=0x3), and falls through when v0(=ret(error_state_get)) != a1(=0x3).
  The `beq` branch at 0x37ea8 targets 0x37bd4 and is always taken.
  The `beq` branch at 0x37eb0 targets 0x37d4c and is always taken.
  The `beq` branch at 0x37ec8 targets 0x37bc4 and is always taken.
  The `beq` branch at 0x37edc targets 0x37f34, is taken when v0(=ret(error_state_get)) == a2(=0x3), and falls through when v0(=ret(error_state_get)) != a2(=0x3).
  The `beq` branch at 0x37ee4 targets 0x37bd4 and is always taken.
  The `beq` branch at 0x37efc targets 0x37d28 and is always taken.
  The `beq` branch at 0x37f08 targets 0x37e18 and is always taken.
  The `beq` branch at 0x37f10 targets 0x37d4c and is always taken.
  The `beq` branch at 0x37f2c targets 0x37ea8 and is always taken.
  The `beq` branch at 0x37f48 targets 0x37ee4 and is always taken.
  The return at 0x37bec has v0 = one of 0x4, ?, 0x5, 0x0.
- `crbx` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x37f50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x37f50-0x38bcc (3196 bytes).
  It occupies 3196 bytes.
  5 such `ld` accesses load 8 bytes from ?, including `ld` at 0x38130, `ld` at 0x38234, `ld` at 0x38238.
  3 such `ld` accesses load 8 bytes from table(sym(.rodata)+56232) +0x0, including `ld` at 0x3828c, `ld` at 0x38338, `ld` at 0x3838c.
  The `lhu` at 0x38298 loads 2 bytes from sym(.rodata) +0xf034.
  The `lw` at 0x3829c loads 4 bytes from sym(.rodata) +0xf030.
  The `lbu` at 0x382b8 loads 1 byte from sym(.rodata) +0xef32.
  The `lhu` at 0x382c0 loads 2 bytes from sym(.rodata) +0xef30.
  The `ld` at 0x382e4 loads 8 bytes from sym(.rodata) +0xef38.
  The `lhu` at 0x382f0 loads 2 bytes from sym(.rodata) +0xf054.
  The `lw` at 0x382f4 loads 4 bytes from sym(.rodata) +0xf050.
  The `lbu` at 0x3830c loads 1 byte from sym(.rodata) +0xecea.
  The `lhu` at 0x38318 loads 2 bytes from sym(.rodata) +0xece8.
  The `lhu` at 0x38344 loads 2 bytes from sym(.rodata) +0xf04c.
  The `lw` at 0x38348 loads 4 bytes from sym(.rodata) +0xf048.
  The `lbu` at 0x38360 loads 1 byte from sym(.rodata) +0xe1c6.
  The `lhu` at 0x3836c loads 2 bytes from sym(.rodata) +0xe1c4.
  The `lhu` at 0x38398 loads 2 bytes from sym(.rodata) +0xf044.
  The `lw` at 0x3839c loads 4 bytes from sym(.rodata) +0xf040.
  The `lbu` at 0x383b8 loads 1 byte from sym(.rodata) +0xe19a.
  The `lhu` at 0x383c0 loads 2 bytes from sym(.rodata) +0xe198.
  The `lhu` at 0x38408 loads 2 bytes from sym(.rodata) +0xf03c.
  The `lw` at 0x3840c loads 4 bytes from sym(.rodata) +0xf038.
  The `ld` at 0x38528 loads 8 bytes from sym(.rodata) +0xef58.
  The `ld` at 0x38578 loads 8 bytes from sym(.rodata) +0xef40.
  The `ld` at 0x385a8 loads 8 bytes from sym(.rodata) +0xef68.
  The `ld` at 0x385d0 loads 8 bytes from sym(.rodata) +0xef60.
  The `ld` at 0x385e4 loads 8 bytes from sym(.rodata) +0xef50.
  The `lhu` at 0x38608 loads 2 bytes from sym(.rodata) +0xe1a4.
  The `lw` at 0x38614 loads 4 bytes from sym(.rodata) +0xe1a0.
  The `ld` at 0x38628 loads 8 bytes from sym(.rodata) +0xef70.
  The `lw` at 0x38634 loads 4 bytes from sym(.rodata) +0xe1c0.
  The `ld` at 0x3869c loads 8 bytes from sym(.rodata) +0xef48.
  The `lbu` at 0x386a8 loads 1 byte from sym(.rodata) +0xe1be.
  The `lhu` at 0x386b4 loads 2 bytes from sym(.rodata) +0xe1bc.
  The `lw` at 0x386bc loads 4 bytes from sym(.rodata) +0xe1b8.
  The `ld` at 0x386c8 loads 8 bytes from sym(.rodata) +0xe1b0.
  The `lhu` at 0x386d4 loads 2 bytes from sym(.rodata) +0xe1ac.
  The `lw` at 0x386e0 loads 4 bytes from sym(.rodata) +0xe1a8.
  The `jalr` at 0x37f94 calls (unknown callee) with a0=sym(.rodata)+56232, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x37f9c calls (unknown callee) with a0=sym(.rodata)+56232, a1=?, a2=?, a3=?.
  The `jalr` at 0x37fa4 calls (unknown callee) with a0=sym(.rodata)+56232, a1=?, a2=?, a3=?.
  The `jalr` at 0x37fac calls (unknown callee) with a0=sym(.rodata)+56232, a1=?, a2=?, a3=?.
  The `jalr` at 0x37fb4 calls (unknown callee) with a0=sym(.rodata)+56232, a1=?, a2=?, a3=?.
  The `jalr` at 0x37fbc calls (unknown callee) with a0=sym(.rodata)+56232, a1=?, a2=?, a3=?.
  The `jalr` at 0x37fc4 calls (unknown callee) with a0=sym(.rodata)+56232, a1=?, a2=?, a3=?.
  The `jalr` at 0x37fdc calls (unknown callee) with a0=sym(.rodata)+56232, a1=?, a2=?, a3=?.
  The `jal` at 0x38014 calls sprintf with a0=sp-112, a1=sym(.rodata)+56232, a2=?, a3=table(sym(.rodata)+56232), a4=0x2.
  The `jal` at 0x38060 calls sprintf with a0=sp-104, a1=sym(.rodata)+56232, a2=?, a3=0x3, a4=0x2, a5=0x5.
  The `jalr` at 0x380ec calls (unknown callee) with a0=sym(.rodata)+56232, a1=?, a2=?, a3=?.
  The `jalr` at 0x38144 calls (unknown callee) with a0=sym(.rodata)+56232, a1=?, a2=?, a3=?, a6=sp-128, a7=sp-120.
  The `jalr` at 0x3818c calls (unknown callee) with a0=sym(.rodata)+56232, a1=?, a2=?, a3=?.
  The `jalr` at 0x3820c calls (unknown callee) with a0=sym(.rodata)+56232, a1=?, a2=?, a3=?.
  The `jal` at 0x383f8 calls sprintf with a0=sp-120, a1=sym(.rodata)+56232, a2=?, a3=0x4, a4=0x2, a5=0x8.
  The `jal` at 0x38588 calls sprintf with a0=sp-120, a1=sym(.rodata)+56232, a2=?, a3=table(sym(.rodata)+56232), a4=0x2, a6=0x0, a7=sp-128.
  The `jal` at 0x385b8 calls sprintf with a0=sp-120, a1=sym(.rodata)+56232, a2=?, a3=sym(.rodata)+56232, a4=0x2, a6=0x4c4e.
  The `jal` at 0x385f8 calls sprintf with a0=sp-120, a1=sym(.rodata)+56232, a2=?, a3=?, a4=0x2.
  The `beq` branch at 0x38004 targets 0x38228 and is always taken.
  The `beq` branch at 0x38028 targets 0x382f0, is taken when (a2(?) & 0x7) == 0, and falls through when (a2(?) & 0x7) != 0.
  The `beq` branch at 0x38030 targets 0x38344, is taken when s7(=0x1) == a2(?), and falls through when s7(=0x1) != a2(?).
  The `beq` branch at 0x38038 targets 0x38398, is taken when a4(=0x2) == a2(?), and falls through when a4(=0x2) != a2(?).
  The `beq` branch at 0x38044 targets 0x38408, is taken when a3(=0x3) == a2(?), and falls through when a3(=0x3) != a2(?).
  The `beq` branch at 0x38050 targets 0x38298, is taken when a5(=0x5) == a2(?), and falls through when a5(=0x5) != a2(?).
  The `beq` branch at 0x38220 targets 0x38534, is taken when s4(?) >= 0xf (signed), and falls through when s4(?) < 0xf (signed).
  The `beq` branch at 0x3824c targets 0x382b0, is taken when (a2(?) & 0x3) == 0, and falls through when (a2(?) & 0x3) != 0.
  The `beq` branch at 0x38254 targets 0x38308, is taken when s7(=0x1) == a2(?), and falls through when s7(=0x1) != a2(?).
  The `beq` branch at 0x3825c targets 0x3835c, is taken when a4(=0x2) == a2(?), and falls through when a4(=0x2) != a2(?).
  The `beq` branch at 0x38268 targets 0x383b0, is taken when ra(=0x3) == a2(?), and falls through when ra(=0x3) != a2(?).
  The `beq` branch at 0x38284 targets 0x3800c, is taken when a2(?) >= 0xb (unsigned), and falls through when a2(?) < 0xb (unsigned).
  The `beq` branch at 0x382a8 targets 0x38068 and is always taken.
  The `bne` branch at 0x382d0 targets 0x38510, is taken when a1(?) < 0x20 (unsigned), and falls through when a1(?) >= 0x20 (unsigned).
  The `beq` branch at 0x382dc targets 0x38564, is taken when a1(?) >= 0x21 (unsigned), and falls through when a1(?) < 0x21 (unsigned).
  The `beq` branch at 0x382e8 targets 0x3826c and is always taken.
  The `beq` branch at 0x38300 targets 0x38068 and is always taken.
  The `beq` branch at 0x38330 targets 0x38584, is taken when a2(?) >= 0x41 (unsigned), and falls through when a2(?) < 0x41 (unsigned).
  The `beq` branch at 0x38354 targets 0x38068 and is always taken.
  The `beq` branch at 0x38384 targets 0x385b4, is taken when a2(?) >= 0xfc (unsigned), and falls through when a2(?) < 0xfc (unsigned).
  The `beq` branch at 0x383a8 targets 0x38068 and is always taken.
  The `beq` branch at 0x383cc targets 0x38634, is taken when (a2(?) & 0xff) == 0, and falls through when (a2(?) & 0xff) != 0.
  The `beq` branch at 0x383d4 targets 0x386a8, is taken when s7(=0x1) == a2(?), and falls through when s7(=0x1) != a2(?).
  The `beq` branch at 0x383dc targets 0x386c8, is taken when a4(=0x2) == a2(?), and falls through when a4(=0x2) != a2(?).
  The `beq` branch at 0x383e4 targets 0x386d4, is taken when a3(=0x4) == a2(?), and falls through when a3(=0x4) != a2(?).
  The `beq` branch at 0x383ec targets 0x38608, is taken when a5(=0x8) == a2(?), and falls through when a5(=0x8) != a2(?).
  The `beq` branch at 0x38400 targets 0x3826c and is always taken.
  The `beq` branch at 0x38418 targets 0x38068 and is always taken.
  The `bne` branch at 0x38514 targets 0x38598, is taken when a1(?) < 0x6 (unsigned), and falls through when a1(?) >= 0x6 (unsigned).
  The `beq` branch at 0x38520 targets 0x385c8, is taken when a1(?) >= 0x7 (unsigned), and falls through when a1(?) < 0x7 (unsigned).
  The `beq` branch at 0x3852c targets 0x3826c and is always taken.
  The `bne` branch at 0x38564 targets 0x385dc, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x38570 targets 0x38694, is taken when a1(?) >= 0x81 (unsigned), and falls through when a1(?) < 0x81 (unsigned).
  The `beq` branch at 0x3857c targets 0x3826c and is always taken.
  The `beq` branch at 0x38590 targets 0x3826c and is always taken.
  The `bne` branch at 0x38598 targets 0x38620, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x385a0 targets 0x385f0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x385ac targets 0x3826c and is always taken.
  The `beq` branch at 0x385c0 targets 0x3826c and is always taken.
  The `bne` branch at 0x385c8 targets 0x385f0, is taken when a3(=0x8) != a1(?), and falls through when a3(=0x8) == a1(?).
  The `beq` branch at 0x385d4 targets 0x3826c and is always taken.
  The `bne` branch at 0x385dc targets 0x385f0, is taken when a7(=0x22) != a1(?), and falls through when a7(=0x22) == a1(?).
  The `beq` branch at 0x385e8 targets 0x3826c and is always taken.
  The `beq` branch at 0x38600 targets 0x3826c and is always taken.
  The `beq` branch at 0x38618 targets 0x3826c and is always taken.
  The `bne` branch at 0x38620 targets 0x385f0, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x3862c targets 0x3826c and is always taken.
  The `beq` branch at 0x38638 targets 0x3826c and is always taken.
  The `bne` branch at 0x38694 targets 0x385f0, is taken when at(=0x82) != a1(?), and falls through when at(=0x82) == a1(?).
  The `beq` branch at 0x386a0 targets 0x3826c and is always taken.
  The `beq` branch at 0x386c0 targets 0x3826c and is always taken.
  The `beq` branch at 0x386cc targets 0x3826c and is always taken.
  The `beq` branch at 0x386e4 targets 0x3826c and is always taken.
  The return at 0x3855c has v0 = ret(?).
  The instructions from 0x38420 to 0x3850c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x38640 to 0x38690 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x386ec to 0x38bc8 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x38290 uses a jump table whose successors are unresolved.
  The indirect jump at 0x3833c uses a jump table whose successors are unresolved.
  The indirect jump at 0x38390 uses a jump table whose successors are unresolved.
- `hub_error_devenable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x38bcc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x38bcc-0x38c8c (192 bytes).
  It occupies 192 bytes.
  The `lh` at 0x38c28 loads 2 bytes from ?.
  The `ld` at 0x38c5c loads 8 bytes from table(0x9200000001c002c8) +0x0.
  The `sd` at 0x38c74 stores 8 bytes to table(0x9200000001c00388) +0x0.
  The `jal` at 0x38bdc calls xwidget_info_get with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x38be8 calls xwidget_info_id_get with a0=ret(xwidget_info_get), a1=?, a2=?, a3=?.
  The `jal` at 0x38bf4 calls xwidget_info_master_get with a0=ret(xwidget_info_get), a1=?, a2=?, a3=?.
  The `jal` at 0x38c0c calls hwgraph_info_get_LBL with a0=ret(xwidget_info_master_get), a1=sym(.rodata)+56232, a2=sp-48, a3=?.
  The `beq` branch at 0x38c24 targets 0x38c40, is taken when s0(=a2) == a3(=0x5), and falls through when s0(=a2) != a3(=0x5).
  The `beq` branch at 0x38c2c targets 0x38c80, is taken when s0(=a2) == a0(=0x6), and falls through when s0(=a2) != a0(=0x6).
  The `beq` branch at 0x38c6c targets 0x38c78, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x38c78 targets 0x38c38 and is always taken.
  The `beq` branch at 0x38c84 targets 0x38c38 and is always taken.
  The return at 0x38c38 has v0 = 0x0.
- `hub_widgetdev_enable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x38c8c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x38c8c-0x38d2c (160 bytes).
  It occupies 160 bytes.
  The `lh` at 0x38cf0 loads 2 bytes from ?.
  The `ld` at 0x38d08 loads 8 bytes from table(0x9200000001c00120) +0x0.
  The `sd` at 0x38d28 stores 8 bytes to table(0x9200000001c00120) +0x0.
  The `jal` at 0x38c98 calls xwidget_info_get with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x38ca4 calls xwidget_info_id_get with a0=ret(xwidget_info_get), a1=?, a2=?, a3=?.
  The `jal` at 0x38cb0 calls xwidget_info_master_get with a0=ret(xwidget_info_get), a1=?, a2=?, a3=?.
  The `jal` at 0x38cc8 calls hwgraph_info_get_LBL with a0=ret(xwidget_info_master_get), a1=sym(.rodata)+56232, a2=sp-48, a3=?.
  The `beq` branch at 0x38ce8 targets 0x38d1c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x38d14 targets 0x38d24, is taken when (a6(?) & a7(=entry(0x9200000001c00120))) == 0, and falls through when (a6(?) & a7(=entry(0x9200000001c00120))) != 0.
  The `beq` branch at 0x38d24 targets 0x38d1c and is always taken.
  The return at 0x38d1c has v0 = one of ret(hwgraph_info_get_LBL), table(0x9200000001c00000).
- `hub_widgetdev_shutdown` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x38d2c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x38d2c-0x38f3c (528 bytes).
  It occupies 528 bytes.
  The `lh` at 0x38db4 loads 2 bytes from ?.
  The `ld` at 0x38dd8 loads 8 bytes from table(0x9200000001c00120) +0x0.
  The `sd` at 0x38de8 stores 8 bytes to table(0x9200000001c00120) +0x0.
  The `ld` at 0x38e14 loads 8 bytes from table(0x9200000001c00400) +0x0.
  The `jal` at 0x38d38 calls xwidget_info_get with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x38d48 calls xwidget_info_id_get with a0=ret(xwidget_info_get), a1=?, a2=?, a3=?.
  The `jal` at 0x38d54 calls xwidget_info_master_get with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x38d68 calls hwgraph_info_get_LBL with a0=ret(xwidget_info_master_get), a1=sym(.rodata)+56232, a2=sp-96, a3=?.
  The `jal` at 0x38e68 calls hubiio_crb_free with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x38ecc calls cmn_err with a0=0x6, a1=sym(.rodata)+56232, a2=?, a3=?.
  The `jal` at 0x38f20 calls cmn_err with a0=0x6, a1=sym(.rodata)+56232, a2=sym(.rodata)+56232, a3=?.
  The `beq` branch at 0x38dac targets 0x38e90, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x38dc0 targets 0x38e90, is taken when s8(?) == a0(=-0x1), and falls through when s8(?) != a0(=-0x1).
  The `beq` branch at 0x38de4 targets 0x38f30 and is always taken.
  The `beq` branch at 0x38dec targets 0x38e44, is taken when a0(=one of 0x0, 0x1) == 0, and falls through when a0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x38e00 targets 0x38e84, is taken when s1(?) >= 0xf (signed), and falls through when s1(?) < 0xf (signed).
  The `beq` branch at 0x38e10 targets 0x38e34, is taken when v1(=[sym(free_error_crbs)]) == 0, and falls through when v1(=[sym(free_error_crbs)]) != 0.
  The `bltz` branch at 0x38e1c targets 0x38e2c, is taken when v1(=(entry(0x9200000001c00400) << 0x8)) < 0 (signed), and falls through when v1(=(entry(0x9200000001c00400) << 0x8)) >= 0 (signed).
  The `bgez` branch at 0x38e24 targets 0x38dec, is taken when a0(=(entry(0x9200000001c00400) << 0xd)) >= 0 (signed), and falls through when a0(=(entry(0x9200000001c00400) << 0xd)) < 0 (signed).
  The `beq` branch at 0x38e2c targets 0x38dec and is always taken.
  The `beq` branch at 0x38e3c targets 0x38df4, is taken when a0(=(entry(0x9200000001c00400) << 0xd)) >= 0x0 (signed), and falls through when a0(=(entry(0x9200000001c00400) << 0xd)) < 0x0 (signed).
  The `beq` branch at 0x38e44 targets 0x38e54, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `beq` branch at 0x38e4c targets 0x38e60 and is always taken.
  The `bne` branch at 0x38e60 targets 0x38df4, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x38e74 targets 0x38df4, is taken when v1(=[sym(free_error_crbs_print)]) == 0, and falls through when v1(=[sym(free_error_crbs_print)]) != 0.
  The `beq` branch at 0x38e7c targets 0x38edc and is always taken.
  The `bne` branch at 0x38e88 targets 0x38ec0, is taken when a0(=[sym(free_error_crbs_print)]) != 0, and falls through when a0(=[sym(free_error_crbs_print)]) == 0.
  The `beq` branch at 0x38ed4 targets 0x38e94 and is always taken.
  The `beq` branch at 0x38edc targets 0x38ef4, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `bne` branch at 0x38ee4 targets 0x38f08, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x38eec targets 0x38f10 and is always taken.
  The `beq` branch at 0x38f00 targets 0x38eec, is taken when a3(?) >= 0x1 (unsigned), and falls through when a3(?) < 0x1 (unsigned).
  The `beq` branch at 0x38f28 targets 0x38df8 and is always taken.
  The `beq` branch at 0x38f34 targets 0x38e0c and is always taken.
  The return at 0x38eb8 has v0 = one of ?, ret(cmn_err).
- `hub_widget_reset` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x39000 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x39000-0x39148 (328 bytes).
  It occupies 328 bytes.
  The `lh` at 0x39050 loads 2 bytes from table(sym(compact_to_nasid_node)) +0x0.
  The `ld` at 0x39094 loads 8 bytes from ?.
  The `sd` at 0x390bc stores 8 bytes to ?.
  The `sd` at 0x390c0 stores 8 bytes to (entry(sym(compact_to_nasid_node)) << 0x21) -0x6dfffffffe3ffc78.
  The `ld` at 0x390c4 loads 8 bytes from (entry(sym(compact_to_nasid_node)) << 0x21) -0x6dfffffffe3ffc78.
  The `jal` at 0x3900c calls master_node_get with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3904c calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x390e8 calls hub_setup_prb with a0=entry(sym(compact_to_nasid_node)), a1=a1 at entry (arg1), a2=0x3, a3=0x2.
  The `jal` at 0x390f0 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3912c calls assfail with a0=sym(.rodata)+56232, a1=sym(.rodata)+56232, a2=0x40d, a3=?.
  The `beq` branch at 0x39038 targets 0x390f8, is taken when a0(?) == at(=-0x1), and falls through when a0(?) != at(=-0x1).
  The `beq` branch at 0x39070 targets 0x3913c and is always taken.
  The `beq` branch at 0x39084 targets 0x390dc, is taken when s0(?) >= 0x8 (signed), and falls through when s0(?) < 0x8 (signed).
  The `beq` branch at 0x3909c targets 0x39078, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x390b4 targets 0x39078, is taken when s4(=a1) != a7(?), and falls through when s4(=a1) == a7(?).
  The `beql` branch at 0x390cc targets 0x3907c, is taken when (t0(=[(entry(sym(compact_to_nasid_node)) << 0x21)-7926335344142711928]:8) & 0x10) == 0, and falls through when (t0(=[(entry(sym(compact_to_nasid_node)) << 0x21)-7926335344142711928]:8) & 0x10) != 0; its branch-likely delay slot `addiu s0,s0,1` at 0x390d0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x390d4 targets 0x39124 and is always taken.
  The `beq` branch at 0x39134 targets 0x3907c and is always taken.
  The `beq` branch at 0x39140 targets 0x39090 and is always taken.
  The return at 0x3911c has v0 = one of ret(master_node_get), ret(splx).
- `r1nk_perf_intr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3a578 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3a578-0x3a738 (448 bytes).
  It occupies 448 bytes.
  The `ld` at 0x3a580 loads 8 bytes from abs 0xffffffffffffc730.
  6 such `lh` accesses load 2 bytes from [-0x38d0]:8 +0x30, including `lh` at 0x3a590, `lh` at 0x3a5c0, `lh` at 0x3a5e8.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x3a5d8, `sw` at 0x3a6cc.
  4 such `lw` accesses load 4 bytes from ?, including `lw` at 0x3a604, `lw` at 0x3a640, `lw` at 0x3a698.
  The `lld` at 0x3a650 loads 8 bytes from ?.
  The `scd` at 0x3a65c stores 8 bytes to ?.
  The `lh` at 0x3a684 loads 2 bytes from ?.
  The `jal` at 0x3a5b0 calls r1nkperf_data_register_get with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3a5e0 calls r1nk_perf_stop_counters with a0=[-0x38d0]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x3a600 calls r1nkperf_data_register_set with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0x3a6f8 calls r1nk_perf_intr_action with a0=a0 at entry (arg0), a1=[-0x38d0]:8, a2=one of 0x0, 0x1, a3=?.
  The `jal` at 0x3a704 calls r1nk_perf_start_counters with a0=[-0x38d0]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x3a728 calls assfail with a0=sym(.rodata)+62392, a1=sym(.rodata)+62392, a2=0x65, a3=a3 at entry (arg3).
  The `beq` branch at 0x3a588 targets 0x3a70c, is taken when s1(=[-0x38d0]:8) == 0, and falls through when s1(=[-0x38d0]:8) != 0.
  The `beq` branch at 0x3a598 targets 0x3a720, is taken when a1(=[[-0x38d0]:8+48]:2) >= 0x4 (signed), and falls through when a1(=[[-0x38d0]:8+48]:2) < 0x4 (signed).
  The `blez` branch at 0x3a5a4 targets 0x3a5dc, is taken when a1(=[[-0x38d0]:8+48]:2) <= 0 (signed), and falls through when a1(=[[-0x38d0]:8+48]:2) > 0 (signed).
  The `bne` branch at 0x3a5d4 targets 0x3a5b0, is taken when s0(?) < a0(=[[-0x38d0]:8+48]:2) (signed), and falls through when s0(?) >= a0(=[[-0x38d0]:8+48]:2) (signed).
  The `blez` branch at 0x3a5ec targets 0x3a6f0, is taken when a2(=[[-0x38d0]:8+48]:2) <= 0 (signed), and falls through when a2(=[[-0x38d0]:8+48]:2) > 0 (signed).
  The `bne` branch at 0x3a61c targets 0x3a5f4, is taken when s0(?) < a1(=[[-0x38d0]:8+48]:2) (signed), and falls through when s0(?) >= a1(=[[-0x38d0]:8+48]:2) (signed).
  The `blez` branch at 0x3a624 targets 0x3a6f0, is taken when a1(=[[-0x38d0]:8+48]:2) <= 0 (signed), and falls through when a1(=[[-0x38d0]:8+48]:2) > 0 (signed).
  The `beq` branch at 0x3a634 targets 0x3a67c and is always taken.
  The `beql` branch at 0x3a660 targets 0x3a650, is taken when at(?) == 0, and falls through when at(?) != 0; its branch-likely delay slot `nop` at 0x3a664 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x3a674 targets 0x3a6f8, is taken when s0(?) >= a1(=[[-0x38d0]:8+48]:2) (signed), and falls through when s0(?) < a1(=[[-0x38d0]:8+48]:2) (signed).
  The `beq` branch at 0x3a688 targets 0x3a6d0, is taken when a4(?) == t0(=-0x1), and falls through when a4(?) != t0(=-0x1).
  The `beq` branch at 0x3a6b0 targets 0x3a63c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x3a6bc targets 0x3a63c, is taken when a5(?) < a7(=0xffffffff80000000) (unsigned), and falls through when a5(?) >= a7(=0xffffffff80000000) (unsigned).
  The `beq` branch at 0x3a6c8 targets 0x3a63c and is always taken.
  The `bne` branch at 0x3a6e0 targets 0x3a680, is taken when s0(?) < a1(=[[-0x38d0]:8+48]:2) (signed), and falls through when s0(?) >= a1(=[[-0x38d0]:8+48]:2) (signed).
  The `beq` branch at 0x3a6e8 targets 0x3a6f8 and is always taken.
  The `beq` branch at 0x3a730 targets 0x3a5a0 and is always taken.
  The return at 0x3a718 has v0 = one of ?, ret(r1nk_perf_start_counters).
- `r1nk_perf_intr_action` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3a738 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3a738-0x3a838 (256 bytes).
  It occupies 256 bytes.
  The `lh` at 0x3a738 loads 2 bytes from a1 (arg1 at entry) +0x0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xf8, including `ld` at 0x3a760, `ld` at 0x3a7c4.
  The `ld` at 0x3a764 loads 8 bytes from a0 (arg0 at entry) +0xf0.
  The `ld` at 0x3a768 loads 8 bytes from a0 (arg0 at entry) +0xe0.
  The `ld` at 0x3a770 loads 8 bytes from a0 (arg0 at entry) +0x120.
  The `ld` at 0x3a77c loads 8 bytes from abs 0xffffffffffffc020.
  The `lbu` at 0x3a788 loads 1 byte from [-0x3fe0]:8 +0x70.
  The `lh` at 0x3a7a4 loads 2 bytes from a1 (arg1 at entry) +0xc.
  6 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x3a7b4, `ld` at 0x3a7d8, `ld` at 0x3a7ec.
  2 such `ld` accesses load 8 bytes from [-0x3fe8]:8 +0x3f0, including `ld` at 0x3a7dc, `ld` at 0x3a828.
  2 such `sw` accesses store 4 bytes to [[-0x3fe8]:8+1008]:8 +0x0, including `sw` at 0x3a7e8, `sw` at 0x3a834.
  The `lw` at 0x3a800 loads 4 bytes from [-0x3fe8]:8 +0x340.
  The `sw` at 0x3a80c stores 4 bytes to [-0x3fe8]:8 +0x340.
  The `jal` at 0x3a76c calls prfintr with a0=[a0+288]:8, a1=[a0+224]:8, a2=[a0+240]:8, a3=[a0+248]:8, a5=a0 at entry (arg0), a6=0x3.
  The `jal` at 0x3a7b8 calls sigtouthread with a0=[-0x3fe8]:8, a1=[a1+12]:2, a2=0x0, a3=a3 at entry (arg3), a4=[a1+12]:2, a5=a0 at entry (arg0), a6=0x3.
  The `jal` at 0x3a7f4 calls mutex_bitlock with a0=[-0x3fe8]:8+132, a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[[-0x3fe0]:8+112]:1, a6=0x3.
  The `jal` at 0x3a81c calls mutex_bitunlock with a0=[-0x3fe8]:8+132, a1=0x4, a2=ret(mutex_bitlock), a3=[-0x3fe8]:8, a4=0x400000.
  The `beq` branch at 0x3a750 targets 0x3a79c, is taken when (a4(=[a1]:2) & 0x80) == 0, and falls through when (a4(=[a1]:2) & 0x80) != 0.
  The `beq` branch at 0x3a758 targets 0x3a77c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x3a774 targets 0x3a794 and is always taken.
  The `beq` branch at 0x3a780 targets 0x3a794, is taken when a0(=[-0x3fe0]:8) == 0, and falls through when a0(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0x3a78c targets 0x3a7ec, is taken when a5(=[[-0x3fe0]:8+112]:1) == a6(=0x3), and falls through when a5(=[[-0x3fe0]:8+112]:1) != a6(=0x3).
  The `beq` branch at 0x3a79c targets 0x3a794, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x3a7a8 targets 0x3a790, is taken when a4(=[a1+12]:2) == 0, and falls through when a4(=[a1+12]:2) != 0.
  The `bne` branch at 0x3a7d0 targets 0x3a794, is taken when a7(?) != t0(=0x10), and falls through when a7(?) == t0(=0x10).
  The `beq` branch at 0x3a7e4 targets 0x3a790 and is always taken.
  The `beq` branch at 0x3a830 targets 0x3a790 and is always taken.
  The return at 0x3a794 has v0 = one of ret(prfintr), ?, ret(sigtouthread).
- `l2_sbe_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3af94 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3af94-0x3b208 (628 bytes).
  It occupies 628 bytes.
  6 such `ld` accesses load 8 bytes from ?, including `ld` at 0x3aff8, `ld` at 0x3b058, `ld` at 0x3b148.
  6 such `sd` accesses store 8 bytes to ?, including `sd` at 0x3b008, `sd` at 0x3b034, `sd` at 0x3b09c.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x3b04c, `lw` at 0x3b05c.
  The `jal` at 0x3b030 calls cpu_enabled with a0=?, a1=?, a2=?, a3=[sym(l2_sbe_check)].
  The `jal` at 0x3b110 calls get_cpu_irr with a0=?, a1=?, a2=0xe, a3=0xf, a5=0x9.
  The `jal` at 0x3b18c calls cmn_err with a0=0x5, a1=sym(.rodata)+62392, a2=?, a3=[sym(l2_sbe_check)].
  The `jal` at 0x3b1b8 calls cmn_err with a0=0x5, a1=sym(.rodata)+62392, a2=?, a3=?.
  The `jal` at 0x3b1cc calls cmn_err with a0=0x5, a1=sym(.rodata)+62392, a2=?, a3=?.
  The `jal` at 0x3b1e4 calls cmn_err with a0=0x5, a1=sym(.rodata)+62392, a2=?, a3=?.
  The `jal` at 0x3b1f8 calls cmn_err with a0=0x5, a1=sym(.rodata)+62392, a2=?, a3=?.
  The `beq` branch at 0x3afd0 targets 0x3b0cc, is taken when (a3(=[sym(l2_sbe_check)]) & 0xff) == 0, and falls through when (a3(=[sym(l2_sbe_check)]) & 0xff) != 0.
  The `blez` branch at 0x3afd8 targets 0x3b0fc, is taken when a1(=[sym(maxcpus)]) <= 0 (signed), and falls through when a1(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x3aff0 targets 0x3b020 and is always taken.
  The `beq` branch at 0x3affc targets 0x3b010, is taken when s2(=-0x1) == a1(?), and falls through when s2(=-0x1) != a1(?).
  The `beq` branch at 0x3b018 targets 0x3b0c0, is taken when s0(?) >= v1(=[sym(maxcpus)]) (signed), and falls through when s0(?) < v1(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x3b03c targets 0x3b00c, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `beq` branch at 0x3b050 targets 0x3b00c, is taken when a1(?) == s2(=-0x1), and falls through when a1(?) != s2(=-0x1).
  The `beq` branch at 0x3b068 targets 0x3b0a0, is taken when a5(=0x9) == a1(?), and falls through when a5(=0x9) != a1(?).
  The `beq` branch at 0x3b074 targets 0x3b110, is taken when a2(=0xe) == a1(?), and falls through when a2(=0xe) != a1(?).
  The `bne` branch at 0x3b07c targets 0x3aff8, is taken when a3(=0xf) != a1(?), and falls through when a3(=0xf) == a1(?).
  The `beq` branch at 0x3b08c targets 0x3b14c, is taken when (a4(=[sym(l2_sbe_check)]) & 0x8) == 0, and falls through when (a4(=[sym(l2_sbe_check)]) & 0x8) != 0.
  The `beq` branch at 0x3b098 targets 0x3b0b0 and is always taken.
  The `beq` branch at 0x3b0a0 targets 0x3b144, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x3b0b0 targets 0x3b008, is taken when s2(=-0x1) != a1(?), and falls through when s2(=-0x1) == a1(?).
  The `beq` branch at 0x3b0b8 targets 0x3b010 and is always taken.
  The `bne` branch at 0x3b0c4 targets 0x3b188, is taken when (a3(=[sym(l2_sbe_check)]) & 0x100) != 0, and falls through when (a3(=[sym(l2_sbe_check)]) & 0x100) == 0.
  The `beq` branch at 0x3b108 targets 0x3b0c0 and is always taken.
  The `beq` branch at 0x3b124 targets 0x3b154, is taken when a7(=0xe30) == t0(?), and falls through when a7(=0xe30) != t0(?).
  The `beq` branch at 0x3b130 targets 0x3b178, is taken when (a3(=[sym(l2_sbe_check)]) & 0x2) == 0, and falls through when (a3(=[sym(l2_sbe_check)]) & 0x2) != 0.
  The `beq` branch at 0x3b13c targets 0x3b0b0 and is always taken.
  The `beq` branch at 0x3b144 targets 0x3b0b0 and is always taken.
  The `beq` branch at 0x3b14c targets 0x3b0b0 and is always taken.
  The `beq` branch at 0x3b160 targets 0x3b180, is taken when (a3(=[sym(l2_sbe_check)]) & 0x4) == 0, and falls through when (a3(=[sym(l2_sbe_check)]) & 0x4) != 0.
  The `beq` branch at 0x3b170 targets 0x3b0b0 and is always taken.
  The `beq` branch at 0x3b178 targets 0x3b0b0 and is always taken.
  The `beq` branch at 0x3b180 targets 0x3b0b0 and is always taken.
  The `bne` branch at 0x3b194 targets 0x3b1c8, is taken when s5(?) != 0, and falls through when s5(?) == 0.
  The `bne` branch at 0x3b19c targets 0x3b1dc, is taken when s8(?) != 0, and falls through when s8(?) == 0.
  The `bne` branch at 0x3b1a4 targets 0x3b1f4, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x3b1ac targets 0x3b0cc, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `beq` branch at 0x3b1c0 targets 0x3b0d0 and is always taken.
  The `beq` branch at 0x3b1d4 targets 0x3b19c and is always taken.
  The `beq` branch at 0x3b1ec targets 0x3b1a4 and is always taken.
  The `beq` branch at 0x3b200 targets 0x3b1ac and is always taken.
  The return at 0x3b0f4 has v0 = one of ?, ret(cmn_err).
- `l2_sbe_intr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3b208 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3b208-0x3b398 (400 bytes).
  It occupies 400 bytes.
  3 such `lh` accesses load 2 bytes from abs 0xffffffffffffc428, including `lh` at 0x3b210, `lh` at 0x3b2ec, `lh` at 0x3b350.
  The `lw` at 0x3b224 loads 4 bytes from (([-0x3bd8]:2 << 0x3) + sym(l2_sbe_counter)) +0x4.
  The `sd` at 0x3b320 stores 8 bytes to ?.
  The `jal` at 0x3b234 calls r1nkperf_data_register_get with a0=[(([-0x3bd8]:2 << 0x3) + sym(l2_sbe_counter))+4], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3b250 calls r1nkperf_control_register_set with a0=[(([-0x3bd8]:2 << 0x3) + sym(l2_sbe_counter))+4], a1=0x100, a2=?, a3=?.
  The `jal` at 0x3b25c calls r1nkperf_data_register_set with a0=[(([-0x3bd8]:2 << 0x3) + sym(l2_sbe_counter))+4], a1=0x0, a2=?, a3=?.
  The `jal` at 0x3b264 calls get_cpu_irr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3b27c calls get_cpu_irr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3b294 calls l2_cache_check with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3b2b4 calls scache_data_bit_error with a0=ret(l2_cache_check), a1=?, a2=sym(.rodata)+62392, a3=?.
  The `jal` at 0x3b2d8 calls cmn_err_tag with a0=0x167, a1=0x14, a2=sym(.rodata)+62392, a3=ret(l2_cache_check).
  The `jal` at 0x3b2f0 calls scache_data_bit_location with a0=ret(scache_data_bit_error), a1=[-0x3bd8]:2, a2=sp-96, a3=?.
  The `jal` at 0x3b30c calls cmn_err_tag with a0=0x167, a1=0x14, a2=sym(.rodata)+62392, a3=?, a4=sp-96.
  The `jal` at 0x3b334 calls r1nkperf_control_register_get with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0x3b340 calls scache_data_bit_error with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3b354 calls scache_data_bit_location with a0=ret(scache_data_bit_error), a1=[-0x3bd8]:2, a2=sp-96, a3=?.
  The `jal` at 0x3b370 calls cmn_err_tag with a0=0x167, a1=0x14, a2=sym(.rodata)+62392, a3=ret(scache_data_bit_error), a4=sp-96.
  The `jal` at 0x3b388 calls cmn_err_tag with a0=0x167, a1=0x14, a2=sym(.rodata)+62392, a3=?.
  The `beq` branch at 0x3b22c targets 0x3b324, is taken when s0(=[(([-0x3bd8]:2 << 0x3) + sym(l2_sbe_counter))+4]) == at(=-0x1), and falls through when s0(=[(([-0x3bd8]:2 << 0x3) + sym(l2_sbe_counter))+4]) != at(=-0x1).
  The `beq` branch at 0x3b248 targets 0x3b324, is taken when (v0(=ret(r1nkperf_data_register_get)) & t8(=0x80000000)) == 0, and falls through when (v0(=ret(r1nkperf_data_register_get)) & t8(=0x80000000)) != 0.
  The `beq` branch at 0x3b274 targets 0x3b334, is taken when t9(?) == ra(=0xe30), and falls through when t9(?) != ra(=0xe30).
  The `beq` branch at 0x3b28c targets 0x3b334, is taken when at(?) == v0(=0xf), and falls through when at(?) != v0(=0xf).
  The `beq` branch at 0x3b2a4 targets 0x3b314, is taken when v0(=ret(l2_cache_check)) == v1(=-0x1), and falls through when v0(=ret(l2_cache_check)) != v1(=-0x1).
  The `beq` branch at 0x3b2ac targets 0x3b380, is taken when v0(=ret(l2_cache_check)) == a0(=-0x2), and falls through when v0(=ret(l2_cache_check)) != a0(=-0x2).
  The `bne` branch at 0x3b2c0 targets 0x3b2e8, is taken when v0(=ret(scache_data_bit_error)) != a0(=-0x1), and falls through when v0(=ret(scache_data_bit_error)) == a0(=-0x1).
  The `beq` branch at 0x3b2e0 targets 0x3b318 and is always taken.
  The `beq` branch at 0x3b378 targets 0x3b318 and is always taken.
  The `beq` branch at 0x3b390 targets 0x3b318 and is always taken.
  The return at 0x3b32c has v0 = one of ?, ret(r1nkperf_data_register_get).
- `l2_sbe_sched` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3b398 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3b398-0x3b498 (256 bytes).
  It occupies 256 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x3b40c, `ld` at 0x3b418.
  The `sd` at 0x3b424 stores 8 bytes to ?.
  The `lh` at 0x3b428 loads 2 bytes from abs 0xffffffffffffc428.
  The `jal` at 0x3b434 calls l2_sbe_start_perfcnt with a0=?, a1=?, a2=[-0x3bd8]:2, a3=?, a6=[sym(maxcpus)], a7=[sym(l2_sbe_reset_sec)].
  The `jal` at 0x3b44c calls cpuaction with a0=?, a1=sym(l2_sbe_start_perfcnt), a2=0x1, a3=?, a6=[sym(maxcpus)], a7=[sym(l2_sbe_reset_sec)].
  The `jal` at 0x3b488 calls cmn_err with a0=0x5, a1=sym(.rodata)+62392, a2=[sym(l2_sbe_reset_sec)], a3=?, a4=[sym(l2_sbe_check)].
  The `beq` branch at 0x3b3b8 targets 0x3b3d4, is taken when at(=[sym(.sdata)+428]) == 0, and falls through when at(=[sym(.sdata)+428]) != 0.
  The `bne` branch at 0x3b3c4 targets 0x3b3d4, is taken when a2(=[sym(l2_sbe_reset_sec)]) != a1(=[sym(l2_sbe_ready)]), and falls through when a2(=[sym(l2_sbe_reset_sec)]) == a1(=[sym(l2_sbe_ready)]).
  The `bne` branch at 0x3b3cc targets 0x3b480, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `blez` branch at 0x3b3e0 targets 0x3b468, is taken when a6(=[sym(maxcpus)]) <= 0 (signed), and falls through when a6(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x3b3f0 targets 0x3b408 and is always taken.
  The `beq` branch at 0x3b3fc targets 0x3b468, is taken when a2(?) >= a6(=[sym(maxcpus)]) (signed), and falls through when a2(?) < a6(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x3b410 targets 0x3b3f8, is taken when s1(=-0x1) == a3(?), and falls through when s1(=-0x1) != a3(?).
  The `bne` branch at 0x3b420 targets 0x3b3f8, is taken when a7(=[sym(l2_sbe_reset_sec)]) != a1(?), and falls through when a7(=[sym(l2_sbe_reset_sec)]) == a1(?).
  The `bne` branch at 0x3b42c targets 0x3b444, is taken when a2(=[-0x3bd8]:2) != s0(?), and falls through when a2(=[-0x3bd8]:2) == s0(?).
  The `beq` branch at 0x3b43c targets 0x3b454 and is always taken.
  The `bne` branch at 0x3b460 targets 0x3b3f0, is taken when s0(?) < a6(=[sym(maxcpus)]) (signed), and falls through when s0(?) >= a6(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x3b490 targets 0x3b3d8 and is always taken.
  The return at 0x3b478 has v0 = ?.
- `l2_sbe_start_perfcnt` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3b498 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3b498-0x3b4f8 (96 bytes).
  It occupies 96 bytes.
  The `jal` at 0x3b4b4 calls r1nkperf_control_register_set with a0=a0 at entry (arg0), a1=0x11a, a2=?, a3=?.
  The `jal` at 0x3b4c4 calls r1nkperf_data_register_set with a0=a0 at entry (arg0), a1=0x7fffffff, a2=?, a3=?.
  The `jal` at 0x3b4e8 calls assfail with a0=sym(.rodata)+62392, a1=sym(.rodata)+62392, a2=0x36f, a3=a3 at entry (arg3).
  The `beq` branch at 0x3b4a8 targets 0x3b4dc, is taken when a0 == at(=-0x1), and falls through when a0 != at(=-0x1).
  The `beq` branch at 0x3b4f0 targets 0x3b4b4 and is always taken.
  The return at 0x3b4d4 has v0 = ret(r1nkperf_data_register_set).
- `eccf_recoverable_threshold` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3badc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3badc-0x3bb98 (188 bytes).
  It occupies 188 bytes.
  The `ld` at 0x3bb0c loads 8 bytes from abs 0x9200000001030100.
  3 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x2c0, including `ld` at 0x3bb34, `ld` at 0x3bb84, `ld` at 0x3bb8c.
  The `lhu` at 0x3bb50 loads 2 bytes from (a1 + one of 0x2c8, 0x2ca, 0x2cc, 0x2ce) +0x0.
  2 such `sh` accesses store 2 bytes to (a1 + one of 0x2c8, 0x2ca, 0x2cc, 0x2ce) +0x0, including `sh` at 0x3bb60, `sh` at 0x3bb7c.
  The `sd` at 0x3bb70 stores 8 bytes to a1 (arg1 at entry) +0x2c0.
  The `beq` branch at 0x3bb08 targets 0x3bb88, is taken when (t1(=0xffffffffc0000000) & a2) == 0, and falls through when (t1(=0xffffffffc0000000) & a2) != 0.
  The `beq` branch at 0x3bb14 targets 0x3bb34, is taken when a5(?) == t2(=0x40000000), and falls through when a5(?) != t2(=0x40000000).
  The `beq` branch at 0x3bb1c targets 0x3bb80, is taken when a5(?) == t0(=0xffffffff80000000), and falls through when a5(?) != t0(=0xffffffff80000000).
  The `bne` branch at 0x3bb24 targets 0x3bb68, is taken when t1(=0xffffffffc0000000) != a5(?), and falls through when t1(=0xffffffffc0000000) == a5(?).
  The `beq` branch at 0x3bb2c targets 0x3bb90 and is always taken.
  The `beq` branch at 0x3bb3c targets 0x3bb70, is taken when a3(=[a1+704]:8) == 0, and falls through when a3(=[a1+704]:8) != 0.
  The `beq` branch at 0x3bb48 targets 0x3bb70, is taken when a3(?) >= v0(=0x3938700) (unsigned), and falls through when a3(?) < v0(=0x3938700) (unsigned).
  The `beq` branch at 0x3bb80 targets 0x3bb38 and is always taken.
  The `beq` branch at 0x3bb88 targets 0x3bb38 and is always taken.
  The `beq` branch at 0x3bb90 targets 0x3bb34 and is always taken.
  The return at 0x3bb68 has v0 = one of 0x0, 0x1.
  The return at 0x3bb78 has v0 = 0x1.
- `scache_print_line` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3ca68 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3ca68-0x3cca8 (576 bytes).
  It occupies 576 bytes.
  The `lw` at 0x3ca74 loads 4 bytes from a0 (arg0 at entry) +0x4.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x3cabc, `ld` at 0x3cac8, `ld` at 0x3caf4.
  The `ld` at 0x3cb5c loads 8 bytes from table(sym(.data)+53376) +0x0.
  7 such `ld` accesses load 8 bytes from ?, including `ld` at 0x3cb94, `ld` at 0x3cb98, `ld` at 0x3cbd8.
  2 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x3cc04, `lhu` at 0x3cc28.
  The `jal` at 0x3ca90 calls cache_tag_ecc with a0=[a0+4], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3cac0 calls printf with a0=sym(.rodata)+63024, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0]:8.
  The `jal` at 0x3cae8 calls printf with a0=sym(.rodata)+63024, a1=?, a2=?, a3=sym(.rodata)+63024.
  The `jal` at 0x3cb58 calls printf with a0=sym(.rodata)+63024, a1=?, a2=?, a3=?, a5=entry(sym(.data)+53376), a7=0xa800000000000000.
  The `jal` at 0x3cb64 calls printf with a0=sym(.rodata)+63024, a1=?, a2=?, a3=?.
  The `jal` at 0x3cbb4 calls printf with a0=sym(.rodata)+63024, a1=?, a2=?, a3=?, a6=ret(ecc_scache_bits_in_error).
  The `jal` at 0x3cbdc calls ecc_compute_scdata_ecc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3cbf0 calls ecc_bitcount with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3cc14 calls ecc_scache_bits_in_error with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3cc70 calls printf with a0=sym(.rodata)+63024, a1=?, a2=?, a3=?.
  The `beq` branch at 0x3cad4 targets 0x3cae4, is taken when a2(?) == a1(?), and falls through when a2(?) != a1(?).
  The `beq` branch at 0x3cadc targets 0x3cae8 and is always taken.
  The `beq` branch at 0x3cb80 targets 0x3cbd0 and is always taken.
  The `bne` branch at 0x3cb88 targets 0x3cc5c, is taken when a1(?) != a7(?), and falls through when a1(?) == a7(?).
  The `beq` branch at 0x3cbc8 targets 0x3cc70, is taken when s4(?) >= 0x10 (unsigned), and falls through when s4(?) < 0x10 (unsigned).
  The `bne` branch at 0x3cc3c targets 0x3cc4c, is taken when s1(?) != a4(?), and falls through when s1(?) == a4(?).
  The `beq` branch at 0x3cc44 targets 0x3cc64, is taken when a1(?) == a7(?), and falls through when a1(?) != a7(?).
  The `bne` branch at 0x3cc4c targets 0x3cb88, is taken when s1(?) != a4(?), and falls through when s1(?) == a4(?).
  The `beq` branch at 0x3cc54 targets 0x3cb90, is taken when a1(?) == a7(?), and falls through when a1(?) != a7(?).
  The `beq` branch at 0x3cc5c targets 0x3cb98 and is always taken.
  The `beq` branch at 0x3cc68 targets 0x3cc54 and is always taken.
  The return at 0x3cca0 has v0 = ret(printf).
- `l2_data_sbe` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3cca8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3cca8-0x3cd34 (140 bytes).
  It occupies 140 bytes.
  The `lhu` at 0x3cce0 loads 2 bytes from ?.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x3cce8, `ld` at 0x3ccf0.
  The `jal` at 0x3ccf4 calls ecc_compute_scdata_ecc with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x3ccc8 targets 0x3ccd4 and is always taken.
  The `beq` branch at 0x3ccd0 targets 0x3cd14, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x3cd0c targets 0x3ccd0, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The return at 0x3cd2c has v0 = ?.
- `l2_cache_check` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3cd34 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3cd34-0x3ce0c (216 bytes).
  It occupies 216 bytes.
  The `jal` at 0x3cd4c calls bzero with a0=sp-2000, a1=0x6f4, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3cd54 calls sCacheSize with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3cd9c calls sLine with a0=table(0xa800000000000000), a1=sp-216, a2=?, a3=?.
  The `jal` at 0x3cda4 calls l2_data_sbe with a0=sp-216, a1=?, a2=?, a3=?.
  The `jal` at 0x3cdbc calls sCacheSize with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x3cd74 targets 0x3ce04, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x3cd84 targets 0x3cdd4 and is always taken.
  The `beq` branch at 0x3cd90 targets 0x3cdb8, is taken when s0(?) >= 0x2 (signed), and falls through when s0(?) < 0x2 (signed).
  The `beq` branch at 0x3cdb0 targets 0x3cd8c, is taken when v0(=ret(l2_data_sbe)) == s5(=-0x1), and falls through when v0(=ret(l2_data_sbe)) != s5(=-0x1).
  The `beq` branch at 0x3cdcc targets 0x3cddc, is taken when s2(?) >= a1(?) (unsigned), and falls through when s2(?) < a1(?) (unsigned).
  The `beq` branch at 0x3cdd4 targets 0x3cd94 and is always taken.
  The `beq` branch at 0x3ce04 targets 0x3cde0 and is always taken.
  The return at 0x3cdfc has v0 = one of ret(l2_data_sbe), -0x1.
- `scache_data_bit_location` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3ce0c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3ce0c-0x3d14c (832 bytes).
  It occupies 832 bytes.
  The `ld` at 0x3ce48 loads 8 bytes from (sym(pdaindr) + (a1 << 0x4)) +0x8.
  The `lw` at 0x3ce5c loads 4 bytes from [(sym(pdaindr) + (a1 << 0x4))+8]:8 +0x484.
  3 such `ld` accesses load 8 bytes from abs 0x9000000014000000, including `ld` at 0x3ce88, `ld` at 0x3ce9c, `ld` at 0x3ceb0.
  2 such `ld` accesses load 8 bytes from abs 0x9200000001000020, including `ld` at 0x3cf60, `ld` at 0x3cfc4.
  The `jal` at 0x3ce70 calls sprintf with a0=a2 at entry (arg2), a1=sym(.rodata)+63024, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3cef8 calls get_cpu_slice with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a6=one of 0xf, 0x4000.
  The `jal` at 0x3cf30 calls sprintf with a0=a2 at entry (arg2), a1=sym(.rodata)+63024, a2=?, a3=?.
  The `jal` at 0x3d034 calls get_cpu_slice with a0=a1 at entry (arg1), a1=?, a2=?, a3=0xf, a5=0xe30, a6=0x4000.
  The `beq` branch at 0x3ce94 targets 0x3cf4c, is taken when v1(?) == a0(=0x2000), and falls through when v1(?) != a0(=0x2000).
  The `beq` branch at 0x3cea8 targets 0x3cfb0, is taken when a4(?) == a5(=0x8000), and falls through when a4(?) != a5(=0x8000).
  The `beq` branch at 0x3cebc targets 0x3d014, is taken when a5(?) == a6(=0x4000), and falls through when a5(?) != a6(=0x4000).
  The `beq` branch at 0x3ced4 targets 0x3d030, is taken when a4(?) == a5(=0xe30), and falls through when a4(?) != a5(=0xe30).
  The `bne` branch at 0x3cedc targets 0x3cf38, is taken when a3(=0xf) != a2(?), and falls through when a3(=0xf) == a2(?).
  The `beq` branch at 0x3cf04 targets 0x3cf10, is taken when (v0(=ret(get_cpu_slice)) & 0x1) == 0, and falls through when (v0(=ret(get_cpu_slice)) & 0x1) != 0.
  The `beq` branch at 0x3cf10 targets 0x3cf38, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x3cf70 targets 0x3d078, is taken when (a3(=[0x9200000001000020]:8) & 0x3) == 0, and falls through when (a3(=[0x9200000001000020]:8) & 0x3) != 0.
  The `beq` branch at 0x3cf78 targets 0x3d098, is taken when a3(?) == a4(=0x1), and falls through when a3(?) != a4(=0x1).
  The `beq` branch at 0x3cf80 targets 0x3d0d8, is taken when a3(?) == a5(=0x2), and falls through when a3(?) != a5(=0x2).
  The `bne` branch at 0x3cf88 targets 0x3cf3c, is taken when a3(?) != a6(=0x3), and falls through when a3(?) == a6(=0x3).
  The `beq` branch at 0x3cfa8 targets 0x3cf10 and is always taken.
  The `beq` branch at 0x3cfd4 targets 0x3d0b8, is taken when (a3(=[0x9200000001000020]:8) & 0x3) == 0, and falls through when (a3(=[0x9200000001000020]:8) & 0x3) != 0.
  The `beq` branch at 0x3cfdc targets 0x3d0f4, is taken when a3(?) == a4(=0x1), and falls through when a3(?) != a4(=0x1).
  The `beq` branch at 0x3cfe4 targets 0x3d114, is taken when a3(?) == a5(=0x2), and falls through when a3(?) != a5(=0x2).
  The `bne` branch at 0x3cfec targets 0x3cf3c, is taken when a3(?) != a6(=0x3), and falls through when a3(?) == a6(=0x3).
  The `beq` branch at 0x3d00c targets 0x3cf10 and is always taken.
  The `beq` branch at 0x3d028 targets 0x3cf10 and is always taken.
  The `beq` branch at 0x3d050 targets 0x3d130, is taken when (v0(=ret(get_cpu_slice)) & 0x1) == 0, and falls through when (v0(=ret(get_cpu_slice)) & 0x1) != 0.
  The `bne` branch at 0x3d068 targets 0x3cf10, is taken when a6(=0xf) != a4(?), and falls through when a6(=0xf) == a4(?).
  The `beq` branch at 0x3d070 targets 0x3cef8 and is always taken.
  The `beq` branch at 0x3d090 targets 0x3cf10 and is always taken.
  The `beq` branch at 0x3d0b0 targets 0x3cf10 and is always taken.
  The `beq` branch at 0x3d0d0 targets 0x3cf10 and is always taken.
  The `beq` branch at 0x3d0ec targets 0x3cf10 and is always taken.
  The `beq` branch at 0x3d10c targets 0x3cf10 and is always taken.
  The `beq` branch at 0x3d128 targets 0x3cf10 and is always taken.
  The `beq` branch at 0x3d144 targets 0x3d068 and is always taken.
  The return at 0x3cf44 has v0 = one of ?, ret(sprintf).
- `bte_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3d1d8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3d1d8-0x3d330 (344 bytes).
  It occupies 344 bytes.
  The `sd` at 0x3d228 stores 8 bytes to a0 (arg0 at entry) +0x20.
  The `sd` at 0x3d22c stores 8 bytes to a0 (arg0 at entry) +0x28.
  The `lh` at 0x3d230 loads 2 bytes from abs 0xffffffffffffc42a.
  The `sh` at 0x3d23c stores 2 bytes to a0 (arg0 at entry) +0x38.
  The `sd` at 0x3d24c stores 8 bytes to a0 (arg0 at entry) +0x18.
  The `lh` at 0x3d254 loads 2 bytes from (sym(compact_to_nasid_node) + ([-0x3bd6]:2 + [-0x3bd6]:2)) +0x0.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x0, including `sd` at 0x3d278, `sd` at 0x3d280.
  2 such `sd` accesses store 8 bytes to abs 0x92000000014001f8, including `sd` at 0x3d284, `sd` at 0x3d324.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x4c, including `sw` at 0x3d288, `sw` at 0x3d32c.
  2 such `ld` accesses load 8 bytes from abs 0x9200000001604200, including `ld` at 0x3d28c, `ld` at 0x3d2e0.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x68, including `sw` at 0x3d2c8, `sw` at 0x3d30c.
  The `jal` at 0x3d214 calls spinlock_init with a0=a0+60, a1=sym(.rodata)+64800, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[sym(scache_linemask)].
  The `beq` branch at 0x3d200 targets 0x3d210, is taken when (a5(=[sym(scache_linemask)]) & a1) == 0, and falls through when (a5(=[sym(scache_linemask)]) & a1) != 0.
  The `beq` branch at 0x3d274 targets 0x3d320, is taken when s8(=a2) == 0, and falls through when s8(=a2) != 0.
  The `beq` branch at 0x3d2d8 targets 0x3d310, is taken when t2(=[sym(maxcpus)]) >= 0x21 (signed), and falls through when t2(=[sym(maxcpus)]) < 0x21 (signed).
  The `beq` branch at 0x3d328 targets 0x3d28c and is always taken.
  The return at 0x3d318 has v0 = a0.
- `bte_init_buffers` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3d330 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3d330-0x3d408 (216 bytes).
  It occupies 216 bytes.
  The `sd` at 0x3d37c stores 8 bytes to ?.
  The `sb` at 0x3d394 stores 1 byte to ?.
  The `jal` at 0x3d368 calls kmem_zalloc_node with a0=0x4000, a1=0x901, a2=?, a3=?.
  The `jal` at 0x3d3a4 calls spinlock_init with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x3d3f8 calls cmn_err with a0=0x4, a1=sym(.rodata)+64800, a2=?, a3=?.
  The `blez` branch at 0x3d34c targets 0x3d3c8, is taken when at(=[sym(maxnodes)]) <= 0 (signed), and falls through when at(=[sym(maxnodes)]) > 0 (signed).
  The `beq` branch at 0x3d378 targets 0x3d3e8, is taken when v0(=ret(kmem_zalloc_node)) == 0, and falls through when v0(=ret(kmem_zalloc_node)) != 0.
  The `bne` branch at 0x3d390 targets 0x3d360, is taken when s1(?) < 0x4 (signed), and falls through when s1(?) >= 0x4 (signed).
  The `bne` branch at 0x3d3c0 targets 0x3d35c, is taken when s3(?) < a1(=[sym(maxnodes)]) (signed), and falls through when s3(?) >= a1(=[sym(maxnodes)]) (signed).
  The `beq` branch at 0x3d400 targets 0x3d384 and is always taken.
  The return at 0x3d3e0 has v0 = one of ?, ret(spinlock_init).
- `bte_avail` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3d408 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3d408-0x3d414 (12 bytes).
  It occupies 12 bytes.
  The return at 0x3d40c has v0 = ?.
- `bte_lateinit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3d414 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3d414-0x3d6fc (744 bytes).
  It occupies 744 bytes.
  5 such `ld` accesses load 8 bytes from abs 0xffffffffffffc400, including `ld` at 0x3d434, `ld` at 0x3d474, `ld` at 0x3d558.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x3d440, `ld` at 0x3d484.
  The `ld` at 0x3d44c loads 8 bytes from abs 0xffffffffffffc720.
  The `lbu` at 0x3d494 loads 1 byte from ?.
  The `sb` at 0x3d4b0 stores 1 byte to ?.
  3 such `lh` accesses load 2 bytes from abs 0xffffffffffffc428, including `lh` at 0x3d4c8, `lh` at 0x3d508, `lh` at 0x3d6ac.
  2 such `sd` accesses store 8 bytes to abs 0xffffffffffffc720, including `sd` at 0x3d4f0, `sd` at 0x3d52c.
  5 such `lh` accesses load 2 bytes from abs 0xffffffffffffc42a, including `lh` at 0x3d4f4, `lh` at 0x3d534, `lh` at 0x3d594.
  The `sd` at 0x3d568 stores 8 bytes to table(0x8ef8) +0x0.
  The `sd` at 0x3d574 stores 8 bytes to ret(bte_init) +0x60.
  The `ld` at 0x3d580 loads 8 bytes from [-0x3c00]:8 +0x8ef8.
  The `ld` at 0x3d588 loads 8 bytes from [[-0x3c00]:8+36600]:8 +0x58.
  The `sd` at 0x3d58c stores 8 bytes to ret(bte_init) +0x58.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x3d5d8, `sd` at 0x3d628, `sd` at 0x3d650.
  The `jal` at 0x3d4f8 calls kmem_zalloc_node with a0=0x70, a1=0x1, a2=[-0x3bd6]:2, a3=?.
  The `jal` at 0x3d538 calls kmem_zalloc_node with a0=0x300, a1=0x901, a2=[-0x3bd6]:2, a3=?.
  The `jal` at 0x3d550 calls bte_init [0x3d1d8] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3d598 calls kmem_zalloc_node with a0=0x4000, a1=0x901, a2=[-0x3bd6]:2, a3=?.
  The `jal` at 0x3d5e4 calls kmem_alloc_node with a0=0x4000, a1=0x901, a2=[-0x3bd6]:2, a3=?.
  The `jal` at 0x3d634 calls kmem_zalloc_node with a0=0x4, a1=0x1, a2=[-0x3bd6]:2, a3=?.
  The `jal` at 0x3d64c calls spinlock_init with a0=ret(kmem_zalloc_node), a1=sym(.rodata)+64800, a2=?, a3=?.
  The `jal` at 0x3d668 calls assfail with a0=sym(.rodata)+64800, a1=sym(.rodata)+64800, a2=0x14c, a3=?.
  The `jal` at 0x3d684 calls assfail with a0=sym(.rodata)+64800, a1=sym(.rodata)+64800, a2=0x156, a3=?.
  The `jal` at 0x3d6a0 calls assfail with a0=sym(.rodata)+64800, a1=sym(.rodata)+64800, a2=0x12d, a3=?.
  The `jal` at 0x3d6bc calls assfail with a0=sym(.rodata)+64800, a1=sym(.rodata)+64800, a2=0x134, a3=?.
  The `jal` at 0x3d6d4 calls cmn_err with a0=0x8, a1=sym(.rodata)+64800, a2=?, a3=?.
  The `jal` at 0x3d6ec calls cmn_err with a0=0x8, a1=sym(.rodata)+64800, a2=?, a3=?, a4=0xa800010000000000.
  The `beq` branch at 0x3d444 targets 0x3d4f4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x3d450 targets 0x3d4c8, is taken when v1(=[-0x38e0]:8) == 0, and falls through when v1(=[-0x38e0]:8) != 0.
  The `bne` branch at 0x3d460 targets 0x3d434, is taken when s1(?) < 0x2 (signed), and falls through when s1(?) >= 0x2 (signed).
  The `bne` branch at 0x3d4a4 targets 0x3d498, is taken when a0(?) < 0x2 (signed), and falls through when a0(?) >= 0x2 (signed).
  The `bne` branch at 0x3d4ac targets 0x3d474, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x3d4e4 targets 0x3d458, is taken when s1(?) != t2(?), and falls through when s1(?) == t2(?).
  The `beq` branch at 0x3d4ec targets 0x3d458 and is always taken.
  The `beq` branch at 0x3d500 targets 0x3d694, is taken when v0(=ret(kmem_zalloc_node)) == 0, and falls through when v0(=ret(kmem_zalloc_node)) != 0.
  The `bne` branch at 0x3d524 targets 0x3d530, is taken when s1(?) != t8(?), and falls through when s1(?) == t8(?).
  The `beq` branch at 0x3d544 targets 0x3d6b0, is taken when v0(=ret(kmem_zalloc_node)) == 0, and falls through when v0(=ret(kmem_zalloc_node)) != 0.
  The `beq` branch at 0x3d570 targets 0x3d62c, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x3d5a4 targets 0x3d6cc, is taken when v0(=ret(kmem_zalloc_node)) == 0, and falls through when v0(=ret(kmem_zalloc_node)) != 0.
  The `bne` branch at 0x3d5bc targets 0x3d65c, is taken when v0(=ret(kmem_zalloc_node)) < a1(=0xa800000000000000) (unsigned), and falls through when v0(=ret(kmem_zalloc_node)) >= a1(=0xa800000000000000) (unsigned).
  The `beq` branch at 0x3d5c4 targets 0x3d65c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x3d5f0 targets 0x3d6e4, is taken when v0(=ret(kmem_alloc_node)) == 0, and falls through when v0(=ret(kmem_alloc_node)) != 0.
  The `bne` branch at 0x3d604 targets 0x3d67c, is taken when v0(=ret(kmem_alloc_node)) < a3(=0xa800000000000000) (unsigned), and falls through when v0(=ret(kmem_alloc_node)) >= a3(=0xa800000000000000) (unsigned).
  The `beq` branch at 0x3d610 targets 0x3d678, is taken when v0(=ret(kmem_alloc_node)) >= a4(=0xa800010000000000) (unsigned), and falls through when v0(=ret(kmem_alloc_node)) < a4(=0xa800010000000000) (unsigned).
  The `beq` branch at 0x3d624 targets 0x3d458 and is always taken.
  The `beq` branch at 0x3d654 targets 0x3d594 and is always taken.
  The `beq` branch at 0x3d670 targets 0x3d5cc and is always taken.
  The `beq` branch at 0x3d68c targets 0x3d618 and is always taken.
  The `beq` branch at 0x3d6a8 targets 0x3d50c and is always taken.
  The `beq` branch at 0x3d6c4 targets 0x3d54c and is always taken.
  The `beq` branch at 0x3d6dc targets 0x3d5e0 and is always taken.
  The `beq` branch at 0x3d6f4 targets 0x3d45c and is always taken.
  The return at 0x3d4c0 has v0 = ?.
- `bte_pbcopy` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3d6fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3d6fc-0x3d7bc (192 bytes).
  It occupies 192 bytes.
  The `jal` at 0x3d754 calls bte_copy with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x10, a5=[sym(maxcpus)], a6=[sym(disable_bte_pbcopy)].
  The `jal` at 0x3d774 calls bcopy with a0=(0xa800000000000000 | a0), a1=(0xa800000000000000 | a1), a2=?, a3=?.
  The `jal` at 0x3d7ac calls bcopy with a0=(0xa800000000000000 | a0), a1=(0xa800000000000000 | a1), a2=?, a3=a3 at entry (arg3), a5=[sym(maxcpus)], a6=[sym(disable_bte_pbcopy)].
  The `beq` branch at 0x3d724 targets 0x3d734, is taken when a6(=[sym(disable_bte_pbcopy)]) == 0, and falls through when a6(=[sym(disable_bte_pbcopy)]) != 0.
  The `beq` branch at 0x3d730 targets 0x3d798, is taken when a5(=[sym(maxcpus)]) >= a6(=[sym(disable_bte_pbcopy)]) (signed), and falls through when a5(=[sym(maxcpus)]) < a6(=[sym(disable_bte_pbcopy)]) (signed).
  The `beq` branch at 0x3d738 targets 0x3d748, is taken when a0(=[sym(disable_bte)]) == 0, and falls through when a0(=[sym(disable_bte)]) != 0.
  The `beq` branch at 0x3d740 targets 0x3d79c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x3d75c targets 0x3d77c, is taken when v0(=ret(bte_copy)) == 0, and falls through when v0(=ret(bte_copy)) != 0.
  The `beq` branch at 0x3d7b4 targets 0x3d780 and is always taken.
  The return at 0x3d790 has v0 = 0x0.
- `bte_pbzero` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3d7bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3d7bc-0x3d95c (416 bytes).
  It occupies 416 bytes.
  4 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0x3d82c, `ld` at 0x3d864, `ld` at 0x3d8f4.
  2 such `lh` accesses load 2 bytes from [-0x3fe0]:8 +0xf6, including `lh` at 0x3d838, `lh` at 0x3d900.
  4 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x3d83c, `sh` at 0x3d870, `sh` at 0x3d904.
  The `jal` at 0x3d854 calls bzero with a0=(a0 | 0xa800000000000000), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3d8a8 calls bte_copy with a0=0x0, a1=?, a2=?, a3=0x11.
  The `jal` at 0x3d91c calls bzero with a0=(a0 | 0xa800000000000000), a1=?, a2=?, a3=?, a4=0x1, a6=0x5.
  The `beq` branch at 0x3d7e8 targets 0x3d94c, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x3d7fc targets 0x3d808, is taken when a1(=[sym(disable_bte_pbzero)]) == 0, and falls through when a1(=[sym(disable_bte_pbzero)]) != 0.
  The `beq` branch at 0x3d804 targets 0x3d824, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x3d80c targets 0x3d81c, is taken when v0(=[sym(disable_bte)]) == 0, and falls through when v0(=[sym(disable_bte)]) != 0.
  The `beq` branch at 0x3d814 targets 0x3d824, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x3d81c targets 0x3d8bc and is always taken.
  The `beq` branch at 0x3d824 targets 0x3d848, is taken when s3(=a2) == 0, and falls through when s3(=a2) != 0.
  The `beq` branch at 0x3d830 targets 0x3d844, is taken when v0(=[-0x3fe0]:8) == 0, and falls through when v0(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0x3d85c targets 0x3d878, is taken when s3(=a2) == 0, and falls through when s3(=a2) != 0.
  The `beq` branch at 0x3d868 targets 0x3d874, is taken when v0(=[-0x3fe0]:8) == 0, and falls through when v0(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0x3d8b0 targets 0x3d8d4, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x3d8b8 targets 0x3d8dc, is taken when v0(=ret(bte_copy)) != 0, and falls through when v0(=ret(bte_copy)) == 0.
  The `bne` branch at 0x3d8c0 targets 0x3d898, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x3d8cc targets 0x3d89c and is always taken.
  The `beq` branch at 0x3d8d4 targets 0x3d954, is taken when v0(=ret(bte_copy)) == 0, and falls through when v0(=ret(bte_copy)) != 0.
  The `bne` branch at 0x3d8e4 targets 0x3d944, is taken when v0(=ret(bte_copy)) != a4(=0x1), and falls through when v0(=ret(bte_copy)) == a4(=0x1).
  The `beq` branch at 0x3d8ec targets 0x3d910, is taken when s3(=a2) == 0, and falls through when s3(=a2) != 0.
  The `beq` branch at 0x3d8f8 targets 0x3d910, is taken when v0(=[-0x3fe0]:8) == 0, and falls through when v0(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0x3d924 targets 0x3d93c, is taken when s3(=a2) == 0, and falls through when s3(=a2) != 0.
  The `beq` branch at 0x3d930 targets 0x3d93c, is taken when v0(=[-0x3fe0]:8) == 0, and falls through when v0(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0x3d93c targets 0x3d878 and is always taken.
  The `beq` branch at 0x3d944 targets 0x3d878 and is always taken.
  The `beq` branch at 0x3d94c targets 0x3d878 and is always taken.
  The `beq` branch at 0x3d954 targets 0x3d878 and is always taken.
  The return at 0x3d890 has v0 = one of 0x0, ret(bte_copy).
- `bte_free_interfaces` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3d95c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3d95c-0x3d9e8 (140 bytes).
  It occupies 140 bytes.
  The `ld` at 0x3d9a0 loads 8 bytes from a0 (arg0 at entry) +0x60.
  The `ld` at 0x3d9b0 loads 8 bytes from ?.
  The `jal` at 0x3d9b4 calls nested_spinunlock with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x3d980 targets 0x3d998 and is always taken.
  The `beq` branch at 0x3d990 targets 0x3d9cc, is taken when s0(?) >= 0x2 (signed), and falls through when s0(?) < 0x2 (signed).
  The `beq` branch at 0x3d998 targets 0x3d988, is taken when s1(=a1) == s0(?), and falls through when s1(=a1) != s0(?).
  The `bne` branch at 0x3d9c4 targets 0x3d998, is taken when s0(?) < 0x2 (signed), and falls through when s0(?) >= 0x2 (signed).
  The return at 0x3d9e0 has v0 = one of ?, ret(nested_spinunlock).
- `bte_get_all_interfaces` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3d9e8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3d9e8-0x3dbbc (468 bytes).
  It occupies 468 bytes.
  The `ld` at 0x3da24 loads 8 bytes from a0 (arg0 at entry) +0x60.
  8 such `ld` accesses load 8 bytes from ?, including `ld` at 0x3da34, `ld` at 0x3da94, `ld` at 0x3dabc.
  The `sd` at 0x3da3c stores 8 bytes to ?.
  The `lw` at 0x3daa0 loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `lbu` at 0x3daac loads 1 byte from a0 (arg0 at entry) +0x3a.
  The `lw` at 0x3dac4 loads 4 bytes from ?.
  2 such `ld` accesses load 8 bytes from abs 0x9200000001030100, including `ld` at 0x3dac8, `ld` at 0x3daf4.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x3db08, `lw` at 0x3db78.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x3db1c, `sw` at 0x3db8c.
  The `jal` at 0x3da44 calls nested_spintrylock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3db04 calls splx with a0=[a1], a1=0x1, a2=?, a3=?.
  The `jal` at 0x3db0c calls us_delay with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x3db14 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3db74 calls splx with a0=[a1], a1=?, a2=?, a3=?.
  The `jal` at 0x3db7c calls us_delay with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x3db84 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3db90 calls nested_spintrylock with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x3da4c targets 0x3db74, is taken when v0(=ret(nested_spintrylock)) == 0, and falls through when v0(=ret(nested_spintrylock)) != 0.
  The `bne` branch at 0x3da5c targets 0x3da24, is taken when s0(?) < 0x2 (signed), and falls through when s0(?) >= 0x2 (signed).
  The `beq` branch at 0x3da74 targets 0x3dba8 and is always taken.
  The `beq` branch at 0x3da8c targets 0x3db40, is taken when s0(?) >= 0x2 (signed), and falls through when s0(?) < 0x2 (signed).
  The `beq` branch at 0x3da98 targets 0x3da7c, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x3daa4 targets 0x3da7c, is taken when t8(=[a0+76]) == s0(?), and falls through when t8(=[a0+76]) != s0(?).
  The `beq` branch at 0x3dab4 targets 0x3da7c, is taken when (t9(=[a0+58]:1) & ra(?)) == 0, and falls through when (t9(=[a0+58]:1) & ra(?)) != 0.
  The `beq` branch at 0x3dad4 targets 0x3da7c, is taken when (s7(=0x100000) & a0(?)) == 0, and falls through when (s7(=0x100000) & a0(?)) != 0.
  The `bne` branch at 0x3dadc targets 0x3da7c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x3daec targets 0x3da7c, is taken when s3(=0x10000) == a3(?), and falls through when s3(=0x10000) != a3(?).
  The `bne` branch at 0x3dafc targets 0x3da7c, is taken when s8(?) < a4(=[0x9200000001030100]:8) (unsigned), and falls through when s8(?) >= a4(=[0x9200000001030100]:8) (unsigned).
  The `bne` branch at 0x3db30 targets 0x3dadc, is taken when (s7(=0x100000) & a0(?)) != 0, and falls through when (s7(=0x100000) & a0(?)) == 0.
  The `beq` branch at 0x3db38 targets 0x3da7c and is always taken.
  The `beq` branch at 0x3db98 targets 0x3db74, is taken when v0(=ret(nested_spintrylock)) == 0, and falls through when v0(=ret(nested_spintrylock)) != 0.
  The `beq` branch at 0x3dba0 targets 0x3da58 and is always taken.
  The `beq` branch at 0x3dbb4 targets 0x3da98 and is always taken.
  The return at 0x3db6c has v0 = 0x0.
- `bte_notification_war` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3dbbc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3dbbc-0x3dd14 (344 bytes).
  It occupies 344 bytes.
  5 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x58, including `ld` at 0x3dbd8, `ld` at 0x3dc44, `ld` at 0x3dc6c.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x38, including `lh` at 0x3dbf4, `lh` at 0x3dd10.
  The `ld` at 0x3dc04 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lh` at 0x3dc08 loads 2 bytes from (sym(compact_to_nasid_node) + ([a0+56]:2 + [a0+56]:2)) +0x0.
  The `ld` at 0x3dc10 loads 8 bytes from [a0]:8 +0x18.
  The `ld` at 0x3dc20 loads 8 bytes from ([(sym(compact_to_nasid_node) + ([a0+56]:2 + [a0+56]:2))]:2 << 0x21) -0x6dfffffffe3ffe00.
  The `sd` at 0x3dc30 stores 8 bytes to ([(sym(compact_to_nasid_node) + ([a0+56]:2 + [a0+56]:2))]:2 << 0x21) -0x6dfffffffe3ffe00.
  The `lw` at 0x3dc3c loads 4 bytes from a0 (arg0 at entry) +0x4c.
  The `lw` at 0x3dc48 loads 4 bytes from a0 (arg0 at entry) +0x48.
  The `sw` at 0x3dc50 stores 4 bytes to a0 (arg0 at entry) +0x48.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x0, including `lw` at 0x3dc9c, `lw` at 0x3dcd0.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x3dcb0, `sw` at 0x3dce4.
  The `jal` at 0x3dbd4 calls nested_spintrylock with a0=[a0+88]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3dbe4 calls bte_get_all_interfaces with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x3dc2c calls us_delay with a0=0x190, a1=?, a2=?, a3=?.
  The `jal` at 0x3dc38 calls bte_free_interfaces with a0=a0 at entry (arg0), a1=[a0+76], a2=?, a3=?.
  The `jal` at 0x3dc40 calls nested_spinunlock with a0=[a0+88]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x3dc68 calls nested_spintrylock with a0=[a0+88]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x3dc78 calls nested_spintrylock with a0=a0+60, a1=?, a2=?, a3=?.
  The `jal` at 0x3dc88 calls nested_spinunlock with a0=[a0+88]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x3dc98 calls splx with a0=[a1], a1=?, a2=?, a3=?.
  The `jal` at 0x3dca0 calls us_delay with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x3dca8 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3dcb4 calls nested_spintrylock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3dccc calls splx with a0=[a1], a1=?, a2=?, a3=?.
  The `jal` at 0x3dcd4 calls us_delay with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x3dcdc calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3dce8 calls nested_spintrylock with a0=[a0+88]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x3dd04 calls cmn_err with a0=0xc, a1=sym(.rodata)+64800, a2=?, a3=?.
  The `beq` branch at 0x3dbdc targets 0x3dc68, is taken when v0(=ret(nested_spintrylock)) == 0, and falls through when v0(=ret(nested_spintrylock)) != 0.
  The `bne` branch at 0x3dbec targets 0x3dd00, is taken when v0(=ret(bte_get_all_interfaces)) != 0, and falls through when v0(=ret(bte_get_all_interfaces)) == 0.
  The `beq` branch at 0x3dc70 targets 0x3dccc, is taken when v0(=ret(nested_spintrylock)) == 0, and falls through when v0(=ret(nested_spintrylock)) != 0.
  The `beq` branch at 0x3dc80 targets 0x3dc98, is taken when v0(=ret(nested_spintrylock)) == 0, and falls through when v0(=ret(nested_spintrylock)) != 0.
  The `beq` branch at 0x3dc90 targets 0x3dc58 and is always taken.
  The `beq` branch at 0x3dcbc targets 0x3dc98, is taken when v0(=ret(nested_spintrylock)) == 0, and falls through when v0(=ret(nested_spintrylock)) != 0.
  The `beq` branch at 0x3dcc4 targets 0x3dc88 and is always taken.
  The `beq` branch at 0x3dcf0 targets 0x3dccc, is taken when v0(=ret(nested_spintrylock)) == 0, and falls through when v0(=ret(nested_spintrylock)) != 0.
  The `beq` branch at 0x3dcf8 targets 0x3dc78 and is always taken.
  The `beq` branch at 0x3dd0c targets 0x3dbf8 and is always taken.
  The return at 0x3dc60 has v0 = ret(nested_spinunlock).
- `bte_copy` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3dd14 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3dd14-0x3e300 (1516 bytes).
  It occupies 1516 bytes.
  2 such `lh` accesses load 2 bytes from abs 0xffffffffffffc428, including `lh` at 0x3ddcc, `lh` at 0x3de3c.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc400, including `ld` at 0x3dde4, `ld` at 0x3de4c.
  2 such `ld` accesses load 8 bytes from table(0x8ef8) +0x0, including `ld` at 0x3ddfc, `ld` at 0x3de60.
  2 such `lbu` accesses load 1 byte from entry(0x8ef8) +0x3a, including `lbu` at 0x3de00, `lbu` at 0x3de74.
  The `ld` at 0x3de6c loads 8 bytes from entry(0x8ef8) +0x58.
  4 such `lw` accesses load 4 bytes from entry(0x8ef8) +0x4c, including `lw` at 0x3de78, `lw` at 0x3e27c, `lw` at 0x3e298.
  The `ld` at 0x3de9c loads 8 bytes from entry(0x8ef8) +0x0.
  2 such `ld` accesses load 8 bytes from [entry(0x8ef8)]:8 +0x0, including `ld` at 0x3dea0, `ld` at 0x3e130.
  2 such `sw` accesses store 4 bytes to entry(0x8ef8) +0x50, including `sw` at 0x3df04, `sw` at 0x3e15c.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x3dfb0, `ld` at 0x3e0cc.
  2 such `ld` accesses load 8 bytes from [-0x3fe8]:8 +0x3f8, including `ld` at 0x3dfb4, `ld` at 0x3e0d0.
  The `sd` at 0x3dfcc stores 8 bytes to [entry(0x8ef8)]:8 +0x20.
  The `sd` at 0x3dfdc stores 8 bytes to [entry(0x8ef8)]:8 +0x18.
  4 such `ld` accesses load 8 bytes from abs 0x9200000001030100, including `ld` at 0x3dfe8, `ld` at 0x3e194, `ld` at 0x3e1b0.
  5 such `ld` accesses load 8 bytes from ?, including `ld` at 0x3dfec, `ld` at 0x3e004, `ld` at 0x3e1a4.
  The `lw` at 0x3dff0 loads 4 bytes from entry(0x8ef8) +0x68.
  The `lw` at 0x3e010 loads 4 bytes from entry(0x8ef8) +0x40.
  The `sw` at 0x3e01c stores 4 bytes to entry(0x8ef8) +0x40.
  2 such `lw` accesses load 4 bytes from entry(0x8ef8) +0x50, including `lw` at 0x3e05c, `lw` at 0x3e140.
  The `sd` at 0x3e0ec stores 8 bytes to entry(0x8ef8) +0x20.
  The `sd` at 0x3e0f0 stores 8 bytes to ?.
  The `sd` at 0x3e0f4 stores 8 bytes to [entry(0x8ef8)]:8 +0x8.
  The `sd` at 0x3e0f8 stores 8 bytes to [entry(0x8ef8)]:8 +0x10.
  The `sd` at 0x3e100 stores 8 bytes to [entry(0x8ef8)]:8 +0x0.
  The `ld` at 0x3e210 loads 8 bytes from entry(0x8ef8) +0x10.
  The `ld` at 0x3e218 loads 8 bytes from entry(0x8ef8) +0x8.
  The `sw` at 0x3e220 stores 4 bytes to entry(0x8ef8) +0x54.
  The `lh` at 0x3e270 loads 2 bytes from entry(0x8ef8) +0x38.
  The `ld` at 0x3e288 loads 8 bytes from entry(0x8ef8) +0x60.
  The `lbu` at 0x3e2b4 loads 1 byte from ?.
  The `sb` at 0x3e2c4 stores 1 byte to ?.
  The `jal` at 0x3ddc0 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[sym(disable_bte)], a7=0x1.
  The `jal` at 0x3de20 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3de30 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3de68 calls bitlock_islocked with a0=[entry(0x8ef8)+88]:8, a1=0x1, a2=?, a3=?.
  The `jal` at 0x3de8c calls nested_spintrylock with a0=entry(0x8ef8)+60, a1=?, a2=?, a3=?.
  The `jal` at 0x3deb0 calls nested_spinunlock with a0=entry(0x8ef8)+60, a1=?, a2=?, a3=?.
  The `jal` at 0x3ded8 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3dfd8 calls nested_spinunlock with a0=entry(0x8ef8)+60, a1=?, a2=?, a3=?.
  The `jal` at 0x3dfe0 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3e028 calls splhi with a0=-0x1, a1=?, a2=?, a3=[0x9200000001030100]:8, a4=[entry(0x8ef8)+64]+1.
  The `jal` at 0x3e038 calls bte_error_handler with a0=?, a1=sp-464, a2=?, a3=?.
  The `jal` at 0x3e050 calls poison_state_clear with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3e158 calls splhi with a0=-0x1, a1=?, a2=[entry(0x8ef8)+80], a3=?, a4=[entry(0x8ef8)+80]+1.
  The `jal` at 0x3e168 calls bte_notification_war [0x3dbbc] with a0=entry(0x8ef8), a1=sp-464, a2=?, a3=?.
  The `jal` at 0x3e17c calls poison_state_clear with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3e1f4 calls nested_spinunlock with a0=entry(0x8ef8)+60, a1=?, a2=?, a3=?, a6=[entry(0x8ef8)+80], a7=0x1.
  The `jal` at 0x3e1fc calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3e224 calls splhi with a0=-0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x3e234 calls bte_error_handler with a0=?, a1=sp-464, a2=?, a3=?.
  The `jal` at 0x3e240 calls nested_spinunlock with a0=entry(0x8ef8)+60, a1=?, a2=?, a3=?.
  The `jal` at 0x3e248 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3e260 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x3e280 calls cmn_err with a0=0x214, a1=sym(.rodata)+64800, a2=[entry(0x8ef8)+76], a3=[entry(0x8ef8)+56]:2, a4=[[entry(0x8ef8)]:8]:8.
  The `jal` at 0x3e2d4 calls poison_state_clear with a0=?, a1=?, a2=?, a3=[entry(0x8ef8)+96]:8.
  The `jal` at 0x3e2f0 calls cmn_err with a0=0xc, a1=sym(.rodata)+64800, a2=[entry(0x8ef8)+76], a3=?.
  The `beq` branch at 0x3dd5c targets 0x3dd74, is taken when a4(=[sym(disable_bte)]) == 0, and falls through when a4(=[sym(disable_bte)]) != 0.
  The `beq` branch at 0x3dd6c targets 0x3dec0, is taken when t8(=[sym(maxcpus)]) >= a4(=[sym(disable_bte)]) (signed), and falls through when t8(=[sym(maxcpus)]) < a4(=[sym(disable_bte)]) (signed).
  The `beq` branch at 0x3dd74 targets 0x3ded0, is taken when s3(=a2) == 0, and falls through when s3(=a2) != 0.
  The `beq` branch at 0x3dd84 targets 0x3ddc0, is taken when t9(=0x7fff80) >= s3(=a2) (unsigned), and falls through when t9(=0x7fff80) < s3(=a2) (unsigned).
  The `beq` branch at 0x3de04 targets 0x3e260, is taken when ra(=[entry(0x8ef8)+58]:1) == 0, and falls through when ra(=[entry(0x8ef8)+58]:1) != 0.
  The `beq` branch at 0x3de10 targets 0x3de64 and is always taken.
  The `beq` branch at 0x3de18 targets 0x3ded8, is taken when a0(=[entry(0x8ef8)+58]:1) == 0, and falls through when a0(=[entry(0x8ef8)+58]:1) != 0.
  The `beq` branch at 0x3de28 targets 0x3dec8, is taken when s5(?) == 0, and falls through when s5(?) != 0.
  The `bne` branch at 0x3de70 targets 0x3de18, is taken when v0(=ret(bitlock_islocked)) != 0, and falls through when v0(=ret(bitlock_islocked)) == 0.
  The `beq` branch at 0x3de84 targets 0x3de18, is taken when (t9(?) & 0x1) == 0, and falls through when (t9(?) & 0x1) != 0.
  The `beq` branch at 0x3de94 targets 0x3de20, is taken when v0(=ret(nested_spintrylock)) == 0, and falls through when v0(=ret(nested_spintrylock)) != 0.
  The `beq` branch at 0x3dea8 targets 0x3dee8, is taken when (ra(=0x110000) & at(=[[entry(0x8ef8)]:8]:8)) == 0, and falls through when (ra(=0x110000) & at(=[[entry(0x8ef8)]:8]:8)) != 0.
  The `beq` branch at 0x3deb8 targets 0x3de20 and is always taken.
  The `beq` branch at 0x3dec0 targets 0x3dd90 and is always taken.
  The `beq` branch at 0x3dec8 targets 0x3dd90 and is always taken.
  The `beq` branch at 0x3ded0 targets 0x3dd90 and is always taken.
  The `beq` branch at 0x3dee0 targets 0x3dd90 and is always taken.
  The `beq` branch at 0x3def4 targets 0x3e20c, is taken when s6(?) == 0, and falls through when s6(?) != 0.
  The `beq` branch at 0x3defc targets 0x3e214, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x3dfa8 targets 0x3e078 and is always taken.
  The `beq` branch at 0x3dffc targets 0x3e194, is taken when a0(=-0x1) == a6(?), and falls through when a0(=-0x1) != a6(?).
  The `beq` branch at 0x3e008 targets 0x3e130, is taken when a0(=-0x1) == s3(?), and falls through when a0(=-0x1) != s3(?).
  The `beq` branch at 0x3e018 targets 0x3e258, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0x3e020 targets 0x3e070, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x3e048 targets 0x3e05c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x3e064 targets 0x3e1f4, is taken when a6(=[entry(0x8ef8)+80]) != 0, and falls through when a6(=[entry(0x8ef8)+80]) == 0.
  The `beq` branch at 0x3e070 targets 0x3e1e4, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x3e0a0 targets 0x3e0b4, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x3e0ac targets 0x3e0c4, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x3e0b4 targets 0x3e0cc, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x3e0bc targets 0x3e0cc, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x3e0c4 targets 0x3e0e4 and is always taken.
  The `beq` branch at 0x3e104 targets 0x3e118, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x3e110 targets 0x3e128, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x3e118 targets 0x3dfb0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x3e120 targets 0x3dfb0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x3e128 targets 0x3dfcc and is always taken.
  The `bne` branch at 0x3e138 targets 0x3e224, is taken when (s1(=0x10000) & s3(=[[entry(0x8ef8)]:8]:8)) != 0, and falls through when (s1(=0x10000) & s3(=[[entry(0x8ef8)]:8]:8)) == 0.
  The `beq` branch at 0x3e144 targets 0x3e21c, is taken when a2(=[entry(0x8ef8)+80]) == 0, and falls through when a2(=[entry(0x8ef8)+80]) != 0.
  The `beq` branch at 0x3e14c targets 0x3e270, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x3e174 targets 0x3e188, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x3e18c targets 0x3e06c and is always taken.
  The `beq` branch at 0x3e19c targets 0x3e004, is taken when a7(=[0x9200000001030100]:8) >= a2(=([entry(0x8ef8)+104] + [0x9200000001030100]:8)) (unsigned), and falls through when a7(=[0x9200000001030100]:8) < a2(=([entry(0x8ef8)+104] + [0x9200000001030100]:8)) (unsigned).
  The `bne` branch at 0x3e1a8 targets 0x3e004, is taken when a0(=-0x1) != t0(?), and falls through when a0(=-0x1) == t0(?).
  The `beq` branch at 0x3e1b8 targets 0x3e004, is taken when t1(=[0x9200000001030100]:8) >= a2(=([entry(0x8ef8)+104] + [0x9200000001030100]:8)) (unsigned), and falls through when t1(=[0x9200000001030100]:8) < a2(=([entry(0x8ef8)+104] + [0x9200000001030100]:8)) (unsigned).
  The `bne` branch at 0x3e1c4 targets 0x3e004, is taken when a0(=-0x1) != t2(?), and falls through when a0(=-0x1) == t2(?).
  The `bne` branch at 0x3e1d4 targets 0x3e1a4, is taken when t3(=[0x9200000001030100]:8) < a2(=([entry(0x8ef8)+104] + [0x9200000001030100]:8)) (unsigned), and falls through when t3(=[0x9200000001030100]:8) >= a2(=([entry(0x8ef8)+104] + [0x9200000001030100]:8)) (unsigned).
  The `beq` branch at 0x3e1dc targets 0x3e004 and is always taken.
  The `bne` branch at 0x3e1e4 targets 0x3e07c, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x3e1ec targets 0x3e2e4 and is always taken.
  The `beq` branch at 0x3e204 targets 0x3dd90 and is always taken.
  The `bne` branch at 0x3e20c targets 0x3df00, is taken when s4(?) != 0, and falls through when s4(?) == 0.
  The `beq` branch at 0x3e214 targets 0x3df00 and is always taken.
  The `beq` branch at 0x3e21c targets 0x3e154 and is always taken.
  The `beq` branch at 0x3e250 targets 0x3dd90 and is always taken.
  The `beq` branch at 0x3e258 targets 0x3dd90 and is always taken.
  The `beq` branch at 0x3e268 targets 0x3dd90 and is always taken.
  The `bne` branch at 0x3e2c0 targets 0x3e290, is taken when a2(?) < 0x2 (signed), and falls through when a2(?) >= 0x2 (signed).
  The `beq` branch at 0x3e2cc targets 0x3e2dc, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x3e2dc targets 0x3dd90 and is always taken.
  The `beq` branch at 0x3e2f8 targets 0x3dd90 and is always taken.
  The return at 0x3ddb8 has v0 = one of 0x6, 0x1, 0x0, ?, (ret(bte_error_handler) << 0x0).
- `bte_acquire_buffer` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3e300 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3e300-0x3e464 (356 bytes).
  It occupies 356 bytes.
  The `lh` at 0x3e32c loads 2 bytes from table(sym(nasid_to_compact_node)) +0x0.
  The `lbu` at 0x3e37c loads 1 byte from ((entry(sym(nasid_to_compact_node)) << 0x2) + sym(.bss)+55512) +0x1000.
  The `lbu` at 0x3e398 loads 1 byte from ?.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x3e3b4, `ld` at 0x3e450.
  The `ld` at 0x3e42c loads 8 bytes from table(sym(.bss)+55512) +0x0.
  The `sb` at 0x3e448 stores 1 byte to ?.
  The `jal` at 0x3e374 calls mutex_spinlock with a0=((entry(sym(nasid_to_compact_node)) << 0x2) + sym(.bss)+55512)+4608, a1=?, a2=?, a3=?.
  The `jal` at 0x3e3c4 calls mutex_spinunlock with a0=((entry(sym(nasid_to_compact_node)) << 0x2) + sym(.bss)+55512)+4608, a1=ret(mutex_spinlock), a2=?, a3=?.
  The `beq` branch at 0x3e384 targets 0x3e44c, is taken when t8(=[((entry(sym(nasid_to_compact_node)) << 0x2) + sym(.bss)+55512)+4096]:1) == 0, and falls through when t8(=[((entry(sym(nasid_to_compact_node)) << 0x2) + sym(.bss)+55512)+4096]:1) != 0.
  The `beq` branch at 0x3e38c targets 0x3e3a4 and is always taken.
  The `beq` branch at 0x3e39c targets 0x3e428, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x3e3bc targets 0x3e394, is taken when s0(?) < 0x4 (signed), and falls through when s0(?) >= 0x4 (signed).
  The `beq` branch at 0x3e3cc targets 0x3e418, is taken when s7(=a1) == 0, and falls through when s7(=a1) != 0.
  The `bne` branch at 0x3e3d8 targets 0x3e418, is taken when s0(?) != at(=0x4), and falls through when s0(?) == at(=0x4).
  The `bne` branch at 0x3e3e0 targets 0x3e374, is taken when s1(=one of 0x0, 0x1) != 0, and falls through when s1(=one of 0x0, 0x1) == 0.
  The `beq` branch at 0x3e418 targets 0x3e3e8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x3e420 targets 0x3e3e8 and is always taken.
  The `beq` branch at 0x3e430 targets 0x3e3a4, is taken when v1(=entry(sym(.bss)+55512)) == 0, and falls through when v1(=entry(sym(.bss)+55512)) != 0.
  The `beq` branch at 0x3e438 targets 0x3e3c4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x3e444 targets 0x3e3c4 and is always taken.
  The `beq` branch at 0x3e454 targets 0x3e38c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x3e45c targets 0x3e440 and is always taken.
  The return at 0x3e40c has v0 = one of -0x1, ?.
  The instructions from 0x3e414 to 0x3e414 are not reached by any path from the entry, and their branches are not listed.
- `bte_release_buffer` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3e464 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3e464-0x3e4c4 (96 bytes).
  It occupies 96 bytes.
  The `sb` at 0x3e4b0 stores 1 byte to (a0 + sym(.bss)+55512) +0x1000.
  The `jal` at 0x3e494 calls mutex_spinlock with a0=table(sym(.bss)+55512)+4608, a1=?, a2=?, a3=a3 at entry (arg3).
  The `jal` at 0x3e4ac calls mutex_spinunlock with a0=?, a1=ret(mutex_spinlock), a2=?, a3=(a0 + sym(.bss)+55512).
  The return at 0x3e4bc has v0 = ret(mutex_spinunlock).
- `bte_pull` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3e4c4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3e4c4-0x3e74c (648 bytes).
  It occupies 648 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x3e57c, `ld` at 0x3e718.
  2 such `ld` accesses load 8 bytes from [-0x3fe8]:8 +0x3f8, including `ld` at 0x3e580, `ld` at 0x3e71c.
  The `ld` at 0x3e6c0 loads 8 bytes from (sym(.bss)+55512 + (ret(bte_acquire_buffer) << 0x3)) +0x0.
  The `jal` at 0x3e5dc calls bte_copy with a0=?, a1=?, a2=?, a3=a3 at entry (arg3).
  The `jal` at 0x3e654 calls bcopy with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3e680 calls bte_release_buffer [0x3e464] with a0=?, a1=?, a2=?, a3=?, a6=-0x1.
  The `jal` at 0x3e694 calls bte_acquire_buffer [0x3e300] with a0=a1 at entry (arg1), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0x9000000000000000, a7=0xa800010000000000.
  The `bne` branch at 0x3e520 targets 0x3e52c, is taken when a2 < 0x401 (unsigned), and falls through when a2 >= 0x401 (unsigned).
  The `beq` branch at 0x3e528 targets 0x3e690, is taken when v0(=[sym(.sdata)+432]:1) == 0, and falls through when v0(=[sym(.sdata)+432]:1) != 0.
  The `bne` branch at 0x3e550 targets 0x3e560, is taken when a3(?) < a1(=0xa800000000000000) (unsigned), and falls through when a3(?) >= a1(=0xa800000000000000) (unsigned).
  The `bne` branch at 0x3e558 targets 0x3e570, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bne` branch at 0x3e560 targets 0x3e57c, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x3e568 targets 0x3e57c, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x3e570 targets 0x3e59c and is always taken.
  The `beq` branch at 0x3e5bc targets 0x3e674, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `beq` branch at 0x3e5e4 targets 0x3e61c, is taken when v0(=ret(bte_copy)) == 0, and falls through when v0(=ret(bte_copy)) != 0.
  The `bne` branch at 0x3e66c targets 0x3e5c4, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `beq` branch at 0x3e678 targets 0x3e688, is taken when s6(?) == a6(=-0x1), and falls through when s6(?) != a6(=-0x1).
  The `beq` branch at 0x3e688 targets 0x3e5ec and is always taken.
  The `beq` branch at 0x3e6b0 targets 0x3e6c4, is taken when v0(=ret(bte_acquire_buffer)) == a2(=-0x1), and falls through when v0(=ret(bte_acquire_buffer)) != a2(=-0x1).
  The `beq` branch at 0x3e6bc targets 0x3e5a4 and is always taken.
  The `bne` branch at 0x3e6d8 targets 0x3e6e8, is taken when a0(?) < a1(=0xa800000000000000) (unsigned), and falls through when a0(?) >= a1(=0xa800000000000000) (unsigned).
  The `bne` branch at 0x3e6e4 targets 0x3e70c, is taken when a0(?) < a2(=0xa800010000000000) (unsigned), and falls through when a0(?) >= a2(=0xa800010000000000) (unsigned).
  The `bne` branch at 0x3e6fc targets 0x3e718, is taken when a2(?) < a3(=0x9000000000000000) (unsigned), and falls through when a2(?) >= a3(=0x9000000000000000) (unsigned).
  The `beq` branch at 0x3e708 targets 0x3e718, is taken when a2(?) >= a3(=0x9000010000000000) (unsigned), and falls through when a2(?) < a3(=0x9000010000000000) (unsigned).
  The `beq` branch at 0x3e710 targets 0x3e73c and is always taken.
  The `beq` branch at 0x3e744 targets 0x3e5a4 and is always taken.
  The return at 0x3e614 has v0 = one of ret(bte_copy), 0x0.
  The instructions from 0x3e578 to 0x3e578 are not reached by any path from the entry, and their branches are not listed.
- `bte_unaligned_copy` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3e74c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3e74c-0x3e9a0 (596 bytes).
  It occupies 596 bytes.
  The `jal` at 0x3e7d8 calls bte_pull [0x3e4c4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x3e80c calls bte_pull [0x3e4c4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x3e858 calls bcopy with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `jal` at 0x3e8a8 calls bte_pull [0x3e4c4] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3e8c8 calls bcopy with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3e8fc calls bte_copy with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3e928 calls bcopy with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  The `jal` at 0x3e950 calls bte_copy with a0=?, a1=?, a2=0x7fff80, a3=?.
  The `beq` branch at 0x3e778 targets 0x3e790, is taken when v0(=[sym(disable_bte)]) == 0, and falls through when v0(=[sym(disable_bte)]) != 0.
  The `beq` branch at 0x3e788 targets 0x3e840, is taken when at(=[sym(maxcpus)]) >= v0(=[sym(disable_bte)]) (signed), and falls through when at(=[sym(maxcpus)]) < v0(=[sym(disable_bte)]) (signed).
  The `beq` branch at 0x3e790 targets 0x3e938, is taken when s0(=a2) == 0, and falls through when s0(=a2) != 0.
  The `bne` branch at 0x3e79c targets 0x3e7f4, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x3e7a4 targets 0x3e90c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x3e7bc targets 0x3e848, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x3e7e4 targets 0x3e864, is taken when v0(=ret(bte_pull)) == 0, and falls through when v0(=ret(bte_pull)) != 0.
  The `beq` branch at 0x3e7ec targets 0x3e820 and is always taken.
  The `beq` branch at 0x3e7f4 targets 0x3e920, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x3e840 targets 0x3e820 and is always taken.
  The `beq` branch at 0x3e880 targets 0x3e8d0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x3e898 targets 0x3e8c4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x3e8b4 targets 0x3e8d0, is taken when v0(=ret(bte_pull)) == 0, and falls through when v0(=ret(bte_pull)) != 0.
  The `beq` branch at 0x3e8bc targets 0x3e820 and is always taken.
  The `beq` branch at 0x3e8d0 targets 0x3e81c, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x3e8ec targets 0x3e944, is taken when v0(=0x7fff80) < s0(?) (unsigned), and falls through when v0(=0x7fff80) >= s0(?) (unsigned).
  The `beq` branch at 0x3e904 targets 0x3e81c and is always taken.
  The `bne` branch at 0x3e910 targets 0x3e7b0, is taken when s0(=a2) < 0x80 (unsigned), and falls through when s0(=a2) >= 0x80 (unsigned).
  The `beq` branch at 0x3e918 targets 0x3e880 and is always taken.
  The `beq` branch at 0x3e930 targets 0x3e818 and is always taken.
  The `beq` branch at 0x3e93c targets 0x3e820 and is always taken.
  The `beq` branch at 0x3e95c targets 0x3e96c, is taken when v0(=ret(bte_copy)) == 0, and falls through when v0(=ret(bte_copy)) != 0.
  The `beq` branch at 0x3e964 targets 0x3e820 and is always taken.
  The `bne` branch at 0x3e990 targets 0x3e8e8, is taken when s0(=table(0xffffffffff800080)) != 0, and falls through when s0(=table(0xffffffffff800080)) == 0.
  The `beq` branch at 0x3e998 targets 0x3e81c and is always taken.
  The return at 0x3e838 has v0 = one of ret(bte_pull), ?, 0x1, 0x0, ret(bte_copy).
- `bte_poison_copy` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3e9a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3e9a0-0x3e9f4 (84 bytes).
  It occupies 84 bytes.
  The `jal` at 0x3e9b4 calls bte_copy with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x110.
  The `jal` at 0x3e9e4 calls cmn_err with a0=0xc, a1=sym(.rodata)+64800, a2=ret(bte_copy), a3=?.
  The `beq` branch at 0x3e9ac targets 0x3e9c8, is taken when a2 == 0, and falls through when a2 != 0.
  The `bne` branch at 0x3e9bc targets 0x3e9d8, is taken when v0(=ret(bte_copy)) != 0, and falls through when v0(=ret(bte_copy)) == 0.
  The `beq` branch at 0x3e9ec targets 0x3e9c8 and is always taken.
  The return at 0x3e9d0 has v0 = one of 0x0, ret(bte_copy).
- `bte_poison_range` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3e9f4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3e9f4-0x3eb04 (272 bytes).
  It occupies 272 bytes.
  The `jal` at 0x3ea44 calls poison_state_alter_range with a0=(a0 | 0xa800000000000000), a1=a1 at entry (arg1), a2=0x1, a3=a3 at entry (arg3), a6=a1 at entry (arg1), a7=a0 at entry (arg0).
  The `jal` at 0x3ea94 calls bte_copy with a0=?, a1=0x0, a2=?, a3=0x110, a4=0x4000.
  The `jal` at 0x3eaec calls poison_state_alter_range with a0=?, a1=?, a2=0x1, a3=?.
  The `beq` branch at 0x3ea04 targets 0x3ead0, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0x3ea14 targets 0x3ea24, is taken when a0(=[sym(disable_bte_poison_range)]) == 0, and falls through when a0(=[sym(disable_bte_poison_range)]) != 0.
  The `beq` branch at 0x3ea1c targets 0x3ea38, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x3ea24 targets 0x3ea54, is taken when v0(=[sym(disable_bte)]) == 0, and falls through when v0(=[sym(disable_bte)]) != 0.
  The `bne` branch at 0x3ea30 targets 0x3ea54, is taken when v1(=[sym(maxcpus)]) < v0(=[sym(disable_bte)]) (signed), and falls through when v1(=[sym(maxcpus)]) >= v0(=[sym(disable_bte)]) (signed).
  The `beq` branch at 0x3ea4c targets 0x3eac4 and is always taken.
  The `beq` branch at 0x3ea5c targets 0x3ea6c and is always taken.
  The `beq` branch at 0x3ea64 targets 0x3eab4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x3eaa8 targets 0x3ea64, is taken when v0(=ret(bte_copy)) == 0, and falls through when v0(=ret(bte_copy)) != 0.
  The `beq` branch at 0x3eab4 targets 0x3ead8, is taken when v0(=ret(bte_copy)) == t0(=0x1), and falls through when v0(=ret(bte_copy)) != t0(=0x1).
  The `beq` branch at 0x3ead0 targets 0x3eac4 and is always taken.
  The `beq` branch at 0x3eafc targets 0x3eac4 and is always taken.
  The return at 0x3eac8 has v0 = one of 0x0, ret(bte_copy).
- `bte_disable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3eb04 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3eb04-0x3eb10 (12 bytes).
  It occupies 12 bytes.
  The return at 0x3eb08 has v0 = ?.
- `is_buserror` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3ec64 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3ec64-0x3ec6c (8 bytes).
  It occupies 8 bytes.
  The return at 0x3ec64 has v0 = 0x0.
- `probe_common` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3ec6c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3ec6c-0x3ed8c (288 bytes).
  It occupies 288 bytes.
  The `lw` at 0x3eccc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0x3ecdc loads 8 bytes from ((ret(get_nasid) << 0x21) + one of 0x9200000001800400, 0x9200000001a00400) +0x0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x18, including `ld` at 0x3ecf4, `ld` at 0x3ed74.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x3ecf8, `lw` at 0x3ed78.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x10, including `ld` at 0x3ed00, `ld` at 0x3ed40, `ld` at 0x3ed80.
  The `sd` at 0x3ed38 stores 8 bytes to ((ret(get_nasid) << 0x21) + one of 0x9200000001800400, 0x9200000001a00400) +0x0.
  The `jal` at 0x3ec84 calls mutex_lock with a0=sym(probe_sema), a1=0x14, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3ec8c calls getsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3ec98 calls setsr with a0=0x80, a1=?, a2=?, a3=?.
  The `jal` at 0x3eca0 calls get_slice with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3ecac calls get_nasid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3ecfc calls _badaddr_val with a0=[a0+16]:8, a1=[a0+4], a2=[a0+24]:8, a3=0x3, a4=[a0].
  The `jal` at 0x3ed08 calls get_slice with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3ed10 calls get_nasid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3ed3c calls is_buserror with a0=[a0+16]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x3ed50 calls setsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3ed58 calls mutex_unlock with a0=sym(probe_sema), a1=?, a2=?, a3=?.
  The `jal` at 0x3ed7c calls _wbadaddr_val with a0=[a0+16]:8, a1=[a0+4], a2=[a0+24]:8, a3=0x3, a4=[a0].
  The `beq` branch at 0x3ece4 targets 0x3ed74, is taken when a4(=[a0]) == at(=0x1), and falls through when a4(=[a0]) != at(=0x1).
  The `beq` branch at 0x3ecec targets 0x3ed74, is taken when a4(=[a0]) == a3(=0x3), and falls through when a4(=[a0]) != a3(=0x3).
  The `beq` branch at 0x3ed84 targets 0x3ed08 and is always taken.
  The return at 0x3ed6c has v0 = ?.
