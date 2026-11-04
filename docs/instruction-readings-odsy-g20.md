# Instruction readings from hostfacts

Each entry records selected memory accesses, calls and arguments, branch conditions, and return values from the exact binary range cited. These facts describe software behavior in the named build; they do not establish hardware behavior.

Skipped 44,688 located rows and 5,579 understood rows because they already have entries, 235 named-only or undocumented kernel rows because an exact routine entry already exists, and 55,840 other named-only or undocumented rows because they fall outside this 250-routine hardware-first slice.

- `heartclock_intr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x80bc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x80bc-0x80d0 (20 bytes).
  Stores 8 bytes from at to abs 0xffffffffaff10028 (`sd` at 0x80cc) with value 0x4000000000000.
  Returns v0 = 0xffffffffaff10000 (`jr` at 0x80c8).

- `powerintr_pollflash` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x8480 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x8480-0x84e0 (96 bytes).
  Stores 4 bytes from at to sym(_prom_cleared) +0xa8 (`sw` at 0x8494) with value [sym(.sdata)+168]-1.
  Calls `srflash_softpower_check` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x8498).
  Calls `timeout` via direct with a0=sym(powerintr_pollflash), a1=0x0, a2=0x1f4, a3=? (`jal` at 0x84ac).
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata)+1760, a2=?, a3=? (`jal` at 0x84c8).
  Calls `powerintr_back [0x8578]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x84d0).
  At `bltz` at 0x8490 (target 0x84c0), taken when at(=[sym(.sdata)+168]-1) < 0 (signed) and falls through when at(=[sym(.sdata)+168]-1) >= 0 (signed).
  At `beq` at 0x84a0 (target 0x84c0), taken when v0(=ret(srflash_softpower_check)) == 0 and falls through when v0(=ret(srflash_softpower_check)) != 0.
  Returns v0 = ? (`jr` at 0x84b8).

- `powerintr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x84e0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x84e0-0x8578 (152 bytes).
  Stores 4 bytes from v1 to sym(_prom_cleared) +0xb0 (`sw` at 0x8540) with value 0x1.
  Stores 4 bytes from a2 to sym(_prom_cleared) +0xac (`sw` at 0x8554) with value 0x1.
  Calls `cpu_clearpower` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x84e8).
  Calls `flushbus` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x84f0).
  Calls `srflash_softpower_startdown` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x8514).
  Calls `powerintr_back [0x8578]` via direct with a0=?, a1=sym(.rodata)+1760, a2=?, a3=? (`jal` at 0x8524).
  Calls `flash_led [0x8648]` via direct with a0=0x3, a1=?, a2=?, a3=? (`jal` at 0x853c).
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata)+1760, a2=0x1, a3=? (`jal` at 0x8558).
  Calls `timeout` via direct with a0=sym(powerintr_pollflash), a1=0x0, a2=0x1f4, a3=? (`jal` at 0x8568).
  At `beq` at 0x84fc (target 0x8534), taken when at(=[sym(.sdata)+176]) == 0 and falls through when at(=[sym(.sdata)+176]) != 0.
  At `beq` at 0x8504 (target 0x8514), taken when v0(=[sym(.sdata)+172]) == 0 and falls through when v0(=[sym(.sdata)+172]) != 0.
  At `bne` at 0x851c (target 0x854c), taken when v0(=ret(srflash_softpower_startdown)) != 0 and falls through when v0(=ret(srflash_softpower_startdown)) == 0.
  Returns v0 = ? (`jr` at 0x850c).

- `powerintr_back` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x8578 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x8578-0x8648 (208 bytes).
  Stores 4 bytes from a0 to sym(power_off_flag) +0x0 (`sw` at 0x8584) with value 0x1.
  Stores 4 bytes from a3 to sym(processor_enabled) +0xc0 (`sw` at 0x8614) with value [sym(lbolt)]+100.
  Calls `sigtopid` via direct with a0=0x1, a1=0x2, a2=0x12, a3=0x0, a4=0x0, a5=0x0 (`jal` at 0x85bc).
  Calls `us_delay` via direct with a0=0x7a120, a1=?, a2=?, a3=[sym(clean_shutdown_time)] (`jal` at 0x85d0).
  Calls `cpu_soft_powerdown` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x85d8).
  Calls `timeout` via direct with a0=sym(cpu_godown), a1=0x0, a2=?, a3=[sym(clean_shutdown_time)] (`jal` at 0x8600).
  Calls `set_autopoweron` via direct with a0=?, a1=?, a2=?, a3=[sym(lbolt)]+100 (`jal` at 0x8610).
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata)+1760, a2=[sym(lbolt)], a3=[sym(.sbss)+192] (`jal` at 0x8624).
  Calls `us_delay` via direct with a0=0x7a120, a1=?, a2=?, a3=? (`jal` at 0x8630).
  Calls `cpu_soft_powerdown` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x8638).
  At `beq` at 0x8590 (target 0x85ac), taken when a3(=[sym(.sbss)+192]) == 0 and falls through when a3(=[sym(.sbss)+192]) != 0.
  At `bne` at 0x8598 (target 0x8620), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0x85c4 (target 0x85e8), taken when v0(=ret(sigtopid)) == 0 and falls through when v0(=ret(sigtopid)) != 0.
  Returns v0 = ? (`jr` at 0x85a4).

- `r12k_perf_overflow_intr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x9564 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x9564-0x95c4 (96 bytes).
  At `beq` at 0x9570 (target 0x9580), taken when t0(?) >= 0 (signed) and falls through when t0(?) < 0 (signed).
  At `beq` at 0x9580 (target 0x958c), taken when t1(?) == 0 and falls through when t1(?) != 0.
  At `beq` at 0x959c (target 0x95ac), taken when t0(?) >= 0 (signed) and falls through when t0(?) < 0 (signed).
  At `beq` at 0x95ac (target 0x95b8), taken when t1(?) == 0 and falls through when t1(?) != 0.
  Returns v0 = ? (`jr` at 0x95bc).

- `r10k_perf_overflow_intr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x95c4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x95c4-0x95f4 (48 bytes).
  At `beq` at 0x95d0 (target 0x95e0), taken when t0(?) >= 0 (signed) and falls through when t0(?) < 0 (signed).
  At `beq` at 0x95e0 (target 0x95ec), taken when t1(?) == 0 and falls through when t1(?) != 0.
  Returns v0 = ? (`jr` at 0x95ec).

- `handle_intr_wgflush` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x9a9c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x9a9c-0x9ae8 (76 bytes).
  Stores 8 bytes from at to abs 0xffffffffffffc038 (`sd` at 0x9a9c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x9ae0).
  At `beq` at 0x9ad8 (target 0x9b30), taken when k0(?) == 0 -> outside and falls through when k0(?) != 0.

- `splhintr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb8fc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb8fc-0xb914 (24 bytes).
  Returns v0 = ? (`jr` at 0xb90c).

- `delay_for_intr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xba20 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xba20-0xba28 (8 bytes).
  Returns v0 = ? (`jr` at 0xba20).

- `intrnorm` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xcbc0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xcbc0-0xd064 (1188 bytes).
  Stores 1 byte from k0 to abs 0xffffffffffffc04f (`sb` at 0xcc18) with value 0x2.
  Stores 8 bytes from sp to [[-0x3fe8]:8+992]:8 +0x248 (`sd` at 0xcc28) with value sp.
  Stores 8 bytes from gp to [[-0x3fe8]:8+992]:8 +0x240 (`sd` at 0xcc34) with value gp.
  Stores 1 byte from k1 to abs 0xffffffffffffc04f (`sb` at 0xcc94) with value 0x2.
  Stores 8 bytes from sp to ? (base unknown) (`sd` at 0xcca4) with value sp.
  Stores 8 bytes from k1 to [-0x3fe0]:8 +0x228 (`sd` at 0xccb0).
  Stores 1 byte from k1 to abs 0xffffffffffffc04f (`sb` at 0xccc4) with value 0x2.
  Stores 8 bytes from sp to [-0x3fd0]:8 +0xe0 (`sd` at 0xcccc) with value sp.
  Stores 1 byte from k0 to abs 0xffffffffffffc053 (`sb` at 0xccd4) with value 0x1.
  Stores 8 bytes from gp to ? (base unknown) (`sd` at 0xcd1c) with value gp.
  Stores 8 bytes from sp to ? (base unknown) (`sd` at 0xcd24) with value sp.
  Stores 1 byte from k0 to abs 0xffffffffffffc04f (`sb` at 0xcd38) with value 0x2.
  Stores 8 bytes from ra to ? (base unknown) (`sd` at 0xcd40) with value ra.
  Stores 8 bytes from a7 to ? (base unknown) (`sd` at 0xcd48) with value a7.
  Stores 8 bytes from a6 to ? (base unknown) (`sd` at 0xcd50) with value a6.
  Stores 8 bytes from a5 to ? (base unknown) (`sd` at 0xcd54) with value a5.
  Stores 8 bytes from a4 to ? (base unknown) (`sd` at 0xcd58) with value a4.
  Stores 8 bytes from a3 to ? (base unknown) (`sd` at 0xcd5c) with value a3.
  Stores 8 bytes from a2 to ? (base unknown) (`sd` at 0xcd60) with value a2.
  Stores 8 bytes from a1 to ? (base unknown) (`sd` at 0xcd64) with value a1.
  Stores 8 bytes from a0 to ? (base unknown) (`sd` at 0xcd68) with value a0.
  Stores 8 bytes from s7 to ? (base unknown) (`sd` at 0xcd6c) with value s7.
  Stores 8 bytes from s6 to ? (base unknown) (`sd` at 0xcd70) with value s6.
  Stores 8 bytes from s5 to ? (base unknown) (`sd` at 0xcd74) with value s5.
  Stores 8 bytes from s4 to ? (base unknown) (`sd` at 0xcd78) with value s4.
  Stores 8 bytes from s3 to ? (base unknown) (`sd` at 0xcd7c) with value s3.
  Stores 8 bytes from s2 to ? (base unknown) (`sd` at 0xcd80) with value s2.
  Stores 8 bytes from s1 to ? (base unknown) (`sd` at 0xcd84) with value s1.
  Stores 8 bytes from s0 to ? (base unknown) (`sd` at 0xcd88) with value s0.
  Stores 8 bytes from at to ? (base unknown) (`sd` at 0xcd90) with value [-0x3fc8]:8.
  Stores 8 bytes from t0 to abs 0xffffffffffffc018 (`sd` at 0xcd9c) with value [[-0x3fd8]:8+144]:8.
  Stores 8 bytes from sp to ? (base unknown) (`sd` at 0xcdc0) with value sp.
  Stores 8 bytes from at to abs 0xffffffffffffc038 (`sd` at 0xcdcc).
  Stores 4 bytes from k0 to [-0x38d8]:8 +0x4 (`sw` at 0xce78).
  Stores 8 bytes from k0 to abs 0xffffffffffffc718 (`sd` at 0xce90).
  Stores 8 bytes from k0 to abs 0xffffffffffffc720 (`sd` at 0xce98).
  Stores 8 bytes from at to abs 0xffffffffffffc718 (`sd` at 0xced4) with value one of 0x0, 0x1.
  Stores 4 bytes from k0 to abs 0xffffffffffffc710 (`sw` at 0xd040) with value [-0x38f0]+1.
  Stores 4 bytes from at to abs 0xffffffffffffc70c (`sw` at 0xd058) with value [-0x38f4]+1.
  Calls `ecommon` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xcc4c).
  Calls `ecommon` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xccb4).
  Calls `ecommon_allsaved` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xcce4).
  Calls `ecommon` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xccec).
  Calls `tfi_save` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xcd8c).
  Calls `uli_setasids` via direct with a0=[[-0x3fd8]:8+168]:2, a1=?, a2=?, a3=? (`jal` at 0xcda0).
  Calls `ecommon_allsaved` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0xcda8).
  Calls `ecommon` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xcdc4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0xce9c).
  Calls `.text` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0xcebc).
  Calls `.text` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0xd05c).
  At `beq` at 0xcbc8 (target 0xcbec), taken when k1(?) == 0 and falls through when k1(?) != 0.
  At `beq` at 0xcbd0 (target 0xcbec), taken when k1(=[-0x3ba0]:8) == 0 and falls through when k1(=[-0x3ba0]:8) != 0.
  At `bne` at 0xcbd8 (target 0xcbec), taken when k1(=[-0x3ba0]:8) != k0(=[-0x3fe8]:8) and falls through when k1(=[-0x3ba0]:8) == k0(=[-0x3fe8]:8).
  At `bgez` at 0xcbe4 (target 0xcdcc), taken when k1(?) >= 0 (signed) and falls through when k1(?) < 0 (signed).
  At `bne` at 0xcbf0 (target 0xccf4), taken when k0(=[-0x3fd8]:8) != 0 and falls through when k0(=[-0x3fd8]:8) == 0.
  At `beq` at 0xcc00 (target 0xcdb0), taken when k0(=[-0x3fb1]:1-2) == 0 and falls through when k0(=[-0x3fb1]:1-2) != 0.
  At `beq` at 0xcc08 (target 0xcc90), taken when k0(=[-0x3fb1]:1-1) == 0 and falls through when k0(=[-0x3fb1]:1-1) != 0.
  At `beq` at 0xcc10 (target 0xccbc), taken when k0(=[-0x3fb1]:1-3) == 0 and falls through when k0(=[-0x3fb1]:1-3) != 0.
  At `beq` at 0xccdc (target 0xccec), taken when k0(=[-0x3fb0]:1) == 0 and falls through when k0(=[-0x3fb0]:1) != 0.
  At `beq` at 0xccfc (target 0xcdb0), taken when k1(=[-0x3fb1]:1) == at(=0x2) and falls through when k1(=[-0x3fb1]:1) != at(=0x2).
  At `bltz` at 0xcdf4 (target 0xd05c), taken when k0(?) < 0 (signed) and falls through when k0(?) >= 0 (signed).
  At `bne` at 0xce1c (target 0xce30), taken when (k0(?) & k1(?)) != 0 and falls through when (k0(?) & k1(?)) == 0.
  At `beq` at 0xce40 (target 0xd05c), taken when (k0(?) & 0x2) == 0 and falls through when (k0(?) & 0x2) != 0.
  At `bne` at 0xce58 (target 0xd05c), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0xce64 (target 0xd05c), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xce70 (target 0xd05c), taken when k1(=[-0x38d8]:8) == 0 and falls through when k1(=[-0x38d8]:8) != 0.
  At `beq` at 0xceb0 (target 0xcec4), taken when k0(=[-0x38e0]:8) == k1(?) and falls through when k0(=[-0x38e0]:8) != k1(?).
  At `bne` at 0xcec8 (target 0xced4), taken when k0(=[-0x38e8]:8) != k1(?) and falls through when k0(=[-0x38e8]:8) == k1(?).
  At `bne` at 0xcee8 (target 0xcf70), taken when (k0(?) & 0x3fff) != 0 and falls through when (k0(?) & 0x3fff) == 0.
  At `bltzl` at 0xcf14 (target 0xd02c), taken when k0(?) < 0 (signed) and falls through when k0(?) >= 0 (signed).
  At `bne` at 0xcf3c (target 0xcf50), taken when (k0(?) & k1(?)) != 0 and falls through when (k0(?) & k1(?)) == 0.
  At `beql` at 0xcf60 (target 0xd02c), taken when (k0(?) & 0x2) == 0 and falls through when (k0(?) & 0x2) != 0.
  At `bne` at 0xcf78 (target 0xcfb0), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xcf88 (target 0xd02c), taken when k0(?) == 0 and falls through when k0(?) != 0.
  At `bne` at 0xcf94 (target 0xd02c), taken when k0(?) != 0 and falls through when k0(?) == 0.
  At `bne` at 0xcfa0 (target 0xd05c), taken when at(=[-0x38e8]:8) != 0 and falls through when at(=[-0x38e8]:8) == 0.
  At `bne` at 0xcfb4 (target 0xcfd0), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0xcfc0 (target 0xd02c), taken when (k0(?) & 0x8) == 0 and falls through when (k0(?) & 0x8) != 0.
  At `bne` at 0xcfd4 (target 0xcff0), taken when k0(=0x2) != at(?) and falls through when k0(=0x2) == at(?).
  At `bne` at 0xcfe0 (target 0xd05c), taken when at(=[-0x38e8]:8) != 0 and falls through when at(=[-0x38e8]:8) == 0.
  At `beq` at 0xcff4 (target 0xd004), taken when at(?) >= 0x8 (unsigned) and falls through when at(?) < 0x8 (unsigned).
  At `beq` at 0xd00c (target 0xd02c), taken when k0(?) == 0 and falls through when k0(?) != 0.
  At `beq` at 0xd020 (target 0xd02c), taken when k0(?) == 0 and falls through when k0(?) != 0.
  At `bne` at 0xd048 (target 0xd05c), taken when at(?) != 0 and falls through when at(?) == 0.
  The instructions from 0xcc54 to 0xcc8c are not reached by any path from the entry, and their branches are not listed.

- `strayfp_intr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe644 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe644-0xe698 (84 bytes).
  Calls `getsr` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xe64c).
  Calls `setsr` via direct with a0=(ret(getsr) | 0x20000000), a1=?, a2=?, a3=? (`jal` at 0xe658).
  Calls `set_fpc_csr` via direct with a0=0x0, a1=?, a2=?, a3=? (`jal` at 0xe660).
  Calls `getsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xe668).
  Calls `setsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xe678).
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata)+3328, a2=?, a3=? (`jal` at 0xe684).
  Returns v0 = ret(cmn_err); f0 = ret(cmn_err) (`jr` at 0xe690).

- `fp_intr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe6e8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe6e8-0xe814 (300 bytes).
  Stores 1 byte from a3 to [[-0x3fe8]:8+792]:8 +0x215 (`sb` at 0xe720) with value 0x1.
  Stores 8 bytes from a3 to a0 (arg0 at entry) +0x160 (`sd` at 0xe7e4).
  Stores 8 bytes from a3 to a0 (arg0 at entry) +0x120 (`sd` at 0xe7ec).
  Stores 1 byte from a4 to [[-0x3fe8]:8+792]:8 +0x215 (`sb` at 0xe800) with value 0x2.
  Calls `load_fpcsr` via direct with a0=[[[-0x3fe8]:8+792]:8+533]:1, a1=[[-0x3fe8]:8+792]:8, a2=a2 at entry (arg2), a3=0x1 (`jal` at 0xe73c).
  Calls `emulate_branch` via direct with a0=a0 at entry (arg0), a1=[[-0x3fe8]:8+1344], a2=ret(load_fpcsr), a3=sp-48 (`jal` at 0xe750).
  Calls `softfp_dispatch [0xe814]` via direct with a0=a0 at entry (arg0), a1=?, a2=0x11, a3=0x13, a4=0x23 (`jal` at 0xe794).
  Calls `checkfp` via direct with a0=[-0x3fe8]:8, a1=0x2, a2=?, a3=? (`jal` at 0xe7a8).
  Calls `sendSIGFPE [0xe698]` via direct with a0=[-0x3fe8]:8, a1=?, a2=0x11, a3=0x13, a4=0x23 (`jal` at 0xe7b8).
  Calls `strayfp_intr [0xe644]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1 (`jal` at 0xe7f0).
  Calls `sendSIGFPE [0xe698]` via direct with a0=[-0x3fe8]:8, a1=[[-0x3fe8]:8+792]:8, a2=a2 at entry (arg2), a3=0x1, a4=0x2 (`jal` at 0xe804).
  At `beq` at 0xe700 (target 0xe7f0), taken when s0(=[-0x3fe8]:8) == 0 and falls through when s0(=[-0x3fe8]:8) != 0.
  At `beq` at 0xe710 (target 0xe724), taken when a0(=[[[-0x3fe8]:8+792]:8+533]:1) == 0 and falls through when a0(=[[[-0x3fe8]:8+792]:8+533]:1) != 0.
  At `beq` at 0xe718 (target 0xe800), taken when a0(=[[[-0x3fe8]:8+792]:8+533]:1) == a3(=0x1) and falls through when a0(=[[[-0x3fe8]:8+792]:8+533]:1) != a3(=0x1).
  At `beq` at 0xe734 (target 0xe764), taken when (at(=[a0+280]:8) & v0(=0x80000000)) == 0 and falls through when (at(=[a0+280]:8) & v0(=0x80000000)) != 0.
  At `beq` at 0xe784 (target 0xe7d4), taken when a0(?) == a2(=0x11) and falls through when a0(?) != a2(=0x11).
  At `bne` at 0xe78c (target 0xe7b8), taken when a0(?) != a3(=0x13) and falls through when a0(?) == a3(=0x13).
  At `beq` at 0xe79c (target 0xe7e4), taken when v0(=ret(softfp_dispatch)) == 0 and falls through when v0(=ret(softfp_dispatch)) != 0.
  At `bne` at 0xe7d4 (target 0xe78c), taken when a5(?) != a4(=0x23) and falls through when a5(?) == a4(=0x23).
  Returns v0 = ? (`jr` at 0xe7cc).

- `hwperf_overflowed_intr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19038 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19038-0x19088 (80 bytes).
  Calls `r10k_perf_overflow_intr` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3) (`jal` at 0x1905c).
  Calls `r12k_perf_overflow_intr` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3) (`jal` at 0x19078).
  At `beq` at 0x1904c (target 0x19078), taken when a2(?) == at(=0xe) and falls through when a2(?) != at(=0xe).
  At `beq` at 0x19054 (target 0x19078), taken when a2(?) == v0(=0xf) and falls through when a2(?) != v0(=0xf).
  Returns v0 = ? (`jr` at 0x19070).

- `r1nk_perf_intr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a890 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a890-0x1aa50 (448 bytes).
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x1a8f0) with value ret(r1nkperf_data_register_get).
  Stores 8 bytes from at to ? (base unknown) (`scd` at 0x1a974).
  Stores 4 bytes from a1 to ? (base unknown) (`sw` at 0x1a9e4).
  Calls `r1nkperf_data_register_get` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1a8c8).
  Calls `r1nk_perf_stop_counters` via direct with a0=[-0x3928]:8, a1=?, a2=?, a3=? (`jal` at 0x1a8f8).
  Calls `r1nkperf_data_register_set` via direct with a0=0x2, a1=?, a2=?, a3=? (`jal` at 0x1a918).
  Calls `r1nk_perf_intr_action` via direct with a0=a0 at entry (arg0), a1=[-0x3928]:8, a2=one of 0x0, 0x1, a3=? (`jal` at 0x1aa10).
  Calls `r1nk_perf_start_counters` via direct with a0=[-0x3928]:8, a1=?, a2=?, a3=? (`jal` at 0x1aa1c).
  Calls `assfail` via direct with a0=sym(.rodata)+12952, a1=sym(.rodata)+12952, a2=0x65, a3=a3 at entry (arg3) (`jal` at 0x1aa40).
  At `beq` at 0x1a8a0 (target 0x1aa24), taken when s1(=[-0x3928]:8) == 0 and falls through when s1(=[-0x3928]:8) != 0.
  At `beq` at 0x1a8b0 (target 0x1aa38), taken when a1(=[[-0x3928]:8+48]:2) >= 0x4 (signed) and falls through when a1(=[[-0x3928]:8+48]:2) < 0x4 (signed).
  At `blez` at 0x1a8bc (target 0x1a8f4), taken when a1(=[[-0x3928]:8+48]:2) <= 0 (signed) and falls through when a1(=[[-0x3928]:8+48]:2) > 0 (signed).
  At `bne` at 0x1a8ec (target 0x1a8c8), taken when s0(?) < a0(=[[-0x3928]:8+48]:2) (signed) and falls through when s0(?) >= a0(=[[-0x3928]:8+48]:2) (signed).
  At `blez` at 0x1a904 (target 0x1aa08), taken when a2(=[[-0x3928]:8+48]:2) <= 0 (signed) and falls through when a2(=[[-0x3928]:8+48]:2) > 0 (signed).
  At `bne` at 0x1a934 (target 0x1a90c), taken when s0(?) < a1(=[[-0x3928]:8+48]:2) (signed) and falls through when s0(?) >= a1(=[[-0x3928]:8+48]:2) (signed).
  At `blez` at 0x1a93c (target 0x1aa08), taken when a1(=[[-0x3928]:8+48]:2) <= 0 (signed) and falls through when a1(=[[-0x3928]:8+48]:2) > 0 (signed).
  At `beql` at 0x1a978 (target 0x1a968), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0x1a98c (target 0x1aa10), taken when s0(?) >= a1(=[[-0x3928]:8+48]:2) (signed) and falls through when s0(?) < a1(=[[-0x3928]:8+48]:2) (signed).
  At `beq` at 0x1a9a0 (target 0x1a9e8), taken when a4(?) == t0(=-0x1) and falls through when a4(?) != t0(=-0x1).
  At `beq` at 0x1a9c8 (target 0x1a954), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `bne` at 0x1a9d4 (target 0x1a954), taken when a5(?) < a7(=0xffffffff80000000) (unsigned) and falls through when a5(?) >= a7(=0xffffffff80000000) (unsigned).
  At `bne` at 0x1a9f8 (target 0x1a998), taken when s0(?) < a1(=[[-0x3928]:8+48]:2) (signed) and falls through when s0(?) >= a1(=[[-0x3928]:8+48]:2) (signed).
  Returns v0 = ? (`jr` at 0x1aa30).

- `r1nk_perf_intr_action` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1aa50 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1aa50-0x1ab50 (256 bytes).
  Stores 4 bytes from t0 to [[-0x3fe8]:8+992]:8 +0x0 (`sw` at 0x1ab00) with value 0x1.
  Stores 4 bytes from a1 to [-0x3fe8]:8 +0x330 (`sw` at 0x1ab24) with value ([[-0x3fe8]:8+816] | 0x400000).
  Stores 4 bytes from a5 to [[-0x3fe8]:8+992]:8 +0x0 (`sw` at 0x1ab4c) with value 0x1.
  Calls `prfintr` via direct with a0=[a0+288]:8, a1=[a0+224]:8, a2=[a0+240]:8, a3=[a0+248]:8, a5=a0 at entry (arg0), a6=0x3 (`jal` at 0x1aa84).
  Calls `sigtouthread` via direct with a0=[-0x3fe8]:8, a1=[a1+12]:2, a2=0x0, a3=a3 at entry (arg3), a4=[a1+12]:2, a5=a0 at entry (arg0), a6=0x3 (`jal` at 0x1aad0).
  Calls `mutex_bitlock` via direct with a0=[-0x3fe8]:8+132, a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[[-0x3fe0]:8+112]:1, a6=0x3 (`jal` at 0x1ab0c).
  Calls `mutex_bitunlock` via direct with a0=[-0x3fe8]:8+132, a1=0x4, a2=ret(mutex_bitlock), a3=[-0x3fe8]:8, a4=0x400000 (`jal` at 0x1ab34).
  At `beq` at 0x1aa68 (target 0x1aab4), taken when (a4(=[a1]:2) & 0x80) == 0 and falls through when (a4(=[a1]:2) & 0x80) != 0.
  At `beq` at 0x1aa70 (target 0x1aa94), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0x1aa98 (target 0x1aaac), taken when a0(=[-0x3fe0]:8) == 0 and falls through when a0(=[-0x3fe0]:8) != 0.
  At `beq` at 0x1aaa4 (target 0x1ab04), taken when a5(=[[-0x3fe0]:8+112]:1) == a6(=0x3) and falls through when a5(=[[-0x3fe0]:8+112]:1) != a6(=0x3).
  At `beq` at 0x1aab4 (target 0x1aaac), taken when a2 == 0 and falls through when a2 != 0.
  At `beq` at 0x1aac0 (target 0x1aaa8), taken when a4(=[a1+12]:2) == 0 -> outside and falls through when a4(=[a1+12]:2) != 0.
  At `bne` at 0x1aae8 (target 0x1aaac), taken when a7(?) != t0(=0x10) and falls through when a7(?) == t0(=0x10).
  Returns v0 = ? (`jr` at 0x1aaac).

- `router_print_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2b84 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2b84-0x2c5c (216 bytes).
  Stores 1 byte from a2 to (a4 + a0) +0x257 (`sb` at 0x2c28) with value (a3 | [(a4 + a0)+599]:1).
  Calls `error_flag_to_type [0x2b3c]` via direct with a0=a3 at entry (arg3), a1=a1 at entry (arg1), a2=(a3 | [(a4 + a0)+599]:1), a3=a3 at entry (arg3), a4=(a4 + a0) (`jal` at 0x2bf8).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+616, a2=ret(error_flag_to_type), a3=?, a4=[a0+592]:8, a5=a4 at entry (arg4) (`jal` at 0x2c18).
  Calls `error_flag_to_type [0x2b3c]` via direct with a0=a3 at entry (arg3), a1=a1 at entry (arg1), a2=(a3 | [(a4 + a0)+599]:1), a3=a3 at entry (arg3), a4=(a4 + a0) (`jal` at 0x2c2c).
  Calls `cmn_err` via direct with a0=0x404, a1=sym(.rodata)+616, a2=ret(error_flag_to_type), a3=?, a4=[a0+592]:8, a5=a4 at entry (arg4) (`jal` at 0x2c4c).
  At `beq` at 0x2bc0 (target 0x2be4), taken when s2(?) >= 0x1f5 (signed) and falls through when s2(?) < 0x1f5 (signed).
  At `beq` at 0x2bf0 (target 0x2c28), taken when (a3 & v0(=[(a4 + a0)+599]:1)) == 0 and falls through when (a3 & v0(=[(a4 + a0)+599]:1)) != 0.
  Returns v0 = one of 0x0, 0x1 (`jr` at 0x2bdc).

- `router_print_state_specific` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3ae4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3ae4-0x3cdc (504 bytes).
  Stores 1 byte from v1 to a0 (arg0 at entry) +0x238 (`sb` at 0x3b64) with value (a3 | [a0+568]:1).
  Stores 1 byte from zero to [([[-0x3c00]:8]:8 + ([a0+2]:2 << 0x3))]:8 +0x8594 (`sb` at 0x3be4) with value 0x0.
  Calls `mutex_spinlock` via direct with a0=a0+572, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3b18).
  Calls `mutex_spinunlock` via direct with a0=a0+572, a1=ret(mutex_spinlock), a2=[a0+568]:1, a3=? (`jal` at 0x3b34).
  Calls `mutex_spinunlock` via direct with a0=a0+572, a1=ret(mutex_spinlock), a2=[a0+568]:1, a3=? (`jal` at 0x3b68).
  Calls `(unknown callee)` via register with a0=a1 at entry (arg1), a1=sym(.rodata)+616, a2=[a0+2]:2, a3=? (`jalr` at 0x3ba0).
  Calls `max` via direct with a0=0x100, a1=0x100, a2=?, a3=? (`jal` at 0x3bac).
  Calls `timeout_poll` via direct with a0=[(sym(compact_to_nasid_node) + ([a0+2]:2 + [a0+2]:2))]:2, a1=0x60c020, a2=0x8000000000000000, a3=ret(max), a4=0x1, a5=([a0+2]:2 + [a0+2]:2) (`jal` at 0x3bdc).
  Calls `router_state_empty [0x399c]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x3bec).
  Calls `(unknown callee)` via register with a0=a1 at entry (arg1), a1=sym(.rodata)+616, a2=?, a3=? (`jalr` at 0x3bfc).
  Calls `(unknown callee)` via register with a0=a1 at entry (arg1), a1=sym(.rodata)+616, a2=[a0+504]:2, a3=? (`jalr` at 0x3c0c).
  Calls `router_reg_read` via direct with a0=a0 at entry (arg0), a1=0x0, a2=sp-64, a3=? (`jal` at 0x3c1c).
  Calls `show_rr_status_rev_id` via direct with a0=?, a1=[a0+8]:1, a2=a1 at entry (arg1), a3=a2 at entry (arg2) (`jal` at 0x3c30).
  Calls `router_reg_read` via direct with a0=a0 at entry (arg0), a1=?, a2=sp-64, a3=? (`jal` at 0x3c90).
  Calls `show_rr_error_status` via direct with a0=?, a1=?, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=0x0 (`jal` at 0x3cb4).
  At `beq` at 0x3b28 (target 0x3b60), taken when (s3(=a3) & a2(=[a0+568]:1)) == 0 and falls through when (s3(=a3) & a2(=[a0+568]:1)) != 0.
  At `beq` at 0x3b94 (target 0x3be8), taken when a0(=[[([[-0x3c00]:8]:8 + ([a0+2]:2 << 0x3))]:8+34196]:1) == 0 and falls through when a0(=[[([[-0x3c00]:8]:8 + ([a0+2]:2 << 0x3))]:8+34196]:1) != 0.
  At `bne` at 0x3bf4 (target 0x3b3c), taken when v0(=ret(router_state_empty)) != 0 and falls through when v0(=ret(router_state_empty)) == 0.
  At `beq` at 0x3c58 (target 0x3b3c), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x3c6c (target 0x3c50), taken when (a1(=[a0+8]:1) & a6(?)) == 0 and falls through when (a1(=[a0+8]:1) & a6(?)) != 0.
  At `bne` at 0x3ccc (target 0x3c48), taken when s4(?) < 0x9 (signed) and falls through when s4(?) >= 0x9 (signed).
  Returns v0 = ? (`jr` at 0x3b58).

- `router_print_state` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3cdc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3cdc-0x3db0 (212 bytes).
  Stores 2 bytes from ra to ? (base unknown) (`sh` at 0x3d4c) with value [-0x3bd6]:2.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x3d68) with value 0x0.
  Stores 2 bytes from t9 to ? (base unknown) (`sh` at 0x3d74).
  Calls `router_print_state_specific` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=sym(compact_to_nasid_node) (`jal` at 0x3d70).
  Calls `router_print_state_specific` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3da0).
  At `bne` at 0x3d00 (target 0x3da0), taken when a0 != 0 and falls through when a0 == 0.
  At `beq` at 0x3d28 (target 0x3d84), taken when s0(=[[([[-0x3c00]:8]:8 + ([-0x3bd6]:2 << 0x3))]:8+34280]:8) == 0 and falls through when s0(=[[([[-0x3c00]:8]:8 + ([-0x3bd6]:2 << 0x3))]:8+34280]:8) != 0.
  At `beq` at 0x3d38 (target 0x3d84), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `beq` at 0x3d40 (target 0x3d38), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `bne` at 0x3d7c (target 0x3d30), taken when s0(?) != 0 and falls through when s0(?) == 0.
  Returns v0 = ? (`jr` at 0x3d98).

- `hubii_eint_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x17f08 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x17f08-0x180cc (452 bytes).
  Stores 8 bytes from t8 to table(0x9200000001c00138) +0x0 (`sd` at 0x18058).
  Stores 8 bytes from v0 to table(0x9200000001c00128) +0x0 (`sd` at 0x18078).
  Calls `hwgraph_info_get_LBL` via direct with a0=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+35968], a1=sym(.rodata)+28464, a2=sp-48, a3=? (`jal` at 0x17f4c).
  Calls `intr_heuristic` via direct with a0=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+35968], a1=0x0, a2=-0x1, a3=0x4, a4=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+35968], a5=sym(.rodata)+28464, a6=sp-40 (`jal` at 0x17f9c).
  Calls `intr_connect_level` via direct with a0=?, a1=?, a2=0x0, a3=sym(hubii_eint_handler), a5=0x0, a6=-0x1 (`jal` at 0x17fd0).
  Calls `get_cpu_cnode` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x17fec).
  Calls `assfail` via direct with a0=sym(.rodata)+28464, a1=sym(.rodata)+28464, a2=0x20e, a3=a3 at entry (arg3) (`jal` at 0x18088).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=a0 at entry (arg0), a3=?, a6=-0x1 (`jal` at 0x180a0).
  Calls `assfail` via direct with a0=sym(.rodata)+28464, a1=sym(.rodata)+28464, a2=0x22c, a3=? (`jal` at 0x180bc).
  At `beq` at 0x17f38 (target 0x1807c), taken when at(=-0x1) == s0(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+35968]) and falls through when at(=-0x1) != s0(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+35968]).
  At `beq` at 0x17f74 (target 0x18070), taken when (a2(?) & 0x2) == 0 and falls through when (a2(?) & 0x2) != 0.
  At `beq` at 0x17fb0 (target 0x18098), taken when s1(?) == a6(=-0x1) and falls through when s1(?) != a6(=-0x1).
  At `bltz` at 0x17fd8 (target 0x180b0), taken when v0(=ret(intr_connect_level)) < 0 (signed) and falls through when v0(=ret(intr_connect_level)) >= 0 (signed).
  Returns v0 = ? (`jr` at 0x18068).

- `hubni_eint_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x180cc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x180cc-0x181d0 (260 bytes).
  Calls `cnodetocpu` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x180d8).
  Calls `intr_connect_level` via direct with a0=?, a1=0x7e, a2=0x0, a3=sym(hubni_eint_handler), a4=0x0, a5=0x0 (`jal` at 0x18108).
  Calls `cnode_slice_to_cpuid` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x18130).
  Calls `cpu_enabled` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x18154).
  Calls `intr_connect_level` via direct with a0=?, a1=?, a2=0x0, a3=sym(hubni_rmteint_handler), a4=0x0, a5=0x0 (`jal` at 0x18178).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x181ac).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x181c0).
  At `beq` at 0x180e8 (target 0x18190), taken when v0(=ret(cnodetocpu)) == at(=-0x1) and falls through when v0(=ret(cnodetocpu)) != at(=-0x1).
  At `bne` at 0x18110 (target 0x181a8), taken when v0(=ret(intr_connect_level)) != 0 and falls through when v0(=ret(intr_connect_level)) == 0.
  At `beq` at 0x18128 (target 0x18190), taken when s0(?) >= 0x4 (signed) and falls through when s0(?) < 0x4 (signed).
  At `bltz` at 0x18144 (target 0x18120), taken when s1(?) < 0 (signed) and falls through when s1(?) >= 0 (signed).
  At `beq` at 0x1814c (target 0x18120), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0x1815c (target 0x18120), taken when v0(=ret(cpu_enabled)) == 0 and falls through when v0(=ret(cpu_enabled)) != 0.
  At `beql` at 0x18180 (target 0x18124), taken when v0(=ret(intr_connect_level)) == 0 and falls through when v0(=ret(intr_connect_level)) != 0.
  Returns v0 = ? (`jr` at 0x181a0).

- `hubpi_eint_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x181d0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x181d0-0x18828 (1624 bytes).
  Stores 4 bytes from t0 to [-0x3c00]:8 +0x884c (`sw` at 0x18320) with value -0x1.
  Stores 8 bytes from s1 to abs 0x9200000001000400 (`sd` at 0x18384) with value one of 0x1, 0x2.
  Stores 8 bytes from s1 to abs 0x9200000001000400 (`sd` at 0x183e8) with value one of 0x40, 0x80.
  Stores 8 bytes from s1 to abs 0x9200000001000400 (`sd` at 0x18450) with value one of 0x10, 0x20.
  Stores 8 bytes from zero to abs 0x92000000010004c8 (`sd` at 0x184f4) with value 0x0.
  Stores 8 bytes from zero to abs 0x92000000010004d0 (`sd` at 0x184f8) with value 0x0.
  Stores 8 bytes from s7 to abs 0x9200000001000400 (`sd` at 0x18520) with value one of 0x4, 0x8.
  Stores 8 bytes from s1 to abs 0x9200000001000400 (`sd` at 0x18728) with value one of 0x100000, 0x200000.
  Stores 8 bytes from s1 to abs 0x9200000001000400 (`sd` at 0x1877c) with value one of 0x8000000, 0x10000000.
  Stores 8 bytes from s1 to abs 0x9200000001000400 (`sd` at 0x187d0) with value one of 0x2000000, 0x4000000.
  Calls `check_ni_errors` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x181d8).
  Calls `hubni_error_handler` via direct with a0=sym(.rodata)+28464, a1=0x1, a2=?, a3=? (`jal` at 0x18200).
  Calls `kl_panic_setup` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x182c4).
  Calls `get_nasid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x182f8).
  Calls `log_md_errors` via direct with a0=ret(get_nasid), a1=?, a2=?, a3=? (`jal` at 0x18300).
  Calls `md_int_block` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x18308).
  Calls `process_error_spool` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1835c).
  Calls `process_error_spool` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x183c0).
  Calls `process_error_spool` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x18424).
  Calls `cmn_err` via direct with a0=0x15, a1=sym(.rodata)+28464, a2=?, a3=[0x92000000010004c8]:8, a4=0x89, a5=0x4, a7=0x92000000010004c8 (`jal` at 0x185b4).
  Calls `cmn_err` via direct with a0=0x15, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x185cc).
  Calls `cmn_err` via direct with a0=0x15, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x185e0).
  Calls `cmn_err` via direct with a0=0x15, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x185f4).
  Calls `cmn_err` via direct with a0=0x15, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x18608).
  Calls `cmn_err` via direct with a0=0x15, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x18628).
  Calls `cmn_err` via direct with a0=0x15, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x1863c).
  Calls `cmn_err` via direct with a0=0x15, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x18648).
  Calls `cmn_err` via direct with a0=0x15, a1=sym(.rodata)+28464, a2=?, a3=[0x92000000010004d0]:8 (`jal` at 0x1865c).
  Calls `cmn_err` via direct with a0=0x15, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x1866c).
  Calls `cmn_err` via direct with a0=0x15, a1=sym(.rodata)+28464, a2=?, a3=[0x92000000010004c8]:8, a4=[0x92000000010004d0]:8, a5=0x4 (`jal` at 0x1868c).
  Calls `part_id` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x18694).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x186a8).
  Calls `cmn_err` via direct with a0=0x10, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x186b8).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x186cc).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=?, a5=0x4 (`jal` at 0x18700).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x18754).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x187a4).
  Calls `cmn_err` via direct with a0=0x12, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x187d8).
  Calls `cmn_err` via direct with a0=0x12, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x187ec).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x18804).
  Calls `cmn_err` via direct with a0=0x14, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x18818).
  At `beq` at 0x181f0 (target 0x18208), taken when v0(=ret(check_ni_errors)) == 0 and falls through when v0(=ret(check_ni_errors)) != 0.
  At `beq` at 0x18260 (target 0x182ec), taken when (s0(?) & s5(=([sym(pi_fatal_err_cpu_b)]:8 | [sym(pi_fatal_err_cpu_a)]:8))) == 0 and falls through when (s0(?) & s5(=([sym(pi_fatal_err_cpu_b)]:8 | [sym(pi_fatal_err_cpu_a)]:8))) != 0.
  At `bne` at 0x1826c (target 0x187fc), taken when (s0(?) & a2(=[sym(pi_fatal_err_cpu_a)]:8)) != 0 and falls through when (s0(?) & a2(=[sym(pi_fatal_err_cpu_a)]:8)) == 0.
  At `bne` at 0x18274 (target 0x18814), taken when t9(?) != 0 and falls through when t9(?) == 0.
  At `bne` at 0x18290 (target 0x182c4), taken when s3(=0x400000000) < a2(=[sym(pi_err_int_pend)]:8) (unsigned) and falls through when s3(=0x400000000) >= a2(=[sym(pi_err_int_pend)]:8) (unsigned).
  At `bne` at 0x182a0 (target 0x186c8), taken when (a2(?) & s5(?)) != 0 and falls through when (a2(?) & s5(?)) == 0.
  At `beq` at 0x182bc (target 0x1829c), taken when s3(=0x400000000) >= a2(?) (unsigned) and falls through when s3(=0x400000000) < a2(?) (unsigned).
  At `bne` at 0x182d4 (target 0x187d4), taken when (a5(=[sym(pi_fatal_err_cpu_a)]:8) & s0(?)) != 0 and falls through when (a5(=[sym(pi_fatal_err_cpu_a)]:8) & s0(?)) == 0.
  At `bne` at 0x182e4 (target 0x187e8), taken when (a6(=[sym(pi_fatal_err_cpu_b)]:8) & s0(?)) != 0 and falls through when (a6(=[sym(pi_fatal_err_cpu_b)]:8) & s0(?)) == 0.
  At `bgez` at 0x182f0 (target 0x18324), taken when a7(?) >= 0 (signed) and falls through when a7(?) < 0 (signed).
  At `beq` at 0x18354 (target 0x183a4), taken when (s0(?) & t3(=one of 0x1, 0x2)) == 0 and falls through when (s0(?) & t3(=one of 0x1, 0x2)) != 0.
  At `beq` at 0x183b8 (target 0x18408), taken when (s0(?) & a3(=one of 0x40, 0x80)) == 0 and falls through when (s0(?) & a3(=one of 0x40, 0x80)) != 0.
  At `beq` at 0x1841c (target 0x18470), taken when (s0(?) & a3(=one of 0x10, 0x20)) == 0 and falls through when (s0(?) & a3(=one of 0x10, 0x20)) != 0.
  At `bne` at 0x18484 (target 0x186f8), taken when (s0(?) & a4(=one of 0x100000, 0x200000)) != 0 and falls through when (s0(?) & a4(=one of 0x100000, 0x200000)) == 0.
  At `beq` at 0x1849c (target 0x18540), taken when (s0(?) & a6(=one of 0x4, 0x8)) == 0 and falls through when (s0(?) & a6(=one of 0x4, 0x8)) != 0.
  At `beq` at 0x184c0 (target 0x1867c), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0x184d4 (target 0x184ec), taken when a1(?) == t8(=0x90) -> outside and falls through when a1(?) != t8(=0x90).
  At `beq` at 0x184dc (target 0x184f0), taken when a1(?) == a3(=0x92) and falls through when a1(?) != a3(=0x92).
  At `bne` at 0x184e8 (target 0x185a4), taken when a1(?) != a4(=0x89) and falls through when a1(?) == a4(=0x89).
  At `bne` at 0x18554 (target 0x1874c), taken when (s0(?) & t0(=one of 0x8000000, 0x10000000)) != 0 and falls through when (s0(?) & t0(=one of 0x8000000, 0x10000000)) == 0.
  At `bne` at 0x18570 (target 0x187a0), taken when (s0(?) & t1(=one of 0x2000000, 0x4000000)) != 0 and falls through when (s0(?) & t1(=one of 0x2000000, 0x4000000)) == 0.
  At `beq` at 0x185a4 (target 0x1867c), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0x185c0 (target 0x185d8), taken when (s1(=[0x92000000010004c8]:8) & 0x1) == 0 and falls through when (s1(=[0x92000000010004c8]:8) & 0x1) != 0.
  At `bgez` at 0x185d8 (target 0x185e8), taken when t3(=([0x92000000010004c8]:8 << 0x3e)) >= 0 (signed) and falls through when t3(=([0x92000000010004c8]:8 << 0x3e)) < 0 (signed).
  At `blez` at 0x1869c (target 0x186b8), taken when v0(=ret(part_id)) <= 0 (signed) and falls through when v0(=ret(part_id)) > 0 (signed).
  At `beq` at 0x186e8 (target 0x1829c), taken when s3(=0x400000000) >= a2(=[table(sym(hub_rw_err_info))+328]:8) (unsigned) and falls through when s3(=0x400000000) < a2(=[table(sym(hub_rw_err_info))+328]:8) (unsigned).
  Returns v0 = ? (`jr` at 0x1859c).

- `hubni_print_state` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x18828 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x18828-0x18974 (332 bytes).
  Stores 4 bytes from a0 to [([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8 +0x8f08 (`sc` at 0x1888c) with value ([[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8+36616] | a3).
  Calls `mutex_spintrylock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x188e0).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x188f8).
  Calls `(unknown callee)` via register with a0=a1 at entry (arg1), a1=sym(.rodata)+28464, a2=?, a3=? (`jalr` at 0x1890c).
  Calls `(unknown callee)` via register with a0=a1 at entry (arg1), a1=sym(.rodata)+28464, a2=[[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8+34330]:2, a3=? (`jalr` at 0x18924).
  Calls `show_ni_port_error` via direct with a0=[(a0 << 0x21)-7926335344140091136]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jal` at 0x18944).
  Calls `us_delay` via direct with a0=0x1, a1=ret(mutex_spintrylock), a2=?, a3=? (`jal` at 0x18954).
  At `beq` at 0x18874 (target 0x188c0), taken when a3 == at(=0x2) and falls through when a3 != at(=0x2).
  At `beql` at 0x18890 (target 0x18884), taken when a0(=([[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8+36616] | a3)) == 0 and falls through when a0(=([[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8+36616] | a3)) != 0.
  At `beq` at 0x1889c (target 0x18908), taken when (v0(=[[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8+36616]) & s7(=a3)) == 0 and falls through when (v0(=[[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3))]:8+36616]) & s7(=a3)) != 0.
  At `beq` at 0x188ec (target 0x18954), taken when v0(=ret(mutex_spintrylock)) == 0 and falls through when v0(=ret(mutex_spintrylock)) != 0.
  At `bne` at 0x18964 (target 0x188e0), taken when a1(?) != 0 and falls through when a1(?) == 0.
  Returns v0 = ? (`jr` at 0x188b8).

- `hubni_eint_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x18f1c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x18f1c-0x18f40 (36 bytes).
  Calls `hubni_error_handler` via direct with a0=sym(.rodata)+28464, a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x18f2c).
  Returns v0 = ret(hubni_error_handler); f0 = ret(hubni_error_handler) (`jr` at 0x18f38).

- `hubni_rmteint_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x18f40 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x18f40-0x18f64 (36 bytes).
  Calls `hubni_error_handler` via direct with a0=sym(.rodata)+28464, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x18f50).
  Returns v0 = ret(hubni_error_handler); f0 = ret(hubni_error_handler) (`jr` at 0x18f5c).

- `hubii_eint_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1affc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1affc-0x1b19c (416 bytes).
  Stores 8 bytes from a5 to table(0x9200000001c001f8) +0x0 (`sd` at 0x1b0d8) with value 0xffffff.
  Stores 8 bytes from a3 to table(0x9200000001c00138) +0x0 (`sd` at 0x1b114).
  Calls `check_ni_errors` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1b008).
  Calls `hubni_error_handler` via direct with a0=sym(.rodata)+28464, a1=0x1, a2=?, a3=? (`jal` at 0x1b024).
  Calls `hwgraph_info_get_LBL` via direct with a0=(a0 << 0x0), a1=sym(.rodata)+28464, a2=sp-48, a3=? (`jal` at 0x1b03c).
  Calls `hubni_error_handler_nasid [0x18d20]` via direct with a0=sym(.rodata)+28464, a1=?, a2=0x1, a3=?, a4=0x4000000000000000 (`jal` at 0x1b074).
  Calls `cleanup_remote_pi` via direct with a0=?, a1=0x7e, a2=?, a3=? (`jal` at 0x1b084).
  Calls `hubiio_crb_error_handler` via direct with a0=(a0 << 0x0), a1=?, a2=?, a3=? (`jal` at 0x1b0ac).
  Calls `hubiio_prb_error_handler` via direct with a0=(a0 << 0x0), a1=?, a2=?, a3=? (`jal` at 0x1b0b8).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+28464, a2=?, a3=sym(.rodata)+28464, a4=0x4000000000000000, a7=(entry(0x9200000001c00008) << 0x36) (`jal` at 0x1b12c).
  At `beq` at 0x1b014 (target 0x1b02c), taken when v0(=ret(check_ni_errors)) == 0 and falls through when v0(=ret(check_ni_errors)) != 0.
  At `beq` at 0x1b068 (target 0x1b094), taken when (a2(=entry(0x92000000018000a0)) & a4(=0x4000000000000000)) == 0 and falls through when (a2(=entry(0x92000000018000a0)) & a4(=0x4000000000000000)) != 0.
  At `bltz` at 0x1b0a0 (target 0x1b118), taken when a2(=(entry(0x9200000001c00008) << 0x1f)) < 0 (signed) and falls through when a2(=(entry(0x9200000001c00008) << 0x1f)) >= 0 (signed).
  At `bgez` at 0x1b118 (target 0x1b13c), taken when a7(=(entry(0x9200000001c00008) << 0x36)) >= 0 (signed) and falls through when a7(=(entry(0x9200000001c00008) << 0x36)) < 0 (signed).
  At `bgez` at 0x1b13c (target 0x1b14c), taken when t0(=(entry(0x9200000001c00008) << 0x3a)) >= 0 (signed) and falls through when t0(=(entry(0x9200000001c00008) << 0x3a)) < 0 (signed).
  At `bgez` at 0x1b14c (target 0x1b15c), taken when t1(=(entry(0x9200000001c00008) << 0x3b)) >= 0 (signed) and falls through when t1(=(entry(0x9200000001c00008) << 0x3b)) < 0 (signed).
  At `beq` at 0x1b164 (target 0x1b174), taken when (a0(=entry(0x9200000001c001e8)) & 0x1) == 0 and falls through when (a0(=entry(0x9200000001c001e8)) & 0x1) != 0.
  At `beq` at 0x1b174 (target 0x1b184), taken when t3(?) == 0 and falls through when t3(?) != 0.
  At `beq` at 0x1b184 (target 0x1b194), taken when t8(?) == 0 and falls through when t8(?) != 0.
  Returns v0 = ? (`jr` at 0x1b110).

- `print_spool_entry` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1b624 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1b624-0x1b76c (328 bytes).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+28464, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x1b64c).
  Calls `decode_crb_stat` via direct with a0=sp-96, a1=?, a2=?, a3=? (`jal` at 0x1b65c).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+28464, a1=?, a2=sym(.rodata)+28464, a3=entry(sym(pi_err_status_cmd)), a4=sym(.rodata)+28464, a5=sp-96 (`jalr` at 0x1b6a8).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+28464, a1=?, a2=?, a3=? (`jalr` at 0x1b6cc).
  Calls `sprintf` via direct with a0=sp-96, a1=sym(.rodata)+28464, a2=?, a3=? (`jal` at 0x1b6e4).
  Calls `decode_xrb_err` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x1b6f8).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+28464, a1=ret(decode_xrb_err), a2=?, a3=sp-96 (`jalr` at 0x1b734).
  At `beq` at 0x1b680 (target 0x1b760), taken when (t0(?) & 0x80) == 0 and falls through when (t0(?) & 0x80) != 0.
  At `bltz` at 0x1b688 (target 0x1b754), taken when v0(=(a0 << 0x33)) < 0 (signed) and falls through when v0(=(a0 << 0x33)) >= 0 (signed).
  At `beq` at 0x1b6d8 (target 0x1b6f4), taken when (s2(?) & 0x200) == 0 and falls through when (s2(?) & 0x200) != 0.
  At `beq` at 0x1b708 (target 0x1b71c), taken when s8(?) == 0 and falls through when s8(?) != 0.
  Returns v0 = ret(?); f0 = ret(?) (`jr` at 0x1b74c).

- `err_int_block_mask` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1b93c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1b93c-0x1b980 (68 bytes).
  Stores 8 bytes from at to one of 0x9200000001000408, 0x9200000001000410 +0x0 (`sd` at 0x1b97c).
  Returns v0 = one of 0x9200000001000408, 0x9200000001000410 (`jr` at 0x1b978).

- `err_int_unblock_mask` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1b980 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1b980-0x1b9cc (76 bytes).
  Stores 8 bytes from a3 to abs 0x9200000001000400 (`sd` at 0x1b9b4).
  Stores 8 bytes from t2 to one of 0x9200000001000408, 0x9200000001000410 +0x0 (`sd` at 0x1b9c8).
  At `beq` at 0x1b9a8 (target 0x1b9b8), taken when a1 == 0 and falls through when a1 != 0.
  Returns v0 = ? (`jr` at 0x1b9c4).

- `md_int_block` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1b9cc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1b9cc-0x1ba18 (76 bytes).
  Stores 8 bytes from at to one of 0x9200000001000408, 0x9200000001000410 +0x0 (`sd` at 0x1ba14).
  Returns v0 = one of 0x9200000001000408, 0x9200000001000410 (`jr` at 0x1ba10).

- `md_int_unblock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1ba18 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1ba18-0x1ba60 (72 bytes).
  Stores 8 bytes from at to one of 0x9200000001000408, 0x9200000001000410 +0x0 (`sd` at 0x1ba5c) with value ([one of 0x9200000001000408, 0x9200000001000410]:8 | 0x1000000).
  Returns v0 = one of 0x9200000001000408, 0x9200000001000410 (`jr` at 0x1ba58).

- `intr_stray` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1eccc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1eccc-0x1ecf4 (40 bytes).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+43384, a2=a0 at entry (arg0), a3=[-0x3bd8]:2 (`jal` at 0x1ece0).
  Returns v0 = ret(cmn_err); f0 = ret(cmn_err) (`jr` at 0x1ecec).

- `intr_init_vecblk` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1ecf4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1ecf4-0x1eea8 (436 bytes).
  Stores 8 bytes from s2 to ? (base unknown) (`sd` at 0x1ed98) with value sym(intr_stray).
  Stores 8 bytes from zero to ? (base unknown) (`sd` at 0x1eda0) with value 0x0.
  Stores 8 bytes from a1 to ? (base unknown) (`sd` at 0x1eda8).
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x1edac) with value 0x0.
  Stores 4 bytes from a4 to ? (base unknown) (`swl` at 0x1edb0) with value 0x556e7573.
  Stores 4 bytes from a4 to ? (base unknown) (`swr` at 0x1edb4) with value 0x556e7573.
  Stores 1 byte from a2 to ? (base unknown) (`sb` at 0x1edb8) with value 0x65.
  Stores 1 byte from a0 to ? (base unknown) (`sb` at 0x1edc0) with value 0x64.
  Stores 1 byte from v1 to ? (base unknown) (`sb` at 0x1edcc) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x1edd4) with value 0x0.
  Stores 2 bytes from s1 to ? (base unknown) (`sh` at 0x1edd8) with value -0x1.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x1ede4) with value 0x0.
  Stores 8 bytes from a4 to ? (base unknown) (`sd` at 0x1edfc).
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x1ee14) with value 0x0.
  Stores 4 bytes from zero to table(0x1e18) +0x0 (`sw` at 0x1ee30) with value 0x0.
  Stores 4 bytes from zero to table(0x1e1c) +0x0 (`sw` at 0x1ee4c) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x1ee54) with value 0x0.
  Calls `init_spinlock` via direct with a0=?, a1=sym(.rodata)+43384, a2=?, a3=? (`jal` at 0x1ee00).
  At `bne` at 0x1ede0 (target 0x1ed74), taken when a3(?) < 0x40 (signed) and falls through when a3(?) >= 0x40 (signed).
  At `beq` at 0x1ede8 (target 0x1ee6c), taken when s3(?) == 0 and falls through when s3(?) != 0.
  At `beq` at 0x1ee50 (target 0x1ee78), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `bne` at 0x1ee58 (target 0x1ed6c), taken when s3(?) != 0 and falls through when s3(?) == 0.
  Returns v0 = ret(init_spinlock); f0 = ret(init_spinlock) (`jr` at 0x1eea0).

- `do_intr_reserve_level` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1eea8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1eea8-0x1f0dc (564 bytes).
  Stores 4 bytes from t9 to ? (base unknown) (`sw` at 0x1efd4) with value a4.
  Stores 4 bytes from t8 to ? (base unknown) (`sw` at 0x1efe4).
  Stores 1 byte from zero to ? (base unknown) (`sb` at 0x1eff8) with value 0x0.
  Stores 4 bytes from at to ? (base unknown) (`sw` at 0x1f014).
  Stores 4 bytes from a4 to ? (base unknown) (`sw` at 0x1f028).
  Stores 1 byte from zero to ? (base unknown) (`sb` at 0x1f0a0) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x1f0a4) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x1f0a8) with value 0x0.
  Stores 4 bytes from a0 to ? (base unknown) (`sw` at 0x1f0b8).
  Stores 4 bytes from a1 to ? (base unknown) (`sw` at 0x1f0c8).
  Calls `mutex_spinlock_spl` via direct with a0=?, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1ef2c).
  Calls `strncpy` via direct with a0=?, a1=a5 at entry (arg5), a2=?, a3=? (`jal` at 0x1eff0).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1f030).
  Calls `strlen` via direct with a0=a5 at entry (arg5), a1=?, a2=?, a3=? (`jal` at 0x1f078).
  At `beq` at 0x1eef4 (target 0x1f0d4), taken when t2(=[(sym(pdaindr) + (a0 << 0x4))+8]:8) == 0 and falls through when t2(=[(sym(pdaindr) + (a0 << 0x4))+8]:8) != 0.
  At `beq` at 0x1ef08 (target 0x1ef18), taken when a1 >= 0x40 (signed) and falls through when a1 < 0x40 (signed).
  At `beq` at 0x1ef10 (target 0x1f0cc), taken when t1(?) == 0 and falls through when t1(?) != 0.
  At `bgez` at 0x1ef38 (target 0x1ef8c), taken when s0(?) >= 0 (signed) and falls through when s0(?) < 0 (signed).
  At `beq` at 0x1ef5c (target 0x1f098), taken when (t9(?) & 0x1) == 0 and falls through when (t9(?) & 0x1) != 0.
  At `bne` at 0x1ef70 (target 0x1ef4c), taken when s0(?) < 0x40 (signed) and falls through when s0(?) >= 0x40 (signed).
  At `beq` at 0x1efb4 (target 0x1f02c), taken when s2(?) == s6(=-0x1) and falls through when s2(?) != s6(=-0x1).
  At `beq` at 0x1efc8 (target 0x1f0a0), taken when s5(=a3) == 0 and falls through when s5(=a3) != 0.
  At `bne` at 0x1efe0 (target 0x1f078), taken when s4(=a5) != 0 and falls through when s4(=a5) == 0.
  At `beq` at 0x1f01c (target 0x1f0bc), taken when (s7(=a2) & 0x8) == 0 and falls through when (s7(=a2) & 0x8) != 0.
  At `beq` at 0x1f03c (target 0x1f04c), taken when s2(?) == s6(=-0x1) and falls through when s2(?) != s6(=-0x1).
  At `bne` at 0x1f088 (target 0x1efec), taken when a2(=(ret(strlen) << 0x0)) < 0x17 (signed) and falls through when a2(=(ret(strlen) << 0x0)) >= 0x17 (signed).
  Returns v0 = ? (`jr` at 0x1f070).

- `intr_reserve_level` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1f0dc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1f0dc-0x1f104 (40 bytes).
  Calls `do_intr_reserve_level [0x1eea8]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1, a4=a3 at entry (arg3), a5=a4 at entry (arg4) (`jal` at 0x1f0f0).
  Returns v0 = ret(do_intr_reserve_level); f0 = ret(do_intr_reserve_level) (`jr` at 0x1f0fc).

- `intr_unreserve_level` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1f104 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1f104-0x1f12c (40 bytes).
  Calls `do_intr_reserve_level [0x1eea8]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x0, a3=0x0, a4=0x0, a5=0x0 (`jal` at 0x1f118).
  Returns v0 = ret(do_intr_reserve_level); f0 = ret(do_intr_reserve_level) (`jr` at 0x1f124).

- `intr_get_ptrs` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1f12c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1f12c-0x1f188 (92 bytes).
  Stores 8 bytes from v0 to a3 (arg3 at entry) +0x0 (`sd` at 0x1f150) with value [(sym(pdaindr) + (a0 << 0x4))+8]:8+1440.
  Stores 8 bytes from t2 to a4 (arg4 at entry) +0x0 (`sd` at 0x1f158) with value [[(sym(pdaindr) + (a0 << 0x4))+8]:8+1456]:8.
  Stores 4 bytes from zero to a5 (arg5 at entry) +0x0 (`sw` at 0x1f15c) with value 0x0.
  Stores 4 bytes from a1 to a2 (arg2 at entry) +0x0 (`sw` at 0x1f164) with value a1.
  Stores 8 bytes from at to a3 (arg3 at entry) +0x0 (`sd` at 0x1f16c) with value [(sym(pdaindr) + (a0 << 0x4))+8]:8+1448.
  Stores 8 bytes from t9 to a4 (arg4 at entry) +0x0 (`sd` at 0x1f174) with value [[(sym(pdaindr) + (a0 << 0x4))+8]:8+1464]:8.
  Stores 4 bytes from t8 to a5 (arg5 at entry) +0x0 (`sw` at 0x1f178) with value 0x1.
  Stores 4 bytes from t3 to a2 (arg2 at entry) +0x0 (`sw` at 0x1f17c) with value a1-64.
  At `beq` at 0x1f148 (target 0x1f168), taken when a1 >= 0x40 (signed) and falls through when a1 < 0x40 (signed).
  Returns v0 = [(sym(pdaindr) + (a0 << 0x4))+8]:8+1440 (`jr` at 0x1f160).
  Returns v0 = [(sym(pdaindr) + (a0 << 0x4))+8]:8+1440 (`jr` at 0x1f180).

- `intr_connect_level` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1f188 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1f188-0x1f4a0 (792 bytes).
  Stores 8 bytes from t1 to ? (base unknown) (`sd` at 0x1f23c) with value a3.
  Stores 8 bytes from a3 to ? (base unknown) (`sd` at 0x1f25c) with value a5.
  Stores 8 bytes from v1 to ? (base unknown) (`sd` at 0x1f27c) with value a4.
  Stores 2 bytes from t8 to ? (base unknown) (`sh` at 0x1f29c) with value a2.
  Stores 4 bytes from t1 to ? (base unknown) (`sw` at 0x1f2d0).
  Stores 8 bytes from t9 to (([(sym(compact_to_nasid_node) + ([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1066]:2 + [[(sym(pdaindr) + (a0 << 0x4))+8]:8+1066]:2))]:2 << 0x21) + one of 0x9200000001800090, 0x9200000001a00090) +0x0 (`sd` at 0x1f330).
  Stores 8 bytes from a2 to ? (base unknown) (`sd` at 0x1f35c).
  Stores 4 bytes from t2 to ? (base unknown) (`sw` at 0x1f380).
  Stores 4 bytes from t2 to ? (base unknown) (`sc` at 0x1f3f0).
  Stores 2 bytes from a5 to ? (base unknown) (`sh` at 0x1f418) with value a0.
  Stores 8 bytes from a2 to ? (base unknown) (`sd` at 0x1f464).
  Calls `intr_get_ptrs [0x1f12c]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-36, a3=sp-160, a4=sp-152, a5=sp-144 (`jal` at 0x1f1bc).
  Calls `mutex_spinlock_spl` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1f1d0).
  Calls `mutex_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1f208).
  Calls `intr_thread_setup [0x2179c]` via direct with a0=?, a1=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1066]:2, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=0x200, a5=a0 at entry (arg0), a7=(((a1 << 0x3) + a1) << 0x3) (`jal` at 0x1f44c).
  At `beq` at 0x1f1fc (target 0x1f224), taken when (a1(?) & 0x2) == 0 and falls through when (a1(?) & 0x2) != 0.
  At `beq` at 0x1f224 (target 0x1f204), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0x1f3c0 (target 0x1f474), taken when at(?) == 0 and falls through when at(?) != 0.
  At `bltz` at 0x1f3c8 (target 0x1f488), taken when a7(=([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1320]:1 << 0x1e)) < 0 (signed) and falls through when a7(=([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1320]:1 << 0x1e)) >= 0 (signed).
  At `beq` at 0x1f3e0 (target 0x1f460), taken when (t2(?) & 0x100) == 0 and falls through when (t2(?) & 0x100) != 0.
  At `beql` at 0x1f3f4 (target 0x1f3e8), taken when t2(?) == 0 and falls through when t2(?) != 0.
  At `beq` at 0x1f428 (target 0x1f45c), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `bltz` at 0x1f474 (target 0x1f494), taken when a7(=([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1320]:1 << 0x1e)) < 0 (signed) and falls through when a7(=([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1320]:1 << 0x1e)) >= 0 (signed).
  Returns v0 = one of -0x1, 0x0; f0 = ret(mutex_spinunlock) (`jr` at 0x1f21c).

- `intr_disconnect_level` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1f4a0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1f4a0-0x1f674 (468 bytes).
  Stores 8 bytes from zero to ? (base unknown) (`sd` at 0x1f53c) with value 0x0.
  Stores 8 bytes from zero to ? (base unknown) (`sd` at 0x1f558) with value 0x0.
  Stores 8 bytes from zero to ? (base unknown) (`sd` at 0x1f574) with value 0x0.
  Stores 4 bytes from t9 to ? (base unknown) (`sw` at 0x1f5a0).
  Stores 8 bytes from t1 to ? (base unknown) (`sd` at 0x1f5c8).
  Stores 4 bytes from t1 to ? (base unknown) (`sw` at 0x1f5f4).
  Stores 8 bytes from s0 to table(0x9200000001800000) +0x0 (`sd` at 0x1f650).
  Calls `intr_get_ptrs [0x1f12c]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-4, a3=sp-64, a4=sp-56, a5=sp-48 (`jal` at 0x1f4c4).
  Calls `mutex_spinlock_spl` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1f4d8).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock_spl), a2=?, a3=?, a5=a1 at entry (arg1) (`jal` at 0x1f510).
  At `beq` at 0x1f508 (target 0x1f52c), taken when a2(?) == a3(=0x3) and falls through when a2(?) != a3(=0x3).
  At `bltz` at 0x1f630 (target 0x1f660), taken when t3(=([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1320]:1 << 0x1e)) < 0 (signed) and falls through when t3(=([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1320]:1 << 0x1e)) >= 0 (signed).
  Returns v0 = one of -0x1, 0x0; f0 = ret(mutex_spinunlock) (`jr` at 0x1f524).

- `do_intr_block_bit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1f674 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1f674-0x1f834 (448 bytes).
  Stores 8 bytes from t3 to ? (base unknown) (`sd` at 0x1f6e8).
  Stores 8 bytes from a7 to ? (base unknown) (`sd` at 0x1f750).
  Stores 8 bytes from a2 to ? (base unknown) (`sd` at 0x1f7dc).
  Calls `intr_get_ptrs [0x1f12c]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sp-20, a3=sp-96, a4=sp-88, a5=sp-80 (`jal` at 0x1f6a0).
  Calls `mutex_spinlock_spl` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1f6b0).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock_spl), a2=?, a3=? (`jal` at 0x1f7c0).
  At `beq` at 0x1f6dc (target 0x1f7d4), taken when s0(=a2) == 0 and falls through when s0(=a2) != 0.
  At `beq` at 0x1f724 (target 0x1f7e0), taken when (a6(=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1320]:1) & 0x1) == 0 and falls through when (a6(=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1320]:1) & 0x1) != 0.
  At `beq` at 0x1f72c (target 0x1f804), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x1f74c (target 0x1f7b4), taken when s0(=a2) == 0 and falls through when s0(=a2) != 0.
  At `beq` at 0x1f768 (target 0x1f7b4), taken when 0 >= t1(?) (unsigned) and falls through when 0 < t1(?) (unsigned).
  At `beq` at 0x1f780 (target 0x1f7b4), taken when 0 >= a5(?) (unsigned) and falls through when 0 < a5(?) (unsigned).
  At `beq` at 0x1f798 (target 0x1f7b4), taken when 0 >= a6(?) (unsigned) and falls through when 0 < a6(?) (unsigned).
  At `bne` at 0x1f7ac (target 0x1f770), taken when 0 < a7(?) (unsigned) and falls through when 0 >= a7(?) (unsigned).
  At `beq` at 0x1f7e0 (target 0x1f81c), taken when v0(?) == 0 and falls through when v0(?) != 0.
  Returns v0 = ret(mutex_spinunlock); f0 = ret(mutex_spinunlock) (`jr` at 0x1f7cc).

- `intr_block_bit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1f834 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1f834-0x1f850 (28 bytes).
  Calls `do_intr_block_bit` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=a3 at entry (arg3) (`jal` at 0x1f83c).
  Returns v0 = ret(do_intr_block_bit); f0 = ret(do_intr_block_bit) (`jr` at 0x1f848).

- `intr_unblock_bit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1f850 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1f850-0x1f86c (28 bytes).
  Calls `do_intr_block_bit` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x0, a3=a3 at entry (arg3) (`jal` at 0x1f858).
  Returns v0 = ret(do_intr_block_bit); f0 = ret(do_intr_block_bit) (`jr` at 0x1f864).

- `do_intr_cpu_choose` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1f86c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1f86c-0x1f9cc (352 bytes).
  Calls `cnode_slice_to_cpuid` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x1f8d0).
  Calls `cpu_enabled` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1f8e8).
  At `beq` at 0x1f8c8 (target 0x1f998), taken when s0(?) >= 0x4 (signed) and falls through when s0(?) < 0x4 (signed).
  At `beq` at 0x1f8e0 (target 0x1f8c0), taken when s1(?) == s4(=-0x1) and falls through when s1(?) != s4(=-0x1).
  At `beq` at 0x1f8f0 (target 0x1f8c0), taken when v0(=ret(cpu_enabled)) == 0 and falls through when v0(=ret(cpu_enabled)) != 0.
  At `bne` at 0x1f908 (target 0x1f8c0), taken when (t8(=[[table(sym(pdaindr))+8]:8+72]) & 0x80) != 0 and falls through when (t8(=[[table(sym(pdaindr))+8]:8+72]) & 0x80) == 0.
  At `beq` at 0x1f910 (target 0x1f92c), taken when s6(=a1) == s4(=-0x1) and falls through when s6(=a1) != s4(=-0x1).
  At `bne` at 0x1f924 (target 0x1f8c0), taken when s6(=a1) != a1(?) and falls through when s6(=a1) == a1(?).
  At `beq` at 0x1f984 (target 0x1f8c0), taken when a0(?) >= s8(?) (signed) and falls through when a0(?) < s8(?) (signed).
  Returns v0 = ? (`jr` at 0x1f9c4).

- `intr_cpu_choose_from_node` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1f9cc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1f9cc-0x1f9e8 (28 bytes).
  Calls `do_intr_cpu_choose [0x1f86c]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1f9d4).
  Returns v0 = ret(do_intr_cpu_choose); f0 = ret(do_intr_cpu_choose) (`jr` at 0x1f9e0).

- `intr_target_from_desc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1fae4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1fae4-0x1fb9c (184 bytes).
  Calls `device_desc_intr_target_get` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1faf4).
  Calls `cpuvertex_to_cpuid` via direct with a0=ret(device_desc_intr_target_get), a1=?, a2=?, a3=? (`jal` at 0x1fb0c).
  Calls `subnodevertex_to_subnode [0x1f9e8]` via direct with a0=ret(device_desc_intr_target_get), a1=sp-48, a2=sp-44, a3=? (`jal` at 0x1fb44).
  Calls `master_node_get` via direct with a0=ret(device_desc_intr_target_get), a1=?, a2=?, a3=? (`jal` at 0x1fb54).
  Calls `intr_cpu_choose_from_node [0x1f9cc]` via direct with a0=?, a1=a1 at entry (arg1), a2=?, a3=?, a4=ret(master_node_get) (`jal` at 0x1fb74).
  Calls `intr_cpu_choose_from_node [0x1f9cc]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1fb88).
  At `beq` at 0x1fb04 (target 0x1fb24), taken when at(=-0x1) == v0(=ret(device_desc_intr_target_get)) -> outside and falls through when at(=-0x1) != v0(=ret(device_desc_intr_target_get)).
  At `beq` at 0x1fb20 (target 0x1fb3c), taken when v0(=-0x1) == s0(?) and falls through when v0(=-0x1) != s0(?).
  At `beq` at 0x1fb4c (target 0x1fb88), taken when v0(=ret(subnodevertex_to_subnode)) == 0 and falls through when v0(=ret(subnodevertex_to_subnode)) != 0.
  At `beq` at 0x1fb68 (target 0x1fb24), taken when a0(?) == t8(=-0x1) -> outside and falls through when a0(?) != t8(=-0x1).
  Returns v0 = ? (`jr` at 0x1fb34).

- `intr_cnode_seen` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1fb9c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1fb9c-0x1fbdc (64 bytes).
  At `blez` at 0x1fba4 (target 0x1fbcc), taken when a6(=[a2]) <= 0 (signed) and falls through when a6(=[a2]) > 0 (signed).
  At `beq` at 0x1fbbc (target 0x1fbd4), taken when at(?) == a0 and falls through when at(?) != a0.
  At `bne` at 0x1fbc4 (target 0x1fbb0), taken when a5(?) != 0 and falls through when a5(?) == 0.
  Returns v0 = a1 (`jr` at 0x1fbcc).
  Returns v0 = 0x0 (`jr` at 0x1fbd4).

- `intr_bit_reserve_test` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1fbdc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1fbdc-0x1fc84 (168 bytes).
  Stores 4 bytes from v0 to a7 (arg7 at entry) +0x0 (`sw` at 0x1fc60) with value ret(do_intr_reserve_level).
  Calls `intr_cpu_choose_from_node [0x1f9cc]` via direct with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1fc14).
  Calls `do_intr_reserve_level [0x1eea8]` via direct with a0=?, a1=a3 at entry (arg3), a2=a4 at entry (arg4), a3=0x1, a4=a5 at entry (arg5), a5=a6 at entry (arg6) (`jal` at 0x1fc50).
  At `beq` at 0x1fc0c (target 0x1fc38), taken when a2 == t9(=-0x1) and falls through when a2 != t9(=-0x1).
  At `beq` at 0x1fc38 (target 0x1fc6c), taken when s0(?) == t9(=-0x1) and falls through when s0(?) != t9(=-0x1).
  At `bltz` at 0x1fc5c (target 0x1fc6c), taken when v0(=ret(do_intr_reserve_level)) < 0 (signed) and falls through when v0(=ret(do_intr_reserve_level)) >= 0 (signed).
  Returns v0 = ? (`jr` at 0x1fc7c).

- `intr_heuristic` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x1fc84 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x1fc84-0x20058 (980 bytes).
  Stores 2 bytes from a2 to ? (base unknown) (`sh` at 0x1ff14).
  Calls `physmem_maxradius` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x1fcc8).
  Calls `hwgraph_edge_get` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+43384, a2=sp-380, a3=? (`jal` at 0x1fce4).
  Calls `intr_target_from_desc` via direct with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jal` at 0x1fd00).
  Calls `intr_bit_reserve_test [0x1fbdc]` via direct with a0=ret(intr_target_from_desc), a1=?, a2=-0x1, a3=a2 at entry (arg2), a4=a3 at entry (arg3), a5=a4 at entry (arg4), a6=a5 at entry (arg5), a7=a6 at entry (arg6) (`jal` at 0x1fd24).
  Calls `master_node_get` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x1fd9c).
  Calls `intr_bit_reserve_test [0x1fbdc]` via direct with a0=-0x1, a1=?, a2=ret(master_node_get), a3=a2 at entry (arg2), a4=a3 at entry (arg3), a5=a4 at entry (arg4), a6=a5 at entry (arg5), a7=a6 at entry (arg6) (`jal` at 0x1fdc0).
  Calls `hwgraph_fastinfo_get` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1fe08).
  Calls `hwgraph_vertex_unref` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x1fe14).
  Calls `intr_unreserve_level` via direct with a0=?, a1=[a6], a2=?, a3=? (`jal` at 0x1fe80).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+43384, a2=a4 at entry (arg4), a3=a4 at entry (arg4) (`jal` at 0x1fe94).
  Calls `physmem_select_neighbor_node` via direct with a0=?, a1=?, a2=sp-120, a3=sym(intr_cnode_seen), a4=sp-376, a5=sp-384 (`jal` at 0x1fed4).
  Calls `intr_bit_reserve_test [0x1fbdc]` via direct with a0=-0x1, a1=?, a2=?, a3=a2 at entry (arg2), a4=a3 at entry (arg3), a5=a4 at entry (arg4), a6=a5 at entry (arg5), a7=a6 at entry (arg6) (`jal` at 0x1ff18).
  Calls `intr_unreserve_level` via direct with a0=?, a1=[a6], a2=?, a3=? (`jal` at 0x1ff58).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+43384, a2=a4 at entry (arg4), a3=a4 at entry (arg4) (`jal` at 0x1ff84).
  Calls `intr_unreserve_level` via direct with a0=?, a1=[a6], a2=?, a3=? (`jal` at 0x1ff90).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+43384, a2=a4 at entry (arg4), a3=a4 at entry (arg4) (`jal` at 0x1ffb0).
  Calls `intr_bit_reserve_test [0x1fbdc]` via direct with a0=-0x1, a1=?, a2=[[(sym(pdaindr) + ([sym(master_procid)]:2 << 0x4))+8]:8+1066]:2, a3=a2 at entry (arg2), a4=a3 at entry (arg3), a5=a4 at entry (arg4), a6=a5 at entry (arg5), a7=a6 at entry (arg6) (`jal` at 0x1ffe8).
  Calls `intr_unreserve_level` via direct with a0=?, a1=[a6], a2=?, a3=? (`jal` at 0x20030).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+43384, a2=a4 at entry (arg4), a3=a4 at entry (arg4) (`jal` at 0x20048).
  At `beq` at 0x1fcec (target 0x1fe08), taken when v0(=ret(hwgraph_edge_get)) == 0 and falls through when v0(=ret(hwgraph_edge_get)) != 0.
  At `beq` at 0x1fcf8 (target 0x1fd98), taken when s7(=a1) == 0 and falls through when s7(=a1) != 0.
  At `beq` at 0x1fd34 (target 0x1fd98), taken when s7(?) == s3(=-0x1) and falls through when s7(?) != s3(=-0x1).
  At `beq` at 0x1fd3c (target 0x1fd68), taken when s0(?) == s3(=-0x1) and falls through when s0(?) != s3(=-0x1).
  At `bne` at 0x1fd60 (target 0x1ff70), taken when s0(?) != t8(?) and falls through when s0(?) == t8(?).
  At `beq` at 0x1fdd0 (target 0x1fe8c), taken when a0(?) == s3(=-0x1) and falls through when a0(?) != s3(=-0x1).
  At `beq` at 0x1fdd8 (target 0x1fe00), taken when s0(?) == s3(=-0x1) and falls through when s0(?) != s3(=-0x1).
  At `bne` at 0x1fdf8 (target 0x1fe80), taken when s0(?) != a1(?) and falls through when s0(?) == a1(?).
  At `beq` at 0x1fe1c (target 0x1fe70), taken when s0(=ret(hwgraph_fastinfo_get)) == 0 and falls through when s0(=ret(hwgraph_fastinfo_get)) != 0.
  At `beq` at 0x1fe30 (target 0x1fe40), taken when a1(=[ret(hwgraph_fastinfo_get)+114]:2) == a3(=0x1) and falls through when a1(=[ret(hwgraph_fastinfo_get)+114]:2) != a3(=0x1).
  At `bne` at 0x1fe38 (target 0x1fcf8), taken when a1(=[ret(hwgraph_fastinfo_get)+114]:2) != 0 and falls through when a1(=[ret(hwgraph_fastinfo_get)+114]:2) == 0.
  At `beq` at 0x1fe44 (target 0x1fe78), taken when a1(=[ret(hwgraph_fastinfo_get)+2096]:8) == 0 and falls through when a1(=[ret(hwgraph_fastinfo_get)+2096]:8) != 0.
  At `blez` at 0x1fea4 (target 0x1ffa0), taken when s8(?) <= 0 (signed) and falls through when s8(?) > 0 (signed).
  At `bne` at 0x1febc (target 0x1ffa0), taken when t9(?) != 0 and falls through when t9(?) == 0.
  At `beq` at 0x1fedc (target 0x1feb4), taken when v0(=ret(physmem_select_neighbor_node)) == 0 and falls through when v0(=ret(physmem_select_neighbor_node)) != 0.
  At `beq` at 0x1ff28 (target 0x1febc), taken when a0(?) == s3(=-0x1) and falls through when a0(?) != s3(=-0x1).
  At `beq` at 0x1ff30 (target 0x1ff68), taken when s0(?) == s3(=-0x1) and falls through when s0(?) != s3(=-0x1).
  At `beq` at 0x1ff50 (target 0x1ff68), taken when s0(?) == a1(?) and falls through when s0(?) != a1(?).
  At `beq` at 0x1fff8 (target 0x20038), taken when a0(?) == s3(=-0x1) and falls through when a0(?) != s3(=-0x1).
  At `beq` at 0x20000 (target 0x20028), taken when s0(?) == s3(=-0x1) and falls through when s0(?) != s3(=-0x1).
  At `bne` at 0x20020 (target 0x20030), taken when s0(?) != a1(?) and falls through when s0(?) == a1(?).
  Returns v0 = ? (`jr` at 0x1fd90).

- `cause_intr_connect` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x20058 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x20058-0x200a0 (72 bytes).
  Stores 4 bytes from a2 to (sym(cause_intr_tbl) + (a0 << 0x4)) +0x8 (`sw` at 0x20084) with value a2.
  Stores 8 bytes from a1 to (sym(cause_intr_tbl) + (a0 << 0x4)) +0x0 (`sd` at 0x20088) with value a1.
  At `bltz` at 0x2005c (target 0x20098), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  At `beq` at 0x2006c (target 0x20098), taken when a0 >= 0x8 (signed) and falls through when a0 < 0x8 (signed).
  At `beq` at 0x20074 (target 0x20098), taken when a0 == v0(=0x2) and falls through when a0 != v0(=0x2).
  At `beq` at 0x2007c (target 0x20098), taken when a0 == v0(=0x3) and falls through when a0 != v0(=0x3).
  Returns v0 = 0x0 (`jr` at 0x20090).
  Returns v0 = -0x1 (`jr` at 0x20098).

- `cause_intr_disconnect` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x200a0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x200a0-0x200e0 (64 bytes).
  Stores 8 bytes from zero to (sym(cause_intr_tbl) + (a0 << 0x4)) +0x0 (`sd` at 0x200d0) with value 0x0.
  Stores 4 bytes from zero to (sym(cause_intr_tbl) + (a0 << 0x4)) +0x8 (`sw` at 0x200d4) with value 0x0.
  At `bltz` at 0x200a4 (target 0x200c8), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  At `beq` at 0x200b4 (target 0x200c8), taken when a0 >= 0x8 (signed) and falls through when a0 < 0x8 (signed).
  At `bne` at 0x200c0 (target 0x200d0), taken when a6(=[(sym(cause_intr_tbl) + (a0 << 0x4))]:8) != 0 and falls through when a6(=[(sym(cause_intr_tbl) + (a0 << 0x4))]:8) == 0.
  Returns v0 = -0x1 (`jr` at 0x200c8).
  Returns v0 = 0x0 (`jr` at 0x200d8).

- `nointr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x200e0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x200e0-0x200f0 (16 bytes).
  Stores 4 bytes from at to sym(bad_intr_count) +0x0 (`sw` at 0x200ec) with value [sym(bad_intr_count)]+1.
  Returns v0 = ? (`jr` at 0x200e8).

- `cpuintr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x20710 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x20710-0x20820 (272 bytes).
  Stores 8 bytes from a1 to abs 0x9200000001000090 (`sd` at 0x20754).
  Calls `bcopy` via direct with a0=a1 at entry (arg1), a1=?, a2=0x168, a3=?, a4=0x9600000000000000, a5=0xffffffffff (`jal` at 0x207b0).
  Calls `doacvec` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x207b8).
  Calls `doactions` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x207c0).
  Calls `log_tstamp_event` via direct with a0=0x71, a1=0x0, a2=0x0, a3=0x0, a4=0x0 (`jal` at 0x207f0).
  Calls `log_tstamp_event` via direct with a0=0x65, a1=0x71, a2=0x0, a3=0x0, a4=0x0 (`jal` at 0x20810).
  At `bne` at 0x20724 (target 0x207e0), taken when (at(=[-0x3d80]:8) & 0x20) != 0 and falls through when (at(=[-0x3d80]:8) & 0x20) == 0.
  At `beq` at 0x20760 (target 0x207b8), taken when v0(=[-0x3f80]:1) == 0 and falls through when v0(=[-0x3f80]:1) != 0.
  At `beq` at 0x20768 (target 0x207b8), taken when a3(=[sym(nmied)]) == 0 and falls through when a3(=[sym(nmied)]) != 0.
  At `bne` at 0x207d0 (target 0x20800), taken when (a2(=[-0x3d80]:8) & 0x20) != 0 and falls through when (a2(=[-0x3d80]:8) & 0x20) == 0.
  Returns v0 = ? (`jr` at 0x207d8).

- `install_cpuintr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x20820 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x20820-0x20884 (100 bytes).
  Calls `intr_connect_level` via direct with a0=a0 at entry (arg0), a1=?, a2=0x0, a3=sym(cpuintr), a4=0x0, a5=0x0 (`jal` at 0x20854).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+43384, a2=?, a3=? (`jal` at 0x20874).
  At `bne` at 0x2085c (target 0x2086c), taken when v0(=ret(intr_connect_level)) != 0 and falls through when v0(=ret(intr_connect_level)) == 0.
  Returns v0 = ? (`jr` at 0x20864).

- `dbgintr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x20884 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x20884-0x208d4 (80 bytes).
  Stores 8 bytes from a1 to abs 0x9200000001000090 (`sd` at 0x208b8).
  Calls `debug` via direct with a0=sym(.rodata)+43384, a1=?, a2=0x9200000001000090, a3=a3 at entry (arg3) (`jal` at 0x208c0).
  Returns v0 = ret(debug); f0 = ret(debug) (`jr` at 0x208cc).

- `install_dbgintr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x208d4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x208d4-0x20988 (180 bytes).
  Calls `intr_reserve_level` via direct with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1852], a4=sym(.rodata)+43384 (`jal` at 0x20914).
  Calls `intr_connect_level` via direct with a0=a0 at entry (arg0), a1=?, a2=0x0, a3=sym(dbgintr), a4=0x0, a5=0x0 (`jal` at 0x20934).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+43384, a2=?, a3=? (`jal` at 0x20960).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+43384, a2=?, a3=? (`jal` at 0x20978).
  At `bne` at 0x2091c (target 0x20954), taken when v0(=ret(intr_reserve_level)) != s0(?) and falls through when v0(=ret(intr_reserve_level)) == s0(?).
  At `bne` at 0x20940 (target 0x20970), taken when v0(=ret(intr_connect_level)) != 0 and falls through when v0(=ret(intr_connect_level)) == 0.
  Returns v0 = ? (`jr` at 0x2094c).

- `tlbintr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x20988 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x20988-0x209d0 (72 bytes).
  Stores 8 bytes from v0 to abs 0x9200000001000090 (`sd` at 0x209b8).
  Calls `tlbflush_rand` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x209bc).
  Returns v0 = ret(tlbflush_rand); f0 = ret(tlbflush_rand) (`jr` at 0x209c8).

- `install_tlbintr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x209d0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x209d0-0x20a84 (180 bytes).
  Calls `intr_reserve_level` via direct with a0=a0 at entry (arg0), a1=?, a2=0x1, a3=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1852], a4=sym(.rodata)+43384 (`jal` at 0x20a10).
  Calls `intr_connect_level` via direct with a0=a0 at entry (arg0), a1=?, a2=0x0, a3=sym(tlbintr), a4=0x0, a5=0x0 (`jal` at 0x20a34).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+43384, a2=?, a3=? (`jal` at 0x20a5c).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+43384, a2=?, a3=? (`jal` at 0x20a74).
  At `bne` at 0x20a18 (target 0x20a54), taken when v0(=ret(intr_reserve_level)) != s0(?) and falls through when v0(=ret(intr_reserve_level)) == s0(?).
  At `bne` at 0x20a40 (target 0x20a6c), taken when v0(=ret(intr_connect_level)) != 0 and falls through when v0(=ret(intr_connect_level)) == 0.
  Returns v0 = ? (`jr` at 0x20a4c).

- `install_gfxintr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x20c08 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x20c08-0x20c74 (108 bytes).
  Calls `intr_connect_level` via direct with a0=a0 at entry (arg0), a1=?, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a3 at entry (arg3), a5=0x0 (`jal` at 0x20c44).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+43384, a2=?, a3=? (`jal` at 0x20c64).
  At `bne` at 0x20c4c (target 0x20c5c), taken when v0(=ret(intr_connect_level)) != 0 and falls through when v0(=ret(intr_connect_level)) == 0.
  Returns v0 = ? (`jr` at 0x20c54).

- `intr_reserve_hardwired` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x20d84 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x20d84-0x20ee0 (348 bytes).
  Stores 1 byte from zero to ? (base unknown) (`sb` at 0x20dd0) with value 0x0.
  Stores 1 byte from a2 to ? (base unknown) (`sb` at 0x20e8c) with value 0x1.
  Calls `cnodetocpu` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x20d98).
  Calls `intr_reserve_level` via direct with a0=?, a1=?, a2=?, a3=0x0 (`jal` at 0x20dec).
  Calls `cpu_enabled` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x20e38).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+43384, a2=?, a3=? (`jal` at 0x20ec8).
  At `beq` at 0x20db8 (target 0x20ea0), taken when at(=-0x1) == s0(?) and falls through when at(=-0x1) != s0(?).
  At `bne` at 0x20dcc (target 0x20dc0), taken when a0(?) < 0x2 (signed) and falls through when a0(?) >= 0x2 (signed).
  At `bne` at 0x20df4 (target 0x20ec0), taken when v0(=ret(intr_reserve_level)) != s2(?) and falls through when v0(=ret(intr_reserve_level)) == s2(?).
  At `bne` at 0x20e14 (target 0x20ddc), taken when a1(?) != a7(=-0x1) and falls through when a1(?) == a7(=-0x1).
  At `beq` at 0x20e30 (target 0x20ea0), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `beq` at 0x20e40 (target 0x20ea0), taken when v0(=ret(cpu_enabled)) == 0 and falls through when v0(=ret(cpu_enabled)) != 0.
  At `bne` at 0x20e58 (target 0x20ea0), taken when t9(=[[table(sym(pdaindr))+8]:8+1066]:2) != s3(=a0) and falls through when t9(=[[table(sym(pdaindr))+8]:8+1066]:2) == s3(=a0).
  At `bne` at 0x20e74 (target 0x20e1c), taken when a2(?) != 0 and falls through when a2(?) == 0.
  At `bne` at 0x20e90 (target 0x20ddc), taken when a1(=[sym(hardwired_intr)]:1) != a5(=-0x1) and falls through when a1(=[sym(hardwired_intr)]:1) == a5(=-0x1).
  Returns v0 = ? (`jr` at 0x20eb8).

- `intr_clear_bits` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x20ee0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x20ee0-0x20f58 (120 bytes).
  Stores 8 bytes from a2 to abs 0x9200000001000090 (`sd` at 0x20f1c).
  Stores 8 bytes from a2 to abs 0x9200000001000090 (`sd` at 0x20f40).
  At `beq` at 0x20ef8 (target 0x20f50), taken when at(=[a1]:8) == 0 and falls through when at(=[a1]:8) != 0.
  At `beq` at 0x20f14 (target 0x20f24), taken when (v0(=[a1]:8) & v1(?)) == 0 and falls through when (v0(=[a1]:8) & v1(?)) != 0.
  At `beq` at 0x20f24 (target 0x20f50), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0x20f38 (target 0x20f48), taken when (a5(=[a1]:8) & a7(?)) == 0 and falls through when (a5(=[a1]:8) & a7(?)) != 0.
  At `bne` at 0x20f48 (target 0x20f00), taken when a5(?) != 0 and falls through when a5(?) == 0.
  Returns v0 = ? (`jr` at 0x20f50).

- `intr_clear_all` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x20f58 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x20f58-0x21094 (316 bytes).
  Stores 8 bytes from zero to ((a0 << 0x21) + one of 0x92000000018000a8, 0x9200000001a000a8) +0x0 (`sd` at 0x2100c) with value 0x0.
  Stores 8 bytes from zero to ((a0 << 0x21) + one of 0x92000000018000b8, 0x9200000001a000b8) +0x0 (`sd` at 0x21018) with value 0x0.
  Stores 8 bytes from zero to ((a0 << 0x21) + one of 0x92000000018000b0, 0x9200000001a000b0) +0x0 (`sd` at 0x21024) with value 0x0.
  Stores 8 bytes from zero to ((a0 << 0x21) + one of 0x92000000018000c0, 0x9200000001a000c0) +0x0 (`sd` at 0x21030) with value 0x0.
  Calls `intr_clear_bits [0x20ee0]` via direct with a0=a0 at entry (arg0), a1=((a0 << 0x21) + one of 0x9200000001800098, 0x9200000001a00098), a2=0x0, a3=sym(.rodata)+43384, a4=((a0 << 0x21) + one of 0x92000000018000b0, 0x9200000001a000b0), a5=((a0 << 0x21) + one of 0x92000000018000b8, 0x9200000001a000b8) (`jal` at 0x2102c).
  Calls `intr_clear_bits [0x20ee0]` via direct with a0=a0 at entry (arg0), a1=((a0 << 0x21) + one of 0x92000000018000a0, 0x9200000001a000a0), a2=0x40, a3=sym(.rodata)+43384 (`jal` at 0x2104c).
  At `bne` at 0x2105c (target 0x20fac), taken when s0(?) < 0x2 (signed) and falls through when s0(?) >= 0x2 (signed).
  Returns v0 = ret(intr_clear_bits); f0 = ret(intr_clear_bits) (`jr` at 0x2108c).

- `intr_dumpvec` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21254 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21254-0x215a0 (844 bytes).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+43384, a1=a0 at entry (arg0), a2=?, a3=?, a5=one of 0x98, 0xa0, 0x200098, 0x2000a0 (`jalr` at 0x213c4).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+43384, a1=?, a2=?, a3=? (`jalr` at 0x213dc).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+43384, a1=?, a2=?, a3=? (`jalr` at 0x213f0).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+43384, a1=?, a2=?, a3=? (`jalr` at 0x21404).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+43384, a1=?, a2=?, a3=? (`jalr` at 0x21414).
  Calls `dump_vector [0x21094]` via direct with a0=?, a1=?, a2=?, a3=?, a6=a1 at entry (arg1) (`jal` at 0x21450).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+43384, a1=?, a2=?, a3=? (`jalr` at 0x214a8).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+43384, a1=?, a2=?, a3=? (`jalr` at 0x21560).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+43384, a1=a0 at entry (arg0), a2=a0 at entry (arg0), a3=a3 at entry (arg3) (`jalr` at 0x21578).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+43384, a1=a0 at entry (arg0), a2=a0 at entry (arg0), a3=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a4=(a0 + a0) (`jalr` at 0x21590).
  At `bltz` at 0x21288 (target 0x21570), taken when a0 < 0 (signed) and falls through when a0 >= 0 (signed).
  At `beq` at 0x21298 (target 0x21570), taken when a0 >= at(=[sym(numnodes)]) (signed) and falls through when a0 < at(=[sym(numnodes)]) (signed).
  At `beq` at 0x212b4 (target 0x21588), taken when a3(=[(sym(compact_to_nasid_node) + (a0 + a0))]:2) == v0(=-0x1) and falls through when a3(=[(sym(compact_to_nasid_node) + (a0 + a0))]:2) != v0(=-0x1).
  At `beq` at 0x2132c (target 0x21518), taken when s7(?) == 0 and falls through when s7(?) != 0.
  At `beq` at 0x2133c (target 0x21524), taken when s6(?) == 0 and falls through when s6(?) != 0.
  At `beq` at 0x21360 (target 0x21530), taken when s6(?) == 0 and falls through when s6(?) != 0.
  At `beq` at 0x21384 (target 0x21540), taken when s6(?) == 0 and falls through when s6(?) != 0.
  At `beq` at 0x213a4 (target 0x21550), taken when s6(?) == 0 and falls through when s6(?) != 0.
  At `beq` at 0x213d0 (target 0x21560), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0x21460 (target 0x214a4), taken when s0(?) >= 0x40 (signed) and falls through when s0(?) < 0x40 (signed).
  At `bne` at 0x21484 (target 0x2142c), taken when (a7(?) & 0x1) != 0 and falls through when (a7(?) & 0x1) == 0.
  At `bne` at 0x2148c (target 0x2142c), taken when a6(?) != 0 and falls through when a6(?) == 0.
  At `bne` at 0x2149c (target 0x2146c), taken when s0(?) < 0x40 (signed) and falls through when s0(?) >= 0x40 (signed).
  At `bne` at 0x214c4 (target 0x2132c), taken when s7(?) < 0x2 (signed) and falls through when s7(?) >= 0x2 (signed).
  At `bne` at 0x214e0 (target 0x21304), taken when s6(?) < 0x2 (signed) and falls through when s6(?) >= 0x2 (signed).
  Returns v0 = ret(?); f0 = ret(?) (`jr` at 0x21510).

- `intpend0_intrd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x216ec (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x216ec-0x21720 (52 bytes).
  Calls `(unknown callee)` via register with a0=[a0+16]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x21700).
  Calls `ipsema` via direct with a0=a0+32, a1=?, a2=?, a3=? (`jal` at 0x21708).
  Returns v0 = ret(ipsema); f0 = ret(ipsema) (`jr` at 0x21718).

- `intpend0_intrd_start` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21720 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21720-0x2179c (124 bytes).
  Stores 4 bytes from a4 to a0 (arg0 at entry) +0x18 (`sc` at 0x21778) with value ([a0+24] | 0x400).
  Calls `setmustrun` via direct with a0=[a0+64]:2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x21730).
  Calls `xthread_set_func` via direct with a0=[-0x3fe0]:8, a1=sym(intpend0_intrd), a2=a0 at entry (arg0), a3=? (`jal` at 0x21740).
  Calls `fetch_kname` via direct with a0=[a0]:8, a1=sp-32, a2=?, a3=? (`jal` at 0x2174c).
  Calls `strncpy` via direct with a0=[-0x3fe0]:8+848, a1=ret(fetch_kname), a2=0x10, a3=? (`jal` at 0x21760).
  Calls `ipsema` via direct with a0=a0+32, a1=[a0+24], a2=a0+24, a3=0x400, a4=([a0+24] | 0x400) (`jal` at 0x21784).
  At `beql` at 0x2177c (target 0x21770), taken when a4(=([a0+24] | 0x400)) == 0 and falls through when a4(=([a0+24] | 0x400)) != 0.
  Returns v0 = ret(ipsema); f0 = ret(ipsema) (`jr` at 0x21794).

- `intr_thread_setup` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2179c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2179c-0x217f8 (92 bytes).
  Calls `sprintf` via direct with a0=sp-64, a1=sym(.rodata)+43384, a2=a1 at entry (arg1), a3=a2 at entry (arg2) (`jal` at 0x217c8).
  Calls `xthread_setup` via direct with a0=sp-64, a1=a3 at entry (arg3), a2=a0+24, a3=sym(intpend0_intrd_start), a4=a0 at entry (arg0) (`jal` at 0x217e0).
  Returns v0 = ret(xthread_setup); f0 = ret(xthread_setup) (`jr` at 0x217f0).

- `splhintr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21dec (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21dec-0x21e04 (24 bytes).
  Returns v0 = ? (`jr` at 0x21dfc).

- `delay_for_intr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x21f10 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x21f10-0x21f18 (8 bytes).
  Returns v0 = ? (`jr` at 0x21f10).

- `hub_intr_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x227a4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x227a4-0x227ac (8 bytes).
  Returns v0 = ? (`jr` at 0x227a4).

- `do_hub_intr_alloc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22800 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22800-0x22a08 (520 bytes).
  Stores 4 bytes from s2 to ret(kmem_alloc_node) +0x0 (`sw` at 0x22918) with value a0.
  Stores 1 byte from a1 to ret(kmem_alloc_node) +0x5 (`sb` at 0x22930).
  Stores 8 bytes from v0 to ret(kmem_alloc_node) +0x8 (`sd` at 0x22944) with value table(0x800001800000).
  Stores 1 byte from v0 to ret(kmem_alloc_node) +0x4 (`sb` at 0x22958) with value ret(xwidget_info_masterid_get).
  Stores 4 bytes from s4 to ret(kmem_alloc_node) +0x20 (`sw` at 0x2295c).
  Stores 2 bytes from a3 to ret(kmem_alloc_node) +0x24 (`sh` at 0x22964).
  Stores 4 bytes from a2 to ret(kmem_alloc_node) +0x2c (`sw` at 0x22974) with value 0x1.
  Stores 4 bytes from a1 to ret(kmem_alloc_node) +0x28 (`sw` at 0x2297c).
  Stores 4 bytes from s2 to ret(kmem_alloc_node) +0x0 (`sw` at 0x22a04) with value a0.
  Calls `device_desc_default_get` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x22830).
  Calls `device_desc_intr_name_get` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x22860).
  Calls `device_desc_intr_swlevel_get` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2286c).
  Calls `intr_heuristic` via direct with a0=a0 at entry (arg0), a1=?, a2=[sym(allocate_my_bit)], a3=?, a4=a2 at entry (arg2), a6=sp-92 (`jal` at 0x228a0).
  Calls `kmem_alloc_node` via direct with a0=0x30, a1=0x1, a2=[[table(sym(pdaindr))+8]:8+1066]:2, a3=? (`jal` at 0x22908).
  Calls `xwidget_info_get` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x22940).
  Calls `xwidget_info_masterid_get` via direct with a0=ret(xwidget_info_get), a1=?, a2=?, a3=? (`jal` at 0x22950).
  Calls `hub_device_desc_update [0x227ac]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x22980).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+45112, a2=a2 at entry (arg2), a3=? (`jal` at 0x229dc).
  Calls `assfail` via direct with a0=sym(.rodata)+45112, a1=sym(.rodata)+45112, a2=0x314, a3=? (`jal` at 0x229f8).
  At `bne` at 0x22828 (target 0x22860), taken when a1 != 0 and falls through when a1 == 0.
  At `bne` at 0x2283c (target 0x22860), taken when v0(=ret(device_desc_default_get)) != 0 and falls through when v0(=ret(device_desc_default_get)) == 0.
  At `beq` at 0x22884 (target 0x229ac), taken when (a0(?) & 0x1) == 0 and falls through when (a0(?) & 0x1) != 0.
  At `beq` at 0x228b4 (target 0x229d0), taken when s3(?) == v1(=-0x1) and falls through when s3(?) != v1(=-0x1).
  At `beq` at 0x22910 (target 0x229ec), taken when v0(=ret(kmem_alloc_node)) == 0 and falls through when v0(=ret(kmem_alloc_node)) != 0.
  At `beq` at 0x22948 (target 0x2295c), taken when v0(=ret(xwidget_info_get)) == 0 and falls through when v0(=ret(xwidget_info_get)) != 0.
  At `beq` at 0x229ac (target 0x229bc), taken when a4(=a3) == 0 and falls through when a4(=a3) != 0.
  At `bne` at 0x229c0 (target 0x229b4), taken when (a0(?) & 0x4) != 0 and falls through when (a0(?) & 0x4) == 0.
  Returns v0 = ? (`jr` at 0x229a4).

- `hub_intr_alloc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22a08 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22a08-0x22a24 (28 bytes).
  Calls `do_hub_intr_alloc [0x22800]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x0 (`jal` at 0x22a10).
  Returns v0 = ret(do_hub_intr_alloc); f0 = ret(do_hub_intr_alloc) (`jr` at 0x22a1c).

- `hub_intr_alloc_nothd` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22a24 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22a24-0x22a40 (28 bytes).
  Calls `do_hub_intr_alloc [0x22800]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1 (`jal` at 0x22a2c).
  Returns v0 = ret(do_hub_intr_alloc); f0 = ret(do_hub_intr_alloc) (`jr` at 0x22a38).

- `hub_intr_free` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22a40 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22a40-0x22ab8 (120 bytes).
  Stores 1 byte from zero to a0 (arg0 at entry) +0x5 (`sb` at 0x22a6c) with value 0x0.
  Stores 8 bytes from zero to a0 (arg0 at entry) +0x8 (`sd` at 0x22a70) with value 0x0.
  Stores 4 bytes from a0 to a0 (arg0 at entry) +0x0 (`sw` at 0x22a78) with value -0x1.
  Calls `hub_intr_disconnect` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0+44] (`jal` at 0x22a7c).
  Calls `kmem_free` via direct with a0=a0 at entry (arg0), a1=0x30, a2=?, a3=[a0+44] (`jal` at 0x22a94).
  Calls `intr_unreserve_level` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x22aa4).
  At `beq` at 0x22a64 (target 0x22a88), taken when (a3(=[a0+44]) & 0x4) == 0 and falls through when (a3(=[a0+44]) & 0x4) != 0.
  At `beq` at 0x22a8c (target 0x22a9c), taken when (a3(=[a0+44]) & 0x1) == 0 and falls through when (a3(=[a0+44]) & 0x1) != 0.
  Returns v0 = ret(intr_unreserve_level); f0 = ret(intr_unreserve_level) (`jr` at 0x22ab0).

- `hub_intr_connect` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22ab8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22ab8-0x22b40 (136 bytes).
  Stores 8 bytes from s1 to a0 (arg0 at entry) +0x18 (`sd` at 0x22b00) with value a3.
  Stores 8 bytes from v1 to a0 (arg0 at entry) +0x10 (`sd` at 0x22b08) with value a4.
  Stores 4 bytes from a0 to a0 (arg0 at entry) +0x2c (`sw` at 0x22b18) with value ([a0+44] | 0x4).
  Calls `intr_connect_level` via direct with a0=[a0+36]:2, a1=[a0+40], a2=[a0+32], a3=a1 at entry (arg1), a4=a2 at entry (arg2), a5=0x0 (`jal` at 0x22af0).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x22b30).
  At `bltz` at 0x22af8 (target 0x22b1c), taken when v0(=ret(intr_connect_level)) < 0 (signed) and falls through when v0(=ret(intr_connect_level)) >= 0 (signed).
  At `bne` at 0x22b04 (target 0x22b30), taken when s1(=a3) != 0 and falls through when s1(=a3) == 0.
  Returns v0 = ? (`jr` at 0x22b28).

- `hub_intr_disconnect` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22b40 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22b40-0x22ba4 (100 bytes).
  Stores 4 bytes from at to a0 (arg0 at entry) +0x2c (`sw` at 0x22b84).
  Calls `intr_disconnect_level` via direct with a0=[a0+36]:2, a1=?, a2=?, a3=? (`jal` at 0x22b68).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0+40], a2=a2 at entry (arg2), a3=[a0+24]:8 (`jalr` at 0x22b94).
  At `bne` at 0x22b60 (target 0x22b94), taken when a3(=[a0+24]:8) != 0 and falls through when a3(=[a0+24]:8) == 0.
  Returns v0 = -0x5; f0 = ret(intr_disconnect_level) (`jr` at 0x22b8c).

- `hub_intr_cpu_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22ba4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22ba4-0x22bc0 (28 bytes).
  Returns v0 = [[(sym(pdaindr) + ([a0+36]:2 << 0x4))+8]:8+1852] (`jr` at 0x22bb8).

- `hub_intr_cpuid_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x22bc0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x22bc0-0x22bc8 (8 bytes).
  Returns v0 = [a0+36]:2 (`jr` at 0x22bc0).

- `r12k_perf_overflow_intr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x23304 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x23304-0x23364 (96 bytes).
  At `beq` at 0x23310 (target 0x23320), taken when t0(?) >= 0 (signed) and falls through when t0(?) < 0 (signed).
  At `beq` at 0x23320 (target 0x2332c), taken when t1(?) == 0 and falls through when t1(?) != 0.
  At `beq` at 0x2333c (target 0x2334c), taken when t0(?) >= 0 (signed) and falls through when t0(?) < 0 (signed).
  At `beq` at 0x2334c (target 0x23358), taken when t1(?) == 0 and falls through when t1(?) != 0.
  Returns v0 = ? (`jr` at 0x2335c).

- `r10k_perf_overflow_intr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x23364 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x23364-0x23394 (48 bytes).
  At `beq` at 0x23370 (target 0x23380), taken when t0(?) >= 0 (signed) and falls through when t0(?) < 0 (signed).
  At `beq` at 0x23380 (target 0x2338c), taken when t1(?) == 0 and falls through when t1(?) != 0.
  Returns v0 = ? (`jr` at 0x2338c).

- `handle_intr_wgflush` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2381c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2381c-0x23868 (76 bytes).
  Stores 8 bytes from at to abs 0xffffffffffffc038 (`sd` at 0x2381c).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x23860).
  At `beq` at 0x23858 (target 0x238b0), taken when k0(?) == 0 -> outside and falls through when k0(?) != 0.

- `encode_int_serial` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x248d0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x248d0-0x24960 (144 bytes).
  Stores 1 byte from v0 to ? (base unknown) (`sb` at 0x24908).
  At `beq` at 0x2490c (target 0x2493c), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `bne` at 0x2492c (target 0x248ec), taken when a7(?) != 0 and falls through when a7(?) == 0.
  Returns v0 = ? (`jr` at 0x2493c).

- `decode_int_serial` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x24960 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x24960-0x249f8 (152 bytes).
  Stores 1 byte from at to ? (base unknown) (`sb` at 0x2498c).
  Stores 8 bytes from a3 to a1 (arg1 at entry) +0x0 (`sd` at 0x249dc) with value table(0xffc4e50bf62aec3e).
  At `beq` at 0x24994 (target 0x249c8), taken when a3(?) >= 0x8 (unsigned) and falls through when a3(?) < 0x8 (unsigned).
  At `bne` at 0x249b8 (target 0x24978), taken when t0(?) != 0 and falls through when t0(?) == 0.
  Returns v0 = ? (`jr` at 0x249d8).

- `early_counter_intr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29874 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29874-0x29890 (28 bytes).
  Calls `resetcounter` via direct with a0=0xfffffffff0000000, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2987c).
  Returns v0 = ret(resetcounter); f0 = ret(resetcounter) (`jr` at 0x29888).

- `compare_and_swap_ptr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29e24 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29e24-0x29e4c (40 bytes).
  Stores 8 bytes from v0 to a0 (arg0 at entry) +0x0 (`scd` at 0x29e30) with value a2.
  At `bne` at 0x29e28 (target 0x29e44), taken when t0(=[a0]:8) != a1 and falls through when t0(=[a0]:8) == a1.
  At `beq` at 0x29e34 (target 0x29e24), taken when v0(=a2) == 0 and falls through when v0(=a2) != 0.
  Returns v0 = a2 (`jr` at 0x29e3c).
  Returns v0 = 0x0 (`jr` at 0x29e44).

- `hub_rtc_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29ebc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29ebc-0x29f84 (200 bytes).
  Stores 8 bytes from t9 to (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800140, 0x9200000001a00140) +0x0 (`sd` at 0x29f58) with value 0x1.
  Stores 8 bytes from t9 to (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800148, 0x9200000001a00148) +0x0 (`sd` at 0x29f64) with value 0x1.
  Stores 8 bytes from zero to (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800150, 0x9200000001a00150) +0x0 (`sd` at 0x29f6c) with value 0x0.
  Stores 8 bytes from zero to (([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) + one of 0x9200000001800158, 0x9200000001a00158) +0x0 (`sd` at 0x29f74) with value 0x0.
  Calls `get_compact_nodeid` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x29ec8).
  At `bne` at 0x29ed4 (target 0x29f78), taken when s0(=a0) != v0(=ret(get_compact_nodeid)) and falls through when s0(=a0) == v0(=ret(get_compact_nodeid)).
  At `bne` at 0x29f70 (target 0x29f1c), taken when a2(?) < 0x2 (signed) and falls through when a2(?) >= 0x2 (signed).
  Returns v0 = ?; f0 = ret(get_compact_nodeid) (`jr` at 0x29f7c).

- `acktmoclock` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x29f84 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x29f84-0x29fc0 (60 bytes).
  Stores 8 bytes from zero to abs 0x9200000001000128 (`sd` at 0x29fac) with value 0x0.
  Stores 8 bytes from zero to abs 0x9200000001000120 (`sd` at 0x29fbc) with value 0x0.
  At `beq` at 0x29fa4 (target 0x29fb8), taken when (at(=[[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1) & 0x1) == 0 and falls through when (at(=[[(sym(pdaindr) + ([-0x3bd8]:2 << 0x4))+8]:8+1320]:1) & 0x1) != 0.
  Returns v0 = ([-0x3bd8]:2 << 0x4) (`jr` at 0x29fb0).
  Returns v0 = ([-0x3bd8]:2 << 0x4) (`jr` at 0x29fb8).

- `timestamp_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ac08 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ac08-0x2ac80 (120 bytes).
  Stores 4 bytes from a0 to sym(timer_high_unit) +0x0 (`sw` at 0x2ac60).
  Stores 4 bytes from a0 to sym(timer_freq) +0x0 (`sw` at 0x2ac64).
  Stores 4 bytes from v1 to sym(timer_unit) +0x0 (`sw` at 0x2ac70).
  Stores 4 bytes from at to sym(timer_maxsec) +0x0 (`sw` at 0x2ac7c).
  Returns v0 = ? (`jr` at 0x2ac78).

- `prof_intr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ac80 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ac80-0x2ae50 (464 bytes).
  Stores 8 bytes from t1 to [-0x3bf8]:8 +0x3c50 (`sd` at 0x2ad90).
  Stores 8 bytes from t0 to [-0x3bf8]:8 +0x3c50 (`sd` at 0x2ade0).
  Stores 8 bytes from a2 to abs 0x9200000001000118 (`sd` at 0x2adf4) with value [[-0x3bf8]:8+15440]:8.
  Calls `fastick_maint` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x2ac98).
  Calls `cnode_subnode_to_cpu` via direct with a0=[-0x3bd6]:2, a1=?, a2=([-0x3bd8]:2 << 0x4), a3=0x9200000001604200, a4=0x3b9aca00, a5=[-0x3bd8]:2, a6=0x3e8 (`jal` at 0x2ad28).
  Calls `log_tstamp_event` via direct with a0=0x6e, a1=0x0, a2=0x0, a3=0x0, a4=0x0 (`jal` at 0x2ae20).
  Calls `log_tstamp_event` via direct with a0=0x65, a1=0x6e, a2=0x0, a3=0x0, a4=0x0, a6=0x3e8 (`jal` at 0x2ae40).
  At `bne` at 0x2ac90 (target 0x2ae10), taken when (at(=[-0x3d80]:8) & 0x20) != 0 and falls through when (at(=[-0x3d80]:8) & 0x20) == 0.
  At `bne` at 0x2acec (target 0x2adf8), taken when v1(=[-0x3ac4]) != a0(?) and falls through when v1(=[-0x3ac4]) == a0(?).
  At `beq` at 0x2ad00 (target 0x2ad4c), taken when a1(=[[-0x3bf8]:8+15448]) == a2(=0x1) and falls through when a1(=[[-0x3bf8]:8+15448]) != a2(=0x1).
  At `bne` at 0x2ad40 (target 0x2adf8), taken when a5(?) != v0(=ret(cnode_subnode_to_cpu)) and falls through when a5(?) == v0(=ret(cnode_subnode_to_cpu)).
  At `beq` at 0x2ada0 (target 0x2adf0), taken when a2(=[[-0x3bf8]:8+15440]:8) >= a5(=[0x9200000001030100]:8) (unsigned) and falls through when a2(=[[-0x3bf8]:8+15440]:8) < a5(=[0x9200000001030100]:8) (unsigned).
  At `bne` at 0x2ae00 (target 0x2ae30), taken when (t2(=[-0x3d80]:8) & 0x20) != 0 and falls through when (t2(=[-0x3d80]:8) & 0x20) == 0.
  Returns v0 = ? (`jr` at 0x2ae08).

- `hub_xtalk_link_up` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ae50 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ae50-0x2ae78 (40 bytes).
  At `beq` at 0x2ae64 (target 0x2ae70), taken when (at(=[(a0 << 0x21)-7926335344142712536]:8) & 0x2000) == 0 and falls through when (at(=[(a0 << 0x21)-7926335344142712536]:8) & 0x2000) != 0.
  Returns v0 = one of 0x0, 0x1 (`jr` at 0x2ae70).

- `print_hub_error` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2aee8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2aee8-0x2afa8 (192 bytes).
  Stores 1 byte from a2 to a0 (arg0 at entry) +0x78 (`sb` at 0x2af78) with value (a3 | [a0+120]:1).
  Calls `.text` via direct with a0=a3 at entry (arg3), a1=a1 at entry (arg1), a2=(a3 | [a0+120]:1), a3=a3 at entry (arg3) (`jal` at 0x2af4c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+46952, a2=ret(.text), a3=?, a4=[a0+112]:8 (`jal` at 0x2af68).
  Calls `.text` via direct with a0=a3 at entry (arg3), a1=a1 at entry (arg1), a2=(a3 | [a0+120]:1), a3=a3 at entry (arg3) (`jal` at 0x2af7c).
  Calls `cmn_err` via direct with a0=0x404, a1=sym(.rodata)+46952, a2=ret(.text), a3=?, a4=[a0+112]:8 (`jal` at 0x2af98).
  At `beq` at 0x2af1c (target 0x2af3c), taken when s1(?) >= 0x1f5 (signed) and falls through when s1(?) < 0x1f5 (signed).
  At `beq` at 0x2af44 (target 0x2af78), taken when (a3 & v0(=[a0+120]:1)) == 0 and falls through when (a3 & v0(=[a0+120]:1)) != 0.
  Returns v0 = one of 0x0, 0x1 (`jr` at 0x2af34).

- `check_hub_error_rates` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2afa8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2afa8-0x2b04c (164 bytes).
  Calls `print_hub_error` via direct with a0=a0 at entry (arg0), a1=[a0+56]:8, a2=?, a3=0x4 (`jal` at 0x2afd4).
  Calls `hub_xtalk_link_up` via direct with a0=[a0+4]:2, a1=?, a2=?, a3=? (`jal` at 0x2afe0).
  Calls `print_hub_error` via direct with a0=a0 at entry (arg0), a1=[a0+80]:8, a2=?, a3=0x8 (`jal` at 0x2b004).
  Calls `print_hub_error` via direct with a0=a0 at entry (arg0), a1=[a0+72]:8, a2=?, a3=0x10 (`jal` at 0x2b01c).
  At `bne` at 0x2afe8 (target 0x2affc), taken when v0(=ret(hub_xtalk_link_up)) != 0 and falls through when v0(=ret(hub_xtalk_link_up)) == 0.
  Returns v0 = ? (`jr` at 0x2b044).

- `capture_hub_stats` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2b04c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2b04c-0x2b20c (448 bytes).
  Stores 8 bytes from v0 to a1 (arg1 at entry) +0x87d8 (`sd` at 0x2b080) with value [0x9200000001030100]:8.
  Stores 8 bytes from t8 to a1 (arg1 at entry) +0x87f8 (`sd` at 0x2b0d4).
  Stores 8 bytes from t1 to a1 (arg1 at entry) +0x87f0 (`sd` at 0x2b0f4).
  Stores 8 bytes from t8 to a1 (arg1 at entry) +0x8800 (`sd` at 0x2b100).
  Stores 4 bytes from t0 to a1 (arg1 at entry) +0x8808 (`sw` at 0x2b10c) with value [a1+34824]+1.
  Stores 8 bytes from zero to ([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21) -0x6dfffffffe3ffed0 (`sd` at 0x2b144) with value 0x0.
  Stores 8 bytes from a7 to a1 (arg1 at entry) +0x8810 (`sd` at 0x2b15c).
  Stores 8 bytes from a5 to a1 (arg1 at entry) +0x8818 (`sd` at 0x2b16c).
  Stores 1 byte from zero to a1 (arg1 at entry) +0x8830 (`sb` at 0x2b1a0) with value 0x0.
  Stores 8 bytes from a2 to a1 (arg1 at entry) +0x8828 (`sd` at 0x2b1a4) with value [0x9200000001030100]:8.
  Stores 4 bytes from a3 to a1 (arg1 at entry) +0x8848 (`sw` at 0x2b1b8) with value 0xc8.
  Stores 1 byte from a1 to a1 (arg1 at entry) +0x8830 (`sb` at 0x2b1e8) with value 0x1.
  Stores 4 bytes from a7 to a1 (arg1 at entry) +0x8820 (`sw` at 0x2b1f8) with value [a1+34848]+1.
  Calls `hubni_error_handler` via direct with a0=sym(.rodata)+46952, a1=0x1, a2=?, a3=a3 at entry (arg3), a6=[([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)-7926335344140091104]:8, a7=0x1fffffff000000 (`jal` at 0x2b11c).
  Calls `check_hub_error_rates` via direct with a0=a1+34760, a1=0x87c8, a2=?, a3=[a1+34864]:1, a4=0xffff (`jal` at 0x2b18c).
  At `beq` at 0x2b090 (target 0x2b124), taken when (at(=[a1+34792]:8) & 0x2) == 0 and falls through when (at(=[a1+34792]:8) & 0x2) != 0.
  At `beq` at 0x2b0fc (target 0x2b1fc), taken when t9(?) == 0 and falls through when t9(?) != 0.
  At `beq` at 0x2b110 (target 0x2b124), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0x2b138 (target 0x2b178), taken when (a1(?) & 0x2) == 0 and falls through when (a1(?) & 0x2) != 0.
  At `beq` at 0x2b168 (target 0x2b1ec), taken when a4(=0xffff) == a6(?) and falls through when a4(=0xffff) != a6(?).
  At `beq` at 0x2b170 (target 0x2b1ec), taken when a4(=0xffff) == a2(?) and falls through when a4(=0xffff) != a2(?).
  At `beq` at 0x2b17c (target 0x2b1c8), taken when a3(=[a1+34864]:1) == 0 and falls through when a3(=[a1+34864]:1) != 0.
  At `beq` at 0x2b194 (target 0x2b1a8), taken when v0(=ret(check_hub_error_rates)) == 0 and falls through when v0(=ret(check_hub_error_rates)) != 0.
  At `beq` at 0x2b1dc (target 0x2b1ac), taken when a4(=[sym(hub_print_usecs)]) >= a5(?) (unsigned) and falls through when a4(=[sym(hub_print_usecs)]) < a5(?) (unsigned).
  At `bne` at 0x2b1fc (target 0x2b110), taken when t0(=0xff) != a5(?) and falls through when t0(=0xff) == a5(?).
  Returns v0 = ? (`jr` at 0x2b1c0).

- `init_hub_stats` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2b20c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2b20c-0x2b358 (332 bytes).
  Stores 2 bytes from s2 to a1 (arg1 at entry) +0x87ca (`sh` at 0x2b264) with value a0.
  Stores 1 byte from a1 to a1 (arg1 at entry) +0x87c8 (`sb` at 0x2b26c) with value 0x1.
  Stores 2 bytes from a7 to a1 (arg1 at entry) +0x87cc (`sh` at 0x2b274).
  Stores 8 bytes from t2 to a1 (arg1 at entry) +0x87d0 (`sd` at 0x2b280) with value [0x9200000001030100]:8.
  Stores 8 bytes from t0 to a1 (arg1 at entry) +0x87e8 (`sd` at 0x2b290) with value entry(0x9200000001e80000).
  Stores 8 bytes from zero to table(0x9200000001c00130) +0x0 (`sd` at 0x2b294) with value 0x0.
  Stores 4 bytes from a5 to a1 (arg1 at entry) +0x8848 (`sw` at 0x2b2dc) with value 0xc8.
  Stores 8 bytes from a2 to a1 (arg1 at entry) +0x87e0 (`sd` at 0x2b2e4).
  Stores 8 bytes from v0 to a1 (arg1 at entry) +0x8838 (`sd` at 0x2b300) with value ret(kmem_alloc_node).
  Stores 8 bytes from zero to a1 (arg1 at entry) +0x8828 (`sd` at 0x2b314) with value 0x0.
  Stores 1 byte from t9 to a1 (arg1 at entry) +0x8830 (`sb` at 0x2b31c) with value 0x1.
  Stores 4 bytes from t8 to sym(hub_print_usecs) +0x0 (`sw` at 0x2b334) with value [sym(hub_print_usecs)].
  Calls `bzero` via direct with a0=a1+34760, a1=0x80, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2b244).
  Calls `kmem_alloc_node` via direct with a0=0x50, a1=0x1, a2=a0 at entry (arg0), a3=?, a5=0xc8, a6=0x3b9aca00, a7=table(0x9200000001c00000) (`jal` at 0x2b2e8).
  Calls `sprintf` via direct with a0=?, a1=sym(.rodata)+46952, a2=[a1+34330]:2, a3=?, a4=sym(.rodata)+46952 (`jal` at 0x2b30c).
  Calls `assfail` via direct with a0=sym(.rodata)+46952, a1=sym(.rodata)+46952, a2=0x116, a3=? (`jal` at 0x2b344).
  At `beq` at 0x2b2fc (target 0x2b338), taken when v0(=ret(kmem_alloc_node)) == 0 and falls through when v0(=ret(kmem_alloc_node)) != 0.
  Returns v0 = ret(sprintf); f0 = ret(sprintf) (`jr` at 0x2b330).

- `memerror_handle_uce` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2b358 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2b358-0x2b3f8 (160 bytes).
  Stores 8 bytes from a0 to a3 (arg3 at entry) +0x0 (`sd` at 0x2b3e4) with value 0xabadecca.
  Calls `nasid_to_partid` via direct with a0=?, a1=?, a2=0xfffffc000, a3=0x7fffc0 (`jal` at 0x2b39c).
  Calls `part_id` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2b3a4).
  Calls `set_dir_state_POISONED` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2b3e8).
  At `beq` at 0x2b3ac (target 0x2b3e8), taken when s3(=ret(nasid_to_partid)) == v0(=ret(part_id)) and falls through when s3(=ret(nasid_to_partid)) != v0(=ret(part_id)).
  At `beq` at 0x2b3c4 (target 0x2b3dc), taken when a4(?) == a5(=0x10) and falls through when a4(?) != a5(=0x10).
  Returns v0 = 0x1 (`jr` at 0x2b3d4).

- `cache_sidx_to_paddr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2b3f8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2b3f8-0x2b454 (92 bytes).
  Calls `ecc_cacheop_get` via direct with a0=0x7, a1=?, a2=sp-48, a3=a3 at entry (arg3) (`jal` at 0x2b418).
  Returns v0 = ?; f0 = ret(ecc_cacheop_get) (`jr` at 0x2b44c).

- `kl_compute_parity` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2b454 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2b454-0x2b4fc (168 bytes).
  Calls `ecc_bitcount` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2b4a8).
  At `blez` at 0x2b48c (target 0x2b4d0), taken when a2 <= 0 (signed) and falls through when a2 > 0 (signed).
  At `beq` at 0x2b4bc (target 0x2b4c8), taken when (v0(=ret(ecc_bitcount)) & 0x1) == 0 and falls through when (v0(=ret(ecc_bitcount)) & 0x1) != 0.
  At `bne` at 0x2b4c8 (target 0x2b4a8), taken when a0(?) != 0 and falls through when a0(?) == 0.
  Returns v0 = ? (`jr` at 0x2b4f4).

- `kl_compute_dir_ecc_cb` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2b4fc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2b4fc-0x2b5bc (192 bytes).
  Calls `ecc_bitcount` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2b558).
  At `beq` at 0x2b524 (target 0x2b5a8), taken when a1 == 0 and falls through when a1 != 0.
  At `beq` at 0x2b56c (target 0x2b578), taken when (v0(=ret(ecc_bitcount)) & 0x1) == 0 and falls through when (v0(=ret(ecc_bitcount)) & 0x1) != 0.
  At `beq` at 0x2b578 (target 0x2b54c), taken when a3(?) == 0 and falls through when a3(?) != 0.
  Returns v0 = ?; f0 = ret(ecc_bitcount) (`jr` at 0x2b5a0).

- `kl_compute_mem_ecc_cb` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2b5bc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2b5bc-0x2b630 (116 bytes).
  Calls `ecc_bitcount` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2b5f0).
  At `bne` at 0x2b608 (target 0x2b5e4), taken when s0(?) < 0x8 (signed) and falls through when s0(?) >= 0x8 (signed).
  Returns v0 = ?; f0 = ret(ecc_bitcount) (`jr` at 0x2b628).

- `mdir_xlate_syndrome` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2b630 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2b630-0x2b86c (572 bytes).
  Stores 8 bytes from a4 to ? (base unknown) (`sdl` at 0x2b780) with value 0x666f726365645f6d.
  Stores 8 bytes from a4 to ? (base unknown) (`sdr` at 0x2b784) with value 0x666f726365645f6d.
  Stores 4 bytes from a3 to ? (base unknown) (`swl` at 0x2b788) with value 0x756c7469.
  Stores 4 bytes from a3 to ? (base unknown) (`swr` at 0x2b78c) with value 0x756c7469.
  Stores 1 byte from a2 to ? (base unknown) (`sb` at 0x2b798) with value 0x0.
  Stores 4 bytes from t1 to ? (base unknown) (`swl` at 0x2b7cc) with value 0x676f6f64.
  Stores 4 bytes from t1 to ? (base unknown) (`swr` at 0x2b7d0) with value 0x676f6f64.
  Stores 1 byte from t0 to ? (base unknown) (`sb` at 0x2b7dc) with value 0x0.
  Stores 4 bytes from ra to ? (base unknown) (`swl` at 0x2b810) with value 0x6d756c74.
  Stores 4 bytes from ra to ? (base unknown) (`swr` at 0x2b814) with value 0x6d756c74.
  Stores 1 byte from t9 to ? (base unknown) (`sb` at 0x2b818) with value 0x0.
  Stores 1 byte from t8 to ? (base unknown) (`sb` at 0x2b824) with value 0x69.
  Calls `sprintf` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+47160, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2b670).
  Calls `sprintf` via direct with a0=?, a1=sym(.rodata)+47160, a2=?, a3=?, a4=0x7f, a7=sym(.rodata)+47160 (`jal` at 0x2b73c).
  Calls `strcat` via direct with a0=?, a1=sym(.rodata)+47160, a2=?, a3=? (`jal` at 0x2b750).
  Calls `sprintf` via direct with a0=?, a1=sym(.rodata)+47160, a2=?, a3=?, a4=0x7f, a7=sym(.rodata)+47160 (`jal` at 0x2b85c).
  At `beq` at 0x2b650 (target 0x2b79c), taken when a1 == 0 and falls through when a1 != 0.
  At `beq` at 0x2b65c (target 0x2b7e0), taken when a1 == at(=0x2) and falls through when a1 != at(=0x2).
  At `beq` at 0x2b664 (target 0x2b828), taken when a1 == v0(=0x1) and falls through when a1 != v0(=0x1).
  At `beq` at 0x2b67c (target 0x2b6d0), taken when v0(=[a0]:1) == 0 and falls through when v0(=[a0]:1) != 0.
  At `beq` at 0x2b68c (target 0x2b6d0), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0x2b69c (target 0x2b6d0), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0x2b6ac (target 0x2b6d0), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0x2b6bc (target 0x2b6d0), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `bne` at 0x2b6c8 (target 0x2b684), taken when a3(?) != 0 and falls through when a3(?) == 0.
  At `beq` at 0x2b6d0 (target 0x2b7c0), taken when s1(=a2) == 0 and falls through when s1(=a2) != 0.
  At `beq` at 0x2b6dc (target 0x2b770), taken when s1(=a2) == a4(=0x7f) and falls through when s1(=a2) != a4(=0x7f).
  At `bne` at 0x2b6e8 (target 0x2b710), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `beq` at 0x2b708 (target 0x2b71c), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0x2b710 (target 0x2b6f8), taken when v0(?) != s1(=a2) and falls through when v0(?) == s1(=a2).
  At `beq` at 0x2b71c (target 0x2b800), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x2b728 (target 0x2b848), taken when (a6(?) & 0x80) == 0 and falls through when (a6(?) & 0x80) != 0.
  At `bne` at 0x2b770 (target 0x2b6e0), taken when s2(=a1) != 0 -> outside and falls through when s2(=a1) == 0.
  Returns v0 = ?; f0 = ret(strcat) (`jr` at 0x2b768).

- `mdir_xlate_addr_mem` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2b86c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2b86c-0x2b910 (164 bytes).
  Calls `sprintf` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+47160, a2=?, a3=?, a4=a2 at entry (arg2) (`jal` at 0x2b8e0).
  Calls `sprintf` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+47160, a2=?, a3=?, a4=a2 at entry (arg2), a6=a1 at entry (arg1) (`jal` at 0x2b900).
  At `bltz` at 0x2b8a8 (target 0x2b8f4), taken when a2 < 0 (signed) and falls through when a2 >= 0 (signed).
  Returns v0 = ret(sprintf); f0 = ret(sprintf) (`jr` at 0x2b8ec).

- `mdir_xlate_addr_pdir` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2b910 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2b910-0x2b990 (128 bytes).
  Calls `sprintf` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+47160, a2=?, a3=a3 at entry (arg3), a4=a2 at entry (arg2) (`jal` at 0x2b960).
  Calls `sprintf` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+47160, a2=?, a3=?, a4=a2 at entry (arg2) (`jal` at 0x2b980).
  At `bltz` at 0x2b948 (target 0x2b974), taken when a2 < 0 (signed) and falls through when a2 >= 0 (signed).
  Returns v0 = ret(sprintf); f0 = ret(sprintf) (`jr` at 0x2b96c).

- `mdir_xlate_addr_sdir` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2b990 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2b990-0x2b9e0 (80 bytes).
  Calls `sprintf` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+47160, a2=?, a3=?, a4=0x1ffffffff (`jal` at 0x2b9cc).
  Returns v0 = ret(sprintf); f0 = ret(sprintf) (`jr` at 0x2b9d8).

- `sbe_printf` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2b9e0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2b9e0-0x2ba58 (120 bytes).
  Calls `vsprintf` via direct with a0=(sp + one of -0xd0, -0xcf), a1=a0 at entry (arg0), a2=sp-56, a3=a3 at entry (arg3) (`jal` at 0x2ba3c).
  Calls `cmn_err` via direct with a0=0x4, a1=sp-208, a2=?, a3=? (`jal` at 0x2ba48).
  At `bne` at 0x2ba08 (target 0x2ba18), taken when at(=[sym(sbe_log_errors)]) != 0 and falls through when at(=[sym(sbe_log_errors)]) == 0.
  At `bne` at 0x2ba1c (target 0x2ba34), taken when v0(=[sym(sbe_report_cons)]) != 0 and falls through when v0(=[sym(sbe_report_cons)]) == 0.
  Returns v0 = ? (`jr` at 0x2ba10).

- `bank_fatal` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ba58 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ba58-0x2bb68 (272 bytes).
  Stores 4 bytes from a3 to entry(0x8850) +0x0 (`sw` at 0x2bb30) with value 0x1.
  Calls `cmn_err` via direct with a0=0x404, a1=sym(.rodata)+47160, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2ba84).
  Calls `cmn_err` via direct with a0=0x404, a1=sym(.rodata)+47160, a2=[[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a2 + a2))]:2 << 0x3))]:8+34330]:2, a3=a0 at entry (arg0), a4=a1 at entry (arg1), a5=(a2 + a2) (`jal` at 0x2bad4).
  Calls `cmn_err` via direct with a0=0x404, a1=sym(.rodata)+47160, a2=?, a3=? (`jal` at 0x2bae4).
  Calls `get_nasid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2baec).
  Calls `intr_disconnect_level` via direct with a0=[[([[-0x3c00]:8]:8 + ([-0x3bd6]:2 << 0x3))]:8+34198]:2, a1=0x7d, a2=([-0x3bd6]:2 << 0x3), a3=? (`jal` at 0x2bb58).
  At `beq` at 0x2ba6c (target 0x2ba7c), taken when at(=[sym(sbe_mfr_override)]) == 0 and falls through when at(=[sym(sbe_mfr_override)]) != 0.
  At `beq` at 0x2baf8 (target 0x2bb34), taken when a2 == v0(=ret(get_nasid)) and falls through when a2 != v0(=ret(get_nasid)).
  Returns v0 = ? (`jr` at 0x2ba74).

- `memerror_sbe_intr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2bb68 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2bb68-0x2c500 (2456 bytes).
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x2bd08) with value 0x0.
  Stores 4 bytes from v1 to ? (base unknown) (`sw` at 0x2bd18) with value [sym(time)]+60.
  Stores 4 bytes from a0 to ? (base unknown) (`sw` at 0x2bd2c).
  Stores 4 bytes from a2 to ? (base unknown) (`sw` at 0x2bd4c).
  Stores 4 bytes from a7 to ? (base unknown) (`sw` at 0x2bddc).
  Stores 4 bytes from a6 to ? (base unknown) (`sw` at 0x2bde4).
  Stores 4 bytes from a5 to ? (base unknown) (`sw` at 0x2bdec).
  Stores 4 bytes from a2 to ? (base unknown) (`sw` at 0x2bdf4).
  Stores 4 bytes from t3 to ? (base unknown) (`sw` at 0x2be38).
  Stores 4 bytes from t2 to ? (base unknown) (`sw` at 0x2be40).
  Stores 4 bytes from t1 to ? (base unknown) (`sw` at 0x2be48).
  Stores 4 bytes from a7 to ? (base unknown) (`sw` at 0x2be50).
  Stores 4 bytes from a3 to ? (base unknown) (`sw` at 0x2be60).
  Stores 4 bytes from t8 to ? (base unknown) (`sw` at 0x2bf24).
  Stores 4 bytes from t3 to ? (base unknown) (`sw` at 0x2bf2c).
  Stores 4 bytes from t2 to ? (base unknown) (`sw` at 0x2bf34).
  Stores 4 bytes from t1 to ? (base unknown) (`sw` at 0x2bf40) with value 0x1.
  Stores 4 bytes from a7 to ? (base unknown) (`sw` at 0x2bf4c) with value [sym(time)]+60.
  Stores 4 bytes from a0 to ? (base unknown) (`sw` at 0x2c1c8).
  Stores 4 bytes from t9 to ? (base unknown) (`sw` at 0x2c1e8) with value [sym(time)]+60.
  Stores 2 bytes from zero to ? (base unknown) (`sh` at 0x2c268) with value 0x0.
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x2c30c).
  Stores 4 bytes from a2 to ? (base unknown) (`sw` at 0x2c38c) with value [sym(time)]+600.
  Stores 4 bytes from a4 to ? (base unknown) (`sc` at 0x2c3c8) with value table(0x0).
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x2c3f4) with value 0x0.
  Calls `sbe_printf [0x2b9e0]` via direct with a0=sym(.rodata)+47160, a1=?, a2=?, a3=? (`jal` at 0x2bc44).
  Calls `log_md_errors` via direct with a0=?, a1=0x10000, a2=?, a3=? (`jal` at 0x2bc5c).
  Calls `get_nasid` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2bc94).
  Calls `sbe_printf [0x2b9e0]` via direct with a0=sym(.rodata)+47160, a1=?, a2=?, a3=? (`jal` at 0x2bd78).
  Calls `sbe_printf [0x2b9e0]` via direct with a0=sym(.rodata)+47160, a1=?, a2=?, a3=? (`jal` at 0x2bd8c).
  Calls `sbe_printf [0x2b9e0]` via direct with a0=sym(.rodata)+47160, a1=sym(.rodata)+47160, a2=?, a3=? (`jal` at 0x2bf80).
  Calls `mdir_xlate_syndrome` via direct with a0=sp-224, a1=one of 0x1, 0x2, a2=?, a3=? (`jal` at 0x2bfe8).
  Calls `sbe_printf [0x2b9e0]` via direct with a0=sym(.rodata)+47160, a1=?, a2=?, a3=sp-224, a4=sym(.rodata)+47160 (`jal` at 0x2c014).
  Calls `(unknown callee)` via register with a0=sp-224, a1=?, a2=?, a3=? (`jalr` at 0x2c02c).
  Calls `sbe_printf [0x2b9e0]` via direct with a0=sym(.rodata)+47160, a1=entry(0x861a), a2=?, a3=sp-224 (`jal` at 0x2c068).
  Calls `memory_present` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2c070).
  Calls `page_ispoison` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2c080).
  Calls `sbe_printf [0x2b9e0]` via direct with a0=sym(.rodata)+47160, a1=?, a2=?, a3=? (`jal` at 0x2c090).
  Calls `sbe_printf [0x2b9e0]` via direct with a0=sym(.rodata)+47160, a1=sym(.rodata)+47160, a2=?, a3=? (`jal` at 0x2c0b8).
  Calls `mdir_xlate_syndrome` via direct with a0=sp-224, a1=0x0, a2=?, a3=? (`jal` at 0x2c0f4).
  Calls `sbe_printf [0x2b9e0]` via direct with a0=sym(.rodata)+47160, a1=?, a2=sp-224, a3=sym(.rodata)+47160 (`jal` at 0x2c120).
  Calls `mdir_xlate_addr_mem` via direct with a0=sp-224, a1=?, a2=?, a3=? (`jal` at 0x2c130).
  Calls `sbe_printf [0x2b9e0]` via direct with a0=sym(.rodata)+47160, a1=entry(0x861a), a2=?, a3=sp-224 (`jal` at 0x2c170).
  Calls `memory_present` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2c188).
  Calls `page_ispoison` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2c198).
  Calls `sbe_printf [0x2b9e0]` via direct with a0=sym(.rodata)+47160, a1=?, a2=?, a3=? (`jal` at 0x2c1a8).
  Calls `bank_fatal [0x2ba58]` via direct with a0=?, a1=sp-224, a2=?, a3=? (`jal` at 0x2c1f8).
  Calls `sbe_printf [0x2b9e0]` via direct with a0=sym(.rodata)+47160, a1=0x3ffffffe, a2=?, a3=? (`jal` at 0x2c284).
  Calls `sbe_printf [0x2b9e0]` via direct with a0=sym(.rodata)+47160, a1=?, a2=?, a3=? (`jal` at 0x2c294).
  Calls `sbe_printf [0x2b9e0]` via direct with a0=sym(.rodata)+47160, a1=?, a2=?, a3=? (`jal` at 0x2c2ac).
  Calls `sbe_printf [0x2b9e0]` via direct with a0=sym(.rodata)+47160, a1=?, a2=?, a3=? (`jal` at 0x2c2dc).
  Calls `sbe_printf [0x2b9e0]` via direct with a0=sym(.rodata)+47160, a1=?, a2=?, a3=? (`jal` at 0x2c2ec).
  Calls `sbe_printf [0x2b9e0]` via direct with a0=sym(.rodata)+47160, a1=?, a2=?, a3=?, a6=0x10 (`jal` at 0x2c330).
  Calls `sbe_printf [0x2b9e0]` via direct with a0=sym(.rodata)+47160, a1=?, a2=?, a3=sp-224 (`jal` at 0x2c360).
  Calls `sbe_printf [0x2b9e0]` via direct with a0=sym(.rodata)+47160, a1=?, a2=?, a3=? (`jal` at 0x2c368).
  Calls `page_discard` via direct with a0=?, a1=0x1, a2=0x0, a3=? (`jal` at 0x2c378).
  Calls `bank_fatal [0x2ba58]` via direct with a0=?, a1=sp-224, a2=?, a3=?, a6=0x10 (`jal` at 0x2c398).
  Calls `__cache_wb_inval` via direct with a0=?, a1=0x8, a2=0xa800000000000000, a3=table(0x0), a4=table(0x0) (`jal` at 0x2c3d4).
  Calls `sbe_printf [0x2b9e0]` via direct with a0=sym(.rodata)+47160, a1=?, a2=?, a3=? (`jal` at 0x2c3e4).
  Calls `bank_fatal [0x2ba58]` via direct with a0=?, a1=sp-224, a2=?, a3=?, a6=0x10 (`jal` at 0x2c408).
  Calls `sbe_printf [0x2b9e0]` via direct with a0=sym(.rodata)+47160, a1=0x3ffffffe, a2=?, a3=? (`jal` at 0x2c428).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+47160, a2=?, a3=? (`jal` at 0x2c438).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+47160, a2=sym(.rodata)+47160, a3=?, a7=-0x1 (`jal` at 0x2c464).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+47160, a2=?, a3=?, a4=sym(.rodata)+47160 (`jal` at 0x2c498).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+47160, a2=entry(0x861a), a3=?, a4=sp-224 (`jal` at 0x2c4d4).
  Calls `cmn_err` via direct with a0=0x10, a1=sym(.rodata)+47160, a2=?, a3=? (`jal` at 0x2c4e4).
  At `beq` at 0x2bb94 (target 0x2bc94), taken when a0 == 0 and falls through when a0 != 0.
  At `bne` at 0x2bbd4 (target 0x2bc68), taken when at(?) != 0 and falls through when at(?) == 0.
  At `bne` at 0x2bbf8 (target 0x2bc5c), taken when a5(?) != 0 and falls through when a5(?) == 0.
  At `bltz` at 0x2bc04 (target 0x2bc5c), taken when a5(?) < 0 (signed) and falls through when a5(?) >= 0 (signed).
  At `bltz` at 0x2bc20 (target 0x2bca8), taken when s6(?) < 0 (signed) and falls through when s6(?) >= 0 (signed).
  At `bltz` at 0x2bc28 (target 0x2bca8), taken when a1(?) < 0 (signed) and falls through when a1(?) >= 0 (signed).
  At `bne` at 0x2bc30 (target 0x2bc64), taken when s7(=a0) != 0 and falls through when s7(=a0) == 0.
  At `beq` at 0x2bc38 (target 0x2bd64), taken when ra(?) == 0 and falls through when ra(?) != 0.
  At `bgez` at 0x2bc4c (target 0x2bc68), taken when s1(?) >= 0 (signed) and falls through when s1(?) < 0 (signed).
  At `bltz` at 0x2bcd0 (target 0x2bf68), taken when s6(?) < 0 (signed) and falls through when s6(?) >= 0 (signed).
  At `bltz` at 0x2bce4 (target 0x2c0a0), taken when ra(?) < 0 (signed) and falls through when ra(?) >= 0 (signed).
  At `bne` at 0x2bcec (target 0x2c438), taken when at(=[sym(panic_on_sbe)]) != 0 and falls through when at(=[sym(panic_on_sbe)]) == 0.
  At `beq` at 0x2bd00 (target 0x2bd1c), taken when v0(?) >= a0(=[sym(time)]) (signed) and falls through when v0(?) < a0(=[sym(time)]) (signed).
  At `beq` at 0x2bd28 (target 0x2c1ec), taken when v0(?) >= 0x258 (signed) and falls through when v0(?) < 0x258 (signed).
  At `bne` at 0x2bd30 (target 0x2bc64), taken when s5(=one of 0x0, 0x1) != 0 and falls through when s5(=one of 0x0, 0x1) == 0.
  At `blez` at 0x2bd54 (target 0x2c3f4), taken when a4(?) <= 0 (signed) and falls through when a4(?) > 0 (signed).
  At `bltz` at 0x2bd68 (target 0x2c294), taken when t8(?) < 0 (signed) and falls through when t8(?) >= 0 (signed).
  At `bgez` at 0x2bd70 (target 0x2bd88), taken when s1(?) >= 0 (signed) and falls through when s1(?) < 0 (signed).
  At `beq` at 0x2bda8 (target 0x2be5c), taken when v0(?) >= a4(?) (signed) and falls through when v0(?) < a4(?) (signed).
  At `beq` at 0x2bdc0 (target 0x2be00), taken when a2(=[sym(time)]) >= a5(?) (signed) and falls through when a2(=[sym(time)]) < a5(?) (signed).
  At `beq` at 0x2bdc8 (target 0x2bdfc), taken when v0(?) == a3(?) and falls through when v0(?) != a3(?).
  At `beq` at 0x2be0c (target 0x2be5c), taken when v0(?) >= a4(?) (signed) and falls through when v0(?) < a4(?) (signed).
  At `beq` at 0x2be20 (target 0x2bda0), taken when a1(=[sym(time)]) >= a6(?) (signed) and falls through when a1(=[sym(time)]) < a6(?) (signed).
  At `beq` at 0x2be28 (target 0x2bd9c), taken when v0(?) == a3(?) and falls through when v0(?) != a3(?).
  At `blez` at 0x2be5c (target 0x2c2fc), taken when a3(?) <= 0 (signed) and falls through when a3(?) > 0 (signed).
  At `beq` at 0x2be7c (target 0x2bf0c), taken when v0(?) >= a3(?) (signed) and falls through when v0(?) < a3(?) (signed).
  At `bltz` at 0x2be84 (target 0x2beec), taken when s6(?) < 0 (signed) and falls through when s6(?) >= 0 (signed).
  At `beq` at 0x2be8c (target 0x2bea8), taken when s8(?) == 0 and falls through when s8(?) != 0.
  At `beq` at 0x2bea0 (target 0x2bf00), taken when (a5(?) & 0x1) == 0 and falls through when (a5(?) & 0x1) != 0.
  At `beq` at 0x2beb0 (target 0x2bf0c), taken when v0(?) >= a3(?) (signed) and falls through when v0(?) < a3(?) (signed).
  At `bltz` at 0x2beb8 (target 0x2bf50), taken when s6(?) < 0 (signed) and falls through when s6(?) >= 0 (signed).
  At `beq` at 0x2bec0 (target 0x2be74), taken when s8(?) == 0 and falls through when s8(?) != 0.
  At `bne` at 0x2bed0 (target 0x2be74), taken when (a6(?) & 0x1) != 0 and falls through when (a6(?) & 0x1) == 0.
  At `bnel` at 0x2bedc (target 0x2be78), taken when a7(?) != a1(?) and falls through when a7(?) == a1(?).
  At `beq` at 0x2bef8 (target 0x2be8c), taken when (t0(?) & 0x1) == 0 and falls through when (t0(?) & 0x1) != 0.
  At `bnel` at 0x2bf04 (target 0x2beac), taken when a5(?) != a1(?) and falls through when a5(?) == a1(?).
  At `bne` at 0x2bf0c (target 0x2c1b8), taken when v0(?) != a3(?) and falls through when v0(?) == a3(?).
  At `beq` at 0x2bf14 (target 0x2c400), taken when a3(?) == a6(=0x10) and falls through when a3(?) != a6(=0x10).
  At `bne` at 0x2bf58 (target 0x2bed8), taken when (t1(?) & 0x1) != 0 and falls through when (t1(?) & 0x1) == 0.
  At `beq` at 0x2bf68 (target 0x2bf78), taken when s7(=a0) == 0 and falls through when s7(=a0) != 0.
  At `bltz` at 0x2bff8 (target 0x2c2bc), taken when a3(?) < 0 (signed) and falls through when a3(?) >= 0 (signed).
  At `beq` at 0x2c01c (target 0x2c2d4), taken when s5(?) == 0 and falls through when s5(?) != 0.
  At `beq` at 0x2c078 (target 0x2c2dc), taken when v0(=ret(memory_present)) == 0 and falls through when v0(=ret(memory_present)) != 0.
  At `beq` at 0x2c088 (target 0x2c3a8), taken when v0(=ret(page_ispoison)) == 0 and falls through when v0(=ret(page_ispoison)) != 0.
  At `beq` at 0x2c0a0 (target 0x2c0b4), taken when s7(=a0) == 0 and falls through when s7(=a0) != 0.
  At `bltz` at 0x2c108 (target 0x2c2c8), taken when ra(?) < 0 (signed) and falls through when ra(?) >= 0 (signed).
  At `beq` at 0x2c180 (target 0x2c448), taken when a6(?) == a7(=-0x1) and falls through when a6(?) != a7(=-0x1).
  At `beq` at 0x2c190 (target 0x2c2ec), taken when v0(=ret(memory_present)) == 0 and falls through when v0(=ret(memory_present)) != 0.
  At `beq` at 0x2c1a0 (target 0x2c208), taken when v0(=ret(page_ispoison)) == 0 and falls through when v0(=ret(page_ispoison)) != 0.
  At `beq` at 0x2c1d0 (target 0x2c328), taken when t0(=[sym(sbe_max_per_page)]) == a0(?) and falls through when t0(=[sym(sbe_max_per_page)]) != a0(?).
  At `beq` at 0x2c1d8 (target 0x2c390), taken when t8(=[sym(sbe_maxout)]) == a0(?) and falls through when t8(=[sym(sbe_maxout)]) != a0(?).
  At `bgez` at 0x2c230 (target 0x2c2ac), taken when ra(?) >= 0 (signed) and falls through when ra(?) < 0 (signed).
  At `bltz` at 0x2c27c (target 0x2c428), taken when ra(?) < 0 (signed) and falls through when ra(?) >= 0 (signed).
  At `bgez` at 0x2c29c (target 0x2bc68), taken when s1(?) >= 0 (signed) and falls through when s1(?) < 0 (signed).
  At `beq` at 0x2c2fc (target 0x2bf14), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `bne` at 0x2c314 (target 0x2c418), taken when a4(=[sym(sbe_max_per_page)]) != v0(?) and falls through when a4(=[sym(sbe_max_per_page)]) == v0(?).
  At `beql` at 0x2c3cc (target 0x2c3bc), taken when a4(=table(0x0)) == 0 and falls through when a4(=table(0x0)) != 0.
  At `beq` at 0x2c418 (target 0x2c394), taken when a2(=[sym(sbe_maxout)]) == v0(?) and falls through when a2(=[sym(sbe_maxout)]) != v0(?).
  At `beq` at 0x2c448 (target 0x2c45c), taken when s7(=a0) == 0 and falls through when s7(=a0) != 0.
  At `bgez` at 0x2c470 (target 0x2c484), taken when a3(?) >= 0 (signed) and falls through when a3(?) < 0 (signed).
  Returns v0 = ? (`jr` at 0x2bc8c).

- `install_eccintr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2c500 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2c500-0x2c558 (88 bytes).
  Calls `intr_connect_level` via direct with a0=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34198]:2, a1=0x7d, a2=0x0, a3=sym(memerror_sbe_intr), a4=0x0, a5=0x0, a7=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34198]:2 (`jal` at 0x2c544).
  At `beq` at 0x2c528 (target 0x2c54c), taken when a7(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34198]:2) == at(=-0x1) and falls through when a7(=[[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34198]:2) != at(=-0x1).
  Returns v0 = ? (`jr` at 0x2c550).

- `memerror_get_stats` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2c558 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2c558-0x2c5c8 (112 bytes).
  Stores 4 bytes from t1 to ? (base unknown) (`sw` at 0x2c598).
  Stores 4 bytes from a3 to a2 (arg2 at entry) +0x0 (`sw` at 0x2c5bc).
  At `blez` at 0x2c57c (target 0x2c5c0), taken when a6(=[a2]) <= 0 (signed) and falls through when a6(=[a2]) > 0 (signed).
  At `beq` at 0x2c5a8 (target 0x2c5b8), taken when a3(?) >= t0(=[a2]) (signed) and falls through when a3(?) < t0(=[a2]) (signed).
  At `bne` at 0x2c5b0 (target 0x2c58c), taken when a4(?) != 0 and falls through when a4(?) == 0.
  Returns v0 = ? (`jr` at 0x2c5b8).

- `assign_wards` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2c5c8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2c5c8-0x2c748 (384 bytes).
  Stores 2 bytes from a1 to table(0x8f0c) +0x0 (`sh` at 0x2c640).
  Stores 4 bytes from at to table(0x8f1c) +0x0 (`sw` at 0x2c668) with value entry(0x8f1c)+1.
  Calls `physmem_select_neighbor_node` via direct with a0=?, a1=[sym(physmem_max_radius)], a2=sp-64, a3=sym(guardian_selector), a5=0x0 (`jal` at 0x2c6d0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+48392, a2=?, a3=? (`jal` at 0x2c6f8).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+48392, a2=?, a3=? (`jal` at 0x2c704).
  At `blez` at 0x2c5fc (target 0x2c714), taken when v0(=[sym(maxnodes)]) <= 0 (signed) and falls through when v0(=[sym(maxnodes)]) > 0 (signed).
  At `beq` at 0x2c680 (target 0x2c714), taken when s0(?) >= v0(=[sym(maxnodes)]) (signed) and falls through when s0(?) < v0(=[sym(maxnodes)]) (signed).
  At `bne` at 0x2c6a0 (target 0x2c670), taken when t8(?) != 0 and falls through when t8(?) == 0.
  At `bne` at 0x2c6b4 (target 0x2c60c), taken when a0(?) != s3(=-0x1) and falls through when a0(?) == s3(=-0x1).
  At `bne` at 0x2c6d8 (target 0x2c6b4), taken when v0(=ret(physmem_select_neighbor_node)) != 0 and falls through when v0(=ret(physmem_select_neighbor_node)) == 0.
  At `bne` at 0x2c6e8 (target 0x2c6b4), taken when s2(?) < 0x8 (signed) and falls through when s2(?) >= 0x8 (signed).
  Returns v0 = one of 0x0, 0x1 (`jr` at 0x2c734).
  The instructions from 0x2c6b0 to 0x2c6b0 are not reached by any path from the entry, and their branches are not listed.

- `guardian_selector` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2c748 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2c748-0x2c798 (80 bytes).
  At `beq` at 0x2c768 (target 0x2c790), taken when at(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34200]:2) == 0 and falls through when at(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+34200]:2) != 0.
  At `beq` at 0x2c778 (target 0x2c788), taken when a0(=(a1 << 0x0)) >= a2(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+36636]) (signed) and falls through when a0(=(a1 << 0x0)) < a2(=[[((a0 << 0x3) + [[-0x3c00]:8]:8)]:8+36636]) (signed).
  Returns v0 = 0x0 (`jr` at 0x2c780).
  Returns v0 = 0x1 (`jr` at 0x2c788).
  Returns v0 = 0x0 (`jr` at 0x2c790).

- `probe_wards` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2c798 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2c798-0x2c804 (108 bytes).
  Calls `probe_md_errors` via direct with a0=?, a1=?, a2=[-0x3c00]:8, a3=? (`jal` at 0x2c7cc).
  At `blez` at 0x2c7b4 (target 0x2c7f0), taken when at(=[[-0x3c00]:8+36636]) <= 0 (signed) and falls through when at(=[[-0x3c00]:8+36636]) > 0 (signed).
  At `bne` at 0x2c7e8 (target 0x2c7c4), taken when s1(?) < a1(=[[-0x3c00]:8+36636]) (signed) and falls through when s1(?) >= a1(=[[-0x3c00]:8+36636]) (signed).
  Returns v0 = ? (`jr` at 0x2c7fc).

- `wards_tick` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2c804 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2c804-0x2c8d8 (212 bytes).
  Stores 4 bytes from t0 to [-0x3c00]:8 +0x8f20 (`sw` at 0x2c878) with value [[-0x3c00]:8+36640]+1.
  Stores 4 bytes from a6 to [-0x3c00]:8 +0x8f20 (`sw` at 0x2c89c).
  Calls `brl1_intr_poll` via direct with a0=?, a1=[[-0x3c00]:8+36636], a2=?, a3=[-0x3c00]:8, a4=[-0x3c00]:8+65536 (`jal` at 0x2c838).
  Calls `memerror_sbe_intr` via direct with a0=0x1, a1=[([-0x3c00]:8 + ([[-0x3c00]:8+36640] + [[-0x3c00]:8+36640]))+36620]:2, a2=?, a3=[-0x3c00]:8, a4=[-0x3c00]:8+65536, a5=[sym(disable_sbe_polling)] (`jal` at 0x2c8c4).
  At `blez` at 0x2c820 (target 0x2c85c), taken when a1(=[[-0x3c00]:8+36636]) <= 0 (signed) and falls through when a1(=[[-0x3c00]:8+36636]) > 0 (signed).
  At `bne` at 0x2c854 (target 0x2c830), taken when s1(?) < a1(=[[-0x3c00]:8+36636]) (signed) and falls through when s1(?) >= a1(=[[-0x3c00]:8+36636]) (signed).
  At `beq` at 0x2c85c (target 0x2c8a0), taken when a1(=[[-0x3c00]:8+36636]) == 0 and falls through when a1(=[[-0x3c00]:8+36636]) != 0.
  At `beq` at 0x2c868 (target 0x2c8b0), taken when a5(=[sym(disable_sbe_polling)]) == 0 and falls through when a5(=[sym(disable_sbe_polling)]) != 0.
  Returns v0 = ? (`jr` at 0x2c8a8).

- `intrgroup_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2c8d8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2c8d8-0x2c988 (176 bytes).
  Stores 8 bytes from zero to ? (base unknown) (`sd` at 0x2c904) with value 0x0.
  Stores 8 bytes from zero to ? (base unknown) (`sd` at 0x2c940) with value 0x0.
  Stores 4 bytes from s0 to ? (base unknown) (`sw` at 0x2c94c).
  Calls `spinlock_init` via direct with a0=sym(.bss)+45120, a1=sym(.rodata)+48512, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2c90c).
  Calls `spinlock_init` via direct with a0=?, a1=sym(.rodata)+48512, a2=?, a3=? (`jal` at 0x2c950).
  At `bne` at 0x2c900 (target 0x2c8f0), taken when a1(?) < 0x8 (signed) and falls through when a1(?) >= 0x8 (signed).
  At `bne` at 0x2c93c (target 0x2c92c), taken when a1(?) < 0x8 (signed) and falls through when a1(?) >= 0x8 (signed).
  At `bne` at 0x2c96c (target 0x2c928), taken when s0(?) < 0x10 (signed) and falls through when s0(?) >= 0x10 (signed).
  Returns v0 = ret(spinlock_init); f0 = ret(spinlock_init) (`jr` at 0x2c980).

- `intrgroup_alloc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2c988 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2c988-0x2ca6c (228 bytes).
  Stores 8 bytes from t8 to ? (base unknown) (`sd` at 0x2ca0c).
  Stores 8 bytes from zero to ? (base unknown) (`sd` at 0x2ca2c) with value 0x0.
  Stores 8 bytes from v0 to table(sym(.bss)+45120) +0x48 (`sd` at 0x2ca4c) with value ret(kmem_zalloc).
  Calls `mutex_spinlock` via direct with a0=sym(.bss)+45120, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2c9a4).
  Calls `mutex_spinunlock` via direct with a0=sym(.bss)+45120, a1=ret(mutex_spinlock), a2=?, a3=?, a7=table(sym(.bss)+45120) (`jal` at 0x2c9f0).
  Calls `mutex_spinunlock` via direct with a0=sym(.bss)+45120, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x2ca34).
  Calls `kmem_zalloc` via direct with a0=([sym(maxcpus)] << 0x2), a1=0x0, a2=?, a3=? (`jal` at 0x2ca44).
  At `beq` at 0x2c9cc (target 0x2ca00), taken when (a5(?) & a6(?)) == 0 and falls through when (a5(?) & a6(?)) != 0.
  At `bne` at 0x2c9e4 (target 0x2c9c0), taken when a4(?) < 0x10 (signed) and falls through when a4(?) >= 0x10 (signed).
  At `bne` at 0x2ca28 (target 0x2ca18), taken when t0(?) < 0x8 (signed) and falls through when t0(?) >= 0x8 (signed).
  Returns v0 = ? (`jr` at 0x2ca64).

- `intrgroup_join` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ca6c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ca6c-0x2cbd0 (356 bytes).
  Stores 8 bytes from a2 to ? (base unknown) (`sd` at 0x2caf0).
  Stores 1 byte from s4 to ([a0+72]:8 + (a1 << 0x2)) +0x0 (`sb` at 0x2cb68) with value ret(intr_reserve_level).
  Stores 2 bytes from a5 to ([a0+72]:8 + (a1 << 0x2)) +0x2 (`sh` at 0x2cb88) with value [[(sym(pdaindr) + (a1 << 0x4))+8]:8+1068]:2.
  Calls `mutex_spinlock` via direct with a0=a0+68, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2ca90).
  Calls `mutex_spinunlock` via direct with a0=a0+68, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x2cac0).
  Calls `sprintf` via direct with a0=sp-64, a1=sym(.rodata)+48512, a2=[a0+64], a3=? (`jal` at 0x2caf8).
  Calls `intr_reserve_level` via direct with a0=a1 at entry (arg1), a1=-0x1, a2=0x0, a3=-0x1, a4=sp-64 (`jal` at 0x2cb14).
  Calls `intr_connect_level` via direct with a0=a1 at entry (arg1), a1=ret(intr_reserve_level), a2=0x0, a3=sym(groupintr), a4=[a0+64], a5=0x0 (`jal` at 0x2cb3c).
  Calls `mutex_spinunlock` via direct with a0=a0+68, a1=ret(mutex_spinlock), a2=?, a3=?, a5=[[(sym(pdaindr) + (a1 << 0x4))+8]:8+1068]:2, a6=([a0+72]:8 + (a1 << 0x2)), a7=(a1 << 0x2) (`jal` at 0x2cb84).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+48512, a2=ret(intr_reserve_level), a3=[a0+64] (`jal` at 0x2cba4).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+48512, a2=ret(intr_reserve_level), a3=[a0+64], a4=-0x1 (`jal` at 0x2cbc0).
  At `beq` at 0x2cab4 (target 0x2cae4), taken when (a5(?) & a7(?)) == 0 and falls through when (a5(?) & a7(?)) != 0.
  At `beq` at 0x2cb20 (target 0x2cb94), taken when v0(=ret(intr_reserve_level)) == a3(=-0x1) and falls through when v0(=ret(intr_reserve_level)) != a3(=-0x1).
  At `beq` at 0x2cb48 (target 0x2cbb4), taken when v0(=ret(intr_connect_level)) == a4(=-0x1) and falls through when v0(=ret(intr_connect_level)) != a4(=-0x1).
  Returns v0 = ret(mutex_spinunlock); f0 = ret(mutex_spinunlock) (`jr` at 0x2cadc).

- `intrgroup_unjoin` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2cbd0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2cbd0-0x2cce4 (276 bytes).
  Stores 8 bytes from a2 to ? (base unknown) (`sd` at 0x2cc2c).
  Stores 1 byte from zero to ([a0+72]:8 + (a1 << 0x2)) +0x0 (`sb` at 0x2cc74) with value 0x0.
  Stores 2 bytes from a2 to ([a0+72]:8 + (a1 << 0x2)) +0x2 (`sh` at 0x2cc90) with value -0x1.
  Calls `mutex_spinlock` via direct with a0=a0+68, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2cbf4).
  Calls `intr_disconnect_level` via direct with a0=a1 at entry (arg1), a1=[([a0+72]:8 + (a1 << 0x2))]:1, a2=?, a3=? (`jal` at 0x2cc44).
  Calls `intr_unreserve_level` via direct with a0=a1 at entry (arg1), a1=[([a0+72]:8 + (a1 << 0x2))]:1, a2=?, a3=? (`jal` at 0x2cc64).
  Calls `mutex_spinunlock` via direct with a0=a0+68, a1=ret(mutex_spinlock), a2=-0x1, a3=([a0+72]:8 + (a1 << 0x2)), a4=([a0+72]:8 + (a1 << 0x2)) (`jal` at 0x2cc8c).
  Calls `mutex_spinunlock` via direct with a0=a0+68, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x2ccb8).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+48512, a2=?, a3=[a0+64] (`jal` at 0x2ccd4).
  At `beq` at 0x2cc1c (target 0x2ccb4), taken when (a5(?) & a7(?)) == 0 and falls through when (a5(?) & a7(?)) != 0.
  At `beq` at 0x2cc50 (target 0x2ccc8), taken when v0(=ret(intr_disconnect_level)) == a3(=-0x1) and falls through when v0(=ret(intr_disconnect_level)) != a3(=-0x1).
  Returns v0 = ret(mutex_spinunlock); f0 = ret(mutex_spinunlock) (`jr` at 0x2ccac).

- `intrgroup_free` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2cce4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2cce4-0x2cdcc (232 bytes).
  Stores 8 bytes from a2 to table(sym(.bss)+45120) +0x500 (`sd` at 0x2cdac).
  Calls `intrgroup_unjoin` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=[sym(maxcpus)] (`jal` at 0x2cd14).
  Calls `kmem_free` via direct with a0=[a0+72]:8, a1=([sym(maxcpus)] << 0x2), a2=?, a3=[sym(maxcpus)] (`jal` at 0x2cd60).
  Calls `mutex_spinlock` via direct with a0=sym(.bss)+45120, a1=?, a2=?, a3=? (`jal` at 0x2cd74).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=table(sym(.bss)+45120) (`jal` at 0x2cda8).
  At `blez` at 0x2ccfc (target 0x2cdc4), taken when a3(=[sym(maxcpus)]) <= 0 (signed) and falls through when a3(=[sym(maxcpus)]) > 0 (signed).
  At `beq` at 0x2cd28 (target 0x2cd60), taken when s0(?) >= a3(=[sym(maxcpus)]) (signed) and falls through when s0(?) < a3(=[sym(maxcpus)]) (signed).
  At `bne` at 0x2cd48 (target 0x2cd10), taken when (a4(?) & a5(?)) != 0 and falls through when (a4(?) & a5(?)) == 0.
  At `bne` at 0x2cd58 (target 0x2cd30), taken when s0(?) < a3(=[sym(maxcpus)]) (signed) and falls through when s0(?) >= a3(=[sym(maxcpus)]) (signed).
  Returns v0 = ret(mutex_spinunlock); f0 = ret(mutex_spinunlock) (`jr` at 0x2cdbc).

- `groupintr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2cdcc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2cdcc-0x2ce4c (128 bytes).
  Calls `frs_handle_group_intr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2cdec).
  Calls `log_tstamp_event` via direct with a0=0x6f, a1=0x0, a2=0x0, a3=0x0, a4=0x0 (`jal` at 0x2ce20).
  Calls `log_tstamp_event` via direct with a0=0x65, a1=0x6f, a2=0x0, a3=0x0, a4=0x0 (`jal` at 0x2ce3c).
  At `bne` at 0x2cdd8 (target 0x2ce10), taken when (at(=[-0x3d80]:8) & 0x20) != 0 and falls through when (at(=[-0x3d80]:8) & 0x20) == 0.
  At `beq` at 0x2cde4 (target 0x2cdf4), taken when v0(=[-0x3958]) == 0 and falls through when v0(=[-0x3958]) != 0.
  At `bne` at 0x2cdfc (target 0x2ce30), taken when (v1(=[-0x3d80]:8) & 0x20) != 0 and falls through when (v1(=[-0x3d80]:8) & 0x20) == 0.
  Returns v0 = ? (`jr` at 0x2ce08).

- `sendgroupintr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ce4c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ce4c-0x2cf54 (264 bytes).
  Stores 8 bytes from at to ? (base unknown) (`sd` at 0x2cef4).
  Calls `groupintr` via direct with a0=0x0, a1=?, a2=?, a3=?, a4=[sym(maxcpus)], a6=[-0x3bd8]:2, a7=0x1 (`jal` at 0x2cf20).
  At `blez` at 0x2ce70 (target 0x2cf38), taken when a4(=[sym(maxcpus)]) <= 0 (signed) and falls through when a4(=[sym(maxcpus)]) > 0 (signed).
  At `beq` at 0x2ce90 (target 0x2cf00), taken when a2(?) >= a4(=[sym(maxcpus)]) (signed) and falls through when a2(?) < a4(=[sym(maxcpus)]) (signed).
  At `beq` at 0x2ceac (target 0x2ce80), taken when (t9(?) & at(?)) == 0 and falls through when (t9(?) & at(?)) != 0.
  At `beq` at 0x2ceb4 (target 0x2ce80), taken when a6(=[-0x3bd8]:2) == a2(?) and falls through when a6(=[-0x3bd8]:2) != a2(?).
  At `beq` at 0x2cf18 (target 0x2cf28), taken when (a2(?) & a3(?)) == 0 and falls through when (a2(?) & a3(?)) != 0.
  Returns v0 = 0x0 (`jr` at 0x2cf30).

- `hubdev_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d2d0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2d2d0-0x2d2fc (44 bytes).
  Stores 8 bytes from zero to sym(hubdev_callout_list) +0x0 (`sd` at 0x2d2f0) with value 0x0.
  Calls `init_mutex` via direct with a0=sym(hubdev_callout_mutex), a1=0x0, a2=sym(.rodata)+48704, a3=-0x1 (`jal` at 0x2d2e4).
  Returns v0 = ret(init_mutex); f0 = ret(init_mutex) (`jr` at 0x2d2f4).

- `hubdev_docallouts` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d3d4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2d3d4-0x2d460 (140 bytes).
  Calls `mutex_lock` via direct with a0=sym(hubdev_callout_mutex), a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2d3f4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jalr` at 0x2d40c).
  Calls `mutex_unlock` via direct with a0=sym(hubdev_callout_mutex), a1=?, a2=?, a3=? (`jal` at 0x2d428).
  Calls `mutex_unlock` via direct with a0=sym(hubdev_callout_mutex), a1=?, a2=?, a3=? (`jal` at 0x2d450).
  At `beq` at 0x2d400 (target 0x2d428), taken when at(=[sym(hubdev_callout_list)]:8) == 0 and falls through when at(=[sym(hubdev_callout_list)]:8) != 0.
  At `bne` at 0x2d414 (target 0x2d450), taken when v0(=ret(?)) != 0 and falls through when v0(=ret(?)) == 0.
  At `bne` at 0x2d420 (target 0x2d408), taken when s0(?) != 0 and falls through when s0(?) == 0.
  Returns v0 = ?; f0 = ret(mutex_unlock) (`jr` at 0x2d448).

- `hubdev_prombase_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d460 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2d460-0x2d49c (60 bytes).
  Calls `hwgraph_info_get_LBL` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+48704, a2=sp-16, a3=a3 at entry (arg3) (`jal` at 0x2d474).
  Returns v0 = table(0x9000000038000000); f0 = ret(hwgraph_info_get_LBL) (`jr` at 0x2d494).

- `hubdev_cnodeid_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d49c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2d49c-0x2d4cc (48 bytes).
  Calls `hwgraph_info_get_LBL` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+48704, a2=sp-16, a3=a3 at entry (arg3) (`jal` at 0x2d4b0).
  Returns v0 = ?; f0 = ret(hwgraph_info_get_LBL) (`jr` at 0x2d4c4).

- `set_pwr_fail` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d4d4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2d4d4-0x2d4dc (8 bytes).
  Returns v0 = ? (`jr` at 0x2d4d4).

- `vme_frs_install` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d4e4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2d4e4-0x2d4ec (8 bytes).
  Returns v0 = 0x0 (`jr` at 0x2d4e4).

- `vme_frs_uninstall` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d4ec (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2d4ec-0x2d4f4 (8 bytes).
  Returns v0 = 0x0 (`jr` at 0x2d4ec).

- `intrnorm` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2d500 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2d500-0x2d76c (620 bytes).
  Stores 1 byte from k0 to abs 0xffffffffffffc04f (`sb` at 0x2d5b8) with value 0x2.
  Stores 8 bytes from sp to [[-0x3fe8]:8+1008]:8 +0x248 (`sd` at 0x2d5c8) with value sp.
  Stores 8 bytes from gp to [[-0x3fe8]:8+1008]:8 +0x240 (`sd` at 0x2d5d4) with value gp.
  Stores 1 byte from k1 to abs 0xffffffffffffc04f (`sb` at 0x2d634) with value 0x2.
  Stores 8 bytes from sp to ? (base unknown) (`sd` at 0x2d644) with value sp.
  Stores 8 bytes from k1 to [-0x3fe0]:8 +0x228 (`sd` at 0x2d650).
  Stores 1 byte from k1 to abs 0xffffffffffffc04f (`sb` at 0x2d664) with value 0x2.
  Stores 8 bytes from sp to [-0x3fd0]:8 +0xe0 (`sd` at 0x2d66c) with value sp.
  Stores 1 byte from k0 to abs 0xffffffffffffc053 (`sb` at 0x2d674) with value 0x1.
  Stores 8 bytes from gp to ? (base unknown) (`sd` at 0x2d6bc) with value gp.
  Stores 8 bytes from sp to ? (base unknown) (`sd` at 0x2d6c4) with value sp.
  Stores 1 byte from k0 to abs 0xffffffffffffc04f (`sb` at 0x2d6d8) with value 0x2.
  Stores 8 bytes from ra to ? (base unknown) (`sd` at 0x2d6e0) with value ra.
  Stores 8 bytes from a7 to ? (base unknown) (`sd` at 0x2d6e8) with value a7.
  Stores 8 bytes from a6 to ? (base unknown) (`sd` at 0x2d6f0) with value a6.
  Stores 8 bytes from a5 to ? (base unknown) (`sd` at 0x2d6f4) with value a5.
  Stores 8 bytes from a4 to ? (base unknown) (`sd` at 0x2d6f8) with value a4.
  Stores 8 bytes from a3 to ? (base unknown) (`sd` at 0x2d6fc) with value a3.
  Stores 8 bytes from a2 to ? (base unknown) (`sd` at 0x2d700) with value a2.
  Stores 8 bytes from a1 to ? (base unknown) (`sd` at 0x2d704) with value a1.
  Stores 8 bytes from a0 to ? (base unknown) (`sd` at 0x2d708) with value a0.
  Stores 8 bytes from s7 to ? (base unknown) (`sd` at 0x2d70c) with value s7.
  Stores 8 bytes from s6 to ? (base unknown) (`sd` at 0x2d710) with value s6.
  Stores 8 bytes from s5 to ? (base unknown) (`sd` at 0x2d714) with value s5.
  Stores 8 bytes from s4 to ? (base unknown) (`sd` at 0x2d718) with value s4.
  Stores 8 bytes from s3 to ? (base unknown) (`sd` at 0x2d71c) with value s3.
  Stores 8 bytes from s2 to ? (base unknown) (`sd` at 0x2d720) with value s2.
  Stores 8 bytes from s1 to ? (base unknown) (`sd` at 0x2d724) with value s1.
  Stores 8 bytes from s0 to ? (base unknown) (`sd` at 0x2d728) with value s0.
  Stores 8 bytes from at to ? (base unknown) (`sd` at 0x2d730) with value [-0x3fc8]:8.
  Stores 8 bytes from t0 to abs 0xffffffffffffc018 (`sd` at 0x2d73c) with value [[-0x3fd8]:8+144]:8.
  Stores 8 bytes from sp to ? (base unknown) (`sd` at 0x2d760) with value sp.
  Calls `ecommon` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2d5ec).
  Calls `ecommon` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2d654).
  Calls `ecommon_allsaved` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2d684).
  Calls `ecommon` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2d68c).
  Calls `tfi_save` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2d72c).
  Calls `uli_setasids` via direct with a0=[[-0x3fd8]:8+168]:2, a1=?, a2=?, a3=? (`jal` at 0x2d740).
  Calls `ecommon_allsaved` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x2d748).
  Calls `ecommon` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2d764).
  At `beq` at 0x2d50c (target 0x2d568), taken when (k1(?) & 0x8000) == 0 and falls through when (k1(?) & 0x8000) != 0.
  At `bltz` at 0x2d514 (target 0x2d568), taken when k1(?) < 0 (signed) and falls through when k1(?) >= 0 (signed).
  At `bltz` at 0x2d520 (target 0x2d568), taken when k1(?) < 0 (signed) and falls through when k1(?) >= 0 (signed).
  At `beq` at 0x2d534 (target 0x2d554), taken when k1(?) == 0 and falls through when k1(?) != 0.
  At `bltz` at 0x2d540 (target 0x2d568), taken when k1(?) < 0 (signed) and falls through when k1(?) >= 0 (signed).
  At `bltz` at 0x2d54c (target 0x2d568), taken when k1(?) < 0 (signed) and falls through when k1(?) >= 0 (signed).
  At `beq` at 0x2d558 (target 0x2d568), taken when (k0(=[-0x3fb8]) & 0x40) == 0 and falls through when (k0(=[-0x3fb8]) & 0x40) != 0.
  At `beq` at 0x2d570 (target 0x2d588), taken when (k1(?) & 0x1) == 0 and falls through when (k1(?) & 0x1) != 0.
  At `bne` at 0x2d580 (target 0x2d58c), taken when (k1(?) & k0(?)) != 0 and falls through when (k1(?) & k0(?)) == 0.
  At `bne` at 0x2d590 (target 0x2d694), taken when k0(=[-0x3fd8]:8) != 0 and falls through when k0(=[-0x3fd8]:8) == 0.
  At `beq` at 0x2d5a0 (target 0x2d750), taken when k0(=[-0x3fb1]:1-2) == 0 and falls through when k0(=[-0x3fb1]:1-2) != 0.
  At `beq` at 0x2d5a8 (target 0x2d630), taken when k0(=[-0x3fb1]:1-1) == 0 and falls through when k0(=[-0x3fb1]:1-1) != 0.
  At `beq` at 0x2d5b0 (target 0x2d65c), taken when k0(=[-0x3fb1]:1-3) == 0 and falls through when k0(=[-0x3fb1]:1-3) != 0.
  At `beq` at 0x2d67c (target 0x2d68c), taken when k0(=[-0x3fb0]:1) == 0 and falls through when k0(=[-0x3fb0]:1) != 0.
  At `beq` at 0x2d69c (target 0x2d750), taken when k1(=[-0x3fb1]:1) == at(=0x2) and falls through when k1(=[-0x3fb1]:1) != at(=0x2).
  The instructions from 0x2d5f4 to 0x2d62c are not reached by any path from the entry, and their branches are not listed.

- `_j_endexceptnorm` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ded0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ded0-0x2dee0 (16 bytes).
  Calls `exception` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2ded8).

- `_j_exceptnorm_nosymmon` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ded0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ded0-0x2dee0 (16 bytes).
  Calls `exception` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2ded8).

- `_endexceptnorm_prolog` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2dee0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2dee0-0x2df00 (32 bytes).
  Role: unknown. Hostfacts reports no reached access, call, branch, or return in 0x2dee0-0x2df00.

- `_exceptnorm_prolog` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2dee0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2dee0-0x2df00 (32 bytes).
  Role: unknown. Hostfacts reports no reached access, call, branch, or return in 0x2dee0-0x2df00.

- `_j_endexceptnorm_nosymmon` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2dee0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2dee0-0x2df00 (32 bytes).
  Role: unknown. Hostfacts reports no reached access, call, branch, or return in 0x2dee0-0x2df00.

- `eutlbmiss_prolog_up` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2df0c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2df0c-0x2df1c (16 bytes).
  The instructions from 0x2df14 to 0x2df14 are not reached by any path from the entry, and their branches are not listed.
  Role: unknown. Hostfacts reports no reached access, call, branch, or return in 0x2df0c-0x2df1c.

- `utlbmiss_prolog_mp` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2df0c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2df0c-0x2df1c (16 bytes).
  The instructions from 0x2df14 to 0x2df14 are not reached by any path from the entry, and their branches are not listed.
  Role: unknown. Hostfacts reports no reached access, call, branch, or return in 0x2df0c-0x2df1c.

- `eutlbmiss` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2dfa8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2dfa8-0x2e030 (136 bytes).
  Stores 8 bytes from at to abs 0xffffffffffffc038 (`sd` at 0x2dfcc).
  At `beq` at 0x2dfc4 (target 0x2df90), taken when (k1(?) & 0xf) == 0 -> outside and falls through when (k1(?) & 0xf) != 0.

- `lpg_utlbmiss` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2dfa8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2dfa8-0x2e030 (136 bytes).
  Stores 8 bytes from at to abs 0xffffffffffffc038 (`sd` at 0x2dfcc).
  At `beq` at 0x2dfc4 (target 0x2df90), taken when (k1(?) & 0xf) == 0 -> outside and falls through when (k1(?) & 0xf) != 0.

- `eutlbmiss2` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e0bc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e0bc-0x2e0c0 (4 bytes).
  Role: unknown. Hostfacts reports no reached access, call, branch, or return in 0x2e0bc-0x2e0c0.

- `utlbmiss_sharedseg1a` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e0bc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e0bc-0x2e0c0 (4 bytes).
  Role: unknown. Hostfacts reports no reached access, call, branch, or return in 0x2e0bc-0x2e0c0.

- `elpg_overlay_utlbmiss` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e1e0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e1e0-0x2e20c (44 bytes).
  Stores 4 bytes from k1 to abs 0xffffffffffffc554 (`sw` at 0x2e1f8) with value [-0x3aac]+1.
  Stores 4 bytes from k1 to abs 0xffffffffffffc558 (`sw` at 0x2e208) with value [-0x3aa8]+1.
  Calls `utlbmiss` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e1f4).
  Calls `utlbmiss` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e204).
  At `beq` at 0x2e1e8 (target 0x2e1fc), taken when (k1(?) & 0x10) == 0 and falls through when (k1(?) & 0x10) != 0.

- `utlbmiss1` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e1e0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e1e0-0x2e20c (44 bytes).
  Stores 4 bytes from k1 to abs 0xffffffffffffc554 (`sw` at 0x2e1f8) with value [-0x3aac]+1.
  Stores 4 bytes from k1 to abs 0xffffffffffffc558 (`sw` at 0x2e208) with value [-0x3aa8]+1.
  Calls `utlbmiss` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e1f4).
  Calls `utlbmiss` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e204).
  At `beq` at 0x2e1e8 (target 0x2e1fc), taken when (k1(?) & 0x10) == 0 and falls through when (k1(?) & 0x10) != 0.

- `eutlbmiss1` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e20c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e20c-0x2e238 (44 bytes).
  Stores 4 bytes from k1 to abs 0xffffffffffffc554 (`sw` at 0x2e224) with value [-0x3aac]+1.
  Stores 4 bytes from k1 to abs 0xffffffffffffc558 (`sw` at 0x2e234) with value [-0x3aa8]+1.
  Calls `lpg_utlbmiss` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e220).
  Calls `lpg_utlbmiss` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e230).
  At `beq` at 0x2e214 (target 0x2e228), taken when (k1(?) & 0x10) == 0 and falls through when (k1(?) & 0x10) != 0.

- `lpg_counting_utlbmiss` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e20c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e20c-0x2e238 (44 bytes).
  Stores 4 bytes from k1 to abs 0xffffffffffffc554 (`sw` at 0x2e224) with value [-0x3aac]+1.
  Stores 4 bytes from k1 to abs 0xffffffffffffc558 (`sw` at 0x2e234) with value [-0x3aa8]+1.
  Calls `lpg_utlbmiss` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e220).
  Calls `lpg_utlbmiss` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e230).
  At `beq` at 0x2e214 (target 0x2e228), taken when (k1(?) & 0x10) == 0 and falls through when (k1(?) & 0x10) != 0.

- `elpg_counting_utlbmiss` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e238 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e238-0x2e264 (44 bytes).
  Stores 4 bytes from k1 to abs 0xffffffffffffc554 (`sw` at 0x2e250) with value [-0x3aac]+1.
  Stores 4 bytes from k1 to abs 0xffffffffffffc558 (`sw` at 0x2e260) with value [-0x3aa8]+1.
  Calls `utlbmiss2` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e24c).
  Calls `utlbmiss2` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e25c).
  At `beq` at 0x2e240 (target 0x2e254), taken when (k1(?) & 0x10) == 0 and falls through when (k1(?) & 0x10) != 0.

- `utlbmiss3` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e238 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e238-0x2e264 (44 bytes).
  Stores 4 bytes from k1 to abs 0xffffffffffffc554 (`sw` at 0x2e250) with value [-0x3aac]+1.
  Stores 4 bytes from k1 to abs 0xffffffffffffc558 (`sw` at 0x2e260) with value [-0x3aa8]+1.
  Calls `utlbmiss2` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e24c).
  Calls `utlbmiss2` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e25c).
  At `beq` at 0x2e240 (target 0x2e254), taken when (k1(?) & 0x10) == 0 and falls through when (k1(?) & 0x10) != 0.

- `eutlbmiss3` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e264 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e264-0x2e290 (44 bytes).
  Stores 4 bytes from k1 to abs 0xffffffffffffc554 (`sw` at 0x2e27c) with value [-0x3aac]+1.
  Stores 4 bytes from k1 to abs 0xffffffffffffc558 (`sw` at 0x2e28c) with value [-0x3aa8]+1.
  Calls `lpg_overlay_utlbmiss` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e278).
  Calls `lpg_overlay_utlbmiss` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e288).
  At `beq` at 0x2e26c (target 0x2e280), taken when (k1(?) & 0x10) == 0 and falls through when (k1(?) & 0x10) != 0.

- `lpg_overlay_counting_utlbmiss` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e264 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e264-0x2e290 (44 bytes).
  Stores 4 bytes from k1 to abs 0xffffffffffffc554 (`sw` at 0x2e27c) with value [-0x3aac]+1.
  Stores 4 bytes from k1 to abs 0xffffffffffffc558 (`sw` at 0x2e28c) with value [-0x3aa8]+1.
  Calls `lpg_overlay_utlbmiss` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e278).
  Calls `lpg_overlay_utlbmiss` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x2e288).
  At `beq` at 0x2e26c (target 0x2e280), taken when (k1(?) & 0x10) == 0 and falls through when (k1(?) & 0x10) != 0.

- `elpg_overlay_counting_utlbmiss` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e290 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e290-0x2e294 (4 bytes).
  Role: unknown. Hostfacts reports no reached access, call, branch, or return in 0x2e290-0x2e294.

- `utlbmiss_prolog_patch` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e290 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e290-0x2e294 (4 bytes).
  Role: unknown. Hostfacts reports no reached access, call, branch, or return in 0x2e290-0x2e294.

- `_ecc_end` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e318 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e318-0x2e33c (36 bytes).
  At `beq` at 0x2e324 (target 0x2e334), taken when a4(=[sym(.sbss)+232]:8) == 0 and falls through when a4(=[sym(.sbss)+232]:8) != 0.
  Returns v0 = ? (`jr` at 0x2e334).

- `get_nvreg` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e318 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e318-0x2e33c (36 bytes).
  At `beq` at 0x2e324 (target 0x2e334), taken when a4(=[sym(.sbss)+232]:8) == 0 and falls through when a4(=[sym(.sbss)+232]:8) != 0.
  Returns v0 = ? (`jr` at 0x2e334).

- `set_nvreg` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e33c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e33c-0x2e3bc (128 bytes).
  Calls `ioc_base [0x2ef04]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2e37c).
  Calls `set_nvreg_base [0x2ef9c]` via direct with a0=ret(ioc_base), a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=? (`jal` at 0x2e390).
  At `blez` at 0x2e358 (target 0x2e3a0), taken when at(=[sym(nummodules)]) <= 0 (signed) and falls through when at(=[sym(nummodules)]) > 0 (signed).
  At `beq` at 0x2e374 (target 0x2e3a0), taken when s0(?) >= v0(=[sym(nummodules)]) (signed) and falls through when s0(?) < v0(=[sym(nummodules)]) (signed).
  At `beq` at 0x2e384 (target 0x2e368), taken when v0(=ret(ioc_base)) == 0 and falls through when v0(=ret(ioc_base)) != 0.
  Returns v0 = 0x0 (`jr` at 0x2e3b4).

- `get_nvram_buf` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e3bc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e3bc-0x2e460 (164 bytes).
  Stores 1 byte from v0 to ? (base unknown) (`sb` at 0x2e424) with value ret(get_nvreg).
  Stores 1 byte from zero to ? (base unknown) (`sb` at 0x2e440) with value 0x0.
  Stores 1 byte from zero to a2 (arg2 at entry) +0x0 (`sb` at 0x2e45c) with value 0x0.
  Calls `get_nvreg` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2e40c).
  At `beq` at 0x2e3d8 (target 0x2e458), taken when at(=(a0 + a1)) >= 0x7ff7 (signed) and falls through when at(=(a0 + a1)) < 0x7ff7 (signed).
  At `beq` at 0x2e3f0 (target 0x2e428), taken when a1 == 0 and falls through when a1 != 0.
  At `beq` at 0x2e420 (target 0x2e3fc), taken when s4(=a1-1) >= s0(?) (unsigned) and falls through when s4(=a1-1) < s0(?) (unsigned).
  Returns v0 = ? (`jr` at 0x2e450).

- `update_checksum` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e460 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e460-0x2e4c0 (96 bytes).
  Calls `ioc_base [0x2ef04]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2e490).
  Calls `update_checksum_base [0x2f078]` via direct with a0=ret(ioc_base), a1=?, a2=?, a3=? (`jal` at 0x2e4a0).
  At `blez` at 0x2e46c (target 0x2e4b0), taken when at(=[sym(nummodules)]) <= 0 (signed) and falls through when at(=[sym(nummodules)]) > 0 (signed).
  At `beq` at 0x2e488 (target 0x2e4b0), taken when s0(?) >= v0(=[sym(nummodules)]) (signed) and falls through when s0(?) < v0(=[sym(nummodules)]) (signed).
  At `beq` at 0x2e498 (target 0x2e47c), taken when v0(=ret(ioc_base)) == 0 and falls through when v0(=ret(ioc_base)) != 0.
  Returns v0 = ? (`jr` at 0x2e4b8).

- `set_nvram_offset` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e4c0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e4c0-0x2e5a8 (232 bytes).
  Calls `ioc_base [0x2ef04]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2e50c).
  Calls `set_nvreg_base [0x2ef9c]` via direct with a0=ret(ioc_base), a1=?, a2=?, a3=? (`jal` at 0x2e53c).
  Calls `update_checksum_base [0x2f078]` via direct with a0=ret(ioc_base), a1=?, a2=?, a3=? (`jal` at 0x2e584).
  At `beq` at 0x2e4f8 (target 0x2e54c), taken when at(=(a0 + a1)) >= 0x7ff7 (signed) and falls through when at(=(a0 + a1)) < 0x7ff7 (signed).
  At `blez` at 0x2e500 (target 0x2e5a0), taken when a5(=[sym(nummodules)]) <= 0 (signed) and falls through when a5(=[sym(nummodules)]) > 0 (signed).
  At `beq` at 0x2e518 (target 0x2e58c), taken when v0(=ret(ioc_base)) == 0 and falls through when v0(=ret(ioc_base)) != 0.
  At `beq` at 0x2e520 (target 0x2e584), taken when s4(=a1) == 0 and falls through when s4(=a1) != 0.
  At `beq` at 0x2e544 (target 0x2e570), taken when v0(=ret(set_nvreg_base)) == 0 and falls through when v0(=ret(set_nvreg_base)) != 0.
  At `bne` at 0x2e57c (target 0x2e52c), taken when s1(?) < s4(=a1) (unsigned) and falls through when s1(?) >= s4(=a1) (unsigned).
  At `bne` at 0x2e598 (target 0x2e50c), taken when s2(?) < a4(=[sym(nummodules)]) (signed) and falls through when s2(?) >= a4(=[sym(nummodules)]) (signed).
  Returns v0 = one of -0x1, 0x0 (`jr` at 0x2e568).

- `nvram_baseinit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e824 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e824-0x2e95c (312 bytes).
  Stores 4 bytes from t0 to sym(ioc_nvram_offset) +0x0 (`sw` at 0x2e88c) with value 0x80000.
  Stores 8 bytes from t3 to sym(ioc_get_mem) +0x0 (`sd` at 0x2e894) with value sym(ioc3_get_mem).
  Stores 1 byte from t8 to sym(.bss) +0xb5b2 (`sb` at 0x2e8b4) with value 0x0.
  Stores 2 bytes from at to sym(.bss) +0xb5b0 (`sh` at 0x2e8b8) with value 0x6333.
  Stores 8 bytes from v0 to sym(.bss) +0xb5a8 (`sd` at 0x2e8bc) with value 0x7063692f342f696f.
  Stores 8 bytes from v1 to sym(.bss) +0xb5a0 (`sd` at 0x2e8c0) with value 0x74616c6b2f31352f.
  Stores 8 bytes from a0 to sym(.bss) +0xb598 (`sd` at 0x2e8c4) with value 0x49627269636b2f78.
  Stores 8 bytes from t0 to sym(p_routertick) +0xe8 (`sd` at 0x2e8e8) with value table(0x80000).
  Stores 4 bytes from a3 to sym(ioc_nvram_offset) +0x0 (`sw` at 0x2e914) with value 0x80000.
  Stores 8 bytes from a7 to sym(ioc_get_mem) +0x0 (`sd` at 0x2e924) with value sym(ioc4_get_mem).
  Stores 8 bytes from a3 to sym(p_routertick) +0xe8 (`sd` at 0x2e958) with value table(0x80000).
  Calls `sprintf` via direct with a0=sym(ioc_path), a1=sym(.rodata)+49640, a2=?, a3=([sym(master_nasid)]:2 << 0x21)+0x9600000000000000, a4=(([sym(master_nasid)]:2 << 0x21)+0x9600000000000000 | 0x2000), a5=0xffffffffff, a7=0x9600000000000000 (`jal` at 0x2e8fc).
  At `beq` at 0x2e870 (target 0x2e888), taken when a1(?) == t0(=0x310a9) and falls through when a1(?) != t0(=0x310a9).
  At `beq` at 0x2e878 (target 0x2e8ec), taken when a1(?) == a2(=0x100a10a9) and falls through when a1(?) != a2(=0x100a10a9).
  Returns v0 = ? (`jr` at 0x2e880).

- `nvram_dict_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e95c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e95c-0x2e9ec (144 bytes).
  Calls `set_nvreg` via direct with a0=0x36c3, a1=0xda, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2e968).
  Calls `set_nvreg` via direct with a0=0x36c4, a1=0x0, a2=?, a3=? (`jal` at 0x2e978).
  Calls `set_nvreg` via direct with a0=?, a1=0xff, a2=?, a3=? (`jal` at 0x2e994).
  Calls `set_nvreg` via direct with a0=?, a1=0xff, a2=?, a3=? (`jal` at 0x2e9a4).
  Calls `set_nvreg` via direct with a0=?, a1=0xff, a2=?, a3=? (`jal` at 0x2e9b4).
  Calls `update_checksum` via direct with a0=?, a1=0xff, a2=?, a3=? (`jal` at 0x2e9d0).
  At `bne` at 0x2e9c8 (target 0x2e98c), taken when s0(?) < 0x10 (signed) and falls through when s0(?) >= 0x10 (signed).
  Returns v0 = ret(update_checksum); f0 = ret(update_checksum) (`jr` at 0x2e9e4).

- `nvram_dict_size` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2e9ec (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2e9ec-0x2ea24 (56 bytes).
  Calls `get_nvreg` via direct with a0=0x36c3, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2e9f4).
  Calls `nvram_dict_init` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2ea08).
  Calls `get_nvreg` via direct with a0=0x36c4, a1=?, a2=?, a3=? (`jal` at 0x2ea10).
  At `beq` at 0x2ea00 (target 0x2ea10), taken when v0(=ret(get_nvreg)) == at(=0xda) and falls through when v0(=ret(get_nvreg)) != at(=0xda).
  Returns v0 = ret(get_nvreg); f0 = ret(get_nvreg) (`jr` at 0x2ea1c).

- `nvram_dict_first_free_index_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ea24 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ea24-0x2eac8 (164 bytes).
  Calls `get_nvreg` via direct with a0=0x36c3, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2ea2c).
  Calls `nvram_dict_init` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2ea44).
  Calls `get_nvreg` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2ea60).
  Calls `get_nvreg` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2eaa0).
  Calls `get_nvreg` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2eab0).
  At `beq` at 0x2ea3c (target 0x2ea4c), taken when v0(=ret(get_nvreg)) == at(=0xda) and falls through when v0(=ret(get_nvreg)) != at(=0xda).
  At `beq` at 0x2ea68 (target 0x2eaa0), taken when s2(=0xff) == v0(=ret(get_nvreg)) and falls through when s2(=0xff) != v0(=ret(get_nvreg)).
  At `bne` at 0x2ea7c (target 0x2ea5c), taken when s0(?) < 0x10 (signed) and falls through when s0(?) >= 0x10 (signed).
  At `bne` at 0x2eaa8 (target 0x2ea70), taken when s2(=0xff) != v0(=ret(get_nvreg)) and falls through when s2(=0xff) == v0(=ret(get_nvreg)).
  At `bnel` at 0x2eab8 (target 0x2ea74), taken when s2(=0xff) != v0(=ret(get_nvreg)) and falls through when s2(=0xff) == v0(=ret(get_nvreg)).
  Returns v0 = ? (`jr` at 0x2ea98).

- `nvram_dict_next_index_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2eac8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2eac8-0x2eb74 (172 bytes).
  Calls `get_nvreg` via direct with a0=0x36c3, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2ead8).
  Calls `nvram_dict_init` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2eaec).
  Calls `get_nvreg` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2eb08).
  Calls `get_nvreg` via direct with a0=?, a1=0xff, a2=?, a3=? (`jal` at 0x2eb20).
  Calls `get_nvreg` via direct with a0=?, a1=0xff, a2=?, a3=? (`jal` at 0x2eb38).
  At `beq` at 0x2eae4 (target 0x2eaf4), taken when v0(=ret(get_nvreg)) == at(=0xda) and falls through when v0(=ret(get_nvreg)) != at(=0xda).
  At `beq` at 0x2eaf8 (target 0x2eb6c), taken when s0(?) >= 0x10 (signed) and falls through when s0(?) < 0x10 (signed).
  At `bne` at 0x2eb14 (target 0x2eb58), taken when a1(=0xff) != v0(=ret(get_nvreg)) and falls through when a1(=0xff) == v0(=ret(get_nvreg)).
  At `bne` at 0x2eb2c (target 0x2eb58), taken when a1(=0xff) != v0(=ret(get_nvreg)) and falls through when a1(=0xff) == v0(=ret(get_nvreg)).
  At `bne` at 0x2eb44 (target 0x2eb58), taken when a1(=0xff) != v0(=ret(get_nvreg)) and falls through when a1(=0xff) == v0(=ret(get_nvreg)).
  Returns v0 = ? (`jr` at 0x2eb64).

- `nvram_dict_index_set` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2eb74 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2eb74-0x2ec88 (276 bytes).
  Calls `get_nvreg` via direct with a0=0x36c3, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2eb8c).
  Calls `nvram_dict_init` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2eba0).
  Calls `get_nvreg` via direct with a0=0x36c4, a1=?, a2=?, a3=? (`jal` at 0x2eba8).
  Calls `get_nvreg` via direct with a0=((a1 << 0x2)+14021 << 0x0), a1=?, a2=?, a3=? (`jal` at 0x2ebd0).
  Calls `set_nvreg` via direct with a0=?, a1=[a0+1]:1, a2=?, a3=? (`jal` at 0x2ebfc).
  Calls `set_nvreg` via direct with a0=?, a1=[a0+2]:1, a2=?, a3=? (`jal` at 0x2ec08).
  Calls `set_nvreg` via direct with a0=((a1 << 0x2)+14023 << 0x0), a1=[a0+3]:1, a2=?, a3=? (`jal` at 0x2ec14).
  Calls `update_checksum` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2ec1c).
  Calls `get_nvreg` via direct with a0=((a1 << 0x2)+14022 << 0x0), a1=0xff, a2=((a1 << 0x2)+14022 << 0x0), a3=? (`jal` at 0x2ec40).
  Calls `get_nvreg` via direct with a0=((a1 << 0x2)+14023 << 0x0), a1=?, a2=?, a3=? (`jal` at 0x2ec5c).
  Calls `set_nvreg` via direct with a0=0x36c4, a1=?, a2=?, a3=? (`jal` at 0x2ec78).
  At `beq` at 0x2eb98 (target 0x2eba8), taken when v0(=ret(get_nvreg)) == at(=0xda) and falls through when v0(=ret(get_nvreg)) != at(=0xda).
  At `beq` at 0x2ebbc (target 0x2ec28), taken when s1(=a1) >= 0x10 (signed) and falls through when s1(=a1) < 0x10 (signed).
  At `beq` at 0x2ebe4 (target 0x2ec40), taken when a1(=0xff) == v0(=ret(get_nvreg)) and falls through when a1(=0xff) != v0(=ret(get_nvreg)).
  At `bne` at 0x2ec50 (target 0x2ebf4), taken when t8(=0xff) != v0(=ret(get_nvreg)) and falls through when t8(=0xff) == v0(=ret(get_nvreg)).
  At `bne` at 0x2ec64 (target 0x2ebf8), taken when s2(=0xff) != v0(=ret(get_nvreg)) and falls through when s2(=0xff) == v0(=ret(get_nvreg)).
  Returns v0 = one of -0x1, 0x0 (`jr` at 0x2ec38).

- `nvram_dict_index_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ec88 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ec88-0x2ed28 (160 bytes).
  Stores 2 bytes from v0 to a0 (arg0 at entry) +0x0 (`sh` at 0x2ecfc) with value ret(get_nvreg).
  Stores 1 byte from v0 to a0 (arg0 at entry) +0x2 (`sb` at 0x2ed0c) with value ret(get_nvreg).
  Stores 1 byte from v0 to a0 (arg0 at entry) +0x3 (`sb` at 0x2ed1c) with value ret(get_nvreg).
  Calls `get_nvreg` via direct with a0=0x36c3, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2eca0).
  Calls `nvram_dict_init` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2ecb4).
  Calls `get_nvreg` via direct with a0=((a1 << 0x2)+14021 << 0x0), a1=-0x1, a2=?, a3=? (`jal` at 0x2ecf0).
  Calls `get_nvreg` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2ed04).
  Calls `get_nvreg` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2ed14).
  At `beq` at 0x2ecac (target 0x2ecc0), taken when v0(=ret(get_nvreg)) == at(=0xda) and falls through when v0(=ret(get_nvreg)) != at(=0xda).
  At `beq` at 0x2ecc0 (target 0x2ecd0), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0x2ecc8 (target 0x2ece8), taken when s0(=a0) != 0 and falls through when s0(=a0) == 0.
  Returns v0 = one of -0x1, 0x0 (`jr` at 0x2ece0).

- `nvram_dict_index_remove` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ed28 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ed28-0x2edcc (164 bytes).
  Calls `get_nvreg` via direct with a0=0x36c3, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2ed34).
  Calls `get_nvreg` via direct with a0=0x36c4, a1=?, a2=?, a3=? (`jal` at 0x2ed50).
  Calls `set_nvreg` via direct with a0=((a0 << 0x2)+14021 << 0x0), a1=0xff, a2=?, a3=? (`jal` at 0x2ed78).
  Calls `set_nvreg` via direct with a0=?, a1=0xff, a2=?, a3=? (`jal` at 0x2ed8c).
  Calls `set_nvreg` via direct with a0=?, a1=0xff, a2=?, a3=? (`jal` at 0x2eda0).
  Calls `set_nvreg` via direct with a0=0x36c4, a1=?, a2=?, a3=? (`jal` at 0x2edb4).
  Calls `update_checksum` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2edbc).
  At `beq` at 0x2ed40 (target 0x2ed50), taken when v0(=ret(get_nvreg)) == at(=0xda) and falls through when v0(=ret(get_nvreg)) != at(=0xda).
  At `beq` at 0x2ed60 (target 0x2ed44), taken when (v0(=ret(get_nvreg)) & 0xff) == 0 -> outside and falls through when (v0(=ret(get_nvreg)) & 0xff) != 0.
  Returns v0 = ? (`jr` at 0x2ed48).

- `nvram_prom_version_set` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2edcc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2edcc-0x2ee0c (64 bytes).
  Calls `set_nvreg` via direct with a0=0x3779, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2ede4).
  Calls `set_nvreg` via direct with a0=0x377a, a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0x2edf0).
  Calls `update_checksum` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2edf8).
  Returns v0 = ret(update_checksum); f0 = ret(update_checksum) (`jr` at 0x2ee04).

- `nvram_prom_version_get` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ee0c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ee0c-0x2ee4c (64 bytes).
  Stores 1 byte from v0 to a0 (arg0 at entry) +0x0 (`sb` at 0x2ee30) with value ret(get_nvreg).
  Stores 1 byte from v0 to a1 (arg1 at entry) +0x0 (`sb` at 0x2ee48) with value ret(get_nvreg).
  Calls `get_nvreg` via direct with a0=0x3779, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2ee20).
  Calls `get_nvreg` via direct with a0=0x377a, a1=?, a2=?, a3=? (`jal` at 0x2ee2c).
  Returns v0 = ret(get_nvreg); f0 = ret(get_nvreg) (`jr` at 0x2ee44).

- `nvram_enable_cpu_set` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ee4c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ee4c-0x2eee0 (148 bytes).
  Calls `ip27log_unsetenv` via direct with a0=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1068]:2, a1=[(sp-48 + ([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1320]:1 << 0x3))]:8, a2=0x0, a3=a3 at entry (arg3), a6=[(sp-48 + ([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1320]:1 << 0x3))]:8, a7=sym(.rodata)+49640 (`jal` at 0x2eea8).
  Calls `ip27log_setenv` via direct with a0=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1068]:2, a1=[(sp-48 + ([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1320]:1 << 0x3))]:8, a2=sym(.rodata)+49640, a3=0x0, a6=[(sp-48 + ([[(sym(pdaindr) + (a0 << 0x4))+8]:8+1320]:1 << 0x3))]:8, a7=sym(.rodata)+49640 (`jal` at 0x2eed0).
  At `beq` at 0x2ee98 (target 0x2eec4), taken when a1 == 0 and falls through when a1 != 0.
  Returns v0 = ? (`jr` at 0x2eebc).

- `set_part_reboot_nvram` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2eee0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2eee0-0x2ef04 (36 bytes).
  Calls `set_nvram_offset [0x2e4c0]` via direct with a0=0x46f, a1=0x1, a2=a0 at entry (arg0), a3=a3 at entry (arg3) (`jal` at 0x2eef0).
  Returns v0 = ret(set_nvram_offset); f0 = ret(set_nvram_offset) (`jr` at 0x2eefc).

- `ioc_base` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ef04 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ef04-0x2ef80 (124 bytes).
  Calls `sprintf` via direct with a0=sp-272, a1=sym(.rodata)+49640, a2=[[(sym(modules) + (a0 << 0x3))]:8]:2, a3=sym(ioc_path) (`jal` at 0x2ef2c).
  Calls `hwgraph_path_lookup` via direct with a0=[sym(hwgraph_root)], a1=sp-272, a2=sp-16, a3=0x0 (`jal` at 0x2ef40).
  Calls `(unknown callee)` via register with a0=?, a1=?, a2=?, a3=?, a4=[sym(ioc_get_mem)]:8 (`jalr` at 0x2ef60).
  At `beq` at 0x2ef48 (target 0x2ef5c), taken when v0(=ret(hwgraph_path_lookup)) == 0 and falls through when v0(=ret(hwgraph_path_lookup)) != 0.
  At `bne` at 0x2ef68 (target 0x2ef78), taken when v0(=ret(?)) != 0 and falls through when v0(=ret(?)) == 0.
  Returns v0 = ? (`jr` at 0x2ef54).

- `get_nvreg_base` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ef80 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ef80-0x2ef9c (28 bytes).
  Returns v0 = ? (`jr` at 0x2ef94).

- `set_nvreg_base` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2ef9c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2ef9c-0x2efbc (32 bytes).
  Stores 1 byte from a2 to ? (base unknown) (`sb` at 0x2efb8) with value a2.
  Returns v0 = 0x0 (`jr` at 0x2efb4).

- `nvchecksum_base` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2efbc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2efbc-0x2f078 (188 bytes).
  Calls `get_nvreg_base [0x2ef80]` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x2eff0).
  Calls `get_nvreg` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2f044).
  At `beq` at 0x2effc (target 0x2f01c), taken when s3(=0x4bc) == s0(?) and falls through when s3(=0x4bc) != s0(?).
  At `beq` at 0x2f004 (target 0x2f01c), taken when s4(=0x46f) == s0(?) and falls through when s4(=0x46f) != s0(?).
  At `beq` at 0x2f030 (target 0x2f054), taken when s0(?) >= 0x7fd1 (unsigned) and falls through when s0(?) < 0x7fd1 (unsigned).
  At `bne` at 0x2f03c (target 0x2eff0), taken when s2(=a0) != 0 and falls through when s2(=a0) == 0.
  Returns v0 = ? (`jr` at 0x2f070).

- `update_checksum_base` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2f078 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2f078-0x2f0ac (52 bytes).
  Calls `nvchecksum_base [0x2efbc]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2f084).
  Calls `set_nvreg_base [0x2ef9c]` via direct with a0=a0 at entry (arg0), a1=0x4bc, a2=ret(nvchecksum_base), a3=? (`jal` at 0x2f094).
  Returns v0 = ret(set_nvreg_base); f0 = ret(set_nvreg_base) (`jr` at 0x2f0a4).

- `moduleid_to_decompressed_rack` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2f334 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2f334-0x2f3ac (120 bytes).
  Returns v0 = ? (`jr` at 0x2f3a4).

- `brick_lookup` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2f3ac (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2f3ac-0x2f440 (148 bytes).
  Calls `moduleid_to_decompressed_rack [0x2f334]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2f3f4).
  At `blez` at 0x2f3d4 (target 0x2f41c), taken when a3 <= 0 (signed) and falls through when a3 > 0 (signed).
  At `beq` at 0x2f3ec (target 0x2f41c), taken when s1(?) >= s3(=a3) (signed) and falls through when s1(?) < s3(=a3) (signed).
  At `bne` at 0x2f3fc (target 0x2f3e4), taken when v0(=ret(moduleid_to_decompressed_rack)) != s2(=a0) and falls through when v0(=ret(moduleid_to_decompressed_rack)) == s2(=a0).
  At `bne` at 0x2f40c (target 0x2f3e8), taken when s4(=a1) != v1(?) and falls through when s4(=a1) == v1(?).
  Returns v0 = ? (`jr` at 0x2f438).

- `rbrick_lookup` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2f558 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2f558-0x2f57c (36 bytes).
  Calls `brick_lookup [0x2f3ac]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(iobrick_moduleids), a3=[sym(num_rbricks)] (`jal` at 0x2f568).
  Returns v0 = ret(brick_lookup); f0 = ret(brick_lookup) (`jr` at 0x2f574).

- `iobrick_lookup` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2f5a0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2f5a0-0x2f5c0 (32 bytes).
  Calls `brick_lookup [0x2f3ac]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=sym(iobrick_moduleids), a3=[sym(num_iobricks)] (`jal` at 0x2f5ac).
  Returns v0 = ret(brick_lookup); f0 = ret(brick_lookup) (`jr` at 0x2f5b8).

- `strayfp_intr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2f5c0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2f5c0-0x2f614 (84 bytes).
  Calls `getsr` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x2f5c8).
  Calls `setsr` via direct with a0=(ret(getsr) | 0x20000000), a1=?, a2=?, a3=? (`jal` at 0x2f5d4).
  Calls `set_fpc_csr` via direct with a0=0x0, a1=?, a2=?, a3=? (`jal` at 0x2f5dc).
  Calls `getsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2f5e4).
  Calls `setsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x2f5f4).
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata)+50008, a2=?, a3=? (`jal` at 0x2f600).
  Returns v0 = ret(cmn_err); f0 = ret(cmn_err) (`jr` at 0x2f60c).

- `fp_intr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x2f664 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x2f664-0x2f790 (300 bytes).
  Stores 1 byte from a3 to [[-0x3fe8]:8+808]:8 +0x215 (`sb` at 0x2f69c) with value 0x1.
  Stores 8 bytes from a3 to a0 (arg0 at entry) +0x160 (`sd` at 0x2f760).
  Stores 8 bytes from a3 to a0 (arg0 at entry) +0x120 (`sd` at 0x2f768).
  Stores 1 byte from a4 to [[-0x3fe8]:8+808]:8 +0x215 (`sb` at 0x2f77c) with value 0x2.
  Calls `load_fpcsr` via direct with a0=[[[-0x3fe8]:8+808]:8+533]:1, a1=[[-0x3fe8]:8+808]:8, a2=a2 at entry (arg2), a3=0x1 (`jal` at 0x2f6b8).
  Calls `emulate_branch` via direct with a0=a0 at entry (arg0), a1=[[-0x3fe8]:8+1360], a2=ret(load_fpcsr), a3=sp-48 (`jal` at 0x2f6cc).
  Calls `softfp_dispatch [0x2f790]` via direct with a0=a0 at entry (arg0), a1=?, a2=0x11, a3=0x13, a4=0x23 (`jal` at 0x2f710).
  Calls `checkfp` via direct with a0=[-0x3fe8]:8, a1=0x2, a2=?, a3=? (`jal` at 0x2f724).
  Calls `sendSIGFPE [0x2f614]` via direct with a0=[-0x3fe8]:8, a1=?, a2=0x11, a3=0x13, a4=0x23 (`jal` at 0x2f734).
  Calls `strayfp_intr [0x2f5c0]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1 (`jal` at 0x2f76c).
  Calls `sendSIGFPE [0x2f614]` via direct with a0=[-0x3fe8]:8, a1=[[-0x3fe8]:8+808]:8, a2=a2 at entry (arg2), a3=0x1, a4=0x2 (`jal` at 0x2f780).
  At `beq` at 0x2f67c (target 0x2f76c), taken when s0(=[-0x3fe8]:8) == 0 and falls through when s0(=[-0x3fe8]:8) != 0.
  At `beq` at 0x2f68c (target 0x2f6a0), taken when a0(=[[[-0x3fe8]:8+808]:8+533]:1) == 0 and falls through when a0(=[[[-0x3fe8]:8+808]:8+533]:1) != 0.
  At `beq` at 0x2f694 (target 0x2f77c), taken when a0(=[[[-0x3fe8]:8+808]:8+533]:1) == a3(=0x1) and falls through when a0(=[[[-0x3fe8]:8+808]:8+533]:1) != a3(=0x1).
  At `beq` at 0x2f6b0 (target 0x2f6e0), taken when (at(=[a0+280]:8) & v0(=0x80000000)) == 0 and falls through when (at(=[a0+280]:8) & v0(=0x80000000)) != 0.
  At `beq` at 0x2f700 (target 0x2f750), taken when a0(?) == a2(=0x11) and falls through when a0(?) != a2(=0x11).
  At `bne` at 0x2f708 (target 0x2f734), taken when a0(?) != a3(=0x13) and falls through when a0(?) == a3(=0x13).
  At `beq` at 0x2f718 (target 0x2f760), taken when v0(=ret(softfp_dispatch)) == 0 and falls through when v0(=ret(softfp_dispatch)) != 0.
  At `bne` at 0x2f750 (target 0x2f708), taken when a5(?) != a4(=0x23) and falls through when a5(?) == a4(=0x23).
  Returns v0 = ? (`jr` at 0x2f748).

- `klhwg_invent_alloc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x321a8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x321a8-0x32228 (128 bytes).
  Stores 2 bytes from a1 to ret(kern_malloc) +0x0 (`sh` at 0x321f4) with value [[([[-0x3c00]:8]:8 + (a0 << 0x3))]:8+34330]:2.
  Stores 4 bytes from v1 to ret(kern_malloc) +0x8 (`sw` at 0x32214) with value a1.
  Stores 2 bytes from at to ret(kern_malloc) +0x2 (`sh` at 0x3221c).
  Calls `kern_malloc` via direct with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x321b8).
  At `bne` at 0x321c4 (target 0x321d4), taken when v0(=ret(kern_malloc)) != 0 and falls through when v0(=ret(kern_malloc)) == 0.
  Returns v0 = ?; f0 = ret(kern_malloc) (`jr` at 0x32220).

- `klhwg_cpu_invent_info` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x32228 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x32228-0x3233c (276 bytes).
  Stores 1 byte from a0 to ret(klhwg_invent_alloc) +0x4 (`sb` at 0x32274) with value 0x1.
  Stores 4 bytes from a1 to ret(klhwg_invent_alloc) +0xc (`sw` at 0x3227c) with value [a2+56]:2.
  Stores 4 bytes from a0 to ret(klhwg_invent_alloc) +0x10 (`sw` at 0x32284) with value [a2+60]:2.
  Stores 4 bytes from v1 to ret(klhwg_invent_alloc) +0x18 (`sw` at 0x32290) with value [a2+64]:2.
  Stores 4 bytes from a7 to ret(klhwg_invent_alloc) +0x14 (`sw` at 0x32298) with value [a2+62]:2.
  Stores 2 bytes from a6 to ret(klhwg_invent_alloc) +0x1c (`sh` at 0x322a0) with value [a2+28].
  Stores 2 bytes from a4 to ret(klhwg_invent_alloc) +0x1e (`sh` at 0x322b8) with value [[(sym(pdaindr) + ([a2+28] << 0x4))+8]:8+1320]:1.
  Stores 2 bytes from a3 to ret(klhwg_invent_alloc) +0x20 (`sh` at 0x322c0) with value [a2+58]:2.
  Stores 1 byte from zero to ret(klhwg_invent_alloc) +0x4 (`sb` at 0x32314) with value 0x0.
  Stores 4 bytes from t0 to sym(_prom_cleared) +0x194 (`sw` at 0x32320) with value [a2+60]:2.
  Calls `klhwg_invent_alloc` via direct with a0=a1 at entry (arg1), a1=0x1, a2=0x24, a3=a3 at entry (arg3) (`jal` at 0x3224c).
  Calls `hwgraph_info_add_LBL` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+51152, a2=ret(klhwg_invent_alloc), a3=? (`jal` at 0x322e0).
  Calls `hwgraph_info_export_LBL` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+51152, a2=0x24, a3=? (`jal` at 0x322f0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+51152, a2=[a2+28], a3=a0 at entry (arg0), a4=[a2+56]:2, a5=([a2+28] << 0x4), a6=[a2+28], a7=[a2+62]:2 (`jal` at 0x3232c).
  At `beq` at 0x32258 (target 0x322f8), taken when v0(=ret(klhwg_invent_alloc)) == 0 and falls through when v0(=ret(klhwg_invent_alloc)) != 0.
  At `beq` at 0x3226c (target 0x32310), taken when (at(=[a2+2]:1) & 0x1) == 0 and falls through when (at(=[a2+2]:1) & 0x1) != 0.
  At `beq` at 0x3228c (target 0x32318), taken when v0(=[sym(.sdata)+404]) == 0 and falls through when v0(=[sym(.sdata)+404]) != 0.
  At `bne` at 0x322cc (target 0x32324), taken when a4(=[a2+56]:2) < 0x926 (signed) and falls through when a4(=[a2+56]:2) >= 0x926 (signed).
  Returns v0 = ? (`jr` at 0x32308).

- `klhwg_disabled_cpu_invent_info` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3233c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3233c-0x32458 (284 bytes).
  Stores 1 byte from zero to ret(klhwg_invent_alloc) +0x4 (`sb` at 0x3238c) with value 0x0.
  Stores 2 bytes from a6 to ret(klhwg_invent_alloc) +0x2 (`sh` at 0x32394) with value a3.
  Stores 4 bytes from a5 to ret(klhwg_invent_alloc) +0xc (`sw` at 0x3239c) with value [a2+56]:2.
  Stores 4 bytes from a4 to ret(klhwg_invent_alloc) +0x10 (`sw` at 0x323a4) with value [a2+60]:2.
  Stores 4 bytes from a3 to ret(klhwg_invent_alloc) +0x18 (`sw` at 0x323ac) with value [a2+64]:2.
  Stores 4 bytes from a2 to ret(klhwg_invent_alloc) +0x14 (`sw` at 0x323b4) with value [a2+62]:2.
  Stores 2 bytes from a1 to ret(klhwg_invent_alloc) +0x1c (`sh` at 0x323bc) with value [a2+28].
  Stores 2 bytes from a0 to ret(klhwg_invent_alloc) +0x1e (`sh` at 0x323c4) with value [a2+24]:1.
  Stores 2 bytes from v1 to ret(klhwg_invent_alloc) +0x20 (`sh` at 0x323cc) with value [a2+58]:2.
  Calls `klhwg_invent_alloc` via direct with a0=a1 at entry (arg1), a1=0x1, a2=0x24, a3=a3 at entry (arg3) (`jal` at 0x32364).
  Calls `klhwg_invent_alloc` via direct with a0=a1 at entry (arg1), a1=0x46, a2=0x5c, a3=? (`jal` at 0x3237c).
  Calls `hwgraph_info_add_LBL` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+51152, a2=ret(klhwg_invent_alloc), a3=? (`jal` at 0x323ec).
  Calls `hwgraph_info_export_LBL` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+51152, a2=0x24, a3=? (`jal` at 0x32400).
  Calls `hwgraph_info_add_LBL` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+51152, a2=?, a3=? (`jal` at 0x32410).
  Calls `hwgraph_info_export_LBL` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+51152, a2=0x5c, a3=? (`jal` at 0x32420).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+51152, a2=[a2+28], a3=a0 at entry (arg0), a4=[a2+56]:2, a5=[a2+56]:2, a6=a3 at entry (arg3), a7=a2 at entry (arg2) (`jal` at 0x32448).
  At `beq` at 0x3236c (target 0x32428), taken when v0(=ret(klhwg_invent_alloc)) == 0 and falls through when v0(=ret(klhwg_invent_alloc)) != 0.
  At `beq` at 0x32384 (target 0x32428), taken when v0(=ret(klhwg_invent_alloc)) == 0 and falls through when v0(=ret(klhwg_invent_alloc)) != 0.
  At `bne` at 0x323d8 (target 0x3243c), taken when a4(=[a2+56]:2) < 0x926 (signed) and falls through when a4(=[a2+56]:2) >= 0x926 (signed).
  Returns v0 = ? (`jr` at 0x32434).

- `klhwg_baseio_inventory_add` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x32458 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x32458-0x324e4 (140 bytes).
  Stores 4 bytes from zero to ret(klhwg_invent_alloc) +0x14 (`sw` at 0x3248c) with value 0x0.
  Stores 4 bytes from a3 to ret(klhwg_invent_alloc) +0x10 (`sw` at 0x324a0).
  Stores 4 bytes from a2 to ret(klhwg_invent_alloc) +0xc (`sw` at 0x324b0).
  Calls `klhwg_invent_alloc` via direct with a0=a1 at entry (arg1), a1=0x15, a2=0x20, a3=a3 at entry (arg3) (`jal` at 0x3247c).
  Calls `nvram_prom_version_get` via direct with a0=sp-32, a1=sp-31, a2=?, a3=? (`jal` at 0x32490).
  Calls `hwgraph_info_add_LBL` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+51152, a2=ret(klhwg_invent_alloc), a3=? (`jal` at 0x324b4).
  Calls `hwgraph_info_export_LBL` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+51152, a2=0x20, a3=? (`jal` at 0x324cc).
  Returns v0 = ret(hwgraph_info_export_LBL); f0 = ret(hwgraph_info_export_LBL) (`jr` at 0x324dc).

- `klhwg_hub_invent_info` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x324e4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x324e4-0x3257c (152 bytes).
  Stores 1 byte from a0 to ret(klhwg_invent_alloc) +0x4 (`sb` at 0x32524) with value 0x1.
  Stores 4 bytes from a4 to ret(klhwg_invent_alloc) +0x14 (`sw` at 0x32530) with value 0x4.
  Stores 4 bytes from a3 to ret(klhwg_invent_alloc) +0xc (`sw` at 0x32538) with value [a2+3]:1.
  Stores 8 bytes from a2 to ret(klhwg_invent_alloc) +0x18 (`sd` at 0x32548) with value [a2+88]:8.
  Calls `klhwg_invent_alloc` via direct with a0=a1 at entry (arg1), a1=0xe, a2=0x20, a3=a3 at entry (arg3) (`jal` at 0x32504).
  Calls `hwgraph_info_add_LBL` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+51152, a2=ret(klhwg_invent_alloc), a3=[a2+3]:1, a4=0x4 (`jal` at 0x3254c).
  Calls `hwgraph_info_export_LBL` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+51152, a2=0x20, a3=? (`jal` at 0x32560).
  At `beq` at 0x3250c (target 0x32568), taken when v0(=ret(klhwg_invent_alloc)) == 0 and falls through when v0(=ret(klhwg_invent_alloc)) != 0.
  At `beq` at 0x3251c (target 0x3252c), taken when (at(=[a2+2]:1) & 0x1) == 0 and falls through when (at(=[a2+2]:1) & 0x1) != 0.
  Returns v0 = ? (`jr` at 0x32574).

- `klhwg_mem_invent_info` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3257c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3257c-0x327bc (576 bytes).
  Stores 2 bytes from v0 to ret(klhwg_invent_alloc) +0x2 (`sh` at 0x325d4) with value a3.
  Stores 1 byte from s6 to ret(klhwg_invent_alloc) +0x4 (`sb` at 0x325e8) with value 0x1.
  Stores 4 bytes from a3 to ? (base unknown) (`sw` at 0x3265c).
  Stores 2 bytes from zero to ? (base unknown) (`sh` at 0x32688) with value 0x0.
  Stores 4 bytes from zero to ? (base unknown) (`sw` at 0x3268c) with value 0x0.
  Stores 2 bytes from a6 to ? (base unknown) (`sh` at 0x32690).
  Stores 2 bytes from s6 to ? (base unknown) (`sh` at 0x326c4) with value 0x1.
  Stores 2 bytes from s6 to ? (base unknown) (`sh` at 0x326e8) with value 0x1.
  Stores 2 bytes from a1 to ? (base unknown) (`sh` at 0x32728).
  Stores 4 bytes from a2 to ? (base unknown) (`sw` at 0x32738).
  Stores 2 bytes from a2 to ret(klhwg_invent_alloc) +0xe (`sh` at 0x32748) with value 0x8.
  Stores 2 bytes from s4 to ret(klhwg_invent_alloc) +0xc (`sh` at 0x32750).
  Stores 1 byte from zero to ret(klhwg_invent_alloc) +0x4 (`sb` at 0x327a4) with value 0x0.
  Calls `klhwg_invent_alloc` via direct with a0=a1 at entry (arg1), a1=0x3, a2=0x50, a3=a3 at entry (arg3) (`jal` at 0x325ac).
  Calls `ip27log_getenv` via direct with a0=a4 at entry (arg4), a1=sym(.rodata)+51152, a2=sp-144, a3=0x0, a4=0x0 (`jal` at 0x32600).
  Calls `ip27log_getenv` via direct with a0=a4 at entry (arg4), a1=sym(.rodata)+51152, a2=sp-128, a3=0x0, a4=0x0 (`jal` at 0x32624).
  Calls `strchr` via direct with a0=sp-144, a1=?, a2=?, a3=[a2+1]:1 (`jal` at 0x326fc).
  Calls `hwgraph_info_add_LBL` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+51152, a2=ret(klhwg_invent_alloc), a3=? (`jal` at 0x32754).
  Calls `hwgraph_info_export_LBL` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+51152, a2=0x50, a3=? (`jal` at 0x3276c).
  At `beq` at 0x325c8 (target 0x32774), taken when v0(=ret(klhwg_invent_alloc)) == 0 and falls through when v0(=ret(klhwg_invent_alloc)) != 0.
  At `beq` at 0x325e0 (target 0x327a0), taken when (at(=[a2+2]:1) & 0x1) == 0 and falls through when (at(=[a2+2]:1) & 0x1) != 0.
  At `bltz` at 0x32608 (target 0x3262c), taken when v0(=ret(ip27log_getenv)) < 0 (signed) and falls through when v0(=ret(ip27log_getenv)) >= 0 (signed).
  At `beq` at 0x3264c (target 0x32660), taken when (a1(=[a2+2]:1) & 0x1) == 0 and falls through when (a1(=[a2+2]:1) & 0x1) != 0.
  At `beq` at 0x32674 (target 0x3273c), taken when s0(?) >= 0x8 (signed) and falls through when s0(?) < 0x8 (signed).
  At `bne` at 0x326b4 (target 0x326e0), taken when a3(=[a2+1]:1) < 0x2 (signed) and falls through when a3(=[a2+1]:1) >= 0x2 (signed).
  At `beq` at 0x326bc (target 0x326d0), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0x326d0 (target 0x326f4), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0x326e0 (target 0x326d0), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `bltz` at 0x326f4 (target 0x3272c), taken when a7(?) < 0 (signed) and falls through when a7(?) >= 0 (signed).
  At `beq` at 0x32704 (target 0x3272c), taken when v0(=ret(strchr)) == 0 and falls through when v0(=ret(strchr)) != 0.
  At `beq` at 0x32714 (target 0x32724), taken when a3(=0x30) == a2(?) and falls through when a3(=0x30) != a2(?).
  Returns v0 = ? (`jr` at 0x32798).

- `klhwg_add_hub` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x327bc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x327bc-0x32890 (212 bytes).
  Calls `hwgraph_path_add` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+51152, a2=sp-48, a3=a3 at entry (arg3) (`jal` at 0x327e0).
  Calls `device_master_set` via direct with a0=?, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x327ec).
  Calls `hwgraph_info_add_LBL` via direct with a0=?, a1=sym(.rodata)+51152, a2=[([[-0x3c00]:8]:8 + (a2 << 0x3))]:8+34760, a3=0x87c8 (`jal` at 0x32820).
  Calls `klhwg_hub_invent_info` via direct with a0=?, a1=a2 at entry (arg2), a2=a1 at entry (arg1), a3=? (`jal` at 0x32834).
  Calls `init_hub_stats` via direct with a0=a2 at entry (arg2), a1=?, a2=?, a3=? (`jal` at 0x32850).
  Calls `sndrv_attach` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3285c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+51152, a2=?, a3=ret(hwgraph_info_add_LBL) (`jal` at 0x32880).
  At `bne` at 0x32828 (target 0x32870), taken when v0(=ret(hwgraph_info_add_LBL)) != 0 and falls through when v0(=ret(hwgraph_info_add_LBL)) == 0.
  Returns v0 = ret(sndrv_attach); f0 = ret(sndrv_attach) (`jr` at 0x32868).

- `klhwg_add_disabled_cpu` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x32890 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x32890-0x32930 (160 bytes).
  Calls `sprintf` via direct with a0=sp-176, a1=sym(.rodata)+51152, a2=sym(.rodata)+51152, a3=sym(.rodata)+51152, a4=[a2+24]:1+97 (`jal` at 0x328d8).
  Calls `hwgraph_path_add` via direct with a0=a0 at entry (arg0), a1=sp-176, a2=sp-56, a3=? (`jal` at 0x328e8).
  Calls `mark_cpuvertex_as_cpu` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x328f4).
  Calls `device_master_set` via direct with a0=?, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x32900).
  Calls `klhwg_disabled_cpu_invent_info` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x32914).
  At `beq` at 0x328b8 (target 0x3291c), taken when at(=[a2+30]:2) == v0(=-0x1) and falls through when at(=[a2+30]:2) != v0(=-0x1).
  Returns v0 = ? (`jr` at 0x32928).

- `klhwg_add_cpu` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x32930 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x32930-0x32af0 (448 bytes).
  Stores 8 bytes from v0 to [(sym(pdaindr) + ([a2+28] << 0x4))+8]:8 +0x698 (`sd` at 0x32a48) with value ret(kmem_alloc_node).
  Calls `sprintf` via direct with a0=sp-176, a1=sym(.rodata)+51152, a2=sym(.rodata)+51152, a3=? (`jal` at 0x3298c).
  Calls `hwgraph_path_add` via direct with a0=a0 at entry (arg0), a1=sp-176, a2=sp-56, a3=? (`jal` at 0x3299c).
  Calls `mark_cpuvertex_as_cpu` via direct with a0=?, a1=[a2+30]:2, a2=?, a3=? (`jal` at 0x329a8).
  Calls `hwgraph_info_add_LBL` via direct with a0=?, a1=sym(.rodata)+51152, a2=[[(sym(pdaindr) + ([a2+28] << 0x4))+8]:8+1856]:8, a3=? (`jal` at 0x329cc).
  Calls `device_master_set` via direct with a0=?, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x329d8).
  Calls `hwgraph_edge_get` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+51152, a2=sp-52, a3=? (`jal` at 0x329ec).
  Calls `klhwg_cpu_invent_info` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jal` at 0x32a04).
  Calls `sprintf` via direct with a0=sp-176, a1=sym(.rodata)+51152, a2=?, a3=? (`jal` at 0x32a18).
  Calls `strlen` via direct with a0=sp-176, a1=?, a2=?, a3=? (`jal` at 0x32a20).
  Calls `kmem_alloc_node` via direct with a0=ret(strlen)+1, a1=0x101, a2=a1 at entry (arg1), a3=? (`jal` at 0x32a30).
  Calls `strcpy` via direct with a0=[[table(sym(pdaindr))+8]:8+1688]:8, a1=sp-176, a2=[a2+28], a3=? (`jal` at 0x32a84).
  Calls `sprintf` via direct with a0=sp-176, a1=sym(.rodata)+51152, a2=?, a3=? (`jal` at 0x32ab4).
  Calls `hwgraph_edge_add` via direct with a0=?, a1=?, a2=sp-176, a3=? (`jal` at 0x32ac4).
  Calls `assfail` via direct with a0=sym(.rodata)+51152, a1=sym(.rodata)+51152, a2=0x222, a3=[[table(sym(pdaindr))+8]:8+1688]:8, a4=[(sym(pdaindr) + ([a2+28] << 0x4))+8]:8 (`jal` at 0x32ae0).
  At `beq` at 0x329f4 (target 0x32a9c), taken when v0(=ret(hwgraph_edge_get)) == 0 and falls through when v0(=ret(hwgraph_edge_get)) != 0.
  At `beq` at 0x32a64 (target 0x32ad4), taken when a3(=[[table(sym(pdaindr))+8]:8+1688]:8) == 0 and falls through when a3(=[[table(sym(pdaindr))+8]:8+1688]:8) != 0.
  Returns v0 = ret(strcpy); f0 = ret(strcpy) (`jr` at 0x32a94).

- `klhwg_add_mem` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x32af0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x32af0-0x32b58 (104 bytes).
  Calls `hwgraph_path_add` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+51152, a2=sp-64, a3=a3 at entry (arg3) (`jal` at 0x32b14).
  Calls `device_master_set` via direct with a0=?, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x32b30).
  Calls `klhwg_mem_invent_info` via direct with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x32b48).
  At `beq` at 0x32b1c (target 0x32b30), taken when v0(=ret(hwgraph_path_add)) == 0 and falls through when v0(=ret(hwgraph_path_add)) != 0.
  Returns v0 = ? (`jr` at 0x32b28).

- `init_pebrick` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x32b58 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x32b58-0x32db4 (604 bytes).
  Stores 8 bytes from t9 to sym(region_mask) +0x0 (`sd` at 0x32bb8).
  Stores 2 bytes from s2 to ret(kmem_alloc) +0x8 (`sh` at 0x32bd4) with value [(sym(nasid_to_compact_node) + ([a1+58]:2 + [a1+58]:2))]:2.
  Stores 2 bytes from t9 to ret(kmem_alloc) +0xa (`sh` at 0x32bdc) with value [a1+58]:2.
  Stores 1 byte from v0 to ret(kmem_alloc) +0xc (`sb` at 0x32bec) with value ret(hub_widget_id).
  Stores 4 bytes from s4 to [([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + ([a1+58]:2 + [a1+58]:2))]:2 << 0x3))]:8 +0x8c80 (`sw` at 0x32c0c) with value a2.
  Stores 4 bytes from a1 to [([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + ([a1+58]:2 + [a1+58]:2))]:2 << 0x3))]:8 +0x85fc (`sw` at 0x32c28) with value [a1+64].
  Stores 8 bytes from s7 to [([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + ([a1+58]:2 + [a1+58]:2))]:2 << 0x3))]:8 +0x8c88 (`sd` at 0x32c40) with value ret(kmem_alloc).
  Stores 8 bytes from v1 to ret(kmem_alloc) +0x0 (`sd` at 0x32c54) with value [([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + ([a1+58]:2 + [a1+58]:2))]:2 << 0x3))]:8.
  Stores 2 bytes from at to [([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + ([a1+58]:2 + [a1+58]:2))]:2 << 0x3))]:8 +0x8600 (`sh` at 0x32c70) with value -0x1.
  Stores 2 bytes from zero to [([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + ([a1+58]:2 + [a1+58]:2))]:2 << 0x3))]:8 +0x8598 (`sh` at 0x32c88) with value 0x0.
  Stores 8 bytes from v0 to [([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + ([a1+58]:2 + [a1+58]:2))]:2 << 0x3))]:8 +0x8620 (`sd` at 0x32ccc) with value ret(kmem_zalloc).
  Stores 8 bytes from a5 to ? (base unknown) (`sd` at 0x32d10).
  Stores 8 bytes from t2 to ? (base unknown) (`sd` at 0x32d58) with value [[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + ([a1+58]:2 + [a1+58]:2))]:2 << 0x3))]:8+34336]:8.
  Stores 4 bytes from t8 to sym(nummodules) +0x0 (`sw` at 0x32d88) with value [sym(nummodules)]+1.
  Stores 2 bytes from s2 to ? (base unknown) (`sh` at 0x32d8c) with value [(sym(nasid_to_compact_node) + ([a1+58]:2 + [a1+58]:2))]:2.
  Stores 2 bytes from s8 to ? (base unknown) (`sh` at 0x32d98) with value ret(iobrick_module_get_nasid).
  Calls `printf` via direct with a0=sym(.rodata)+51152, a1=[a1+58]:2, a2=[a1+56]:2, a3=a2 at entry (arg2) (`jal` at 0x32b90).
  Calls `kmem_alloc` via direct with a0=0x450, a1=0x1, a2=?, a3=? (`jal` at 0x32bc4).
  Calls `hub_widget_id` via direct with a0=[a1+58]:2, a1=?, a2=?, a3=? (`jal` at 0x32be4).
  Calls `iobrick_module_get_nasid` via direct with a0=[a1+58]:2, a1=0x0, a2=[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + ([a1+58]:2 + [a1+58]:2))]:2 << 0x3))]:8+65536, a3=[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + ([a1+58]:2 + [a1+58]:2))]:2 << 0x3))]:8+65536 (`jal` at 0x32c90).
  Calls `set_sn12_type` via direct with a0=[a1+58]:2, a1=?, a2=?, a3=? (`jal` at 0x32ca0).
  Calls `kmem_zalloc` via direct with a0=0xa00, a1=0x1, a2=?, a3=? (`jal` at 0x32cac).
  Calls `elsc_init` via direct with a0=ret(kmem_zalloc)+40, a1=[a1+56]:2, a2=?, a3=?, a4=[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + ([a1+58]:2 + [a1+58]:2))]:2 << 0x3))]:8+65536 (`jal` at 0x32cd4).
  Calls `hwgraph_connectpt_get` via direct with a0=a2 at entry (arg2), a1=?, a2=?, a3=?, a7=sym(modules) (`jal` at 0x32d54).
  Calls `hwgraph_fastinfo_set` via direct with a0=ret(hwgraph_connectpt_get), a1=?, a2=?, a3=? (`jal` at 0x32d70).
  At `blez` at 0x32cec (target 0x32d38), taken when t8(=[sym(nummodules)]) <= 0 (signed) and falls through when t8(=[sym(nummodules)]) > 0 (signed).
  At `beq` at 0x32d04 (target 0x32d38), taken when t9(=[a0+14]:2) >= ra(=[[(sym(modules) + ([sym(nummodules)] << 0x3))-8]:8]:2) (signed) and falls through when t9(=[a0+14]:2) < ra(=[[(sym(modules) + ([sym(nummodules)] << 0x3))-8]:8]:2) (signed).
  At `blez` at 0x32d14 (target 0x32da8), taken when a4(?) <= 0 (signed) and falls through when a4(?) > 0 (signed).
  At `bne` at 0x32d30 (target 0x32d0c), taken when t0(=[a0+14]:2) < t1(?) (signed) and falls through when t0(=[a0+14]:2) >= t1(?) (signed).
  Returns v0 = ret(hwgraph_fastinfo_set); f0 = ret(hwgraph_fastinfo_set) (`jr` at 0x32da0).

- `klhwg_add_xbow` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x32db4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x32db4-0x33068 (692 bytes).
  Stores 4 bytes from t0 to table(0x85fc) +0x0 (`sw` at 0x32f18).
  Stores 2 bytes from s0 to table(0x8600) +0x0 (`sh` at 0x32f40) with value a1.
  Stores 2 bytes from s2 to table(0x8600) +0x0 (`sh` at 0x32f64).
  Calls `find_component` via direct with a0=a2 at entry (arg2), a1=0x0, a2=0x4, a3=a3 at entry (arg3) (`jal` at 0x32e00).
  Calls `hwgraph_vertex_create` via direct with a0=sp-80, a1=?, a2=?, a3=? (`jal` at 0x32e10).
  Calls `xswitch_vertex_init` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x32e18).
  Calls `iobrick_module_get_nasid` via direct with a0=a1 at entry (arg1), a1=0x8, a2=sym(nasid_to_compact_node), a3=(sym(nasid_to_compact_node) + (a1 + a1)) (`jal` at 0x32e54).
  Calls `iobrick_register` via direct with a0=?, a1=?, a2=-0x1, a3=? (`jal` at 0x32e70).
  Calls `hwgraph_edge_add` via direct with a0=entry(0x8c80), a1=?, a2=sym(.rodata)+51152, a3=?, a7=entry(0x8c80) (`jal` at 0x32e8c).
  Calls `is_specified` via direct with a0=sym(arg_maxnodes), a1=sym(.rodata)+51152, a2=?, a3=-0x1 (`jal` at 0x32ee4).
  Calls `hwgraph_edge_add` via direct with a0=[[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a1 + a1))]:2 << 0x3))]:8+35968], a1=?, a2=sym(.rodata)+51152, a3=(sym(nasid_to_compact_node) + (a1 + a1)) (`jal` at 0x32f9c).
  Calls `elsc_module_get_nasid` via direct with a0=a1 at entry (arg1), a1=?, a2=?, a3=? (`jal` at 0x32fac).
  Calls `iobrick_register` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x32fc8).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+51152, a2=?, a3=-0x1 (`jal` at 0x32fdc).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+51152, a2=0x1, a3=? (`jal` at 0x33000).
  Calls `cmn_err` via direct with a0=one of 0x0, 0x4, a1=sym(.rodata)+51152, a2=?, a3=?, a6=ret(hwgraph_edge_add) (`jal` at 0x33024).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+51152, a2=[[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a1 + a1))]:2 << 0x3))]:8+35968], a3=[[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a1 + a1))]:2 << 0x3))]:8+35968], a6=ret(hwgraph_edge_add) (`jal` at 0x3304c).
  At `beq` at 0x32dd8 (target 0x32dfc), taken when (at(=[a2+9]:1) & 0x4) == 0 and falls through when (at(=[a2+9]:1) & 0x4) != 0.
  At `beq` at 0x32e08 (target 0x32de0), taken when v0(=ret(find_component)) == 0 and falls through when v0(=ret(find_component)) != 0.
  At `beq` at 0x32e48 (target 0x32f70), taken when a0(?) == a1(=0xc000) and falls through when a0(?) != a1(=0xc000).
  At `beq` at 0x32e68 (target 0x32e78), taken when a0(?) == a2(=-0x1) and falls through when a0(?) != a2(=-0x1).
  At `bne` at 0x32e94 (target 0x32fec), taken when v0(=ret(hwgraph_edge_add)) != 0 and falls through when v0(=ret(hwgraph_edge_add)) == 0.
  At `beq` at 0x32ea4 (target 0x32f68), taken when s1(?) >= 0x10 (signed) and falls through when s1(?) < 0x10 (signed).
  At `beq` at 0x32ebc (target 0x32e9c), taken when (a4(?) & 0x2) == 0 and falls through when (a4(?) & 0x2) != 0.
  At `beq` at 0x32ec8 (target 0x32fd8), taken when s2(?) == a3(=-0x1) and falls through when s2(?) != a3(=-0x1).
  At `beq` at 0x32ef0 (target 0x32efc), taken when v0(=ret(is_specified)) == 0 -> outside and falls through when v0(=ret(is_specified)) != 0.
  At `beq` at 0x32ef8 (target 0x32e9c), taken when a1(?) == a6(=-0x1) and falls through when a1(?) != a6(=-0x1).
  At `beq` at 0x32f20 (target 0x32e80), taken when s0(=a1) == s2(?) and falls through when s0(=a1) != s2(?).
  At `bne` at 0x32fa4 (target 0x33034), taken when v0(=ret(hwgraph_edge_add)) != 0 and falls through when v0(=ret(hwgraph_edge_add)) == 0.
  At `beq` at 0x32fc0 (target 0x32de4), taken when a0(?) == t9(=-0x1) and falls through when a0(?) != t9(=-0x1).
  At `bne` at 0x32ff0 (target 0x3300c), taken when v0(=ret(hwgraph_edge_add)) != a2(=0x1) and falls through when v0(=ret(hwgraph_edge_add)) == a2(=0x1).
  Returns v0 = ? (`jr` at 0x32df4).

- `pimm_bearing_node` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x33068 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x33068-0x330e8 (128 bytes).
  Calls `eeprom_vertex_info_set` via direct with a0=0x100, a1=a1 at entry (arg1), a2=a0 at entry (arg0), a3=0x0, a4=0x0 (`jal` at 0x33080).
  Calls `strstr` via direct with a0=ret(eeprom_vertex_info_set), a1=sym(.rodata)+51152, a2=?, a3=? (`jal` at 0x330ac).
  Calls `strstr` via direct with a0=ret(eeprom_vertex_info_set), a1=sym(.rodata)+51152, a2=?, a3=? (`jal` at 0x330c8).
  At `bne` at 0x33088 (target 0x330a4), taken when v0(=ret(eeprom_vertex_info_set)) != 0 and falls through when v0(=ret(eeprom_vertex_info_set)) == 0.
  At `beq` at 0x330b4 (target 0x330c4), taken when v0(=ret(strstr)) == 0 and falls through when v0(=ret(strstr)) != 0.
  At `beq` at 0x330d0 (target 0x330e0), taken when v0(=ret(strstr)) == 0 and falls through when v0(=ret(strstr)) != 0.
  Returns v0 = one of 0x0, 0x1 (`jr` at 0x3309c).

- `klhwg_add_node` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x330e8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x330e8-0x33634 (1356 bytes).
  Stores 4 bytes from a1 to sym(_prom_cleared) +0x198 (`sw` at 0x33218) with value [sym(.sdata)+408]+1.
  Stores 8 bytes from v0 to ? (base unknown) (`sd` at 0x332dc) with value ret(kmem_alloc).
  Stores 1 byte from a5 to ? (base unknown) (`sb` at 0x33348) with value [ret(find_lboard)+10]:1.
  Stores 2 bytes from a3 to ? (base unknown) (`sh` at 0x33368) with value [ret(find_lboard)+14]:2.
  Stores 1 byte from zero to ret(strrchr) +0x0 (`sb` at 0x33418) with value 0x0.
  Stores 8 bytes from v0 to table(0x8620) +0x0 (`sd` at 0x335ac) with value ret(module_lookup).
  Calls `find_lboard` via direct with a0=?, a1=0x11, a2=?, a3=? (`jal` at 0x33188).
  Calls `find_lboard` via direct with a0=?, a1=0x11, a2=[sym(.sdata)+408], a3=? (`jal` at 0x331bc).
  Calls `board_to_path` via direct with a0=ret(find_lboard), a1=sp-336, a2=?, a3=? (`jal` at 0x331d0).
  Calls `hwgraph_path_add` via direct with a0=a0 at entry (arg0), a1=sp-336, a2=sp-232, a3=? (`jal` at 0x331e0).
  Calls `find_component` via direct with a0=ret(find_lboard), a1=0x0, a2=0x26, a3=? (`jal` at 0x331f4).
  Calls `init_pebrick` via direct with a0=ret(find_lboard), a1=ret(find_component), a2=?, a3=? (`jal` at 0x33228).
  Calls `eeprom_vertex_info_set` via direct with a0=0x420, a1=[ret(find_component)+58]:2, a2=?, a3=0x0, a4=0x0 (`jal` at 0x33250).
  Calls `find_first_component` via direct with a0=ret(find_lboard), a1=0x2, a2=?, a3=? (`jal` at 0x33264).
  Calls `mark_nodevertex_as_node` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x33294).
  Calls `dev_to_name` via direct with a0=?, a1=sp-336, a2=0x64, a3=? (`jal` at 0x332a4).
  Calls `strlen` via direct with a0=ret(dev_to_name), a1=?, a2=?, a3=? (`jal` at 0x332b0).
  Calls `kmem_alloc` via direct with a0=ret(strlen)+1, a1=0x1, a2=?, a3=? (`jal` at 0x332bc).
  Calls `strcpy` via direct with a0=?, a1=ret(dev_to_name), a2=?, a3=? (`jal` at 0x33300).
  Calls `hwgraph_info_add_LBL` via direct with a0=?, a1=sym(.rodata)+51152, a2=?, a3=? (`jal` at 0x33328).
  Calls `find_first_component` via direct with a0=ret(find_lboard), a1=0x3, a2=?, a3=? (`jal` at 0x33374).
  Calls `klhwg_add_mem` via direct with a0=?, a1=?, a2=ret(find_first_component), a3=[ret(find_lboard)+10]:1 (`jal` at 0x33398).
  Calls `find_first_component` via direct with a0=ret(find_lboard), a1=0x1, a2=?, a3=? (`jal` at 0x333a8).
  Calls `find_lboard` via direct with a0=?, a1=0x11, a2=?, a3=? (`jal` at 0x333e0).
  Calls `board_to_full_path` via direct with a0=ret(find_lboard), a1=sp-224, a2=[sym(.sdata)+408], a3=? (`jal` at 0x333f4).
  Calls `strrchr` via direct with a0=sp-224, a1=0x2f, a2=?, a3=? (`jal` at 0x33400).
  Calls `hwgraph_link_add` via direct with a0=sp-336, a1=sp-224, a2=ret(strrchr)+1, a3=? (`jal` at 0x33414).
  Calls `hwgraph_path_add` via direct with a0=?, a1=sym(.rodata)+51152, a2=sp-108, a3=? (`jal` at 0x33460).
  Calls `klhwg_add_cpu` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3347c).
  Calls `find_component` via direct with a0=ret(find_lboard), a1=?, a2=0x1, a3=? (`jal` at 0x3348c).
  Calls `klhwg_add_disabled_cpu` via direct with a0=?, a1=?, a2=?, a3=[ret(find_lboard)+10]:1 (`jal` at 0x334b4).
  Calls `klhwg_add_hub` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x334d0).
  Calls `hwgraph_path_add` via direct with a0=?, a1=sym(.rodata)+51152, a2=sp-120, a3=? (`jal` at 0x334ec).
  Calls `eeprom_vertex_info_set` via direct with a0=?, a1=?, a2=?, a3=0x0, a4=0x0 (`jal` at 0x33510).
  Calls `cnode_subnode_to_cpu` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x33528).
  Calls `sprintf` via direct with a0=sp-116, a1=sym(.rodata)+51152, a2=?, a3=-0x1 (`jal` at 0x33544).
  Calls `hwgraph_path_add` via direct with a0=?, a1=sp-116, a2=sp-112, a3=? (`jal` at 0x33554).
  Calls `mark_subnodevertex_as_subnode` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x33560).
  Calls `pimm_bearing_node [0x33068]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3356c).
  Calls `module_lookup` via direct with a0=[ret(find_lboard)+14]:2, a1=?, a2=?, a3=[ret(find_lboard)+14]:2, a5=[ret(find_lboard)+10]:1 (`jal` at 0x3358c).
  Calls `chk_for_pebrick` via direct with a0=[(sym(compact_to_nasid_node) + (a1 + a1))]:2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x335b0).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+51152, a2=sp-336, a3=? (`jal` at 0x335cc).
  Calls `assfail` via direct with a0=sym(.rodata)+51152, a1=sym(.rodata)+51152, a2=0x415, a3=? (`jal` at 0x335e8).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+51152, a2=?, a3=? (`jal` at 0x33610).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+51152, a2=?, a3=? (`jal` at 0x33624).
  At `beq` at 0x33154 (target 0x335b0), taken when at(?) == v1(=0xc000) and falls through when at(?) != v1(=0xc000).
  At `beq` at 0x3317c (target 0x33188), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0x331a0 (target 0x33424), taken when v0(=[ret(find_lboard)]) == 0 and falls through when v0(=[ret(find_lboard)]) != 0.
  At `beq` at 0x331c8 (target 0x33424), taken when s0(=ret(find_lboard)) == 0 and falls through when s0(=ret(find_lboard)) != 0.
  At `bne` at 0x331e8 (target 0x335c0), taken when v0(=ret(hwgraph_path_add)) != 0 and falls through when v0(=ret(hwgraph_path_add)) == 0.
  At `beq` at 0x33200 (target 0x333f0), taken when v0(=ret(find_component)) == 0 and falls through when v0(=ret(find_component)) != 0.
  At `bne` at 0x33214 (target 0x3319c), taken when a3(=[sym(num_pebricks)]) < a1(=[sym(.sdata)+408]+1) (signed) and falls through when a3(=[sym(num_pebricks)]) >= a1(=[sym(.sdata)+408]+1) (signed).
  At `bne` at 0x33274 (target 0x3328c), taken when (t8(=[ret(find_first_component)+2]:1) & 0x1) != 0 and falls through when (t8(=[ret(find_first_component)+2]:1) & 0x1) == 0.
  At `bne` at 0x3327c (target 0x33290), taken when s6(=one of 0x0, 0x1) != 0 and falls through when s6(=one of 0x0, 0x1) == 0.
  At `beq` at 0x332f8 (target 0x335dc), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0x33364 (target 0x3358c), taken when s6(=one of 0x0, 0x1) == 0 and falls through when s6(=one of 0x0, 0x1) != 0.
  At `beq` at 0x33380 (target 0x33390), taken when s7(=one of 0x0, 0x1) == 0 and falls through when s7(=one of 0x0, 0x1) != 0.
  At `beq` at 0x333a0 (target 0x334e0), taken when s6(=one of 0x0, 0x1) == 0 and falls through when s6(=one of 0x0, 0x1) != 0.
  At `bne` at 0x333b0 (target 0x33454), taken when v0(=ret(find_first_component)) != 0 and falls through when v0(=ret(find_first_component)) == 0.
  At `beq` at 0x333b8 (target 0x334c4), taken when s7(=one of 0x0, 0x1) == 0 and falls through when s7(=one of 0x0, 0x1) != 0.
  At `beq` at 0x333c4 (target 0x33424), taken when v0(=[ret(find_lboard)]) == 0 and falls through when v0(=[ret(find_lboard)]) != 0.
  At `bne` at 0x33468 (target 0x3360c), taken when v0(=ret(hwgraph_path_add)) != 0 and falls through when v0(=ret(hwgraph_path_add)) == 0.
  At `beq` at 0x33494 (target 0x333b8), taken when v0(=ret(find_component)) == 0 and falls through when v0(=ret(find_component)) != 0.
  At `bne` at 0x334a4 (target 0x33478), taken when (a2(?) & 0x1) != 0 and falls through when (a2(?) & 0x1) == 0.
  At `bne` at 0x334c4 (target 0x333c0), taken when s6(=one of 0x0, 0x1) != 0 and falls through when s6(=one of 0x0, 0x1) == 0.
  At `bne` at 0x334f4 (target 0x33620), taken when v0(=ret(hwgraph_path_add)) != 0 and falls through when v0(=ret(hwgraph_path_add)) == 0.
  At `beq` at 0x33520 (target 0x33584), taken when s1(?) >= 0x2 (signed) and falls through when s1(?) < 0x2 (signed).
  At `beq` at 0x33534 (target 0x33518), taken when v0(=ret(cnode_subnode_to_cpu)) == a3(=-0x1) and falls through when v0(=ret(cnode_subnode_to_cpu)) != a3(=-0x1).
  At `bne` at 0x33574 (target 0x33504), taken when v0(=ret(pimm_bearing_node)) != 0 and falls through when v0(=ret(pimm_bearing_node)) == 0.
  Returns v0 = ? (`jr` at 0x3344c).

- `klhwg_add_all_xbows` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x33634 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x33634-0x3374c (280 bytes).
  Calls `find_lboard` via direct with a0=?, a1=0x11, a2=?, a3=? (`jal` at 0x336b8).
  Calls `find_lboard` via direct with a0=?, a1=0x11, a2=?, a3=? (`jal` at 0x336e8).
  Calls `find_lboard` via direct with a0=ret(find_lboard), a1=0x42, a2=?, a3=? (`jal` at 0x336fc).
  Calls `klhwg_add_xbow` via direct with a0=a0 at entry (arg0), a1=[ret(find_lboard)+32]:2, a2=ret(find_lboard), a3=? (`jal` at 0x33710).
  Calls `chk_for_pebrick` via direct with a0=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a1=a1 at entry (arg1), a2=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a3=([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)+0x9600000000000000, a4=(([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21)+0x9600000000000000 | 0x2000) (`jal` at 0x3373c).
  At `beq` at 0x3368c (target 0x3373c), taken when t8(?) == t9(=0xc000) and falls through when t8(?) != t9(=0xc000).
  At `beq` at 0x336ac (target 0x336b8), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0x336cc (target 0x33720), taken when v0(=[ret(find_lboard)]) == 0 and falls through when v0(=[ret(find_lboard)]) != 0.
  At `beq` at 0x336f0 (target 0x33720), taken when v0(=ret(find_lboard)) == 0 and falls through when v0(=ret(find_lboard)) != 0.
  At `beq` at 0x33704 (target 0x336c8), taken when v0(=ret(find_lboard)) == 0 and falls through when v0(=ret(find_lboard)) != 0.
  Returns v0 = ? (`jr` at 0x33734).

- `klhwg_add_all_routers` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3374c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3374c-0x33914 (456 bytes).
  Calls `find_lboard_class` via direct with a0=?, a1=0x31, a2=?, a3=? (`jal` at 0x33808).
  Calls `find_lboard_class` via direct with a0=?, a1=0x31, a2=?, a3=? (`jal` at 0x33824).
  Calls `board_to_path` via direct with a0=ret(find_lboard_class), a1=sp-192, a2=?, a3=? (`jal` at 0x3386c).
  Calls `hwgraph_path_add` via direct with a0=a0 at entry (arg0), a1=sp-192, a2=sp-88, a3=? (`jal` at 0x3387c).
  Calls `chk_for_pebrick` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x338b0).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+51152, a2=sp-192, a3=? (`jal` at 0x338f4).
  At `blez` at 0x33784 (target 0x338c0), taken when at(=[sym(maxnodes)]) <= 0 (signed) and falls through when at(=[sym(maxnodes)]) > 0 (signed).
  At `beq` at 0x337bc (target 0x338c0), taken when s3(?) >= t8(=[sym(maxnodes)]) (signed) and falls through when s3(?) < t8(=[sym(maxnodes)]) (signed).
  At `beq` at 0x337dc (target 0x338b0), taken when s5(=0xc000) == t8(?) and falls through when s5(=0xc000) != t8(?).
  At `beq` at 0x337fc (target 0x33808), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0x33810 (target 0x337a4), taken when v0(=ret(find_lboard_class)) == 0 and falls through when v0(=ret(find_lboard_class)) != 0.
  At `beq` at 0x3382c (target 0x337a4), taken when v0(=ret(find_lboard_class)) == 0 and falls through when v0(=ret(find_lboard_class)) != 0.
  At `beq` at 0x33848 (target 0x33868), taken when (a7(=[ret(find_lboard_class)+9]:1) & 0x4) == 0 and falls through when (a7(=[ret(find_lboard_class)+9]:1) & 0x4) != 0.
  At `bne` at 0x33858 (target 0x33820), taken when a6(=[ret(find_lboard_class)]) != 0 and falls through when a6(=[ret(find_lboard_class)]) == 0.
  At `bne` at 0x33884 (target 0x338ec), taken when v0(=ret(hwgraph_path_add)) != 0 and falls through when v0(=ret(hwgraph_path_add)) == 0.
  Returns v0 = ? (`jr` at 0x338e4).

- `klhwg_connect_one_router` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x33914 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x33914-0x33ba0 (652 bytes).
  Calls `board_to_path` via direct with a0=a1 at entry (arg1), a1=sp-208, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x33988).
  Calls `hwgraph_traverse` via direct with a0=a0 at entry (arg0), a1=sp-208, a2=sp-152, a3=? (`jal` at 0x33998).
  Calls `is_specified` via direct with a0=sym(arg_maxnodes), a1=?, a2=?, a3=? (`jal` at 0x339a8).
  Calls `rbrick_register` via direct with a0=[a1+14]:2, a1=?, a2=[a1+23]:1, a3=? (`jal` at 0x339d0).
  Calls `is_specified` via direct with a0=sym(arg_maxnodes), a1=?, a2=?, a3=? (`jal` at 0x33a3c).
  Calls `board_to_path` via direct with a0=?, a1=sp-144, a2=?, a3=? (`jal` at 0x33a7c).
  Calls `hwgraph_traverse` via direct with a0=a0 at entry (arg0), a1=sp-144, a2=sp-88, a3=? (`jal` at 0x33a8c).
  Calls `is_specified` via direct with a0=sym(arg_maxnodes), a1=sym(.rodata)+51152, a2=?, a3=? (`jal` at 0x33a9c).
  Calls `sprintf` via direct with a0=sp-144, a1=sym(.rodata)+51152, a2=?, a3=? (`jal` at 0x33ad0).
  Calls `hwgraph_edge_add` via direct with a0=?, a1=?, a2=sp-144, a3=? (`jal` at 0x33ae0).
  Calls `is_specified` via direct with a0=sym(arg_maxnodes), a1=?, a2=0x1, a3=? (`jal` at 0x33afc).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+51152, a2=sp-144, a3=? (`jal` at 0x33b24).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+51152, a2=sp-208, a3=sp-144, a5=ret(hwgraph_edge_add) (`jal` at 0x33b50).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+51152, a2=sp-208, a3=? (`jal` at 0x33b6c).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+51152, a2=[a1+23]:1, a3=? (`jal` at 0x33b80).
  At `beq` at 0x3394c (target 0x33984), taken when (at(=[a1+9]:1) & 0x4) == 0 and falls through when (at(=[a1+9]:1) & 0x4) != 0.
  At `beq` at 0x339a0 (target 0x339b8), taken when v0(=ret(hwgraph_traverse)) == 0 and falls through when v0(=ret(hwgraph_traverse)) != 0.
  At `bne` at 0x339b0 (target 0x33958), taken when v0(=ret(is_specified)) != 0 and falls through when v0(=ret(is_specified)) == 0.
  At `bne` at 0x339b8 (target 0x33b60), taken when s0(=ret(hwgraph_traverse)) != 0 and falls through when s0(=ret(hwgraph_traverse)) == 0.
  At `bne` at 0x339c8 (target 0x33b7c), taken when v0(=0x1) != a2(=[a1+23]:1) and falls through when v0(=0x1) == a2(=[a1+23]:1).
  At `bne` at 0x33a14 (target 0x33b1c), taken when v0(=one of 0x0, 0x1) < 0x1 (unsigned) and falls through when v0(=one of 0x0, 0x1) >= 0x1 (unsigned).
  At `beq` at 0x33a28 (target 0x33b14), taken when s0(?) >= 0x9 (signed) and falls through when s0(?) < 0x9 (signed).
  At `beq` at 0x33a34 (target 0x33a1c), taken when ra(?) == s2(=-0x1) and falls through when ra(?) != s2(=-0x1).
  At `beq` at 0x33a44 (target 0x33a64), taken when v0(=ret(is_specified)) == 0 and falls through when v0(=ret(is_specified)) != 0.
  At `beq` at 0x33a5c (target 0x33a1c), taken when t8(?) == s2(=-0x1) and falls through when t8(?) != s2(=-0x1).
  At `beq` at 0x33a94 (target 0x33ac8), taken when v0(=ret(hwgraph_traverse)) == 0 and falls through when v0(=ret(hwgraph_traverse)) != 0.
  At `beq` at 0x33aa4 (target 0x33abc), taken when v0(=ret(is_specified)) == 0 and falls through when v0(=ret(is_specified)) != 0.
  At `bne` at 0x33ab4 (target 0x33a10), taken when (t9(?) & 0x4) != 0 and falls through when (t9(?) & 0x4) == 0.
  At `beq` at 0x33aec (target 0x33a1c), taken when v0(=ret(hwgraph_edge_add)) == a2(=0x1) and falls through when v0(=ret(hwgraph_edge_add)) != a2(=0x1).
  At `beq` at 0x33af4 (target 0x33a1c), taken when v0(=ret(hwgraph_edge_add)) == 0 and falls through when v0(=ret(hwgraph_edge_add)) != 0.
  At `bnel` at 0x33b04 (target 0x33a20), taken when v0(=ret(is_specified)) != 0 and falls through when v0(=ret(is_specified)) == 0.
  At `beq` at 0x33b2c (target 0x33a1c), taken when s1(?) == 0 and falls through when s1(?) != 0.
  Returns v0 = ? (`jr` at 0x3397c).
  The instructions from 0x33ac4 to 0x33ac4 are not reached by any path from the entry, and their branches are not listed.

- `klhwg_connect_routers` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x33ba0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x33ba0-0x33d18 (376 bytes).
  Calls `find_lboard_class` via direct with a0=?, a1=0x31, a2=?, a3=? (`jal` at 0x33c60).
  Calls `find_lboard_class` via direct with a0=?, a1=0x31, a2=?, a3=? (`jal` at 0x33c80).
  Calls `klhwg_connect_one_router` via direct with a0=a0 at entry (arg0), a1=ret(find_lboard_class), a2=?, a3=? (`jal` at 0x33c9c).
  Calls `chk_for_pebrick` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x33cc8).
  At `blez` at 0x33be8 (target 0x33cd8), taken when at(=[sym(maxnodes)]) <= 0 (signed) and falls through when at(=[sym(maxnodes)]) > 0 (signed).
  At `beq` at 0x33c14 (target 0x33cd8), taken when s3(?) >= v0(=[sym(maxnodes)]) (signed) and falls through when s3(?) < v0(=[sym(maxnodes)]) (signed).
  At `beq` at 0x33c34 (target 0x33cc8), taken when s7(=0xc000) == t8(?) and falls through when s7(=0xc000) != t8(?).
  At `beq` at 0x33c54 (target 0x33c60), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0x33c68 (target 0x33bfc), taken when v0(=ret(find_lboard_class)) == 0 and falls through when v0(=ret(find_lboard_class)) != 0.
  At `beq` at 0x33c88 (target 0x33bfc), taken when v0(=ret(find_lboard_class)) == 0 and falls through when v0(=ret(find_lboard_class)) != 0.
  At `bne` at 0x33cb8 (target 0x33c78), taken when a1(=[ret(find_lboard_class)]) != 0 and falls through when a1(=[ret(find_lboard_class)]) == 0.
  Returns v0 = ? (`jr` at 0x33d00).

- `klhwg_connect_hubs` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x33d18 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x33d18-0x33f70 (600 bytes).
  Calls `is_specified` via direct with a0=sym(arg_maxnodes), a1=?, a2=sym(.rodata)+51152, a3=? (`jal` at 0x33d78).
  Calls `find_lboard` via direct with a0=?, a1=0x11, a2=?, a3=? (`jal` at 0x33dfc).
  Calls `find_first_component` via direct with a0=ret(find_lboard), a1=0x2, a2=?, a3=? (`jal` at 0x33e0c).
  Calls `is_specified` via direct with a0=sym(arg_maxnodes), a1=?, a2=?, a3=?, a7=[ret(find_first_component)+60]:2 (`jal` at 0x33e20).
  Calls `board_to_path` via direct with a0=ret(find_lboard), a1=sp-224, a2=?, a3=? (`jal` at 0x33e4c).
  Calls `hwgraph_traverse` via direct with a0=a0 at entry (arg0), a1=sp-224, a2=sp-168, a3=? (`jal` at 0x33e5c).
  Calls `board_to_path` via direct with a0=?, a1=sp-160, a2=?, a3=? (`jal` at 0x33e88).
  Calls `hwgraph_traverse` via direct with a0=a0 at entry (arg0), a1=sp-160, a2=sp-104, a3=? (`jal` at 0x33e98).
  Calls `hwgraph_edge_add` via direct with a0=?, a1=?, a2=sym(.rodata)+51152, a3=? (`jal` at 0x33eb0).
  Calls `chk_for_pebrick` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x33ec8).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+51152, a2=sp-160, a3=? (`jal` at 0x33f14).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+51152, a2=sp-224, a3=? (`jal` at 0x33f2c).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+51152, a2=sp-224, a3=sp-160, a5=ret(hwgraph_edge_add) (`jal` at 0x33f50).
  At `blez` at 0x33d60 (target 0x33ed8), taken when at(=[sym(maxnodes)]) <= 0 (signed) and falls through when at(=[sym(maxnodes)]) > 0 (signed).
  At `beq` at 0x33d80 (target 0x33f0c), taken when v0(=ret(is_specified)) == 0 and falls through when v0(=ret(is_specified)) != 0.
  At `beq` at 0x33d90 (target 0x33f0c), taken when (t8(?) & 0x4) == 0 and falls through when (t8(?) & 0x4) != 0.
  At `beq` at 0x33db0 (target 0x33ed8), taken when s1(?) >= t9(=[sym(maxnodes)]) (signed) and falls through when s1(?) < t9(=[sym(maxnodes)]) (signed).
  At `beq` at 0x33dd0 (target 0x33ec8), taken when s5(=0xc000) == t8(?) and falls through when s5(=0xc000) != t8(?).
  At `beq` at 0x33df0 (target 0x33dfc), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0x33e18 (target 0x33d98), taken when a7(=[ret(find_first_component)+60]:2) == s7(=-0x1) and falls through when a7(=[ret(find_first_component)+60]:2) != s7(=-0x1).
  At `beq` at 0x33e28 (target 0x33e4c), taken when v0(=ret(is_specified)) == 0 and falls through when v0(=ret(is_specified)) != 0.
  At `beq` at 0x33e44 (target 0x33d98), taken when t0(=[(sym(nasid_to_compact_node) + ([ret(find_first_component)+60]:2 + [ret(find_first_component)+60]:2))]:2) == s7(=-0x1) and falls through when t0(=[(sym(nasid_to_compact_node) + ([ret(find_first_component)+60]:2 + [ret(find_first_component)+60]:2))]:2) != s7(=-0x1).
  At `bne` at 0x33e64 (target 0x33f24), taken when v0(=ret(hwgraph_traverse)) != 0 and falls through when v0(=ret(hwgraph_traverse)) == 0.
  At `bne` at 0x33ea0 (target 0x33d78), taken when v0(=ret(hwgraph_traverse)) != 0 and falls through when v0(=ret(hwgraph_traverse)) == 0.
  At `beql` at 0x33eb8 (target 0x33d9c), taken when v0(=ret(hwgraph_edge_add)) == 0 and falls through when v0(=ret(hwgraph_edge_add)) != 0.
  Returns v0 = ? (`jr` at 0x33f00).
  The instructions from 0x33f08 to 0x33f08 are not reached by any path from the entry, and their branches are not listed.

- `klhwg_device_disable_hints_add` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x33f70 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x33f70-0x341a0 (560 bytes).
  Calls `device_admin_table_init` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x33f78).
  Calls `device_component_canonical_name_get` via direct with a0=?, a1=?, a2=sp-336, a3=?, a5=sym(compact_to_nasid_node) (`jal` at 0x34114).
  Calls `device_admin_table_update` via direct with a0=sp-336, a1=sym(.rodata)+51152, a2=sym(.rodata)+51152, a3=? (`jal` at 0x34128).
  Calls `chk_for_pebrick` via direct with a0=?, a1=?, a2=?, a3=?, a5=sym(compact_to_nasid_node) (`jal` at 0x3414c).
  At `blez` at 0x33fa4 (target 0x34160), taken when at(=[sym(numnodes)]) <= 0 (signed) and falls through when at(=[sym(numnodes)]) > 0 (signed).
  At `beq` at 0x33fec (target 0x34160), taken when s4(?) >= t8(=[sym(numnodes)]) (signed) and falls through when s4(?) < t8(=[sym(numnodes)]) (signed).
  At `beq` at 0x34010 (target 0x3414c), taken when s6(=0xc000) == t8(?) and falls through when s6(=0xc000) != t8(?).
  At `beq` at 0x3402c (target 0x34038), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0x34038 (target 0x33fd4), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `beq` at 0x34050 (target 0x33fd4), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `beq` at 0x34068 (target 0x3408c), taken when (a6(?) & 0x4) == 0 and falls through when (a6(?) & 0x4) != 0.
  At `bne` at 0x3407c (target 0x34048), taken when a2(?) != 0 and falls through when a2(?) == 0.
  At `bne` at 0x34094 (target 0x34070), taken when s8(=0x20) != a6(?) and falls through when s8(=0x20) == a6(?).
  At `blez` at 0x340a4 (target 0x340e4), taken when a0(?) <= 0 (signed) and falls through when a0(?) > 0 (signed).
  At `beq` at 0x340cc (target 0x34110), taken when (t8(?) & 0x1) == 0 and falls through when (t8(?) & 0x1) != 0.
  At `bne` at 0x340dc (target 0x340b0), taken when s3(?) < a0(?) (signed) and falls through when s3(?) >= a0(?) (signed).
  At `beq` at 0x340f8 (target 0x34050), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `bne` at 0x3413c (target 0x340ac), taken when s3(?) < a0(?) (signed) and falls through when s3(?) >= a0(?) (signed).
  Returns v0 = ? (`jr` at 0x34188).

- `klhwg_dimm_flavor_info_print` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x341a0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x341a0-0x343a0 (512 bytes).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+51152, a2=sym(.rodata)+51152, a3=? (`jal` at 0x34210).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+51152, a2=?, a3=? (`jal` at 0x34238).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+51152, a2=?, a3=? (`jal` at 0x3428c).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+51152, a2=?, a3=? (`jal` at 0x342a8).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+51152, a2=?, a3=? (`jal` at 0x342c4).
  Calls `chk_for_pebrick` via direct with a0=?, a1=0x9600000000000000, a2=0xffffffffff, a3=?, a6=0x9000000034000000 (`jal` at 0x34314).
  Calls `find_lboard` via direct with a0=?, a1=0x11, a2=?, a3=? (`jal` at 0x34350).
  Calls `board_to_path` via direct with a0=ret(find_lboard), a1=sp-176, a2=?, a3=? (`jal` at 0x3435c).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+51152, a2=sp-176, a3=? (`jal` at 0x3436c).
  At `blez` at 0x341c4 (target 0x34230), taken when a0 <= 0 (signed) and falls through when a0 > 0 (signed).
  At `bne` at 0x341f0 (target 0x34264), taken when s0(?) != 0 and falls through when s0(?) == 0.
  At `beq` at 0x341f8 (target 0x34208), taken when t8(=a2) == 0 and falls through when t8(=a2) != 0.
  At `bne` at 0x34228 (target 0x341e0), taken when s0(?) < s1(=a0) (signed) and falls through when s0(?) >= s1(=a0) (signed).
  At `bgtz` at 0x34240 (target 0x342d4), taken when s1(=a0) > 0 (signed) and falls through when s1(=a0) <= 0 (signed).
  At `bne` at 0x34270 (target 0x3429c), taken when a3(?) != a4(?) and falls through when a3(?) == a4(?).
  At `bne` at 0x34278 (target 0x3421c), taken when a6(?) != s0(?) and falls through when a6(?) == s0(?).
  At `beq` at 0x3429c (target 0x342b8), taken when a2(?) == a5(?) and falls through when a2(?) != a5(?).
  At `bne` at 0x3430c (target 0x34324), taken when a5(=0xc000) != a4(?) and falls through when a5(=0xc000) == a4(?).
  At `beq` at 0x34338 (target 0x3434c), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0x34390 (target 0x342ec), taken when s0(?) < s1(=a0) (signed) and falls through when s0(?) >= s1(=a0) (signed).
  Returns v0 = ret(cmn_err); f0 = ret(cmn_err) (`jr` at 0x3425c).

- `klhwg_premium_std_dimm_mix_check` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x343a0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x343a0-0x345d0 (560 bytes).
  Stores 1 byte from v0 to sym(_prom_cleared) +0x19c (`sb` at 0x343cc).
  Stores 2 bytes from s3 to ? (base unknown) (`sh` at 0x34450).
  Stores 2 bytes from s3 to ? (base unknown) (`sh` at 0x3450c).
  Stores 2 bytes from s3 to ? (base unknown) (`sh` at 0x3453c).
  Stores 2 bytes from s3 to ? (base unknown) (`sh` at 0x34554).
  Stores 1 byte from zero to sym(_prom_cleared) +0x19c (`sb` at 0x345c4) with value 0x0.
  Calls `find_lboard` via direct with a0=?, a1=0x11, a2=?, a3=? (`jal` at 0x344a8).
  Calls `find_first_component` via direct with a0=ret(find_lboard), a1=0x3, a2=?, a3=? (`jal` at 0x344b4).
  Calls `chk_for_pebrick` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x34558).
  Calls `klhwg_dimm_flavor_info_print` via direct with a0=?, a1=sp-336, a2=0x0, a3=? (`jal` at 0x34574).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+51152, a2=?, a3=? (`jal` at 0x34584).
  Calls `cmn_err` via direct with a0=0x204, a1=sym(.rodata)+51152, a2=?, a3=? (`jal` at 0x3459c).
  Calls `klhwg_dimm_flavor_info_print` via direct with a0=?, a1=sp-336, a2=0x0, a3=? (`jal` at 0x345ac).
  Calls `klhwg_dimm_flavor_info_print` via direct with a0=?, a1=sp-592, a2=0x1, a3=? (`jal` at 0x345bc).
  At `bne` at 0x343b4 (target 0x343f4), taken when v0(=[sym(.sdata)+412]:1) != at(=0xff) and falls through when v0(=[sym(.sdata)+412]:1) == at(=0xff).
  At `blez` at 0x34424 (target 0x343c4), taken when v1(=[sym(numnodes)]) <= 0 (signed) and falls through when v1(=[sym(numnodes)]) > 0 (signed).
  At `beq` at 0x34444 (target 0x34528), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0x34454 (target 0x34510), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0x34480 (target 0x34558), taken when s6(=0xc000) == t8(?) and falls through when s6(=0xc000) != t8(?).
  At `beq` at 0x3449c (target 0x344a8), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0x344f4 (target 0x34444), taken when at(=[ret(find_first_component)+1]:1) >= 0x2 (signed) and falls through when at(=[ret(find_first_component)+1]:1) < 0x2 (signed).
  At `beq` at 0x344fc (target 0x34540), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0x34510 (target 0x343c8), taken when s4(?) == 0 and falls through when s4(?) != 0.
  At `bne` at 0x34518 (target 0x34568), taken when s2(?) != 0 and falls through when s2(?) == 0.
  At `bne` at 0x34568 (target 0x34594), taken when v0(?) != 0 and falls through when v0(?) == 0.
  Returns v0 = ? (`jr` at 0x343f4).

- `klhwg_add_all_modules` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x345d0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x345d0-0x3472c (348 bytes).
  Calls `kern_free` via direct with a0=ret(kern_malloc), a1=sym(.rodata)+51152, a2=?, a3=? (`jal` at 0x34610).
  Calls `sndrv_attach` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x34618).
  Calls `sprintf` via direct with a0=sp-192, a1=sym(.rodata)+51152, a2=?, a3=? (`jal` at 0x3464c).
  Calls `hwgraph_path_add` via direct with a0=a0 at entry (arg0), a1=sp-192, a2=sp-64, a3=? (`jal` at 0x3465c).
  Calls `hwgraph_fastinfo_set` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x34668).
  Calls `sprintf` via direct with a0=sp-192, a1=sym(.rodata)+51152, a2=?, a3=? (`jal` at 0x3467c).
  Calls `hwgraph_path_add` via direct with a0=a0 at entry (arg0), a1=sp-192, a2=sp-64, a3=? (`jal` at 0x3468c).
  Calls `hwgraph_info_add_LBL` via direct with a0=?, a1=sym(.rodata)+51152, a2=0x1, a3=? (`jal` at 0x346a4).
  Calls `kern_malloc` via direct with a0=0x20, a1=?, a2=?, a3=? (`jal` at 0x346ac).
  Calls `l1_mfg_string` via direct with a0=ret(kern_malloc), a1=?, a2=?, a3=0x0 (`jal` at 0x346c8).
  Calls `hwgraph_info_add_LBL` via direct with a0=?, a1=sym(.rodata)+51152, a2=ret(kern_malloc), a3=? (`jal` at 0x346e0).
  Calls `assfail` via direct with a0=sym(.rodata)+51152, a1=sym(.rodata)+51152, a2=0x6f0, a3=? (`jal` at 0x3471c).
  At `blez` at 0x345fc (target 0x346f0), taken when at(=[sym(nummodules)]) <= 0 (signed) and falls through when at(=[sym(nummodules)]) > 0 (signed).
  At `beq` at 0x34634 (target 0x346f0), taken when s1(?) >= v0(=[sym(nummodules)]) (signed) and falls through when s1(?) < v0(=[sym(nummodules)]) (signed).
  At `bne` at 0x34694 (target 0x34714), taken when v0(=ret(hwgraph_path_add)) != 0 and falls through when v0(=ret(hwgraph_path_add)) == 0.
  At `bne` at 0x346d0 (target 0x34610), taken when v0(=ret(l1_mfg_string)) != 0 and falls through when v0(=ret(l1_mfg_string)) == 0.
  Returns v0 = ? (`jr` at 0x3470c).

- `klhwg_add_all_nodes` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3472c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3472c-0x34800 (212 bytes).
  Calls `get_nasid` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3473c).
  Calls `klhwg_add_node` via direct with a0=a0 at entry (arg0), a1=?, a2=[((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8, a3=? (`jal` at 0x34774).
  Calls `klhwg_add_all_xbows` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x347a0).
  Calls `klhwg_add_all_routers` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x347cc).
  Calls `klhwg_connect_routers` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x347d4).
  Calls `klhwg_connect_hubs` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x347dc).
  Calls `router_guardians_set` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x347e4).
  Calls `klhwg_device_disable_hints_add` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x347ec).
  At `blez` at 0x34764 (target 0x347c4), taken when at(=[sym(numnodes)]) <= 0 (signed) and falls through when at(=[sym(numnodes)]) > 0 (signed).
  At `bnel` at 0x34790 (target 0x34770), taken when s0(?) < a0(=[sym(numnodes)]) (signed) and falls through when s0(?) >= a0(=[sym(numnodes)]) (signed).
  At `blez` at 0x34798 (target 0x347c4), taken when a0(=[sym(numnodes)]) <= 0 (signed) and falls through when a0(=[sym(numnodes)]) > 0 (signed).
  At `bne` at 0x347bc (target 0x347a0), taken when s0(?) < t8(=[sym(numnodes)]) (signed) and falls through when s0(?) >= t8(=[sym(numnodes)]) (signed).
  Returns v0 = ret(klhwg_device_disable_hints_add); f0 = ret(klhwg_device_disable_hints_add) (`jr` at 0x347f8).

- `get_freemem_start` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x349ac (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x349ac-0x34ab8 (268 bytes).
  At `beq` at 0x349b8 (target 0x34a74), taken when a0 == 0 and falls through when a0 != 0.
  At `beq` at 0x349e0 (target 0x34a2c), taken when (a1(=entry(sym(ktext_repmask))) & a2(?)) == 0 and falls through when (a1(=entry(sym(ktext_repmask))) & a2(?)) != 0.
  At `beq` at 0x34a5c (target 0x34ab0), taken when a2(=[sym(kdebug)]:2) == 0 and falls through when a2(=[sym(kdebug)]:2) != 0.
  Returns v0 = ? (`jr` at 0x34a24).
  Returns v0 = ? (`jr` at 0x34a6c).
  Returns v0 = ? (`jr` at 0x34aa8).
  Returns v0 = ? (`jr` at 0x34ab0).

- `setup_replication_mask` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x34ab8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x34ab8-0x34b94 (220 bytes).
  Stores 8 bytes from zero to ? (base unknown) (`sd` at 0x34ae0) with value 0x0.
  Stores 8 bytes from v0 to sym(.bss) +0xb898 (`sd` at 0x34af4) with value ([sym(ktext_repmask)]:8 | 0x1).
  Stores 8 bytes from a7 to ? (base unknown) (`sd` at 0x34b50).
  Stores 8 bytes from s0 to [((ret(get_nasid) << 0x21)+0x9600000000000000 | 0x2000)+208]:8 +0x40 (`sd` at 0x34b78) with value sym(ktext_repmask).
  Calls `get_nasid` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0x34b54).
  At `bne` at 0x34adc (target 0x34acc), taken when a2(?) < 0x8 (signed) and falls through when a2(?) >= 0x8 (signed).
  At `bne` at 0x34af0 (target 0x34b54), taken when a4(?) != 0 and falls through when a4(?) == 0.
  At `beq` at 0x34b14 (target 0x34b54), taken when a2(?) >= a0 (signed) and falls through when a2(?) < a0 (signed).
  At `beq` at 0x34b1c (target 0x34b08), taken when a4(=[sym(numa_kernel_replication_ratio)]) == 0 and falls through when a4(=[sym(numa_kernel_replication_ratio)]) != 0.
  At `bne` at 0x34b2c (target 0x34b08), taken when a6(?) != 0 and falls through when a6(?) == 0.
  Returns v0 = ret(get_nasid); f0 = ret(get_nasid) (`jr` at 0x34b80).

- `replicate_kernel_text` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x34b94 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x34b94-0x34d0c (376 bytes).
  Calls `set_ktext_source [0x34da4]` via direct with a0=[sym(master_nasid)]:2, a1=[sym(master_nasid)]:2, a2=?, a3=? (`jal` at 0x34c34).
  Calls `copy_kernel [0x34d0c]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x34c84).
  Calls `set_ktext_source [0x34da4]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x34c90).
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.rodata)+55744, a2=?, a3=?, a4=sym(.rodata)+45952, a5=[[([[-0x3c00]:8]:8 + ([-0x3bd6]:2 << 0x3))]:8+34176]:8, a6=sym(_erodata), a7=[[([[-0x3c00]:8]:8 + ([-0x3bd6]:2 << 0x3))]:8+34184]:8 (`jal` at 0x34cfc).
  At `bne` at 0x34c20 (target 0x34ce4), taken when a3(?) < a2(?) (unsigned) and falls through when a3(?) >= a2(?) (unsigned).
  At `bne` at 0x34c4c (target 0x34cbc), taken when s3(=a0) < 0x2 (signed) and falls through when s3(=a0) >= 0x2 (signed).
  At `beq` at 0x34c78 (target 0x34c8c), taken when (t8(?) & t9(?)) == 0 and falls through when (t8(?) & t9(?)) != 0.
  At `bne` at 0x34cb4 (target 0x34c68), taken when s0(?) < s3(=a0) (signed) and falls through when s0(?) >= s3(=a0) (signed).
  Returns v0 = ret(set_ktext_source); f0 = ret(set_ktext_source) (`jr` at 0x34cdc).

- `copy_kernel` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x34d0c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x34d0c-0x34da4 (152 bytes).
  Calls `bcopy` via direct with a0=sym(__elf_header), a1=?, a2=?, a3=(a0 << 0x21), a4=0xffffff01ffffffff, a5=0xa800000000000000, a7=0xffffff (`jal` at 0x34d90).
  Returns v0 = ret(bcopy); f0 = ret(bcopy) (`jr` at 0x34d9c).

- `set_ktext_source` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x34da4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x34da4-0x34e3c (152 bytes).
  Stores 8 bytes from v0 to ((a0 << 0x21)+0x9600000000000000 | 0x2000) +0x1d0 (`sd` at 0x34df8) with value [(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8+34168.
  Stores 2 bytes from a1 to [(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x857c (`sh` at 0x34e04) with value a1.
  Stores 4 bytes from v1 to [(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8578 (`sw` at 0x34e10) with value 0x5f4b565f.
  Stores 8 bytes from a0 to [(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8580 (`sd` at 0x34e20) with value (a1 << 0x21)+0xa800000000000000.
  Stores 2 bytes from a2 to [(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x857e (`sh` at 0x34e24) with value [sym(master_nasid)]:2.
  Stores 8 bytes from at to [(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8 +0x8588 (`sd` at 0x34e38) with value ([sym(master_nasid)]:2 << 0x21)+0xa800000000000000.
  Returns v0 = [(([(sym(nasid_to_compact_node) + (a0 + a0))]:2 << 0x3) + [[-0x3c00]:8]:8)]:8+34168 (`jr` at 0x34e34).

- `page_dumpable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x34e3c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x34e3c-0x34f74 (312 bytes).
  Calls `kvtophys` via direct with a0=?, a1=([(sym(compact_to_nasid_node) + (a0 + a0))]:2 << 0x21), a2=0xa800000000000000, a3=?, a4=entry(sym(ktext_repmask)), a5=[(sym(compact_to_nasid_node) + (a0 + a0))]:2, a6=0x1 (`jal` at 0x34f00).
  Calls `kvtophys` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x34f18).
  At `beq` at 0x34e6c (target 0x34f64), taken when a7(=[sym(master_nasid)]:2) == a5(=[(sym(compact_to_nasid_node) + (a0 + a0))]:2) and falls through when a7(=[sym(master_nasid)]:2) != a5(=[(sym(compact_to_nasid_node) + (a0 + a0))]:2).
  At `beq` at 0x34e88 (target 0x34f6c), taken when (a4(=entry(sym(ktext_repmask))) & a7(?)) == 0 and falls through when (a4(=entry(sym(ktext_repmask))) & a7(?)) != 0.
  At `bne` at 0x34f3c (target 0x34f58), taken when a0(?) < a1(?) (unsigned) and falls through when a0(?) >= a1(?) (unsigned).
  At `bne` at 0x34f44 (target 0x34f5c), taken when a0(?) != 0 and falls through when a0(?) == 0.
  Returns v0 = one of 0x0, 0x1 (`jr` at 0x34f5c).

- `_get_count` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x37440 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x37440-0x3744c (12 bytes).
  Returns v0 = ? (`jr` at 0x37444).

- `get_r4k_counter` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x37440 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x37440-0x3744c (12 bytes).
  Returns v0 = ? (`jr` at 0x37444).

- `delaycounter` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x374d8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x374d8-0x374fc (36 bytes).
  Returns v0 = ? (`jr` at 0x374f4).

- `_badaddr_val` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x37500 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x37500-0x37614 (276 bytes).
  Stores 2 bytes from v0 to [-0x3fe0]:8 +0xf6 (`sh` at 0x37520) with value 0x1.
  Stores 4 bytes from v0 to abs 0xffffffffffffc48c (`sw` at 0x3752c) with value 0x1.
  Stores 1 byte from v0 to a2 (arg2 at entry) +0x0 (`sb` at 0x37544) with value [a0]:1.
  Stores 2 bytes from v0 to a2 (arg2 at entry) +0x0 (`sh` at 0x37564) with value [a0]:2.
  Stores 4 bytes from v0 to a2 (arg2 at entry) +0x0 (`sw` at 0x37584) with value [a0].
  Stores 8 bytes from v0 to a2 (arg2 at entry) +0x0 (`sd` at 0x375a4) with value [a0]:8.
  Stores 2 bytes from zero to [-0x3fe0]:8 +0xf6 (`sh` at 0x375f0) with value 0x0.
  Stores 4 bytes from zero to abs 0xffffffffffffc48c (`sw` at 0x375fc) with value 0x0.
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.data)+41056, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x375c8).
  At `beq` at 0x37518 (target 0x3752c), taken when t2(=[-0x3fe0]:8) == 0 and falls through when t2(=[-0x3fe0]:8) != 0.
  At `bne` at 0x37534 (target 0x37550), taken when a1 != at(=0x1) and falls through when a1 == at(=0x1).
  At `bne` at 0x37554 (target 0x37570), taken when a1 != at(=0x2) and falls through when a1 == at(=0x2).
  At `bne` at 0x37574 (target 0x37590), taken when a1 != at(=0x4) and falls through when a1 == at(=0x4).
  At `bne` at 0x37594 (target 0x375b0), taken when a1 != at(=0x8) and falls through when a1 == at(=0x8).
  At `bne` at 0x375dc (target 0x37888), taken when (t1(?) & 0x4000) != 0 -> outside and falls through when (t1(?) & 0x4000) == 0.
  At `beq` at 0x375e8 (target 0x375fc), taken when t2(=[-0x3fe0]:8) == 0 and falls through when t2(=[-0x3fe0]:8) != 0.
  Returns v0 = 0x0 (`jr` at 0x3760c).

- `_wbadaddr_val` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x37614 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x37614-0x3773c (296 bytes).
  Stores 4 bytes from v0 to abs 0xffffffffffffc48c (`sw` at 0x37638) with value 0x1.
  Stores 2 bytes from v0 to [-0x3fe0]:8 +0xf6 (`sh` at 0x37644) with value 0x1.
  Stores 1 byte from v0 to a0 (arg0 at entry) +0x0 (`sb` at 0x3765c) with value [a2]:1.
  Stores 2 bytes from v0 to a0 (arg0 at entry) +0x0 (`sh` at 0x3767c) with value [a2]:2.
  Stores 4 bytes from v0 to a0 (arg0 at entry) +0x0 (`sw` at 0x3769c) with value [a2].
  Stores 8 bytes from v0 to a0 (arg0 at entry) +0x0 (`sd` at 0x376bc) with value [a2]:8.
  Stores 4 bytes from zero to abs 0xffffffffffffc48c (`sw` at 0x37718) with value 0x0.
  Stores 2 bytes from zero to [-0x3fe0]:8 +0xf6 (`sh` at 0x37724) with value 0x0.
  Calls `cmn_err` via direct with a0=0x0, a1=sym(.data)+41082, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x376e0).
  At `bne` at 0x37630 (target 0x37644), taken when t2(=[-0x3fe0]:8) != 0 and falls through when t2(=[-0x3fe0]:8) == 0.
  At `bne` at 0x3764c (target 0x37668), taken when a1 != at(=0x1) and falls through when a1 == at(=0x1).
  At `bne` at 0x3766c (target 0x37688), taken when a1 != at(=0x2) and falls through when a1 == at(=0x2).
  At `bne` at 0x3768c (target 0x376a8), taken when a1 != at(=0x4) and falls through when a1 == at(=0x4).
  At `bne` at 0x376ac (target 0x376c8), taken when a1 != at(=0x8) and falls through when a1 == at(=0x8).
  At `bne` at 0x37704 (target 0x37888), taken when (t1(?) & 0x4000) != 0 -> outside and falls through when (t1(?) & 0x4000) == 0.
  At `bne` at 0x37710 (target 0x37724), taken when t2(=[-0x3fe0]:8) != 0 and falls through when t2(=[-0x3fe0]:8) == 0.
  Returns v0 = 0x0 (`jr` at 0x37734).

- `_dummy_proc` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x378f0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x378f0-0x378f8 (8 bytes).
  Returns v0 = ? (`jr` at 0x378f0).

- `first_address` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x378f0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x378f0-0x378f8 (8 bytes).
  Returns v0 = ? (`jr` at 0x378f0).

- `hub_ioerror_local` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x37900 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x37900-0x379fc (252 bytes).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+56232, a2=?, a3=[(sym(compact_to_nasid_node) + ([a3+14]:2 + [a3+14]:2))]:2, a4=[a3+14]:2, a5=[(sym(compact_to_nasid_node) + ([a3+12]:2 + [a3+12]:2))]:2, a6=[a3+12]:2 (`jal` at 0x379b0).
  Calls `kl_panic` via direct with a0=sym(.rodata)+56232, a1=?, a2=?, a3=? (`jal` at 0x379bc).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+56232, a2=[a3+16]:8, a3=?, a4=[a3+14]:2, a6=[a3+12]:2 (`jal` at 0x379e0).
  Calls `kl_panic` via direct with a0=sym(.rodata)+56232, a1=?, a2=?, a3=? (`jal` at 0x379ec).
  At `beq` at 0x3790c (target 0x37934), taken when a2 == 0 and falls through when a2 != 0.
  At `beq` at 0x37918 (target 0x37934), taken when a2 == at(=0x2) and falls through when a2 != at(=0x2).
  At `bne` at 0x37920 (target 0x3793c), taken when a2 != v0(=0x3) and falls through when a2 == v0(=0x3).
  At `bgez` at 0x37964 (target 0x37974), taken when a2(=([a3] << 0x6)) >= 0 (signed) and falls through when a2(=([a3] << 0x6)) < 0 (signed).
  At `beq` at 0x3799c (target 0x379cc), taken when (a3(=[([(sym(compact_to_nasid_node) + ([a3+14]:2 + [a3+14]:2))]:2 << 0x21)-7926335344146907136]:8) & a5(?)) == 0 and falls through when (a3(=[([(sym(compact_to_nasid_node) + ([a3+14]:2 + [a3+14]:2))]:2 << 0x21)-7926335344146907136]:8) & a5(?)) != 0.
  Returns v0 = ? (`jr` at 0x3792c).

- `hub_xp_error_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x379fc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x379fc-0x37ae4 (232 bytes).
  Calls `error_state_get` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=0x7 (`jal` at 0x37a38).
  Calls `error_state_set` via direct with a0=[[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a1 + a1))]:2 << 0x3))]:8+34368], a1=ret(error_state_get), a2=[([[-0x3c00]:8]:8 + ([(sym(nasid_to_compact_node) + (a1 + a1))]:2 << 0x3))]:8, a3=([(sym(nasid_to_compact_node) + (a1 + a1))]:2 << 0x3), a4=(a1 + a1) (`jal` at 0x37a7c).
  Calls `xtalk_error_handler` via direct with a0=?, a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=a4 at entry (arg4) (`jal` at 0x37aac).
  Calls `error_state_set` via direct with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=?, a5=0x7, a7=0x9 (`jal` at 0x37ad4).
  At `beq` at 0x37a30 (target 0x37ab8), taken when (at(=[(a1 << 0x21)-7926335344142712344]:8) & 0x11) == 0 and falls through when (at(=[(a1 << 0x21)-7926335344142712344]:8) & 0x11) != 0.
  At `beq` at 0x37a90 (target 0x37acc), taken when v0(=ret(error_state_set)) == a5(=0x7) and falls through when v0(=ret(error_state_set)) != a5(=0x7).
  At `beq` at 0x37a98 (target 0x37ad4), taken when a6(?) == t0(=0x3) and falls through when a6(?) != t0(=0x3).
  Returns v0 = ? (`jr` at 0x37ac4).

- `is_widget_pio_enabled` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x37ae4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x37ae4-0x37b4c (104 bytes).
  At `beq` at 0x37af4 (target 0x37b3c), taken when a3(=[a0+12]:2) == a6(=-0x1) and falls through when a3(=[a0+12]:2) != a6(=-0x1).
  At `beq` at 0x37b08 (target 0x37b44), taken when a7(=[(sym(compact_to_nasid_node) + ([a0+12]:2 + [a0+12]:2))]:2) == a6(=-0x1) and falls through when a7(=[(sym(compact_to_nasid_node) + ([a0+12]:2 + [a0+12]:2))]:2) != a6(=-0x1).
  At `beq` at 0x37b24 (target 0x37b34), taken when (t0(=[([(sym(compact_to_nasid_node) + ([a0+12]:2 + [a0+12]:2))]:2 << 0x21)-7926335344142712560]:8) & t1(?)) == 0 and falls through when (t0(=[([(sym(compact_to_nasid_node) + ([a0+12]:2 + [a0+12]:2))]:2 << 0x21)-7926335344142712560]:8) & t1(?)) != 0.
  Returns v0 = 0x1 (`jr` at 0x37b2c).
  Returns v0 = 0x0 (`jr` at 0x37b34).
  Returns v0 = 0x0 (`jr` at 0x37b3c).
  Returns v0 = 0x0 (`jr` at 0x37b44).

- `hub_ioerror_handler` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x37b4c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x37b4c-0x37f50 (1028 bytes).
  Stores 8 bytes from a2 to a3 (arg3 at entry) +0x18 (`sd` at 0x37c68).
  Stores 4 bytes from a1 to a3 (arg3 at entry) +0x0 (`sw` at 0x37c78) with value (([a3] | 0x40000000) | 0x1000000).
  Stores 2 bytes from a0 to a3 (arg3 at entry) +0x6 (`sh` at 0x37c84).
  Stores 8 bytes from a1 to a3 (arg3 at entry) +0x18 (`sd` at 0x37d2c).
  Stores 2 bytes from a0 to a3 (arg3 at entry) +0x6 (`sh` at 0x37d38).
  Stores 4 bytes from a4 to a3 (arg3 at entry) +0x0 (`sw` at 0x37d48) with value (([a3] | 0x40000000) | 0x1000000).
  Stores 2 bytes from a0 to a3 (arg3 at entry) +0x6 (`sh` at 0x37e48).
  Stores 4 bytes from a7 to a3 (arg3 at entry) +0x0 (`sw` at 0x37e5c) with value (([a3] | 0x40000000) | 0x1000000).
  Stores 8 bytes from a5 to a3 (arg3 at entry) +0x18 (`sd` at 0x37e68).
  Calls `hwgraph_info_get_LBL` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+56232, a2=sp-96, a3=a3 at entry (arg3) (`jal` at 0x37b7c).
  Calls `is_widget_pio_enabled` via direct with a0=a3 at entry (arg3), a1=?, a2=0x5, a3=[a3+6]:2, a4=0x1 (`jal` at 0x37c98).
  Calls `hub_xp_error_handler` via direct with a0=a0 at entry (arg0), a1=?, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a3 at entry (arg3) (`jal` at 0x37cb4).
  Calls `is_widget_pio_enabled` via direct with a0=a3 at entry (arg3), a1=0x1, a2=?, a3=? (`jal` at 0x37d58).
  Calls `hub_xp_error_handler` via direct with a0=a0 at entry (arg0), a1=?, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a3 at entry (arg3) (`jal` at 0x37d74).
  Calls `hub_xp_error_handler` via direct with a0=a0 at entry (arg0), a1=?, a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a3 at entry (arg3), a5=0xa (`jal` at 0x37da0).
  Calls `xtalk_pio_target_get` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x37e18).
  Calls `xtalk_pio_xtalk_addr_get` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x37e24).
  Calls `printf` via direct with a0=sym(.rodata)+56232, a1=?, a2=?, a3=?, a6=0x8 (`jal` at 0x37e6c).
  Calls `hub_ioerror_local` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x1 (`jal` at 0x37e84).
  Calls `error_state_get` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x37e94).
  Calls `hub_ioerror_local` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x37ec0).
  Calls `error_state_get` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x37ed0).
  Calls `ioerror_dump` via direct with a0=sym(.rodata)+56232, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x37f24).
  Calls `ioerror_dump` via direct with a0=sym(.rodata)+56232, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x37f40).
  At `beq` at 0x37b88 (target 0x37bc0), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x37b94 (target 0x37bf4), taken when s1(=a1) == a2(=0x5) and falls through when s1(=a1) != a2(=0x5).
  At `beq` at 0x37ba0 (target 0x37c88), taken when s1(=a1) == a3(=0x6) and falls through when s1(=a1) != a3(=0x6).
  At `beq` at 0x37ba8 (target 0x37d84), taken when s1(=a1) == a4(=0x9) and falls through when s1(=a1) != a4(=0x9).
  At `beq` at 0x37bb0 (target 0x37d94), taken when s1(=a1) == a5(=0xa) and falls through when s1(=a1) != a5(=0xa).
  At `beq` at 0x37bc8 (target 0x37e6c), taken when s0(?) == a6(=0x8) and falls through when s0(?) != a6(=0x8).
  At `bne` at 0x37c0c (target 0x37cc4), taken when a1(?) < a7(=0x9000000000000000) (unsigned) and falls through when a1(?) >= a7(=0x9000000000000000) (unsigned).
  At `beq` at 0x37c18 (target 0x37cc4), taken when a1(?) >= a2(=0x9000010000000000) (unsigned) and falls through when a1(?) < a2(=0x9000010000000000) (unsigned).
  At `bne` at 0x37c2c (target 0x37db4), taken when a0(=[a3+48]:8) < a3(=table(0x92000000e0000000)) (unsigned) and falls through when a0(=[a3+48]:8) >= a3(=table(0x92000000e0000000)) (unsigned).
  At `beq` at 0x37c40 (target 0x37db0), taken when a0(=[a3+48]:8) >= a4(=table(0x920000000a000000)) (unsigned) and falls through when a0(=[a3+48]:8) < a4(=table(0x920000000a000000)) (unsigned).
  At `beq` at 0x37c90 (target 0x37e7c), taken when a3(=[a3+6]:2) == a4(=0x1) and falls through when a3(=[a3+6]:2) != a4(=0x1).
  At `beq` at 0x37ca0 (target 0x37e94), taken when v0(=ret(is_widget_pio_enabled)) == 0 and falls through when v0(=ret(is_widget_pio_enabled)) != 0.
  At `bgez` at 0x37ccc (target 0x37d8c), taken when a5(=([a3] << 0x6)) >= 0 (signed) and falls through when a5(=([a3] << 0x6)) < 0 (signed).
  At `beq` at 0x37ce0 (target 0x37eec), taken when (a0(?) & 0x7) == 0 and falls through when (a0(?) & 0x7) != 0.
  At `beq` at 0x37d50 (target 0x37eb8), taken when a0(?) == a1(=0x1) and falls through when a0(?) != a1(=0x1).
  At `beq` at 0x37d60 (target 0x37ed0), taken when v0(=ret(is_widget_pio_enabled)) == 0 and falls through when v0(=ret(is_widget_pio_enabled)) != 0.
  At `bne` at 0x37dbc (target 0x37eb0), taken when a0(=[a3+48]:8) < a2(=table(0x9200000020000000)) (unsigned) and falls through when a0(=[a3+48]:8) >= a2(=table(0x9200000020000000)) (unsigned).
  At `beq` at 0x37dcc (target 0x37f10), taken when a0(=[a3+48]:8) >= a3(=table(0x9200000100000000)) (unsigned) and falls through when a0(=[a3+48]:8) < a3(=table(0x9200000100000000)) (unsigned).
  At `beq` at 0x37e04 (target 0x37f04), taken when a4(?) == a2(?) and falls through when a4(?) != a2(?).
  At `bne` at 0x37e0c (target 0x37dec), taken when a1(?) != 0 and falls through when a1(?) == 0.
  At `beq` at 0x37ea0 (target 0x37f18), taken when v0(=ret(error_state_get)) == a1(=0x3) and falls through when v0(=ret(error_state_get)) != a1(=0x3).
  At `beq` at 0x37edc (target 0x37f34), taken when v0(=ret(error_state_get)) == a2(=0x3) and falls through when v0(=ret(error_state_get)) != a2(=0x3).
  Returns v0 = ? (`jr` at 0x37bec).

- `crbx` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x37f50 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x37f50-0x38bcc (3196 bytes).
  Stores 2 bytes from a6 to sp (at entry) -0x64 (`sh` at 0x382ac) with value 0x3100.
  Stores 1 byte from t1 to sp (at entry) -0x7e (`sb` at 0x382d4) with value 0x0.
  Stores 2 bytes from v0 to sp (at entry) -0x64 (`sh` at 0x38304) with value 0x4b00.
  Stores 1 byte from a6 to sp (at entry) -0x7e (`sb` at 0x38334) with value 0x0.
  Stores 2 bytes from a6 to sp (at entry) -0x64 (`sh` at 0x38358) with value 0x4f00.
  Stores 1 byte from t2 to sp (at entry) -0x7e (`sb` at 0x38388) with value 0x0.
  Stores 2 bytes from a6 to sp (at entry) -0x64 (`sh` at 0x383ac) with value 0x7400.
  Stores 1 byte from t1 to sp (at entry) -0x7e (`sb` at 0x383d0) with value 0x0.
  Stores 2 bytes from a6 to sp (at entry) -0x64 (`sh` at 0x3841c) with value 0x2000.
  Stores 2 bytes from t8 to sp (at entry) -0x74 (`sh` at 0x38610) with value 0x4800.
  Stores 1 byte from a5 to sp (at entry) -0x72 (`sb` at 0x386b0) with value 0x0.
  Stores 2 bytes from a3 to sp (at entry) -0x74 (`sh` at 0x386b8) with value 0x5550.
  Stores 2 bytes from t2 to sp (at entry) -0x74 (`sh` at 0x386dc) with value 0x5400.
  Calls `(unknown callee)` via register with a0=sym(.rodata)+56232, a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x37f94).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+56232, a1=?, a2=?, a3=? (`jalr` at 0x37f9c).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+56232, a1=?, a2=?, a3=? (`jalr` at 0x37fa4).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+56232, a1=?, a2=?, a3=? (`jalr` at 0x37fac).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+56232, a1=?, a2=?, a3=? (`jalr` at 0x37fb4).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+56232, a1=?, a2=?, a3=? (`jalr` at 0x37fbc).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+56232, a1=?, a2=?, a3=? (`jalr` at 0x37fc4).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+56232, a1=?, a2=?, a3=? (`jalr` at 0x37fdc).
  Calls `sprintf` via direct with a0=sp-112, a1=sym(.rodata)+56232, a2=?, a3=table(sym(.rodata)+56232), a4=0x2 (`jal` at 0x38014).
  Calls `sprintf` via direct with a0=sp-104, a1=sym(.rodata)+56232, a2=?, a3=0x3, a4=0x2, a5=0x5 (`jal` at 0x38060).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+56232, a1=?, a2=?, a3=? (`jalr` at 0x380ec).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+56232, a1=?, a2=?, a3=?, a6=sp-128, a7=sp-120 (`jalr` at 0x38144).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+56232, a1=?, a2=?, a3=? (`jalr` at 0x3818c).
  Calls `(unknown callee)` via register with a0=sym(.rodata)+56232, a1=?, a2=?, a3=? (`jalr` at 0x3820c).
  Calls `sprintf` via direct with a0=sp-120, a1=sym(.rodata)+56232, a2=?, a3=0x4, a4=0x2, a5=0x8 (`jal` at 0x383f8).
  Calls `sprintf` via direct with a0=sp-120, a1=sym(.rodata)+56232, a2=?, a3=table(sym(.rodata)+56232), a4=0x2, a6=0x0, a7=sp-128 (`jal` at 0x38588).
  Calls `sprintf` via direct with a0=sp-120, a1=sym(.rodata)+56232, a2=?, a3=sym(.rodata)+56232, a4=0x2, a6=0x4c4e (`jal` at 0x385b8).
  Calls `sprintf` via direct with a0=sp-120, a1=sym(.rodata)+56232, a2=?, a3=?, a4=0x2 (`jal` at 0x385f8).
  At `beq` at 0x38028 (target 0x382f0), taken when (a2(?) & 0x7) == 0 and falls through when (a2(?) & 0x7) != 0.
  At `beq` at 0x38030 (target 0x38344), taken when s7(=0x1) == a2(?) and falls through when s7(=0x1) != a2(?).
  At `beq` at 0x38038 (target 0x38398), taken when a4(=0x2) == a2(?) and falls through when a4(=0x2) != a2(?).
  At `beq` at 0x38044 (target 0x38408), taken when a3(=0x3) == a2(?) and falls through when a3(=0x3) != a2(?).
  At `beq` at 0x38050 (target 0x38298), taken when a5(=0x5) == a2(?) and falls through when a5(=0x5) != a2(?).
  At `beq` at 0x38220 (target 0x38534), taken when s4(?) >= 0xf (signed) and falls through when s4(?) < 0xf (signed).
  At `beq` at 0x3824c (target 0x382b0), taken when (a2(?) & 0x3) == 0 and falls through when (a2(?) & 0x3) != 0.
  At `beq` at 0x38254 (target 0x38308), taken when s7(=0x1) == a2(?) and falls through when s7(=0x1) != a2(?).
  At `beq` at 0x3825c (target 0x3835c), taken when a4(=0x2) == a2(?) and falls through when a4(=0x2) != a2(?).
  At `beq` at 0x38268 (target 0x383b0), taken when ra(=0x3) == a2(?) and falls through when ra(=0x3) != a2(?).
  At `beq` at 0x38284 (target 0x3800c), taken when a2(?) >= 0xb (unsigned) and falls through when a2(?) < 0xb (unsigned).
  At `bne` at 0x382d0 (target 0x38510), taken when a1(?) < 0x20 (unsigned) and falls through when a1(?) >= 0x20 (unsigned).
  At `beq` at 0x382dc (target 0x38564), taken when a1(?) >= 0x21 (unsigned) and falls through when a1(?) < 0x21 (unsigned).
  At `beq` at 0x38330 (target 0x38584), taken when a2(?) >= 0x41 (unsigned) and falls through when a2(?) < 0x41 (unsigned).
  At `beq` at 0x38384 (target 0x385b4), taken when a2(?) >= 0xfc (unsigned) and falls through when a2(?) < 0xfc (unsigned).
  At `beq` at 0x383cc (target 0x38634), taken when (a2(?) & 0xff) == 0 and falls through when (a2(?) & 0xff) != 0.
  At `beq` at 0x383d4 (target 0x386a8), taken when s7(=0x1) == a2(?) and falls through when s7(=0x1) != a2(?).
  At `beq` at 0x383dc (target 0x386c8), taken when a4(=0x2) == a2(?) and falls through when a4(=0x2) != a2(?).
  At `beq` at 0x383e4 (target 0x386d4), taken when a3(=0x4) == a2(?) and falls through when a3(=0x4) != a2(?).
  At `beq` at 0x383ec (target 0x38608), taken when a5(=0x8) == a2(?) and falls through when a5(=0x8) != a2(?).
  At `beq` at 0x38430 (target 0x38020), taken when condition not analyzed and falls through when condition not analyzed.
  At `beq` at 0x38448 (target 0x38020), taken when condition not analyzed and falls through when condition not analyzed.
  At `beq` at 0x38460 (target 0x38020), taken when condition not analyzed and falls through when condition not analyzed.
  At `beq` at 0x38478 (target 0x38020), taken when condition not analyzed and falls through when condition not analyzed.
  At `beq` at 0x38490 (target 0x38020), taken when condition not analyzed and falls through when condition not analyzed.
  At `beq` at 0x384a8 (target 0x38020), taken when condition not analyzed and falls through when condition not analyzed.
  At `beq` at 0x384c0 (target 0x38020), taken when condition not analyzed and falls through when condition not analyzed.
  At `beq` at 0x384d8 (target 0x38020), taken when condition not analyzed and falls through when condition not analyzed.
  At `beq` at 0x384f0 (target 0x38020), taken when condition not analyzed and falls through when condition not analyzed.
  At `beq` at 0x38508 (target 0x38020), taken when condition not analyzed and falls through when condition not analyzed.
  At `bne` at 0x38514 (target 0x38598), taken when a1(?) < 0x6 (unsigned) and falls through when a1(?) >= 0x6 (unsigned).
  At `beq` at 0x38520 (target 0x385c8), taken when a1(?) >= 0x7 (unsigned) and falls through when a1(?) < 0x7 (unsigned).
  At `bne` at 0x38564 (target 0x385dc), taken when t3(?) != 0 and falls through when t3(?) == 0.
  At `beq` at 0x38570 (target 0x38694), taken when a1(?) >= 0x81 (unsigned) and falls through when a1(?) < 0x81 (unsigned).
  At `bne` at 0x38598 (target 0x38620), taken when at(?) != 0 and falls through when at(?) == 0.
  At `beq` at 0x385a0 (target 0x385f0), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `bne` at 0x385c8 (target 0x385f0), taken when a3(=0x8) != a1(?) and falls through when a3(=0x8) == a1(?).
  At `bne` at 0x385dc (target 0x385f0), taken when a7(=0x22) != a1(?) and falls through when a7(=0x22) == a1(?).
  At `bne` at 0x38620 (target 0x385f0), taken when a1(?) != 0 and falls through when a1(?) == 0.
  At `beq` at 0x38644 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38650 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x3865c (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38668 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38674 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38680 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x3868c (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `bne` at 0x38694 (target 0x385f0), taken when at(=0x82) != a1(?) and falls through when at(=0x82) == a1(?).
  At `beq` at 0x386f0 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x386fc (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38708 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38714 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38720 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x3872c (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38738 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38744 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38750 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x3875c (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38768 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38774 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38780 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x3878c (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38798 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x387a4 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x387b0 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x387bc (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x387c8 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x387d4 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x387e0 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x387ec (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x387f8 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38804 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38810 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x3881c (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38828 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38834 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38840 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x3884c (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38858 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38864 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38870 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x3887c (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38888 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38894 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x388a0 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x388ac (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x388b8 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x388c4 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x388d0 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x388dc (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x388e8 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x388f4 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38900 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x3890c (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38918 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38924 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38930 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x3893c (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38948 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38954 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38960 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x3896c (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38978 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38984 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38990 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x3899c (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x389a8 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x389b4 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x389c0 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x389cc (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x389d8 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x389e4 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x389f0 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x389fc (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38a08 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38a14 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38a20 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38a2c (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38a38 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38a44 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38a50 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38a5c (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38a68 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38a74 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38a80 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38a8c (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38a98 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38aa4 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38ab0 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38abc (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38ac8 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38ad4 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38ae0 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38aec (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38af8 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38b04 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38b10 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38b1c (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38b28 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38b34 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38b40 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38b4c (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38b58 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38b64 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38b70 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38b7c (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38b88 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38b94 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38ba0 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38bac (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38bb8 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed.
  At `beq` at 0x38bc4 (target 0x3826c), taken when condition not analyzed -> outside and falls through when condition not analyzed -> end of routine.
  The instructions from 0x38420 to 0x3850c are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x38640 to 0x38690 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x386ec to 0x38bc8 are not reached by any path from the entry, and their branches are not listed.

- `hub_error_devenable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x38bcc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x38bcc-0x38c8c (192 bytes).
  Stores 8 bytes from a0 to table(0x9200000001c00388) +0x0 (`sd` at 0x38c74).
  Calls `xwidget_info_get` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x38bdc).
  Calls `xwidget_info_id_get` via direct with a0=ret(xwidget_info_get), a1=?, a2=?, a3=? (`jal` at 0x38be8).
  Calls `xwidget_info_master_get` via direct with a0=ret(xwidget_info_get), a1=?, a2=?, a3=? (`jal` at 0x38bf4).
  Calls `hwgraph_info_get_LBL` via direct with a0=ret(xwidget_info_master_get), a1=sym(.rodata)+56232, a2=sp-48, a3=? (`jal` at 0x38c0c).
  At `beq` at 0x38c24 (target 0x38c40), taken when s0(=a2) == a3(=0x5) and falls through when s0(=a2) != a3(=0x5).
  At `beq` at 0x38c2c (target 0x38c80), taken when s0(=a2) == a0(=0x6) and falls through when s0(=a2) != a0(=0x6).
  At `beq` at 0x38c6c (target 0x38c78), taken when a6(?) == 0 and falls through when a6(?) != 0.
  Returns v0 = 0x0; f0 = ret(hwgraph_info_get_LBL) (`jr` at 0x38c38).

- `hub_widgetdev_enable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x38c8c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x38c8c-0x38d2c (160 bytes).
  Stores 8 bytes from a6 to table(0x9200000001c00120) +0x0 (`sd` at 0x38d28).
  Calls `xwidget_info_get` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x38c98).
  Calls `xwidget_info_id_get` via direct with a0=ret(xwidget_info_get), a1=?, a2=?, a3=? (`jal` at 0x38ca4).
  Calls `xwidget_info_master_get` via direct with a0=ret(xwidget_info_get), a1=?, a2=?, a3=? (`jal` at 0x38cb0).
  Calls `hwgraph_info_get_LBL` via direct with a0=ret(xwidget_info_master_get), a1=sym(.rodata)+56232, a2=sp-48, a3=? (`jal` at 0x38cc8).
  At `beq` at 0x38ce8 (target 0x38d1c), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0x38d14 (target 0x38d24), taken when (a6(?) & a7(=entry(0x9200000001c00120))) == 0 and falls through when (a6(?) & a7(=entry(0x9200000001c00120))) != 0.
  Returns v0 = ?; f0 = ret(hwgraph_info_get_LBL) (`jr` at 0x38d1c).

- `hub_widgetdev_shutdown` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x38d2c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x38d2c-0x38f3c (528 bytes).
  Stores 8 bytes from a2 to table(0x9200000001c00120) +0x0 (`sd` at 0x38de8).
  Calls `xwidget_info_get` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x38d38).
  Calls `xwidget_info_id_get` via direct with a0=ret(xwidget_info_get), a1=?, a2=?, a3=? (`jal` at 0x38d48).
  Calls `xwidget_info_master_get` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x38d54).
  Calls `hwgraph_info_get_LBL` via direct with a0=ret(xwidget_info_master_get), a1=sym(.rodata)+56232, a2=sp-96, a3=? (`jal` at 0x38d68).
  Calls `hubiio_crb_free` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x38e68).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+56232, a2=?, a3=? (`jal` at 0x38ecc).
  Calls `cmn_err` via direct with a0=0x6, a1=sym(.rodata)+56232, a2=sym(.rodata)+56232, a3=? (`jal` at 0x38f20).
  At `beq` at 0x38dac (target 0x38e90), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0x38dc0 (target 0x38e90), taken when s8(?) == a0(=-0x1) and falls through when s8(?) != a0(=-0x1).
  At `beq` at 0x38dec (target 0x38e44), taken when a0(=one of 0x0, 0x1) == 0 and falls through when a0(=one of 0x0, 0x1) != 0.
  At `beq` at 0x38e00 (target 0x38e84), taken when s1(?) >= 0xf (signed) and falls through when s1(?) < 0xf (signed).
  At `beq` at 0x38e10 (target 0x38e34), taken when v1(=[sym(free_error_crbs)]) == 0 and falls through when v1(=[sym(free_error_crbs)]) != 0.
  At `bltz` at 0x38e1c (target 0x38e2c), taken when v1(=(entry(0x9200000001c00400) << 0x8)) < 0 (signed) and falls through when v1(=(entry(0x9200000001c00400) << 0x8)) >= 0 (signed).
  At `bgez` at 0x38e24 (target 0x38dec), taken when a0(=(entry(0x9200000001c00400) << 0xd)) >= 0 (signed) and falls through when a0(=(entry(0x9200000001c00400) << 0xd)) < 0 (signed).
  At `beq` at 0x38e3c (target 0x38df4), taken when a0(=(entry(0x9200000001c00400) << 0xd)) >= 0x0 (signed) and falls through when a0(=(entry(0x9200000001c00400) << 0xd)) < 0x0 (signed).
  At `beq` at 0x38e44 (target 0x38e54), taken when s5(?) == 0 and falls through when s5(?) != 0.
  At `bne` at 0x38e60 (target 0x38df4), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `beq` at 0x38e74 (target 0x38df4), taken when v1(=[sym(free_error_crbs_print)]) == 0 and falls through when v1(=[sym(free_error_crbs_print)]) != 0.
  At `bne` at 0x38e88 (target 0x38ec0), taken when a0(=[sym(free_error_crbs_print)]) != 0 and falls through when a0(=[sym(free_error_crbs_print)]) == 0.
  At `beq` at 0x38edc (target 0x38ef4), taken when s5(?) == 0 and falls through when s5(?) != 0.
  At `bne` at 0x38ee4 (target 0x38f08), taken when v0(?) != 0 and falls through when v0(?) == 0.
  At `beq` at 0x38f00 (target 0x38eec), taken when a3(?) >= 0x1 (unsigned) and falls through when a3(?) < 0x1 (unsigned).
  Returns v0 = ? (`jr` at 0x38eb8).

- `hub_widget_reset` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x39000 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x39000-0x39148 (328 bytes).
  Stores 8 bytes from zero to ? (base unknown) (`sd` at 0x390bc) with value 0x0.
  Stores 8 bytes from a5 to (entry(sym(compact_to_nasid_node)) << 0x21) -0x6dfffffffe3ffc78 (`sd` at 0x390c0).
  Calls `master_node_get` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3900c).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3904c).
  Calls `hub_setup_prb` via direct with a0=entry(sym(compact_to_nasid_node)), a1=a1 at entry (arg1), a2=0x3, a3=0x2 (`jal` at 0x390e8).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x390f0).
  Calls `assfail` via direct with a0=sym(.rodata)+56232, a1=sym(.rodata)+56232, a2=0x40d, a3=? (`jal` at 0x3912c).
  At `beq` at 0x39038 (target 0x390f8), taken when a0(?) == at(=-0x1) and falls through when a0(?) != at(=-0x1).
  At `beq` at 0x39084 (target 0x390dc), taken when s0(?) >= 0x8 (signed) and falls through when s0(?) < 0x8 (signed).
  At `beq` at 0x3909c (target 0x39078), taken when a7(?) == 0 and falls through when a7(?) != 0.
  At `bne` at 0x390b4 (target 0x39078), taken when s4(=a1) != a7(?) and falls through when s4(=a1) == a7(?).
  At `beql` at 0x390cc (target 0x3907c), taken when (t0(=[(entry(sym(compact_to_nasid_node)) << 0x21)-7926335344142711928]:8) & 0x10) == 0 and falls through when (t0(=[(entry(sym(compact_to_nasid_node)) << 0x21)-7926335344142711928]:8) & 0x10) != 0.
  Returns v0 = ? (`jr` at 0x3911c).

- `r1nk_perf_intr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3a578 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3a578-0x3a738 (448 bytes).
  Stores 4 bytes from v0 to ? (base unknown) (`sw` at 0x3a5d8) with value ret(r1nkperf_data_register_get).
  Stores 8 bytes from at to ? (base unknown) (`scd` at 0x3a65c).
  Stores 4 bytes from a1 to ? (base unknown) (`sw` at 0x3a6cc).
  Calls `r1nkperf_data_register_get` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3a5b0).
  Calls `r1nk_perf_stop_counters` via direct with a0=[-0x38d0]:8, a1=?, a2=?, a3=? (`jal` at 0x3a5e0).
  Calls `r1nkperf_data_register_set` via direct with a0=0x2, a1=?, a2=?, a3=? (`jal` at 0x3a600).
  Calls `r1nk_perf_intr_action` via direct with a0=a0 at entry (arg0), a1=[-0x38d0]:8, a2=one of 0x0, 0x1, a3=? (`jal` at 0x3a6f8).
  Calls `r1nk_perf_start_counters` via direct with a0=[-0x38d0]:8, a1=?, a2=?, a3=? (`jal` at 0x3a704).
  Calls `assfail` via direct with a0=sym(.rodata)+62392, a1=sym(.rodata)+62392, a2=0x65, a3=a3 at entry (arg3) (`jal` at 0x3a728).
  At `beq` at 0x3a588 (target 0x3a70c), taken when s1(=[-0x38d0]:8) == 0 and falls through when s1(=[-0x38d0]:8) != 0.
  At `beq` at 0x3a598 (target 0x3a720), taken when a1(=[[-0x38d0]:8+48]:2) >= 0x4 (signed) and falls through when a1(=[[-0x38d0]:8+48]:2) < 0x4 (signed).
  At `blez` at 0x3a5a4 (target 0x3a5dc), taken when a1(=[[-0x38d0]:8+48]:2) <= 0 (signed) and falls through when a1(=[[-0x38d0]:8+48]:2) > 0 (signed).
  At `bne` at 0x3a5d4 (target 0x3a5b0), taken when s0(?) < a0(=[[-0x38d0]:8+48]:2) (signed) and falls through when s0(?) >= a0(=[[-0x38d0]:8+48]:2) (signed).
  At `blez` at 0x3a5ec (target 0x3a6f0), taken when a2(=[[-0x38d0]:8+48]:2) <= 0 (signed) and falls through when a2(=[[-0x38d0]:8+48]:2) > 0 (signed).
  At `bne` at 0x3a61c (target 0x3a5f4), taken when s0(?) < a1(=[[-0x38d0]:8+48]:2) (signed) and falls through when s0(?) >= a1(=[[-0x38d0]:8+48]:2) (signed).
  At `blez` at 0x3a624 (target 0x3a6f0), taken when a1(=[[-0x38d0]:8+48]:2) <= 0 (signed) and falls through when a1(=[[-0x38d0]:8+48]:2) > 0 (signed).
  At `beql` at 0x3a660 (target 0x3a650), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0x3a674 (target 0x3a6f8), taken when s0(?) >= a1(=[[-0x38d0]:8+48]:2) (signed) and falls through when s0(?) < a1(=[[-0x38d0]:8+48]:2) (signed).
  At `beq` at 0x3a688 (target 0x3a6d0), taken when a4(?) == t0(=-0x1) and falls through when a4(?) != t0(=-0x1).
  At `beq` at 0x3a6b0 (target 0x3a63c), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `bne` at 0x3a6bc (target 0x3a63c), taken when a5(?) < a7(=0xffffffff80000000) (unsigned) and falls through when a5(?) >= a7(=0xffffffff80000000) (unsigned).
  At `bne` at 0x3a6e0 (target 0x3a680), taken when s0(?) < a1(=[[-0x38d0]:8+48]:2) (signed) and falls through when s0(?) >= a1(=[[-0x38d0]:8+48]:2) (signed).
  Returns v0 = ? (`jr` at 0x3a718).

- `r1nk_perf_intr_action` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3a738 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3a738-0x3a838 (256 bytes).
  Stores 4 bytes from t0 to [[-0x3fe8]:8+1008]:8 +0x0 (`sw` at 0x3a7e8) with value 0x1.
  Stores 4 bytes from a1 to [-0x3fe8]:8 +0x340 (`sw` at 0x3a80c) with value ([[-0x3fe8]:8+832] | 0x400000).
  Stores 4 bytes from a5 to [[-0x3fe8]:8+1008]:8 +0x0 (`sw` at 0x3a834) with value 0x1.
  Calls `prfintr` via direct with a0=[a0+288]:8, a1=[a0+224]:8, a2=[a0+240]:8, a3=[a0+248]:8, a5=a0 at entry (arg0), a6=0x3 (`jal` at 0x3a76c).
  Calls `sigtouthread` via direct with a0=[-0x3fe8]:8, a1=[a1+12]:2, a2=0x0, a3=a3 at entry (arg3), a4=[a1+12]:2, a5=a0 at entry (arg0), a6=0x3 (`jal` at 0x3a7b8).
  Calls `mutex_bitlock` via direct with a0=[-0x3fe8]:8+132, a1=0x4, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[[-0x3fe0]:8+112]:1, a6=0x3 (`jal` at 0x3a7f4).
  Calls `mutex_bitunlock` via direct with a0=[-0x3fe8]:8+132, a1=0x4, a2=ret(mutex_bitlock), a3=[-0x3fe8]:8, a4=0x400000 (`jal` at 0x3a81c).
  At `beq` at 0x3a750 (target 0x3a79c), taken when (a4(=[a1]:2) & 0x80) == 0 and falls through when (a4(=[a1]:2) & 0x80) != 0.
  At `beq` at 0x3a758 (target 0x3a77c), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0x3a780 (target 0x3a794), taken when a0(=[-0x3fe0]:8) == 0 and falls through when a0(=[-0x3fe0]:8) != 0.
  At `beq` at 0x3a78c (target 0x3a7ec), taken when a5(=[[-0x3fe0]:8+112]:1) == a6(=0x3) and falls through when a5(=[[-0x3fe0]:8+112]:1) != a6(=0x3).
  At `beq` at 0x3a79c (target 0x3a794), taken when a2 == 0 and falls through when a2 != 0.
  At `beq` at 0x3a7a8 (target 0x3a790), taken when a4(=[a1+12]:2) == 0 -> outside and falls through when a4(=[a1+12]:2) != 0.
  At `bne` at 0x3a7d0 (target 0x3a794), taken when a7(?) != t0(=0x10) and falls through when a7(?) == t0(=0x10).
  Returns v0 = ? (`jr` at 0x3a794).

- `l2_sbe_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3af94 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3af94-0x3b208 (628 bytes).
  Stores 8 bytes from zero to ? (base unknown) (`sd` at 0x3b008) with value 0x0.
  Stores 8 bytes from s2 to ? (base unknown) (`sd` at 0x3b034) with value -0x1.
  Stores 8 bytes from a5 to ? (base unknown) (`sd` at 0x3b09c) with value 0x3.
  Stores 8 bytes from zero to ? (base unknown) (`sd` at 0x3b0a8) with value 0x0.
  Stores 8 bytes from t2 to ? (base unknown) (`sd` at 0x3b140) with value 0x3.
  Stores 8 bytes from t8 to ? (base unknown) (`sd` at 0x3b168) with value 0x3.
  Calls `cpu_enabled` via direct with a0=?, a1=?, a2=?, a3=[sym(l2_sbe_check)] (`jal` at 0x3b030).
  Calls `get_cpu_irr` via direct with a0=?, a1=?, a2=0xe, a3=0xf, a5=0x9 (`jal` at 0x3b110).
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata)+62392, a2=?, a3=[sym(l2_sbe_check)] (`jal` at 0x3b18c).
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata)+62392, a2=?, a3=? (`jal` at 0x3b1b8).
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata)+62392, a2=?, a3=? (`jal` at 0x3b1cc).
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata)+62392, a2=?, a3=? (`jal` at 0x3b1e4).
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata)+62392, a2=?, a3=? (`jal` at 0x3b1f8).
  At `beq` at 0x3afd0 (target 0x3b0cc), taken when (a3(=[sym(l2_sbe_check)]) & 0xff) == 0 and falls through when (a3(=[sym(l2_sbe_check)]) & 0xff) != 0.
  At `blez` at 0x3afd8 (target 0x3b0fc), taken when a1(=[sym(maxcpus)]) <= 0 (signed) and falls through when a1(=[sym(maxcpus)]) > 0 (signed).
  At `beq` at 0x3affc (target 0x3b010), taken when s2(=-0x1) == a1(?) and falls through when s2(=-0x1) != a1(?).
  At `beq` at 0x3b018 (target 0x3b0c0), taken when s0(?) >= v1(=[sym(maxcpus)]) (signed) and falls through when s0(?) < v1(=[sym(maxcpus)]) (signed).
  At `beq` at 0x3b03c (target 0x3b00c), taken when v0(=ret(cpu_enabled)) == 0 and falls through when v0(=ret(cpu_enabled)) != 0.
  At `beq` at 0x3b050 (target 0x3b00c), taken when a1(?) == s2(=-0x1) and falls through when a1(?) != s2(=-0x1).
  At `beq` at 0x3b068 (target 0x3b0a0), taken when a5(=0x9) == a1(?) and falls through when a5(=0x9) != a1(?).
  At `beq` at 0x3b074 (target 0x3b110), taken when a2(=0xe) == a1(?) and falls through when a2(=0xe) != a1(?).
  At `bne` at 0x3b07c (target 0x3aff8), taken when a3(=0xf) != a1(?) and falls through when a3(=0xf) == a1(?).
  At `beq` at 0x3b08c (target 0x3b14c), taken when (a4(=[sym(l2_sbe_check)]) & 0x8) == 0 and falls through when (a4(=[sym(l2_sbe_check)]) & 0x8) != 0.
  At `beq` at 0x3b0a0 (target 0x3b144), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `bne` at 0x3b0b0 (target 0x3b008), taken when s2(=-0x1) != a1(?) and falls through when s2(=-0x1) == a1(?).
  At `bne` at 0x3b0c4 (target 0x3b188), taken when (a3(=[sym(l2_sbe_check)]) & 0x100) != 0 and falls through when (a3(=[sym(l2_sbe_check)]) & 0x100) == 0.
  At `beq` at 0x3b124 (target 0x3b154), taken when a7(=0xe30) == t0(?) and falls through when a7(=0xe30) != t0(?).
  At `beq` at 0x3b130 (target 0x3b178), taken when (a3(=[sym(l2_sbe_check)]) & 0x2) == 0 and falls through when (a3(=[sym(l2_sbe_check)]) & 0x2) != 0.
  At `beq` at 0x3b160 (target 0x3b180), taken when (a3(=[sym(l2_sbe_check)]) & 0x4) == 0 and falls through when (a3(=[sym(l2_sbe_check)]) & 0x4) != 0.
  At `bne` at 0x3b194 (target 0x3b1c8), taken when s5(?) != 0 and falls through when s5(?) == 0.
  At `bne` at 0x3b19c (target 0x3b1dc), taken when s8(?) != 0 and falls through when s8(?) == 0.
  At `bne` at 0x3b1a4 (target 0x3b1f4), taken when ra(?) != 0 and falls through when ra(?) == 0.
  At `beq` at 0x3b1ac (target 0x3b0cc), taken when s6(?) == 0 and falls through when s6(?) != 0.
  Returns v0 = ? (`jr` at 0x3b0f4).

- `l2_sbe_intr` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3b208 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3b208-0x3b398 (400 bytes).
  Stores 8 bytes from zero to ? (base unknown) (`sd` at 0x3b320) with value 0x0.
  Calls `r1nkperf_data_register_get` via direct with a0=[(([-0x3bd8]:2 << 0x3) + sym(l2_sbe_counter))+4], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3b234).
  Calls `r1nkperf_control_register_set` via direct with a0=[(([-0x3bd8]:2 << 0x3) + sym(l2_sbe_counter))+4], a1=0x100, a2=?, a3=? (`jal` at 0x3b250).
  Calls `r1nkperf_data_register_set` via direct with a0=[(([-0x3bd8]:2 << 0x3) + sym(l2_sbe_counter))+4], a1=0x0, a2=?, a3=? (`jal` at 0x3b25c).
  Calls `get_cpu_irr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3b264).
  Calls `get_cpu_irr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3b27c).
  Calls `l2_cache_check` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3b294).
  Calls `scache_data_bit_error` via direct with a0=ret(l2_cache_check), a1=?, a2=sym(.rodata)+62392, a3=? (`jal` at 0x3b2b4).
  Calls `cmn_err_tag` via direct with a0=0x167, a1=0x14, a2=sym(.rodata)+62392, a3=ret(l2_cache_check) (`jal` at 0x3b2d8).
  Calls `scache_data_bit_location` via direct with a0=ret(scache_data_bit_error), a1=[-0x3bd8]:2, a2=sp-96, a3=? (`jal` at 0x3b2f0).
  Calls `cmn_err_tag` via direct with a0=0x167, a1=0x14, a2=sym(.rodata)+62392, a3=?, a4=sp-96 (`jal` at 0x3b30c).
  Calls `r1nkperf_control_register_get` via direct with a0=0x0, a1=?, a2=?, a3=? (`jal` at 0x3b334).
  Calls `scache_data_bit_error` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3b340).
  Calls `scache_data_bit_location` via direct with a0=ret(scache_data_bit_error), a1=[-0x3bd8]:2, a2=sp-96, a3=? (`jal` at 0x3b354).
  Calls `cmn_err_tag` via direct with a0=0x167, a1=0x14, a2=sym(.rodata)+62392, a3=ret(scache_data_bit_error), a4=sp-96 (`jal` at 0x3b370).
  Calls `cmn_err_tag` via direct with a0=0x167, a1=0x14, a2=sym(.rodata)+62392, a3=? (`jal` at 0x3b388).
  At `beq` at 0x3b22c (target 0x3b324), taken when s0(=[(([-0x3bd8]:2 << 0x3) + sym(l2_sbe_counter))+4]) == at(=-0x1) and falls through when s0(=[(([-0x3bd8]:2 << 0x3) + sym(l2_sbe_counter))+4]) != at(=-0x1).
  At `beq` at 0x3b248 (target 0x3b324), taken when (v0(=ret(r1nkperf_data_register_get)) & t8(=0x80000000)) == 0 and falls through when (v0(=ret(r1nkperf_data_register_get)) & t8(=0x80000000)) != 0.
  At `beq` at 0x3b274 (target 0x3b334), taken when t9(?) == ra(=0xe30) and falls through when t9(?) != ra(=0xe30).
  At `beq` at 0x3b28c (target 0x3b334), taken when at(?) == v0(=0xf) and falls through when at(?) != v0(=0xf).
  At `beq` at 0x3b2a4 (target 0x3b314), taken when v0(=ret(l2_cache_check)) == v1(=-0x1) and falls through when v0(=ret(l2_cache_check)) != v1(=-0x1).
  At `beq` at 0x3b2ac (target 0x3b380), taken when v0(=ret(l2_cache_check)) == a0(=-0x2) and falls through when v0(=ret(l2_cache_check)) != a0(=-0x2).
  At `bne` at 0x3b2c0 (target 0x3b2e8), taken when v0(=ret(scache_data_bit_error)) != a0(=-0x1) and falls through when v0(=ret(scache_data_bit_error)) == a0(=-0x1).
  Returns v0 = ? (`jr` at 0x3b32c).

- `l2_sbe_sched` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3b398 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3b398-0x3b498 (256 bytes).
  Stores 4 bytes from v0 to sym(l2_sbe_ready) +0x0 (`sw` at 0x3b3c8) with value [sym(l2_sbe_ready)]+1.
  Stores 4 bytes from zero to sym(_prom_cleared) +0x1ac (`sw` at 0x3b3d0) with value 0x0.
  Stores 8 bytes from a0 to ? (base unknown) (`sd` at 0x3b424).
  Calls `l2_sbe_start_perfcnt` via direct with a0=?, a1=?, a2=[-0x3bd8]:2, a3=?, a6=[sym(maxcpus)], a7=[sym(l2_sbe_reset_sec)] (`jal` at 0x3b434).
  Calls `cpuaction` via direct with a0=?, a1=sym(l2_sbe_start_perfcnt), a2=0x1, a3=?, a6=[sym(maxcpus)], a7=[sym(l2_sbe_reset_sec)] (`jal` at 0x3b44c).
  Calls `cmn_err` via direct with a0=0x5, a1=sym(.rodata)+62392, a2=[sym(l2_sbe_reset_sec)], a3=?, a4=[sym(l2_sbe_check)] (`jal` at 0x3b488).
  At `beq` at 0x3b3b8 (target 0x3b3d4), taken when at(=[sym(.sdata)+428]) == 0 and falls through when at(=[sym(.sdata)+428]) != 0.
  At `bne` at 0x3b3c4 (target 0x3b3d4), taken when a2(=[sym(l2_sbe_reset_sec)]) != a1(=[sym(l2_sbe_ready)]) and falls through when a2(=[sym(l2_sbe_reset_sec)]) == a1(=[sym(l2_sbe_ready)]).
  At `bne` at 0x3b3cc (target 0x3b480), taken when a3(?) != 0 and falls through when a3(?) == 0.
  At `blez` at 0x3b3e0 (target 0x3b468), taken when a6(=[sym(maxcpus)]) <= 0 (signed) and falls through when a6(=[sym(maxcpus)]) > 0 (signed).
  At `beq` at 0x3b3fc (target 0x3b468), taken when a2(?) >= a6(=[sym(maxcpus)]) (signed) and falls through when a2(?) < a6(=[sym(maxcpus)]) (signed).
  At `beq` at 0x3b410 (target 0x3b3f8), taken when s1(=-0x1) == a3(?) and falls through when s1(=-0x1) != a3(?).
  At `bne` at 0x3b420 (target 0x3b3f8), taken when a7(=[sym(l2_sbe_reset_sec)]) != a1(?) and falls through when a7(=[sym(l2_sbe_reset_sec)]) == a1(?).
  At `bne` at 0x3b42c (target 0x3b444), taken when a2(=[-0x3bd8]:2) != s0(?) and falls through when a2(=[-0x3bd8]:2) == s0(?).
  At `bne` at 0x3b460 (target 0x3b3f0), taken when s0(?) < a6(=[sym(maxcpus)]) (signed) and falls through when s0(?) >= a6(=[sym(maxcpus)]) (signed).
  Returns v0 = ? (`jr` at 0x3b478).

- `l2_sbe_start_perfcnt` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3b498 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3b498-0x3b4f8 (96 bytes).
  Calls `r1nkperf_control_register_set` via direct with a0=a0 at entry (arg0), a1=0x11a, a2=?, a3=? (`jal` at 0x3b4b4).
  Calls `r1nkperf_data_register_set` via direct with a0=a0 at entry (arg0), a1=0x7fffffff, a2=?, a3=? (`jal` at 0x3b4c4).
  Calls `assfail` via direct with a0=sym(.rodata)+62392, a1=sym(.rodata)+62392, a2=0x36f, a3=a3 at entry (arg3) (`jal` at 0x3b4e8).
  At `beq` at 0x3b4a8 (target 0x3b4dc), taken when a0 == at(=-0x1) and falls through when a0 != at(=-0x1).
  Returns v0 = ret(r1nkperf_data_register_set); f0 = ret(r1nkperf_data_register_set) (`jr` at 0x3b4d4).

- `eccf_recoverable_threshold` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3badc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3badc-0x3bb98 (188 bytes).
  Stores 2 bytes from a7 to (a1 + one of 0x2c8, 0x2ca, 0x2cc, 0x2ce) +0x0 (`sh` at 0x3bb60).
  Stores 8 bytes from a6 to a1 (arg1 at entry) +0x2c0 (`sd` at 0x3bb70) with value [0x9200000001030100]:8.
  Stores 2 bytes from zero to (a1 + one of 0x2c8, 0x2ca, 0x2cc, 0x2ce) +0x0 (`sh` at 0x3bb7c) with value 0x0.
  At `beq` at 0x3bb08 (target 0x3bb88), taken when (t1(=0xffffffffc0000000) & a2) == 0 and falls through when (t1(=0xffffffffc0000000) & a2) != 0.
  At `beq` at 0x3bb14 (target 0x3bb34), taken when a5(?) == t2(=0x40000000) and falls through when a5(?) != t2(=0x40000000).
  At `beq` at 0x3bb1c (target 0x3bb80), taken when a5(?) == t0(=0xffffffff80000000) and falls through when a5(?) != t0(=0xffffffff80000000).
  At `bne` at 0x3bb24 (target 0x3bb68), taken when t1(=0xffffffffc0000000) != a5(?) and falls through when t1(=0xffffffffc0000000) == a5(?).
  At `beq` at 0x3bb3c (target 0x3bb70), taken when a3(=[a1+704]:8) == 0 and falls through when a3(=[a1+704]:8) != 0.
  At `beq` at 0x3bb48 (target 0x3bb70), taken when a3(?) >= v0(=0x3938700) (unsigned) and falls through when a3(?) < v0(=0x3938700) (unsigned).
  Returns v0 = one of 0x0, 0x1 (`jr` at 0x3bb68).
  Returns v0 = 0x1 (`jr` at 0x3bb78).

- `scache_print_line` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3ca68 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3ca68-0x3cca8 (576 bytes).
  Calls `cache_tag_ecc` via direct with a0=[a0+4], a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3ca90).
  Calls `printf` via direct with a0=sym(.rodata)+63024, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[a0]:8 (`jal` at 0x3cac0).
  Calls `printf` via direct with a0=sym(.rodata)+63024, a1=?, a2=?, a3=sym(.rodata)+63024 (`jal` at 0x3cae8).
  Calls `printf` via direct with a0=sym(.rodata)+63024, a1=?, a2=?, a3=?, a5=entry(sym(.data)+53376), a7=0xa800000000000000 (`jal` at 0x3cb58).
  Calls `printf` via direct with a0=sym(.rodata)+63024, a1=?, a2=?, a3=? (`jal` at 0x3cb64).
  Calls `printf` via direct with a0=sym(.rodata)+63024, a1=?, a2=?, a3=?, a6=ret(ecc_scache_bits_in_error) (`jal` at 0x3cbb4).
  Calls `ecc_compute_scdata_ecc` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3cbdc).
  Calls `ecc_bitcount` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3cbf0).
  Calls `ecc_scache_bits_in_error` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3cc14).
  Calls `printf` via direct with a0=sym(.rodata)+63024, a1=?, a2=?, a3=? (`jal` at 0x3cc70).
  At `beq` at 0x3cad4 (target 0x3cae4), taken when a2(?) == a1(?) and falls through when a2(?) != a1(?).
  At `bne` at 0x3cb88 (target 0x3cc5c), taken when a1(?) != a7(?) and falls through when a1(?) == a7(?).
  At `beq` at 0x3cbc8 (target 0x3cc70), taken when s4(?) >= 0x10 (unsigned) and falls through when s4(?) < 0x10 (unsigned).
  At `bne` at 0x3cc3c (target 0x3cc4c), taken when s1(?) != a4(?) and falls through when s1(?) == a4(?).
  At `beq` at 0x3cc44 (target 0x3cc64), taken when a1(?) == a7(?) and falls through when a1(?) != a7(?).
  At `bne` at 0x3cc4c (target 0x3cb88), taken when s1(?) != a4(?) and falls through when s1(?) == a4(?).
  At `beq` at 0x3cc54 (target 0x3cb90), taken when a1(?) == a7(?) and falls through when a1(?) != a7(?).
  Returns v0 = ret(printf); f0 = ret(printf) (`jr` at 0x3cca0).

- `l2_data_sbe` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3cca8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3cca8-0x3cd34 (140 bytes).
  Calls `ecc_compute_scdata_ecc` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3ccf4).
  At `beq` at 0x3ccd0 (target 0x3cd14), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0x3cd0c (target 0x3ccd0), taken when a0(?) == 0 and falls through when a0(?) != 0.
  Returns v0 = ?; f0 = ret(ecc_compute_scdata_ecc) (`jr` at 0x3cd2c).

- `l2_cache_check` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3cd34 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3cd34-0x3ce0c (216 bytes).
  Calls `bzero` via direct with a0=sp-2000, a1=0x6f4, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3cd4c).
  Calls `sCacheSize` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3cd54).
  Calls `sLine` via direct with a0=table(0xa800000000000000), a1=sp-216, a2=?, a3=? (`jal` at 0x3cd9c).
  Calls `l2_data_sbe` via direct with a0=sp-216, a1=?, a2=?, a3=? (`jal` at 0x3cda4).
  Calls `sCacheSize` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3cdbc).
  At `beq` at 0x3cd74 (target 0x3ce04), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0x3cd90 (target 0x3cdb8), taken when s0(?) >= 0x2 (signed) and falls through when s0(?) < 0x2 (signed).
  At `beq` at 0x3cdb0 (target 0x3cd8c), taken when v0(=ret(l2_data_sbe)) == s5(=-0x1) and falls through when v0(=ret(l2_data_sbe)) != s5(=-0x1).
  At `beq` at 0x3cdcc (target 0x3cddc), taken when s2(?) >= a1(?) (unsigned) and falls through when s2(?) < a1(?) (unsigned).
  Returns v0 = ?; f0 = ret(sCacheSize) (`jr` at 0x3cdfc).

- `scache_data_bit_location` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3ce0c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3ce0c-0x3d14c (832 bytes).
  Calls `sprintf` via direct with a0=a2 at entry (arg2), a1=sym(.rodata)+63024, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3ce70).
  Calls `get_cpu_slice` via direct with a0=a1 at entry (arg1), a1=?, a2=?, a3=?, a6=one of 0xf, 0x4000 (`jal` at 0x3cef8).
  Calls `sprintf` via direct with a0=a2 at entry (arg2), a1=sym(.rodata)+63024, a2=?, a3=? (`jal` at 0x3cf30).
  Calls `get_cpu_slice` via direct with a0=a1 at entry (arg1), a1=?, a2=?, a3=0xf, a5=0xe30, a6=0x4000 (`jal` at 0x3d034).
  At `beq` at 0x3ce94 (target 0x3cf4c), taken when v1(?) == a0(=0x2000) and falls through when v1(?) != a0(=0x2000).
  At `beq` at 0x3cea8 (target 0x3cfb0), taken when a4(?) == a5(=0x8000) and falls through when a4(?) != a5(=0x8000).
  At `beq` at 0x3cebc (target 0x3d014), taken when a5(?) == a6(=0x4000) and falls through when a5(?) != a6(=0x4000).
  At `beq` at 0x3ced4 (target 0x3d030), taken when a4(?) == a5(=0xe30) and falls through when a4(?) != a5(=0xe30).
  At `bne` at 0x3cedc (target 0x3cf38), taken when a3(=0xf) != a2(?) and falls through when a3(=0xf) == a2(?).
  At `beq` at 0x3cf04 (target 0x3cf10), taken when (v0(=ret(get_cpu_slice)) & 0x1) == 0 and falls through when (v0(=ret(get_cpu_slice)) & 0x1) != 0.
  At `beq` at 0x3cf10 (target 0x3cf38), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0x3cf70 (target 0x3d078), taken when (a3(=[0x9200000001000020]:8) & 0x3) == 0 and falls through when (a3(=[0x9200000001000020]:8) & 0x3) != 0.
  At `beq` at 0x3cf78 (target 0x3d098), taken when a3(?) == a4(=0x1) and falls through when a3(?) != a4(=0x1).
  At `beq` at 0x3cf80 (target 0x3d0d8), taken when a3(?) == a5(=0x2) and falls through when a3(?) != a5(=0x2).
  At `bne` at 0x3cf88 (target 0x3cf3c), taken when a3(?) != a6(=0x3) and falls through when a3(?) == a6(=0x3).
  At `beq` at 0x3cfd4 (target 0x3d0b8), taken when (a3(=[0x9200000001000020]:8) & 0x3) == 0 and falls through when (a3(=[0x9200000001000020]:8) & 0x3) != 0.
  At `beq` at 0x3cfdc (target 0x3d0f4), taken when a3(?) == a4(=0x1) and falls through when a3(?) != a4(=0x1).
  At `beq` at 0x3cfe4 (target 0x3d114), taken when a3(?) == a5(=0x2) and falls through when a3(?) != a5(=0x2).
  At `bne` at 0x3cfec (target 0x3cf3c), taken when a3(?) != a6(=0x3) and falls through when a3(?) == a6(=0x3).
  At `beq` at 0x3d050 (target 0x3d130), taken when (v0(=ret(get_cpu_slice)) & 0x1) == 0 and falls through when (v0(=ret(get_cpu_slice)) & 0x1) != 0.
  At `bne` at 0x3d068 (target 0x3cf10), taken when a6(=0xf) != a4(?) and falls through when a6(=0xf) == a4(?).
  Returns v0 = ? (`jr` at 0x3cf44).

- `bte_init` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3d1d8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3d1d8-0x3d330 (344 bytes).
  Stores 8 bytes from zero to a0 (arg0 at entry) +0x20 (`sd` at 0x3d228) with value 0x0.
  Stores 8 bytes from s0 to a0 (arg0 at entry) +0x28 (`sd` at 0x3d22c) with value a0.
  Stores 2 bytes from a5 to a0 (arg0 at entry) +0x38 (`sh` at 0x3d23c) with value [-0x3bd6]:2.
  Stores 8 bytes from a3 to a0 (arg0 at entry) +0x18 (`sd` at 0x3d24c).
  Stores 8 bytes from a2 to a0 (arg0 at entry) +0x0 (`sd` at 0x3d278) with value ([(sym(compact_to_nasid_node) + ([-0x3bd6]:2 + [-0x3bd6]:2))]:2 << 0x21)+0x9200000001c10000.
  Stores 8 bytes from t0 to a0 (arg0 at entry) +0x0 (`sd` at 0x3d280) with value ([(sym(compact_to_nasid_node) + ([-0x3bd6]:2 + [-0x3bd6]:2))]:2 << 0x21)+0x9200000001c20000.
  Stores 8 bytes from a7 to abs 0x92000000014001f8 (`sd` at 0x3d284) with value 0x40000.
  Stores 4 bytes from a6 to a0 (arg0 at entry) +0x4c (`sw` at 0x3d288) with value 0x1.
  Stores 4 bytes from t3 to a0 (arg0 at entry) +0x68 (`sw` at 0x3d2c8).
  Stores 4 bytes from t3 to a0 (arg0 at entry) +0x68 (`sw` at 0x3d30c).
  Stores 8 bytes from at to abs 0x92000000014001f8 (`sd` at 0x3d324) with value 0x20000.
  Stores 4 bytes from zero to a0 (arg0 at entry) +0x4c (`sw` at 0x3d32c) with value 0x0.
  Calls `spinlock_init` via direct with a0=a0+60, a1=sym(.rodata)+64800, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[sym(scache_linemask)] (`jal` at 0x3d214).
  At `beq` at 0x3d200 (target 0x3d210), taken when (a5(=[sym(scache_linemask)]) & a1) == 0 and falls through when (a5(=[sym(scache_linemask)]) & a1) != 0.
  At `beq` at 0x3d274 (target 0x3d320), taken when s8(=a2) == 0 and falls through when s8(=a2) != 0.
  At `beq` at 0x3d2d8 (target 0x3d310), taken when t2(=[sym(maxcpus)]) >= 0x21 (signed) and falls through when t2(=[sym(maxcpus)]) < 0x21 (signed).
  Returns v0 = a0; f0 = ret(spinlock_init) (`jr` at 0x3d318).

- `bte_init_buffers` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3d330 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3d330-0x3d408 (216 bytes).
  Stores 8 bytes from v0 to ? (base unknown) (`sd` at 0x3d37c) with value ret(kmem_zalloc_node).
  Stores 1 byte from zero to ? (base unknown) (`sb` at 0x3d394) with value 0x0.
  Stores 1 byte from zero to sym(_prom_cleared) +0x1b0 (`sb` at 0x3d3c8) with value 0x0.
  Calls `kmem_zalloc_node` via direct with a0=0x4000, a1=0x901, a2=?, a3=? (`jal` at 0x3d368).
  Calls `spinlock_init` via direct with a0=?, a1=0x0, a2=?, a3=? (`jal` at 0x3d3a4).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+64800, a2=?, a3=? (`jal` at 0x3d3f8).
  At `blez` at 0x3d34c (target 0x3d3c8), taken when at(=[sym(maxnodes)]) <= 0 (signed) and falls through when at(=[sym(maxnodes)]) > 0 (signed).
  At `beq` at 0x3d378 (target 0x3d3e8), taken when v0(=ret(kmem_zalloc_node)) == 0 and falls through when v0(=ret(kmem_zalloc_node)) != 0.
  At `bne` at 0x3d390 (target 0x3d360), taken when s1(?) < 0x4 (signed) and falls through when s1(?) >= 0x4 (signed).
  At `bne` at 0x3d3c0 (target 0x3d35c), taken when s3(?) < a1(=[sym(maxnodes)]) (signed) and falls through when s3(?) >= a1(=[sym(maxnodes)]) (signed).
  Returns v0 = ? (`jr` at 0x3d3e0).

- `bte_avail` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3d408 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3d408-0x3d414 (12 bytes).
  Returns v0 = ? (`jr` at 0x3d40c).

- `bte_lateinit` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3d414 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3d414-0x3d6fc (744 bytes).
  Stores 1 byte from v0 to ? (base unknown) (`sb` at 0x3d4b0).
  Stores 8 bytes from v0 to abs 0xffffffffffffc720 (`sd` at 0x3d4f0).
  Stores 8 bytes from t9 to abs 0xffffffffffffc720 (`sd` at 0x3d52c).
  Stores 8 bytes from v0 to table(0x8ef8) +0x0 (`sd` at 0x3d568) with value ret(bte_init).
  Stores 8 bytes from ra to ret(bte_init) +0x60 (`sd` at 0x3d574) with value [-0x3c00]:8.
  Stores 8 bytes from v1 to ret(bte_init) +0x58 (`sd` at 0x3d58c) with value [[[-0x3c00]:8+36600]:8+88]:8.
  Stores 8 bytes from a2 to ? (base unknown) (`sd` at 0x3d5d8).
  Stores 8 bytes from a5 to ? (base unknown) (`sd` at 0x3d628).
  Stores 8 bytes from v0 to ? (base unknown) (`sd` at 0x3d650) with value ret(kmem_zalloc_node).
  Calls `kmem_zalloc_node` via direct with a0=0x70, a1=0x1, a2=[-0x3bd6]:2, a3=? (`jal` at 0x3d4f8).
  Calls `kmem_zalloc_node` via direct with a0=0x300, a1=0x901, a2=[-0x3bd6]:2, a3=? (`jal` at 0x3d538).
  Calls `bte_init [0x3d1d8]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3d550).
  Calls `kmem_zalloc_node` via direct with a0=0x4000, a1=0x901, a2=[-0x3bd6]:2, a3=? (`jal` at 0x3d598).
  Calls `kmem_alloc_node` via direct with a0=0x4000, a1=0x901, a2=[-0x3bd6]:2, a3=? (`jal` at 0x3d5e4).
  Calls `kmem_zalloc_node` via direct with a0=0x4, a1=0x1, a2=[-0x3bd6]:2, a3=? (`jal` at 0x3d634).
  Calls `spinlock_init` via direct with a0=ret(kmem_zalloc_node), a1=sym(.rodata)+64800, a2=?, a3=? (`jal` at 0x3d64c).
  Calls `assfail` via direct with a0=sym(.rodata)+64800, a1=sym(.rodata)+64800, a2=0x14c, a3=? (`jal` at 0x3d668).
  Calls `assfail` via direct with a0=sym(.rodata)+64800, a1=sym(.rodata)+64800, a2=0x156, a3=? (`jal` at 0x3d684).
  Calls `assfail` via direct with a0=sym(.rodata)+64800, a1=sym(.rodata)+64800, a2=0x12d, a3=? (`jal` at 0x3d6a0).
  Calls `assfail` via direct with a0=sym(.rodata)+64800, a1=sym(.rodata)+64800, a2=0x134, a3=? (`jal` at 0x3d6bc).
  Calls `cmn_err` via direct with a0=0x8, a1=sym(.rodata)+64800, a2=?, a3=? (`jal` at 0x3d6d4).
  Calls `cmn_err` via direct with a0=0x8, a1=sym(.rodata)+64800, a2=?, a3=?, a4=0xa800010000000000 (`jal` at 0x3d6ec).
  At `beq` at 0x3d444 (target 0x3d4f4), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x3d450 (target 0x3d4c8), taken when v1(=[-0x38e0]:8) == 0 and falls through when v1(=[-0x38e0]:8) != 0.
  At `bne` at 0x3d460 (target 0x3d434), taken when s1(?) < 0x2 (signed) and falls through when s1(?) >= 0x2 (signed).
  At `bne` at 0x3d4a4 (target 0x3d498), taken when a0(?) < 0x2 (signed) and falls through when a0(?) >= 0x2 (signed).
  At `bne` at 0x3d4ac (target 0x3d474), taken when a2(?) != 0 and falls through when a2(?) == 0.
  At `bne` at 0x3d4e4 (target 0x3d458), taken when s1(?) != t2(?) and falls through when s1(?) == t2(?).
  At `beq` at 0x3d500 (target 0x3d694), taken when v0(=ret(kmem_zalloc_node)) == 0 and falls through when v0(=ret(kmem_zalloc_node)) != 0.
  At `bne` at 0x3d524 (target 0x3d530), taken when s1(?) != t8(?) and falls through when s1(?) == t8(?).
  At `beq` at 0x3d544 (target 0x3d6b0), taken when v0(=ret(kmem_zalloc_node)) == 0 and falls through when v0(=ret(kmem_zalloc_node)) != 0.
  At `beq` at 0x3d570 (target 0x3d62c), taken when s1(?) == 0 and falls through when s1(?) != 0.
  At `beq` at 0x3d5a4 (target 0x3d6cc), taken when v0(=ret(kmem_zalloc_node)) == 0 and falls through when v0(=ret(kmem_zalloc_node)) != 0.
  At `bne` at 0x3d5bc (target 0x3d65c), taken when v0(=ret(kmem_zalloc_node)) < a1(=0xa800000000000000) (unsigned) and falls through when v0(=ret(kmem_zalloc_node)) >= a1(=0xa800000000000000) (unsigned).
  At `beq` at 0x3d5c4 (target 0x3d65c), taken when a0(?) == 0 and falls through when a0(?) != 0.
  At `beq` at 0x3d5f0 (target 0x3d6e4), taken when v0(=ret(kmem_alloc_node)) == 0 and falls through when v0(=ret(kmem_alloc_node)) != 0.
  At `bne` at 0x3d604 (target 0x3d67c), taken when v0(=ret(kmem_alloc_node)) < a3(=0xa800000000000000) (unsigned) and falls through when v0(=ret(kmem_alloc_node)) >= a3(=0xa800000000000000) (unsigned).
  At `beq` at 0x3d610 (target 0x3d678), taken when v0(=ret(kmem_alloc_node)) >= a4(=0xa800010000000000) (unsigned) and falls through when v0(=ret(kmem_alloc_node)) < a4(=0xa800010000000000) (unsigned).
  Returns v0 = ? (`jr` at 0x3d4c0).

- `bte_pbcopy` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3d6fc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3d6fc-0x3d7bc (192 bytes).
  Calls `bte_copy` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x10, a5=[sym(maxcpus)], a6=[sym(disable_bte_pbcopy)] (`jal` at 0x3d754).
  Calls `bcopy` via direct with a0=(0xa800000000000000 | a0), a1=(0xa800000000000000 | a1), a2=?, a3=? (`jal` at 0x3d774).
  Calls `bcopy` via direct with a0=(0xa800000000000000 | a0), a1=(0xa800000000000000 | a1), a2=?, a3=a3 at entry (arg3), a5=[sym(maxcpus)], a6=[sym(disable_bte_pbcopy)] (`jal` at 0x3d7ac).
  At `beq` at 0x3d724 (target 0x3d734), taken when a6(=[sym(disable_bte_pbcopy)]) == 0 -> outside and falls through when a6(=[sym(disable_bte_pbcopy)]) != 0.
  At `beq` at 0x3d730 (target 0x3d798), taken when a5(=[sym(maxcpus)]) >= a6(=[sym(disable_bte_pbcopy)]) (signed) and falls through when a5(=[sym(maxcpus)]) < a6(=[sym(disable_bte_pbcopy)]) (signed).
  At `beq` at 0x3d738 (target 0x3d748), taken when a0(=[sym(disable_bte)]) == 0 and falls through when a0(=[sym(disable_bte)]) != 0.
  At `beq` at 0x3d740 (target 0x3d79c), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0x3d75c (target 0x3d77c), taken when v0(=ret(bte_copy)) == 0 and falls through when v0(=ret(bte_copy)) != 0.
  Returns v0 = 0x0 (`jr` at 0x3d790).

- `bte_pbzero` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3d7bc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3d7bc-0x3d95c (416 bytes).
  Stores 2 bytes from a1 to [-0x3fe0]:8 +0xf6 (`sh` at 0x3d83c) with value 0x5.
  Stores 2 bytes from a2 to [-0x3fe0]:8 +0xf6 (`sh` at 0x3d870).
  Stores 2 bytes from a6 to [-0x3fe0]:8 +0xf6 (`sh` at 0x3d904) with value 0x5.
  Stores 2 bytes from a2 to [-0x3fe0]:8 +0xf6 (`sh` at 0x3d938).
  Calls `bzero` via direct with a0=(a0 | 0xa800000000000000), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3d854).
  Calls `bte_copy` via direct with a0=0x0, a1=?, a2=?, a3=0x11 (`jal` at 0x3d8a8).
  Calls `bzero` via direct with a0=(a0 | 0xa800000000000000), a1=?, a2=?, a3=?, a4=0x1, a6=0x5 (`jal` at 0x3d91c).
  At `beq` at 0x3d7e8 (target 0x3d94c), taken when a1 == 0 and falls through when a1 != 0.
  At `beq` at 0x3d7fc (target 0x3d808), taken when a1(=[sym(disable_bte_pbzero)]) == 0 -> outside and falls through when a1(=[sym(disable_bte_pbzero)]) != 0.
  At `beq` at 0x3d804 (target 0x3d824), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0x3d80c (target 0x3d81c), taken when v0(=[sym(disable_bte)]) == 0 and falls through when v0(=[sym(disable_bte)]) != 0.
  At `beq` at 0x3d814 (target 0x3d824), taken when v1(?) == 0 and falls through when v1(?) != 0.
  At `beq` at 0x3d824 (target 0x3d848), taken when s3(=a2) == 0 and falls through when s3(=a2) != 0.
  At `beq` at 0x3d830 (target 0x3d844), taken when v0(=[-0x3fe0]:8) == 0 and falls through when v0(=[-0x3fe0]:8) != 0.
  At `beq` at 0x3d85c (target 0x3d878), taken when s3(=a2) == 0 and falls through when s3(=a2) != 0.
  At `beq` at 0x3d868 (target 0x3d874), taken when v0(=[-0x3fe0]:8) == 0 and falls through when v0(=[-0x3fe0]:8) != 0.
  At `beq` at 0x3d8b0 (target 0x3d8d4), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `bne` at 0x3d8b8 (target 0x3d8dc), taken when v0(=ret(bte_copy)) != 0 and falls through when v0(=ret(bte_copy)) == 0.
  At `bne` at 0x3d8c0 (target 0x3d898), taken when a3(?) != 0 and falls through when a3(?) == 0.
  At `beq` at 0x3d8d4 (target 0x3d954), taken when v0(=ret(bte_copy)) == 0 and falls through when v0(=ret(bte_copy)) != 0.
  At `bne` at 0x3d8e4 (target 0x3d944), taken when v0(=ret(bte_copy)) != a4(=0x1) and falls through when v0(=ret(bte_copy)) == a4(=0x1).
  At `beq` at 0x3d8ec (target 0x3d910), taken when s3(=a2) == 0 and falls through when s3(=a2) != 0.
  At `beq` at 0x3d8f8 (target 0x3d910), taken when v0(=[-0x3fe0]:8) == 0 and falls through when v0(=[-0x3fe0]:8) != 0.
  At `beq` at 0x3d924 (target 0x3d93c), taken when s3(=a2) == 0 and falls through when s3(=a2) != 0.
  At `beq` at 0x3d930 (target 0x3d93c), taken when v0(=[-0x3fe0]:8) == 0 and falls through when v0(=[-0x3fe0]:8) != 0.
  Returns v0 = ? (`jr` at 0x3d890).

- `bte_free_interfaces` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3d95c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3d95c-0x3d9e8 (140 bytes).
  Calls `nested_spinunlock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3d9b4).
  At `beq` at 0x3d990 (target 0x3d9cc), taken when s0(?) >= 0x2 (signed) and falls through when s0(?) < 0x2 (signed).
  At `beq` at 0x3d998 (target 0x3d988), taken when s1(=a1) == s0(?) and falls through when s1(=a1) != s0(?).
  At `bne` at 0x3d9c4 (target 0x3d998), taken when s0(?) < 0x2 (signed) and falls through when s0(?) >= 0x2 (signed).
  Returns v0 = ? (`jr` at 0x3d9e0).

- `bte_get_all_interfaces` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3d9e8 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3d9e8-0x3dbbc (468 bytes).
  Stores 8 bytes from s1 to ? (base unknown) (`sd` at 0x3da3c).
  Stores 4 bytes from v0 to a1 (arg1 at entry) +0x0 (`sw` at 0x3db1c) with value ret(splhi).
  Stores 4 bytes from v0 to a1 (arg1 at entry) +0x0 (`sw` at 0x3db8c) with value ret(splhi).
  Calls `nested_spintrylock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3da44).
  Calls `splx` via direct with a0=[a1], a1=0x1, a2=?, a3=? (`jal` at 0x3db04).
  Calls `us_delay` via direct with a0=0x1, a1=?, a2=?, a3=? (`jal` at 0x3db0c).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3db14).
  Calls `splx` via direct with a0=[a1], a1=?, a2=?, a3=? (`jal` at 0x3db74).
  Calls `us_delay` via direct with a0=0x1, a1=?, a2=?, a3=? (`jal` at 0x3db7c).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3db84).
  Calls `nested_spintrylock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3db90).
  At `beq` at 0x3da4c (target 0x3db74), taken when v0(=ret(nested_spintrylock)) == 0 and falls through when v0(=ret(nested_spintrylock)) != 0.
  At `bne` at 0x3da5c (target 0x3da24), taken when s0(?) < 0x2 (signed) and falls through when s0(?) >= 0x2 (signed).
  At `beq` at 0x3da8c (target 0x3db40), taken when s0(?) >= 0x2 (signed) and falls through when s0(?) < 0x2 (signed).
  At `beq` at 0x3da98 (target 0x3da7c), taken when s1(?) == 0 and falls through when s1(?) != 0.
  At `beq` at 0x3daa4 (target 0x3da7c), taken when t8(=[a0+76]) == s0(?) and falls through when t8(=[a0+76]) != s0(?).
  At `beq` at 0x3dab4 (target 0x3da7c), taken when (t9(=[a0+58]:1) & ra(?)) == 0 and falls through when (t9(=[a0+58]:1) & ra(?)) != 0.
  At `beq` at 0x3dad4 (target 0x3da7c), taken when (s7(=0x100000) & a0(?)) == 0 and falls through when (s7(=0x100000) & a0(?)) != 0.
  At `bne` at 0x3dadc (target 0x3da7c), taken when a2(?) != 0 and falls through when a2(?) == 0.
  At `beq` at 0x3daec (target 0x3da7c), taken when s3(=0x10000) == a3(?) and falls through when s3(=0x10000) != a3(?).
  At `bne` at 0x3dafc (target 0x3da7c), taken when s8(?) < a4(=[0x9200000001030100]:8) (unsigned) and falls through when s8(?) >= a4(=[0x9200000001030100]:8) (unsigned).
  At `bne` at 0x3db30 (target 0x3dadc), taken when (s7(=0x100000) & a0(?)) != 0 and falls through when (s7(=0x100000) & a0(?)) == 0.
  At `beq` at 0x3db98 (target 0x3db74), taken when v0(=ret(nested_spintrylock)) == 0 and falls through when v0(=ret(nested_spintrylock)) != 0.
  Returns v0 = 0x0 (`jr` at 0x3db6c).

- `bte_notification_war` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3dbbc (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3dbbc-0x3dd14 (344 bytes).
  Stores 8 bytes from at to ([(sym(compact_to_nasid_node) + ([a0+56]:2 + [a0+56]:2))]:2 << 0x21) -0x6dfffffffe3ffe00 (`sd` at 0x3dc30) with value ([([(sym(compact_to_nasid_node) + ([a0+56]:2 + [a0+56]:2))]:2 << 0x21)-7926335344142712320]:8 | 0x100).
  Stores 4 bytes from a0 to a0 (arg0 at entry) +0x48 (`sw` at 0x3dc50) with value [a0+72]+1.
  Stores 4 bytes from v0 to a1 (arg1 at entry) +0x0 (`sw` at 0x3dcb0) with value ret(splhi).
  Stores 4 bytes from v0 to a1 (arg1 at entry) +0x0 (`sw` at 0x3dce4) with value ret(splhi).
  Calls `nested_spintrylock` via direct with a0=[a0+88]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3dbd4).
  Calls `bte_get_all_interfaces` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0x3dbe4).
  Calls `us_delay` via direct with a0=0x190, a1=?, a2=?, a3=? (`jal` at 0x3dc2c).
  Calls `bte_free_interfaces` via direct with a0=a0 at entry (arg0), a1=[a0+76], a2=?, a3=? (`jal` at 0x3dc38).
  Calls `nested_spinunlock` via direct with a0=[a0+88]:8, a1=?, a2=?, a3=? (`jal` at 0x3dc40).
  Calls `nested_spintrylock` via direct with a0=[a0+88]:8, a1=?, a2=?, a3=? (`jal` at 0x3dc68).
  Calls `nested_spintrylock` via direct with a0=a0+60, a1=?, a2=?, a3=? (`jal` at 0x3dc78).
  Calls `nested_spinunlock` via direct with a0=[a0+88]:8, a1=?, a2=?, a3=? (`jal` at 0x3dc88).
  Calls `splx` via direct with a0=[a1], a1=?, a2=?, a3=? (`jal` at 0x3dc98).
  Calls `us_delay` via direct with a0=0x1, a1=?, a2=?, a3=? (`jal` at 0x3dca0).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3dca8).
  Calls `nested_spintrylock` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3dcb4).
  Calls `splx` via direct with a0=[a1], a1=?, a2=?, a3=? (`jal` at 0x3dccc).
  Calls `us_delay` via direct with a0=0x1, a1=?, a2=?, a3=? (`jal` at 0x3dcd4).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3dcdc).
  Calls `nested_spintrylock` via direct with a0=[a0+88]:8, a1=?, a2=?, a3=? (`jal` at 0x3dce8).
  Calls `cmn_err` via direct with a0=0xc, a1=sym(.rodata)+64800, a2=?, a3=? (`jal` at 0x3dd04).
  At `beq` at 0x3dbdc (target 0x3dc68), taken when v0(=ret(nested_spintrylock)) == 0 and falls through when v0(=ret(nested_spintrylock)) != 0.
  At `bne` at 0x3dbec (target 0x3dd00), taken when v0(=ret(bte_get_all_interfaces)) != 0 and falls through when v0(=ret(bte_get_all_interfaces)) == 0.
  At `beq` at 0x3dc70 (target 0x3dccc), taken when v0(=ret(nested_spintrylock)) == 0 and falls through when v0(=ret(nested_spintrylock)) != 0.
  At `beq` at 0x3dc80 (target 0x3dc98), taken when v0(=ret(nested_spintrylock)) == 0 and falls through when v0(=ret(nested_spintrylock)) != 0.
  At `beq` at 0x3dcbc (target 0x3dc98), taken when v0(=ret(nested_spintrylock)) == 0 and falls through when v0(=ret(nested_spintrylock)) != 0.
  At `beq` at 0x3dcf0 (target 0x3dccc), taken when v0(=ret(nested_spintrylock)) == 0 and falls through when v0(=ret(nested_spintrylock)) != 0.
  Returns v0 = ret(nested_spinunlock); f0 = ret(nested_spinunlock) (`jr` at 0x3dc60).

- `bte_copy` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3dd14 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3dd14-0x3e300 (1516 bytes).
  Stores 4 bytes from zero to entry(0x8ef8) +0x50 (`sw` at 0x3df04) with value 0x0.
  Stores 8 bytes from a2 to [entry(0x8ef8)]:8 +0x20 (`sd` at 0x3dfcc).
  Stores 8 bytes from a5 to [entry(0x8ef8)]:8 +0x18 (`sd` at 0x3dfdc).
  Stores 4 bytes from a4 to entry(0x8ef8) +0x40 (`sw` at 0x3e01c) with value [entry(0x8ef8)+64]+1.
  Stores 8 bytes from a7 to entry(0x8ef8) +0x20 (`sd` at 0x3e0ec).
  Stores 8 bytes from a0 to ? (base unknown) (`sd` at 0x3e0f0) with value -0x1.
  Stores 8 bytes from s4 to [entry(0x8ef8)]:8 +0x8 (`sd` at 0x3e0f4).
  Stores 8 bytes from s6 to [entry(0x8ef8)]:8 +0x10 (`sd` at 0x3e0f8).
  Stores 8 bytes from a5 to [entry(0x8ef8)]:8 +0x0 (`sd` at 0x3e100).
  Stores 4 bytes from a4 to entry(0x8ef8) +0x50 (`sw` at 0x3e15c) with value [entry(0x8ef8)+80]+1.
  Stores 4 bytes from s3 to entry(0x8ef8) +0x54 (`sw` at 0x3e220) with value [[entry(0x8ef8)]:8]:8.
  Stores 1 byte from a4 to ? (base unknown) (`sb` at 0x3e2c4).
  Calls `splhi` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=[sym(disable_bte)], a7=0x1 (`jal` at 0x3ddc0).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3de20).
  Calls `splhi` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3de30).
  Calls `bitlock_islocked` via direct with a0=[entry(0x8ef8)+88]:8, a1=0x1, a2=?, a3=? (`jal` at 0x3de68).
  Calls `nested_spintrylock` via direct with a0=entry(0x8ef8)+60, a1=?, a2=?, a3=? (`jal` at 0x3de8c).
  Calls `nested_spinunlock` via direct with a0=entry(0x8ef8)+60, a1=?, a2=?, a3=? (`jal` at 0x3deb0).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3ded8).
  Calls `nested_spinunlock` via direct with a0=entry(0x8ef8)+60, a1=?, a2=?, a3=? (`jal` at 0x3dfd8).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3dfe0).
  Calls `splhi` via direct with a0=-0x1, a1=?, a2=?, a3=[0x9200000001030100]:8, a4=[entry(0x8ef8)+64]+1 (`jal` at 0x3e028).
  Calls `bte_error_handler` via direct with a0=?, a1=sp-464, a2=?, a3=? (`jal` at 0x3e038).
  Calls `poison_state_clear` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3e050).
  Calls `splhi` via direct with a0=-0x1, a1=?, a2=[entry(0x8ef8)+80], a3=?, a4=[entry(0x8ef8)+80]+1 (`jal` at 0x3e158).
  Calls `bte_notification_war [0x3dbbc]` via direct with a0=entry(0x8ef8), a1=sp-464, a2=?, a3=? (`jal` at 0x3e168).
  Calls `poison_state_clear` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3e17c).
  Calls `nested_spinunlock` via direct with a0=entry(0x8ef8)+60, a1=?, a2=?, a3=?, a6=[entry(0x8ef8)+80], a7=0x1 (`jal` at 0x3e1f4).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3e1fc).
  Calls `splhi` via direct with a0=-0x1, a1=?, a2=?, a3=? (`jal` at 0x3e224).
  Calls `bte_error_handler` via direct with a0=?, a1=sp-464, a2=?, a3=? (`jal` at 0x3e234).
  Calls `nested_spinunlock` via direct with a0=entry(0x8ef8)+60, a1=?, a2=?, a3=? (`jal` at 0x3e240).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3e248).
  Calls `splx` via direct with a0=ret(splhi), a1=?, a2=?, a3=? (`jal` at 0x3e260).
  Calls `cmn_err` via direct with a0=0x214, a1=sym(.rodata)+64800, a2=[entry(0x8ef8)+76], a3=[entry(0x8ef8)+56]:2, a4=[[entry(0x8ef8)]:8]:8 (`jal` at 0x3e280).
  Calls `poison_state_clear` via direct with a0=?, a1=?, a2=?, a3=[entry(0x8ef8)+96]:8 (`jal` at 0x3e2d4).
  Calls `cmn_err` via direct with a0=0xc, a1=sym(.rodata)+64800, a2=[entry(0x8ef8)+76], a3=? (`jal` at 0x3e2f0).
  At `beq` at 0x3dd5c (target 0x3dd74), taken when a4(=[sym(disable_bte)]) == 0 and falls through when a4(=[sym(disable_bte)]) != 0.
  At `beq` at 0x3dd6c (target 0x3dec0), taken when t8(=[sym(maxcpus)]) >= a4(=[sym(disable_bte)]) (signed) and falls through when t8(=[sym(maxcpus)]) < a4(=[sym(disable_bte)]) (signed).
  At `beq` at 0x3dd74 (target 0x3ded0), taken when s3(=a2) == 0 and falls through when s3(=a2) != 0.
  At `beq` at 0x3dd84 (target 0x3ddc0), taken when t9(=0x7fff80) >= s3(=a2) (unsigned) and falls through when t9(=0x7fff80) < s3(=a2) (unsigned).
  At `beq` at 0x3de04 (target 0x3e260), taken when ra(=[entry(0x8ef8)+58]:1) == 0 and falls through when ra(=[entry(0x8ef8)+58]:1) != 0.
  At `beq` at 0x3de18 (target 0x3ded8), taken when a0(=[entry(0x8ef8)+58]:1) == 0 and falls through when a0(=[entry(0x8ef8)+58]:1) != 0.
  At `beq` at 0x3de28 (target 0x3dec8), taken when s5(?) == 0 and falls through when s5(?) != 0.
  At `bne` at 0x3de70 (target 0x3de18), taken when v0(=ret(bitlock_islocked)) != 0 and falls through when v0(=ret(bitlock_islocked)) == 0.
  At `beq` at 0x3de84 (target 0x3de18), taken when (t9(?) & 0x1) == 0 and falls through when (t9(?) & 0x1) != 0.
  At `beq` at 0x3de94 (target 0x3de20), taken when v0(=ret(nested_spintrylock)) == 0 and falls through when v0(=ret(nested_spintrylock)) != 0.
  At `beq` at 0x3dea8 (target 0x3dee8), taken when (ra(=0x110000) & at(=[[entry(0x8ef8)]:8]:8)) == 0 and falls through when (ra(=0x110000) & at(=[[entry(0x8ef8)]:8]:8)) != 0.
  At `beq` at 0x3def4 (target 0x3e20c), taken when s6(?) == 0 and falls through when s6(?) != 0.
  At `beq` at 0x3defc (target 0x3e214), taken when s4(?) == 0 and falls through when s4(?) != 0.
  At `beq` at 0x3dffc (target 0x3e194), taken when a0(=-0x1) == a6(?) and falls through when a0(=-0x1) != a6(?).
  At `beq` at 0x3e008 (target 0x3e130), taken when a0(=-0x1) == s3(?) and falls through when a0(=-0x1) != s3(?).
  At `beq` at 0x3e018 (target 0x3e258), taken when s3(?) == 0 and falls through when s3(?) != 0.
  At `beq` at 0x3e020 (target 0x3e070), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0x3e048 (target 0x3e05c), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `bne` at 0x3e064 (target 0x3e1f4), taken when a6(=[entry(0x8ef8)+80]) != 0 and falls through when a6(=[entry(0x8ef8)+80]) == 0.
  At `beq` at 0x3e070 (target 0x3e1e4), taken when t0(?) == 0 and falls through when t0(?) != 0.
  At `beq` at 0x3e0a0 (target 0x3e0b4), taken when t1(?) == 0 and falls through when t1(?) != 0.
  At `bne` at 0x3e0ac (target 0x3e0c4), taken when t2(?) != 0 and falls through when t2(?) == 0.
  At `beq` at 0x3e0b4 (target 0x3e0cc), taken when t3(?) == 0 and falls through when t3(?) != 0.
  At `beq` at 0x3e0bc (target 0x3e0cc), taken when t8(?) == 0 and falls through when t8(?) != 0.
  At `beq` at 0x3e104 (target 0x3e118), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `bne` at 0x3e110 (target 0x3e128), taken when v1(?) != 0 and falls through when v1(?) == 0.
  At `beq` at 0x3e118 (target 0x3dfb0), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0x3e120 (target 0x3dfb0), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `bne` at 0x3e138 (target 0x3e224), taken when (s1(=0x10000) & s3(=[[entry(0x8ef8)]:8]:8)) != 0 and falls through when (s1(=0x10000) & s3(=[[entry(0x8ef8)]:8]:8)) == 0.
  At `beq` at 0x3e144 (target 0x3e21c), taken when a2(=[entry(0x8ef8)+80]) == 0 and falls through when a2(=[entry(0x8ef8)+80]) != 0.
  At `beq` at 0x3e14c (target 0x3e270), taken when a3(?) == 0 and falls through when a3(?) != 0.
  At `beq` at 0x3e174 (target 0x3e188), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0x3e19c (target 0x3e004), taken when a7(=[0x9200000001030100]:8) >= a2(=([entry(0x8ef8)+104] + [0x9200000001030100]:8)) (unsigned) and falls through when a7(=[0x9200000001030100]:8) < a2(=([entry(0x8ef8)+104] + [0x9200000001030100]:8)) (unsigned).
  At `bne` at 0x3e1a8 (target 0x3e004), taken when a0(=-0x1) != t0(?) and falls through when a0(=-0x1) == t0(?).
  At `beq` at 0x3e1b8 (target 0x3e004), taken when t1(=[0x9200000001030100]:8) >= a2(=([entry(0x8ef8)+104] + [0x9200000001030100]:8)) (unsigned) and falls through when t1(=[0x9200000001030100]:8) < a2(=([entry(0x8ef8)+104] + [0x9200000001030100]:8)) (unsigned).
  At `bne` at 0x3e1c4 (target 0x3e004), taken when a0(=-0x1) != t2(?) and falls through when a0(=-0x1) == t2(?).
  At `bne` at 0x3e1d4 (target 0x3e1a4), taken when t3(=[0x9200000001030100]:8) < a2(=([entry(0x8ef8)+104] + [0x9200000001030100]:8)) (unsigned) and falls through when t3(=[0x9200000001030100]:8) >= a2(=([entry(0x8ef8)+104] + [0x9200000001030100]:8)) (unsigned).
  At `bne` at 0x3e1e4 (target 0x3e07c), taken when t8(?) != 0 and falls through when t8(?) == 0.
  At `bne` at 0x3e20c (target 0x3df00), taken when s4(?) != 0 -> outside and falls through when s4(?) == 0.
  At `bne` at 0x3e2c0 (target 0x3e290), taken when a2(?) < 0x2 (signed) and falls through when a2(?) >= 0x2 (signed).
  At `beq` at 0x3e2cc (target 0x3e2dc), taken when a6(?) == 0 and falls through when a6(?) != 0.
  Returns v0 = ? (`jr` at 0x3ddb8).

- `bte_acquire_buffer` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3e300 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3e300-0x3e464 (356 bytes).
  Stores 1 byte from s3 to ? (base unknown) (`sb` at 0x3e448) with value 0x1.
  Calls `mutex_spinlock` via direct with a0=((entry(sym(nasid_to_compact_node)) << 0x2) + sym(.bss)+55512)+4608, a1=?, a2=?, a3=? (`jal` at 0x3e374).
  Calls `mutex_spinunlock` via direct with a0=((entry(sym(nasid_to_compact_node)) << 0x2) + sym(.bss)+55512)+4608, a1=ret(mutex_spinlock), a2=?, a3=? (`jal` at 0x3e3c4).
  At `beq` at 0x3e384 (target 0x3e44c), taken when t8(=[((entry(sym(nasid_to_compact_node)) << 0x2) + sym(.bss)+55512)+4096]:1) == 0 and falls through when t8(=[((entry(sym(nasid_to_compact_node)) << 0x2) + sym(.bss)+55512)+4096]:1) != 0.
  At `beq` at 0x3e39c (target 0x3e428), taken when t9(?) == 0 and falls through when t9(?) != 0.
  At `bne` at 0x3e3bc (target 0x3e394), taken when s0(?) < 0x4 (signed) and falls through when s0(?) >= 0x4 (signed).
  At `beq` at 0x3e3cc (target 0x3e418), taken when s7(=a1) == 0 and falls through when s7(=a1) != 0.
  At `bne` at 0x3e3d8 (target 0x3e418), taken when s0(?) != at(=0x4) and falls through when s0(?) == at(=0x4).
  At `bne` at 0x3e3e0 (target 0x3e374), taken when s1(=one of 0x0, 0x1) != 0 and falls through when s1(=one of 0x0, 0x1) == 0.
  At `beq` at 0x3e418 (target 0x3e3e8), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x3e430 (target 0x3e3a4), taken when v1(=entry(sym(.bss)+55512)) == 0 and falls through when v1(=entry(sym(.bss)+55512)) != 0.
  At `beq` at 0x3e438 (target 0x3e3c4), taken when a5(?) == 0 and falls through when a5(?) != 0.
  At `beq` at 0x3e454 (target 0x3e38c), taken when a2(?) == 0 and falls through when a2(?) != 0.
  Returns v0 = ?; f0 = ret(mutex_spinunlock) (`jr` at 0x3e40c).
  The instructions from 0x3e414 to 0x3e414 are not reached by any path from the entry, and their branches are not listed.

- `bte_release_buffer` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3e464 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3e464-0x3e4c4 (96 bytes).
  Stores 1 byte from zero to (a0 + sym(.bss)+55512) +0x1000 (`sb` at 0x3e4b0) with value 0x0.
  Calls `mutex_spinlock` via direct with a0=table(sym(.bss)+55512)+4608, a1=?, a2=?, a3=a3 at entry (arg3) (`jal` at 0x3e494).
  Calls `mutex_spinunlock` via direct with a0=?, a1=ret(mutex_spinlock), a2=?, a3=(a0 + sym(.bss)+55512) (`jal` at 0x3e4ac).
  Returns v0 = ret(mutex_spinunlock); f0 = ret(mutex_spinunlock) (`jr` at 0x3e4bc).

- `bte_pull` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3e4c4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3e4c4-0x3e74c (648 bytes).
  Calls `bte_copy` via direct with a0=?, a1=?, a2=?, a3=a3 at entry (arg3) (`jal` at 0x3e5dc).
  Calls `bcopy` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3e654).
  Calls `bte_release_buffer [0x3e464]` via direct with a0=?, a1=?, a2=?, a3=?, a6=-0x1 (`jal` at 0x3e680).
  Calls `bte_acquire_buffer [0x3e300]` via direct with a0=a1 at entry (arg1), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0x9000000000000000, a7=0xa800010000000000 (`jal` at 0x3e694).
  At `bne` at 0x3e520 (target 0x3e52c), taken when a2 < 0x401 (unsigned) -> outside and falls through when a2 >= 0x401 (unsigned).
  At `beq` at 0x3e528 (target 0x3e690), taken when v0(=[sym(.sdata)+432]:1) == 0 and falls through when v0(=[sym(.sdata)+432]:1) != 0.
  At `bne` at 0x3e550 (target 0x3e560), taken when a3(?) < a1(=0xa800000000000000) (unsigned) and falls through when a3(?) >= a1(=0xa800000000000000) (unsigned).
  At `bne` at 0x3e558 (target 0x3e570), taken when a3(?) != 0 and falls through when a3(?) == 0.
  At `bne` at 0x3e560 (target 0x3e57c), taken when a0(?) != 0 and falls through when a0(?) == 0.
  At `beq` at 0x3e568 (target 0x3e57c), taken when t3(?) == 0 and falls through when t3(?) != 0.
  At `beq` at 0x3e5bc (target 0x3e674), taken when s1(=a2) == 0 and falls through when s1(=a2) != 0.
  At `beq` at 0x3e5e4 (target 0x3e61c), taken when v0(=ret(bte_copy)) == 0 and falls through when v0(=ret(bte_copy)) != 0.
  At `bne` at 0x3e66c (target 0x3e5c4), taken when s1(?) != 0 and falls through when s1(?) == 0.
  At `beq` at 0x3e678 (target 0x3e688), taken when s6(?) == a6(=-0x1) and falls through when s6(?) != a6(=-0x1).
  At `beq` at 0x3e6b0 (target 0x3e6c4), taken when v0(=ret(bte_acquire_buffer)) == a2(=-0x1) and falls through when v0(=ret(bte_acquire_buffer)) != a2(=-0x1).
  At `bne` at 0x3e6d8 (target 0x3e6e8), taken when a0(?) < a1(=0xa800000000000000) (unsigned) -> outside and falls through when a0(?) >= a1(=0xa800000000000000) (unsigned).
  At `bne` at 0x3e6e4 (target 0x3e70c), taken when a0(?) < a2(=0xa800010000000000) (unsigned) -> outside and falls through when a0(?) >= a2(=0xa800010000000000) (unsigned).
  At `bne` at 0x3e6fc (target 0x3e718), taken when a2(?) < a3(=0x9000000000000000) (unsigned) and falls through when a2(?) >= a3(=0x9000000000000000) (unsigned).
  At `beq` at 0x3e708 (target 0x3e718), taken when a2(?) >= a3(=0x9000010000000000) (unsigned) and falls through when a2(?) < a3(=0x9000010000000000) (unsigned).
  Returns v0 = ? (`jr` at 0x3e614).
  The instructions from 0x3e578 to 0x3e578 are not reached by any path from the entry, and their branches are not listed.

- `bte_unaligned_copy` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3e74c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3e74c-0x3e9a0 (596 bytes).
  Calls `bte_pull [0x3e4c4]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=? (`jal` at 0x3e7d8).
  Calls `bte_pull [0x3e4c4]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=? (`jal` at 0x3e80c).
  Calls `bcopy` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3) (`jal` at 0x3e858).
  Calls `bte_pull [0x3e4c4]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3e8a8).
  Calls `bcopy` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3e8c8).
  Calls `bte_copy` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3e8fc).
  Calls `bcopy` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3) (`jal` at 0x3e928).
  Calls `bte_copy` via direct with a0=?, a1=?, a2=0x7fff80, a3=? (`jal` at 0x3e950).
  At `beq` at 0x3e778 (target 0x3e790), taken when v0(=[sym(disable_bte)]) == 0 and falls through when v0(=[sym(disable_bte)]) != 0.
  At `beq` at 0x3e788 (target 0x3e840), taken when at(=[sym(maxcpus)]) >= v0(=[sym(disable_bte)]) (signed) and falls through when at(=[sym(maxcpus)]) < v0(=[sym(disable_bte)]) (signed).
  At `beq` at 0x3e790 (target 0x3e938), taken when s0(=a2) == 0 and falls through when s0(=a2) != 0.
  At `bne` at 0x3e79c (target 0x3e7f4), taken when v0(?) != v1(?) and falls through when v0(?) == v1(?).
  At `beq` at 0x3e7a4 (target 0x3e90c), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x3e7bc (target 0x3e848), taken when a1(?) == 0 and falls through when a1(?) != 0.
  At `beq` at 0x3e7e4 (target 0x3e864), taken when v0(=ret(bte_pull)) == 0 and falls through when v0(=ret(bte_pull)) != 0.
  At `beq` at 0x3e7f4 (target 0x3e920), taken when a4(?) == 0 and falls through when a4(?) != 0.
  At `beq` at 0x3e880 (target 0x3e8d0), taken when v0(?) == 0 and falls through when v0(?) != 0.
  At `beq` at 0x3e898 (target 0x3e8c4), taken when a2(?) == 0 and falls through when a2(?) != 0.
  At `beq` at 0x3e8b4 (target 0x3e8d0), taken when v0(=ret(bte_pull)) == 0 and falls through when v0(=ret(bte_pull)) != 0.
  At `beq` at 0x3e8d0 (target 0x3e81c), taken when s0(?) == 0 and falls through when s0(?) != 0.
  At `bne` at 0x3e8ec (target 0x3e944), taken when v0(=0x7fff80) < s0(?) (unsigned) and falls through when v0(=0x7fff80) >= s0(?) (unsigned).
  At `bne` at 0x3e910 (target 0x3e7b0), taken when s0(=a2) < 0x80 (unsigned) and falls through when s0(=a2) >= 0x80 (unsigned).
  At `beq` at 0x3e95c (target 0x3e96c), taken when v0(=ret(bte_copy)) == 0 and falls through when v0(=ret(bte_copy)) != 0.
  At `bne` at 0x3e990 (target 0x3e8e8), taken when s0(=table(0xffffffffff800080)) != 0 and falls through when s0(=table(0xffffffffff800080)) == 0.
  Returns v0 = ? (`jr` at 0x3e838).

- `bte_poison_copy` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3e9a0 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3e9a0-0x3e9f4 (84 bytes).
  Calls `bte_copy` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x110 (`jal` at 0x3e9b4).
  Calls `cmn_err` via direct with a0=0xc, a1=sym(.rodata)+64800, a2=ret(bte_copy), a3=? (`jal` at 0x3e9e4).
  At `beq` at 0x3e9ac (target 0x3e9c8), taken when a2 == 0 and falls through when a2 != 0.
  At `bne` at 0x3e9bc (target 0x3e9d8), taken when v0(=ret(bte_copy)) != 0 and falls through when v0(=ret(bte_copy)) == 0.
  Returns v0 = ? (`jr` at 0x3e9d0).

- `bte_poison_range` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3e9f4 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3e9f4-0x3eb04 (272 bytes).
  Calls `poison_state_alter_range` via direct with a0=(a0 | 0xa800000000000000), a1=a1 at entry (arg1), a2=0x1, a3=a3 at entry (arg3), a6=a1 at entry (arg1), a7=a0 at entry (arg0) (`jal` at 0x3ea44).
  Calls `bte_copy` via direct with a0=?, a1=0x0, a2=?, a3=0x110, a4=0x4000 (`jal` at 0x3ea94).
  Calls `poison_state_alter_range` via direct with a0=?, a1=?, a2=0x1, a3=? (`jal` at 0x3eaec).
  At `beq` at 0x3ea04 (target 0x3ead0), taken when a1 == 0 and falls through when a1 != 0.
  At `beq` at 0x3ea14 (target 0x3ea24), taken when a0(=[sym(disable_bte_poison_range)]) == 0 and falls through when a0(=[sym(disable_bte_poison_range)]) != 0.
  At `beq` at 0x3ea1c (target 0x3ea38), taken when at(?) == 0 and falls through when at(?) != 0.
  At `beq` at 0x3ea24 (target 0x3ea54), taken when v0(=[sym(disable_bte)]) == 0 and falls through when v0(=[sym(disable_bte)]) != 0.
  At `bne` at 0x3ea30 (target 0x3ea54), taken when v1(=[sym(maxcpus)]) < v0(=[sym(disable_bte)]) (signed) and falls through when v1(=[sym(maxcpus)]) >= v0(=[sym(disable_bte)]) (signed).
  At `beq` at 0x3ea64 (target 0x3eab4), taken when a6(?) == 0 and falls through when a6(?) != 0.
  At `beq` at 0x3eaa8 (target 0x3ea64), taken when v0(=ret(bte_copy)) == 0 and falls through when v0(=ret(bte_copy)) != 0.
  At `beq` at 0x3eab4 (target 0x3ead8), taken when v0(=ret(bte_copy)) == t0(=0x1) and falls through when v0(=ret(bte_copy)) != t0(=0x1).
  Returns v0 = ? (`jr` at 0x3eac8).

- `bte_disable` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3eb04 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3eb04-0x3eb10 (12 bytes).
  Stores 4 bytes from at to sym(disable_bte) +0x0 (`sw` at 0x3eb0c) with value 0x1.
  Returns v0 = ? (`jr` at 0x3eb08).

- `is_buserror` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3ec64 (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3ec64-0x3ec6c (8 bytes).
  Returns v0 = 0x0 (`jr` at 0x3ec64).

- `probe_common` in `usr/cpu/sysgen/IP35boot/kernel.o` at 0x3ec6c (n64).
  Evidence grade: established.
  Exact binary: `usr/cpu/sysgen/IP35boot/kernel.o`.
  Range: 0x3ec6c-0x3ed8c (288 bytes).
  Stores 8 bytes from t8 to ((ret(get_nasid) << 0x21) + one of 0x9200000001800400, 0x9200000001a00400) +0x0 (`sd` at 0x3ed38).
  Calls `mutex_lock` via direct with a0=sym(probe_sema), a1=0x14, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x3ec84).
  Calls `getsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3ec8c).
  Calls `setsr` via direct with a0=0x80, a1=?, a2=?, a3=? (`jal` at 0x3ec98).
  Calls `get_slice` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3eca0).
  Calls `get_nasid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3ecac).
  Calls `_badaddr_val` via direct with a0=[a0+16]:8, a1=[a0+4], a2=[a0+24]:8, a3=0x3, a4=[a0] (`jal` at 0x3ecfc).
  Calls `get_slice` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3ed08).
  Calls `get_nasid` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3ed10).
  Calls `is_buserror` via direct with a0=[a0+16]:8, a1=?, a2=?, a3=? (`jal` at 0x3ed3c).
  Calls `setsr` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x3ed50).
  Calls `mutex_unlock` via direct with a0=sym(probe_sema), a1=?, a2=?, a3=? (`jal` at 0x3ed58).
  Calls `_wbadaddr_val` via direct with a0=[a0+16]:8, a1=[a0+4], a2=[a0+24]:8, a3=0x3, a4=[a0] (`jal` at 0x3ed7c).
  At `beq` at 0x3ece4 (target 0x3ed74), taken when a4(=[a0]) == at(=0x1) and falls through when a4(=[a0]) != at(=0x1).
  At `beq` at 0x3ecec (target 0x3ed74), taken when a4(=[a0]) == a3(=0x3) and falls through when a4(=[a0]) != a3(=0x3).
  Returns v0 = ?; f0 = ret(mutex_unlock) (`jr` at 0x3ed6c).
