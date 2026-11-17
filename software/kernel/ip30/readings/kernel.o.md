# Readings: `usr/cpu/sysgen/IP30boot/kernel.o`

One entry per routine, filed here from the reading batches by binary.

- `VEC_int` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x0-0x22c (556 bytes).
  It occupies 556 bytes.
  The `ld` at 0x30 loads 8 bytes from abs 0xffffffffffffc030.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xe0, including `ld` at 0x40, `ld` at 0xc4.
  The `ld` at 0x50 loads 8 bytes from abs 0xffffffffffffc028.
  The `ld` at 0x54 loads 8 bytes from [-0x3fd8]:8 +0x98.
  The `sd` at 0x58 stores 8 bytes to abs 0xffffffffffffc018.
  The `lh` at 0x60 loads 2 bytes from [-0x3fd8]:8 +0xaa.
  4 such `sb` accesses store 1 byte to abs 0xffffffffffffc04f, including `sb` at 0x68, `sb` at 0x120, `sb` at 0x16c.
  The `ld` at 0x70 loads 8 bytes from a0 (arg0 at entry) +0x120.
  The `ld` at 0x78 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x7c loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x80 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x84 loads 8 bytes from a0 (arg0 at entry) +0x30.
  The `ld` at 0x88 loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `ld` at 0x8c loads 8 bytes from a0 (arg0 at entry) +0x40.
  The `ld` at 0x90 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x94 loads 8 bytes from a0 (arg0 at entry) +0x50.
  The `ld` at 0x98 loads 8 bytes from a0 (arg0 at entry) +0x78.
  The `ld` at 0x9c loads 8 bytes from a0 (arg0 at entry) +0x80.
  The `ld` at 0xa0 loads 8 bytes from a0 (arg0 at entry) +0x88.
  The `ld` at 0xa4 loads 8 bytes from a0 (arg0 at entry) +0x90.
  The `ld` at 0xa8 loads 8 bytes from a0 (arg0 at entry) +0x98.
  The `ld` at 0xac loads 8 bytes from a0 (arg0 at entry) +0xa0.
  The `ld` at 0xb0 loads 8 bytes from a0 (arg0 at entry) +0xa8.
  The `ld` at 0xb4 loads 8 bytes from a0 (arg0 at entry) +0xb0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xf8, including `ld` at 0xb8, `ld` at 0x12c.
  The `ld` at 0xbc loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0xc8 loads 8 bytes from a0 (arg0 at entry) +0xd8.
  The `ld` at 0xcc loads 8 bytes from a0 (arg0 at entry) +0xf0.
  2 such `lb` accesses load 1 byte from abs 0xffffffffffffc04e, including `lb` at 0xe8, `lb` at 0x1b8.
  The `ld` at 0xf4 loads 8 bytes from abs 0xffffffffffffc018.
  The `ld` at 0xf8 loads 8 bytes from [-0x3fe8]:8 +0x3e0.
  The `lw` at 0x100 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x0.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0x118, `ld` at 0x140, `ld` at 0x1a0.
  The `ld` at 0x134 loads 8 bytes from a0 (arg0 at entry) +0x118.
  The `lb` at 0x158 loads 1 byte from abs 0xffffffffffffc053.
  The `sb` at 0x168 stores 1 byte to abs 0xffffffffffffc053.
  The `lb` at 0x170 loads 1 byte from abs 0xffffffffffffc050.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc3c0, including `ld` at 0x180, `ld` at 0x20c.
  The `sb` at 0x194 stores 1 byte to abs 0xffffffffffffc050.
  The `sd` at 0x1a4 stores 8 bytes to [-0x3fe0]:8 +0x228.
  The `jal` at 0x18 calls intr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=s0 at entry, a3=a3 at entry (arg3).
  The `jal` at 0x5c calls uli_setasids with a0=[[-0x3fd8]:8+170]:2, a1=[[-0x3fd8]:8+152]:8, a2=?, a3=?.
  The `jal` at 0x6c calls tfi_restore with a0=?, a1=0x4, a2=?, a3=?.
  Calls backtouser via direct with a0=[[[-0x3fe8]:8+992]:8], a1=?, a2=?, a3=? (`j` at 0x10c).
  The `jal` at 0x124 calls ktimer_switch with a0=[-0x3fe0]:8, a1=0x1, a2=?, a3=?.
  Calls soft_trap via direct with a0=a0 at entry (arg0), a1=0x84, a2=?, a3=[a0+280]:8 (`j` at 0x138).
  The `jal` at 0x150 calls ktimer_switch with a0=[-0x3fe0]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x17c calls splhi with a0=?, a1=?, a2=?, a3=?.
  Calls resumeidle via direct with a0=0x0, a1=?, a2=?, a3=? (`j` at 0x198).
  The `jal` at 0x1c4 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1dc calls kpswtch with a0=?, a1=?, a2=?, a3=?.
  Calls exception_leave via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x1fc).
  The `jal` at 0x224 calls cmn_err with a0=0x0, a1=sym(.data), a2=?, a3=?.
  The `beq` branch at 0x38 targets 0xd4, is taken when sp(=sp) >= k0(=[-0x3fd0]:8) (unsigned), and falls through when sp(=sp) < k0(=[-0x3fd0]:8) (unsigned).
  The `beq` branch at 0x48 targets 0x1fc, is taken when k0(=[-0x3fd0]:8) >= s0(=[a0+224]:8) (signed), and falls through when k0(=[-0x3fd0]:8) < s0(=[a0+224]:8) (signed).
  The `bne` branch at 0xd4 targets 0x204, is taken when sp(?) != k0(?), and falls through when sp(?) == k0(?).
  The `beq` branch at 0xe0 targets 0x140, is taken when (s0(?) & 0x18) == 0, and falls through when (s0(?) & 0x18) != 0.
  The `bne` branch at 0xec targets 0x114, is taken when a0(=[-0x3fb2]:1) != 0, and falls through when a0(=[-0x3fb2]:1) == 0.
  The `bne` branch at 0x104 targets 0x114, is taken when a0(=[[[-0x3fe8]:8+992]:8]) != 0, and falls through when a0(=[[[-0x3fe8]:8+992]:8]) == 0.
  The `beq` branch at 0x148 targets 0x158, is taken when a0(=[-0x3fe0]:8) == 0, and falls through when a0(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0x15c targets 0x1a0, is taken when k0(=[-0x3fad]:1) == 0, and falls through when k0(=[-0x3fad]:1) != 0.
  The `beq` branch at 0x174 targets 0x1fc, is taken when k0(=[-0x3fb0]:1) == 0, and falls through when k0(=[-0x3fb0]:1) != 0.
  The `beq` branch at 0x1b0 targets 0x1fc, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0x1bc targets 0x1fc, is taken when v0(=[-0x3fb2]:1) == 0, and falls through when v0(=[-0x3fb2]:1) != 0.

- `tfp_special_int_exit` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x30 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x30-0x1dc (428 bytes).
  It occupies 428 bytes.
  The `ld` at 0x30 loads 8 bytes from abs 0xffffffffffffc030.
  25 such `ld` accesses load 8 bytes from ?, including `ld` at 0x40, `ld` at 0x70, `ld` at 0x78.
  The `ld` at 0x50 loads 8 bytes from abs 0xffffffffffffc028.
  The `ld` at 0x54 loads 8 bytes from [-0x3fd8]:8 +0x98.
  The `sd` at 0x58 stores 8 bytes to abs 0xffffffffffffc018.
  The `lh` at 0x60 loads 2 bytes from [-0x3fd8]:8 +0xaa.
  4 such `sb` accesses store 1 byte to abs 0xffffffffffffc04f, including `sb` at 0x68, `sb` at 0x120, `sb` at 0x16c.
  2 such `lb` accesses load 1 byte from abs 0xffffffffffffc04e, including `lb` at 0xe8, `lb` at 0x1b8.
  The `ld` at 0xf4 loads 8 bytes from abs 0xffffffffffffc018.
  The `ld` at 0xf8 loads 8 bytes from [-0x3fe8]:8 +0x3e0.
  The `lw` at 0x100 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x0.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0x118, `ld` at 0x140, `ld` at 0x1a0.
  The `lb` at 0x158 loads 1 byte from abs 0xffffffffffffc053.
  The `sb` at 0x168 stores 1 byte to abs 0xffffffffffffc053.
  The `lb` at 0x170 loads 1 byte from abs 0xffffffffffffc050.
  The `ld` at 0x180 loads 8 bytes from abs 0xffffffffffffc3c0.
  The `sb` at 0x194 stores 1 byte to abs 0xffffffffffffc050.
  The `sd` at 0x1a4 stores 8 bytes to [-0x3fe0]:8 +0x228.
  The `jal` at 0x5c calls uli_setasids with a0=[[-0x3fd8]:8+170]:2, a1=[[-0x3fd8]:8+152]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x6c calls tfi_restore with a0=?, a1=0x4, a2=?, a3=?.
  Calls backtouser via direct with a0=[[[-0x3fe8]:8+992]:8], a1=?, a2=?, a3=? (`j` at 0x10c).
  The `jal` at 0x124 calls ktimer_switch with a0=[-0x3fe0]:8, a1=0x1, a2=?, a3=?.
  Calls soft_trap via direct with a0=?, a1=0x84, a2=?, a3=? (`j` at 0x138).
  The `jal` at 0x150 calls ktimer_switch with a0=[-0x3fe0]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x17c calls splhi with a0=?, a1=?, a2=?, a3=?.
  Calls resumeidle via direct with a0=0x0, a1=?, a2=?, a3=? (`j` at 0x198).
  The `jal` at 0x1c4 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x38 targets 0xd4, is taken when sp(=sp) >= k0(=[-0x3fd0]:8) (unsigned), and falls through when sp(=sp) < k0(=[-0x3fd0]:8) (unsigned).
  The `beq` branch at 0x48 targets 0x1fc, is taken when k0(=[-0x3fd0]:8) >= s0(?) (signed), and falls through when k0(=[-0x3fd0]:8) < s0(?) (signed).
  The `bne` branch at 0xd4 targets 0x204, is taken when sp(?) != k0(?), and falls through when sp(?) == k0(?).
  The `beq` branch at 0xe0 targets 0x140, is taken when (s0(?) & 0x18) == 0, and falls through when (s0(?) & 0x18) != 0.
  The `bne` branch at 0xec targets 0x114, is taken when a0(=[-0x3fb2]:1) != 0, and falls through when a0(=[-0x3fb2]:1) == 0.
  The `bne` branch at 0x104 targets 0x114, is taken when a0(=[[[-0x3fe8]:8+992]:8]) != 0, and falls through when a0(=[[[-0x3fe8]:8+992]:8]) == 0.
  The `beq` branch at 0x148 targets 0x158, is taken when a0(=[-0x3fe0]:8) == 0, and falls through when a0(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0x15c targets 0x1a0, is taken when k0(=[-0x3fad]:1) == 0, and falls through when k0(=[-0x3fad]:1) != 0.
  The `beq` branch at 0x174 targets 0x1fc, is taken when k0(=[-0x3fb0]:1) == 0, and falls through when k0(=[-0x3fb0]:1) != 0.
  The `beq` branch at 0x1b0 targets 0x1fc, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0x1bc targets 0x1fc, is taken when v0(=[-0x3fb2]:1) == 0, and falls through when v0(=[-0x3fb2]:1) != 0.

- `kpreemption` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1dc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1dc-0x22c (80 bytes).
  It occupies 80 bytes.
  The `jal` at 0x1dc calls kpswtch with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  Calls exception_leave via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x1fc).
  The instructions from 0x204 to 0x228 are not reached by any path from the entry, and their branches are not listed.

- `arcs_write` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x22c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x22c-0x284 (88 bytes).
  It occupies 88 bytes.
  The `ld` at 0x26c loads 8 bytes from abs 0xa800000000001040.
  The `ld` at 0x270 loads 8 bytes from [0xa800000000001040]:8 +0xd8.
  The `jal` at 0x24c calls ioc_console_write with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=a3 at entry (arg3), a6=a2 at entry (arg2).
  The `jalr` at 0x274 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=a2 at entry (arg2).
  The `beq` branch at 0x23c targets 0x268, is taken when at(=[sym(_prom_cleared)]) == 0, and falls through when at(=[sym(_prom_cleared)]) != 0.
  The `beq` branch at 0x27c targets 0x258 and is always taken.
  The return at 0x260 has v0 = one of ret(ioc_console_write), ret(?).

- `arcs_load` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x284 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x284-0x2e4 (96 bytes).
  It occupies 96 bytes.
  The `ld` at 0x2a8 loads 8 bytes from abs 0xa800000000001040.
  The `ld` at 0x2ac loads 8 bytes from [0xa800000000001040]:8 +0x0.
  The `jalr` at 0x2b0 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2c8 calls cmn_err with a0=0x0, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x29c targets 0x2c4, is taken when at(=[sym(_prom_cleared)]) != 0, and falls through when at(=[sym(_prom_cleared)]) == 0.
  The `beq` branch at 0x2dc targets 0x2a4 and is always taken.
  The return at 0x2bc has v0 = ret(?).

- `prom_autoboot` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x2e4
  **Inferred.** Is a short routine: it calls `silence_bell` at 0x2ec, calls `prom_reinit` at 0x300 only when the global `power_off_flag` is nonzero, and then makes an indirect call at 0x314 through a pointer loaded at offset +0x30 from a pointer loaded at +0x0 (the base is not resolved), with no arguments set up in the facts. Its return at 0x320 is the value of that unnamed call. The name points to starting the PROM autoboot path, but the facts do not show what the indirect call reaches.
  Reviewed: 2026-11-12

- `prom_reinit` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x328 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x328-0x380 (88 bytes).
  It occupies 88 bytes.
  The `lh` at 0x32c loads 2 bytes from abs 0xffffffffffffc3a0.
  The `ld` at 0x364 loads 8 bytes from abs 0xa800000000001040.
  The `ld` at 0x368 loads 8 bytes from [0xa800000000001040]:8 +0x28.
  The `jal` at 0x33c calls silence_bell with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x344 calls set_autopoweron with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x358 calls cpu_soft_powerdown with a0=0xa800000000001040, a1=?, a2=?, a3=?.
  The `jalr` at 0x36c calls (unknown callee) with a0=[[0xa800000000001040]:8+40]:8, a1=?, a2=?, a3=?.
  The `bne` branch at 0x334 targets 0x360, is taken when at(=[-0x3c60]:2) != v0(=[sym(master_procid)]:2), and falls through when at(=[-0x3c60]:2) == v0(=[sym(master_procid)]:2).
  The `beq` branch at 0x350 targets 0x364, is taken when v1(=[sym(power_off_flag)]) == 0, and falls through when v1(=[sym(power_off_flag)]) != 0.
  The return at 0x378 has v0 = ret(?).

- `arcs_setuproot` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x380 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x380-0x3c8 (72 bytes).
  It occupies 72 bytes.
  The `jal` at 0x38c calls kopt_find with a0=sym(.rodata), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3a0 calls arcs_to_dsk [0x458] with a0=ret(kopt_find), a1=sp-32, a2=?, a3=?.
  The `jal` at 0x3b4 calls kopt_set with a0=sym(.rodata), a1=sp-32, a2=?, a3=?.
  The `beq` branch at 0x394 targets 0x3c0, is taken when v0(=ret(kopt_find)) == 0, and falls through when v0(=ret(kopt_find)) != 0.
  The `beq` branch at 0x3a8 targets 0x3bc, is taken when v0(=ret(arcs_to_dsk)) == 0, and falls through when v0(=ret(arcs_to_dsk)) != 0.
  The return at 0x3c0 has v0 = one of ret(kopt_find), ?.

- `arcs_getenv` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x3c8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x3c8-0x3f0 (40 bytes).
  It occupies 40 bytes.
  The `ld` at 0x3cc loads 8 bytes from abs 0xa800000000001040.
  The `ld` at 0x3d0 loads 8 bytes from [0xa800000000001040]:8 +0xf0.
  The `jalr` at 0x3dc calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x3e8 has v0 = ret(?).

- `arcs_nvram_tab` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x3f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x3f0-0x418 (40 bytes).
  It occupies 40 bytes.
  The `ld` at 0x3f4 loads 8 bytes from abs 0xa800000000001050.
  The `ld` at 0x3f8 loads 8 bytes from [0xa800000000001050]:8 +0x8.
  The `jalr` at 0x404 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x410 has v0 = ret(?).

- `arcs_eaddr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x418 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x418-0x43c (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0x428 calls bcopy with a0=sym(eaddr), a1=a0 at entry (arg0), a2=0x6, a3=a3 at entry (arg3).
  The return at 0x434 has v0 = ret(bcopy).

- `arcs_to_dsk` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x458 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x458-0x6a0 (584 bytes).
  It occupies 584 bytes.
  The `lbu` at 0x49c loads 1 byte from a0 (arg0 at entry) +0x0.
  5 such `lbu` accesses load 1 byte from ret(strchr) +0x1, including `lbu` at 0x4c4, `lbu` at 0x4ec, `lbu` at 0x57c.
  The `jal` at 0x478 calls strncmp with a0=sym(.rodata), a1=a0 at entry (arg0), a2=0x4, a3=a3 at entry (arg3).
  The `jal` at 0x4b4 calls strchr with a0=ret(strchr)+1, a1=0x29, a2=?, a3=?.
  The `jal` at 0x4d8 calls strchr with a0=?, a1=0x28, a2=?, a3=?.
  The `jal` at 0x514 calls strncmp with a0=sym(.rodata), a1=?, a2=0x4, a3=?.
  The `jal` at 0x530 calls strncmp with a0=sym(.rodata), a1=?, a2=0x4, a3=?.
  The `jal` at 0x548 calls strncmp with a0=sym(.rodata), a1=?, a2=0x4, a3=?.
  The `jal` at 0x558 calls atoi with a0=ret(strchr)+1, a1=?, a2=?, a3=?.
  The `jal` at 0x56c calls strchr with a0=a0 at entry (arg0), a1=0x28, a2=?, a3=?.
  The `jal` at 0x588 calls atoi with a0=ret(strchr)+1, a1=[ret(strchr)+1]:1, a2=?, a3=?.
  The `jal` at 0x598 calls strchr with a0=ret(strchr)+1, a1=0x2c, a2=?, a3=?.
  The `jal` at 0x5b4 calls atoi with a0=ret(strchr)+1, a1=?, a2=[ret(strchr)+1]:1, a3=?.
  The `jal` at 0x5c4 calls strchr with a0=ret(strchr)+1, a1=0x2c, a2=?, a3=?.
  The `jal` at 0x5e0 calls atoi with a0=ret(strchr)+1, a1=?, a2=?, a3=[ret(strchr)+1]:1.
  The `jal` at 0x5f0 calls strchr with a0=a0 at entry (arg0), a1=0x29, a2=?, a3=?.
  The `jal` at 0x618 calls sprintf with a0=a1 at entry (arg1), a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x660 calls atoi with a0=ret(strchr)+1, a1=?, a2=?, a3=?.
  The `jal` at 0x670 calls atoi with a0=ret(strchr)+1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x494 targets 0x568, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0x4a0 targets 0x650, is taken when a1(=[a0]:1) == 0, and falls through when a1(=[a0]:1) != 0.
  The `beq` branch at 0x4a8 targets 0x4d4 and is always taken.
  The `beq` branch at 0x4bc targets 0x658, is taken when v0(=ret(strchr)) == 0, and falls through when v0(=ret(strchr)) != 0.
  The `beq` branch at 0x4cc targets 0x600, is taken when a2(=[ret(strchr)+1]:1) == 0, and falls through when a2(=[ret(strchr)+1]:1) != 0.
  The `beq` branch at 0x4e0 targets 0x628, is taken when v0(=ret(strchr)) == 0, and falls through when v0(=ret(strchr)) != 0.
  The `beq` branch at 0x4f8 targets 0x628, is taken when v1(=[ret(strchr)+1]:1) == 0, and falls through when v1(=[ret(strchr)+1]:1) != 0.
  The `bne` branch at 0x504 targets 0x4b0, is taken when v0(?) < 0x4 (signed), and falls through when v0(?) >= 0x4 (signed).
  The `beq` branch at 0x51c targets 0x660, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0x538 targets 0x670, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `bne` branch at 0x550 targets 0x4b4, is taken when v0(=ret(strncmp)) != 0, and falls through when v0(=ret(strncmp)) == 0.
  The `beq` branch at 0x560 targets 0x4b0 and is always taken.
  The `beq` branch at 0x574 targets 0x680, is taken when v0(=ret(strchr)) == 0, and falls through when v0(=ret(strchr)) != 0.
  The `beq` branch at 0x580 targets 0x680, is taken when a1(=[ret(strchr)+1]:1) == 0, and falls through when a1(=[ret(strchr)+1]:1) != 0.
  The `beq` branch at 0x5a0 targets 0x688, is taken when v0(=ret(strchr)) == 0, and falls through when v0(=ret(strchr)) != 0.
  The `beq` branch at 0x5ac targets 0x688, is taken when a2(=[ret(strchr)+1]:1) == 0, and falls through when a2(=[ret(strchr)+1]:1) != 0.
  The `beq` branch at 0x5cc targets 0x690, is taken when v0(=ret(strchr)) == 0, and falls through when v0(=ret(strchr)) != 0.
  The `beq` branch at 0x5d8 targets 0x690, is taken when a3(=[ret(strchr)+1]:1) == 0, and falls through when a3(=[ret(strchr)+1]:1) != 0.
  The `beq` branch at 0x5f8 targets 0x698, is taken when v0(=ret(strchr)) == 0, and falls through when v0(=ret(strchr)) != 0.
  The `beq` branch at 0x600 targets 0x650, is taken when s3(?) == a4(=-0x1), and falls through when s3(?) != a4(=-0x1).
  The `beq` branch at 0x620 targets 0x62c and is always taken.
  The `beq` branch at 0x650 targets 0x62c and is always taken.
  The `beq` branch at 0x658 targets 0x62c and is always taken.
  The `beq` branch at 0x668 targets 0x4b0 and is always taken.
  The `beq` branch at 0x678 targets 0x4b0 and is always taken.
  The `beq` branch at 0x680 targets 0x62c and is always taken.
  The `beq` branch at 0x688 targets 0x62c and is always taken.
  The `beq` branch at 0x690 targets 0x62c and is always taken.
  The `beq` branch at 0x698 targets 0x62c and is always taken.
  The return at 0x648 has v0 = one of 0x0, 0x1.

- `exception_exit` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6a0-0x978 (728 bytes).
  It occupies 728 bytes.
  3 such `lwu` accesses load 4 bytes from abs 0xffffffffffffd00c, including `lwu` at 0x6a4, `lwu` at 0x718, `lwu` at 0x794.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffd000, including `ld` at 0x6c4, `ld` at 0x7d4.
  The `sd` at 0x6c8 stores 8 bytes to [-0x3000]:8 +0x48.
  The `sd` at 0x6d4 stores 8 bytes to [-0x3000]:8 +0x0.
  The `sd` at 0x6dc stores 8 bytes to [-0x3000]:8 +0x8.
  The `sd` at 0x6e4 stores 8 bytes to [-0x3000]:8 +0x10.
  The `sd` at 0x6ec stores 8 bytes to [-0x3000]:8 +0x18.
  The `sd` at 0x6f0 stores 8 bytes to [-0x3000]:8 +0x20.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x6f4, `ld` at 0x8e0.
  The `sd` at 0x6f8 stores 8 bytes to [-0x3000]:8 +0x28.
  The `sd` at 0x6fc stores 8 bytes to [-0x3000]:8 +0x30.
  The `sd` at 0x704 stores 8 bytes to [-0x3000]:8 +0x38.
  The `lwu` at 0x708 loads 4 bytes from abs 0xffffffffffffd008.
  The `sw` at 0x710 stores 4 bytes to abs 0xffffffffffffd008.
  The `sd` at 0x714 stores 8 bytes to [-0x3000]:8 +0x40.
  The `sd` at 0x728 stores 8 bytes to [-0x3000]:8 +0x50.
  The `sd` at 0x72c stores 8 bytes to [-0x3000]:8 +0x58.
  The `sd` at 0x730 stores 8 bytes to [-0x3000]:8 +0x60.
  The `sd` at 0x734 stores 8 bytes to [-0x3000]:8 +0x68.
  The `sd` at 0x738 stores 8 bytes to [-0x3000]:8 +0x70.
  The `sd` at 0x73c stores 8 bytes to [-0x3000]:8 +0x78.
  The `sd` at 0x740 stores 8 bytes to [-0x3000]:8 +0x80.
  The `sd` at 0x744 stores 8 bytes to [-0x3000]:8 +0x88.
  The `sd` at 0x748 stores 8 bytes to [-0x3000]:8 +0x90.
  The `sd` at 0x74c stores 8 bytes to [-0x3000]:8 +0x98.
  The `sd` at 0x750 stores 8 bytes to [-0x3000]:8 +0xa0.
  The `sd` at 0x754 stores 8 bytes to [-0x3000]:8 +0xa8.
  The `sd` at 0x758 stores 8 bytes to [-0x3000]:8 +0xb0.
  The `sd` at 0x75c stores 8 bytes to [-0x3000]:8 +0xb8.
  The `sd` at 0x760 stores 8 bytes to [-0x3000]:8 +0xc0.
  The `sd` at 0x764 stores 8 bytes to [-0x3000]:8 +0xc8.
  The `sd` at 0x768 stores 8 bytes to [-0x3000]:8 +0xd0.
  The `sd` at 0x76c stores 8 bytes to [-0x3000]:8 +0xd8.
  The `sd` at 0x770 stores 8 bytes to [-0x3000]:8 +0xe0.
  The `sd` at 0x774 stores 8 bytes to [-0x3000]:8 +0xe8.
  The `sd` at 0x778 stores 8 bytes to [-0x3000]:8 +0xf0.
  The `sd` at 0x77c stores 8 bytes to [-0x3000]:8 +0xf8.
  The `sd` at 0x780 stores 8 bytes to [-0x3000]:8 +0x100.
  The `sd` at 0x784 stores 8 bytes to [-0x3000]:8 +0x108.
  The `sd` at 0x788 stores 8 bytes to [-0x3000]:8 +0x110.
  The `sd` at 0x78c stores 8 bytes to [-0x3000]:8 +0x118.
  The `sd` at 0x790 stores 8 bytes to [-0x3000]:8 +0x120.
  3 such `ld` accesses load 8 bytes from [-0x3000]:8 +0x30, including `ld` at 0x7a4, `ld` at 0x7d8, `ld` at 0x8a0.
  2 such `lwu` accesses load 4 bytes from abs 0xffffffffffffd014, including `lwu` at 0x7c0, `lwu` at 0x804.
  The `ld` at 0x7cc loads 8 bytes from abs 0xffffffffffffc3c0.
  The `sd` at 0x800 stores 8 bytes to [-0x3000]:8 +0x128.
  The `sd` at 0x828 stores 8 bytes to ([-0x3000]:8+296 + [-0x2fec]-8) +0x0.
  The `ld` at 0x830 loads 8 bytes from [-0x3000]:8 +0x50.
  The `ld` at 0x834 loads 8 bytes from [-0x3000]:8 +0x58.
  The `ld` at 0x838 loads 8 bytes from [-0x3000]:8 +0x60.
  The `ld` at 0x83c loads 8 bytes from [-0x3000]:8 +0x68.
  The `ld` at 0x840 loads 8 bytes from [-0x3000]:8 +0x70.
  The `ld` at 0x844 loads 8 bytes from [-0x3000]:8 +0x78.
  The `ld` at 0x848 loads 8 bytes from [-0x3000]:8 +0x80.
  The `ld` at 0x84c loads 8 bytes from [-0x3000]:8 +0x88.
  The `ld` at 0x850 loads 8 bytes from [-0x3000]:8 +0x90.
  The `ld` at 0x854 loads 8 bytes from [-0x3000]:8 +0x98.
  The `ld` at 0x858 loads 8 bytes from [-0x3000]:8 +0xa0.
  The `ld` at 0x85c loads 8 bytes from [-0x3000]:8 +0xa8.
  The `ld` at 0x860 loads 8 bytes from [-0x3000]:8 +0xb0.
  The `ld` at 0x864 loads 8 bytes from [-0x3000]:8 +0xb8.
  The `ld` at 0x868 loads 8 bytes from [-0x3000]:8 +0xc0.
  The `ld` at 0x86c loads 8 bytes from [-0x3000]:8 +0xc8.
  The `ld` at 0x870 loads 8 bytes from [-0x3000]:8 +0xd0.
  The `ld` at 0x874 loads 8 bytes from [-0x3000]:8 +0xd8.
  The `ld` at 0x878 loads 8 bytes from [-0x3000]:8 +0xe0.
  The `ld` at 0x87c loads 8 bytes from [-0x3000]:8 +0xe8.
  The `ld` at 0x880 loads 8 bytes from [-0x3000]:8 +0xf0.
  The `ld` at 0x884 loads 8 bytes from [-0x3000]:8 +0xf8.
  The `ld` at 0x888 loads 8 bytes from [-0x3000]:8 +0x100.
  The `ld` at 0x88c loads 8 bytes from [-0x3000]:8 +0x108.
  The `ld` at 0x890 loads 8 bytes from [-0x3000]:8 +0x110.
  The `ld` at 0x894 loads 8 bytes from [-0x3000]:8 +0x118.
  The `ld` at 0x898 loads 8 bytes from [-0x3000]:8 +0x120.
  The `ld` at 0x89c loads 8 bytes from [-0x3000]:8 +0x20.
  The `lwu` at 0x8a4 loads 4 bytes from abs 0xffffffffffffd010.
  The `sd` at 0x8c0 stores 8 bytes to abs 0xffffffffffffd000.
  The `lb` at 0x8d4 loads 1 byte from abs 0xffffffffffffc04e.
  The `ld` at 0x8e4 loads 8 bytes from [-0x3fe8]:8 +0x3e0.
  The `lw` at 0x8ec loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x0.
  22 such `ld` accesses load 8 bytes from ?, including `ld` at 0x904, `ld` at 0x918, `ld` at 0x91c.
  The `jal` at 0x6b8 calls getpc with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x7d0 calls bcopy with a0=([[-0x3000]:8+48]:8 + [-0x2fec]), a1=[-0x3000]:8+296, a2=[-0x2fec], a3=?.
  Calls backtouser via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x8f8).
  Calls soft_trap via direct with a0=?, a1=0x84, a2=?, a3=? (`j` at 0x908).
  The `jal` at 0x910 calls tfi_restore with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x6ac targets 0x8c4, is taken when (k0(=[-0x2ff4]) & 0x1) == 0, and falls through when (k0(=[-0x2ff4]) & 0x1) != 0.
  The `beq` branch at 0x720 targets 0x8a4, is taken when (k0(=[-0x2ff4]) & 0x2) == 0, and falls through when (k0(=[-0x2ff4]) & 0x2) != 0.
  The `beq` branch at 0x79c targets 0x8a4, is taken when (k0(=[-0x2ff4]) & 0x4) == 0, and falls through when (k0(=[-0x2ff4]) & 0x4) != 0.
  The `bne` branch at 0x7b8 targets 0x7e4, is taken when a1(?) != a2(=-0x8000), and falls through when a1(?) == a2(=-0x8000).
  The `beq` branch at 0x7dc targets 0x82c and is always taken.
  The `bne` branch at 0x8b4 targets 0x8c0, is taken when k1(=([-0x3000]:8 + [-0x2ff0])) < k0(=-0x1001) (signed), and falls through when k1(=([-0x3000]:8 + [-0x2ff0])) >= k0(=-0x1001) (signed).
  The `beq` branch at 0x8cc targets 0x910, is taken when (s0(?) & 0x18) == 0, and falls through when (s0(?) & 0x18) != 0.
  The `bne` branch at 0x8d8 targets 0x900, is taken when k0(=[-0x3fb2]:1) != 0, and falls through when k0(=[-0x3fb2]:1) == 0.
  The `bne` branch at 0x8f0 targets 0x900, is taken when k0(=[[[-0x3fe8]:8+992]:8]) != 0, and falls through when k0(=[[[-0x3fe8]:8+992]:8]) == 0.

- `exception_leave` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x910 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x910-0x980 (112 bytes).
  It occupies 112 bytes.
  21 such `ld` accesses load 8 bytes from ?, including `ld` at 0x918, `ld` at 0x91c, `ld` at 0x920.
  The `jal` at 0x910 calls tfi_restore with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).

- `unmaptlb` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x980 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x980-0x9f8 (120 bytes).
  It occupies 120 bytes.
  The `lh` at 0x994 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `lbu` at 0x99c loads 1 byte from (a0 + [-0x3c60]:2) +0x0.
  The `beq` branch at 0x98c targets 0x9a0, is taken when a0 == 0, and falls through when a0 != 0.
  The `bltz` branch at 0x9c4 targets 0x9e8, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The return at 0x9f0 has v0 = one of 0x0, ?.

- `invaltlb` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x9f8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x9f8-0xa34 (60 bytes).
  It occupies 60 bytes.
  The return at 0xa2c has v0 = ?.

- `tlbwired` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa34 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa34-0xa9c (104 bytes).
  It occupies 104 bytes.
  The `lh` at 0xa4c loads 2 bytes from abs 0xffffffffffffc3a0.
  The `lbu` at 0xa54 loads 1 byte from (a1 + [-0x3c60]:2) +0x0.
  The `beq` branch at 0xa44 targets 0xa58, is taken when a1 == 0, and falls through when a1 != 0.
  The return at 0xa94 has v0 = ?.

- `tlbdropin` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa9c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa9c-0xb78 (220 bytes).
  It occupies 220 bytes.
  The `lh` at 0xac4 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `lbu` at 0xacc loads 1 byte from (a0 + [-0x3c60]:2) +0x0.
  The `beq` branch at 0xaac targets 0xad0, is taken when a0 == 0, and falls through when a0 != 0.
  The `bne` branch at 0xab4 targets 0xac4, is taken when a0 != at(=0x1), and falls through when a0 == at(=0x1).
  The `beq` branch at 0xabc targets 0xad0 and is always taken.
  The `bltz` branch at 0xaf0 targets 0xb44, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The `beq` branch at 0xafc targets 0xb18, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0xb10 targets 0xb28 and is always taken.
  The `beq` branch at 0xb44 targets 0xb5c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0xb54 targets 0xb64 and is always taken.
  The return at 0xb3c has v0 = ?.
  The return at 0xb70 has v0 = 0x0.

- `tlbdrop2in` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb78 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb78-0xbd4 (92 bytes).
  It occupies 92 bytes.
  The `bltz` branch at 0xbac targets 0xbc0, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The `beq` branch at 0xbb8 targets 0xbc4 and is always taken.
  The return at 0xbcc has v0 = 0x0.

- `tlbdropin_lpgs` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbd4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbd4-0xc50 (124 bytes).
  It occupies 124 bytes.
  The `bltz` branch at 0xc24 targets 0xc38, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0xc30 targets 0xc3c and is always taken.
  The return at 0xc48 has v0 = ?.

- `flush_tlb` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc50-0xc98 (72 bytes).
  It occupies 72 bytes.
  The `bne` branch at 0xc84 targets 0xc7c, is taken when a0(?) != v1(=0x40), and falls through when a0(?) == v1(=0x40).
  The return at 0xc90 has v0 = ?.

- `set_tlbpid` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc98 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc98-0xce4 (76 bytes).
  It occupies 76 bytes.
  The `bne` branch at 0xcd0 targets 0xcac, is taken when t3(=0x1) < t1(?) (signed), and falls through when t3(=0x1) >= t1(?) (signed).
  The return at 0xcdc has v0 = ?.

- `tlbfind` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xce4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xce4-0xd4c (104 bytes).
  It occupies 104 bytes.
  The `sd` at 0xd1c stores 8 bytes to a2 (arg2 at entry) +0x0.
  The `sd` at 0xd24 stores 8 bytes to a3 (arg3 at entry) +0x0.
  The `bltz` branch at 0xd0c targets 0xd30, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `beq` branch at 0xd28 targets 0xd34 and is always taken.
  The return at 0xd44 has v0 = one of ?, -0x1.

- `tlbgetpid` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd4c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd4c-0xd58 (12 bytes).
  It occupies 12 bytes.
  The return at 0xd50 has v0 = ?.

- `tlbgetent` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd58 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd58-0xda0 (72 bytes).
  It occupies 72 bytes.
  The `sd` at 0xd74 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0xd7c stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `sw` at 0xd84 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The return at 0xd98 has v0 = ?.

- `getrand` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xda0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xda0-0xdac (12 bytes).
  It occupies 12 bytes.
  The return at 0xda4 has v0 = ?.

- `tlbgetrand` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xda0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xda0-0xdac (12 bytes).
  It occupies 12 bytes.
  The return at 0xda4 has v0 = ?.

- `tlb_probe` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdac (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdac-0xe24 (120 bytes).
  It occupies 120 bytes.
  The `sw` at 0xde8 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `bltz` branch at 0xdd8 targets 0xe0c, is taken when t1(?) < 0 (signed), and falls through when t1(?) >= 0 (signed).
  The `bne` branch at 0xe00 targets 0xe0c, is taken when (t1(?) & a1) != 0, and falls through when (t1(?) & a1) == 0.
  The return at 0xe1c has v0 = one of -0x1, ?.

- `save` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe30 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe30-0xe6c (60 bytes).
  It occupies 60 bytes.
  The `sd` at 0xe30 stores 8 bytes to a0 (arg0 at entry) +0x50.
  The `sd` at 0xe34 stores 8 bytes to a0 (arg0 at entry) +0x40.
  The `sd` at 0xe38 stores 8 bytes to a0 (arg0 at entry) +0x48.
  The `sd` at 0xe40 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `sd` at 0xe44 stores 8 bytes to a0 (arg0 at entry) +0x8.
  The `sd` at 0xe48 stores 8 bytes to a0 (arg0 at entry) +0x10.
  The `sd` at 0xe4c stores 8 bytes to a0 (arg0 at entry) +0x18.
  The `sd` at 0xe50 stores 8 bytes to a0 (arg0 at entry) +0x58.
  The `sd` at 0xe58 stores 8 bytes to a0 (arg0 at entry) +0x20.
  The `sd` at 0xe5c stores 8 bytes to a0 (arg0 at entry) +0x28.
  The `sd` at 0xe60 stores 8 bytes to a0 (arg0 at entry) +0x30.
  The `sd` at 0xe68 stores 8 bytes to a0 (arg0 at entry) +0x38.
  The return at 0xe64 has v0 = 0x0.

- `resume` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe6c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe6c-0xf40 (212 bytes).
  It occupies 212 bytes.
  The `sb` at 0xe88 stores 1 byte to abs 0xffffffffffffc04f.
  The `sb` at 0xe8c stores 1 byte to a1 (arg1 at entry) +0x72.
  The `sb` at 0xe90 stores 1 byte to a0 (arg0 at entry) +0x72.
  The `sd` at 0xe94 stores 8 bytes to abs 0xffffffffffffc020.
  The `sd` at 0xe98 stores 8 bytes to abs 0xffffffffffffc018.
  The `ld` at 0xe9c loads 8 bytes from a0 (arg0 at entry) +0x3e8.
  The `sd` at 0xea0 stores 8 bytes to abs 0xffffffffffffc4b0.
  The `ld` at 0xeb0 loads 8 bytes from abs 0xffffffffffffc4a8.
  The `ld` at 0xebc loads 8 bytes from a0 (arg0 at entry) +0x3e0.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0xed0, `ld` at 0xed8, `ld` at 0xedc.
  The `ld` at 0xf04 loads 8 bytes from a0 (arg0 at entry) +0x50.
  The `ld` at 0xf08 loads 8 bytes from a0 (arg0 at entry) +0x40.
  The `ld` at 0xf0c loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0xf10 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0xf14 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0xf18 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ld` at 0xf1c loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0xf20 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0xf24 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0xf28 loads 8 bytes from a0 (arg0 at entry) +0x58.
  The `ld` at 0xf2c loads 8 bytes from a0 (arg0 at entry) +0x30.
  The `ld` at 0xf30 loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `beq` branch at 0xe84 targets 0xe90, is taken when a1 == 0, and falls through when a1 != 0.
  The `bne` branch at 0xefc targets 0xed0, is taken when t3(?) != s0(=0x6), and falls through when t3(?) == s0(=0x6).
  The return at 0xf38 has v0 = 0x1.

- `resumethread` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xf40 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xf40-0xfa8 (104 bytes).
  It occupies 104 bytes.
  The `sb` at 0xf54 stores 1 byte to a0 (arg0 at entry) +0x72.
  The `sd` at 0xf58 stores 8 bytes to abs 0xffffffffffffc020.
  The `sd` at 0xf5c stores 8 bytes to abs 0xffffffffffffc018.
  The `sb` at 0xf60 stores 1 byte to abs 0xffffffffffffc04f.
  The `ld` at 0xf68 loads 8 bytes from a0 (arg0 at entry) +0x40.
  The `sb` at 0xf70 stores 1 byte to a1 (arg1 at entry) +0x72.
  The `ld` at 0xf74 loads 8 bytes from a0 (arg0 at entry) +0x50.
  The `ld` at 0xf78 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0xf7c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0xf80 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0xf84 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ld` at 0xf88 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0xf8c loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0xf90 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0xf94 loads 8 bytes from a0 (arg0 at entry) +0x30.
  The `ld` at 0xf98 loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `beq` branch at 0xf64 targets 0xf74, is taken when a0 == a1, and falls through when a0 != a1.
  The `bnel` branch at 0xf6c targets 0xf74, is taken when a1 != 0, and falls through when a1 == 0; its branch-likely delay slot `sb zero,114(a1)` at 0xf70 runs only when taken and is annulled on fall-through.

- `restartxthread` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xfa8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xfa8-0xfe8 (64 bytes).
  It occupies 64 bytes.
  The `sb` at 0xfbc stores 1 byte to a0 (arg0 at entry) +0x72.
  The `sd` at 0xfc0 stores 8 bytes to abs 0xffffffffffffc020.
  The `sd` at 0xfc4 stores 8 bytes to abs 0xffffffffffffc018.
  The `sb` at 0xfc8 stores 1 byte to abs 0xffffffffffffc04f.
  The `sb` at 0xfd8 stores 1 byte to a2 (arg2 at entry) +0x72.
  Calls xthread_prologue via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xfe0).
  The `beq` branch at 0xfcc targets 0xfdc, is taken when a0 == a2, and falls through when a0 != a2.
  The `bnel` branch at 0xfd4 targets 0xfdc, is taken when a2 != 0, and falls through when a2 == 0; its branch-likely delay slot `sb zero,114(a2)` at 0xfd8 runs only when taken and is annulled on fall-through.

- `loopxthread` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xfe8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xfe8-0xff0 (8 bytes).
  It occupies 8 bytes.
  Calls xthread_loop_prologue via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xfe8).

- `sthread_launch` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xff0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xff0-0x1014 (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0xff0 calls spl0 with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x1004 calls (unknown callee) with a0=s0 at entry, a1=s1 at entry, a2=s2 at entry, a3=s3 at entry.
  The `jal` at 0x100c calls sthread_exit with a0=?, a1=?, a2=?, a3=?.

- `p0_launch` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1014 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1014-0x102c (24 bytes).
  It occupies 24 bytes.
  The `jal` at 0x1014 calls spl0 with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x101c calls p0 with a0=?, a1=?, a2=?, a3=?.
  Calls proc1 via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x1024).

- `resumeidle` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x102c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x102c-0x1070 (68 bytes).
  It occupies 68 bytes.
  The `sb` at 0x103c stores 1 byte to abs 0xffffffffffffc04f.
  The `ld` at 0x1040 loads 8 bytes from abs 0xffffffffffffc3c0.
  The `sb` at 0x104c stores 1 byte to a0 (arg0 at entry) +0x72.
  The `sd` at 0x1050 stores 8 bytes to abs 0xffffffffffffc020.
  The `sd` at 0x1054 stores 8 bytes to abs 0xffffffffffffc018.
  The `jal` at 0x105c calls idle with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1068 calls resumenewthread with a0=ret(idle), a1=0x0, a2=?, a3=?.
  The `beq` branch at 0x1044 targets 0x1050, is taken when a0 == 0, and falls through when a0 != 0.

- `toidlestk` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1070 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1070-0x10ac (60 bytes).
  It occupies 60 bytes.
  The `ld` at 0x1080 loads 8 bytes from abs 0xffffffffffffc3c0.
  The `sb` at 0x1084 stores 1 byte to abs 0xffffffffffffc04f.
  The `sd` at 0x1088 stores 8 bytes to abs 0xffffffffffffc020.
  The `sd` at 0x108c stores 8 bytes to abs 0xffffffffffffc018.
  The `sb` at 0x1090 stores 1 byte to a0 (arg0 at entry) +0x72.
  Calls (unknown callee) via register with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x10a4).

- `setjmp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x10ac (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x10ac-0x10e8 (60 bytes).
  It occupies 60 bytes.
  The `sd` at 0x10ac stores 8 bytes to a0 (arg0 at entry) +0x50.
  The `sd` at 0x10b0 stores 8 bytes to a0 (arg0 at entry) +0x40.
  The `sd` at 0x10b4 stores 8 bytes to a0 (arg0 at entry) +0x48.
  The `sd` at 0x10b8 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `sd` at 0x10bc stores 8 bytes to a0 (arg0 at entry) +0x8.
  The `sd` at 0x10c0 stores 8 bytes to a0 (arg0 at entry) +0x10.
  The `sd` at 0x10c4 stores 8 bytes to a0 (arg0 at entry) +0x18.
  The `sd` at 0x10c8 stores 8 bytes to a0 (arg0 at entry) +0x20.
  The `sd` at 0x10cc stores 8 bytes to a0 (arg0 at entry) +0x28.
  The `sd` at 0x10d0 stores 8 bytes to a0 (arg0 at entry) +0x30.
  The `sd` at 0x10d4 stores 8 bytes to a0 (arg0 at entry) +0x38.
  The `sd` at 0x10dc stores 8 bytes to a0 (arg0 at entry) +0x58.
  The return at 0x10e0 has v0 = 0x0.

- `longjmp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x10e8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x10e8-0x1124 (60 bytes).
  It occupies 60 bytes.
  The `ld` at 0x10e8 loads 8 bytes from a0 (arg0 at entry) +0x50.
  The `ld` at 0x10ec loads 8 bytes from a0 (arg0 at entry) +0x40.
  The `ld` at 0x10f0 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x10f4 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0x10f8 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x10fc loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ld` at 0x1100 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x1104 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x1108 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x110c loads 8 bytes from a0 (arg0 at entry) +0x30.
  The `ld` at 0x1110 loads 8 bytes from a0 (arg0 at entry) +0x58.
  The `ld` at 0x1114 loads 8 bytes from a0 (arg0 at entry) +0x38.
  The return at 0x111c has v0 = 0x1.

- `dma_mapinit` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.

- `ackkgclock` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.

- `allowintrs` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.

- `apsfail` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.

- `bump_leds` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.

- `check_delay_iflush` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.

- `disallowboot` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.

- `dummy_func` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.

- `heart_dcache_inval` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.

- `heart_dcache_wb_inval` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.

- `heart_write_dcache_inval` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.

- `heart_write_dcache_wb_inval` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.

- `stopkgclock` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.

- `vme_init` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.

- `vme_ivec_init` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.

- `wd93_init` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1180 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1180-0x1188 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1180 has v0 = ?.

- `dcache_wb` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1188 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1188-0x1194 (12 bytes).
  It occupies 12 bytes.
  Calls cache_operation via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x21003, a3=a3 at entry (arg3) (`j` at 0x118c).

- `dcache_wbinval` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1188 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1188-0x1194 (12 bytes).
  It occupies 12 bytes.
  Calls cache_operation via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x21003, a3=a3 at entry (arg3) (`j` at 0x118c).

- `dki_dcache_wb` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1188 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1188-0x1194 (12 bytes).
  It occupies 12 bytes.
  Calls cache_operation via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x21003, a3=a3 at entry (arg3) (`j` at 0x118c).

- `dki_dcache_wbinval` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1188 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1188-0x1194 (12 bytes).
  It occupies 12 bytes.
  Calls cache_operation via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x21003, a3=a3 at entry (arg3) (`j` at 0x118c).

- `dki_dcache_inval` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1194 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1194-0x11a0 (12 bytes).
  It occupies 12 bytes.
  Calls cache_operation via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x21001, a3=a3 at entry (arg3) (`j` at 0x1198).

- `dummyret0_func` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11a0-0x11a8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x11a0 has v0 = 0x0.

- `heart_need_flush` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11a0-0x11a8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x11a0 has v0 = 0x0.

- `is_vme_space` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11a0-0x11a8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x11a0 has v0 = 0x0.

- `vme_adapter` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11a0-0x11a8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x11a0 has v0 = 0x0.

- `_get_timestamp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11a8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11a8-0x11b4 (12 bytes).
  It occupies 12 bytes.
  The `lwu` at 0x11b0 loads 4 bytes from abs 0xffffffffaff20004.
  The return at 0x11ac has v0 = [0xffffffffaff20004].

- `getcpuid` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11b4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11b4-0x11c0 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x11bc loads 8 bytes from abs 0xffffffffaff50000.
  The return at 0x11b8 has v0 = [0xffffffffaff50000]:8.

- `nmi_dump` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11c0-0x1294 (212 bytes).
  It occupies 212 bytes.
  The `ld` at 0x11cc loads 8 bytes from abs 0xffffffffaff50000.
  The `lw` at 0x11dc loads 4 bytes from abs 0xa800000000000410.
  The `sd` at 0x1204 stores 8 bytes to sym(nmi_saveregs) +0x0.
  The `sd` at 0x120c stores 8 bytes to sym(nmi_saveregs) +0x8.
  The `sd` at 0x1210 stores 8 bytes to sym(nmi_saveregs) +0x10.
  The `sd` at 0x1214 stores 8 bytes to sym(nmi_saveregs) +0x18.
  The `sd` at 0x1278 stores 8 bytes to (sym(nmi_saveregs) + ([0xffffffffaff50000]:8 << 0x5)) +0x0.
  The `sd` at 0x1280 stores 8 bytes to (sym(nmi_saveregs) + ([0xffffffffaff50000]:8 << 0x5)) +0x8.
  The `sd` at 0x1284 stores 8 bytes to (sym(nmi_saveregs) + ([0xffffffffaff50000]:8 << 0x5)) +0x10.
  The `sd` at 0x1288 stores 8 bytes to (sym(nmi_saveregs) + ([0xffffffffaff50000]:8 << 0x5)) +0x18.
  Calls cont_nmi_dump via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x124c).
  The `bne` branch at 0x11e0 targets 0x1254, is taken when k0(=[0xa800000000000410]) != k1(=[0xffffffffaff50000]:8), and falls through when k0(=[0xa800000000000410]) == k1(=[0xffffffffaff50000]:8).
  The `beq` branch at 0x128c targets 0x128c and is always taken.

- `getcachesz` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1294 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1294-0x12b4 (32 bytes).
  It occupies 32 bytes.
  The return at 0x12ac has v0 = ?.

- `bootstrap` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x12b4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x12b4-0x1390 (220 bytes).
  It occupies 220 bytes.
  The `lw` at 0x12d4 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `ld` at 0x135c loads 8 bytes from ?.
  The `sd` at 0x137c stores 8 bytes to abs 0xffffffffffffc4a8.
  The `sb` at 0x1380 stores 1 byte to abs 0xffffffffffffc04f.
  The `ld` at 0x1384 loads 8 bytes from abs 0xffffffffffffc3c0.
  The `sw` at 0x138c stores 4 bytes to abs 0xffffffffffffc65c.
  The `jal` at 0x1310 calls getcpuid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x6.
  The `jal` at 0x1370 calls tlbwired with a0=0x0, a1=0x0, a2=-0x4000, a3=0x1, a5=0x6000.
  Calls cboot via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x1388).

- `ffintr64` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1400 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1400-0x1470 (112 bytes).
  It occupies 112 bytes.
  The return at 0x1468 has v0 = ?.

- `_ticksper1024inst` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1470 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1470-0x14a4 (52 bytes).
  It occupies 52 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffaff20000, including `ld` at 0x1480, `ld` at 0x1498.
  The `bgtz` branch at 0x1488 targets 0x1488, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `bgtz` branch at 0x1490 targets 0x1484, is taken when a0(?) > 0 (signed), and falls through when a0(?) <= 0 (signed).
  The return at 0x149c has v0 = ?.

- `us_delay` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x14c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x14c0-0x14fc (60 bytes).
  It occupies 60 bytes.
  The `lw` at 0x14c0 loads 4 bytes from abs 0xffffffffffffc4b8.
  The `bgtz` branch at 0x14e4 targets 0x14e4, is taken when t1(?) > 0 (signed), and falls through when t1(?) <= 0 (signed).
  The `bgtz` branch at 0x14ec targets 0x14e0, is taken when a0(?) > 0 (signed), and falls through when a0(?) <= 0 (signed).
  The return at 0x14f4 has v0 = ?.

- `heart_intr_low` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x14fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x14fc-0x152c (48 bytes).
  It occupies 48 bytes.
  Calls heart_intr via direct with a0=a0 at entry (arg0), a1=0xffff, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x14fc).
  The instructions from 0x1504 to 0x1528 are not reached by any path from the entry, and their branches are not listed.

- `heart_intr_med` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1504 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1504-0x1510 (12 bytes).
  It occupies 12 bytes.
  Calls heart_intr via direct with a0=a0 at entry (arg0), a1=0xffff0000, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1508).

- `heart_intr_hi` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1510 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1510-0x1520 (16 bytes).
  It occupies 16 bytes.
  Calls heart_intr via direct with a0=a0 at entry (arg0), a1=0x3ffff00000000, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1518).

- `heart_intr_err` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1520 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1520-0x152c (12 bytes).
  It occupies 12 bytes.
  Calls heart_intr via direct with a0=a0 at entry (arg0), a1=0xfff8000000000000, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1524).

- `_pagecopy` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x152c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x152c-0x16f4 (456 bytes).
  It occupies 456 bytes.
  40 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1544, `ld` at 0x1548, `ld` at 0x1550.
  40 such `sd` accesses store 8 bytes to ?, including `sd` at 0x1558, `sd` at 0x155c, `sd` at 0x1560.
  The `beq` branch at 0x1530 targets 0x160c, is taken when a2 == 0, and falls through when a2 != 0.
  The `bne` branch at 0x1538 targets 0x1614, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bgtz` branch at 0x15cc targets 0x1544, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The `bgtz` branch at 0x1604 targets 0x15d4, is taken when t0(?) > 0 (signed), and falls through when t0(?) <= 0 (signed).
  The `bgtz` branch at 0x16ac targets 0x1624, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The `bgtz` branch at 0x16e4 targets 0x16b4, is taken when t0(?) > 0 (signed), and falls through when t0(?) <= 0 (signed).
  The return at 0x160c has v0 = a1.
  The return at 0x16ec has v0 = a1.

- `_pagezero` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16f4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16f4-0x17a4 (176 bytes).
  It occupies 176 bytes.
  32 such `sd` accesses store 8 bytes to ?, including `sd` at 0x1700, `sd` at 0x1704, `sd` at 0x170c.
  The `beq` branch at 0x16f4 targets 0x179c, is taken when a1 == 0, and falls through when a1 != 0.
  The `bgtz` branch at 0x1744 targets 0x1700, is taken when a1(?) > 0 (signed), and falls through when a1(?) <= 0 (signed).
  The `bgtz` branch at 0x1794 targets 0x174c, is taken when t0(?) > 0 (signed), and falls through when t0(?) <= 0 (signed).
  The return at 0x179c has v0 = ?.

- `resetcounter` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1800 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1800-0x1870 (112 bytes).
  It occupies 112 bytes.
  The `bne` branch at 0x1820 targets 0x1848, is taken when t0(?) < t2(?) (unsigned), and falls through when t0(?) >= t2(?) (unsigned).
  The `bne` branch at 0x182c targets 0x183c, is taken when a0 < a4(?) (unsigned), and falls through when a0 >= a4(?) (unsigned).
  The `bne` branch at 0x1854 targets 0x1840, is taken when a4(?) < v0(=0x3e8) (unsigned), and falls through when a4(?) >= v0(=0x3e8) (unsigned).
  The `beq` branch at 0x1860 targets 0x1834, is taken when a4(?) >= a5(=a0+1000) (unsigned), and falls through when a4(?) < a5(=a0+1000) (unsigned).
  The `beq` branch at 0x1868 targets 0x1840 and is always taken.
  The return at 0x1840 has v0 = one of ?, 0x3e8.

- `resetcounter_val` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1800 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1800-0x1870 (112 bytes).
  It occupies 112 bytes.
  The `bne` branch at 0x1820 targets 0x1848, is taken when t0(?) < t2(?) (unsigned), and falls through when t0(?) >= t2(?) (unsigned).
  The `bne` branch at 0x182c targets 0x183c, is taken when a0 < a4(?) (unsigned), and falls through when a0 >= a4(?) (unsigned).
  The `bne` branch at 0x1854 targets 0x1840, is taken when a4(?) < v0(=0x3e8) (unsigned), and falls through when a4(?) >= v0(=0x3e8) (unsigned).
  The `beq` branch at 0x1860 targets 0x1834, is taken when a4(?) >= a5(=a0+1000) (unsigned), and falls through when a4(?) < a5(=a0+1000) (unsigned).
  The `beq` branch at 0x1868 targets 0x1840 and is always taken.
  The return at 0x1840 has v0 = one of ?, 0x3e8.

- `trimcompare` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1880 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1880-0x18e0 (96 bytes).
  It occupies 96 bytes.
  The `beq` branch at 0x189c targets 0x18d8, is taken when t0(?) >= t2(?) (unsigned), and falls through when t0(?) < t2(?) (unsigned).
  The `bne` branch at 0x18a8 targets 0x18d8, is taken when a4(?) < t3(=0x3e8) (unsigned), and falls through when a4(?) >= t3(=0x3e8) (unsigned).
  The `beq` branch at 0x18b0 targets 0x18d0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x18bc targets 0x18d0, is taken when t0(?) >= a1(?) (unsigned), and falls through when t0(?) < a1(?) (unsigned).
  The `beq` branch at 0x18c8 targets 0x18d4, is taken when a4(?) >= t3(=0x3e8) (unsigned), and falls through when a4(?) < t3(=0x3e8) (unsigned).
  The return at 0x18d8 has v0 = ?.

- `initcounter` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1900 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1900-0x191c (28 bytes).
  It occupies 28 bytes.
  The return at 0x1914 has v0 = ?.

- `resetlatency` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x191c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x191c-0x193c (32 bytes).
  It occupies 32 bytes.
  The return at 0x1934 has v0 = ?.

- `start` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1940 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1940-0x1af4 (436 bytes).
  It occupies 436 bytes.
  Calls .text+6536 via reloc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x1984).
  The instructions from 0x198c to 0x1af0 are not reached by any path from the entry, and their branches are not listed.

- `proc1` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1adc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1adc-0x1af4 (24 bytes).
  It occupies 24 bytes.
  The `sb` at 0x1ae8 stores 1 byte to abs 0xffffffffffffc04f.

- `mlclosure` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1af4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1af4-0x1b9c (168 bytes).
  It occupies 168 bytes.
  The `lw` at 0x1b0c loads 4 bytes from sym(sysent) +0x0.
  The `lw` at 0x1b28 loads 4 bytes from sym(biomove) +0x0.
  The `lw` at 0x1b44 loads 4 bytes from sym(uuid_create) +0x0.
  The `lw` at 0x1b60 loads 4 bytes from sym(setmask) +0x0.
  The `lw` at 0x1b7c loads 4 bytes from sym(reclock) +0x0.
  The `lw` at 0x1b98 loads 4 bytes from sym(ddi_lock) +0x0.

- `silence_all_audio` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1b9c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1b9c-0x1bec (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x1bb4 loads 4 bytes from sym(is_octane_lx) +0x0.
  The `sw` at 0x1bd8 stores 4 bytes to abs 0x900000001f600038.
  Calls ip30_rad_halt via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1bdc).
  The `beq` branch at 0x1bb8 targets 0x1bdc, is taken when t0(=[sym(is_octane_lx)]) == 0, and falls through when t0(=[sym(is_octane_lx)]) != 0.
  The instructions from 0x1be4 to 0x1be8 are not reached by any path from the entry, and their branches are not listed.

- `silence_bell` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1b9c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1b9c-0x1bec (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x1bb4 loads 4 bytes from sym(is_octane_lx) +0x0.
  The `sw` at 0x1bd8 stores 4 bytes to abs 0x900000001f600038.
  Calls ip30_rad_halt via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1bdc).
  The `beq` branch at 0x1bb8 targets 0x1bdc, is taken when t0(=[sym(is_octane_lx)]) == 0, and falls through when t0(=[sym(is_octane_lx)]) != 0.
  The instructions from 0x1be4 to 0x1be8 are not reached by any path from the entry, and their branches are not listed.

- `icode` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1bf0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1bf0-0x1c90 (160 bytes).
  It occupies 160 bytes.
  The `sw` at 0x1c70 stores 4 bytes to table(0x10000200) +0x0.
  The `beq` branch at 0x1c84 targets 0x1c84 and is always taken.
  The instructions from 0x1c8c to 0x1c8c are not reached by any path from the entry, and their branches are not listed.

- `eicode` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1c8c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1c8c-0x1c90 (4 bytes).
  It occupies 4 bytes.

- `in_cksum_sub` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1c90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1c90-0x20c0 (1072 bytes).
  It occupies 1072 bytes.
  The `lbu` at 0x1cbc loads 1 byte from a0 (arg0 at entry) +0x0.
  3 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x1ce0, `lhu` at 0x1d08, `lhu` at 0x2040.
  3 such `lwu` accesses load 4 bytes from ?, including `lwu` at 0x1d24, `lwu` at 0x1d4c, `lwu` at 0x2018.
  31 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1da8, `ld` at 0x1db8, `ld` at 0x1dc8.
  The `lbu` at 0x2068 loads 1 byte from ?.
  The `bne` branch at 0x1c94 targets 0x1ca4, is taken when a1 != 0, and falls through when a1 == 0.
  The `beq` branch at 0x1ca4 targets 0x1d98, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1cac targets 0x1d18, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1cb4 targets 0x1cd4, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x1cd8 targets 0x2060, is taken when a1(?) < 0x2 (signed), and falls through when a1(?) >= 0x2 (signed).
  The `bne` branch at 0x1cf4 targets 0x2060, is taken when a1(?) < 0x2 (signed), and falls through when a1(?) >= 0x2 (signed).
  The `beq` branch at 0x1d00 targets 0x1d18, is taken when (a0(?) & 0x2) == 0, and falls through when (a0(?) & 0x2) != 0.
  The `bne` branch at 0x1d1c targets 0x2038, is taken when a1(?) < 0x4 (signed), and falls through when a1(?) >= 0x4 (signed).
  The `bne` branch at 0x1d38 targets 0x2038, is taken when a1(?) < 0x4 (signed), and falls through when a1(?) >= 0x4 (signed).
  The `beq` branch at 0x1d44 targets 0x1d5c, is taken when (a0(?) & 0x4) == 0, and falls through when (a0(?) & 0x4) != 0.
  The `bne` branch at 0x1d9c targets 0x1ec0, is taken when a1(?) < 0x80 (signed), and falls through when a1(?) >= 0x80 (signed).
  The `beq` branch at 0x1eb0 targets 0x1da4, is taken when a1(?) >= 0x80 (signed), and falls through when a1(?) < 0x80 (signed).
  The `beq` branch at 0x1eb8 targets 0x2080, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1ec0 targets 0x1f58, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1f50 targets 0x2080, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1f58 targets 0x1fb0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1fa8 targets 0x2080, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1fb0 targets 0x1fe8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1fe0 targets 0x2080, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1fe8 targets 0x2010, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x2008 targets 0x2080, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2010 targets 0x2038, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x2030 targets 0x2080, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2038 targets 0x2060, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x2058 targets 0x2080, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2060 targets 0x2080, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The return at 0x1c9c has v0 = a2.
  The return at 0x20b8 has v0 = ?.

- `in_cksum_pref` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1da4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1da4-0x20c0 (796 bytes).
  It occupies 796 bytes.
  31 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1da8, `ld` at 0x1db8, `ld` at 0x1dc8.
  The `lwu` at 0x2018 loads 4 bytes from ?.
  The `lhu` at 0x2040 loads 2 bytes from ?.
  The `lbu` at 0x2068 loads 1 byte from ?.
  The `beq` branch at 0x1eb0 targets 0x1da4, is taken when a1(?) >= 0x80 (signed), and falls through when a1(?) < 0x80 (signed).
  The `beq` branch at 0x1eb8 targets 0x2080, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1ec0 targets 0x1f58, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1f50 targets 0x2080, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1f58 targets 0x1fb0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1fa8 targets 0x2080, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1fb0 targets 0x1fe8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1fe0 targets 0x2080, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x1fe8 targets 0x2010, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x2008 targets 0x2080, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2010 targets 0x2038, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x2030 targets 0x2080, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2038 targets 0x2060, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x2058 targets 0x2080, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x2060 targets 0x2080, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The return at 0x20b8 has v0 = ?.

- `etoh` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x20c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x20c0-0x21cc (268 bytes).
  It occupies 268 bytes.
  The `lbu` at 0x20c0 loads 1 byte from a0 (arg0 at entry) +0x0.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x2108, `lbu` at 0x2194.
  The `sb` at 0x2190 stores 1 byte to ?.
  The `beq` branch at 0x20cc targets 0x21a8, is taken when v0(=[a0]:1) == 0, and falls through when v0(=[a0]:1) != 0.
  The `beq` branch at 0x20d8 targets 0x21bc, is taken when t8(=0x3a) == v0(?), and falls through when t8(=0x3a) != v0(?).
  The `bne` branch at 0x20e4 targets 0x20f8, is taken when v0(?) < 0x61 (signed), and falls through when v0(?) >= 0x61 (signed).
  The `bne` branch at 0x20f0 targets 0x2108, is taken when v0(?) < 0x67 (signed), and falls through when v0(?) >= 0x67 (signed).
  The `bne` branch at 0x20f8 targets 0x21b0, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x2100 targets 0x21b0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x2128 targets 0x2138, is taken when a4(?) < 0x61 (signed), and falls through when a4(?) >= 0x61 (signed).
  The `bne` branch at 0x2130 targets 0x2144, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x2138 targets 0x21b0, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x2140 targets 0x21b0, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x2148 targets 0x21c4, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x2150 targets 0x2164, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x2158 targets 0x2164, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0x2164 targets 0x2180, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x216c targets 0x217c, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x2174 targets 0x2184 and is always taken.
  The `bne` branch at 0x2198 targets 0x20d8, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x21a0 targets 0x21b4, is taken when a2(?) == t1(=0x6), and falls through when a2(?) != t1(=0x6).
  The `beq` branch at 0x21bc targets 0x2194 and is always taken.
  The return at 0x21a8 has v0 = 0x0.
  The return at 0x21b4 has v0 = one of sym(.sbss)+52, 0x0.
  The return at 0x21c4 has v0 = 0x0.

- `init_sysid` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x21cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x21cc-0x22a4 (216 bytes).
  It occupies 216 bytes.
  The `jal` at 0x21d8 calls arcs_getenv with a0=sym(.rodata)+120, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x21e0 calls etoh with a0=ret(arcs_getenv), a1=?, a2=?, a3=?.
  The `jal` at 0x21f0 calls bcopy with a0=ret(etoh), a1=sym(eaddr), a2=0x6, a3=?.
  The `jal` at 0x2290 calls sprintf with a0=sym(arg_eaddr), a1=sym(.rodata)+120, a2=?, a3=?.
  The return at 0x229c has v0 = ret(sprintf).

- `getsysid` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x22a4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x22a4-0x22d0 (44 bytes).
  It occupies 44 bytes.
  The `sw` at 0x22bc stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0x22b8 calls bzero with a0=a0+4, a1=0x3c, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x22c8 has v0 = 0x0.

- `mlreset` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x22d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x22d0-0x2630 (864 bytes).
  It occupies 864 bytes.
  The `ld` at 0x23a8 loads 8 bytes from abs 0xffffffffaff00000.
  The `ld` at 0x23b4 loads 8 bytes from abs 0xffffffffaff00080.
  The `sw` at 0x23f0 stores 4 bytes to ?.
  The `sw` at 0x24b0 stores 4 bytes to sym(bzero_pref) +0x0.
  The `sw` at 0x24b4 stores 4 bytes to sym(bcopy_pref2) +0x0.
  The `sw` at 0x24bc stores 4 bytes to sym(bcopy_pref1) +0x0.
  The `lw` at 0x2508 loads 4 bytes from abs 0x900000001f600048.
  The `sw` at 0x258c stores 4 bytes to abs 0x900000001f600038.
  The `sw` at 0x2598 stores 4 bytes to abs 0x900000001f60002c.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x25d8, `lw` at 0x25e8.
  The `jal` at 0x22e4 calls r1nkperf_control_register_set with a0=0x0, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x22f0 calls r1nkperf_control_register_set with a0=0x1, a1=0x0, a2=?, a3=?.
  The `jal` at 0x22fc calls r1nkperf_data_register_set with a0=0x0, a1=0x0, a2=?, a3=?.
  The `jal` at 0x2308 calls r1nkperf_data_register_set with a0=0x1, a1=0x0, a2=?, a3=?.
  The `jal` at 0x2310 calls get_cpu_irr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2328 calls get_cpu_irr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2348 calls getcpuid with a0=?, a1=[sym(kdebug)]:2, a2=?, a3=?.
  The `jal` at 0x2350 calls heart_mp_intr_init with a0=ret(getcpuid), a1=?, a2=?, a3=?.
  The `jal` at 0x2358 calls flush_tlb with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x2360 calls flush_cache with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x238c calls getcpuid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x23fc calls init_board_rev [0x3050] with a0=?, a1=?, a2=one of 0x0, 0x1, a3=?, a7=[0xffffffffaff00080]:8.
  The `jal` at 0x2404 calls ip30_chips_mlreset [0x33e0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x240c calls init_sysid [0x21cc] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2414 calls load_nvram_tab with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2484 calls is_specified with a0=sym(arg_heart_invalidate_war), a1=?, a2=?, a3=?.
  The `jal` at 0x2494 calls atoi with a0=sym(arg_heart_invalidate_war), a1=?, a2=?, a3=?.
  The `jal` at 0x24c0 calls flush_cache with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x24d0 calls spinlock_init with a0=sym(ip30clocklock), a1=sym(.rodata)+120, a2=?, a3=?.
  The `jal` at 0x24e0 calls spinlock_init with a0=sym(ip30ledlock), a1=sym(.rodata)+120, a2=?, a3=?.
  The `jal` at 0x24f0 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2538 calls r1nkperf_control_register_set with a0=0x2, a1=0x0, a2=?, a3=?.
  The `jal` at 0x2544 calls r1nkperf_control_register_set with a0=0x3, a1=0x0, a2=?, a3=?.
  The `jal` at 0x2550 calls r1nkperf_data_register_set with a0=0x2, a1=0x0, a2=?, a3=?.
  The `jal` at 0x255c calls r1nkperf_data_register_set with a0=0x3, a1=0x0, a2=?, a3=?.
  The `jal` at 0x25b4 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2610 calls bzero with a0=sym(bcopy), a1=?, a2=?, a3=?.
  The `jal` at 0x2620 calls bzero with a0=sym(bzero), a1=?, a2=?, a3=?.
  The `beq` branch at 0x2320 targets 0x2534, is taken when at(?) == v0(=0xe), and falls through when at(?) != v0(=0xe).
  The `beq` branch at 0x2338 targets 0x2538, is taken when v1(?) == a0(=0xf), and falls through when v1(?) != a0(=0xf).
  The `beq` branch at 0x2340 targets 0x237c, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `beq` branch at 0x23d8 targets 0x256c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x23f4 targets 0x23c4, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x248c targets 0x259c, is taken when v0(=ret(is_specified)) == 0, and falls through when v0(=ret(is_specified)) != 0.
  The `beq` branch at 0x249c targets 0x2608, is taken when v0(=ret(atoi)) == 0, and falls through when v0(=ret(atoi)) != 0.
  The `beq` branch at 0x24f8 targets 0x2520, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0x2510 targets 0x257c, is taken when a2(=[0x900000001f600048]) < 0x1 (unsigned), and falls through when a2(=[0x900000001f600048]) >= 0x1 (unsigned).
  The `beq` branch at 0x2518 targets 0x2368 and is always taken.
  The `bgez` branch at 0x2524 targets 0x24f0, is taken when s0(?) >= 0 (signed), and falls through when s0(?) < 0 (signed).
  The `beq` branch at 0x252c targets 0x2508 and is always taken.
  The `beq` branch at 0x2564 targets 0x2340 and is always taken.
  The `beq` branch at 0x256c targets 0x23e4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x2574 targets 0x23e4 and is always taken.
  The `beq` branch at 0x2594 targets 0x2518 and is always taken.
  The `beq` branch at 0x259c targets 0x25b0 and is always taken.
  The `beq` branch at 0x25a8 targets 0x25fc, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x25c4 targets 0x25a8, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0x25e0 targets 0x25a4, is taken when a1(?) < 0x927 (signed), and falls through when a1(?) >= 0x927 (signed).
  The `bne` branch at 0x25ec targets 0x25a8, is taken when a3(?) != a4(=0x930), and falls through when a3(?) == a4(=0x930).
  The `beq` branch at 0x25f4 targets 0x25a8 and is always taken.
  The `bne` branch at 0x2600 targets 0x24a8, is taken when a5(=[sym(_heart_invalidate_war)]) != 0, and falls through when a5(=[sym(_heart_invalidate_war)]) == 0.
  The `beq` branch at 0x2628 targets 0x24c0 and is always taken.
  The return at 0x2374 has v0 = one of ret(flush_cache), ret(cpu_enabled).

- `fp_find` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x2630 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x2630-0x2650 (32 bytes).
  It occupies 32 bytes.
  The `sw` at 0x2644 stores 4 bytes to abs 0xffffffffffffc400.
  The `jal` at 0x2638 calls get_fpc_irr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2648 has v0 = ret(get_fpc_irr).

- `fp_init` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x2650 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x2650-0x266c (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x2658 calls set_fpc_csr with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2664 has v0 = ret(set_fpc_csr).

- `pg_setcachable` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x266c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x266c-0x2688 (28 bytes).
  It occupies 28 bytes.
  The `ld` at 0x266c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sd` at 0x2684 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The return at 0x2680 has v0 = ?.

- `pte_cachebits` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x2688 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x2688-0x2690 (8 bytes).
  It occupies 8 bytes.
  The return at 0x2688 has v0 = [sym(.sdata)+48].

- `set_leds` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x2690 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x2690-0x26f0 (96 bytes).
  It occupies 96 bytes.
  2 such `sw` accesses store 4 bytes to abs 0x900000001f600040, including `sw` at 0x26bc, `sw` at 0x26ec.
  2 such `sw` accesses store 4 bytes to abs 0x900000001f600044, including `sw` at 0x26c0, `sw` at 0x26e4.
  The `jal` at 0x26a0 calls mutex_spinlock with a0=sym(ip30ledlock), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x26c8 calls mutex_spinunlock with a0=sym(ip30ledlock), a1=ret(mutex_spinlock), a2=?, a3=0x900000001f600044, a4=0x900000001f600040, a5=0x1.
  The `jal` at 0x26d0 calls flushbus with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x26b4 targets 0x26e4, is taken when s8(=a0) == 0, and falls through when s8(=a0) != 0.
  The `beq` branch at 0x26e8 targets 0x26c4 and is always taken.
  The return at 0x26dc has v0 = ret(flushbus).

- `reset_leds` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x26f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x26f0-0x270c (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x26f8 calls set_leds with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x2704 has v0 = ret(set_leds).

- `dobootduty` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x2728 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x2728-0x2884 (348 bytes).
  It occupies 348 bytes.
  The `ld` at 0x2750 loads 8 bytes from (sym(pdaindr) + ([sym(.sdata)+24] << 0x4)) +0x8.
  The `lh` at 0x2768 loads 2 bytes from [(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8 +0x3a2.
  The `sd` at 0x276c stores 8 bytes to [(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8 +0x3b8.
  The `sd` at 0x2794 stores 8 bytes to [(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8 +0x30.
  The `sd` at 0x279c stores 8 bytes to [(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8 +0x488.
  The `sd` at 0x27b4 stores 8 bytes to [(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8 +0x528.
  7 such `lh` accesses load 2 bytes from [(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8 +0x3a0, including `lh` at 0x27bc, `lh` at 0x27cc, `lh` at 0x27dc.
  The `sd` at 0x27c4 stores 8 bytes to [(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8 +0x518.
  The `sd` at 0x27d4 stores 8 bytes to [(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8 +0x520.
  2 such `ld` accesses load 8 bytes from [(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8 +0x518, including `ld` at 0x27d8, `ld` at 0x2880.
  The `jal` at 0x2764 calls kvpalloc with a0=?, a1=0x100, a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0x2790 calls kern_calloc_node with a0=0x1, a1=0x538, a2=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+930]:2, a3=?.
  The `jal` at 0x27a8 calls kern_calloc_node with a0=0x1, a1=0x13c8, a2=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+930]:2, a3=?.
  The `jal` at 0x27b8 calls str_init_alloc_lfvec with a0=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+928]:2, a1=?, a2=?, a3=?.
  The `jal` at 0x27c8 calls str_init_alloc_strstat with a0=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+928]:2, a1=?, a2=?, a3=?.
  The `jal` at 0x27e0 calls str_init_slave with a0=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+1304]:8, a1=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+928]:2, a2=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+930]:2, a3=?.
  The `jal` at 0x2814 calls cmn_err with a0=0x0, a1=sym(.rodata)+120, a2=[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8, a3=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+928]:2.
  The `jal` at 0x2834 calls cmn_err with a0=0x0, a1=sym(.rodata)+120, a2=[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8, a3=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+928]:2.
  The `jal` at 0x2854 calls cmn_err with a0=0x0, a1=sym(.rodata)+120, a2=[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8, a3=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+928]:2.
  The `jal` at 0x2874 calls cmn_err with a0=0x0, a1=sym(.rodata)+120, a2=[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8, a3=[[(sym(pdaindr) + ([sym(.sdata)+24] << 0x4))+8]:8+928]:2.
  The `beq` branch at 0x2798 targets 0x2804, is taken when v0(=ret(kern_calloc_node)) == 0, and falls through when v0(=ret(kern_calloc_node)) != 0.
  The `beq` branch at 0x27b0 targets 0x2824, is taken when v0(=ret(kern_calloc_node)) == 0, and falls through when v0(=ret(kern_calloc_node)) != 0.
  The `beq` branch at 0x27c0 targets 0x2844, is taken when v0(=ret(str_init_alloc_lfvec)) == 0, and falls through when v0(=ret(str_init_alloc_lfvec)) != 0.
  The `beq` branch at 0x27d0 targets 0x2864, is taken when v0(=ret(str_init_alloc_strstat)) == 0, and falls through when v0(=ret(str_init_alloc_strstat)) != 0.
  The `beq` branch at 0x281c targets 0x27a4 and is always taken.
  The `beq` branch at 0x283c targets 0x27b8 and is always taken.
  The `beq` branch at 0x285c targets 0x27c8 and is always taken.
  The `beq` branch at 0x287c targets 0x27dc and is always taken.
  The return at 0x27fc has v0 = ret(str_init_slave).

- `cpu_disable` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x2884 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x2884-0x28b4 (48 bytes).
  It occupies 48 bytes.
  The `ld` at 0x2894 loads 8 bytes from abs 0xffffffffaff00000.
  The `sd` at 0x28a8 stores 8 bytes to abs 0xffffffffaff00000.
  The `sw` at 0x28b0 stores 4 bytes to (sym(processor_enabled) + (a0 << 0x2)) +0x0.
  The return at 0x28ac has v0 = ?.

- `cpu_exists` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x28b4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x28b4-0x28d4 (32 bytes).
  It occupies 32 bytes.
  The `ld` at 0x28c0 loads 8 bytes from abs 0xffffffffaff00080.
  The return at 0x28cc has v0 = ?.

- `cpu_enabled` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x28d4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x28d4-0x28e8 (20 bytes).
  It occupies 20 bytes.
  The `lw` at 0x28e4 loads 4 bytes from (sym(processor_enabled) + (a0 << 0x2)) +0x0.
  The return at 0x28e0 has v0 = [(sym(processor_enabled) + (a0 << 0x2))].

- `allowboot` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x28e8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x28e8-0x2cbc (980 bytes).
  It occupies 980 bytes.
  5 such `sd` accesses store 8 bytes to ?, including `sd` at 0x2968, `sd` at 0x29cc, `sd` at 0x29d0.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0x29a0, `lw` at 0x2a88, `lw` at 0x2b10.
  The `lbu` at 0x29c0 loads 1 byte from ?.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x29d4, `ld` at 0x29dc.
  2 such `lh` accesses load 2 bytes from [sym(masterpda)]:8 +0x3a0, including `lh` at 0x2b24, `lh` at 0x2b80.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x2b2c, `sw` at 0x2b88, `sw` at 0x2c10.
  The `jal` at 0x28f0 calls init_timebase with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x28f8 calls ecc_init with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2928 calls is_specified with a0=sym(arg_heart_invalidate_war), a1=?, a2=?, a3=?.
  The `jal` at 0x2990 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2a20 calls dobootduty [0x2728] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2a2c calls us_delay with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x2a50 calls us_delay with a0=0x1388, a1=?, a2=?, a3=?.
  The `jal` at 0x2a70 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2b0c calls cpu_isvalid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2b68 calls cpu_isvalid with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2ba0 calls init_nmi_dump [0x2e64] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2ba8 calls init_mfhi_war with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2bbc calls cpu_exists [0x28b4] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2bf0 calls cmn_err with a0=0x0, a1=sym(.rodata)+120, a2=?, a3=?.
  The `jal` at 0x2c08 calls cmn_err with a0=0x5, a1=sym(.rodata)+120, a2=?, a3=?.
  The `jal` at 0x2c14 calls cpu_disable [0x2884] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2c2c calls cmn_err with a0=0x4, a1=sym(.rodata)+120, a2=?, a3=?, a5=[sym(showconfig)].
  The `jal` at 0x2c34 calls cpu_disable [0x2884] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2c4c calls cmn_err with a0=0x6, a1=sym(.rodata)+120, a2=?, a3=?, a5=[sym(showconfig)].
  The `jal` at 0x2c68 calls cmn_err with a0=0x6, a1=sym(.rodata)+120, a2=[sym(master_procid)]:2, a3=?.
  The `jal` at 0x2c7c calls cmn_err with a0=0x4, a1=sym(.rodata)+120, a2=[sym(_heart_invalidate_war)], a3=?.
  The `jal` at 0x2c94 calls cmn_err with a0=0x0, a1=sym(.rodata)+120, a2=?, a3=?.
  The `jal` at 0x2cac calls cmn_err with a0=0x4, a1=sym(.rodata)+120, a2=?, a3=?.
  The `bne` branch at 0x291c targets 0x2c5c, is taken when at(=[sym(showconfig)]) != 0, and falls through when at(=[sym(showconfig)]) == 0.
  The `bne` branch at 0x2930 targets 0x2c78, is taken when v0(=ret(is_specified)) != 0, and falls through when v0(=ret(is_specified)) == 0.
  The `beq` branch at 0x295c targets 0x2980 and is always taken.
  The `beq` branch at 0x2978 targets 0x29f4, is taken when s0(?) >= 0x2 (signed), and falls through when s0(?) < 0x2 (signed).
  The `beq` branch at 0x2998 targets 0x2bbc, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0x29a8 targets 0x2bd4, is taken when a1(?) < 0x926 (signed), and falls through when a1(?) >= 0x926 (signed).
  The `beq` branch at 0x29b8 targets 0x296c, is taken when a2(=[sym(master_procid)]:2) == s0(?), and falls through when a2(=[sym(master_procid)]:2) != s0(?).
  The `beq` branch at 0x29c4 targets 0x2c24, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x29e4 targets 0x2964, is taken when a5(=[sym(showconfig)]) == 0, and falls through when a5(=[sym(showconfig)]) != 0.
  The `beq` branch at 0x29ec targets 0x2c44 and is always taken.
  The `beq` branch at 0x2a0c targets 0x2a58, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x2a18 targets 0x2a2c, is taken when t9(=[sym(.sdata)+24]) == s3(=-0x1), and falls through when t9(=[sym(.sdata)+24]) != s3(=-0x1).
  The `beq` branch at 0x2a38 targets 0x2a48, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `bne` branch at 0x2a40 targets 0x2a14, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The `beq` branch at 0x2a48 targets 0x2a5c, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `blez` branch at 0x2a64 targets 0x2aac, is taken when ra(=[sym(maxcpus)]) <= 0 (signed), and falls through when ra(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x2a78 targets 0x2a98, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0x2a8c targets 0x2c00, is taken when a1(?) != s0(?), and falls through when a1(?) == s0(?).
  The `bne` branch at 0x2aa0 targets 0x2a70, is taken when s0(?) < t8(=[sym(maxcpus)]) (signed), and falls through when s0(?) >= t8(=[sym(maxcpus)]) (signed).
  The `bne` branch at 0x2aa8 targets 0x2c8c, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The `blez` branch at 0x2ad8 targets 0x2b30, is taken when ra(=[sym(bdevcnt)]) <= 0 (signed), and falls through when ra(=[sym(bdevcnt)]) > 0 (signed).
  The `beq` branch at 0x2ae0 targets 0x2af4 and is always taken.
  The `beq` branch at 0x2aec targets 0x2b30, is taken when s0(?) >= a0(=[sym(bdevcnt)]) (signed), and falls through when s0(?) < a0(=[sym(bdevcnt)]) (signed).
  The `bne` branch at 0x2b18 targets 0x2ae8, is taken when v0(=ret(cpu_isvalid)) != 0, and falls through when v0(=ret(cpu_isvalid)) == 0.
  The `beq` branch at 0x2b28 targets 0x2ae8 and is always taken.
  The `blez` branch at 0x2b34 targets 0x2b8c, is taken when ra(=[sym(cdevcnt)]) <= 0 (signed), and falls through when ra(=[sym(cdevcnt)]) > 0 (signed).
  The `beq` branch at 0x2b3c targets 0x2b50 and is always taken.
  The `beq` branch at 0x2b48 targets 0x2b8c, is taken when s0(?) >= a0(=[sym(cdevcnt)]) (signed), and falls through when s0(?) < a0(=[sym(cdevcnt)]) (signed).
  The `bne` branch at 0x2b74 targets 0x2b44, is taken when v0(=ret(cpu_isvalid)) != 0, and falls through when v0(=ret(cpu_isvalid)) == 0.
  The `beq` branch at 0x2b84 targets 0x2b44 and is always taken.
  The `beql` branch at 0x2bc4 targets 0x2970, is taken when v0(=ret(cpu_exists)) == 0, and falls through when v0(=ret(cpu_exists)) != 0; its branch-likely delay slot `addiu s0,s0,1` at 0x2bc8 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x2bcc targets 0x2ca4 and is always taken.
  The `beq` branch at 0x2bf8 targets 0x29b4 and is always taken.
  The `beq` branch at 0x2c1c targets 0x2a94 and is always taken.
  The `beq` branch at 0x2c3c targets 0x2970 and is always taken.
  The `beq` branch at 0x2c54 targets 0x2968 and is always taken.
  The `beq` branch at 0x2c70 targets 0x2928 and is always taken.
  The `beq` branch at 0x2c84 targets 0x293c and is always taken.
  The `beq` branch at 0x2c9c targets 0x2ab0 and is always taken.
  The `beq` branch at 0x2cb4 targets 0x2970 and is always taken.
  The return at 0x2bb4 has v0 = ret(init_mfhi_war).

- `cboot` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x2cbc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x2cbc-0x2e64 (424 bytes).
  It occupies 424 bytes.
  2 such `ld` accesses load 8 bytes from (sym(pdaindr) + (ret(getcpuid) << 0x4)) +0x8, including `ld` at 0x2ce4, `ld` at 0x2ddc.
  The `sh` at 0x2cf0 stores 2 bytes to abs 0xffffffffffffc3a0.
  The `sw` at 0x2d00 stores 4 bytes to abs 0xffffffffffffc090.
  The `sd` at 0x2d0c stores 8 bytes to abs 0xffffffffffffc058.
  The `sd` at 0x2d10 stores 8 bytes to abs 0xffffffffffffc408.
  The `sd` at 0x2d14 stores 8 bytes to abs 0xffffffffffffc000.
  3 such `ld` accesses load 8 bytes from (sym(pdaindr) + ([sym(master_procid)]:2 << 0x4)) +0x8, including `ld` at 0x2d28, `ld` at 0x2d40, `ld` at 0x2d58.
  The `lw` at 0x2d2c loads 4 bytes from [(sym(pdaindr) + ([sym(master_procid)]:2 << 0x4))+8]:8 +0x6f0.
  The `sw` at 0x2d30 stores 4 bytes to abs 0xffffffffffffc6f0.
  The `lw` at 0x2d44 loads 4 bytes from [(sym(pdaindr) + ([sym(master_procid)]:2 << 0x4))+8]:8 +0x6f4.
  The `sw` at 0x2d48 stores 4 bytes to abs 0xffffffffffffc6f4.
  The `lw` at 0x2d5c loads 4 bytes from [(sym(pdaindr) + ([sym(master_procid)]:2 << 0x4))+8]:8 +0x4b8.
  The `sw` at 0x2d64 stores 4 bytes to abs 0xffffffffffffc4b8.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffc048, including `lw` at 0x2da8, `lw` at 0x2e0c.
  2 such `sw` accesses store 4 bytes to abs 0xffffffffffffc048, including `sw` at 0x2db4, `sw` at 0x2e1c.
  The `sw` at 0x2db8 stores 4 bytes to (sym(pdaindr) + (ret(getcpuid) << 0x4)) +0x0.
  The `jal` at 0x2cc8 calls getcpuid with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2ce0 calls wirepda with a0=[(sym(pdaindr) + (ret(getcpuid) << 0x4))+8]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x2ce8 calls mlreset with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x2d08 calls get_except_norm with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2d60 calls coproc_find with a0=[[(sym(pdaindr) + ([sym(master_procid)]:2 << 0x4))+8]:8+1776], a1=?, a2=?, a3=?.
  The `jal` at 0x2d68 calls mutex_spinlock with a0=sym(bootlck), a1=?, a2=?, a3=?.
  The `jal` at 0x2dd0 calls stopclocks with a0=?, a1=[sym(.sdata)+24], a2=?, a3=-0x1, a6=[sym(numcpus)]+1.
  The `jal` at 0x2de8 calls spinlock_init with a0=[(sym(pdaindr) + (ret(getcpuid) << 0x4))+8]:8+1180, a1=sym(.rodata)+120, a2=?, a3=?.
  The `jal` at 0x2df0 calls tlbinfo_init with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2df8 calls clkstart with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2e04 calls mutex_spinunlock with a0=sym(bootlck), a1=ret(mutex_spinlock), a2=?, a3=?.
  The `jal` at 0x2e18 calls ecc_init with a0=?, a1=?, a2=?, a3=-0x11.
  The `jal` at 0x2e20 calls joinrunq with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2e28 calls init_mfhi_war with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2e30 calls spl0 with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2e38 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2e40 calls resumeidle with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0x2e50 calls cmn_err with a0=0x0, a1=sym(.rodata)+120, a2=?, a3=?.
  The `beq` branch at 0x2d7c targets 0x2da8, is taken when a1(=[sym(.sdata)+24]) == a3(=-0x1), and falls through when a1(=[sym(.sdata)+24]) != a3(=-0x1).
  The `beq` branch at 0x2d88 targets 0x2da8, is taken when a2(=[sym(.sdata)+24]) == a3(=-0x1), and falls through when a2(=[sym(.sdata)+24]) != a3(=-0x1).
  The `beq` branch at 0x2d94 targets 0x2da8, is taken when a4(=[sym(.sdata)+24]) == a3(=-0x1), and falls through when a4(=[sym(.sdata)+24]) != a3(=-0x1).
  The `bne` branch at 0x2da0 targets 0x2d84, is taken when a5(=[sym(.sdata)+24]) != a3(=-0x1), and falls through when a5(=[sym(.sdata)+24]) == a3(=-0x1).
  The return at 0x2e5c has v0 = ret(cmn_err).

- `init_nmi_dump` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x2e64 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x2e64-0x2ee4 (128 bytes).
  It occupies 128 bytes.
  The `ld` at 0x2e68 loads 8 bytes from abs 0xa800000000000408.
  2 such `sd` accesses store 8 bytes to abs 0xa800000000000408, including `sd` at 0x2eb0, `sd` at 0x2eb4.
  The `sd` at 0x2ed0 stores 8 bytes to abs 0xa800000000000410.
  The `sw` at 0x2ed8 stores 4 bytes to abs 0xa800000000000400.
  The `jal` at 0x2eb8 calls getcpuid with a0=a0 at entry (arg0), a1=0xa800000000000408, a2=(sym(nmi_dump) | 0xa800000000000000), a3=?, a4=(0x9000000000000000 | sym(nmi_dump)), a5=-0xb, a6=0xa800000000000000, a7=0x9000000000000000.
  The `bne` branch at 0x2e6c targets 0x2edc, is taken when at(=[0xa800000000000408]:8) != 0, and falls through when at(=[0xa800000000000408]:8) == 0.
  The `bne` branch at 0x2e9c targets 0x2eb4, is taken when t0(=sym(nmi_dump)) < a7(=0x9000000000000000) (unsigned), and falls through when t0(=sym(nmi_dump)) >= a7(=0x9000000000000000) (unsigned).
  The `beq` branch at 0x2ea4 targets 0x2eb4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x2eac targets 0x2eb8 and is always taken.
  The return at 0x2edc has v0 = one of ?, ret(getcpuid).

- `cont_nmi_dump` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x2ee4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x2ee4-0x2f40 (92 bytes).
  It occupies 92 bytes.
  The `ld` at 0x2f00 loads 8 bytes from (sym(pdaindr) + ([sym(master_procid)]:2 << 0x4)) +0x8.
  The `ld` at 0x2f14 loads 8 bytes from abs 0xffffffffffffc020.
  The `sd` at 0x2f20 stores 8 bytes to abs 0xffffffffffffc020.
  The `jal` at 0x2efc calls wirepda with a0=[(sym(pdaindr) + ([sym(master_procid)]:2 << 0x4))+8]:8, a1=([sym(master_procid)]:2 << 0x4), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2f2c calls cmn_err with a0=0x0, a1=sym(.rodata)+120, a2=[-0x3fe0]:8, a3=0x1, a4=[sym(maxcpus)].
  The `bne` branch at 0x2f18 targets 0x2f24, is taken when a2(=[-0x3fe0]:8) != 0, and falls through when a2(=[-0x3fe0]:8) == 0.
  The return at 0x2f38 has v0 = ret(cmn_err).

- `get_except_norm` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x2f40 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x2f40-0x2f48 (8 bytes).
  It occupies 8 bytes.
  The return at 0x2f40 has v0 = sym(exception).

- `ip30_board_rev` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x2f48 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x2f48-0x2f50 (8 bytes).
  It occupies 8 bytes.
  The return at 0x2f48 has v0 = [sym(ip30_rev)].

- `early_nic_access_mcr32` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x2f50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x2f50-0x3050 (256 bytes).
  It occupies 256 bytes.
  The `sw` at 0x2f6c stores 4 bytes to a0 (arg0 at entry) +0x0.
  5 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x2f70, `lw` at 0x2f80, `lw` at 0x2f90.
  7 such `ld` accesses load 8 bytes from abs 0xffffffffaff20000, including `ld` at 0x2fd8, `ld` at 0x2fdc, `ld` at 0x2ff8.
  The `bne` branch at 0x2f78 targets 0x2fc0, is taken when (a4(=[a0]) & 0x2) != 0, and falls through when (a4(=[a0]) & 0x2) == 0.
  The `bne` branch at 0x2f88 targets 0x2fc0, is taken when (a4(=[a0]) & 0x2) != 0, and falls through when (a4(=[a0]) & 0x2) == 0.
  The `bne` branch at 0x2f98 targets 0x2fc0, is taken when (a4(=[a0]) & 0x2) != 0, and falls through when (a4(=[a0]) & 0x2) == 0.
  The `bne` branch at 0x2fa8 targets 0x2fc0, is taken when (a4(=[a0]) & 0x2) != 0, and falls through when (a4(=[a0]) & 0x2) == 0.
  The `beq` branch at 0x2fb8 targets 0x2f70, is taken when (a4(=[a0]) & 0x2) == 0, and falls through when (a4(=[a0]) & 0x2) != 0.
  The `beq` branch at 0x2ff0 targets 0x3048, is taken when t8(=[0xffffffffaff20000]:8) >= a0(?) (unsigned), and falls through when t8(=[0xffffffffaff20000]:8) < a0(?) (unsigned).
  The `beq` branch at 0x3000 targets 0x3048, is taken when a3(=[0xffffffffaff20000]:8) >= a0(?) (unsigned), and falls through when a3(=[0xffffffffaff20000]:8) < a0(?) (unsigned).
  The `beq` branch at 0x3010 targets 0x3048, is taken when a6(=[0xffffffffaff20000]:8) >= a0(?) (unsigned), and falls through when a6(=[0xffffffffaff20000]:8) < a0(?) (unsigned).
  The `beq` branch at 0x3020 targets 0x3048, is taken when a7(=[0xffffffffaff20000]:8) >= a0(?) (unsigned), and falls through when a7(=[0xffffffffaff20000]:8) < a0(?) (unsigned).
  The `beq` branch at 0x3030 targets 0x3048, is taken when t0(=[0xffffffffaff20000]:8) >= a0(?) (unsigned), and falls through when t0(=[0xffffffffaff20000]:8) < a0(?) (unsigned).
  The `bne` branch at 0x3040 targets 0x2ff8, is taken when t1(=[0xffffffffaff20000]:8) < a0(?) (unsigned), and falls through when t1(=[0xffffffffaff20000]:8) >= a0(?) (unsigned).
  The return at 0x3048 has v0 = ?.

- `init_board_rev` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x3050 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x3050-0x3124 (212 bytes).
  It occupies 212 bytes.
  The `lbu` at 0x30c8 loads 1 byte from ret(strstr) +0x9.
  The `jal` at 0x3060 calls nic_info_get with a0=sym(early_nic_access_mcr32), a1=0x900000001f0000b4, a2=sp-272, a3=a3 at entry (arg3).
  The `jal` at 0x3094 calls strstr with a0=sp-272, a1=sym(.rodata)+120, a2=0x10000, a3=?.
  The `jal` at 0x30b0 calls strstr with a0=sp-272, a1=sym(.rodata)+120, a2=?, a3=?.
  The `jal` at 0x30e0 calls strchr with a0=ret(strstr)+5, a1=0x2d, a2=?, a3=?, a4=0x1.
  The `jal` at 0x30fc calls strchr with a0=ret(strchr)+1, a1=0x2d, a2=?, a3=?, a4=0x1.
  The `jal` at 0x3114 calls atoi with a0=ret(strchr)+1, a1=?, a2=?, a3=?.
  The `beq` branch at 0x3068 targets 0x308c, is taken when v0(=ret(nic_info_get)) == 0, and falls through when v0(=ret(nic_info_get)) != 0.
  The `beq` branch at 0x3074 targets 0x308c, is taken when v0(=ret(nic_info_get)) == at(=0x1), and falls through when v0(=ret(nic_info_get)) != at(=0x1).
  The `bne` branch at 0x309c targets 0x30dc, is taken when v0(=ret(strstr)) != 0, and falls through when v0(=ret(strstr)) == 0.
  The `beq` branch at 0x30bc targets 0x30cc, is taken when v0(=ret(strstr)) == 0, and falls through when v0(=ret(strstr)) != 0.
  The `beq` branch at 0x30c4 targets 0x30d0 and is always taken.
  The `beq` branch at 0x30d4 targets 0x3080 and is always taken.
  The `bne` branch at 0x30e8 targets 0x30f8, is taken when v0(=ret(strchr)) != 0, and falls through when v0(=ret(strchr)) == 0.
  The `beq` branch at 0x30f0 targets 0x30a8 and is always taken.
  The `bne` branch at 0x3104 targets 0x3114, is taken when v0(=ret(strchr)) != 0, and falls through when v0(=ret(strchr)) == 0.
  The `beq` branch at 0x310c targets 0x30a4 and is always taken.
  The `beq` branch at 0x311c targets 0x30a4 and is always taken.
  The return at 0x3084 has v0 = one of 0x10045, ret(strstr).

- `add_ioboard` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x3124 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x3124-0x312c (8 bytes).
  It occupies 8 bytes.
  The return at 0x3124 has v0 = ?.

- `add_cpuboard` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x312c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x312c-0x31e4 (184 bytes).
  It occupies 184 bytes.
  The `lh` at 0x313c loads 2 bytes from abs 0xffffffffffffc3a0.
  The `lw` at 0x3164 loads 4 bytes from abs 0xffffffffffffc3fc.
  The `lw` at 0x317c loads 4 bytes from abs 0xffffffffffffc400.
  The `lw` at 0x3194 loads 4 bytes from abs 0xffffffffffffc65c.
  The `jal` at 0x3138 calls cpu_mhz_rating with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3150 calls add_to_inventory with a0=0x1, a1=0x1, a2=ret(cpu_mhz_rating), a3=-0x1, a4=0x10.
  The `jal` at 0x3168 calls add_to_inventory with a0=0x1, a1=0x2, a2=[-0x3c60]:2, a3=0x0, a4=[-0x3c04].
  The `jal` at 0x3180 calls add_to_inventory with a0=0x1, a1=0x3, a2=[-0x3c60]:2, a3=0x0, a4=[-0x3c00].
  The `jal` at 0x3198 calls add_to_inventory with a0=0x3, a1=0x8, a2=0x0, a3=0x0, a4=[-0x39a4].
  The `jal` at 0x31a0 calls heart_rev with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x31c0 calls heart_rev with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x31d4 calls cmn_err with a0=0x0, a1=sym(.rodata)+120, a2=ret(heart_rev)+64, a3=?.
  The `bne` branch at 0x31ac targets 0x31c0, is taken when v0(=ret(heart_rev)) < 0x4 (signed), and falls through when v0(=ret(heart_rev)) >= 0x4 (signed).
  The `beq` branch at 0x31dc targets 0x31b4 and is always taken.
  The return at 0x31b8 has v0 = one of ret(heart_rev), ret(cmn_err).

- `cpuboard` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x31e4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x31e4-0x31ec (8 bytes).
  It occupies 8 bytes.
  The return at 0x31e4 has v0 = 0x10.

- `dprintf` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x31ec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x31ec-0x33a8 (444 bytes).
  It occupies 444 bytes.
  The `ld` at 0x3218 loads 8 bytes from abs 0xa800000000001020.
  The `ld` at 0x3240 loads 8 bytes from [0xa800000000001020]:8 +0x18.
  The `jalr` at 0x328c calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x329c calls cn_is_inited with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x330c calls arcs_printf with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3398 calls cmn_err with a0=0x6, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=a3 at entry (arg3), a5=a4 at entry (arg4), a6=a5 at entry (arg5), a7=a6 at entry (arg6).
  The `beq` branch at 0x3238 targets 0x329c, is taken when t1(=[0xa800000000001020]:8) == 0, and falls through when t1(=[0xa800000000001020]:8) != 0.
  The `beq` branch at 0x3244 targets 0x329c, is taken when t2(=[[0xa800000000001020]:8+24]:8) == 0, and falls through when t2(=[[0xa800000000001020]:8+24]:8) != 0.
  The `beq` branch at 0x3294 targets 0x3318 and is always taken.
  The `bne` branch at 0x32b0 targets 0x3340, is taken when v0(=ret(cn_is_inited)) != 0, and falls through when v0(=ret(cn_is_inited)) == 0.
  The `beq` branch at 0x33a0 targets 0x3318 and is always taken.
  The return at 0x3338 has v0 = one of ret(?), ret(arcs_printf), ret(cmn_err).

- `cpu_isvalid` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x33a8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x33a8-0x33e0 (56 bytes).
  It occupies 56 bytes.
  The `lw` at 0x33c8 loads 4 bytes from (sym(pdaindr) + (a0 << 0x4)) +0x0.
  The `bltz` branch at 0x33ac targets 0x33d4, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0x33c0 targets 0x33d4, is taken when a0 >= v1(=[sym(maxcpus)]) (signed), and falls through when a0 < v1(=[sym(maxcpus)]) (signed).
  The `bne` branch at 0x33cc targets 0x33d8, is taken when a0(=[(sym(pdaindr) + (a0 << 0x4))]) != a1(=-0x1), and falls through when a0(=[(sym(pdaindr) + (a0 << 0x4))]) == a1(=-0x1).
  The return at 0x33d8 has v0 = one of 0x0, 0x1.

- `ip30_chips_mlreset` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x33e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x33e0-0x3534 (340 bytes).
  It occupies 340 bytes.
  The `sw` at 0x3444 stores 4 bytes to abs 0x900000001f000284.
  The `sw` at 0x3450 stores 4 bytes to abs 0x900000001f00028c.
  The `sw` at 0x345c stores 4 bytes to abs 0x900000001f000084.
  The `jal` at 0x33e8 calls xtalk_set_early_piotrans_addr with a0=sym(ip30_early_piotrans_addr), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x33f0 calls heart_mlreset with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x33f8 calls xbow_mlreset with a0=0x9000000010000000, a1=?, a2=?, a3=?.
  The `jal` at 0x3408 calls ioc3_mlreset with a0=0x900000001f022000, a1=0x900000001f600000, a2=?, a3=?.
  The `jal` at 0x3458 calls heart_intr_prealloc with a0=0xffffffffaff00000, a1=0x3a, a2=sym(xbow_intr_preset), a3=0x9000000010000000, a4=-0x1, a5=0x900000001f00028c, a6=0x900000001f000284.
  The `jal` at 0x3478 calls heart_intr_prealloc with a0=0xffffffffaff00000, a1=0x39, a2=sym(pcibr_xintr_preset), a3=0x900000001f000000, a4=-0x1.
  The `jal` at 0x3490 calls heart_intr_prealloc with a0=0xffffffffaff00000, a1=0x11, a2=sym(pcibr_xintr_preset), a3=0x900000001f000000, a4=0x2.
  The `jal` at 0x34a4 calls heart_intr_preconn with a0=0xffffffffaff00000, a1=0x11, a2=sym(ioc3_intr), a3=0x0.
  The `jal` at 0x34bc calls heart_intr_prealloc with a0=0xffffffffaff00000, a1=0x10, a2=sym(pcibr_xintr_preset), a3=0x900000001f000000, a4=0x4.
  The `jal` at 0x34d0 calls heart_intr_preconn with a0=0xffffffffaff00000, a1=0x10, a2=sym(ioc3_intr), a3=0x0.
  The `jal` at 0x34e8 calls heart_intr_prealloc with a0=0xffffffffaff00000, a1=0x39, a2=sym(pcibr_xintr_preset), a3=0x900000001f000000, a4=0x7.
  The `jal` at 0x3500 calls heart_intr_prealloc with a0=0xffffffffaff00000, a1=0x29, a2=sym(pcibr_xintr_preset), a3=0x900000001f000000, a4=0x6.
  The `jal` at 0x351c calls heart_intr_preconn with a0=0xffffffffaff00000, a1=0x29, a2=sym(powerintr), a3=0x0.
  The return at 0x352c has v0 = ret(heart_intr_preconn).

- `ip30_early_piotrans_addr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x3534 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x3534-0x3688 (340 bytes).
  It occupies 340 bytes.
  The `ld` at 0x3538 loads 8 bytes from abs 0xffffffffaff00080.
  The `lw` at 0x3558 loads 4 bytes from (0x9000000000000000 | table(0x10000000)) +0x4.
  The `lw` at 0x3594 loads 4 bytes from abs 0x9000000010000004.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x35d4, `lw` at 0x35ec.
  The `jal` at 0x361c calls heart_addr_xio_to_kva with a0=?, a1=a3 at entry (arg3), a2=a4 at entry (arg4), a3=a3 at entry (arg3).
  The `jal` at 0x3660 calls heart_addr_xio_to_kva with a0=?, a1=a3 at entry (arg3), a2=a4 at entry (arg4), a3=a3 at entry (arg3).
  The `jal` at 0x3678 calls heart_addr_xio_to_kva with a0=0x0, a1=a3 at entry (arg3), a2=a4 at entry (arg4), a3=a3 at entry (arg3).
  The `bne` branch at 0x357c targets 0x3594, is taken when a0 != at(?), and falls through when a0 == at(?).
  The `bne` branch at 0x3584 targets 0x3594, is taken when a1 != a7(?), and falls through when a1 == a7(?).
  The `beq` branch at 0x358c targets 0x3658, is taken when a2 == 0, and falls through when a2 != 0.
  The `bne` branch at 0x35a4 targets 0x35c4, is taken when a0 != t9(?), and falls through when a0 == t9(?).
  The `beq` branch at 0x35ac targets 0x3640 and is always taken.
  The `bne` branch at 0x35bc targets 0x362c, is taken when v0(?) < 0x8 (signed), and falls through when v0(?) >= 0x8 (signed).
  The `beq` branch at 0x35c4 targets 0x35b4, is taken when v0(?) == t0(?), and falls through when v0(?) != t0(?).
  The `beq` branch at 0x35dc targets 0x35b4, is taken when (at(?) & 0x20) == 0, and falls through when (at(?) & 0x20) != 0.
  The `bne` branch at 0x35fc targets 0x35b4, is taken when a0 != t8(?), and falls through when a0 == t8(?).
  The `bne` branch at 0x3604 targets 0x35b4, is taken when a1 != a7(?), and falls through when a1 == a7(?).
  The `bne` branch at 0x360c targets 0x35b4, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x3624 targets 0x3630 and is always taken.
  The `bne` branch at 0x3640 targets 0x35c4, is taken when a1 != a7(?), and falls through when a1 == a7(?).
  The `beq` branch at 0x3648 targets 0x3670, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x3650 targets 0x35c4 and is always taken.
  The `beq` branch at 0x3668 targets 0x3630 and is always taken.
  The `beq` branch at 0x3680 targets 0x3630 and is always taken.
  The return at 0x3638 has v0 = one of ret(heart_addr_xio_to_kva), 0x0.

- `init_all_devices` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x3688 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x3688-0x38ac (548 bytes).
  It occupies 548 bytes.
  The `jal` at 0x36a8 calls hwgraph_path_add with a0=[sym(hwgraph_root)], a1=sym(.rodata)+120, a2=sp-80, a3=a3 at entry (arg3).
  The `jal` at 0x36b4 calls mark_nodevertex_as_node with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x36cc calls hwgraph_path_add with a0=?, a1=sym(.rodata)+120, a2=sp-76, a3=?.
  The `jal` at 0x36dc calls nic_bridge_vertex_info with a0=?, a1=0xffffffffaff000bc, a2=?, a3=?.
  The `jal` at 0x3700 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x371c calls sprintf with a0=sp-72, a1=sym(.rodata)+120, a2=?, a3=?.
  The `jal` at 0x372c calls hwgraph_path_add with a0=?, a1=sp-72, a2=sp-56, a3=?.
  The `jal` at 0x3738 calls mark_cpuvertex_as_cpu with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3744 calls device_master_set with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3770 calls hwgraph_path_add with a0=?, a1=sym(.rodata)+120, a2=sp-52, a3=?.
  The `jal` at 0x3784 calls hwgraph_path_add with a0=[sym(hwgraph_root)], a1=sym(.rodata)+120, a2=sp-48, a3=?.
  The `jal` at 0x3798 calls hwgraph_path_add with a0=[sym(hwgraph_root)], a1=sym(.rodata)+120, a2=sp-44, a3=?.
  The `jal` at 0x37ac calls hwgraph_path_add with a0=[sym(hwgraph_root)], a1=sym(.rodata)+120, a2=sp-40, a3=?.
  The `jal` at 0x37bc calls hwgraph_path_add with a0=?, a1=sym(.rodata)+120, a2=sp-36, a3=?.
  The `jal` at 0x37c4 calls pcibr_hints_fix_rrbs with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x37d4 calls pcibr_hints_dualslot with a0=?, a1=0x2, a2=0x4, a3=?.
  The `jal` at 0x37e4 calls pcibr_hints_subdevs with a0=?, a1=0x2, a2=0x7f, a3=?.
  The `jal` at 0x37ec calls heart_startup with a0=[sym(hwgraph_root)], a1=?, a2=?, a3=?.
  The `jal` at 0x3800 calls hwgraph_link_add with a0=sym(.rodata)+120, a1=sym(.rodata)+120, a2=sym(.rodata)+120, a3=?.
  The `jal` at 0x3814 calls hwgraph_link_add with a0=sym(.rodata)+120, a1=sym(.rodata)+120, a2=sym(.rodata)+120, a3=?.
  The `jal` at 0x3828 calls hwgraph_link_add with a0=sym(.rodata)+120, a1=sym(.rodata)+120, a2=sym(.rodata)+120, a3=?.
  The `jal` at 0x3830 calls hwgraph_path_to_vertex with a0=sym(.rodata)+120, a1=?, a2=?, a3=?.
  The `jal` at 0x3840 calls device_controller_num_set with a0=ret(hwgraph_path_to_vertex), a1=0x0, a2=?, a3=?.
  The `jal` at 0x384c calls hwgraph_path_to_vertex with a0=sym(.rodata)+120, a1=?, a2=?, a3=?.
  The `jal` at 0x385c calls device_controller_num_set with a0=ret(hwgraph_path_to_vertex), a1=0x1, a2=?, a3=?.
  The `jal` at 0x3864 calls hwgraph_path_to_vertex with a0=sym(.rodata)+120, a1=?, a2=?, a3=?.
  The `jal` at 0x3878 calls device_controller_num_set with a0=ret(hwgraph_path_to_vertex), a1=0x0, a2=?, a3=?.
  The `jal` at 0x3880 calls hwgraph_fastinfo_get with a0=ret(hwgraph_path_to_vertex), a1=?, a2=?, a3=?.
  The `jal` at 0x3890 calls ef_ifattach with a0=ret(hwgraph_fastinfo_get), a1=0x0, a2=?, a3=?.
  The `blez` branch at 0x36f0 targets 0x3760, is taken when a2(=[sym(maxcpus)]) <= 0 (signed), and falls through when a2(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x3708 targets 0x3750, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0x3758 targets 0x36fc, is taken when s0(?) < a2(=[sym(maxcpus)]) (signed), and falls through when s0(?) >= a2(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x3838 targets 0x3848, is taken when s2(=-0x1) == v0(=ret(hwgraph_path_to_vertex)), and falls through when s2(=-0x1) != v0(=ret(hwgraph_path_to_vertex)).
  The `beq` branch at 0x3854 targets 0x3864, is taken when s2(=-0x1) == v0(=ret(hwgraph_path_to_vertex)), and falls through when s2(=-0x1) != v0(=ret(hwgraph_path_to_vertex)).
  The `beq` branch at 0x386c targets 0x3898, is taken when s2(=-0x1) == v0(=ret(hwgraph_path_to_vertex)), and falls through when s2(=-0x1) != v0(=ret(hwgraph_path_to_vertex)).
  The `beq` branch at 0x3888 targets 0x3898, is taken when v0(=ret(hwgraph_fastinfo_get)) == 0, and falls through when v0(=ret(hwgraph_fastinfo_get)) != 0.
  The return at 0x38a4 has v0 = one of ret(hwgraph_path_to_vertex), ret(hwgraph_fastinfo_get), ret(ef_ifattach).

- `sendintr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x38ac (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x38ac-0x38c8 (28 bytes).
  It occupies 28 bytes.
  The `sd` at 0x38bc stores 8 bytes to abs 0xffffffffaff10020.
  The return at 0x38c0 has v0 = 0x0.

- `debug_stop_all_cpus` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x38c8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x38c8-0x3954 (140 bytes).
  It occupies 140 bytes.
  3 such `lh` accesses load 2 bytes from abs 0xffffffffffffc3a0, including `lh` at 0x3900, `lh` at 0x3928, `lh` at 0x3950.
  2 such `sd` accesses store 8 bytes to abs 0xffffffffaff10020, including `sd` at 0x390c, `sd` at 0x3934.
  The `blez` branch at 0x38dc targets 0x3940, is taken when a3(=[sym(maxcpus)]) <= 0 (signed), and falls through when a3(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x38e4 targets 0x3948 and is always taken.
  The `beq` branch at 0x38f8 targets 0x3940, is taken when a1(?) >= a3(=[sym(maxcpus)]) (signed), and falls through when a1(?) < a3(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x3904 targets 0x3914, is taken when t0(=[-0x3c60]:2) == a1(?), and falls through when t0(=[-0x3c60]:2) != a1(?).
  The `beq` branch at 0x3920 targets 0x3940, is taken when a1(?) >= a3(=[sym(maxcpus)]) (signed), and falls through when a1(?) < a3(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x392c targets 0x38ec, is taken when t2(=[-0x3c60]:2) == a1(?), and falls through when t2(=[-0x3c60]:2) != a1(?).
  The `beq` branch at 0x3938 targets 0x38ec and is always taken.
  The `beq` branch at 0x394c targets 0x3904 and is always taken.
  The return at 0x3940 has v0 = ?.

- `tsfastick_maint` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x3954 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x3954-0x39cc (120 bytes).
  It occupies 120 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc280, including `ld` at 0x3954, `ld` at 0x3974.
  The `jal` at 0x396c calls fastick_maint with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x39a0 calls log_tstamp_event with a0=0x6e, a1=0x0, a2=0x0, a3=0x0, a4=0x0.
  The `jal` at 0x39bc calls log_tstamp_event with a0=0x65, a1=0x6e, a2=0x0, a3=0x0, a4=0x0.
  The `bne` branch at 0x3964 targets 0x3990, is taken when (at(=[-0x3d80]:8) & 0x20) != 0, and falls through when (at(=[-0x3d80]:8) & 0x20) == 0.
  The `bne` branch at 0x397c targets 0x39b0, is taken when (v0(=[-0x3d80]:8) & 0x20) != 0, and falls through when (v0(=[-0x3d80]:8) & 0x20) == 0.
  The `beq` branch at 0x39a8 targets 0x396c and is always taken.
  The `beq` branch at 0x39c4 targets 0x3988 and is always taken.
  The return at 0x3988 has v0 = one of ?, ret(log_tstamp_event).

- `pokesoftclk` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x39cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x39cc-0x39e8 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x39d4 calls siroff with a0=0x200, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x39e0 has v0 = ret(siroff).

- `ip30_intr_maint` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x39e8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x39e8-0x3a18 (48 bytes).
  It occupies 48 bytes.
  The `lw` at 0x39e8 loads 4 bytes from abs 0xffffffffffffc560.
  The `lw` at 0x39f8 loads 4 bytes from abs 0xffffffffffffc564.
  The `jal` at 0x3a04 calls siron with a0=0x200, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x39f0 targets 0x3a04, is taken when at(=[-0x3aa0]) != 0, and falls through when at(=[-0x3aa0]) == 0.
  The `beq` branch at 0x39fc targets 0x3a10, is taken when v0(=[-0x3a9c]) == 0, and falls through when v0(=[-0x3a9c]) != 0.
  The return at 0x3a10 has v0 = one of [-0x3a9c], ret(siron).

- `intr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x3a18 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x3a18-0x3cd0 (696 bytes).
  It occupies 696 bytes.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffc048, including `lw` at 0x3a20, `lw` at 0x3c34.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc280, including `ld` at 0x3a48, `ld` at 0x3c4c.
  The `lbu` at 0x3ae8 loads 1 byte from ?.
  The `ld` at 0x3b04 loads 8 bytes from table(sym(kmem_ioaddr)) +0x10.
  The `lw` at 0x3b08 loads 4 bytes from table(sym(kmem_ioaddr)) +0x18.
  The `lw` at 0x3b0c loads 4 bytes from table(sym(kmem_ioaddr)) +0x1c.
  The `lw` at 0x3b10 loads 4 bytes from table(sym(kmem_ioaddr)) +0x20.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffc564, including `lw` at 0x3b4c, `lw` at 0x3bdc.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffc560, including `lw` at 0x3b64, `lw` at 0x3bb8.
  The `lbu` at 0x3b88 loads 1 byte from table(sym(kmem_ioaddr)) +0x138.
  The `ld` at 0x3b8c loads 8 bytes from abs 0xffffffffffffc488.
  The `ll` at 0x3b98 loads 4 bytes from [-0x3b78]:8 +0xd0.
  The `sc` at 0x3ba4 stores 4 bytes to [-0x3b78]:8 +0xd0.
  The `sw` at 0x3bd8 stores 4 bytes to abs 0xffffffffffffc560.
  The `sw` at 0x3bf8 stores 4 bytes to abs 0xffffffffffffc564.
  The `jal` at 0x3a9c calls splprof with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3b14 calls splx with a0=[table(sym(kmem_ioaddr))+24], a1=?, a2=?, a3=?.
  The `jalr` at 0x3b1c calls (unknown callee) with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x3b40 calls getcause with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3c04 calls ip30_intr_maint with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3c44 calls check_delay_tlbflush with a0=0x1, a1=?, a2=?, a3=?, a5=one of 0x0, 0x1.
  The `jal` at 0x3c6c calls splx with a0=ret(splprof), a1=?, a2=?, a3=?.
  The `jal` at 0x3c7c calls check_delay_tlbflush with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3ca0 calls log_tstamp_event with a0=0x65, a1=0x66, a2=0x0, a3=0x0, a4=0x0.
  The `jal` at 0x3cc0 calls log_tstamp_event with a0=0x66, a1=0x0, a2=0x0, a3=0x0, a4=0x0.
  The `beq` branch at 0x3a3c targets 0x3c7c, is taken when at(?) == v0(=0x30), and falls through when at(?) != v0(=0x30).
  The `bne` branch at 0x3a5c targets 0x3cb0, is taken when (v0(=[-0x3d80]:8) & 0x20) != 0, and falls through when (v0(=[-0x3d80]:8) & 0x20) == 0.
  The `beq` branch at 0x3a94 targets 0x3b4c and is always taken.
  The `beq` branch at 0x3aa8 targets 0x3bb8, is taken when (s8(=0x10000) & s0(?)) == 0, and falls through when (s8(=0x10000) & s0(?)) != 0.
  The `beq` branch at 0x3ab4 targets 0x3bdc, is taken when (a2(=0x20000) & s0(?)) == 0, and falls through when (a2(=0x20000) & s0(?)) != 0.
  The `beq` branch at 0x3ac0 targets 0x3c6c, is taken when (a3(=0x30000) & s0(?)) == 0, and falls through when (a3(=0x30000) & s0(?)) != 0.
  The `beq` branch at 0x3ad8 targets 0x3c04, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x3ae0 targets 0x3b80, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x3b30 targets 0x3b8c, is taken when s1(=[table(sym(kmem_ioaddr))+32]) == 0, and falls through when s1(=[table(sym(kmem_ioaddr))+32]) != 0.
  The `beq` branch at 0x3b54 targets 0x3b64, is taken when ra(=[-0x3a9c]) == 0, and falls through when ra(=[-0x3a9c]) != 0.
  The `bne` branch at 0x3b5c targets 0x3a9c, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x3b68 targets 0x3ac8, is taken when v0(=[-0x3aa0]) == 0, and falls through when v0(=[-0x3aa0]) != 0.
  The `bne` branch at 0x3b70 targets 0x3a9c, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x3b78 targets 0x3ac8 and is always taken.
  The `beq` branch at 0x3b84 targets 0x3aec and is always taken.
  The `beql` branch at 0x3ba8 targets 0x3b98, is taken when a2(=[[-0x3b78]:8+208]+1) == 0, and falls through when a2(=[[-0x3b78]:8+208]+1) != 0; its branch-likely delay slot `nop` at 0x3bac runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x3bb0 targets 0x3b40 and is always taken.
  The `beq` branch at 0x3bc0 targets 0x3ab0, is taken when a5(=[-0x3aa0]) == 0, and falls through when a5(=[-0x3aa0]) != 0.
  The `beq` branch at 0x3bc8 targets 0x3ab0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x3bd4 targets 0x3ab0 and is always taken.
  The `beq` branch at 0x3be8 targets 0x3ab8, is taken when a5(=[-0x3a9c]) == 0, and falls through when a5(=[-0x3a9c]) != 0.
  The `beq` branch at 0x3bf0 targets 0x3ab8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x3bfc targets 0x3ab8 and is always taken.
  The `beq` branch at 0x3c2c targets 0x3c4c, is taken when a5(=one of 0x0, 0x1) == 0, and falls through when a5(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x3c3c targets 0x3c4c, is taken when (a6(=[-0x3fb8]) & 0x10) == 0, and falls through when (a6(=[-0x3fb8]) & 0x10) != 0.
  The `bne` branch at 0x3c54 targets 0x3c90, is taken when (a7(=[-0x3d80]:8) & 0x20) != 0, and falls through when (a7(=[-0x3d80]:8) & 0x20) == 0.
  The `beq` branch at 0x3c74 targets 0x3ac8 and is always taken.
  The `beq` branch at 0x3c88 targets 0x3a48 and is always taken.
  The `beq` branch at 0x3ca8 targets 0x3c5c and is always taken.
  The `beq` branch at 0x3cc8 targets 0x3a68 and is always taken.
  The return at 0x3c64 has v0 = one of 0x0, 0x1.

- `intr_spray_heuristic` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x3cd0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x3cd0-0x3d90 (192 bytes).
  It occupies 192 bytes.
  The `ld` at 0x3d4c loads 8 bytes from table(sym(pdaindr)) +0x8.
  The `lw` at 0x3d50 loads 4 bytes from [table(sym(pdaindr))+8]:8 +0x48.
  The `lw` at 0x3d74 loads 4 bytes from table(sym(.sdata)+80) +0x0.
  The `sw` at 0x3d8c stores 4 bytes to table(sym(.sdata)+80) +0x0.
  The `jal` at 0x3ce0 calls device_desc_intr_target_get with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3cf4 calls cpuvertex_to_cpuid with a0=ret(device_desc_intr_target_get), a1=[sym(.sdata)+80], a2=?, a3=?.
  The `jal` at 0x3d04 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x3d34 calls cpu_enabled with a0=?, a1=[sym(.sdata)+80], a2=?, a3=?.
  The `beq` branch at 0x3cd8 targets 0x3d28, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x3cec targets 0x3d2c, is taken when v0(=ret(device_desc_intr_target_get)) == at(=-0x1), and falls through when v0(=ret(device_desc_intr_target_get)) != at(=-0x1).
  The `beq` branch at 0x3d20 targets 0x3d64 and is always taken.
  The `beq` branch at 0x3d3c targets 0x3d60, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `beq` branch at 0x3d58 targets 0x3d68, is taken when (a2(=[[table(sym(pdaindr))+8]:8+72]) & 0x80) == 0, and falls through when (a2(=[[table(sym(pdaindr))+8]:8+72]) & 0x80) != 0.
  The return at 0x3d88 has v0 = ?.

- `heart_set_cpu_intr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x3d90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x3d90-0x3da4 (20 bytes).
  It occupies 20 bytes.
  The `sd` at 0x3da0 stores 8 bytes to abs 0xffffffffaff10020.
  The return at 0x3d9c has v0 = 0xffffffffaff10000.

- `devnamefromarcs` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x3da4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x3da4-0x3f24 (384 bytes).
  It occupies 384 bytes.
  The `lw` at 0x3ddc loads 4 bytes from sym(.rodata) +0x430.
  The `ld` at 0x3de0 loads 8 bytes from sym(.rodata) +0x440.
  The `lbu` at 0x3de8 loads 1 byte from a0 (arg0 at entry) +0x3.
  The `ld` at 0x3df0 loads 8 bytes from sym(.rodata) +0x410.
  The `lbu` at 0x3df8 loads 1 byte from sym(.rodata) +0x418.
  The `lbu` at 0x3e04 loads 1 byte from sym(.rodata) +0x434.
  9 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x3e08, `lbu` at 0x3e1c, `lbu` at 0x3e34.
  13 such `sb` accesses store 1 byte to ?, including `sb` at 0x3e18, `sb` at 0x3e30, `sb` at 0x3e64.
  The `lbu` at 0x3e24 loads 1 byte from sym(.rodata) +0x436.
  3 such `sdl` accesses store 8 bytes to ?, including `sdl` at 0x3e28, `sdl` at 0x3e74, `sdl` at 0x3e7c.
  3 such `sdr` accesses store 8 bytes to ?, including `sdr` at 0x3e2c, `sdr` at 0x3e78, `sdr` at 0x3e80.
  The `ld` at 0x3e38 loads 8 bytes from sym(.rodata) +0x420.
  The `ld` at 0x3e40 loads 8 bytes from sym(.rodata) +0x428.
  The `lbu` at 0x3e48 loads 1 byte from sym(.rodata) +0x435.
  2 such `swl` accesses store 4 bytes to ?, including `swl` at 0x3e84, `swl` at 0x3f00.
  2 such `swr` accesses store 4 bytes to ?, including `swr` at 0x3e88, `swr` at 0x3f04.
  The `lbu` at 0x3ef4 loads 1 byte from sym(.rodata) +0x44d.
  The `lw` at 0x3ef8 loads 4 bytes from sym(.rodata) +0x448.
  The `lbu` at 0x3efc loads 1 byte from sym(.rodata) +0x44c.
  The `jal` at 0x3dbc calls strncmp with a0=a0 at entry (arg0), a1=sym(.rodata)+120, a2=0x3, a3=a3 at entry (arg3).
  The `jal` at 0x3f14 calls strcpy with a0=a0 at entry (arg0), a1=sp-272, a2=0x6b, a3=?, a4=0x0, a5=0x626c6f63, a6=0x2f, a7=0x6e.
  The `beq` branch at 0x3dc4 targets 0x3ddc, is taken when v0(=ret(strncmp)) == 0, and falls through when v0(=ret(strncmp)) != 0.
  The `beq` branch at 0x3e00 targets 0x3e24, is taken when a0(=0x64) == a7(=[a0+3]:1), and falls through when a0(=0x64) != a7(=[a0+3]:1).
  The `beq` branch at 0x3e14 targets 0x3dcc, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x3e20 targets 0x3e08, is taken when a0(=0x64) != t2(?), and falls through when a0(=0x64) == t2(?).
  The `beq` branch at 0x3e4c targets 0x3e74, is taken when a0(=0x73) == t9(?), and falls through when a0(=0x73) != t9(?).
  The `beq` branch at 0x3e60 targets 0x3dcc, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `bne` branch at 0x3e6c targets 0x3e54, is taken when a0(=0x73) != at(?), and falls through when a0(=0x73) == at(?).
  The `beq` branch at 0x3ea4 targets 0x3ee8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x3eb8 targets 0x3ee8, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x3ecc targets 0x3ee8, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x3ee0 targets 0x3eac, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x3f1c targets 0x3dd0 and is always taken.
  The return at 0x3dd4 has v0 = one of ret(strncmp), ret(strcpy).

- `heart_invalidate_war` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x3f24 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x3f24-0x3fb8 (148 bytes).
  It occupies 148 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0x3f34, `ld` at 0x3f6c.
  2 such `lbu` accesses load 1 byte from abs 0xffffffffffffc04f, including `lbu` at 0x3f48, `lbu` at 0x3f78.
  The `jal` at 0x3f54 calls splhi with a0=0x2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3f64 calls __heart_invalidate_war with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x3f84 calls splx with a0=?, a1=[-0x3fe0]:8, a2=?, a3=0x2.
  The `jal` at 0x3f98 calls rt_unpin_thread with a0=?, a1=[-0x3fe0]:8, a2=[-0x3fb1]:1, a3=0x2.
  The `jal` at 0x3fa8 calls rt_pin_thread with a0=0x2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x3f2c targets 0x3f8c, is taken when at(=[sym(_heart_invalidate_war)]) == 0, and falls through when at(=[sym(_heart_invalidate_war)]) != 0.
  The `beq` branch at 0x3f40 targets 0x3f54, is taken when v0(=[-0x3fe0]:8) == 0, and falls through when v0(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0x3f4c targets 0x3fa8, is taken when v1(=[-0x3fb1]:1) == a0(=0x2), and falls through when v1(=[-0x3fb1]:1) != a0(=0x2).
  The `beq` branch at 0x3f70 targets 0x3f84, is taken when a1(=[-0x3fe0]:8) == 0, and falls through when a1(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0x3f7c targets 0x3f98, is taken when a2(=[-0x3fb1]:1) == a3(=0x2), and falls through when a2(=[-0x3fb1]:1) != a3(=0x2).
  The `beq` branch at 0x3fa0 targets 0x3f90 and is always taken.
  The `beq` branch at 0x3fb0 targets 0x3f60 and is always taken.
  The return at 0x3f90 has v0 = one of ?, ret(rt_unpin_thread).

- `bp_heart_invalidate_war` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x3fb8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x3fb8-0x40e4 (300 bytes).
  It occupies 300 bytes.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0x3fd4, `ld` at 0x4028, `ld` at 0x40d0.
  2 such `lbu` accesses load 1 byte from abs 0xffffffffffffc04f, including `lbu` at 0x3fe0, `lbu` at 0x4038.
  The `ld` at 0x3ff8 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0x400c loads 4 bytes from a0 (arg0 at entry) +0x68.
  The `ld` at 0x4014 loads 8 bytes from a0 (arg0 at entry) +0x80.
  The `lwu` at 0x406c loads 4 bytes from a0 (arg0 at entry) +0x74.
  The `ld` at 0x4084 loads 8 bytes from a0 (arg0 at entry) +0xa0.
  The `ld` at 0x40c8 loads 8 bytes from ?.
  The `jal` at 0x3fec calls splhi with a0=0x2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4010 calls __heart_invalidate_war with a0=[a0+128]:8, a1=[a0+104], a2=0x4000, a3=?.
  The `jal` at 0x4044 calls splx with a0=?, a1=?, a2=?, a3=[-0x3fe0]:8, a5=0x2.
  The `jal` at 0x405c calls rt_pin_thread with a0=0x2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x40b4 calls __heart_invalidate_war with a0=?, a1=0x4000, a2=?, a3=-0x1.
  The `jal` at 0x40d4 calls rt_unpin_thread with a0=?, a1=?, a2=?, a3=[-0x3fe0]:8, a4=[-0x3fb1]:1, a5=0x2.
  The `beq` branch at 0x3fcc targets 0x404c, is taken when at(=[sym(_heart_invalidate_war)]) == 0, and falls through when at(=[sym(_heart_invalidate_war)]) != 0.
  The `beq` branch at 0x3fd8 targets 0x3fec, is taken when v0(=[-0x3fe0]:8) == 0, and falls through when v0(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0x3fe4 targets 0x405c, is taken when v1(=[-0x3fb1]:1) == a0(=0x2), and falls through when v1(=[-0x3fb1]:1) != a0(=0x2).
  The `beq` branch at 0x4004 targets 0x4020, is taken when a1(?) == a2(=0x4000), and falls through when a1(?) != a2(=0x4000).
  The `beq` branch at 0x4018 targets 0x4050 and is always taken.
  The `bgez` branch at 0x4020 targets 0x406c, is taken when a0(=([a0+16]:8 << 0x2a)) >= 0 (signed), and falls through when a0(=([a0+16]:8 << 0x2a)) < 0 (signed).
  The `beq` branch at 0x4030 targets 0x4044, is taken when a3(=[-0x3fe0]:8) == 0, and falls through when a3(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0x403c targets 0x40d4, is taken when a4(=[-0x3fb1]:1) == a5(=0x2), and falls through when a4(=[-0x3fb1]:1) != a5(=0x2).
  The `beq` branch at 0x4064 targets 0x3ff8 and is always taken.
  The `beq` branch at 0x408c targets 0x4028, is taken when a1(?) == a3(=-0x1), and falls through when a1(?) != a3(=-0x1).
  The `bne` branch at 0x40c4 targets 0x4098, is taken when s0(?) != a3(=-0x1), and falls through when s0(?) == a3(=-0x1).
  The `beq` branch at 0x40cc targets 0x402c and is always taken.
  The `beq` branch at 0x40dc targets 0x4050 and is always taken.
  The return at 0x4054 has v0 = one of ret(__heart_invalidate_war), ?, ret(rt_unpin_thread).

- `ip30_rad_halt` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x40e4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x40e4-0x4108 (36 bytes).
  It occupies 36 bytes.
  The `jalr` at 0x40f4 calls (unknown callee) with a0=a0 at entry (arg0), a1=[sym(rad_halt_func)]:8, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x40ec targets 0x40fc, is taken when a1(=[sym(rad_halt_func)]:8) == 0, and falls through when a1(=[sym(rad_halt_func)]:8) != 0.
  The return at 0x4100 has v0 = one of ?, ret(?).

- `stop_bell` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x4108 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x4108-0x413c (52 bytes).
  It occupies 52 bytes.
  The `sw` at 0x412c stores 4 bytes to [sym(.sdata)+64]:8 +0x0.
  The `jal` at 0x4110 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4128 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The return at 0x4134 has v0 = ret(splx).

- `pckbd_bell` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x413c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x413c-0x41c8 (140 bytes).
  It occupies 140 bytes.
  The `sw` at 0x41b0 stores 4 bytes to [sym(.sdata)+72]:8 +0x0.
  The `jal` at 0x4150 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x416c calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x41b4 calls timeout with a0=sym(stop_bell), a1=0x0, a2=?, a3=0x100000, a4=[sym(.sdata)+72]:8.
  The `blez` branch at 0x4148 targets 0x4184, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `beq` branch at 0x4164 targets 0x418c, is taken when v0(=[sym(.sbss)+48]) == 0, and falls through when v0(=[sym(.sbss)+48]) != 0.
  The `beq` branch at 0x4184 targets 0x417c and is always taken.
  The `beq` branch at 0x41c0 targets 0x416c and is always taken.
  The return at 0x417c has v0 = one of 0x0, 0x1.

- `stopclocks` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x41c8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x41c8-0x41f0 (40 bytes).
  It occupies 40 bytes.
  The `sw` at 0x41e0 stores 4 bytes to abs 0xffffffffffffc510.
  The `sd` at 0x41e4 stores 8 bytes to abs 0xffffffffffffc570.
  The `jal` at 0x41d0 calls slowkgclock with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x41e8 has v0 = ret(slowkgclock).

- `counter_intr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x41f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x41f0-0x48ac (1724 bytes).
  It occupies 1724 bytes.
  The `lw` at 0x41f8 loads 4 bytes from abs 0xffffffffffffc658.
  4 such `ld` accesses load 8 bytes from abs 0xffffffffffffc280, including `ld` at 0x420c, `ld` at 0x4224, `ld` at 0x42dc.
  The `lw` at 0x4264 loads 4 bytes from abs 0xffffffffffffc048.
  10 such `ld` accesses load 8 bytes from abs 0xffffffffaff20000, including `ld` at 0x4280, `ld` at 0x42f4, `ld` at 0x4328.
  9 such `lh` accesses load 2 bytes from abs 0xffffffffffffc3a0, including `lh` at 0x4288, `lh` at 0x42a0, `lh` at 0x42c8.
  The `sw` at 0x429c stores 4 bytes to ?.
  The `ld` at 0x42b0 loads 8 bytes from (sym(pdaindr) + ([-0x3c60]:2 << 0x4)) +0x8.
  The `ld` at 0x42f8 loads 8 bytes from abs 0xffffffffffffc558.
  The `lw` at 0x430c loads 4 bytes from abs 0xffffffffffffc6f4.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc548, including `ld` at 0x4380, `ld` at 0x4460.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc570, including `ld` at 0x43a0, `ld` at 0x480c.
  2 such `sd` accesses store 8 bytes to abs 0xffffffffffffc558, including `sd` at 0x4418, `sd` at 0x45ec.
  The `lwu` at 0x4430 loads 4 bytes from abs 0xffffffffffffc510.
  7 such `lw` accesses load 4 bytes from (sym(.bss)+32 + ([-0x3c60]:2 << 0x2)) +0x10, including `lw` at 0x4454, `lw` at 0x448c, `lw` at 0x44ec.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffc560, including `lw` at 0x4468, `lw` at 0x4698.
  The `sd` at 0x4470 stores 8 bytes to abs 0xffffffffffffc570.
  4 such `sw` accesses store 4 bytes to abs 0xffffffffffffc560, including `sw` at 0x447c, `sw` at 0x4510, `sw` at 0x4614.
  4 such `sd` accesses store 8 bytes to abs 0xffffffffffffc548, including `sd` at 0x4484, `sd` at 0x4518, `sd` at 0x4538.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc550, including `ld` at 0x4490, `ld` at 0x4574, `ld` at 0x4618.
  3 such `lw` accesses load 4 bytes from abs 0xffffffffffffc564, including `lw` at 0x44ac, `lw` at 0x4594, `lw` at 0x4630.
  4 such `sw` accesses store 4 bytes to abs 0xffffffffffffc564, including `sw` at 0x44bc, `sw` at 0x45a4, `sw` at 0x4640.
  4 such `sd` accesses store 8 bytes to abs 0xffffffffffffc550, including `sd` at 0x44c4, `sd` at 0x45ac, `sd` at 0x4648.
  3 such `lw` accesses load 4 bytes from abs 0xffffffffffffc568, including `lw` at 0x4564, `lw` at 0x4600, `lw` at 0x469c.
  3 such `sw` accesses store 4 bytes to abs 0xffffffffffffc568, including `sw` at 0x4570, `sw` at 0x4608, `sw` at 0x46b0.
  The `lw` at 0x46c4 loads 4 bytes from abs 0xffffffffffffc56c.
  The `sw` at 0x46cc stores 4 bytes to abs 0xffffffffffffc56c.
  The `lw` at 0x46f8 loads 4 bytes from abs 0xffffffffffffc584.
  The `sw` at 0x470c stores 4 bytes to abs 0xffffffffffffc584.
  The `lw` at 0x4710 loads 4 bytes from abs 0xffffffffffffc580.
  The `ld` at 0x4718 loads 8 bytes from abs 0xffffffffffffc578.
  The `sw` at 0x4720 stores 4 bytes to abs 0xffffffffffffc580.
  The `sd` at 0x4730 stores 8 bytes to abs 0xffffffffffffc578.
  The `lw` at 0x4810 loads 4 bytes from abs 0xffffffffffffc6f0.
  The `ld` at 0x4884 loads 8 bytes from a0 (arg0 at entry) +0xf0.
  The `ld` at 0x4890 loads 8 bytes from a0 (arg0 at entry) +0x120.
  The `jal` at 0x421c calls frs_handle_counter_intr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x4244 calls hwperf_overflowed_intr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4254 calls hwperf_intr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x427c calls resetcounter with a0=-0x1, a1=?, a2=?, a3=?.
  The `jal` at 0x42b4 calls first_timein [0x661c] with a0=[(sym(pdaindr) + ([-0x3c60]:2 << 0x4))+8]:8+1416, a1=([-0x3c60]:2 << 0x4), a2=?, a3=?.
  The `jal` at 0x42cc calls _set_timer_intr [0x5148] with a0=[-0x3c60]:2, a1=ret(first_timein), a2=0x0, a3=0x1, a4=[0xffffffffaff20000]:8.
  The `jal` at 0x4378 calls resetlatency with a0=?, a1=[-0x3aa8]:8+1200, a2=?, a3=?, a4=[-0x390c], a7=0x37e11d600.
  The `jal` at 0x45bc calls resetlatency with a0=?, a1=?, a2=?, a3=(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16, a4=0x1e848, a6=sym(.bss)+32.
  The `jal` at 0x46e4 calls _get_count with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x46ec calls _get_compare with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x478c calls resetcounter with a0=?, a1=[sym(count_min_delta)], a2=?, a3=0x7d, a4=[sym(cpufreq_cycles)], a7=0x37e11d600.
  The `jal` at 0x47a8 calls log_tstamp_event with a0=0x6c, a1=0x0, a2=0x0, a3=0x0, a4=0x0.
  The `jal` at 0x47c8 calls log_tstamp_event with a0=0x65, a1=0x6c, a2=0x0, a3=0x0, a4=0x0.
  The `jal` at 0x47e4 calls log_tstamp_event with a0=0x65, a1=0x6c, a2=0x0, a3=0x0, a4=0x0.
  The `jal` at 0x4800 calls log_tstamp_event with a0=0x6c, a1=0x0, a2=0x0, a3=0x0, a4=0x0.
  The `jal` at 0x488c calls cmn_err with a0=one of 0x0, 0x4, a1=sym(.rodata)+1104, a2=[-0x3c60]:2, a3=?, a4=[a0+288]:8, a5=[a0+240]:8, a6=sym(.rodata)+1104.
  The `beq` branch at 0x4204 targets 0x4244, is taken when at(=[-0x39a8]) == 0, and falls through when at(=[-0x39a8]) != 0.
  The `bne` branch at 0x4214 targets 0x479c, is taken when (v0(=[-0x3d80]:8) & 0x20) != 0, and falls through when (v0(=[-0x3d80]:8) & 0x20) == 0.
  The `bne` branch at 0x422c targets 0x47b8, is taken when (v1(=[-0x3d80]:8) & 0x20) != 0, and falls through when (v1(=[-0x3d80]:8) & 0x20) == 0.
  The `beq` branch at 0x424c targets 0x4264, is taken when v0(=ret(hwperf_overflowed_intr)) == 0, and falls through when v0(=ret(hwperf_overflowed_intr)) != 0.
  The `beq` branch at 0x425c targets 0x4234 and is always taken.
  The `beq` branch at 0x4270 targets 0x42f4, is taken when (a0(=[-0x3fb8]) & 0x40) == 0, and falls through when (a0(=[-0x3fb8]) & 0x40) != 0.
  The `beq` branch at 0x42d4 targets 0x4230, is taken when s2(=one of 0x0, 0x1) == 0, and falls through when s2(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x42e4 targets 0x4234, is taken when (a2(=[-0x3d80]:8) & 0x20) == 0, and falls through when (a2(=[-0x3d80]:8) & 0x20) != 0.
  The `beq` branch at 0x42ec targets 0x47d8 and is always taken.
  The `beq` branch at 0x4300 targets 0x4408, is taken when s0(=[0xffffffffaff20000]:8) >= v0(=[-0x3aa8]:8) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) < v0(=[-0x3aa8]:8) (unsigned).
  The `beq` branch at 0x4320 targets 0x4754, is taken when a5(?) >= a6(?) (unsigned), and falls through when a5(?) < a6(?) (unsigned).
  The `beq` branch at 0x4330 targets 0x4378, is taken when s0(=[0xffffffffaff20000]:8) >= v0(=[-0x3aa8]:8) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) < v0(=[-0x3aa8]:8) (unsigned).
  The `beq` branch at 0x4340 targets 0x4378, is taken when s0(=[0xffffffffaff20000]:8) >= v0(=[-0x3aa8]:8) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) < v0(=[-0x3aa8]:8) (unsigned).
  The `beq` branch at 0x4350 targets 0x4378, is taken when s0(=[0xffffffffaff20000]:8) >= v0(=[-0x3aa8]:8) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) < v0(=[-0x3aa8]:8) (unsigned).
  The `beq` branch at 0x4360 targets 0x4378, is taken when s0(=[0xffffffffaff20000]:8) >= v0(=[-0x3aa8]:8) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) < v0(=[-0x3aa8]:8) (unsigned).
  The `bne` branch at 0x4370 targets 0x4328, is taken when s0(=[0xffffffffaff20000]:8) < v0(=[-0x3aa8]:8) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) >= v0(=[-0x3aa8]:8) (unsigned).
  The `bne` branch at 0x4388 targets 0x4490, is taken when s0(=[0xffffffffaff20000]:8) < a2(=[-0x3ab8]:8) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) >= a2(=[-0x3ab8]:8) (unsigned).
  The `bne` branch at 0x4398 targets 0x47f4, is taken when (ra(=[-0x3d80]:8) & 0x20) != 0, and falls through when (ra(=[-0x3d80]:8) & 0x20) == 0.
  The `beq` branch at 0x43a4 targets 0x4734, is taken when v0(=[-0x3a90]:8) == 0, and falls through when v0(=[-0x3a90]:8) != 0.
  The `beq` branch at 0x43b0 targets 0x46e4, is taken when at(=[sym(lbolt)]) >= 0x3e9 (signed), and falls through when at(=[sym(lbolt)]) < 0x3e9 (signed).
  The `beq` branch at 0x43bc targets 0x4420, is taken when v0(=[sym(counter_intr_warn_period)]) == 0, and falls through when v0(=[sym(counter_intr_warn_period)]) != 0.
  The `beq` branch at 0x43cc targets 0x4420, is taken when v1(=[sym(counter_intr_warn_period)]) >= 0x100 (unsigned), and falls through when v1(=[sym(counter_intr_warn_period)]) < 0x100 (unsigned).
  The `beq` branch at 0x4400 targets 0x4428 and is always taken.
  The `beq` branch at 0x440c targets 0x4380, is taken when a1(=[-0x3aa8]:8+1200) >= s0(=[0xffffffffaff20000]:8) (unsigned), and falls through when a1(=[-0x3aa8]:8+1200) < s0(=[0xffffffffaff20000]:8) (unsigned).
  The `beq` branch at 0x4414 targets 0x4380 and is always taken.
  The `beq` branch at 0x4428 targets 0x473c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x444c targets 0x445c, is taken when v1(=[-0x3af0]) == a0(=0xf0000000), and falls through when v1(=[-0x3af0]) != a0(=0xf0000000).
  The `beq` branch at 0x4458 targets 0x4810, is taken when a1(=[(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16]) == 0, and falls through when a1(=[(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16]) != 0.
  The `bne` branch at 0x4480 targets 0x4618, is taken when s0(=[0xffffffffaff20000]:8) < a2(=[-0x3ab8]:8+125000) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) >= a2(=[-0x3ab8]:8+125000) (unsigned).
  The `beq` branch at 0x4488 targets 0x4530 and is always taken.
  The `bne` branch at 0x4498 targets 0x44f4, is taken when v0(=[-0x3ab0]:8) < 0x2 (unsigned), and falls through when v0(=[-0x3ab0]:8) >= 0x2 (unsigned).
  The `bne` branch at 0x44a4 targets 0x44f0, is taken when s0(=[0xffffffffaff20000]:8) < v0(=[-0x3ab0]:8) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) >= v0(=[-0x3ab0]:8) (unsigned).
  The `bne` branch at 0x44c0 targets 0x44f0, is taken when s0(=[0xffffffffaff20000]:8) < v0(=([sym(clk_fclock_fast_freq)] + [-0x3ab0]:8)) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) >= v0(=([sym(clk_fclock_fast_freq)] + [-0x3ab0]:8)) (unsigned).
  The `beq` branch at 0x44e8 targets 0x467c and is always taken.
  The `beq` branch at 0x4504 targets 0x429c and is always taken.
  The `bne` branch at 0x4524 targets 0x4574, is taken when s0(=[0xffffffffaff20000]:8) < a2(?) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) >= a2(?) (unsigned).
  The `beq` branch at 0x4530 targets 0x45f0, is taken when a7(=[(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16]) == 0, and falls through when a7(=[(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16]) != 0.
  The `bne` branch at 0x4544 targets 0x4574, is taken when s0(=[0xffffffffaff20000]:8) < a2(?) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) >= a2(?) (unsigned).
  The `bne` branch at 0x4550 targets 0x4514, is taken when t1(=[(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16]) != 0, and falls through when t1(=[(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16]) == 0.
  The `bne` branch at 0x455c targets 0x450c, is taken when t2(=[sym(lbolt)]) < 0xb5 (signed), and falls through when t2(=[sym(lbolt)]) >= 0xb5 (signed).
  The `beq` branch at 0x456c targets 0x450c and is always taken.
  The `bne` branch at 0x457c targets 0x45bc, is taken when v0(=[-0x3ab0]:8) < 0x2 (unsigned), and falls through when v0(=[-0x3ab0]:8) >= 0x2 (unsigned).
  The `bne` branch at 0x4588 targets 0x45bc, is taken when s0(=[0xffffffffaff20000]:8) < v0(=[-0x3ab0]:8) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) >= v0(=[-0x3ab0]:8) (unsigned).
  The `bne` branch at 0x45a8 targets 0x45b8, is taken when s0(=[0xffffffffaff20000]:8) < v0(=([sym(clk_fclock_fast_freq)] + [-0x3ab0]:8)) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) >= v0(=([sym(clk_fclock_fast_freq)] + [-0x3ab0]:8)) (unsigned).
  The `beq` branch at 0x45b0 targets 0x44e8 and is always taken.
  The `beq` branch at 0x45e8 targets 0x429c and is always taken.
  The `bne` branch at 0x45f8 targets 0x460c, is taken when a5(=[sym(lbolt)]) < 0xb5 (signed), and falls through when a5(=[sym(lbolt)]) >= 0xb5 (signed).
  The `beq` branch at 0x4610 targets 0x4538 and is always taken.
  The `bne` branch at 0x4620 targets 0x46dc, is taken when v0(=[-0x3ab0]:8) < 0x2 (unsigned), and falls through when v0(=[-0x3ab0]:8) >= 0x2 (unsigned).
  The `bne` branch at 0x4628 targets 0x46dc, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x4644 targets 0x46dc, is taken when s0(=[0xffffffffaff20000]:8) < v0(=([sym(clk_fclock_fast_freq)] + [-0x3ab0]:8)) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) >= v0(=([sym(clk_fclock_fast_freq)] + [-0x3ab0]:8)) (unsigned).
  The `beq` branch at 0x464c targets 0x44e8 and is always taken.
  The `bne` branch at 0x4670 targets 0x45bc, is taken when s0(=[0xffffffffaff20000]:8) < v0(?) (unsigned), and falls through when s0(=[0xffffffffaff20000]:8) >= v0(?) (unsigned).
  The `beq` branch at 0x467c targets 0x46b4, is taken when t0(=[(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16]) == 0, and falls through when t0(=[(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16]) != 0.
  The `bne` branch at 0x4684 targets 0x4660, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x4690 targets 0x4654, is taken when t2(=[(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16]) != 0, and falls through when t2(=[(sym(.bss)+32 + ([-0x3c60]:2 << 0x2))+16]) == 0.
  The `beq` branch at 0x46ac targets 0x4654 and is always taken.
  The `bne` branch at 0x46bc targets 0x46d0, is taken when t9(=[sym(lbolt)]) < 0xb5 (signed), and falls through when t9(=[sym(lbolt)]) >= 0xb5 (signed).
  The `beq` branch at 0x46d4 targets 0x4680 and is always taken.
  The `beq` branch at 0x46dc targets 0x429c and is always taken.
  The `beq` branch at 0x4704 targets 0x4710, is taken when at(=[-0x3a7c]) >= a2(?) (unsigned), and falls through when at(=[-0x3a7c]) < a2(?) (unsigned).
  The `beq` branch at 0x472c targets 0x43b8 and is always taken.
  The `beq` branch at 0x4734 targets 0x43b8 and is always taken.
  The `beq` branch at 0x474c targets 0x445c and is always taken.
  The `beq` branch at 0x4794 targets 0x4230 and is always taken.
  The `beq` branch at 0x47b0 targets 0x421c and is always taken.
  The `beq` branch at 0x47d0 targets 0x4234 and is always taken.
  The `beq` branch at 0x47ec targets 0x4234 and is always taken.
  The `beq` branch at 0x4808 targets 0x43a4 and is always taken.
  The `bne` branch at 0x4858 targets 0x4878, is taken when a3(?) < a7(?) (signed), and falls through when a3(?) >= a7(?) (signed).
  The `bne` branch at 0x4868 targets 0x4878, is taken when t3(?) < a3(?) (signed), and falls through when t3(?) >= a3(?) (signed).
  The `beq` branch at 0x4870 targets 0x4880 and is always taken.
  The `beq` branch at 0x48a4 targets 0x445c and is always taken.
  The return at 0x423c has v0 = one of ret(frs_handle_counter_intr), ?, ret(hwperf_intr), ret(_set_timer_intr), ret(log_tstamp_event).
  The instructions from 0x441c to 0x441c are not reached by any path from the entry, and their branches are not listed.

- `startrtclock` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x48ac (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x48ac-0x4a24 (376 bytes).
  It occupies 376 bytes.
  The `lh` at 0x48c4 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `sw` at 0x48cc stores 4 bytes to abs 0xffffffffffffc510.
  The `lw` at 0x48e4 loads 4 bytes from abs 0xffffffffffffc6f4.
  The `sw` at 0x4940 stores 4 bytes to abs 0xffffffffffffc568.
  The `ld` at 0x494c loads 8 bytes from abs 0xffffffffaff20000.
  2 such `sd` accesses store 8 bytes to abs 0xffffffffffffc548, including `sd` at 0x498c, `sd` at 0x49cc.
  The `sd` at 0x49c8 stores 8 bytes to abs 0xffffffffffffc558.
  The `jal` at 0x48b4 calls findcpufreq_cycles [0x65e8] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4a08 calls initcounter with a0=?, a1=[sym(count_min_delta)], a2=?, a3=?, a4=0x7d, a5=[sym(cpufreq_cycles)].
  The `bne` branch at 0x48dc targets 0x4940, is taken when at(=[-0x3c60]:2) != v0(=[sym(master_procid)]:2), and falls through when at(=[-0x3c60]:2) == v0(=[sym(master_procid)]:2).
  The `bne` branch at 0x48fc targets 0x4940, is taken when a1(=[sym(count_min_delta)]) != 0, and falls through when a1(=[sym(count_min_delta)]) == 0.
  The `beq` branch at 0x4918 targets 0x4a1c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x4934 targets 0x4920, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x4a1c targets 0x493c and is always taken.
  The return at 0x4a14 has v0 = ret(initcounter).

- `startaudioclock` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x4a24 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x4a24-0x4a78 (84 bytes).
  It occupies 84 bytes.
  The `jal` at 0x4a3c calls setmustrun with a0=[sym(master_procid)]:2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4a60 calls startkgclock with a0=?, a1=0x1, a2=?, a3=?.
  The `jal` at 0x4a68 calls restoremustrun with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4a2c targets 0x4a3c, is taken when at(=[sym(audioclock)]) == 0, and falls through when at(=[sym(audioclock)]) != 0.
  The `beq` branch at 0x4a70 targets 0x4a34 and is always taken.
  The return at 0x4a34 has v0 = one of ?, ret(restoremustrun).

- `stopaudioclock` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x4a78 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x4a78-0x4ad8 (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x4a98 loads 4 bytes from abs 0xffffffffffffc540.
  The `jal` at 0x4a88 calls setmustrun with a0=[sym(master_procid)]:2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4ab4 calls restoremustrun with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x4ac8 calls slowkgclock with a0=(ret(setmustrun) << 0x20), a1=?, a2=?, a3=?.
  The `beq` branch at 0x4a80 targets 0x4abc, is taken when at(=[sym(audioclock)]) == 0, and falls through when at(=[sym(audioclock)]) != 0.
  The `beq` branch at 0x4aac targets 0x4ac8, is taken when v1(=[-0x3ac0]) == 0, and falls through when v1(=[-0x3ac0]) != 0.
  The `beq` branch at 0x4ad0 targets 0x4ab4 and is always taken.
  The return at 0x4ac0 has v0 = one of ?, ret(restoremustrun).

- `startprfclk` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x4ad8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x4ad8-0x4b38 (96 bytes).
  It occupies 96 bytes.
  The `ll` at 0x4af0 loads 4 bytes from abs 0xffffffffffffc540.
  The `sc` at 0x4afc stores 4 bytes to abs 0xffffffffffffc540.
  The `lw` at 0x4b08 loads 4 bytes from abs 0xffffffffffffc540.
  The `jal` at 0x4ae0 calls splprof with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4b14 calls splx with a0=ret(splprof), a1=?, a2=?, a3=?.
  The `jal` at 0x4b28 calls startkgclock with a0=[-0x3ac0]+1, a1=-0x3ac0, a2=[-0x3ac0]+1, a3=?.
  The `beql` branch at 0x4b00 targets 0x4af0, is taken when a2(=[-0x3ac0]+1) == 0, and falls through when a2(=[-0x3ac0]+1) != 0; its branch-likely delay slot `nop` at 0x4b04 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x4b0c targets 0x4b28, is taken when at(=[-0x3ac0]) == v1(=0x1), and falls through when at(=[-0x3ac0]) != v1(=0x1).
  The `beq` branch at 0x4b30 targets 0x4b14 and is always taken.
  The return at 0x4b20 has v0 = ret(splx).

- `stopprfclk` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x4b38 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x4b38-0x4bb8 (128 bytes).
  It occupies 128 bytes.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffc540, including `lw` at 0x4b48, `lw` at 0x4b70.
  The `ll` at 0x4b58 loads 4 bytes from abs 0xffffffffffffc540.
  The `sc` at 0x4b64 stores 4 bytes to abs 0xffffffffffffc540.
  The `lh` at 0x4b7c loads 2 bytes from abs 0xffffffffffffc3a0.
  The `jal` at 0x4b40 calls splprof with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4b94 calls splx with a0=ret(splprof), a1=?, a2=?, a3=?.
  The `jal` at 0x4ba8 calls slowkgclock with a0=[sym(audioclock)], a1=[-0x3ac0]-1, a2=[-0x3ac0]-1, a3=[-0x3c60]:2, a4=[sym(master_procid)]:2.
  The `beq` branch at 0x4b50 targets 0x4b94, is taken when at(=[-0x3ac0]) == 0, and falls through when at(=[-0x3ac0]) != 0.
  The `beql` branch at 0x4b68 targets 0x4b58, is taken when a2(=[-0x3ac0]-1) == 0, and falls through when a2(=[-0x3ac0]-1) != 0; its branch-likely delay slot `nop` at 0x4b6c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x4b74 targets 0x4b94, is taken when v1(=[-0x3ac0]) != 0, and falls through when v1(=[-0x3ac0]) == 0.
  The `bne` branch at 0x4b84 targets 0x4ba8, is taken when a3(=[-0x3c60]:2) != a4(=[sym(master_procid)]:2), and falls through when a3(=[-0x3c60]:2) == a4(=[sym(master_procid)]:2).
  The `beq` branch at 0x4b8c targets 0x4ba8, is taken when a0(=[sym(audioclock)]) == 0, and falls through when a0(=[sym(audioclock)]) != 0.
  The `beq` branch at 0x4bb0 targets 0x4b94 and is always taken.
  The return at 0x4ba0 has v0 = ret(splx).

- `ackrtclock` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x4bb8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x4bb8-0x4bc0 (8 bytes).
  It occupies 8 bytes.
  The return at 0x4bb8 has v0 = ?.

- `init_timebase` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x4bc0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x4bc0-0x4c7c (188 bytes).
  It occupies 188 bytes.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffaff20000, including `ld` at 0x4be0, `ld` at 0x4c00, `ld` at 0x4c28.
  The `sw` at 0x4bf0 stores 4 bytes to sym(pdaindr) +0x20.
  The `sd` at 0x4bf4 stores 8 bytes to sym(pdaindr) +0x28.
  The `jal` at 0x4bcc calls rtodc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4c40 calls rtodc with a0=?, a1=sym(.rodata)+1104, a2=?, a3=?.
  The `jal` at 0x4c6c calls cmn_err with a0=0x4, a1=sym(.rodata)+1104, a2=?, a3=?.
  The `beq` branch at 0x4c18 targets 0x4c68, is taken when at(=[0xffffffffaff20000]:8) >= v0(=[sym(.sbss)+104]:8+0x17d7840) (unsigned), and falls through when at(=[0xffffffffaff20000]:8) < v0(=[sym(.sbss)+104]:8+0x17d7840) (unsigned).
  The `beq` branch at 0x4c20 targets 0x4c40 and is always taken.
  The `beq` branch at 0x4c38 targets 0x4c68, is taken when ra(=[0xffffffffaff20000]:8) >= at(=[sym(.sbss)+104]:8+0x17d7840) (unsigned), and falls through when ra(=[0xffffffffaff20000]:8) < at(=[sym(.sbss)+104]:8+0x17d7840) (unsigned).
  The `beq` branch at 0x4c4c targets 0x4c28, is taken when v1(=[sym(time)]) == v0(=ret(rtodc)), and falls through when v1(=[sym(time)]) != v0(=ret(rtodc)).
  The `beq` branch at 0x4c74 targets 0x4c54 and is always taken.
  The return at 0x4c5c has v0 = one of ret(rtodc), ret(cmn_err).
  The instructions from 0x4c64 to 0x4c64 are not reached by any path from the entry, and their branches are not listed.

- `inittodr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x4c7c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x4c7c-0x4de8 (364 bytes).
  It occupies 364 bytes.
  The `jal` at 0x4cc0 calls rtodc with a0=0xf4240, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4cf8 calls cmn_err_tag with a0=0x32, a1=0x4, a2=sym(.rodata)+1104, a3=?, a4=[sym(time)], a5=0x4000000.
  The `jal` at 0x4d14 calls cmn_err_tag with a0=0x33, a1=0x4, a2=sym(.rodata)+1104, a3=?, a4=[sym(time)], a5=0x4000000.
  The `jal` at 0x4d20 calls settime with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jal` at 0x4d28 calls wtodc with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x4da4 calls cmn_err_tag with a0=0x35, a1=0x4, a2=sym(.rodata)+1104, a3=sym(.rodata)+1104, a5=[sym(time)], a7=0x20000.
  The `jal` at 0x4db8 calls cmn_err_tag with a0=0x36, a1=0x4, a2=sym(.rodata)+1104, a3=?.
  The `jal` at 0x4dd0 calls cmn_err_tag with a0=0x34, a1=0x4, a2=sym(.rodata)+1104, a3=?, a5=[sym(time)], a7=0x20000.
  The `beq` branch at 0x4ca8 targets 0x4cc0, is taken when at(=[sym(miniroot)]:1) == 0, and falls through when at(=[sym(miniroot)]:1) != 0.
  The `bne` branch at 0x4cd8 targets 0x4ce8, is taken when v0(=ret(rtodc)) < a5(=0x4000000) (signed), and falls through when v0(=ret(rtodc)) >= a5(=0x4000000) (signed).
  The `beq` branch at 0x4ce0 targets 0x4d34, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x4ce8 targets 0x4d08, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x4d00 targets 0x4d1c and is always taken.
  The `bne` branch at 0x4d4c targets 0x4dc8, is taken when s0(=a0) < a3(=0x9660180) (signed), and falls through when s0(=a0) >= a3(=0x9660180) (signed).
  The `bltz` branch at 0x4d60 targets 0x4de0, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `bne` branch at 0x4d70 targets 0x4cb0, is taken when a6(?) < a2(=0x2a300) (signed), and falls through when a6(?) >= a2(=0x2a300) (signed).
  The `bne` branch at 0x4d78 targets 0x4d84, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `beq` branch at 0x4dc0 targets 0x4cb4 and is always taken.
  The `beq` branch at 0x4dd8 targets 0x4dac and is always taken.
  The `beq` branch at 0x4de0 targets 0x4d68 and is always taken.
  The return at 0x4cb8 has v0 = one of ?, ret(cmn_err_tag).

- `query_cyclecntr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x4de8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x4de8-0x4e0c (36 bytes).
  It occupies 36 bytes.
  The `sw` at 0x4e08 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The return at 0x4e04 has v0 = 0x900000000ff20000.

- `query_fasttimer` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x4e0c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x4e0c-0x4e2c (32 bytes).
  It occupies 32 bytes.
  The return at 0x4e24 has v0 = ?.

- `query_cyclecntr_size` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x4e2c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x4e2c-0x4e34 (8 bytes).
  It occupies 8 bytes.
  The return at 0x4e2c has v0 = 0x40.

- `tick_maint` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x4e34 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x4e34-0x4e98 (100 bytes).
  It occupies 100 bytes.
  The `lh` at 0x4e60 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `ld` at 0x4e74 loads 8 bytes from abs 0xffffffffaff20000.
  The `jal` at 0x4e88 calls __nanotime [0x5eb0] with a0=?, a1=[sym(.sbss)+136], a2=0x1, a3=?.
  The `beq` branch at 0x4e40 targets 0x4e60, is taken when at(=[sym(lbolt)]) == a2(=0x1), and falls through when at(=[sym(lbolt)]) != a2(=0x1).
  The `beq` branch at 0x4e50 targets 0x4e88, is taken when v0(=[sym(.sbss)+136]-1) == 0, and falls through when v0(=[sym(.sbss)+136]-1) != 0.
  The `bne` branch at 0x4e64 targets 0x4e4c, is taken when v1(=[-0x3c60]:2) != 0, and falls through when v1(=[-0x3c60]:2) == 0.
  The `beq` branch at 0x4e80 targets 0x4e48 and is always taken.
  The `beq` branch at 0x4e90 targets 0x4e58 and is always taken.
  The return at 0x4e58 has v0 = one of [sym(.sbss)+136]-1, ret(__nanotime).

- `fastick_maint` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x4e98 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x4e98-0x4f28 (144 bytes).
  It occupies 144 bytes.
  2 such `sb` accesses store 1 byte to abs 0xffffffffffffc052, including `sb` at 0x4e9c, `sb` at 0x4ee8.
  The `lh` at 0x4ea4 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `lw` at 0x4ec4 loads 4 bytes from abs 0xffffffffffffc540.
  The `ld` at 0x4ed0 loads 8 bytes from a0 (arg0 at entry) +0xf8.
  The `ld` at 0x4ed4 loads 8 bytes from a0 (arg0 at entry) +0xf0.
  The `ld` at 0x4ed8 loads 8 bytes from a0 (arg0 at entry) +0xe0.
  The `ld` at 0x4ee0 loads 8 bytes from a0 (arg0 at entry) +0x120.
  The `jal` at 0x4ebc calls fast_user_prof with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x4edc calls prfintr with a0=[a0+288]:8, a1=[a0+224]:8, a2=[a0+240]:8, a3=[a0+248]:8.
  The `jalr` at 0x4f04 calls (unknown callee) with a0=[sym(midi_timercallback_ptr)]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jalr` at 0x4f18 calls (unknown callee) with a0=[sym(ieee1394_timercallback_ptr)]:8, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4eb4 targets 0x4ef8, is taken when at(=[-0x3c60]:2) == v0(=[sym(master_procid)]:2), and falls through when at(=[-0x3c60]:2) != v0(=[sym(master_procid)]:2).
  The `beq` branch at 0x4ec8 targets 0x4ee8, is taken when a0(=[-0x3ac0]) == 0, and falls through when a0(=[-0x3ac0]) != 0.
  The `beq` branch at 0x4efc targets 0x4f0c, is taken when a0(=[sym(midi_timercallback_ptr)]:8) == 0, and falls through when a0(=[sym(midi_timercallback_ptr)]:8) != 0.
  The `beq` branch at 0x4f10 targets 0x4ebc, is taken when a0(=[sym(ieee1394_timercallback_ptr)]:8) == 0, and falls through when a0(=[sym(ieee1394_timercallback_ptr)]:8) != 0.
  The `beq` branch at 0x4f20 targets 0x4ebc and is always taken.
  The return at 0x4ef0 has v0 = one of ret(fast_user_prof), ret(prfintr).

- `chktimedrift` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x4f28 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x4f28-0x4f90 (104 bytes).
  It occupies 104 bytes.
  The `jal` at 0x4f30 calls rtodc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x4f80 calls doadjtime with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x4f44 targets 0x4f60, is taken when a3(?) >= 0x3 (signed), and falls through when a3(?) < 0x3 (signed).
  The `bne` branch at 0x4f4c targets 0x4f64, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x4f88 targets 0x4f58 and is always taken.
  The return at 0x4f58 has v0 = one of ret(rtodc), ret(doadjtime).

- `onesec_maint` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x4f90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x4f90-0x5054 (196 bytes).
  It occupies 196 bytes.
  The `jal` at 0x4f98 calls tlb_onesec_actions with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x502c calls wtodc with a0=?, a1=[sym(.sdata)+108], a2=[sym(lastadjtod)], a3=[sym(lbolt)], a6=[sym(lbolt)]+720000.
  The `jal` at 0x5044 calls chktimedrift with a0=?, a1=[sym(lastadjtime)], a2=[sym(lastadjtod)], a3=[sym(lbolt)], a4=[sym(adjtime_delta)]:8.
  The `beq` branch at 0x4fc8 targets 0x4ff0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x4fdc targets 0x503c, is taken when a1(=[sym(.sdata)+108]) == 0, and falls through when a1(=[sym(.sdata)+108]) != 0.
  The `beq` branch at 0x4ff0 targets 0x4fd4, is taken when a1(=[sym(.sdata)+100]) == 0, and falls through when a1(=[sym(.sdata)+100]) != 0.
  The `beq` branch at 0x5004 targets 0x5018, is taken when a1(=[sym(lastadjtime)]) >= a3(=[sym(lbolt)]) (signed), and falls through when a1(=[sym(lastadjtime)]) < a3(=[sym(lbolt)]) (signed).
  The `beq` branch at 0x5010 targets 0x5044, is taken when a4(=[sym(adjtime_delta)]:8) == 0, and falls through when a4(=[sym(adjtime_delta)]:8) != 0.
  The `beq` branch at 0x5018 targets 0x4fd4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x5034 targets 0x4fd4 and is always taken.
  The `beq` branch at 0x503c targets 0x4fe8 and is always taken.
  The `beq` branch at 0x504c targets 0x4fd4 and is always taken.
  The return at 0x4fe8 has v0 = ?.

- `tick_actions` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x5054 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x5054-0x5088 (52 bytes).
  It occupies 52 bytes.
  The `lbu` at 0x5054 loads 1 byte from abs 0xffffffffffffc6e0.
  The `jal` at 0x5064 calls ecc_log with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x506c calls tlb_tick_actions with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x5074 calls flush_console with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x505c targets 0x506c, is taken when at(=[-0x3920]:1) == 0, and falls through when at(=[-0x3920]:1) != 0.
  The return at 0x5080 has v0 = ret(flush_console).

- `init_fasthz_variables` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x5088 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x5088-0x50b8 (48 bytes).
  It occupies 48 bytes.
  The return at 0x50b0 has v0 = [sym(fasthz)].

- `rtc_read` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x50b8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x50b8-0x50c4 (12 bytes).
  It occupies 12 bytes.
  The `ld` at 0x50c0 loads 8 bytes from abs 0xffffffffaff20000.
  The return at 0x50bc has v0 = [0xffffffffaff20000]:8.

- `rtc_resolution` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x50c4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x50c4-0x50cc (8 bytes).
  It occupies 8 bytes.
  The return at 0x50c4 has v0 = 0x50.

- `normalize_RTC_value` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x50cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x50cc-0x5124 (88 bytes).
  It occupies 88 bytes.
  The `jal` at 0x5114 calls init_fasthz_variables [0x5088] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x50e0 targets 0x5114, is taken when at(=[sym(fasthz)]) != v0(=[sym(.sbss)+156]), and falls through when at(=[sym(fasthz)]) == v0(=[sym(.sbss)+156]).
  The `beq` branch at 0x511c targets 0x50e8 and is always taken.
  The return at 0x510c has v0 = ?.

- `set_timer_intr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x5124 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x5124-0x5148 (36 bytes).
  It occupies 36 bytes.
  The `ld` at 0x5138 loads 8 bytes from abs 0xffffffffaff20000.
  The `jal` at 0x5134 calls _set_timer_intr [0x5148] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x0, a4=[0xffffffffaff20000]:8.
  The return at 0x5140 has v0 = ret(_set_timer_intr).

- `_set_timer_intr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x5148 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x5148-0x5394 (588 bytes).
  It occupies 588 bytes.
  2 such `lw` accesses load 4 bytes from abs 0xffffffffffffc048, including `lw` at 0x5180, `lw` at 0x529c.
  The `ld` at 0x518c loads 8 bytes from abs 0xffffffffffffc550.
  The `ld` at 0x51cc loads 8 bytes from abs 0xffffffffffffc558.
  3 such `sd` accesses store 8 bytes to abs 0xffffffffffffc558, including `sd` at 0x5210, `sd` at 0x5250, `sd` at 0x52f0.
  The `lh` at 0x5270 loads 2 bytes from abs 0xffffffffffffc3a0.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc548, including `ld` at 0x52f4, `ld` at 0x532c, `ld` at 0x5330.
  3 such `sd` accesses store 8 bytes to abs 0xffffffffffffc550, including `sd` at 0x5334, `sd` at 0x5350, `sd` at 0x536c.
  The `jal` at 0x5204 calls resetcounter_val with a0=?, a1=?, a2=0x7d, a3=[sym(cpufreq_cycles)], a7=0x78.
  The `jal` at 0x5248 calls resetcounter_val with a0=?, a1=?, a2=?, a3=[sym(cpufreq_cycles)], a7=0x78.
  The `jal` at 0x527c calls timepoke with a0=(a0 << 0x30), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=[-0x3c60]:2.
  The `jal` at 0x5294 calls cpuaction with a0=?, a1=sym(timepoke), a2=0x1, a3=a3 at entry (arg3), a5=[-0x3c60]:2.
  The `jal` at 0x52e4 calls trimcompare with a0=?, a1=?, a2=0x7d, a3=[sym(cpufreq_cycles)], a7=0x78.
  The `beq` branch at 0x516c targets 0x5270, is taken when a1 == 0, and falls through when a1 != 0.
  The `blez` branch at 0x5178 targets 0x5270, is taken when at(?) <= 0 (signed), and falls through when at(?) > 0 (signed).
  The `beq` branch at 0x5198 targets 0x52f4, is taken when a0(=[-0x3ab0]:8) == 0, and falls through when a0(=[-0x3ab0]:8) != 0.
  The `beq` branch at 0x51a0 targets 0x5330, is taken when t0(=0x1) == a0(=[-0x3ab0]:8), and falls through when t0(=0x1) != a0(=[-0x3ab0]:8).
  The `bne` branch at 0x51a8 targets 0x51c4, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x51c4 targets 0x5214, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x51d4 targets 0x52bc, is taken when v0(=[-0x3aa8]:8) >= s0(?) (unsigned), and falls through when v0(=[-0x3aa8]:8) < s0(?) (unsigned).
  The `beq` branch at 0x51dc targets 0x5254, is taken when ra(=a3) == 0, and falls through when ra(=a3) != 0.
  The `beq` branch at 0x520c targets 0x5254 and is always taken.
  The `bne` branch at 0x5274 targets 0x528c, is taken when a5(=[-0x3c60]:2) != v0(=a0), and falls through when a5(=[-0x3c60]:2) == v0(=a0).
  The `beq` branch at 0x5284 targets 0x529c and is always taken.
  The `beq` branch at 0x52ac targets 0x5328, is taken when (a1(=[-0x3fb8]) & 0x40) == 0, and falls through when (a1(=[-0x3fb8]) & 0x40) != 0.
  The `beq` branch at 0x52b4 targets 0x525c and is always taken.
  The `beq` branch at 0x52bc targets 0x5254, is taken when s0(?) == v0(=[-0x3aa8]:8), and falls through when s0(?) != v0(=[-0x3aa8]:8).
  The `beq` branch at 0x52ec targets 0x5254 and is always taken.
  The `beq` branch at 0x52fc targets 0x530c, is taken when a0(=[-0x3ab8]:8) >= v0(?) (unsigned), and falls through when a0(=[-0x3ab8]:8) < v0(?) (unsigned).
  The `beq` branch at 0x5304 targets 0x538c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x5320 targets 0x51c4 and is always taken.
  The `beq` branch at 0x5328 targets 0x518c and is always taken.
  The `beq` branch at 0x5344 targets 0x51a8, is taken when at(=([sym(clk_fclock_fast_freq)] + a4)) >= a0(=[-0x3ab8]:8) (unsigned), and falls through when at(=([sym(clk_fclock_fast_freq)] + a4)) < a0(=[-0x3ab8]:8) (unsigned).
  The `beq` branch at 0x5360 targets 0x5384, is taken when v1(=([sym(clk_fclock_fast_freq)] + a4)) >= a0(?) (unsigned), and falls through when v1(=([sym(clk_fclock_fast_freq)] + a4)) < a0(?) (unsigned).
  The `bne` branch at 0x537c targets 0x534c, is taken when a2(=([sym(clk_fclock_fast_freq)] + a4)) < a0(?) (unsigned), and falls through when a2(=([sym(clk_fclock_fast_freq)] + a4)) >= a0(?) (unsigned).
  The `beq` branch at 0x5384 targets 0x51a8 and is always taken.
  The `beq` branch at 0x538c targets 0x51c4 and is always taken.
  The return at 0x5268 has v0 = one of 0x0, 0x1.

- `timeout_get_queuehead` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x5394 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x5394-0x55d8 (580 bytes).
  It occupies 580 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x10, including `lw` at 0x5394, `lw` at 0x54b8.
  The `ld` at 0x53a8 loads 8 bytes from table(sym(pdaindr)) +0x8.
  2 such `lw` accesses load 4 bytes from [table(sym(pdaindr))+8]:8 +0x5a8, including `lw` at 0x53b0, `lw` at 0x54ac.
  4 such `sw` accesses store 4 bytes to [table(sym(pdaindr))+8]:8 +0x5a8, including `sw` at 0x5400, `sw` at 0x5438, `sw` at 0x5570.
  The `lw` at 0x5408 loads 4 bytes from [table(sym(pdaindr))+8]:8 +0x600.
  2 such `ld` accesses load 8 bytes from [table(sym(pdaindr))+8]:8 +0x5a0, including `ld` at 0x541c, `ld` at 0x543c.
  The `lw` at 0x5450 loads 4 bytes from [[table(sym(pdaindr))+8]:8+1440]:8 +0x10.
  The `lw` at 0x5468 loads 4 bytes from ?.
  The `ld` at 0x5484 loads 8 bytes from ?.
  2 such `sw` accesses store 4 bytes to [table(sym(pdaindr))+8]:8 +0x600, including `sw` at 0x54a4, `sw` at 0x54a8.
  The `ld` at 0x54bc loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `sw` at 0x54d4 stores 4 bytes to a1 (arg1 at entry) +0x10.
  4 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x0, including `sd` at 0x551c, `sd` at 0x555c, `sd` at 0x55cc.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffaff20000, including `ld` at 0x5534, `ld` at 0x55a4.
  The `jal` at 0x5530 calls normalize_RTC_value [0x50cc] with a0=[0xffffffffaff20000]:8, a1=0x4, a2=[[table(sym(pdaindr))+8]:8+1536], a3=0x3, a4=-0x64, a5=0x1, a7=0x1.
  The `jal` at 0x55a0 calls normalize_RTC_value [0x50cc] with a0=[0xffffffffaff20000]:8, a1=0x4, a2=[[table(sym(pdaindr))+8]:8+1536], a3=0x3, a4=-0x64, a5=0x1, a7=0x3.
  The `beq` branch at 0x53fc targets 0x557c, is taken when (a6(=0xffffff) & t9(?)) == 0, and falls through when (a6(=0xffffff) & t9(?)) != 0.
  The `bne` branch at 0x5410 targets 0x54b8, is taken when a2(=[[table(sym(pdaindr))+8]:8+1536]) != a5(?), and falls through when a2(=[[table(sym(pdaindr))+8]:8+1536]) == a5(?).
  The `beq` branch at 0x5418 targets 0x5440 and is always taken.
  The `beq` branch at 0x5434 targets 0x5560, is taken when (a6(=0xffffff) & t9(?)) == 0, and falls through when (a6(=0xffffff) & t9(?)) != 0.
  The `beq` branch at 0x5444 targets 0x54a8, is taken when a4(=[[table(sym(pdaindr))+8]:8+1440]:8) == 0, and falls through when a4(=[[table(sym(pdaindr))+8]:8+1440]:8) != 0.
  The `beq` branch at 0x544c targets 0x546c and is always taken.
  The `beq` branch at 0x5454 targets 0x5460, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x5460 targets 0x5498, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x5478 targets 0x5420, is taken when a5(?) == t3(?), and falls through when a5(?) != t3(?).
  The `beq` branch at 0x5480 targets 0x5454, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x5488 targets 0x5454, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x5490 targets 0x5460 and is always taken.
  The `beq` branch at 0x5498 targets 0x54a8, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x54a0 targets 0x54ac and is always taken.
  The `blez` branch at 0x54d0 targets 0x5514, is taken when v0(=[a1]:8) <= 0 (signed), and falls through when v0(=[a1]:8) > 0 (signed).
  The `beq` branch at 0x54d8 targets 0x5528, is taken when a7(=0x1) == a0, and falls through when a7(=0x1) != a0.
  The `beq` branch at 0x54e0 targets 0x5528, is taken when a0 == a1(=0x4), and falls through when a0 != a1(=0x4).
  The `beq` branch at 0x54e8 targets 0x5598, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x54f0 targets 0x559c, is taken when a0 == a7(=0x3), and falls through when a0 != a7(=0x3).
  The `beq` branch at 0x5514 targets 0x55d0, is taken when v0(=[a1]:8) == a4(=-0x64), and falls through when v0(=[a1]:8) != a4(=-0x64).
  The `bne` branch at 0x5520 targets 0x54e0, is taken when a5(=0x1) != a0, and falls through when a5(=0x1) == a0.
  The `beq` branch at 0x5558 targets 0x54f8 and is always taken.
  The `beq` branch at 0x5574 targets 0x543c and is always taken.
  The `beq` branch at 0x5590 targets 0x5404 and is always taken.
  The `beq` branch at 0x55c8 targets 0x54f8 and is always taken.
  The `beq` branch at 0x55d0 targets 0x54f8 and is always taken.
  The return at 0x550c has v0 = [table(sym(pdaindr))+8]:8+1432.

- `chktimeout_tick` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x55d8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x55d8-0x5758 (384 bytes).
  It occupies 384 bytes.
  The `ld` at 0x5600 loads 8 bytes from table(sym(pdaindr)) +0x8.
  The `lw` at 0x5608 loads 4 bytes from [table(sym(pdaindr))+8]:8 +0x630.
  The `ld` at 0x5674 loads 8 bytes from ?.
  The `lw` at 0x5678 loads 4 bytes from ?.
  The `ld` at 0x56a8 loads 8 bytes from abs 0xffffffffaff20000.
  The `jal` at 0x5638 calls do_chktimeout_tick with a0=[table(sym(pdaindr))+8]:8+1416, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x565c calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x5694 calls do_chktimeout_tick with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x5630 targets 0x5650, is taken when (at(=[[table(sym(pdaindr))+8]:8+1584]) & 0x1) == 0, and falls through when (at(=[[table(sym(pdaindr))+8]:8+1584]) & 0x1) != 0.
  The `bne` branch at 0x5640 targets 0x56a4, is taken when v0(=ret(do_chktimeout_tick)) != 0, and falls through when v0(=ret(do_chktimeout_tick)) == 0.
  The `beq` branch at 0x5648 targets 0x5654 and is always taken.
  The `blez` branch at 0x5654 targets 0x570c, is taken when a0(=[sym(maxcpus)]) <= 0 (signed), and falls through when a0(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x5664 targets 0x5734, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `beq` branch at 0x5680 targets 0x5734, is taken when (v1(?) & 0x1) == 0, and falls through when (v1(?) & 0x1) != 0.
  The `beq` branch at 0x569c targets 0x5734, is taken when v0(=ret(do_chktimeout_tick)) == 0, and falls through when v0(=ret(do_chktimeout_tick)) != 0.
  The `beq` branch at 0x56b8 targets 0x56e8, is taken when s2(=a0) == 0, and falls through when s2(=a0) != 0.
  The `beq` branch at 0x56c0 targets 0x56e8, is taken when s2(=a0) == v0(=0x3), and falls through when s2(=a0) != v0(=0x3).
  The `beq` branch at 0x56c8 targets 0x56d8, is taken when s2(=a0) == v0(=0x1), and falls through when s2(=a0) != v0(=0x1).
  The `bne` branch at 0x56d0 targets 0x5708, is taken when s2(=a0) != a0(=0x4), and falls through when s2(=a0) == a0(=0x4).
  The `beq` branch at 0x56e0 targets 0x5704 and is always taken.
  The `bne` branch at 0x5748 targets 0x565c, is taken when s1(?) < a5(=[sym(maxcpus)]) (signed), and falls through when s1(?) >= a5(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x5750 targets 0x5710 and is always taken.
  The return at 0x572c has v0 = ?.

- `fast_timeout` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x5758 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x5758-0x57d0 (120 bytes).
  It occupies 120 bytes.
  The `lh` at 0x5790 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `jal` at 0x577c calls callout_get_pri with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x579c calls dotimeout with a0=[-0x3c60]:2, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=ret(callout_get_pri), a5=0x1, a6=sp-40.
  The `jal` at 0x57c0 calls cmn_err with a0=0x0, a1=sym(.rodata)+1104, a2=?, a3=?.
  The `beq` branch at 0x57a4 targets 0x57b8, is taken when v0(=ret(dotimeout)) == 0, and falls through when v0(=ret(dotimeout)) != 0.
  The `beq` branch at 0x57c8 targets 0x57ac and is always taken.
  The return at 0x57b0 has v0 = ret(dotimeout).

- `fast_timeout_nothrd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x57d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x57d0-0x5844 (116 bytes).
  It occupies 116 bytes.
  The `lh` at 0x5808 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `jal` at 0x5810 calls dotimeout with a0=[-0x3c60]:2, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2), a4=0x0, a5=0x4, a6=sp-40.
  The `jal` at 0x5834 calls cmn_err with a0=0x0, a1=sym(.rodata)+1104, a2=?, a3=?.
  The `beq` branch at 0x5818 targets 0x582c, is taken when v0(=ret(dotimeout)) == 0, and falls through when v0(=ret(dotimeout)) != 0.
  The `beq` branch at 0x583c targets 0x5820 and is always taken.
  The return at 0x5824 has v0 = ret(dotimeout).

- `callout_time_to_hz` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x5844 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x5844-0x5874 (48 bytes).
  It occupies 48 bytes.
  The `ld` at 0x5848 loads 8 bytes from abs 0xffffffffaff20000.
  The return at 0x586c has v0 = ?.

- `timein_body` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x5874 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x5874-0x59e0 (364 bytes).
  It occupies 364 bytes.
  The `ld` at 0x58c8 loads 8 bytes from [a0+24]:8 +0x8.
  The `sd` at 0x58cc stores 8 bytes to a0 (arg0 at entry) +0x18.
  The `lh` at 0x58d0 loads 2 bytes from [a0+24]:8 +0x46.
  The `lw` at 0x58e0 loads 4 bytes from [a0+24]:8 +0x10.
  The `sd` at 0x58e4 stores 8 bytes to a0 (arg0 at entry) +0x58.
  The `sw` at 0x58ec stores 4 bytes to a0 (arg0 at entry) +0x68.
  The `ld` at 0x5920 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x592c loads 8 bytes from [a0+24]:8 +0x0.
  The `ld` at 0x5930 loads 8 bytes from abs 0xffffffffaff20000.
  The `lw` at 0x5940 loads 4 bytes from a0 (arg0 at entry) +0xa8.
  The `jal` at 0x58f0 calls mutex_spinunlock with a0=a0+8, a1=ret(mutex_spinlock_spl), a2=?, a3=?.
  The `jal` at 0x58f8 calls timein_entry with a0=[a0+24]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x5904 calls test_and_set_int64 with a0=a0+88, a1=0x0, a2=?, a3=?.
  The `jal` at 0x5918 calls mutex_spinlock_spl with a0=a0+8, a1=sym(splprof), a2=?, a3=?.
  The `jal` at 0x5948 calls set_timer_intr with a0=?, a1=[[a0+24]:8]:8, a2=0x0, a3=?.
  The `jal` at 0x5958 calls mutex_spinunlock with a0=a0+8, a1=ret(mutex_spinlock_spl), a2=?, a3=?.
  The `jal` at 0x5994 calls timein_entry_ithrd with a0=a0 at entry (arg0), a1=[a0+24]:8, a2=ret(mutex_spinlock_spl), a3=?.
  The `jal` at 0x59a8 calls mutex_spinunlock with a0=a0+8, a1=ret(mutex_spinlock_spl), a2=?, a3=?.
  The `jal` at 0x59b8 calls mutex_spinlock_spl with a0=a0+8, a1=sym(splprof), a2=?, a3=?.
  The `jal` at 0x59c4 calls sv_broadcast with a0=a0+112, a1=?, a2=?, a3=?.
  The `jal` at 0x59d0 calls mutex_spinunlock with a0=a0+8, a1=ret(mutex_spinlock_spl), a2=?, a3=?.
  The `beq` branch at 0x58c0 targets 0x5914 and is always taken.
  The `beq` branch at 0x58d8 targets 0x5990, is taken when (v0(=[[a0+24]:8+70]:2) & 0x2) == 0, and falls through when (v0(=[[a0+24]:8+70]:2) & 0x2) != 0.
  The `beq` branch at 0x590c targets 0x59b8, is taken when v0(=ret(test_and_set_int64)) == s7(=0x2), and falls through when v0(=ret(test_and_set_int64)) != s7(=0x2).
  The `beq` branch at 0x5924 targets 0x59a4, is taken when s0(=[a0+24]:8) == 0, and falls through when s0(=[a0+24]:8) != 0.
  The `beq` branch at 0x5938 targets 0x58c8, is taken when a2(=[0xffffffffaff20000]:8) >= a1(=[[a0+24]:8]:8) (unsigned), and falls through when a2(=[0xffffffffaff20000]:8) < a1(=[[a0+24]:8]:8) (unsigned).
  The `beq` branch at 0x5950 targets 0x58c8, is taken when v0(=ret(set_timer_intr)) == 0, and falls through when v0(=ret(set_timer_intr)) != 0.
  The `beq` branch at 0x599c targets 0x5918 and is always taken.
  The `beq` branch at 0x59b0 targets 0x5960 and is always taken.
  The `beq` branch at 0x59d8 targets 0x5918 and is always taken.
  The return at 0x5988 has v0 = ret(mutex_spinunlock).

- `timein` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x59e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x59e0-0x5a90 (176 bytes).
  It occupies 176 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc280, including `ld` at 0x59e0, `ld` at 0x5a28.
  The `lh` at 0x5a0c loads 2 bytes from abs 0xffffffffffffc3a0.
  The `ld` at 0x5a1c loads 8 bytes from (sym(pdaindr) + ([-0x3c60]:2 << 0x4)) +0x8.
  The `jal` at 0x5a04 calls siroff with a0=0x100, a1=?, a2=?, a3=?.
  The `jal` at 0x5a20 calls timein_body with a0=[(sym(pdaindr) + ([-0x3c60]:2 << 0x4))+8]:8+1416, a1=([-0x3c60]:2 << 0x4), a2=?, a3=?.
  The `jal` at 0x5a40 calls init_fasthz_variables [0x5088] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x5a60 calls log_tstamp_event with a0=0x6d, a1=0x0, a2=0x0, a3=0x0, a4=0x0.
  The `jal` at 0x5a80 calls log_tstamp_event with a0=0x65, a1=0x6d, a2=0x0, a3=0x0, a4=0x0.
  The `bne` branch at 0x59ec targets 0x5a50, is taken when (at(=[-0x3d80]:8) & 0x20) != 0, and falls through when (at(=[-0x3d80]:8) & 0x20) == 0.
  The `bne` branch at 0x59fc targets 0x5a40, is taken when v0(=[sym(fasthz)]) != v1(=[sym(.sbss)+156]), and falls through when v0(=[sym(fasthz)]) == v1(=[sym(.sbss)+156]).
  The `bne` branch at 0x5a30 targets 0x5a70, is taken when (a2(=[-0x3d80]:8) & 0x20) != 0, and falls through when (a2(=[-0x3d80]:8) & 0x20) == 0.
  The `beq` branch at 0x5a48 targets 0x5a04 and is always taken.
  The `beq` branch at 0x5a68 targets 0x59f8 and is always taken.
  The `beq` branch at 0x5a88 targets 0x5a38 and is always taken.
  The return at 0x5a38 has v0 = one of ret(timein_body), ret(log_tstamp_event).

- `migrate_timeouts` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x5a90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x5a90-0x5c38 (424 bytes).
  It occupies 424 bytes.
  The `ld` at 0x5ad4 loads 8 bytes from (sym(pdaindr) + (a0 << 0x4)) +0x8.
  The `sw` at 0x5b0c stores 4 bytes to ret(add_migrated_timeout) +0x0.
  The `ld` at 0x5b38 loads 8 bytes from [(sym(pdaindr) + (a0 << 0x4))+8]:8 +0x5a0.
  The `ld` at 0x5b4c loads 8 bytes from [[(sym(pdaindr) + (a0 << 0x4))+8]:8+1440]:8 +0x8.
  The `sd` at 0x5b54 stores 8 bytes to [(sym(pdaindr) + (a0 << 0x4))+8]:8 +0x5a0.
  The `ld` at 0x5b60 loads 8 bytes from ?.
  The `sd` at 0x5b70 stores 8 bytes to ?.
  The `ld` at 0x5b88 loads 8 bytes from abs 0xffffffffaff20000.
  The `jal` at 0x5b00 calls clock_prtimeout_nothrd with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x5b10 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x5b18 calls allocate_migrate_timeout with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x5b20 calls splhi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x5b30 calls mutex_spinlock_spl with a0=[(sym(pdaindr) + (a0 << 0x4))+8]:8+1424, a1=sym(splprof), a2=?, a3=?.
  The `jal` at 0x5b78 calls mutex_spinunlock with a0=[(sym(pdaindr) + (a0 << 0x4))+8]:8+1424, a1=ret(mutex_spinlock_spl), a2=?, a3=?, a5=sp-160.
  The `jal` at 0x5b80 calls callout_free with a0=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1440]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x5ba0 calls add_migrated_timeout with a0=?, a1=?, a2=ret(allocate_migrate_timeout), a3=?.
  The `jal` at 0x5bdc calls clock_prtimeout with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x5bf0 calls mutex_spinunlock with a0=[(sym(pdaindr) + (a0 << 0x4))+8]:8+1424, a1=ret(mutex_spinlock_spl), a2=?, a3=?, a4=0x0, a5=sp-160.
  The `jal` at 0x5bf8 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x5c00 calls free_migrate_timeout with a0=ret(allocate_migrate_timeout), a1=?, a2=?, a3=?.
  The `beq` branch at 0x5ac8 targets 0x5c08, is taken when a0 == a1, and falls through when a0 != a1.
  The `beq` branch at 0x5ae8 targets 0x5b18 and is always taken.
  The `beq` branch at 0x5b44 targets 0x5bec, is taken when s0(=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1440]:8) == 0, and falls through when s0(=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1440]:8) != 0.
  The `bgtz` branch at 0x5b6c targets 0x5b58, is taken when a3(?) > 0 (signed), and falls through when a3(?) <= 0 (signed).
  The `bne` branch at 0x5bc4 targets 0x5af0, is taken when (at(?) & 0x2) != 0, and falls through when (at(?) & 0x2) == 0.
  The `beq` branch at 0x5be4 targets 0x5b0c and is always taken.
  The return at 0x5c30 has v0 = one of ?, ret(free_migrate_timeout).

- `settimetrim` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x5c38 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x5c38-0x5cb4 (124 bytes).
  It occupies 124 bytes.
  The `jal` at 0x5c48 calls cap_able with a0=0x8000000, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x5c8c calls mutex_spinlock_spl with a0=sym(timelock), a1=sym(splprof), a2=0x2d0000, a3=?.
  The `jal` at 0x5c9c calls mutex_spinunlock with a0=sym(timelock), a1=ret(mutex_spinlock_spl), a2=?, a3=?.
  The `beq` branch at 0x5c50 targets 0x5cac, is taken when v0(=ret(cap_able)) == 0, and falls through when v0(=ret(cap_able)) != 0.
  The `bne` branch at 0x5c64 targets 0x5c7c, is taken when s0(=a0) < at(=0xffffffffffd23940) (signed), and falls through when s0(=a0) >= at(=0xffffffffffd23940) (signed).
  The `beq` branch at 0x5c74 targets 0x5c8c, is taken when v1(=0x2dc6c0) >= s0(=a0) (signed), and falls through when v1(=0x2dc6c0) < s0(=a0) (signed).
  The `beq` branch at 0x5ca4 targets 0x5c7c and is always taken.
  The `beq` branch at 0x5cac targets 0x5c7c and is always taken.
  The return at 0x5c84 has v0 = one of 0x0, 0x1, 0x16.

- `gettimetrim` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x5cb4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x5cb4-0x5cbc (8 bytes).
  It occupies 8 bytes.
  The return at 0x5cb4 has v0 = [sym(timetrim)].

- `doadjtime` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x5cbc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x5cbc-0x5eb0 (500 bytes).
  It occupies 500 bytes.
  The `jal` at 0x5d04 calls splprof with a0=?, a1=0xf0000, a2=?, a3=a3 at entry (arg3).
  The `jal` at 0x5d0c calls __nanotime [0x5eb0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x5d1c calls nested_spinlock with a0=sym(timelock), a1=?, a2=?, a3=?.
  The `jal` at 0x5dc4 calls mutex_spinunlock with a0=sym(timelock), a1=ret(splprof), a2=[sym(.sbss)+100]+1, a3=?.
  The `jal` at 0x5e24 calls splprof with a0=a0 at entry (arg0), a1=0xf0000, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x5e2c calls __nanotime [0x5eb0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x5e38 calls nested_spinlock with a0=sym(timelock), a1=?, a2=?, a3=?.
  The `jal` at 0x5e98 calls mutex_spinunlock with a0=sym(timelock), a1=ret(splprof), a2=?, a3=?, a4=0x3e8.
  The `beq` branch at 0x5cd8 targets 0x5e24, is taken when a0 == 0, and falls through when a0 != 0.
  The `bltz` branch at 0x5ce4 targets 0x5e14, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0x5cf4 targets 0x5dec, is taken when s0(?) >= 0x3e8 (signed), and falls through when s0(?) < 0x3e8 (signed).
  The `bne` branch at 0x5cfc targets 0x5e0c, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `blez` branch at 0x5d60 targets 0x5da4, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `bltz` branch at 0x5da4 targets 0x5e1c, is taken when s2(?) < 0 (signed), and falls through when s2(?) >= 0 (signed).
  The `beq` branch at 0x5df8 targets 0x5e04, is taken when a2(=0xf4240) >= s0(?) (signed), and falls through when a2(=0xf4240) < s0(?) (signed).
  The `beq` branch at 0x5e04 targets 0x5d04, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x5e0c targets 0x5d04 and is always taken.
  The `beq` branch at 0x5e14 targets 0x5cec and is always taken.
  The `beq` branch at 0x5e1c targets 0x5db0 and is always taken.
  The `blez` branch at 0x5e50 targets 0x5ea8, is taken when a0(?) <= 0 (signed), and falls through when a0(?) > 0 (signed).
  The `beq` branch at 0x5ea0 targets 0x5dd0 and is always taken.
  The `beq` branch at 0x5ea8 targets 0x5e94 and is always taken.
  The return at 0x5de4 has v0 = ?.

- `__nanotime` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x5eb0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x5eb0-0x60d4 (548 bytes).
  It occupies 548 bytes.
  The `ld` at 0x5ed8 loads 8 bytes from abs 0xffffffffaff20000.
  3 such `ld` accesses load 8 bytes from sym(pdaindr) +0x28, including `ld` at 0x5f8c, `ld` at 0x5fd4, `ld` at 0x6060.
  2 such `sd` accesses store 8 bytes to sym(pdaindr) +0x28, including `sd` at 0x6024, `sd` at 0x60b0.
  2 such `lw` accesses load 4 bytes from sym(pdaindr) +0x20, including `lw` at 0x6028, `lw` at 0x6034.
  2 such `sw` accesses store 4 bytes to sym(pdaindr) +0x20, including `sw` at 0x6030, `sw` at 0x60ac.
  The `jal` at 0x5ebc calls mutex_spinlock_spl with a0=sym(timelock), a1=sym(splprof), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x604c calls mutex_spinunlock with a0=sym(timelock), a1=ret(mutex_spinlock_spl), a2=?, a3=?, a7=[0xffffffffaff20000]:8.
  The `jal` at 0x60c4 calls mutex_spinunlock with a0=sym(timelock), a1=ret(mutex_spinlock_spl), a2=?, a3=?, a7=[0xffffffffaff20000]:8.
  The `beq` branch at 0x5ef0 targets 0x60a4, is taken when at(=[sym(.sbss)+104]:8) == 0, and falls through when at(=[sym(.sbss)+104]:8) != 0.
  The `beq` branch at 0x5f0c targets 0x5f3c, is taken when a7(=[0xffffffffaff20000]:8) >= a5(=([sym(adjtime_delta)]:8 + [sym(adjtime_RTC)]:8)) (unsigned), and falls through when a7(=[0xffffffffaff20000]:8) < a5(=([sym(adjtime_delta)]:8 + [sym(adjtime_RTC)]:8)) (unsigned).
  The `beq` branch at 0x5f34 targets 0x5f40 and is always taken.
  The `beq` branch at 0x5f44 targets 0x5f7c, is taken when v1(=[sym(adjtime_nanos)]:8) == 0, and falls through when v1(=[sym(adjtime_nanos)]:8) != 0.
  The `bltz` branch at 0x5f5c targets 0x608c, is taken when t0(?) < 0 (signed), and falls through when t0(?) >= 0 (signed).
  The `blez` branch at 0x5f64 targets 0x6094, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `bne` branch at 0x5fcc targets 0x6060, is taken when t9(?) < a6(=0x3b9aca00) (signed), and falls through when t9(?) >= a6(=0x3b9aca00) (signed).
  The `bne` branch at 0x6004 targets 0x601c, is taken when a4(=table(0xffffffffc4653600)) < a6(=0x3b9aca00) (signed), and falls through when a4(=table(0xffffffffc4653600)) >= a6(=0x3b9aca00) (signed).
  The `beq` branch at 0x6014 targets 0x5ff8, is taken when a4(=table(0xffffffff88ca6c00)) >= a6(=0x3b9aca00) (signed), and falls through when a4(=table(0xffffffff88ca6c00)) < a6(=0x3b9aca00) (signed).
  The `beq` branch at 0x6020 targets 0x603c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x6084 targets 0x601c and is always taken.
  The `bltz` branch at 0x608c targets 0x5f6c, is taken when a5(?) < 0 (signed), and falls through when a5(?) >= 0 (signed).
  The `beq` branch at 0x609c targets 0x5f70 and is always taken.
  The `beq` branch at 0x60cc targets 0x6058 and is always taken.
  The return at 0x6058 has v0 = ret(mutex_spinunlock).

- `nanotime_syscall` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x60d4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x60d4-0x6244 (368 bytes).
  It occupies 368 bytes.
  The `lw` at 0x6100 loads 4 bytes from sym(pdaindr) +0x20.
  The `ld` at 0x6104 loads 8 bytes from sym(pdaindr) +0x28.
  The `ld` at 0x6108 loads 8 bytes from abs 0xffffffffaff20000.
  The `sd` at 0x61e8 stores 8 bytes to a0 (arg0 at entry) +0x8.
  The `sw` at 0x61f0 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `lw` at 0x620c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jal` at 0x60e0 calls splprof with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x6204 calls mutex_spinlock_spl with a0=sym(timelock), a1=sym(splprof), a2=?, a3=?, a7=0x3b9aca00.
  The `jal` at 0x6224 calls mutex_spinunlock with a0=sym(timelock), a1=ret(mutex_spinlock_spl), a2=?, a3=?, a4=[a0].
  The `jal` at 0x622c calls splx with a0=ret(splprof), a1=?, a2=?, a3=?.
  The `bne` branch at 0x6120 targets 0x60f4, is taken when t8(=[sym(.sbss)+100]) != t9(=[sym(.sbss)+96]), and falls through when t8(=[sym(.sbss)+100]) == t9(=[sym(.sbss)+96]).
  The `beq` branch at 0x6144 targets 0x6170, is taken when a4(=[0xffffffffaff20000]:8) >= at(=([sym(adjtime_delta)]:8 + [sym(adjtime_RTC)]:8)) (unsigned), and falls through when a4(=[0xffffffffaff20000]:8) < at(=([sym(adjtime_delta)]:8 + [sym(adjtime_RTC)]:8)) (unsigned).
  The `beq` branch at 0x614c targets 0x6170, is taken when a5(=[sym(adjtime_delta)]:8) == 0, and falls through when a5(=[sym(adjtime_delta)]:8) != 0.
  The `bne` branch at 0x61b4 targets 0x61e8, is taken when a4(?) < a7(=0x3b9aca00) (signed), and falls through when a4(?) >= a7(=0x3b9aca00) (signed).
  The `bne` branch at 0x61d0 targets 0x61e8, is taken when a4(=table(0xffffffffc4653600)) < a7(=0x3b9aca00) (signed), and falls through when a4(=table(0xffffffffc4653600)) >= a7(=0x3b9aca00) (signed).
  The `beq` branch at 0x61e0 targets 0x61c4, is taken when a4(=table(0xffffffff88ca6c00)) >= a7(=0x3b9aca00) (signed), and falls through when a4(=table(0xffffffff88ca6c00)) < a7(=0x3b9aca00) (signed).
  The `beq` branch at 0x61fc targets 0x622c, is taken when t3(=[sym(time)]) >= t8(?) (signed), and falls through when t3(=[sym(time)]) < t8(?) (signed).
  The `beq` branch at 0x6218 targets 0x6224, is taken when t9(=[sym(time)]) >= a4(=[a0]) (signed), and falls through when t9(=[sym(time)]) < a4(=[a0]) (signed).
  The return at 0x623c has v0 = ret(splx).

- `nanotime` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6244 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6244-0x6328 (228 bytes).
  It occupies 228 bytes.
  The `lw` at 0x6260 loads 4 bytes from sym(pdaindr) +0x20.
  The `ld` at 0x6264 loads 8 bytes from sym(pdaindr) +0x28.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffaff20000, including `ld` at 0x6278, `ld` at 0x62ac, `ld` at 0x6300.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x8, including `sd` at 0x62f0, `sd` at 0x6324.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `sw` at 0x62f4, `sw` at 0x631c.
  The `beq` branch at 0x624c targets 0x631c, is taken when at(=[sym(.sbss)+104]:8) == 0, and falls through when at(=[sym(.sbss)+104]:8) != 0.
  The `bne` branch at 0x6270 targets 0x6254, is taken when a6(=[sym(.sbss)+100]) != t0(=[sym(.sbss)+96]), and falls through when a6(=[sym(.sbss)+100]) == t0(=[sym(.sbss)+96]).
  The `bne` branch at 0x62a4 targets 0x6300, is taken when t1(?) < a6(=0x3b9aca00) (signed), and falls through when t1(?) >= a6(=0x3b9aca00) (signed).
  The `bne` branch at 0x62d8 targets 0x62f0, is taken when a3(=table(0xffffffffc4653600)) < a6(=0x3b9aca00) (signed), and falls through when a3(=table(0xffffffffc4653600)) >= a6(=0x3b9aca00) (signed).
  The `beq` branch at 0x62e8 targets 0x62cc, is taken when a3(=table(0xffffffff88ca6c00)) >= a6(=0x3b9aca00) (signed), and falls through when a3(=table(0xffffffff88ca6c00)) < a6(=0x3b9aca00) (signed).
  The `beq` branch at 0x6314 targets 0x62f0 and is always taken.
  The return at 0x62f8 has v0 = ?.
  The return at 0x6320 has v0 = ?.

- `irix5_microtime` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6328 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6328-0x636c (68 bytes).
  It occupies 68 bytes.
  The `sw` at 0x6344 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `sw` at 0x635c stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `jal` at 0x6338 calls nanotime_syscall with a0=sp-32, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x6364 has v0 = ?.

- `microtime` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x636c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x636c-0x63b0 (68 bytes).
  It occupies 68 bytes.
  The `sw` at 0x6388 stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `sd` at 0x63a0 stores 8 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0x637c calls nanotime_syscall with a0=sp-32, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x63a8 has v0 = ?.

- `local_settime` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x63b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x63b0-0x6488 (216 bytes).
  It occupies 216 bytes.
  The `ld` at 0x642c loads 8 bytes from abs 0xffffffffaff20000.
  The `sw` at 0x6444 stores 4 bytes to sym(pdaindr) +0x20.
  The `sd` at 0x6450 stores 8 bytes to sym(pdaindr) +0x28.
  The `jal` at 0x63cc calls mutex_spinlock_spl with a0=sym(timelock), a1=sym(splprof), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x646c calls mutex_spinunlock with a0=sym(timelock), a1=ret(mutex_spinlock_spl), a2=?, a3=0xfffffffffff0bdc0, a4=0xf4240, a7=[sym(.sbss)+100].
  The `bne` branch at 0x63e8 targets 0x6414, is taken when s0(=a1) < a4(=0xf4240) (signed), and falls through when s0(=a1) >= a4(=0xf4240) (signed).
  The `bne` branch at 0x63fc targets 0x6414, is taken when s0(?) < a4(=0xf4240) (signed), and falls through when s0(?) >= a4(=0xf4240) (signed).
  The `beq` branch at 0x640c targets 0x63f0, is taken when s0(?) >= a4(=0xf4240) (signed), and falls through when s0(?) < a4(=0xf4240) (signed).
  The return at 0x6480 has v0 = ret(mutex_spinunlock).

- `settime` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6488 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6488-0x64cc (68 bytes).
  It occupies 68 bytes.
  The `ld` at 0x64a8 loads 8 bytes from ret(vhost_local) +0x0.
  The `ld` at 0x64ac loads 8 bytes from [ret(vhost_local)]:8 +0x10.
  The `ld` at 0x64b0 loads 8 bytes from [[ret(vhost_local)]:8+16]:8 +0x78.
  The `jal` at 0x6490 calls local_settime with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x6498 calls vhost_local with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x64a0 calls cellid with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x64b4 calls (unknown callee) with a0=[ret(vhost_local)]:8, a1=ret(cellid), a2=?, a3=?.
  The return at 0x64c4 has v0 = ret(?).

- `enable_fastclock` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x64e8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x64e8-0x64f0 (8 bytes).
  It occupies 8 bytes.
  The return at 0x64e8 has v0 = ?.

- `cache_preempt_limit` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x64f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x64f0-0x64f8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x64f0 has v0 = ?.

- `get_realtime_ticks` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x64f8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x64f8-0x6520 (40 bytes).
  It occupies 40 bytes.
  The `ld` at 0x6500 loads 8 bytes from abs 0xffffffffaff20000.
  The return at 0x6518 has v0 = ?.

- `tstoclock` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6520 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6520-0x656c (76 bytes).
  It occupies 76 bytes.
  The `lw` at 0x6520 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0x6530 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x6560 loads 8 bytes from abs 0xffffffffaff20000.
  The `beq` branch at 0x654c targets 0x655c, is taken when a1 == v1(=0x1), and falls through when a1 != v1(=0x1).
  The return at 0x6554 has v0 = ?.
  The return at 0x6564 has v0 = ?.

- `tvtoclock` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x656c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x656c-0x65cc (96 bytes).
  It occupies 96 bytes.
  The `lw` at 0x656c loads 4 bytes from a0 (arg0 at entry) +0x4.
  The `ld` at 0x657c loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x65c0 loads 8 bytes from abs 0xffffffffaff20000.
  The `beq` branch at 0x65ac targets 0x65bc, is taken when a1 == v1(=0x1), and falls through when a1 != v1(=0x1).
  The return at 0x65b4 has v0 = ?.
  The return at 0x65c4 has v0 = ?.

- `timepoke` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x65cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x65cc-0x65e8 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x65d4 calls siron with a0=0x100, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x65e0 has v0 = ret(siron).

- `findcpufreq_cycles` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x65e8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x65e8-0x661c (52 bytes).
  It occupies 52 bytes.
  The `lw` at 0x65e8 loads 4 bytes from abs 0xffffffffffffc6f4.
  The `sw` at 0x6618 stores 4 bytes to abs 0xffffffffffffc6f4.
  The `jal` at 0x6604 calls findcpufreq_hz with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=[-0x390c], a3=a3 at entry (arg3).
  The `beq` branch at 0x65f0 targets 0x6604, is taken when a2(=[-0x390c]) == 0, and falls through when a2(=[-0x390c]) != 0.
  The `beq` branch at 0x6614 targets 0x65f8 and is always taken.
  The return at 0x65fc has v0 = one of [-0x390c], ?.

- `first_timein` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x661c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x661c-0x663c (32 bytes).
  It occupies 32 bytes.
  The `ld` at 0x661c loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x6630 loads 8 bytes from [a0+24]:8 +0x0.
  The `bne` branch at 0x6620 targets 0x6630, is taken when a3(=[a0+24]:8) != 0, and falls through when a3(=[a0+24]:8) == 0.
  The return at 0x6628 has v0 = 0x7fffffffffffffff.
  The return at 0x6634 has v0 = [[a0+24]:8]:8.

- `atomicAddInt` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6640 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6640-0x6660 (32 bytes).
  It occupies 32 bytes.
  The `ll` at 0x6640 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6648 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x664c targets 0x6640, is taken when t1(=([a0] + a1)) == 0, and falls through when t1(=([a0] + a1)) != 0; its branch-likely delay slot `nop` at 0x6650 runs only when taken and is annulled on fall-through.
  The return at 0x6658 has v0 = ([a0] + a1).

- `atomicAddUint` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6640 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6640-0x6660 (32 bytes).
  It occupies 32 bytes.
  The `ll` at 0x6640 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6648 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x664c targets 0x6640, is taken when t1(=([a0] + a1)) == 0, and falls through when t1(=([a0] + a1)) != 0; its branch-likely delay slot `nop` at 0x6650 runs only when taken and is annulled on fall-through.
  The return at 0x6658 has v0 = ([a0] + a1).

- `atomicAddIntHot2` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6660 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6660-0x6680 (32 bytes).
  It occupies 32 bytes.
  2 such `sb` accesses store 1 byte to a2 (arg2 at entry) +0x0, including `sb` at 0x6660, `sb` at 0x6674.
  The `ll` at 0x6664 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x666c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6670 targets 0x6664, is taken when t1(=([a0] + a1)) == 0, and falls through when t1(=([a0] + a1)) != 0; its branch-likely delay slot `sb zero,0(a2)` at 0x6674 runs only when taken and is annulled on fall-through.
  The return at 0x6678 has v0 = ([a0] + a1).

- `atomicAddUintHot2` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6660 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6660-0x6680 (32 bytes).
  It occupies 32 bytes.
  2 such `sb` accesses store 1 byte to a2 (arg2 at entry) +0x0, including `sb` at 0x6660, `sb` at 0x6674.
  The `ll` at 0x6664 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x666c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6670 targets 0x6664, is taken when t1(=([a0] + a1)) == 0, and falls through when t1(=([a0] + a1)) != 0; its branch-likely delay slot `sb zero,0(a2)` at 0x6674 runs only when taken and is annulled on fall-through.
  The return at 0x6678 has v0 = ([a0] + a1).

- `atomicSetCpumask` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6680 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6680-0x66a0 (32 bytes).
  It occupies 32 bytes.
  The `lw` at 0x6680 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ll` at 0x6684 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x668c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6690 targets 0x6684, is taken when t2(=([a0] | [a1])) == 0, and falls through when t2(=([a0] | [a1])) != 0; its branch-likely delay slot `nop` at 0x6694 runs only when taken and is annulled on fall-through.
  The return at 0x6698 has v0 = [a0].

- `atomicClearInt` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x66a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x66a0-0x66c0 (32 bytes).
  It occupies 32 bytes.
  The `ll` at 0x66a4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x66ac stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x66b0 targets 0x66a4, is taken when (v0(=[a0]) & a1(?)) == 0, and falls through when (v0(=[a0]) & a1(?)) != 0; its branch-likely delay slot `nop` at 0x66b4 runs only when taken and is annulled on fall-through.
  The return at 0x66b8 has v0 = [a0].

- `atomicClearUint` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x66a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x66a0-0x66c0 (32 bytes).
  It occupies 32 bytes.
  The `ll` at 0x66a4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x66ac stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x66b0 targets 0x66a4, is taken when (v0(=[a0]) & a1(?)) == 0, and falls through when (v0(=[a0]) & a1(?)) != 0; its branch-likely delay slot `nop` at 0x66b4 runs only when taken and is annulled on fall-through.
  The return at 0x66b8 has v0 = [a0].

- `bitlock_release_32bit` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x66a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x66a0-0x66c0 (32 bytes).
  It occupies 32 bytes.
  The `ll` at 0x66a4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x66ac stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x66b0 targets 0x66a4, is taken when (v0(=[a0]) & a1(?)) == 0, and falls through when (v0(=[a0]) & a1(?)) != 0; its branch-likely delay slot `nop` at 0x66b4 runs only when taken and is annulled on fall-through.
  The return at 0x66b8 has v0 = [a0].

- `atomicClearInt64` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x66c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x66c0-0x66e0 (32 bytes).
  It occupies 32 bytes.
  The `lld` at 0x66c4 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x66cc stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x66d0 targets 0x66c4, is taken when (v0(=[a0]:8) & a1(?)) == 0, and falls through when (v0(=[a0]:8) & a1(?)) != 0; its branch-likely delay slot `nop` at 0x66d4 runs only when taken and is annulled on fall-through.
  The return at 0x66d8 has v0 = [a0]:8.

- `atomicClearLong` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x66c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x66c0-0x66e0 (32 bytes).
  It occupies 32 bytes.
  The `lld` at 0x66c4 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x66cc stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x66d0 targets 0x66c4, is taken when (v0(=[a0]:8) & a1(?)) == 0, and falls through when (v0(=[a0]:8) & a1(?)) != 0; its branch-likely delay slot `nop` at 0x66d4 runs only when taken and is annulled on fall-through.
  The return at 0x66d8 has v0 = [a0]:8.

- `atomicClearUint64` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x66c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x66c0-0x66e0 (32 bytes).
  It occupies 32 bytes.
  The `lld` at 0x66c4 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x66cc stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x66d0 targets 0x66c4, is taken when (v0(=[a0]:8) & a1(?)) == 0, and falls through when (v0(=[a0]:8) & a1(?)) != 0; its branch-likely delay slot `nop` at 0x66d4 runs only when taken and is annulled on fall-through.
  The return at 0x66d8 has v0 = [a0]:8.

- `atomicClearUlong` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x66c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x66c0-0x66e0 (32 bytes).
  It occupies 32 bytes.
  The `lld` at 0x66c4 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x66cc stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x66d0 targets 0x66c4, is taken when (v0(=[a0]:8) & a1(?)) == 0, and falls through when (v0(=[a0]:8) & a1(?)) != 0; its branch-likely delay slot `nop` at 0x66d4 runs only when taken and is annulled on fall-through.
  The return at 0x66d8 has v0 = [a0]:8.

- `bitlock_release` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x66c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x66c0-0x66e0 (32 bytes).
  It occupies 32 bytes.
  The `lld` at 0x66c4 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x66cc stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x66d0 targets 0x66c4, is taken when (v0(=[a0]:8) & a1(?)) == 0, and falls through when (v0(=[a0]:8) & a1(?)) != 0; its branch-likely delay slot `nop` at 0x66d4 runs only when taken and is annulled on fall-through.
  The return at 0x66d8 has v0 = [a0]:8.

- `atomicFieldAssignLong` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x66e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x66e0-0x6704 (36 bytes).
  It occupies 36 bytes.
  The `lld` at 0x66e4 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x66f0 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x66f4 targets 0x66e4, is taken when t2(?) == 0, and falls through when t2(?) != 0; its branch-likely delay slot `nop` at 0x66f8 runs only when taken and is annulled on fall-through.
  The return at 0x66fc has v0 = [a0]:8.

- `atomicFieldAssignUint` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6704 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6704-0x6728 (36 bytes).
  It occupies 36 bytes.
  The `ll` at 0x6708 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6714 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6718 targets 0x6708, is taken when t2(?) == 0, and falls through when t2(?) != 0; its branch-likely delay slot `nop` at 0x671c runs only when taken and is annulled on fall-through.
  The return at 0x6720 has v0 = [a0].

- `atomicClearCpumask` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6728 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6728-0x674c (36 bytes).
  It occupies 36 bytes.
  The `lw` at 0x6728 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `ll` at 0x6730 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6738 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x673c targets 0x6730, is taken when (v0(=[a0]) & a1(?)) == 0, and falls through when (v0(=[a0]) & a1(?)) != 0; its branch-likely delay slot `nop` at 0x6740 runs only when taken and is annulled on fall-through.
  The return at 0x6744 has v0 = [a0].

- `atomicAddInt64` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x674c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x674c-0x676c (32 bytes).
  It occupies 32 bytes.
  The `lld` at 0x674c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6754 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6758 targets 0x674c, is taken when t1(=([a0]:8 + a1)) == 0, and falls through when t1(=([a0]:8 + a1)) != 0; its branch-likely delay slot `nop` at 0x675c runs only when taken and is annulled on fall-through.
  The return at 0x6764 has v0 = ([a0]:8 + a1).

- `atomicAddUint64` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x674c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x674c-0x676c (32 bytes).
  It occupies 32 bytes.
  The `lld` at 0x674c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6754 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6758 targets 0x674c, is taken when t1(=([a0]:8 + a1)) == 0, and falls through when t1(=([a0]:8 + a1)) != 0; its branch-likely delay slot `nop` at 0x675c runs only when taken and is annulled on fall-through.
  The return at 0x6764 has v0 = ([a0]:8 + a1).

- `atomicAddInt64Hot2` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x676c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x676c-0x678c (32 bytes).
  It occupies 32 bytes.
  2 such `sb` accesses store 1 byte to a2 (arg2 at entry) +0x0, including `sb` at 0x676c, `sb` at 0x6780.
  The `lld` at 0x6770 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6778 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x677c targets 0x6770, is taken when t1(=([a0]:8 + a1)) == 0, and falls through when t1(=([a0]:8 + a1)) != 0; its branch-likely delay slot `sb zero,0(a2)` at 0x6780 runs only when taken and is annulled on fall-through.
  The return at 0x6784 has v0 = ([a0]:8 + a1).

- `atomicAddUint64Hot2` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x676c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x676c-0x678c (32 bytes).
  It occupies 32 bytes.
  2 such `sb` accesses store 1 byte to a2 (arg2 at entry) +0x0, including `sb` at 0x676c, `sb` at 0x6780.
  The `lld` at 0x6770 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6778 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x677c targets 0x6770, is taken when t1(=([a0]:8 + a1)) == 0, and falls through when t1(=([a0]:8 + a1)) != 0; its branch-likely delay slot `sb zero,0(a2)` at 0x6780 runs only when taken and is annulled on fall-through.
  The return at 0x6784 has v0 = ([a0]:8 + a1).

- `atomicPush` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x678c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x678c-0x67c4 (56 bytes).
  It occupies 56 bytes.
  The `ld` at 0x678c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sd` at 0x6798 stores 8 bytes to a2 (arg2 at entry) +0x0.
  The `lld` at 0x679c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x67a8 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x6794 targets 0x67b8, is taken when (t0(=[a0]:8) & 0x1) != 0, and falls through when (t0(=[a0]:8) & 0x1) == 0.
  The `bne` branch at 0x67a0 targets 0x678c, is taken when v0(=[a0]:8) != t0(=[a0]:8), and falls through when v0(=[a0]:8) == t0(=[a0]:8).
  The `beql` branch at 0x67ac targets 0x678c, is taken when t2(=a1) == 0, and falls through when t2(=a1) != 0; its branch-likely delay slot `nop` at 0x67b0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x67bc targets 0x678c and is always taken.
  The return at 0x67b4 has v0 = [a0]:8.

- `atomicPull` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x67c4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x67c4-0x67f0 (44 bytes).
  It occupies 44 bytes.
  The `lld` at 0x67c4 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x67d4 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x67cc targets 0x67e4, is taken when (v0(=[a0]:8) & 0x1) != 0, and falls through when (v0(=[a0]:8) & 0x1) == 0.
  The `beql` branch at 0x67d8 targets 0x67c4 and is always taken.
  The `beq` branch at 0x67e8 targets 0x67c4 and is always taken.
  The instructions from 0x67e0 to 0x67e0 are not reached by any path from the entry, and their branches are not listed.

- `atomicIncWithWrap` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x67f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x67f0-0x681c (44 bytes).
  It occupies 44 bytes.
  The `ll` at 0x67f0 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6804 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x67f8 targets 0x6804, is taken when t1(=[a0]+1) != a1, and falls through when t1(=[a0]+1) == a1.
  The `beql` branch at 0x6808 targets 0x67f0, is taken when t1(?) == 0, and falls through when t1(?) != 0; its branch-likely delay slot `nop` at 0x680c runs only when taken and is annulled on fall-through.
  The return at 0x6814 has v0 = [a0].

- `atomicAddWithWrap` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x681c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x681c-0x684c (48 bytes).
  It occupies 48 bytes.
  The `ll` at 0x681c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6834 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x6828 targets 0x6834, is taken when t1(=([a0] + a1)) < a2 (signed), and falls through when t1(=([a0] + a1)) >= a2 (signed).
  The `beql` branch at 0x6838 targets 0x681c, is taken when t1(?) == 0, and falls through when t1(?) != 0; its branch-likely delay slot `nop` at 0x683c runs only when taken and is annulled on fall-through.
  The return at 0x6844 has v0 = [a0].

- `bitlock_set` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x684c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x684c-0x6870 (36 bytes).
  It occupies 36 bytes.
  The `ll` at 0x684c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x685c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x6854 targets 0x684c, is taken when (v0(=[a0]) & a1) != 0, and falls through when (v0(=[a0]) & a1) == 0.
  The `beql` branch at 0x6860 targets 0x684c, is taken when t2(=([a0] | a2)) == 0, and falls through when t2(=([a0] | a2)) != 0; its branch-likely delay slot `nop` at 0x6864 runs only when taken and is annulled on fall-through.
  The return at 0x6868 has v0 = [a0].

- `bitlock_clr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6870 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6870-0x6898 (40 bytes).
  It occupies 40 bytes.
  The `ll` at 0x6874 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6884 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x687c targets 0x6874, is taken when (v0(=[a0]) & a1) != 0, and falls through when (v0(=[a0]) & a1) == 0.
  The `beql` branch at 0x6888 targets 0x6874, is taken when t2(?) == 0, and falls through when t2(?) != 0; its branch-likely delay slot `nop` at 0x688c runs only when taken and is annulled on fall-through.
  The return at 0x6890 has v0 = [a0].

- `bitlock_acquire` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6898 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6898-0x68bc (36 bytes).
  It occupies 36 bytes.
  The `lld` at 0x6898 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x68a8 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x68a0 targets 0x6898, is taken when (v0(=[a0]:8) & a1) != 0, and falls through when (v0(=[a0]:8) & a1) == 0.
  The `beql` branch at 0x68ac targets 0x6898, is taken when t2(=([a0]:8 | a1)) == 0, and falls through when t2(=([a0]:8 | a1)) != 0; its branch-likely delay slot `nop` at 0x68b0 runs only when taken and is annulled on fall-through.
  The return at 0x68b4 has v0 = [a0]:8.

- `bitlock_acquire_32bit` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x68bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x68bc-0x68e0 (36 bytes).
  It occupies 36 bytes.
  The `ll` at 0x68bc loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x68cc stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x68c4 targets 0x68bc, is taken when (v0(=[a0]) & a1) != 0, and falls through when (v0(=[a0]) & a1) == 0.
  The `beql` branch at 0x68d0 targets 0x68bc, is taken when t2(=([a0] | a1)) == 0, and falls through when t2(=([a0] | a1)) != 0; its branch-likely delay slot `nop` at 0x68d4 runs only when taken and is annulled on fall-through.
  The return at 0x68d8 has v0 = [a0].

- `bitlock_condacq` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x68e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x68e0-0x697c (156 bytes).
  It occupies 156 bytes.
  The `lld` at 0x68f0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6900 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0x68e8 targets 0x692c, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The `bne` branch at 0x68f8 targets 0x6914, is taken when (v0(=[a0]:8) & a1) != 0, and falls through when (v0(=[a0]:8) & a1) == 0.
  The `beql` branch at 0x6904 targets 0x68f0, is taken when t2(=([a0]:8 | a1)) == 0, and falls through when t2(=([a0]:8 | a1)) != 0; its branch-likely delay slot `nop` at 0x6908 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0x691c targets 0x6918, is taken when a5(?) >= 0 (signed), and falls through when a5(?) < 0 (signed).
  The `beq` branch at 0x6924 targets 0x68e4 and is always taken.
  The return at 0x690c has v0 = 0x0.
  The return at 0x6974 has v0 = 0x1.

- `bitlock_condacq_32bit` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x697c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x697c-0x6a18 (156 bytes).
  It occupies 156 bytes.
  The `ll` at 0x698c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x699c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0x6984 targets 0x69c8, is taken when t3(?) < 0 (signed), and falls through when t3(?) >= 0 (signed).
  The `bne` branch at 0x6994 targets 0x69b0, is taken when (v0(=[a0]) & a1) != 0, and falls through when (v0(=[a0]) & a1) == 0.
  The `beql` branch at 0x69a0 targets 0x698c, is taken when t2(=([a0] | a1)) == 0, and falls through when t2(=([a0] | a1)) != 0; its branch-likely delay slot `nop` at 0x69a4 runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0x69b8 targets 0x69b4, is taken when a5(?) >= 0 (signed), and falls through when a5(?) < 0 (signed).
  The `beq` branch at 0x69c0 targets 0x6980 and is always taken.
  The return at 0x69a8 has v0 = 0x0.
  The return at 0x6a10 has v0 = 0x1.

- `mutex_set_always` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6a18 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6a18-0x6a34 (28 bytes).
  It occupies 28 bytes.
  The `lld` at 0x6a18 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6a20 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6a24 targets 0x6a18, is taken when t0(=a1) == 0, and falls through when t0(=a1) != 0; its branch-likely delay slot `nop` at 0x6a28 runs only when taken and is annulled on fall-through.
  The return at 0x6a2c has v0 = [a0]:8.

- `test_and_set_int` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6a34 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6a34-0x6a50 (28 bytes).
  It occupies 28 bytes.
  The `ll` at 0x6a34 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6a3c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6a40 targets 0x6a34, is taken when t2(=a1) == 0, and falls through when t2(=a1) != 0; its branch-likely delay slot `nop` at 0x6a44 runs only when taken and is annulled on fall-through.
  The return at 0x6a48 has v0 = [a0].

- `test_and_set_int64` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6a50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6a50-0x6a6c (28 bytes).
  It occupies 28 bytes.
  The `lld` at 0x6a50 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6a58 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6a5c targets 0x6a50, is taken when t2(=a1) == 0, and falls through when t2(=a1) != 0; its branch-likely delay slot `nop` at 0x6a60 runs only when taken and is annulled on fall-through.
  The return at 0x6a64 has v0 = [a0]:8.

- `test_and_set_long` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6a50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6a50-0x6a6c (28 bytes).
  It occupies 28 bytes.
  The `lld` at 0x6a50 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6a58 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6a5c targets 0x6a50, is taken when t2(=a1) == 0, and falls through when t2(=a1) != 0; its branch-likely delay slot `nop` at 0x6a60 runs only when taken and is annulled on fall-through.
  The return at 0x6a64 has v0 = [a0]:8.

- `test_and_set_ptr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6a50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6a50-0x6a6c (28 bytes).
  It occupies 28 bytes.
  The `lld` at 0x6a50 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6a58 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6a5c targets 0x6a50, is taken when t2(=a1) == 0, and falls through when t2(=a1) != 0; its branch-likely delay slot `nop` at 0x6a60 runs only when taken and is annulled on fall-through.
  The return at 0x6a64 has v0 = [a0]:8.

- `swap_int` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6a6c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6a6c-0x6a88 (28 bytes).
  It occupies 28 bytes.
  The `ll` at 0x6a6c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6a74 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6a78 targets 0x6a6c, is taken when t0(=a1) == 0, and falls through when t0(=a1) != 0; its branch-likely delay slot `nop` at 0x6a7c runs only when taken and is annulled on fall-through.
  The return at 0x6a80 has v0 = [a0].

- `compare_and_swap_int` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6a88 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6a88-0x6b20 (152 bytes).
  It occupies 152 bytes.
  The `ll` at 0x6a88 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6a94 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x6a8c targets 0x6aa8, is taken when t0(=[a0]) != a1, and falls through when t0(=[a0]) == a1.
  The `beql` branch at 0x6a98 targets 0x6a88, is taken when v0(=a2) == 0, and falls through when v0(=a2) != 0; its branch-likely delay slot `nop` at 0x6a9c runs only when taken and is annulled on fall-through.
  The return at 0x6aa0 has v0 = a2.
  The return at 0x6b18 has v0 = 0x0.

- `compare_and_inc_int_gt_zero` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6b20 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6b20-0x6bb8 (152 bytes).
  It occupies 152 bytes.
  The `ll` at 0x6b20 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6b2c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `blez` branch at 0x6b24 targets 0x6b40, is taken when v0(=[a0]) <= 0 (signed), and falls through when v0(=[a0]) > 0 (signed).
  The `beql` branch at 0x6b30 targets 0x6b20, is taken when v0(=[a0]+1) == 0, and falls through when v0(=[a0]+1) != 0; its branch-likely delay slot `nop` at 0x6b34 runs only when taken and is annulled on fall-through.
  The return at 0x6b38 has v0 = [a0]+1.
  The return at 0x6bb0 has v0 = 0x0.

- `compare_and_dec_int_gt` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6bb8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6bb8-0x6c54 (156 bytes).
  It occupies 156 bytes.
  The `ll` at 0x6bb8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6bcc stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x6bc4 targets 0x6be0, is taken when v0(=[a0]-1) < a1 (signed), and falls through when v0(=[a0]-1) >= a1 (signed).
  The `beql` branch at 0x6bd0 targets 0x6bb8, is taken when v0(=[a0]-1) == 0, and falls through when v0(=[a0]-1) != 0; its branch-likely delay slot `nop` at 0x6bd4 runs only when taken and is annulled on fall-through.
  The return at 0x6bd8 has v0 = [a0]-1.
  The return at 0x6c4c has v0 = 0x0.

- `compare_and_dec_int_gt_hot2` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6c54 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6c54-0x6cf0 (156 bytes).
  It occupies 156 bytes.
  The `ll` at 0x6c54 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6c68 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `sw` at 0x6c70 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `bne` branch at 0x6c60 targets 0x6c7c, is taken when v0(=[a0]-1) < a1 (signed), and falls through when v0(=[a0]-1) >= a1 (signed).
  The `beql` branch at 0x6c6c targets 0x6c54, is taken when v0(=[a0]-1) == 0, and falls through when v0(=[a0]-1) != 0; its branch-likely delay slot `sw zero,0(a2)` at 0x6c70 runs only when taken and is annulled on fall-through.
  The return at 0x6c74 has v0 = [a0]-1.
  The return at 0x6ce8 has v0 = 0x0.

- `swap_int64` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6cf0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6cf0-0x6d0c (28 bytes).
  It occupies 28 bytes.
  The `lld` at 0x6cf0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6cf8 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6cfc targets 0x6cf0, is taken when t0(=a1) == 0, and falls through when t0(=a1) != 0; its branch-likely delay slot `nop` at 0x6d00 runs only when taken and is annulled on fall-through.
  The return at 0x6d04 has v0 = [a0]:8.

- `swap_long` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6cf0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6cf0-0x6d0c (28 bytes).
  It occupies 28 bytes.
  The `lld` at 0x6cf0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6cf8 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6cfc targets 0x6cf0, is taken when t0(=a1) == 0, and falls through when t0(=a1) != 0; its branch-likely delay slot `nop` at 0x6d00 runs only when taken and is annulled on fall-through.
  The return at 0x6d04 has v0 = [a0]:8.

- `swap_ptr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6cf0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6cf0-0x6d0c (28 bytes).
  It occupies 28 bytes.
  The `lld` at 0x6cf0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6cf8 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6cfc targets 0x6cf0, is taken when t0(=a1) == 0, and falls through when t0(=a1) != 0; its branch-likely delay slot `nop` at 0x6d00 runs only when taken and is annulled on fall-through.
  The return at 0x6d04 has v0 = [a0]:8.

- `compare_and_swap_int64` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6d0c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6d0c-0x6da4 (152 bytes).
  It occupies 152 bytes.
  The `lld` at 0x6d0c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6d18 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x6d10 targets 0x6d2c, is taken when t0(=[a0]:8) != a1, and falls through when t0(=[a0]:8) == a1.
  The `beql` branch at 0x6d1c targets 0x6d0c, is taken when v0(=a2) == 0, and falls through when v0(=a2) != 0; its branch-likely delay slot `nop` at 0x6d20 runs only when taken and is annulled on fall-through.
  The return at 0x6d24 has v0 = a2.
  The return at 0x6d9c has v0 = 0x0.

- `compare_and_swap_kt` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6d0c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6d0c-0x6da4 (152 bytes).
  It occupies 152 bytes.
  The `lld` at 0x6d0c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6d18 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x6d10 targets 0x6d2c, is taken when t0(=[a0]:8) != a1, and falls through when t0(=[a0]:8) == a1.
  The `beql` branch at 0x6d1c targets 0x6d0c, is taken when v0(=a2) == 0, and falls through when v0(=a2) != 0; its branch-likely delay slot `nop` at 0x6d20 runs only when taken and is annulled on fall-through.
  The return at 0x6d24 has v0 = a2.
  The return at 0x6d9c has v0 = 0x0.

- `compare_and_swap_long` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6d0c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6d0c-0x6da4 (152 bytes).
  It occupies 152 bytes.
  The `lld` at 0x6d0c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6d18 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x6d10 targets 0x6d2c, is taken when t0(=[a0]:8) != a1, and falls through when t0(=[a0]:8) == a1.
  The `beql` branch at 0x6d1c targets 0x6d0c, is taken when v0(=a2) == 0, and falls through when v0(=a2) != 0; its branch-likely delay slot `nop` at 0x6d20 runs only when taken and is annulled on fall-through.
  The return at 0x6d24 has v0 = a2.
  The return at 0x6d9c has v0 = 0x0.

- `compare_and_swap_ptr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6d0c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6d0c-0x6da4 (152 bytes).
  It occupies 152 bytes.
  The `lld` at 0x6d0c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `scd` at 0x6d18 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x6d10 targets 0x6d2c, is taken when t0(=[a0]:8) != a1, and falls through when t0(=[a0]:8) == a1.
  The `beql` branch at 0x6d1c targets 0x6d0c, is taken when v0(=a2) == 0, and falls through when v0(=a2) != 0; its branch-likely delay slot `nop` at 0x6d20 runs only when taken and is annulled on fall-through.
  The return at 0x6d24 has v0 = a2.
  The return at 0x6d9c has v0 = 0x0.

- `comparegt_and_swap_int` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6da4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6da4-0x6e40 (156 bytes).
  It occupies 156 bytes.
  The `ll` at 0x6da4 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6db4 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x6dac targets 0x6dc8, is taken when a1 >= t1(=[a0]) (signed), and falls through when a1 < t1(=[a0]) (signed).
  The `beql` branch at 0x6db8 targets 0x6da4, is taken when v0(=a2) == 0, and falls through when v0(=a2) != 0; its branch-likely delay slot `nop` at 0x6dbc runs only when taken and is annulled on fall-through.
  The return at 0x6dc0 has v0 = a2.
  The return at 0x6e38 has v0 = 0x0.

- `store_atomic` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6e40 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6e40-0x6e58 (24 bytes).
  It occupies 24 bytes.
  The `ll` at 0x6e40 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6e44 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beql` branch at 0x6e48 targets 0x6e40, is taken when a4(=[a0]) == 0, and falls through when a4(=[a0]) != 0; its branch-likely delay slot `nop` at 0x6e4c runs only when taken and is annulled on fall-through.
  The return at 0x6e50 has v0 = ?.

- `atomicIncPort` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6e58 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6e58-0x6e88 (48 bytes).
  It occupies 48 bytes.
  The `ll` at 0x6e58 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x6e70 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `beq` branch at 0x6e64 targets 0x6e70, is taken when a1 >= t1(=[a0]+1) (signed), and falls through when a1 < t1(=[a0]+1) (signed).
  The `beql` branch at 0x6e74 targets 0x6e58, is taken when t1(?) == 0, and falls through when t1(?) != 0; its branch-likely delay slot `nop` at 0x6e78 runs only when taken and is annulled on fall-through.
  The return at 0x6e80 has v0 = [a0].

- `copyin` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6e90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6e90-0x6f1c (140 bytes).
  It occupies 140 bytes.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0x6e90, `ld` at 0x6ef0, `ld` at 0x6f00.
  The `lbu` at 0x6ea0 loads 1 byte from [-0x3fe0]:8 +0x70.
  The `ld` at 0x6eac loads 8 bytes from [-0x3fe0]:8 +0x338.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x6efc, `sh` at 0x6f08.
  The `jal` at 0x6eb8 calls do_ucopy_copyin with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  Calls .text via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x6ec0).
  The `jal` at 0x6ef8 calls bcopy with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x6ea4 targets 0x6ec8, is taken when t1(=[[-0x3fe0]:8+112]:1) != at(=0x1), and falls through when t1(=[[-0x3fe0]:8+112]:1) == at(=0x1).
  The `beq` branch at 0x6eb0 targets 0x6ec8, is taken when t2(=[[-0x3fe0]:8+824]:8) == 0, and falls through when t2(=[[-0x3fe0]:8+824]:8) != 0.
  The `bltz` branch at 0x6ec8 targets 0x70e4, is taken when a2 < 0 (signed), and falls through when a2 >= 0 (signed).
  The `bltz` branch at 0x6ed0 targets 0x70e4, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `bne` branch at 0x6ee8 targets 0x70e4, is taken when t0(=0x10000000000) < v0(=(a0 + a2)) (unsigned), and falls through when t0(=0x10000000000) >= v0(=(a0 + a2)) (unsigned).
  The return at 0x6f14 has v0 = 0x0.

- `copyout` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6f1c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6f1c-0x6fa8 (140 bytes).
  It occupies 140 bytes.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0x6f1c, `ld` at 0x6f7c, `ld` at 0x6f8c.
  The `lbu` at 0x6f2c loads 1 byte from [-0x3fe0]:8 +0x70.
  The `ld` at 0x6f38 loads 8 bytes from [-0x3fe0]:8 +0x338.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x6f88, `sh` at 0x6f94.
  The `jal` at 0x6f44 calls do_ucopy_copyout with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  Calls .text via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x6f4c).
  The `jal` at 0x6f84 calls bcopy with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x6f30 targets 0x6f54, is taken when t1(=[[-0x3fe0]:8+112]:1) != at(=0x1), and falls through when t1(=[[-0x3fe0]:8+112]:1) == at(=0x1).
  The `beq` branch at 0x6f3c targets 0x6f54, is taken when t2(=[[-0x3fe0]:8+824]:8) == 0, and falls through when t2(=[[-0x3fe0]:8+824]:8) != 0.
  The `bltz` branch at 0x6f54 targets 0x70e4, is taken when a2 < 0 (signed), and falls through when a2 >= 0 (signed).
  The `bltz` branch at 0x6f5c targets 0x70e4, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `bne` branch at 0x6f74 targets 0x70e4, is taken when t0(=0x10000000000) < v0(=(a1 + a2)) (unsigned), and falls through when t0(=0x10000000000) >= v0(=(a1 + a2)) (unsigned).
  The return at 0x6fa0 has v0 = 0x0.

- `swcopyin` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x6fa8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x6fa8-0x7000 (88 bytes).
  It occupies 88 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0x6fd4, `ld` at 0x6fe4.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x6fe0, `sh` at 0x6fec.
  The `jal` at 0x6fdc calls swbcopy with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bltz` branch at 0x6fac targets 0x70e4, is taken when a2 < 0 (signed), and falls through when a2 >= 0 (signed).
  The `bltz` branch at 0x6fb4 targets 0x70e4, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `bne` branch at 0x6fcc targets 0x70e4, is taken when t0(=0x10000000000) < v0(=(a0 + a2)) (unsigned), and falls through when t0(=0x10000000000) >= v0(=(a0 + a2)) (unsigned).
  The return at 0x6ff8 has v0 = 0x0.

- `swcopyout` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x7000 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x7000-0x7058 (88 bytes).
  It occupies 88 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0x702c, `ld` at 0x703c.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x7038, `sh` at 0x7044.
  The `jal` at 0x7034 calls swbcopy with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bltz` branch at 0x7004 targets 0x70e4, is taken when a2 < 0 (signed), and falls through when a2 >= 0 (signed).
  The `bltz` branch at 0x700c targets 0x70e4, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `bne` branch at 0x7024 targets 0x70e4, is taken when t0(=0x10000000000) < v0(=(a1 + a2)) (unsigned), and falls through when t0(=0x10000000000) >= v0(=(a1 + a2)) (unsigned).
  The return at 0x7050 has v0 = 0x0.

- `uzero` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x7058 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x7058-0x70e4 (140 bytes).
  It occupies 140 bytes.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0x7058, `ld` at 0x70b8, `ld` at 0x70c8.
  The `lbu` at 0x7068 loads 1 byte from [-0x3fe0]:8 +0x70.
  The `ld` at 0x7074 loads 8 bytes from [-0x3fe0]:8 +0x338.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x70c4, `sh` at 0x70d0.
  The `jal` at 0x7080 calls do_ucopy_zero with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  Calls .text via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x7088).
  The `jal` at 0x70c0 calls bzero with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x706c targets 0x7090, is taken when t1(=[[-0x3fe0]:8+112]:1) != at(=0x1), and falls through when t1(=[[-0x3fe0]:8+112]:1) == at(=0x1).
  The `beq` branch at 0x7078 targets 0x7090, is taken when t2(=[[-0x3fe0]:8+824]:8) == 0, and falls through when t2(=[[-0x3fe0]:8+824]:8) != 0.
  The `bltz` branch at 0x7090 targets 0x70e4, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `bltz` branch at 0x7098 targets 0x70e4, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `bne` branch at 0x70b0 targets 0x70e4, is taken when t0(=0x10000000000) < v0(=(a0 + a1)) (unsigned), and falls through when t0(=0x10000000000) >= v0(=(a0 + a1)) (unsigned).
  The return at 0x70dc has v0 = 0x0.

- `cerror` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x70e4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x70e4-0x70f8 (20 bytes).
  It occupies 20 bytes.
  The return at 0x70f0 has v0 = -0x1.

- `memset` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x70f8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x70f8-0x720c (276 bytes).
  It occupies 276 bytes.
  The `sb` at 0x715c stores 1 byte to ?.
  The `sh` at 0x7178 stores 2 bytes to ?.
  The `sw` at 0x7194 stores 4 bytes to ?.
  7 such `sd` accesses store 8 bytes to ?, including `sd` at 0x71b0, `sd` at 0x71cc, `sd` at 0x71d8.
  The `beq` branch at 0x70f8 targets 0x7204, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x7120 targets 0x71dc, is taken when (a0 & 0x1f) == 0, and falls through when (a0 & 0x1f) != 0.
  The `beq` branch at 0x712c targets 0x71bc, is taken when (a0 & 0xf) == 0, and falls through when (a0 & 0xf) != 0.
  The `beq` branch at 0x7138 targets 0x71a0, is taken when (a0 & 0x7) == 0, and falls through when (a0 & 0x7) != 0.
  The `beq` branch at 0x7144 targets 0x7184, is taken when (a0 & 0x3) == 0, and falls through when (a0 & 0x3) != 0.
  The `beq` branch at 0x7150 targets 0x7168, is taken when (a0 & 0x1) == 0, and falls through when (a0 & 0x1) != 0.
  The `beq` branch at 0x7164 targets 0x7204, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x716c targets 0x7158, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x7180 targets 0x7204, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x7188 targets 0x7168, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x719c targets 0x7204, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x71a4 targets 0x7184, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x71b8 targets 0x7204, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x71c0 targets 0x71a0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x71d4 targets 0x7204, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x71e0 targets 0x71bc, is taken when a2(?) < 0x21 (unsigned), and falls through when a2(?) >= 0x21 (unsigned).
  The `bne` branch at 0x71fc targets 0x71dc, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The return at 0x7204 has v0 = a0.

- `blkclr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x720c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x720c-0x72cc (192 bytes).
  It occupies 192 bytes.
  The `sdl` at 0x7234 stores 8 bytes to a0 (arg0 at entry) +0x0.
  7 such `sd` accesses store 8 bytes to ?, including `sd` at 0x7258, `sd` at 0x725c, `sd` at 0x7260.
  The `sdr` at 0x72a8 stores 8 bytes to ?.
  The `sb` at 0x72b8 stores 1 byte to ?.
  Calls _pagezero via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x7220).
  The `bnel` branch at 0x7218 targets 0x7228, is taken when v0(?) != 0, and falls through when v0(?) == 0; its branch-likely delay slot `nop` at 0x721c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x722c targets 0x72ac, is taken when a1 < 0x8 (signed), and falls through when a1 >= 0x8 (signed).
  The `beq` branch at 0x724c targets 0x7270, is taken when (a1(?) & at(=-0x20)) == 0, and falls through when (a1(?) & at(=-0x20)) != 0.
  The `bne` branch at 0x7268 targets 0x7254, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The `beq` branch at 0x7274 targets 0x7288, is taken when (a1(?) & 0x10) == 0, and falls through when (a1(?) & 0x10) != 0.
  The `beq` branch at 0x7288 targets 0x7298, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x729c targets 0x72c4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `blez` branch at 0x72ac targets 0x72c4, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `bne` branch at 0x72bc targets 0x72b4, is taken when a0(?) != a3(=(a0 + a1)), and falls through when a0(?) == a3(=(a0 + a1)).
  The return at 0x72a4 has v0 = ?.
  The return at 0x72c4 has v0 = ?.

- `bzero` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x720c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x720c-0x72cc (192 bytes).
  It occupies 192 bytes.
  The `sdl` at 0x7234 stores 8 bytes to a0 (arg0 at entry) +0x0.
  7 such `sd` accesses store 8 bytes to ?, including `sd` at 0x7258, `sd` at 0x725c, `sd` at 0x7260.
  The `sdr` at 0x72a8 stores 8 bytes to ?.
  The `sb` at 0x72b8 stores 1 byte to ?.
  Calls _pagezero via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x7220).
  The `bnel` branch at 0x7218 targets 0x7228, is taken when v0(?) != 0, and falls through when v0(?) == 0; its branch-likely delay slot `nop` at 0x721c runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x722c targets 0x72ac, is taken when a1 < 0x8 (signed), and falls through when a1 >= 0x8 (signed).
  The `beq` branch at 0x724c targets 0x7270, is taken when (a1(?) & at(=-0x20)) == 0, and falls through when (a1(?) & at(=-0x20)) != 0.
  The `bne` branch at 0x7268 targets 0x7254, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The `beq` branch at 0x7274 targets 0x7288, is taken when (a1(?) & 0x10) == 0, and falls through when (a1(?) & 0x10) != 0.
  The `beq` branch at 0x7288 targets 0x7298, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x729c targets 0x72c4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `blez` branch at 0x72ac targets 0x72c4, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `bne` branch at 0x72bc targets 0x72b4, is taken when a0(?) != a3(=(a0 + a1)), and falls through when a0(?) == a3(=(a0 + a1)).
  The return at 0x72a4 has v0 = ?.
  The return at 0x72c4 has v0 = ?.

- `bzero_nopage` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x7228 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x7228-0x7258 (48 bytes).
  It occupies 48 bytes.
  The `sdl` at 0x7234 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `bne` branch at 0x722c targets 0x72ac, is taken when a1 < 0x8 (signed), and falls through when a1 >= 0x8 (signed).
  The `beq` branch at 0x724c targets 0x7270, is taken when (a1(?) & at(=-0x20)) == 0, and falls through when (a1(?) & at(=-0x20)) != 0.

- `bzero_stores` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x7258 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x7258-0x7264 (12 bytes).
  It occupies 12 bytes.
  The `sd` at 0x7258 stores 8 bytes to a0 (arg0 at entry) -0x20.
  The `sd` at 0x725c stores 8 bytes to a0 (arg0 at entry) -0x10.
  The `sd` at 0x7260 stores 8 bytes to a0 (arg0 at entry) -0x18.

- `bzero_pref` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x7264 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x7264-0x72cc (104 bytes).
  It occupies 104 bytes.
  The `sd` at 0x726c stores 8 bytes to a0 (arg0 at entry) -0x8.
  The `sd` at 0x727c stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `sd` at 0x7280 stores 8 bytes to a0 (arg0 at entry) +0x8.
  The `sd` at 0x7290 stores 8 bytes to ?.
  The `sdr` at 0x72a8 stores 8 bytes to ?.
  The `bne` branch at 0x7268 targets 0x7254, is taken when a0 != a3, and falls through when a0 == a3.
  The `beq` branch at 0x7274 targets 0x7288, is taken when (a1 & 0x10) == 0, and falls through when (a1 & 0x10) != 0.
  The `beq` branch at 0x7288 targets 0x7298, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x729c targets 0x72c4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The return at 0x72a4 has v0 = ?.
  The return at 0x72c4 has v0 = ?.
  The instructions from 0x72ac to 0x72c0 are not reached by any path from the entry, and their branches are not listed.

- `bzero_end` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x72cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x72cc-0x72d4 (8 bytes).
  It occupies 8 bytes.
  The return at 0x72cc has v0 = ?.

- `bzerror` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x72cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x72cc-0x72d4 (8 bytes).
  It occupies 8 bytes.
  The return at 0x72cc has v0 = ?.

- `bcmp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x72d4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x72d4-0x7498 (452 bytes).
  It occupies 452 bytes.
  The `lwl` at 0x7300 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwl` at 0x7308 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwr` at 0x730c loads 4 bytes from a0 (arg0 at entry) +0x3.
  The `lwr` at 0x7314 loads 4 bytes from a1 (arg1 at entry) +0x3.
  15 such `lw` accesses load 4 bytes from ?, including `lw` at 0x7330, `lw` at 0x7338, `lw` at 0x7348.
  3 such `lwl` accesses load 4 bytes from ?, including `lwl` at 0x73e4, `lwl` at 0x73ec, `lwl` at 0x7444.
  3 such `lwr` accesses load 4 bytes from ?, including `lwr` at 0x73e8, `lwr` at 0x73f0, `lwr` at 0x7454.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x7410, `lbu` at 0x7418, `lbu` at 0x7470.
  The `bne` branch at 0x72dc targets 0x7468, is taken when a2 < 0xb (signed), and falls through when a2 >= 0xb (signed).
  The `bne` branch at 0x72ec targets 0x73fc, is taken when (v0(?) & 0x3) != 0, and falls through when (v0(?) & 0x3) == 0.
  The `beq` branch at 0x72f8 targets 0x7320, is taken when (t8(?) & 0x3) == 0, and falls through when (t8(?) & 0x3) != 0.
  The `bne` branch at 0x731c targets 0x73f4, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `beq` branch at 0x7328 targets 0x7384, is taken when (a2(?) & at(=-0x10)) == 0, and falls through when (a2(?) & at(=-0x10)) != 0.
  The `bne` branch at 0x7340 targets 0x73f4, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x7354 targets 0x73f4, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x7364 targets 0x73f4, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x7374 targets 0x73f4, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x737c targets 0x7330, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x7388 targets 0x73b8, is taken when (a2(?) & 0x8) == 0, and falls through when (a2(?) & 0x8) != 0.
  The `bne` branch at 0x73a0 targets 0x73f4, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x73b0 targets 0x73f4, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `beq` branch at 0x73b8 targets 0x73d8, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x73d0 targets 0x73f4, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `beq` branch at 0x73d8 targets 0x7490, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x7404 targets 0x7430, is taken when (a3(?) & 0x3) == 0, and falls through when (a3(?) & 0x3) != 0.
  The `bne` branch at 0x7420 targets 0x73f4, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x7428 targets 0x7410, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The `beq` branch at 0x7438 targets 0x7468, is taken when (a2(?) & at(=-0x4)) == 0, and falls through when (a2(?) & at(=-0x4)) != 0.
  The `bne` branch at 0x7458 targets 0x73f4, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x7460 targets 0x7444, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The `blez` branch at 0x7468 targets 0x7490, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `bne` branch at 0x7480 targets 0x73f4, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x7488 targets 0x7470, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The return at 0x73f4 has v0 = ?.
  The return at 0x7490 has v0 = 0x0.

- `memcmp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x72d4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x72d4-0x7498 (452 bytes).
  It occupies 452 bytes.
  The `lwl` at 0x7300 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwl` at 0x7308 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `lwr` at 0x730c loads 4 bytes from a0 (arg0 at entry) +0x3.
  The `lwr` at 0x7314 loads 4 bytes from a1 (arg1 at entry) +0x3.
  15 such `lw` accesses load 4 bytes from ?, including `lw` at 0x7330, `lw` at 0x7338, `lw` at 0x7348.
  3 such `lwl` accesses load 4 bytes from ?, including `lwl` at 0x73e4, `lwl` at 0x73ec, `lwl` at 0x7444.
  3 such `lwr` accesses load 4 bytes from ?, including `lwr` at 0x73e8, `lwr` at 0x73f0, `lwr` at 0x7454.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x7410, `lbu` at 0x7418, `lbu` at 0x7470.
  The `bne` branch at 0x72dc targets 0x7468, is taken when a2 < 0xb (signed), and falls through when a2 >= 0xb (signed).
  The `bne` branch at 0x72ec targets 0x73fc, is taken when (v0(?) & 0x3) != 0, and falls through when (v0(?) & 0x3) == 0.
  The `beq` branch at 0x72f8 targets 0x7320, is taken when (t8(?) & 0x3) == 0, and falls through when (t8(?) & 0x3) != 0.
  The `bne` branch at 0x731c targets 0x73f4, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `beq` branch at 0x7328 targets 0x7384, is taken when (a2(?) & at(=-0x10)) == 0, and falls through when (a2(?) & at(=-0x10)) != 0.
  The `bne` branch at 0x7340 targets 0x73f4, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x7354 targets 0x73f4, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x7364 targets 0x73f4, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x7374 targets 0x73f4, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x737c targets 0x7330, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x7388 targets 0x73b8, is taken when (a2(?) & 0x8) == 0, and falls through when (a2(?) & 0x8) != 0.
  The `bne` branch at 0x73a0 targets 0x73f4, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x73b0 targets 0x73f4, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `beq` branch at 0x73b8 targets 0x73d8, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x73d0 targets 0x73f4, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `beq` branch at 0x73d8 targets 0x7490, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x7404 targets 0x7430, is taken when (a3(?) & 0x3) == 0, and falls through when (a3(?) & 0x3) != 0.
  The `bne` branch at 0x7420 targets 0x73f4, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x7428 targets 0x7410, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The `beq` branch at 0x7438 targets 0x7468, is taken when (a2(?) & at(=-0x4)) == 0, and falls through when (a2(?) & at(=-0x4)) != 0.
  The `bne` branch at 0x7458 targets 0x73f4, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x7460 targets 0x7444, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The `blez` branch at 0x7468 targets 0x7490, is taken when a2(?) <= 0 (signed), and falls through when a2(?) > 0 (signed).
  The `bne` branch at 0x7480 targets 0x73f4, is taken when t0(?) != t1(?), and falls through when t0(?) == t1(?).
  The `bne` branch at 0x7488 targets 0x7470, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The return at 0x73f4 has v0 = ?.
  The return at 0x7490 has v0 = 0x0.

- `addupc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x7498 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x7498-0x7590 (248 bytes).
  It occupies 248 bytes.
  The `ld` at 0x7498 loads 8 bytes from a1 (arg1 at entry) +0x10.
  The `lw` at 0x74a8 loads 4 bytes from a1 (arg1 at entry) +0x18.
  The `lw` at 0x74d8 loads 4 bytes from a1 (arg1 at entry) +0x8.
  The `ld` at 0x74e0 loads 8 bytes from a1 (arg1 at entry) +0x0.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0x7504, `ld` at 0x755c.
  3 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x750c, `sh` at 0x7564, `sh` at 0x757c.
  2 such `ll` accesses load 4 bytes from ?, including `ll` at 0x7524, `ll` at 0x7568.
  2 such `sc` accesses store 4 bytes to ?, including `sc` at 0x752c, `sc` at 0x7570.
  The `bltz` branch at 0x74a0 targets 0x7588, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `bne` branch at 0x74b0 targets 0x74c0, is taken when v0(=[a1+24]) != at(=0x2), and falls through when v0(=[a1+24]) == at(=0x2).
  The `beq` branch at 0x74b8 targets 0x74d8 and is always taken.
  The `bne` branch at 0x74dc targets 0x753c, is taken when a3 != 0, and falls through when a3 == 0.
  The `beq` branch at 0x74f0 targets 0x7588, is taken when v0(?) >= v1(=[a1+8]) (unsigned), and falls through when v0(?) < v1(=[a1+8]) (unsigned).
  The `bltz` branch at 0x74fc targets 0x7590, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `bne` branch at 0x7518 targets 0x7524, is taken when (v0(?) & 0x2) != 0, and falls through when (v0(?) & 0x2) == 0.
  The `beql` branch at 0x7530 targets 0x7524, is taken when v1(?) == 0, and falls through when v1(?) != 0; its branch-likely delay slot `nop` at 0x7534 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x7538 targets 0x757c and is always taken.
  The `beq` branch at 0x7548 targets 0x7588, is taken when v0(?) >= v1(?) (unsigned), and falls through when v0(?) < v1(?) (unsigned).
  The `bltz` branch at 0x7554 targets 0x7590, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `beql` branch at 0x7574 targets 0x7568, is taken when v1(?) == 0, and falls through when v1(?) != 0; its branch-likely delay slot `nop` at 0x7578 runs only when taken and is annulled on fall-through.
  The return at 0x7580 has v0 = 0x0.
  The return at 0x7588 has v0 = -0x1.

- `adderr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x7590 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x7590-0x759c (12 bytes).
  It occupies 12 bytes.
  The `sw` at 0x7598 stores 4 bytes to a1 (arg1 at entry) +0x18.
  The return at 0x7594 has v0 = 0x0.

- `fubyte` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x759c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x759c-0x75b8 (28 bytes).
  It occupies 28 bytes.
  The `ld` at 0x75a0 loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x75a8, `sh` at 0x75b4.
  The `lbu` at 0x75ac loads 1 byte from a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0x759c targets 0x7758, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The return at 0x75b0 has v0 = [a0]:1.

- `fuibyte` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x759c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x759c-0x75b8 (28 bytes).
  It occupies 28 bytes.
  The `ld` at 0x75a0 loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x75a8, `sh` at 0x75b4.
  The `lbu` at 0x75ac loads 1 byte from a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0x759c targets 0x7758, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The return at 0x75b0 has v0 = [a0]:1.

- `upath` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x75b8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x75b8-0x75fc (68 bytes).
  It occupies 68 bytes.
  The `ld` at 0x75bc loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x75c4, `sh` at 0x75f8.
  The `lbu` at 0x75cc loads 1 byte from ?.
  The `sb` at 0x75d8 stores 1 byte to ?.
  The `bltz` branch at 0x75b8 targets 0x7758, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beq` branch at 0x75d4 targets 0x75f0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x75e0 targets 0x75cc, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x75e8 targets 0x75f4 and is always taken.
  The return at 0x75f4 has v0 = one of -0x2, ?.

- `subyte` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x75fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x75fc-0x761c (32 bytes).
  It occupies 32 bytes.
  The `ld` at 0x7600 loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x7608, `sh` at 0x7610.
  The `sb` at 0x760c stores 1 byte to a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0x75fc targets 0x7758, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The return at 0x7614 has v0 = 0x0.

- `suibyte` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x75fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x75fc-0x761c (32 bytes).
  It occupies 32 bytes.
  The `ld` at 0x7600 loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x7608, `sh` at 0x7610.
  The `sb` at 0x760c stores 1 byte to a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0x75fc targets 0x7758, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The return at 0x7614 has v0 = 0x0.

- `fuiword` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x761c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x761c-0x763c (32 bytes).
  It occupies 32 bytes.
  The `ld` at 0x7620 loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x7628, `sh` at 0x7630.
  The `lw` at 0x762c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0x761c targets 0x7758, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The return at 0x7634 has v0 = [a0].

- `fuword` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x761c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x761c-0x763c (32 bytes).
  It occupies 32 bytes.
  The `ld` at 0x7620 loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x7628, `sh` at 0x7630.
  The `lw` at 0x762c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0x761c targets 0x7758, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The return at 0x7634 has v0 = [a0].

- `sfu32v` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x763c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x763c-0x7670 (52 bytes).
  It occupies 52 bytes.
  The `ld` at 0x7640 loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x7648, `sh` at 0x7664.
  The `lw` at 0x764c loads 4 bytes from ?.
  The `sw` at 0x7654 stores 4 bytes to ?.
  The `bltz` branch at 0x763c targets 0x76b0, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `bne` branch at 0x765c targets 0x764c, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The return at 0x7668 has v0 = 0x1.

- `sfu32` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x7670 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x7670-0x7690 (32 bytes).
  It occupies 32 bytes.
  The `ld` at 0x7674 loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x767c, `sh` at 0x7684.
  The `lw` at 0x7680 loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `bltz` branch at 0x7670 targets 0x76b0, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The return at 0x7688 has v0 = [a1].

- `spu32` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x7690 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x7690-0x76b0 (32 bytes).
  It occupies 32 bytes.
  The `ld` at 0x7694 loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x769c, `sh` at 0x76a4.
  The `sw` at 0x76a0 stores 4 bytes to a1 (arg1 at entry) +0x0.
  The `bltz` branch at 0x7690 targets 0x76b0, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The return at 0x76a8 has v0 = 0x1.

- `suerror` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x76b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x76b0-0x76c0 (16 bytes).
  It occupies 16 bytes.
  The `sw` at 0x76bc stores 4 bytes to a0 (arg0 at entry) +0x0.
  The return at 0x76b8 has v0 = 0x0.

- `fulong` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x76c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x76c0-0x76e0 (32 bytes).
  It occupies 32 bytes.
  The `ld` at 0x76c4 loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x76cc, `sh` at 0x76d4.
  The `ld` at 0x76d0 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0x76c0 targets 0x7758, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The return at 0x76d8 has v0 = [a0]:8.

- `suiword` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x76e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x76e0-0x7700 (32 bytes).
  It occupies 32 bytes.
  The `ld` at 0x76e4 loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x76ec, `sh` at 0x76f4.
  The `sw` at 0x76f0 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0x76e0 targets 0x7758, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The return at 0x76f8 has v0 = 0x0.

- `suword` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x76e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x76e0-0x7700 (32 bytes).
  It occupies 32 bytes.
  The `ld` at 0x76e4 loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x76ec, `sh` at 0x76f4.
  The `sw` at 0x76f0 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0x76e0 targets 0x7758, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The return at 0x76f8 has v0 = 0x0.

- `suhalf` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x7700 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x7700-0x7720 (32 bytes).
  It occupies 32 bytes.
  The `ld` at 0x7704 loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x770c, `sh` at 0x7714.
  The `sh` at 0x7710 stores 2 bytes to a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0x7700 targets 0x7758, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The return at 0x7718 has v0 = 0x0.

- `sulong` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x7720 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x7720-0x7740 (32 bytes).
  It occupies 32 bytes.
  The `ld` at 0x7724 loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x772c, `sh` at 0x7734.
  The `sd` at 0x7730 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0x7720 targets 0x7758, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The return at 0x7738 has v0 = 0x0.

- `fkiword` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x7740 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x7740-0x7758 (24 bytes).
  It occupies 24 bytes.
  2 such `sw` accesses store 4 bytes to abs 0xffffffffffffc404, including `sw` at 0x7744, `sw` at 0x774c.
  The `lw` at 0x7748 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The return at 0x7750 has v0 = [a0].

- `uerror` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x7758 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x7758-0x7760 (8 bytes).
  It occupies 8 bytes.
  The return at 0x7758 has v0 = -0x1.

- `strlen` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x7760 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x7760-0x7780 (32 bytes).
  It occupies 32 bytes.
  The `lb` at 0x7764 loads 1 byte from ?.
  The `bne` branch at 0x776c targets 0x7764, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The return at 0x7778 has v0 = ?.

- `uload_word` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x7780 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x7780-0x77a4 (36 bytes).
  It occupies 36 bytes.
  The `ld` at 0x7780 loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x7788, `sh` at 0x7794.
  The `lwl` at 0x778c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwr` at 0x7790 loads 4 bytes from a0 (arg0 at entry) +0x3.
  The `sd` at 0x7798 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The return at 0x779c has v0 = 0x0.

- `uload_half` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x77a4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x77a4-0x77d0 (44 bytes).
  It occupies 44 bytes.
  The `ld` at 0x77a4 loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x77ac, `sh` at 0x77c0.
  The `lb` at 0x77b0 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lbu` at 0x77b4 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `sd` at 0x77c4 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The return at 0x77c8 has v0 = 0x0.

- `uload_uhalf` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x77d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x77d0-0x77fc (44 bytes).
  It occupies 44 bytes.
  The `ld` at 0x77d0 loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x77d8, `sh` at 0x77ec.
  The `lbu` at 0x77dc loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lbu` at 0x77e0 loads 1 byte from a0 (arg0 at entry) +0x1.
  The `sd` at 0x77f0 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The return at 0x77f4 has v0 = 0x0.

- `uload_uword` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x77fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x77fc-0x7828 (44 bytes).
  It occupies 44 bytes.
  The `ld` at 0x77fc loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x7804, `sh` at 0x7818.
  The `lwl` at 0x7808 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `lwr` at 0x780c loads 4 bytes from a0 (arg0 at entry) +0x3.
  The `sd` at 0x781c stores 8 bytes to a1 (arg1 at entry) +0x0.
  The return at 0x7820 has v0 = 0x0.

- `uload_double` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x7828 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x7828-0x784c (36 bytes).
  It occupies 36 bytes.
  The `ld` at 0x7828 loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x7830, `sh` at 0x783c.
  The `ldl` at 0x7834 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `ldr` at 0x7838 loads 8 bytes from a0 (arg0 at entry) +0x7.
  The `sd` at 0x7840 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The return at 0x7844 has v0 = 0x0.

- `ustore_double` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x784c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x784c-0x786c (32 bytes).
  It occupies 32 bytes.
  The `ld` at 0x784c loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x7854, `sh` at 0x7860.
  The `sdl` at 0x7858 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `sdr` at 0x785c stores 8 bytes to a0 (arg0 at entry) +0x7.
  The return at 0x7864 has v0 = 0x0.

- `ustore_word` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x786c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x786c-0x788c (32 bytes).
  It occupies 32 bytes.
  The `ld` at 0x786c loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x7874, `sh` at 0x7880.
  The `swl` at 0x7878 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `swr` at 0x787c stores 4 bytes to a0 (arg0 at entry) +0x3.
  The return at 0x7884 has v0 = 0x0.

- `ustore_half` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x788c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x788c-0x78b0 (36 bytes).
  It occupies 36 bytes.
  The `ld` at 0x788c loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x7894, `sh` at 0x78a4.
  The `sb` at 0x7898 stores 1 byte to a0 (arg0 at entry) +0x1.
  The `sb` at 0x78a0 stores 1 byte to a0 (arg0 at entry) +0x0.
  The return at 0x78a8 has v0 = 0x0.

- `fixade_error` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x78b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x78b0-0x78b8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x78b0 has v0 = gp.

- `memcpy` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x78b8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x78b8-0x7d80 (1224 bytes).
  It occupies 1224 bytes.
  The `ldl` at 0x7928 loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `sdl` at 0x7938 stores 8 bytes to a0 (arg0 at entry) +0x0.
  16 such `ld` accesses load 8 bytes from ?, including `ld` at 0x7954, `ld` at 0x7958, `ld` at 0x7960.
  16 such `sd` accesses store 8 bytes to ?, including `sd` at 0x7978, `sd` at 0x797c, `sd` at 0x7980.
  The `lwl` at 0x7a1c loads 4 bytes from a1 (arg1 at entry) +0x0.
  The `swl` at 0x7a2c stores 4 bytes to a0 (arg0 at entry) +0x0.
  28 such `lw` accesses load 4 bytes from ?, including `lw` at 0x7a48, `lw` at 0x7a50, `lw` at 0x7a58.
  35 such `sw` accesses store 4 bytes to ?, including `sw` at 0x7a70, `sw` at 0x7a74, `sw` at 0x7a78.
  8 such `lwr` accesses load 4 bytes from ?, including `lwr` at 0x7b14, `lwr` at 0x7b6c, `lwr` at 0x7b78.
  The `swr` at 0x7b24 stores 4 bytes to ?.
  3 such `lb` accesses load 1 byte from ?, including `lb` at 0x7b3c, `lb` at 0x7bf4, `lb` at 0x7c44.
  3 such `sb` accesses store 1 byte to ?, including `sb` at 0x7b4c, `sb` at 0x7c04, `sb` at 0x7c54.
  7 such `lwl` accesses load 4 bytes from ?, including `lwl` at 0x7b64, `lwl` at 0x7b74, `lwl` at 0x7b80.
  2 such `lb` accesses load 1 byte from (a1 + a2) -0x1, including `lb` at 0x7c78, `lb` at 0x7ca8.
  2 such `sb` accesses store 1 byte to (a0 + a2) -0x1, including `sb` at 0x7c8c, `sb` at 0x7cbc.
  The `lh` at 0x7c90 loads 2 bytes from (a1 + a2) -0x2.
  The `sh` at 0x7ca4 stores 2 bytes to (a0 + a2) -0x2.
  The `lh` at 0x7cb0 loads 2 bytes from (a1 + a2) -0x3.
  The `sh` at 0x7cc0 stores 2 bytes to (a0 + a2) -0x3.
  Calls _pagecopy via direct with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x78e4).
  The `bnel` branch at 0x78dc targets 0x78ec, is taken when v0(?) != 0, and falls through when v0(?) == 0; its branch-likely delay slot `nop` at 0x78e0 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x78f4 targets 0x7900, is taken when a0(=a1) >= a1(=a0) (signed), and falls through when a0(=a1) < a1(=a0) (signed).
  The `bne` branch at 0x78fc targets 0x7c10, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x7904 targets 0x7bec, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x7918 targets 0x7a00, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x7920 targets 0x7940, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x7948 targets 0x7a34, is taken when (a2(?) & at(=-0x40)) == 0, and falls through when (a2(?) & at(=-0x40)) != 0.
  The `beq` branch at 0x79a0 targets 0x79f8, is taken when a3(?) == a1(?), and falls through when a3(?) != a1(?).
  The `bne` branch at 0x79f0 targets 0x7954, is taken when a3(?) != a1(?), and falls through when a3(?) == a1(?).
  The `beq` branch at 0x79f8 targets 0x7a34 and is always taken.
  The `bne` branch at 0x7a0c targets 0x7b28, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x7a14 targets 0x7a34, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x7a3c targets 0x7a94, is taken when (a2(?) & at(=-0x20)) == 0, and falls through when (a2(?) & at(=-0x20)) != 0.
  The `bne` branch at 0x7a8c targets 0x7a48, is taken when a3(?) != a1(?), and falls through when a3(?) == a1(?).
  The `beq` branch at 0x7a98 targets 0x7ac8, is taken when (a2(?) & 0x10) == 0, and falls through when (a2(?) & 0x10) != 0.
  The `beq` branch at 0x7acc targets 0x7aec, is taken when (a2(?) & 0x8) == 0, and falls through when (a2(?) & 0x8) != 0.
  The `beq` branch at 0x7af0 targets 0x7b08, is taken when (a2(?) & 0x4) == 0, and falls through when (a2(?) & 0x4) != 0.
  The `beq` branch at 0x7b0c targets 0x7c08, is taken when (a2(?) & 0x3) == 0, and falls through when (a2(?) & 0x3) != 0.
  The `beq` branch at 0x7b28 targets 0x7b50, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x7b48 targets 0x7b3c, is taken when a1(?) != a3(?), and falls through when a1(?) == a3(?).
  The `beq` branch at 0x7b58 targets 0x7ba0, is taken when (a2(?) & at(=-0x10)) == 0, and falls through when (a2(?) & at(=-0x10)) != 0.
  The `bne` branch at 0x7b98 targets 0x7b64, is taken when a3(?) != a1(?), and falls through when a3(?) == a1(?).
  The `beq` branch at 0x7ba4 targets 0x7bcc, is taken when (a2(?) & 0x8) == 0, and falls through when (a2(?) & 0x8) != 0.
  The `beq` branch at 0x7bd0 targets 0x7bec, is taken when (a2(?) & 0x4) == 0, and falls through when (a2(?) & 0x4) != 0.
  The `beq` branch at 0x7bec targets 0x7c08, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x7c00 targets 0x7bf4, is taken when a0(?) != a3(?), and falls through when a0(?) == a3(?).
  The `bne` branch at 0x7c18 targets 0x7c30, is taken when a2 < 0xc (signed), and falls through when a2 >= 0xc (signed).
  The `beq` branch at 0x7c28 targets 0x7c60, is taken when v0(?) == v1(?), and falls through when v0(?) != v1(?).
  The `beq` branch at 0x7c30 targets 0x7c08, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x7c50 targets 0x7c44, is taken when a0(?) != v1(?), and falls through when a0(?) == v1(?).
  The `beq` branch at 0x7c60 targets 0x7cc4, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x7c68 targets 0x7ca8, is taken when v0(?) == at(=0x3), and falls through when v0(?) != at(=0x3).
  The `beq` branch at 0x7c70 targets 0x7c90, is taken when v0(?) == at(=0x2), and falls through when v0(?) != at(=0x2).
  The `beq` branch at 0x7c88 targets 0x7cc4 and is always taken.
  The `beq` branch at 0x7ca0 targets 0x7cc4 and is always taken.
  The `bne` branch at 0x7cc8 targets 0x7d20, is taken when a2(?) < 0x20 (signed), and falls through when a2(?) >= 0x20 (signed).
  The `beq` branch at 0x7d18 targets 0x7cc4 and is always taken.
  The `bne` branch at 0x7d24 targets 0x7d5c, is taken when a2(?) < 0x10 (signed), and falls through when a2(?) >= 0x10 (signed).
  The `beq` branch at 0x7d54 targets 0x7d20 and is always taken.
  The `bne` branch at 0x7d60 targets 0x7c30, is taken when a2(?) < 0x4 (signed), and falls through when a2(?) >= 0x4 (signed).
  The `beq` branch at 0x7d78 targets 0x7d5c and is always taken.
  The return at 0x7b20 has v0 = a0.
  The return at 0x7c08 has v0 = a0.
  The return at 0x7c58 has v0 = a0.

- `memmove` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x78b8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x78b8-0x78c4 (12 bytes).
  It occupies 12 bytes.

- `bcopy` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x78c4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x78c4-0x78ec (40 bytes).
  It occupies 40 bytes.
  Calls _pagecopy via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x78e4).
  The `bnel` branch at 0x78dc targets 0x78ec, is taken when v0(?) != 0, and falls through when v0(?) == 0; its branch-likely delay slot `nop` at 0x78e0 runs only when taken and is annulled on fall-through.

- `ovbcopy` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x78c4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x78c4-0x78ec (40 bytes).
  It occupies 40 bytes.
  Calls _pagecopy via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x78e4).
  The `bnel` branch at 0x78dc targets 0x78ec, is taken when v0(?) != 0, and falls through when v0(?) == 0; its branch-likely delay slot `nop` at 0x78e0 runs only when taken and is annulled on fall-through.

- `bcopy_nopage` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x78ec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x78ec-0x795c (112 bytes).
  It occupies 112 bytes.
  The `ldl` at 0x7928 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sdl` at 0x7938 stores 8 bytes to a1 (arg1 at entry) +0x0.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x7954, `ld` at 0x7958.
  The `beq` branch at 0x78f4 targets 0x7900, is taken when a0 >= a1 (signed), and falls through when a0 < a1 (signed).
  The `bne` branch at 0x78fc targets 0x7c10, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x7904 targets 0x7bec, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x7918 targets 0x7a00, is taken when v0(?) != v1(?), and falls through when v0(?) == v1(?).
  The `beq` branch at 0x7920 targets 0x7940, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x7948 targets 0x7a34, is taken when (a2(?) & at(=-0x40)) == 0, and falls through when (a2(?) & at(=-0x40)) != 0.

- `bcopy_pref1` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x795c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x795c-0x7978 (28 bytes).
  It occupies 28 bytes.
  The `ld` at 0x7960 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x7964 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x7968 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x796c loads 8 bytes from a0 (arg0 at entry) +0x30.
  The `ld` at 0x7970 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x7974 loads 8 bytes from a0 (arg0 at entry) +0x38.

- `bcopy_stores` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x7978 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x7978-0x79b0 (56 bytes).
  It occupies 56 bytes.
  The `sd` at 0x7978 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `sd` at 0x797c stores 8 bytes to a1 (arg1 at entry) +0x10.
  The `sd` at 0x7980 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `sd` at 0x7984 stores 8 bytes to a1 (arg1 at entry) +0x18.
  The `sd` at 0x7988 stores 8 bytes to a1 (arg1 at entry) +0x20.
  The `sd` at 0x798c stores 8 bytes to a1 (arg1 at entry) +0x30.
  The `sd` at 0x7990 stores 8 bytes to a1 (arg1 at entry) +0x28.
  The `sd` at 0x7994 stores 8 bytes to a1 (arg1 at entry) +0x38.
  The `ld` at 0x79a8 loads 8 bytes from a0 (arg0 at entry) +0x40.
  The `ld` at 0x79ac loads 8 bytes from a0 (arg0 at entry) +0x50.
  The `beq` branch at 0x79a0 targets 0x79f8, is taken when a3 == a1(=a1+64), and falls through when a3 != a1(=a1+64).

- `bcopy_pref2` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x79b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x79b0-0x7d80 (976 bytes).
  It occupies 976 bytes.
  The `ld` at 0x79b4 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `ld` at 0x79bc loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x79c4 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x79c8 loads 8 bytes from a0 (arg0 at entry) +0x30.
  The `ld` at 0x79cc loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x79d0 loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `sd` at 0x79d4 stores 8 bytes to a1 (arg1 at entry) +0x10.
  The `sd` at 0x79d8 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `sd` at 0x79dc stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `sd` at 0x79e0 stores 8 bytes to a1 (arg1 at entry) +0x18.
  The `sd` at 0x79e4 stores 8 bytes to a1 (arg1 at entry) +0x20.
  The `sd` at 0x79e8 stores 8 bytes to a1 (arg1 at entry) +0x30.
  The `sd` at 0x79ec stores 8 bytes to a1 (arg1 at entry) +0x28.
  The `sd` at 0x79f4 stores 8 bytes to a1 (arg1 at entry) +0x38.
  15 such `lw` accesses load 4 bytes from ?, including `lw` at 0x7a48, `lw` at 0x7a50, `lw` at 0x7a58.
  15 such `sw` accesses store 4 bytes to ?, including `sw` at 0x7a70, `sw` at 0x7a74, `sw` at 0x7a78.
  The `lwr` at 0x7b14 loads 4 bytes from ?.
  The `swr` at 0x7b24 stores 4 bytes to ?.
  The `bne` branch at 0x79f0 targets 0x7954, is taken when a3 != a1(=a1+64), and falls through when a3 == a1(=a1+64).
  The `beq` branch at 0x79f8 targets 0x7a34 and is always taken.
  The `beq` branch at 0x7a3c targets 0x7a94, is taken when (a2(?) & at(=-0x20)) == 0, and falls through when (a2(?) & at(=-0x20)) != 0.
  The `bne` branch at 0x7a8c targets 0x7a48, is taken when a3(?) != a1(?), and falls through when a3(?) == a1(?).
  The `beq` branch at 0x7a98 targets 0x7ac8, is taken when (a2(?) & 0x10) == 0, and falls through when (a2(?) & 0x10) != 0.
  The `beq` branch at 0x7acc targets 0x7aec, is taken when (a2(?) & 0x8) == 0, and falls through when (a2(?) & 0x8) != 0.
  The `beq` branch at 0x7af0 targets 0x7b08, is taken when (a2(?) & 0x4) == 0, and falls through when (a2(?) & 0x4) != 0.
  The `beq` branch at 0x7b0c targets 0x7c08, is taken when (a2(?) & 0x3) == 0, and falls through when (a2(?) & 0x3) != 0.
  The return at 0x7b20 has v0 = t8.
  The return at 0x7c08 has v0 = t8.
  The instructions from 0x7a00 to 0x7a30 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x7b28 to 0x7c04 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x7c10 to 0x7d7c are not reached by any path from the entry, and their branches are not listed.

- `bcopy_end` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x7d80 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x7d80-0x7db8 (56 bytes).
  It occupies 56 bytes.
  2 such `lb` accesses load 1 byte from ?, including `lb` at 0x7d90, `lb` at 0x7d98.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x7da4, `sb` at 0x7dac.
  The `beq` branch at 0x7d80 targets 0x7db0, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x7d88 targets 0x7db0, is taken when a0 == a1, and falls through when a0 != a1.
  The `bgtz` branch at 0x7da8 targets 0x7d90, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The return at 0x7db0 has v0 = ?.

- `swbcopy` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x7d80 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x7d80-0x7db8 (56 bytes).
  It occupies 56 bytes.
  2 such `lb` accesses load 1 byte from ?, including `lb` at 0x7d90, `lb` at 0x7d98.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x7da4, `sb` at 0x7dac.
  The `beq` branch at 0x7d80 targets 0x7db0, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x7d88 targets 0x7db0, is taken when a0 == a1, and falls through when a0 != a1.
  The `bgtz` branch at 0x7da8 targets 0x7d90, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The return at 0x7db0 has v0 = ?.

- `rtlock_ownerstamp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x7db8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x7db8-0x7de8 (48 bytes).
  It occupies 48 bytes.
  The `ld` at 0x7dbc loads 8 bytes from abs 0xffffffffffffc020.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x7dc4, `sh` at 0x7ddc.
  The `ll` at 0x7dc8 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sc` at 0x7dd0 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `bltz` branch at 0x7db8 targets 0x7758, is taken when a0 < 0 (signed), and falls through when a0 >= 0 (signed).
  The `beql` branch at 0x7dd4 targets 0x7dc8, is taken when t1(=a1) == 0, and falls through when t1(=a1) != 0; its branch-likely delay slot `nop` at 0x7dd8 runs only when taken and is annulled on fall-through.
  The return at 0x7de0 has v0 = 0x0.

- `dumpcopy` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x7de8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x7de8-0x7e38 (80 bytes).
  It occupies 80 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0x7df0, `ld` at 0x7e10.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0x7e00, `sh` at 0x7e20.
  2 such `sw` accesses store 4 bytes to abs 0xffffffffffffc404, including `sw` at 0x7e04, `sw` at 0x7e24.
  The `jal` at 0x7e08 calls bcopy with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x7df4 targets 0x7e04, is taken when t0(=[-0x3fe0]:8) == 0, and falls through when t0(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0x7dfc targets 0x7e08 and is always taken.
  The `beq` branch at 0x7e14 targets 0x7e24, is taken when t0(=[-0x3fe0]:8) == 0, and falls through when t0(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0x7e1c targets 0x7e28 and is always taken.
  The return at 0x7e30 has v0 = 0x0.

- `delay_calibrate` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x7e38 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x7e38-0x7e68 (48 bytes).
  It occupies 48 bytes.
  The `sw` at 0x7e64 stores 4 bytes to abs 0xffffffffffffc4b8.
  The `jal` at 0x7e40 calls _ticksper1024inst with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x7e60 has v0 = ret(_ticksper1024inst).

- `us_delaybus` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x7e68 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x7e68-0x7e94 (44 bytes).
  It occupies 44 bytes.
  The `jal` at 0x7e74 calls flushbus with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x7e7c calls us_delay with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0x7e8c has v0 = ret(us_delay).

- `find_pclk_freq` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x7e94 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x7e94-0x7fb4 (288 bytes).
  It occupies 288 bytes.
  11 such `ld` accesses load 8 bytes from abs 0xffffffffaff20000, including `ld` at 0x7ebc, `ld` at 0x7ec0, `ld` at 0x7ecc.
  The `jal` at 0x7eb0 calls splprof with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x7ef0 calls _get_count with a0=?, a1=?, a2=?, a3=[0xffffffffaff20000]:8.
  The `jal` at 0x7f60 calls _get_count with a0=?, a1=?, a2=?, a3=[0xffffffffaff20000]:8+12500.
  The `jal` at 0x7f6c calls splx with a0=ret(splprof), a1=?, a2=?, a3=?.
  The `beq` branch at 0x7e9c targets 0x7eac, is taken when v0(=[sym(pclk_freq)]) == 0, and falls through when v0(=[sym(pclk_freq)]) != 0.
  The `bne` branch at 0x7ec4 targets 0x7ef0, is taken when s1(=[0xffffffffaff20000]:8) != a3(=[0xffffffffaff20000]:8), and falls through when s1(=[0xffffffffaff20000]:8) == a3(=[0xffffffffaff20000]:8).
  The `bne` branch at 0x7ed0 targets 0x7ef0, is taken when s1(=[0xffffffffaff20000]:8) != a3(=[0xffffffffaff20000]:8), and falls through when s1(=[0xffffffffaff20000]:8) == a3(=[0xffffffffaff20000]:8).
  The `bne` branch at 0x7edc targets 0x7ef0, is taken when s1(=[0xffffffffaff20000]:8) != a3(=[0xffffffffaff20000]:8), and falls through when s1(=[0xffffffffaff20000]:8) == a3(=[0xffffffffaff20000]:8).
  The `beq` branch at 0x7ee8 targets 0x7ecc, is taken when s1(=[0xffffffffaff20000]:8) == a3(=[0xffffffffaff20000]:8), and falls through when s1(=[0xffffffffaff20000]:8) != a3(=[0xffffffffaff20000]:8).
  The `beq` branch at 0x7f04 targets 0x7f5c, is taken when at(=[0xffffffffaff20000]:8) >= a3(=[0xffffffffaff20000]:8+12500) (unsigned), and falls through when at(=[0xffffffffaff20000]:8) < a3(=[0xffffffffaff20000]:8+12500) (unsigned).
  The `beq` branch at 0x7f14 targets 0x7f5c, is taken when v0(=[0xffffffffaff20000]:8) >= a3(=[0xffffffffaff20000]:8+12500) (unsigned), and falls through when v0(=[0xffffffffaff20000]:8) < a3(=[0xffffffffaff20000]:8+12500) (unsigned).
  The `beq` branch at 0x7f24 targets 0x7f5c, is taken when v1(=[0xffffffffaff20000]:8) >= a3(=[0xffffffffaff20000]:8+12500) (unsigned), and falls through when v1(=[0xffffffffaff20000]:8) < a3(=[0xffffffffaff20000]:8+12500) (unsigned).
  The `beq` branch at 0x7f34 targets 0x7f5c, is taken when a0(=[0xffffffffaff20000]:8) >= a3(=[0xffffffffaff20000]:8+12500) (unsigned), and falls through when a0(=[0xffffffffaff20000]:8) < a3(=[0xffffffffaff20000]:8+12500) (unsigned).
  The `beq` branch at 0x7f44 targets 0x7f5c, is taken when a1(=[0xffffffffaff20000]:8) >= a3(=[0xffffffffaff20000]:8+12500) (unsigned), and falls through when a1(=[0xffffffffaff20000]:8) < a3(=[0xffffffffaff20000]:8+12500) (unsigned).
  The `bne` branch at 0x7f54 targets 0x7f0c, is taken when a2(=[0xffffffffaff20000]:8) < a3(=[0xffffffffaff20000]:8+12500) (unsigned), and falls through when a2(=[0xffffffffaff20000]:8) >= a3(=[0xffffffffaff20000]:8+12500) (unsigned).
  The `beq` branch at 0x7fac targets 0x7ea4 and is always taken.
  The return at 0x7ea4 has v0 = one of [sym(pclk_freq)], ?.

- `findcpufreq_hz` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x7fb4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x7fb4-0x8058 (164 bytes).
  It occupies 164 bytes.
  The `lw` at 0x8010 loads 4 bytes from ?.
  The `lw` at 0x803c loads 4 bytes from table(sym(.data)+664) +0x0.
  The `lw` at 0x8054 loads 4 bytes from sym(.data) +0x298.
  The `jal` at 0x7fbc calls find_pclk_freq [0x7e94] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x7fd8 targets 0x8048 and is always taken.
  The `beq` branch at 0x7fe0 targets 0x8028, is taken when a3(?) == a7(=-0x1), and falls through when a3(?) != a7(=-0x1).
  The `beq` branch at 0x7fec targets 0x7ffc, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x8008 targets 0x8034, is taken when a2(?) >= 0x1e (unsigned), and falls through when a2(?) < 0x1e (unsigned).
  The `bne` branch at 0x8018 targets 0x7fe0, is taken when a5(?) < v0(=ret(find_pclk_freq)) (unsigned), and falls through when a5(?) >= v0(=ret(find_pclk_freq)) (unsigned).
  The `bne` branch at 0x8020 targets 0x7fec, is taken when a3(?) != a7(=-0x1), and falls through when a3(?) == a7(=-0x1).
  The `beq` branch at 0x802c targets 0x7ffc and is always taken.
  The `beq` branch at 0x8050 targets 0x8014 and is always taken.
  The return at 0x8040 has v0 = entry(sym(.data)+664).

- `cpu_mhz_rating` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x8058 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x8058-0x8088 (48 bytes).
  It occupies 48 bytes.
  The `jal` at 0x8060 calls findcpufreq_hz with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x8080 has v0 = ?.

- `findcpufreq` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x8088 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x8088-0x80bc (52 bytes).
  It occupies 52 bytes.
  The `jal` at 0x8090 calls findcpufreq_hz with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x80b4 has v0 = ?.

- `heartclock_intr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x80bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x80bc-0x80d0 (20 bytes).
  It occupies 20 bytes.
  The `sd` at 0x80cc stores 8 bytes to abs 0xffffffffaff10028.
  The return at 0x80c8 has v0 = 0xffffffffaff10000.

- `fasthzerr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x80d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x80d0-0x811c (76 bytes).
  It occupies 76 bytes.
  The `jal` at 0x80f0 calls cmn_err with a0=0x4, a1=sym(.rodata)+1640, a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jal` at 0x8104 calls cmn_err with a0=0x4, a1=sym(.rodata)+1640, a2=a2 at entry (arg2), a3=?.
  The return at 0x8114 has v0 = ret(cmn_err).

- `startkgclock` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x811c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x811c-0x82b4 (408 bytes).
  It occupies 408 bytes.
  4 such `lw` accesses load 4 bytes from abs 0xffffffffffffc6f4, including `lw` at 0x8160, `lw` at 0x8224, `lw` at 0x8258.
  The `sw` at 0x81cc stores 4 bytes to abs 0xffffffffffffc56c.
  The `sd` at 0x81d4 stores 8 bytes to abs 0xffffffffffffc550.
  The `lh` at 0x81dc loads 2 bytes from abs 0xffffffffffffc3a0.
  The `jal` at 0x817c calls fasthzerr [0x80d0] with a0=?, a1=sym(.rodata)+1640, a2=0x3e8, a3=?.
  The `jal` at 0x81bc calls splprof with a0=?, a1=?, a2=?, a3=?, a4=0xf4240.
  The `jal` at 0x81e0 calls set_timer_intr with a0=[-0x3c60]:2, a1=-0x1, a2=0x0, a3=?, a5=0x1.
  The `jal` at 0x81e8 calls splx with a0=ret(splprof), a1=?, a2=?, a3=?.
  The `jal` at 0x8204 calls fasthzerr [0x80d0] with a0=[sym(fasthz)], a1=sym(.rodata)+1640, a2=0x1f4, a3=a3 at entry (arg3).
  The `jal` at 0x8278 calls fasthzerr [0x80d0] with a0=[sym(fasthz)], a1=sym(.rodata)+1640, a2=0x9c4, a3=a3 at entry (arg3).
  The `beq` branch at 0x8134 targets 0x8240, is taken when a0(=[sym(fasthz)]) == 0, and falls through when a0(=[sym(fasthz)]) != 0.
  The `bne` branch at 0x8140 targets 0x8200, is taken when a0(=[sym(fasthz)]) < 0x1f4 (signed), and falls through when a0(=[sym(fasthz)]) >= 0x1f4 (signed).
  The `beq` branch at 0x8148 targets 0x8274, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x8158 targets 0x8174, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x816c targets 0x818c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bne` branch at 0x821c targets 0x8174, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x8230 targets 0x8178, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x8238 targets 0x8190 and is always taken.
  The `bne` branch at 0x8250 targets 0x8174, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x8264 targets 0x8178, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x826c targets 0x8190 and is always taken.
  The `bne` branch at 0x8290 targets 0x8174, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x82a4 targets 0x8178, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x82ac targets 0x8190 and is always taken.
  The return at 0x81f8 has v0 = ret(splx).

- `slowkgclock` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x82b4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x82b4-0x82dc (40 bytes).
  It occupies 40 bytes.
  The `sd` at 0x82cc stores 8 bytes to abs 0xffffffffffffc550.
  The `jal` at 0x82bc calls splprof with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x82c8 calls splx with a0=ret(splprof), a1=?, a2=?, a3=?.
  The return at 0x82d4 has v0 = ret(splx).

- `timestamp_init` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x82dc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x82dc-0x8300 (36 bytes).
  It occupies 36 bytes.
  The return at 0x82f8 has v0 = 0x50.

- `baseio_qlsave` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x8300 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x8300-0x8328 (40 bytes).
  It occupies 40 bytes.
  The `sw` at 0x8318 stores 4 bytes to (sym(.sbss)+184 + ([sym(qlcnt)] << 0x2)) +0x0.
  The `beq` branch at 0x830c targets 0x831c, is taken when a2(=[sym(qlcnt)]) >= 0x2 (signed), and falls through when a2(=[sym(qlcnt)]) < 0x2 (signed).
  The return at 0x8320 has v0 = one of ([sym(qlcnt)] << 0x2), (sym(.sbss)+184 + ([sym(qlcnt)] << 0x2)).

- `powerfail_check` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x8328 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x8328-0x8364 (60 bytes).
  It occupies 60 bytes.
  The `lh` at 0x8340 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `jal` at 0x8334 calls cmn_err with a0=0x4, a1=sym(.rodata)+1760, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x8348 calls heart_imr_bits_rmw with a0=[-0x3c60]:2, a1=0x0, a2=0x200000000000000, a3=?.
  The `jal` at 0x8350 calls nested_spinunlock with a0=sym(ip30clocklock), a1=?, a2=?, a3=?.
  The return at 0x835c has v0 = ret(nested_spinunlock).

- `powerfail_ql_thread` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x8364 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x8364-0x83c0 (92 bytes).
  It occupies 92 bytes.
  The `lw` at 0x8384 loads 4 bytes from ?.
  The `jal` at 0x8390 calls qlreset with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x8388 targets 0x8398, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x83a4 targets 0x8384, is taken when s0(?) < 0x2 (signed), and falls through when s0(?) >= 0x2 (signed).
  The return at 0x83b8 has v0 = ?.

- `powerfail` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x83c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x83c0-0x8444 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0x83f4 loads 4 bytes from [sym(acfail_tinfo)]:8 +0x0.
  The `lh` at 0x8420 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `jal` at 0x83c8 calls slow_ioc3_sio with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x83d8 calls restore_ioc3_sio with a0=(ret(slow_ioc3_sio) | 0x78000), a1=?, a2=?, a3=?.
  The `jal` at 0x83e8 calls cmn_err with a0=0x4, a1=sym(.rodata)+1760, a2=?, a3=?.
  The `jal` at 0x8404 calls vsema with a0=[sym(acfail_tinfo)]:8+8, a1=?, a2=[sym(acfail_tinfo)]:8, a3=?.
  The `jal` at 0x8414 calls timeout with a0=sym(powerfail_check), a1=0x0, a2=0xc8, a3=?.
  The `jal` at 0x8428 calls heart_imr_bits_rmw with a0=[-0x3c60]:2, a1=0x200000000000000, a2=0x0, a3=?.
  The `jal` at 0x8430 calls nested_spinlock with a0=sym(ip30clocklock), a1=?, a2=?, a3=?.
  The `beq` branch at 0x83fc targets 0x840c, is taken when (a3(=[[sym(acfail_tinfo)]:8]) & 0x1000) == 0, and falls through when (a3(=[[sym(acfail_tinfo)]:8]) & 0x1000) != 0.
  The return at 0x843c has v0 = ret(nested_spinlock).

- `cpu_godown` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x8444 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x8444-0x8480 (60 bytes).
  It occupies 60 bytes.
  The `jal` at 0x8458 calls cmn_err with a0=0x4, a1=sym(.rodata)+1760, a2=[sym(clean_shutdown_time)], a3=a3 at entry (arg3).
  The `jal` at 0x8464 calls us_delay with a0=0x7a120, a1=?, a2=?, a3=?.
  The `jal` at 0x846c calls cpu_soft_powerdown with a0=?, a1=?, a2=?, a3=?.
  The return at 0x8478 has v0 = ret(cpu_soft_powerdown).

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

- `flash_led` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x8648 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x8648-0x8680 (56 bytes).
  It occupies 56 bytes.
  The `jal` at 0x8654 calls set_leds with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x8668 calls timeout with a0=sym(flash_led), a1=one of 0x0, 0x3, a2=0x19, a3=?.
  The return at 0x8678 has v0 = ret(timeout).

- `cpu_waitforreset` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x8680 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x8680-0x86b0 (48 bytes).
  It occupies 48 bytes.
  The `lw` at 0x8690 loads 4 bytes from abs 0x900000001f000104.
  The `jal` at 0x86a0 calls cpu_soft_powerdown with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x8698 targets 0x8690, is taken when (at(=[0x900000001f000104]) & 0x40) == 0, and falls through when (at(=[0x900000001f000104]) & 0x40) != 0.
  The `beq` branch at 0x86a8 targets 0x8690 and is always taken.

- `rtodc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x86b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x86b0-0x8874 (452 bytes).
  It occupies 452 bytes.
  The `lw` at 0x8794 loads 4 bytes from ?.
  The `jal` at 0x86bc calls _clock_func [0x88e4] with a0=0x0, a1=sp-32, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x8840 calls us_delay with a0=0x64, a1=?, a2=?, a3=?.
  The `jal` at 0x884c calls _clock_func [0x88e4] with a0=0x0, a1=sp-32, a2=?, a3=?.
  The `beq` branch at 0x86c4 targets 0x8840, is taken when v0(=ret(_clock_func)) == 0, and falls through when v0(=ret(_clock_func)) != 0.
  The `beq` branch at 0x874c targets 0x8824, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x875c targets 0x8838, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x8774 targets 0x87a0, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x8798 targets 0x8780, is taken when a4(?) >= a2(?) (signed), and falls through when a4(?) < a2(?) (signed).
  The `bne` branch at 0x87ac targets 0x8818, is taken when a6(?) < 0x7b3 (signed), and falls through when a6(?) >= 0x7b3 (signed).
  The `beq` branch at 0x87b4 targets 0x8864 and is always taken.
  The `bne` branch at 0x87cc targets 0x8818, is taken when a2(?) < 0x7b2 (signed), and falls through when a2(?) >= 0x7b2 (signed).
  The `beq` branch at 0x87e0 targets 0x8800, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `bne` branch at 0x87f0 targets 0x87bc, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x87f8 targets 0x87bc and is always taken.
  The `bne` branch at 0x8808 targets 0x87f8, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x8810 targets 0x87e8 and is always taken.
  The `beq` branch at 0x8830 targets 0x8754, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x8838 targets 0x8764 and is always taken.
  The `beq` branch at 0x8854 targets 0x8840, is taken when v0(=ret(_clock_func)) == 0, and falls through when v0(=ret(_clock_func)) != 0.
  The `beq` branch at 0x885c targets 0x86cc and is always taken.
  The `beq` branch at 0x886c targets 0x87d8 and is always taken.
  The return at 0x881c has v0 = ?.

- `wtodc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x8874 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x8874-0x88e4 (112 bytes).
  It occupies 112 bytes.
  The `jal` at 0x8894 calls secs_to_calendar_time [0x8c8c] with a0=[sym(time)], a1=sp-22, a2=sp-24, a3=sp-26, a4=sp-28, a5=sp-30, a6=sp-32.
  The `jal` at 0x88d0 calls _clock_func [0x88e4] with a0=0x1, a1=sp-32, a2=?, a3=?.
  The return at 0x88dc has v0 = ret(_clock_func).

- `_clock_func` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x88e4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x88e4-0x8af0 (524 bytes).
  It occupies 524 bytes.
  23 such `sb` accesses store 1 byte to abs 0x900000001f6a0000, including `sb` at 0x8938, `sb` at 0x8940, `sb` at 0x8948.
  13 such `sb` accesses store 1 byte to abs 0x900000001f6c0000, including `sb` at 0x893c, `sb` at 0x8944, `sb` at 0x8950.
  The `lhu` at 0x894c loads 2 bytes from a1 (arg1 at entry) +0x0.
  The `lhu` at 0x895c loads 2 bytes from a1 (arg1 at entry) +0x2.
  The `lhu` at 0x896c loads 2 bytes from a1 (arg1 at entry) +0x4.
  The `lhu` at 0x897c loads 2 bytes from a1 (arg1 at entry) +0x6.
  The `lhu` at 0x898c loads 2 bytes from a1 (arg1 at entry) +0x8.
  3 such `lhu` accesses load 2 bytes from a1 (arg1 at entry) +0xa, including `lhu` at 0x8998, `lhu` at 0x89b4, `lhu` at 0x8acc.
  The `lhu` at 0x89cc loads 2 bytes from a1 (arg1 at entry) +0xc.
  10 such `lbu` accesses load 1 byte from abs 0x900000001f6c0000, including `lbu` at 0x89ec, `lbu` at 0x8a2c, `lbu` at 0x8a70.
  The `sh` at 0x8a74 stores 2 bytes to a1 (arg1 at entry) +0x0.
  The `sh` at 0x8a84 stores 2 bytes to a1 (arg1 at entry) +0x2.
  The `sh` at 0x8a90 stores 2 bytes to a1 (arg1 at entry) +0x4.
  The `sh` at 0x8a9c stores 2 bytes to a1 (arg1 at entry) +0x6.
  The `sh` at 0x8aa8 stores 2 bytes to a1 (arg1 at entry) +0x8.
  2 such `sh` accesses store 2 bytes to a1 (arg1 at entry) +0xa, including `sh` at 0x8ab4, `sh` at 0x8adc.
  The `sh` at 0x8aec stores 2 bytes to a1 (arg1 at entry) +0xc.
  The `jal` at 0x8904 calls mutex_spinlock_spl with a0=sym(ip30clocklock), a1=sym(splprof), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x890c calls slow_ioc3_sio with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x89f0 calls restore_ioc3_sio with a0=ret(slow_ioc3_sio), a1=?, a2=?, a3=?, a4=0x900000001f6c0000, a5=0x900000001f6a0000, a7=one of 0x9, 0x86.
  The `jal` at 0x89fc calls mutex_spinunlock with a0=sym(ip30clocklock), a1=ret(mutex_spinlock_spl), a2=?, a3=?.
  The `jal` at 0x8a50 calls restore_ioc3_sio with a0=ret(slow_ioc3_sio), a1=0x4a, a2=?, a3=0x48, a4=0x900000001f6c0000, a5=0x900000001f6a0000, a6=0xa, a7=0x9.
  The `jal` at 0x8a5c calls mutex_spinunlock with a0=sym(ip30clocklock), a1=ret(mutex_spinlock_spl), a2=?, a3=?.
  The `beq` branch at 0x892c targets 0x8a20, is taken when s5(=a0) == 0, and falls through when s5(=a0) != 0.
  The `beq` branch at 0x8a48 targets 0x8a6c, is taken when (at(=[0x900000001f6c0000]:1) & 0x40) == 0, and falls through when (at(=[0x900000001f6c0000]:1) & 0x40) != 0.
  The `beq` branch at 0x8a64 targets 0x8a08 and is always taken.
  The `beq` branch at 0x8ae8 targets 0x89f0 and is always taken.
  The return at 0x8a18 has v0 = one of 0x0, 0x1.

- `set_autopoweron` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x8af0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x8af0-0x8c8c (412 bytes).
  It occupies 412 bytes.
  The `lw` at 0x8b94 loads 4 bytes from table(sym(.data)+784) -0x4.
  The `lw` at 0x8bd8 loads 4 bytes from table(sym(.data)+784) +0x2c.
  7 such `sb` accesses store 1 byte to abs 0x900000001f6a0000, including `sb` at 0x8c08, `sb` at 0x8c18, `sb` at 0x8c28.
  6 such `sb` accesses store 1 byte to abs 0x900000001f6c0000, including `sb` at 0x8c10, `sb` at 0x8c20, `sb` at 0x8c30.
  The `lbu` at 0x8c60 loads 1 byte from abs 0x900000001f6c0000.
  The `jal` at 0x8b1c calls secs_to_calendar_time [0x8c8c] with a0=[sym(time)], a1=sp-48, a2=sp-46, a3=sp-44, a4=sp-42, a5=sp-40, a6=sp-38.
  The `jal` at 0x8b3c calls secs_to_calendar_time [0x8c8c] with a0=[sym(autopoweron_alarm)], a1=sp-36, a2=sp-34, a3=sp-32, a4=sp-30, a5=sp-28, a6=sp-26.
  The `jal` at 0x8bec calls mutex_spinlock_spl with a0=sym(ip30clocklock), a1=sym(splprof), a2=?, a3=?, a4=[sym(autopoweron_alarm)], a6=sym(.data)+784.
  The `jal` at 0x8bf4 calls slow_ioc3_sio with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x8c70 calls restore_ioc3_sio with a0=ret(slow_ioc3_sio), a1=?, a2=0x49, a3=?, a4=0x5, a6=0x3.
  The `jal` at 0x8c7c calls mutex_spinunlock with a0=sym(ip30clocklock), a1=?, a2=?, a3=?.
  The `bne` branch at 0x8b00 targets 0x8ba4, is taken when at(=[sym(autopoweron_alarm)]) < a0(=[sym(time)]) (signed), and falls through when at(=[sym(autopoweron_alarm)]) >= a0(=[sym(time)]) (signed).
  The `beq` branch at 0x8b74 targets 0x8bb0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x8b84 targets 0x8bc4, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x8b9c targets 0x8bec, is taken when a3(?) < a7(=[table(sym(.data)+784)-4]) (signed), and falls through when a3(?) >= a7(=[table(sym(.data)+784)-4]) (signed).
  The `beq` branch at 0x8bbc targets 0x8b7c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x8be4 targets 0x8ba4, is taken when t2(?) >= t3(=[table(sym(.data)+784)+44]) (signed), and falls through when t2(?) < t3(=[table(sym(.data)+784)+44]) (signed).
  The `beq` branch at 0x8c84 targets 0x8ba8 and is always taken.
  The return at 0x8ba8 has v0 = one of ?, ret(mutex_spinunlock).

- `secs_to_calendar_time` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x8c8c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x8c8c-0x8e70 (484 bytes).
  It occupies 484 bytes.
  2 such `sh` accesses store 2 bytes to a1 (arg1 at entry) +0x0, including `sh` at 0x8c90, `sh` at 0x8cd4.
  The `lw` at 0x8d34 loads 4 bytes from sym(.data) +0x310.
  4 such `sh` accesses store 2 bytes to a2 (arg2 at entry) +0x0, including `sh` at 0x8d44, `sh` at 0x8da0, `sh` at 0x8df4.
  The `lw` at 0x8d94 loads 4 bytes from sym(.data) +0x340.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x8de0, `lw` at 0x8de4.
  The `sh` at 0x8e44 stores 2 bytes to a3 (arg3 at entry) +0x0.
  The `sh` at 0x8e48 stores 2 bytes to a4 (arg4 at entry) +0x0.
  The `sh` at 0x8e50 stores 2 bytes to a5 (arg5 at entry) +0x0.
  The `sh` at 0x8e5c stores 2 bytes to a6 (arg6 at entry) +0x0.
  The `beq` branch at 0x8cc4 targets 0x8cd8 and is always taken.
  The `beq` branch at 0x8cf8 targets 0x8d50, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x8d08 targets 0x8d64, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x8d10 targets 0x8ccc, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x8d18 targets 0x8d84, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0x8d28 targets 0x8d90, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x8d40 targets 0x8dac, is taken when a0(?) >= v1(=[sym(.data)+784]) (signed), and falls through when a0(?) < v1(=[sym(.data)+784]) (signed).
  The `beq` branch at 0x8d48 targets 0x8df8 and is always taken.
  The `beq` branch at 0x8d5c targets 0x8d00, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x8d74 targets 0x8d18, is taken when a0(?) < t3(=0x1e28500) (signed), and falls through when a0(?) >= t3(=0x1e28500) (signed).
  The `beq` branch at 0x8d7c targets 0x8cd0 and is always taken.
  The `beq` branch at 0x8d8c targets 0x8d20, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bne` branch at 0x8da4 targets 0x8df8, is taken when a0(?) < ra(=[sym(.data)+832]) (signed), and falls through when a0(?) >= ra(=[sym(.data)+832]) (signed).
  The `beq` branch at 0x8df0 targets 0x8db8, is taken when a0(?) >= t2(?) (signed), and falls through when a0(?) < t2(?) (signed).
  The return at 0x8e68 has v0 = ?.

- `cpu_clearpower` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x8e70 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x8e70-0x8ee0 (112 bytes).
  It occupies 112 bytes.
  2 such `sb` accesses store 1 byte to abs 0x900000001f6a0000, including `sb` at 0x8e9c, `sb` at 0x8eb0.
  2 such `sb` accesses store 1 byte to abs 0x900000001f6c0000, including `sb` at 0x8ea4, `sb` at 0x8eb8.
  The `jal` at 0x8e7c calls mutex_spinlock_spl with a0=sym(ip30clocklock), a1=sym(splprof), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x8e88 calls slow_ioc3_sio with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x8eb4 calls flushbus with a0=0x30, a1=0xa, a2=?, a3=?.
  The `jal` at 0x8ebc calls restore_ioc3_sio with a0=ret(slow_ioc3_sio), a1=?, a2=?, a3=?.
  The `jal` at 0x8ecc calls mutex_spinunlock with a0=sym(ip30clocklock), a1=ret(mutex_spinlock_spl), a2=?, a3=?.
  The return at 0x8ed8 has v0 = ret(mutex_spinunlock).

- `cpu_soft_powerdown` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x8ee0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x8ee0-0x8fa8 (200 bytes).
  It occupies 200 bytes.
  5 such `sb` accesses store 1 byte to abs 0x900000001f6a0000, including `sb` at 0x8f4c, `sb` at 0x8f5c, `sb` at 0x8f74.
  3 such `sb` accesses store 1 byte to abs 0x900000001f6c0000, including `sb` at 0x8f54, `sb` at 0x8f84, `sb` at 0x8f8c.
  2 such `lbu` accesses load 1 byte from abs 0x900000001f6c0000, including `lbu` at 0x8f64, `lbu` at 0x8f94.
  The `jalr` at 0x8ef0 calls (unknown callee) with a0=[sym(fp_poweroff)]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x8ef8 calls conbuf_flush with a0=0x3, a1=?, a2=?, a3=?.
  The `jal` at 0x8f0c calls heart_imr_bits_rmw with a0=[sym(master_procid)]:2, a1=0x200000000000000, a2=0x0, a3=?.
  The `jal` at 0x8f30 calls mutex_spinlock_spl with a0=sym(ip30clocklock), a1=sym(splprof), a2=?, a3=?.
  The `jal` at 0x8f38 calls slow_ioc3_sio with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x8f98 calls us_delay with a0=0x989680, a1=?, a2=?, a3=?, a5=[0x900000001f6c0000]:1.
  The `beq` branch at 0x8ee8 targets 0x8ef8, is taken when a0(=[sym(fp_poweroff)]:8) == 0, and falls through when a0(=[sym(fp_poweroff)]:8) != 0.
  The `beq` branch at 0x8fa0 targets 0x8f88 and is always taken.

- `slow_ioc3_sio` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x8fa8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x8fa8-0x8fc8 (32 bytes).
  It occupies 32 bytes.
  The `lw` at 0x8fb0 loads 4 bytes from abs 0x900000001f600028.
  The `sw` at 0x8fc4 stores 4 bytes to abs 0x900000001f600028.
  The return at 0x8fc0 has v0 = [0x900000001f600028].

- `restore_ioc3_sio` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x8fc8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x8fc8-0x8fe8 (32 bytes).
  It occupies 32 bytes.
  The `sb` at 0x8fd8 stores 1 byte to abs 0x900000001f6a0000.
  The `lbu` at 0x8fdc loads 1 byte from abs 0x900000001f6c0000.
  The `sw` at 0x8fe4 stores 4 bytes to abs 0x900000001f600028.
  The return at 0x8fe0 has v0 = [0x900000001f6c0000]:1.

- `load_nvram_tab` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x8fe8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x8fe8-0x9020 (56 bytes).
  It occupies 56 bytes.
  The `jal` at 0x8ff4 calls arcs_nvram_tab with a0=sym(.bss)+560, a1=0x780, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x9010 calls cmn_err with a0=0x4, a1=sym(.rodata)+2064, a2=?, a3=?.
  The `bgtz` branch at 0x8ffc targets 0x900c, is taken when v0(=ret(arcs_nvram_tab)) > 0 (signed), and falls through when v0(=ret(arcs_nvram_tab)) <= 0 (signed).
  The `beq` branch at 0x9018 targets 0x9004 and is always taken.
  The return at 0x9004 has v0 = one of ret(arcs_nvram_tab), ret(cmn_err).

- `nvchecksum` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x9020 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x9020-0x90c4 (164 bytes).
  It occupies 164 bytes.
  5 such `sb` accesses store 1 byte to abs 0x900000001f6a0000, including `sb` at 0x9040, `sb` at 0x9054, `sb` at 0x907c.
  3 such `sb` accesses store 1 byte to abs 0x900000001f6c0000, including `sb` at 0x904c, `sb` at 0x9080, `sb` at 0x908c.
  2 such `lbu` accesses load 1 byte from abs 0x900000001f6c0000, including `lbu` at 0x9058, `lbu` at 0x9094.
  The `bne` branch at 0x9074 targets 0x9050, is taken when a2(?) < 0x80 (signed), and falls through when a2(?) >= 0x80 (signed).
  The `bne` branch at 0x90b4 targets 0x9084, is taken when a5(?) < 0x100 (signed), and falls through when a5(?) >= 0x100 (signed).
  The return at 0x90bc has v0 = ?.

- `ip30_set_an_nvram` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x90c4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x90c4-0x923c (376 bytes).
  It occupies 376 bytes.
  6 such `sb` accesses store 1 byte to abs 0x900000001f6a0000, including `sb` at 0x9148, `sb` at 0x9174, `sb` at 0x91a4.
  6 such `sb` accesses store 1 byte to abs 0x900000001f6c0000, including `sb` at 0x914c, `sb` at 0x9184, `sb` at 0x91ac.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x917c, `lbu` at 0x91d4.
  The `jal` at 0x9104 calls mutex_spinlock_spl with a0=sym(ip30clocklock), a1=sym(splprof), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=a1 at entry (arg1).
  The `jal` at 0x9114 calls slow_ioc3_sio with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x91ec calls nvchecksum [0x9020] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x9208 calls restore_ioc3_sio with a0=ret(slow_ioc3_sio), a1=?, a2=0xf, a3=?.
  The `jal` at 0x921c calls mutex_spinunlock with a0=sym(ip30clocklock), a1=ret(mutex_spinlock_spl), a2=?, a3=?.
  The `beq` branch at 0x90ec targets 0x922c, is taken when at(=(a0 + a1)) >= 0xf3 (signed), and falls through when at(=(a0 + a1)) < 0xf3 (signed).
  The `beq` branch at 0x9140 targets 0x9150, is taken when s0(=a0+14) >= 0x80 (signed), and falls through when s0(=a0+14) < 0x80 (signed).
  The `bne` branch at 0x9154 targets 0x9198, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x915c targets 0x9198, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x9188 targets 0x91ec, is taken when s4(=(a0+14 + a1)-1) < s0(?) (signed), and falls through when s4(=(a0+14 + a1)-1) >= s0(?) (signed).
  The `bne` branch at 0x9190 targets 0x9168, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x9198 targets 0x91ec, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x91a8 targets 0x91ec, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x91dc targets 0x91ec, is taken when s4(=(a0+14 + a1)-1) < s0(?) (signed), and falls through when s4(=(a0+14 + a1)-1) >= s0(?) (signed).
  The `bne` branch at 0x91e4 targets 0x91b8, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The return at 0x9234 has v0 = one of -0x1, 0x0.

- `set_nvram` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x923c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x923c-0x9358 (284 bytes).
  It occupies 284 bytes.
  3 such `lw` accesses load 4 bytes from sym(pdaindr) +0x25c, including `lw` at 0x9294, `lw` at 0x92f8, `lw` at 0x933c.
  The `lw` at 0x92b4 loads 4 bytes from sym(pdaindr) +0x28c.
  The `lw` at 0x92e4 loads 4 bytes from sym(pdaindr) +0x258.
  The `jal` at 0x9250 calls strlen with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x926c calls strcmp with a0=sym(.rodata)+2064, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x9284 calls strcmp with a0=a0 at entry (arg0), a1=sym(.rodata)+2064, a2=?, a3=?.
  The `jal` at 0x92a4 calls strcmp with a0=sym(.bss)+560, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0x931c calls ip30_set_an_nvram with a0=[sym(.bss)+600], a1=?, a2=a1 at entry (arg1), a3=?, a5=(ret(strlen) << 0x0), a6=0x22b.
  The `beq` branch at 0x9274 targets 0x92dc, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x928c targets 0x932c, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `beq` branch at 0x9298 targets 0x92c4, is taken when a2(=[sym(.bss)+604]) == 0, and falls through when a2(=[sym(.bss)+604]) != 0.
  The `beq` branch at 0x92ac targets 0x92e4, is taken when v0(=ret(strcmp)) == 0, and falls through when v0(=ret(strcmp)) != 0.
  The `bne` branch at 0x92b8 targets 0x92a0, is taken when a3(=[sym(.bss)+652]) != 0, and falls through when a3(=[sym(.bss)+652]) == 0.
  The `beq` branch at 0x92dc targets 0x92c4 and is always taken.
  The `beq` branch at 0x92f0 targets 0x9350, is taken when a0(=[sym(.bss)+600]) == a6(=0x22b), and falls through when a0(=[sym(.bss)+600]) != a6(=0x22b).
  The `bne` branch at 0x9304 targets 0x9348, is taken when v0(=[sym(.bss)+604]) < a5(=(ret(strlen) << 0x0)) (signed), and falls through when v0(=[sym(.bss)+604]) >= a5(=(ret(strlen) << 0x0)) (signed).
  The `beq` branch at 0x930c targets 0x9318, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x9324 targets 0x92c4 and is always taken.
  The `beq` branch at 0x9338 targets 0x9298, is taken when a2(=(ret(strlen) << 0x0)) == 0, and falls through when a2(=(ret(strlen) << 0x0)) != 0.
  The `beq` branch at 0x9340 targets 0x92c8 and is always taken.
  The `beq` branch at 0x9348 targets 0x92c4 and is always taken.
  The `beq` branch at 0x9350 targets 0x92c4 and is always taken.
  The return at 0x92d4 has v0 = one of ?, -0x2.

- `ip30_get_an_nvram` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x9358 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x9358-0x94cc (372 bytes).
  It occupies 372 bytes.
  5 such `sb` accesses store 1 byte to abs 0x900000001f6a0000, including `sb` at 0x93dc, `sb` at 0x9404, `sb` at 0x9444.
  3 such `sb` accesses store 1 byte to abs 0x900000001f6c0000, including `sb` at 0x93e0, `sb` at 0x944c, `sb` at 0x9464.
  2 such `lbu` accesses load 1 byte from abs 0x900000001f6c0000, including `lbu` at 0x9410, `lbu` at 0x9474.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0x9418, `sb` at 0x9480.
  The `jal` at 0x9398 calls mutex_spinlock_spl with a0=sym(ip30clocklock), a1=sym(splprof), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=a1 at entry (arg1).
  The `jal` at 0x93a0 calls slow_ioc3_sio with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x948c calls restore_ioc3_sio with a0=ret(slow_ioc3_sio), a1=?, a2=0x900000001f6a0000, a3=?, a6=0x900000001f6c0000.
  The `jal` at 0x949c calls mutex_spinunlock with a0=sym(ip30clocklock), a1=ret(mutex_spinlock_spl), a2=?, a3=?.
  The `beq` branch at 0x9380 targets 0x94ac, is taken when at(=(a0 + a1)) >= 0xf3 (signed), and falls through when at(=(a0 + a1)) < 0xf3 (signed).
  The `beq` branch at 0x93d4 targets 0x93e4, is taken when s0(=a0+14) >= 0x80 (signed), and falls through when s0(=a0+14) < 0x80 (signed).
  The `bne` branch at 0x93e8 targets 0x94c4, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x93f0 targets 0x94bc, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0x941c targets 0x948c, is taken when s2(=(a0+14 + a1)-1) < s0(?) (signed), and falls through when s2(=(a0+14 + a1)-1) >= s0(?) (signed).
  The `bne` branch at 0x9424 targets 0x93fc, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x9430 targets 0x948c, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x9448 targets 0x948c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x947c targets 0x948c, is taken when s2(=(a0+14 + a1)-1) < s0(?) (signed), and falls through when s2(=(a0+14 + a1)-1) >= s0(?) (signed).
  The `bne` branch at 0x9484 targets 0x9458, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x94bc targets 0x9430 and is always taken.
  The `beq` branch at 0x94c4 targets 0x9430 and is always taken.
  The return at 0x94b4 has v0 = one of -0x1, 0x0.

- `read_branch_diag` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x94d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x94d0-0x94dc (12 bytes).
  It occupies 12 bytes.
  The return at 0x94d4 has v0 = ?.

- `write_branch_diag` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x94dc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x94dc-0x94e8 (12 bytes).
  It occupies 12 bytes.
  The return at 0x94e0 has v0 = ?.

- `branch_prediction_off` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x94e8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x94e8-0x950c (36 bytes).
  It occupies 36 bytes.
  The return at 0x9504 has v0 = ?.

- `branch_prediction_on` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x950c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x950c-0x9528 (28 bytes).
  It occupies 28 bytes.
  The return at 0x9520 has v0 = ?.

- `branch_prediction_taken` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x9528 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x9528-0x954c (36 bytes).
  It occupies 36 bytes.
  The return at 0x9544 has v0 = ?.

- `branch_prediction_fwd_not_taken` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x954c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x954c-0x9564 (24 bytes).
  It occupies 24 bytes.
  The return at 0x955c has v0 = ?.

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

- `r1nkperf_data_register_get` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x95f4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x95f4-0x965c (104 bytes).
  It occupies 104 bytes.
  The `bne` branch at 0x95f4 targets 0x9608, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x960c targets 0x9620, is taken when a0 != at(=0x1), and falls through when a0 == at(=0x1).
  The `bne` branch at 0x9624 targets 0x9638, is taken when a0 != at(=0x2), and falls through when a0 == at(=0x2).
  The `bne` branch at 0x963c targets 0x9650, is taken when a0 != at(=0x3), and falls through when a0 == at(=0x3).
  The return at 0x9600 has v0 = ?.
  The return at 0x9618 has v0 = ?.
  The return at 0x9630 has v0 = ?.
  The return at 0x9648 has v0 = ?.
  The return at 0x9654 has v0 = 0x0.

- `r1nkperf_control_register_get` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x965c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x965c-0x96c4 (104 bytes).
  It occupies 104 bytes.
  The `bne` branch at 0x965c targets 0x9670, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x9674 targets 0x9688, is taken when a0 != at(=0x1), and falls through when a0 == at(=0x1).
  The `bne` branch at 0x968c targets 0x96a0, is taken when a0 != at(=0x2), and falls through when a0 == at(=0x2).
  The `bne` branch at 0x96a4 targets 0x96b8, is taken when a0 != at(=0x3), and falls through when a0 == at(=0x3).
  The return at 0x9668 has v0 = ?.
  The return at 0x9680 has v0 = ?.
  The return at 0x9698 has v0 = ?.
  The return at 0x96b0 has v0 = ?.
  The return at 0x96bc has v0 = 0x0.

- `r1nkperf_data_register_set` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x96c4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x96c4-0x9728 (100 bytes).
  It occupies 100 bytes.
  The `bne` branch at 0x96c4 targets 0x96d8, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x96dc targets 0x96f0, is taken when a0 != at(=0x1), and falls through when a0 == at(=0x1).
  The `bne` branch at 0x96f4 targets 0x9708, is taken when a0 != at(=0x2), and falls through when a0 == at(=0x2).
  The `bne` branch at 0x970c targets 0x9720, is taken when a0 != at(=0x3), and falls through when a0 == at(=0x3).
  The return at 0x96d0 has v0 = ?.
  The return at 0x96e8 has v0 = ?.
  The return at 0x9700 has v0 = ?.
  The return at 0x9718 has v0 = ?.
  The return at 0x9720 has v0 = ?.

- `r1nkperf_control_register_set` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x9728 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x9728-0x978c (100 bytes).
  It occupies 100 bytes.
  The `bne` branch at 0x9728 targets 0x973c, is taken when a0 != 0, and falls through when a0 == 0.
  The `bne` branch at 0x9740 targets 0x9754, is taken when a0 != at(=0x1), and falls through when a0 == at(=0x1).
  The `bne` branch at 0x9758 targets 0x976c, is taken when a0 != at(=0x2), and falls through when a0 == at(=0x2).
  The `bne` branch at 0x9770 targets 0x9784, is taken when a0 != at(=0x3), and falls through when a0 == at(=0x3).
  The return at 0x9734 has v0 = ?.
  The return at 0x974c has v0 = ?.
  The return at 0x9764 has v0 = ?.
  The return at 0x977c has v0 = ?.
  The return at 0x9784 has v0 = ?.

- `exception` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x9800 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x9800-0x9c34 (1076 bytes).
  It occupies 1076 bytes.
  3 such `lwu` accesses load 4 bytes from abs 0xffffffffffffd00c, including `lwu` at 0x9800, `lwu` at 0x9874, `lwu` at 0x98f0.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffd000, including `ld` at 0x9820, `ld` at 0x9930.
  The `sd` at 0x9824 stores 8 bytes to [-0x3000]:8 +0x48.
  The `sd` at 0x9830 stores 8 bytes to [-0x3000]:8 +0x0.
  The `sd` at 0x9838 stores 8 bytes to [-0x3000]:8 +0x8.
  The `sd` at 0x9840 stores 8 bytes to [-0x3000]:8 +0x10.
  The `sd` at 0x9848 stores 8 bytes to [-0x3000]:8 +0x18.
  The `sd` at 0x984c stores 8 bytes to [-0x3000]:8 +0x20.
  The `ld` at 0x9850 loads 8 bytes from abs 0xffffffffffffc018.
  The `sd` at 0x9854 stores 8 bytes to [-0x3000]:8 +0x28.
  The `sd` at 0x9858 stores 8 bytes to [-0x3000]:8 +0x30.
  The `sd` at 0x9860 stores 8 bytes to [-0x3000]:8 +0x38.
  The `lwu` at 0x9864 loads 4 bytes from abs 0xffffffffffffd008.
  The `sw` at 0x986c stores 4 bytes to abs 0xffffffffffffd008.
  The `sd` at 0x9870 stores 8 bytes to [-0x3000]:8 +0x40.
  The `sd` at 0x9884 stores 8 bytes to [-0x3000]:8 +0x50.
  The `sd` at 0x9888 stores 8 bytes to [-0x3000]:8 +0x58.
  The `sd` at 0x988c stores 8 bytes to [-0x3000]:8 +0x60.
  The `sd` at 0x9890 stores 8 bytes to [-0x3000]:8 +0x68.
  The `sd` at 0x9894 stores 8 bytes to [-0x3000]:8 +0x70.
  The `sd` at 0x9898 stores 8 bytes to [-0x3000]:8 +0x78.
  The `sd` at 0x989c stores 8 bytes to [-0x3000]:8 +0x80.
  The `sd` at 0x98a0 stores 8 bytes to [-0x3000]:8 +0x88.
  The `sd` at 0x98a4 stores 8 bytes to [-0x3000]:8 +0x90.
  The `sd` at 0x98a8 stores 8 bytes to [-0x3000]:8 +0x98.
  The `sd` at 0x98ac stores 8 bytes to [-0x3000]:8 +0xa0.
  The `sd` at 0x98b0 stores 8 bytes to [-0x3000]:8 +0xa8.
  The `sd` at 0x98b4 stores 8 bytes to [-0x3000]:8 +0xb0.
  The `sd` at 0x98b8 stores 8 bytes to [-0x3000]:8 +0xb8.
  The `sd` at 0x98bc stores 8 bytes to [-0x3000]:8 +0xc0.
  The `sd` at 0x98c0 stores 8 bytes to [-0x3000]:8 +0xc8.
  The `sd` at 0x98c4 stores 8 bytes to [-0x3000]:8 +0xd0.
  The `sd` at 0x98c8 stores 8 bytes to [-0x3000]:8 +0xd8.
  The `sd` at 0x98cc stores 8 bytes to [-0x3000]:8 +0xe0.
  The `sd` at 0x98d0 stores 8 bytes to [-0x3000]:8 +0xe8.
  The `sd` at 0x98d4 stores 8 bytes to [-0x3000]:8 +0xf0.
  The `sd` at 0x98d8 stores 8 bytes to [-0x3000]:8 +0xf8.
  The `sd` at 0x98dc stores 8 bytes to [-0x3000]:8 +0x100.
  The `sd` at 0x98e0 stores 8 bytes to [-0x3000]:8 +0x108.
  The `sd` at 0x98e4 stores 8 bytes to [-0x3000]:8 +0x110.
  The `sd` at 0x98e8 stores 8 bytes to [-0x3000]:8 +0x118.
  The `sd` at 0x98ec stores 8 bytes to [-0x3000]:8 +0x120.
  3 such `ld` accesses load 8 bytes from [-0x3000]:8 +0x30, including `ld` at 0x9900, `ld` at 0x9934, `ld` at 0x99fc.
  2 such `lwu` accesses load 4 bytes from abs 0xffffffffffffd014, including `lwu` at 0x991c, `lwu` at 0x9960.
  The `ld` at 0x9928 loads 8 bytes from abs 0xffffffffffffc3c0.
  The `sd` at 0x995c stores 8 bytes to [-0x3000]:8 +0x128.
  The `sd` at 0x9984 stores 8 bytes to ([-0x3000]:8+296 + [-0x2fec]-8) +0x0.
  The `ld` at 0x998c loads 8 bytes from [-0x3000]:8 +0x50.
  The `ld` at 0x9990 loads 8 bytes from [-0x3000]:8 +0x58.
  The `ld` at 0x9994 loads 8 bytes from [-0x3000]:8 +0x60.
  The `ld` at 0x9998 loads 8 bytes from [-0x3000]:8 +0x68.
  The `ld` at 0x999c loads 8 bytes from [-0x3000]:8 +0x70.
  The `ld` at 0x99a0 loads 8 bytes from [-0x3000]:8 +0x78.
  The `ld` at 0x99a4 loads 8 bytes from [-0x3000]:8 +0x80.
  The `ld` at 0x99a8 loads 8 bytes from [-0x3000]:8 +0x88.
  The `ld` at 0x99ac loads 8 bytes from [-0x3000]:8 +0x90.
  The `ld` at 0x99b0 loads 8 bytes from [-0x3000]:8 +0x98.
  The `ld` at 0x99b4 loads 8 bytes from [-0x3000]:8 +0xa0.
  The `ld` at 0x99b8 loads 8 bytes from [-0x3000]:8 +0xa8.
  The `ld` at 0x99bc loads 8 bytes from [-0x3000]:8 +0xb0.
  The `ld` at 0x99c0 loads 8 bytes from [-0x3000]:8 +0xb8.
  The `ld` at 0x99c4 loads 8 bytes from [-0x3000]:8 +0xc0.
  The `ld` at 0x99c8 loads 8 bytes from [-0x3000]:8 +0xc8.
  The `ld` at 0x99cc loads 8 bytes from [-0x3000]:8 +0xd0.
  The `ld` at 0x99d0 loads 8 bytes from [-0x3000]:8 +0xd8.
  The `ld` at 0x99d4 loads 8 bytes from [-0x3000]:8 +0xe0.
  The `ld` at 0x99d8 loads 8 bytes from [-0x3000]:8 +0xe8.
  The `ld` at 0x99dc loads 8 bytes from [-0x3000]:8 +0xf0.
  The `ld` at 0x99e0 loads 8 bytes from [-0x3000]:8 +0xf8.
  The `ld` at 0x99e4 loads 8 bytes from [-0x3000]:8 +0x100.
  The `ld` at 0x99e8 loads 8 bytes from [-0x3000]:8 +0x108.
  The `ld` at 0x99ec loads 8 bytes from [-0x3000]:8 +0x110.
  The `ld` at 0x99f0 loads 8 bytes from [-0x3000]:8 +0x118.
  The `ld` at 0x99f4 loads 8 bytes from [-0x3000]:8 +0x120.
  The `ld` at 0x99f8 loads 8 bytes from [-0x3000]:8 +0x20.
  The `lwu` at 0x9a00 loads 4 bytes from abs 0xffffffffffffd010.
  The `sd` at 0x9a1c stores 8 bytes to abs 0xffffffffffffd000.
  5 such `sd` accesses store 8 bytes to abs 0xffffffffffffc038, including `sd` at 0x9a4c, `sd` at 0x9a64, `sd` at 0x9a74.
  The `jal` at 0x9814 calls getpc with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x992c calls bcopy with a0=([[-0x3000]:8+48]:8 + [-0x2fec]), a1=[-0x3000]:8+296, a2=[-0x2fec], a3=?.
  Calls systrap via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x9a38).
  Calls kmiss via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x9a48).
  Calls longway via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x9a68).
  Calls intrnorm via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x9a70).
  Calls handle_intr_wgflush via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x9a84).
  Calls handle_brkpt via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x9a8c).
  Calls handle_watch via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x9a94).
  The `beq` branch at 0x9808 targets 0x9a20, is taken when (k0(=[-0x2ff4]) & 0x1) == 0, and falls through when (k0(=[-0x2ff4]) & 0x1) != 0.
  The `beq` branch at 0x987c targets 0x9a00, is taken when (k0(=[-0x2ff4]) & 0x2) == 0, and falls through when (k0(=[-0x2ff4]) & 0x2) != 0.
  The `beq` branch at 0x98f8 targets 0x9a00, is taken when (k0(=[-0x2ff4]) & 0x4) == 0, and falls through when (k0(=[-0x2ff4]) & 0x4) != 0.
  The `bne` branch at 0x9914 targets 0x9940, is taken when a1(?) != a2(=-0x8000), and falls through when a1(?) == a2(=-0x8000).
  The `beq` branch at 0x9938 targets 0x9988 and is always taken.
  The `bne` branch at 0x9a10 targets 0x9a1c, is taken when k1(=([-0x3000]:8 + [-0x2ff0])) < k0(=-0x1001) (signed), and falls through when k1(=([-0x3000]:8 + [-0x2ff0])) >= k0(=-0x1001) (signed).
  The `beq` branch at 0x9a28 targets 0x9a78, is taken when (k0(?) & 0x7c) == 0, and falls through when (k0(?) & 0x7c) != 0.
  The `bne` branch at 0x9a30 targets 0x9a40, is taken when k0(?) != 0, and falls through when k0(?) == 0.
  The `bne` branch at 0x9a40 targets 0x9a50, is taken when k0(?) != 0, and falls through when k0(?) == 0.
  The `beq` branch at 0x9a50 targets 0x9a48, is taken when k0(?) == 0, and falls through when k0(?) != 0.
  The `beq` branch at 0x9a58 targets 0x9a94, is taken when k0(?) == 0, and falls through when k0(?) != 0.
  The `beq` branch at 0x9a60 targets 0x9a8c, is taken when k0(?) == 0, and falls through when k0(?) != 0.
  The `bnel` branch at 0x9a7c targets 0x9a70, is taken when k0(=-0x6ef) != sp(?), and falls through when k0(=-0x6ef) == sp(?); its branch-likely delay slot `nop` at 0x9a80 runs only when taken and is annulled on fall-through.
  The instructions from 0x9a9c to 0x9c30 are not reached by any path from the entry, and their branches are not listed.

- `exception_endfast` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x9a9c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x9a9c-0x9ae8 (76 bytes).
  It occupies 76 bytes.
  The `sd` at 0x9a9c stores 8 bytes to abs 0xffffffffffffc038.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x9ae0).
  The `beq` branch at 0x9ad8 targets 0x9b30, is taken when k0(?) == 0, and falls through when k0(?) != 0.

- `handle_intr_wgflush` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x9a9c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x9a9c-0x9ae8 (76 bytes).
  It occupies 76 bytes.
  The `sd` at 0x9a9c stores 8 bytes to abs 0xffffffffffffc038.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x9ae0).
  The `beq` branch at 0x9ad8 targets 0x9b30, is taken when k0(?) == 0, and falls through when k0(?) != 0.

- `wgflush_start` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x9ae8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x9ae8-0x9b38 (80 bytes).
  It occupies 80 bytes.
  The `sd` at 0x9aec stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `sd` at 0x9af0 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `sd` at 0x9af4 stores 8 bytes to a1 (arg1 at entry) +0x10.
  The `sd` at 0x9af8 stores 8 bytes to a1 (arg1 at entry) +0x18.
  The `sd` at 0x9afc stores 8 bytes to a1 (arg1 at entry) +0x20.
  The `sd` at 0x9b00 stores 8 bytes to a1 (arg1 at entry) +0x28.
  The `sd` at 0x9b04 stores 8 bytes to a1 (arg1 at entry) +0x30.
  The `sd` at 0x9b08 stores 8 bytes to a1 (arg1 at entry) +0x38.
  The `sd` at 0x9b0c stores 8 bytes to a1 (arg1 at entry) +0x40.
  The `sd` at 0x9b10 stores 8 bytes to a1 (arg1 at entry) +0x48.
  The `sd` at 0x9b14 stores 8 bytes to a1 (arg1 at entry) +0x50.
  The `sd` at 0x9b18 stores 8 bytes to a1 (arg1 at entry) +0x58.
  The `sd` at 0x9b1c stores 8 bytes to a1 (arg1 at entry) +0x60.
  The `sd` at 0x9b20 stores 8 bytes to a1 (arg1 at entry) +0x68.
  The `sd` at 0x9b24 stores 8 bytes to a1 (arg1 at entry) +0x70.
  The `sd` at 0x9b28 stores 8 bytes to a1 (arg1 at entry) +0x78.
  The `ld` at 0x9b34 loads 8 bytes from abs 0xffffffffffffc038.
  Calls intrnorm via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x9b30).

- `handle_brkpt` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x9b38 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x9b38-0x9bdc (164 bytes).
  It occupies 164 bytes.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x9b4c, `lw` at 0x9bb4.
  The `ld` at 0x9b90 loads 8 bytes from ?.
  The `lw` at 0x9bd0 loads 4 bytes from sym(kernelbp) +0x0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x9b94).
  The `beq` branch at 0x9b40 targets 0x9b9c, is taken when (k0(?) & 0x18) == 0, and falls through when (k0(?) & 0x18) != 0.
  The `beq` branch at 0x9b5c targets 0x9a68, is taken when (k1(?) & 0x400) == 0, and falls through when (k1(?) & 0x400) != 0.
  The `beq` branch at 0x9b6c targets 0x9a68, is taken when k1(?) >= 0x18 (signed), and falls through when k1(?) < 0x18 (signed).
  The `bgez` branch at 0x9ba4 targets 0x9bb0, is taken when k0(?) >= 0 (signed), and falls through when k0(?) < 0 (signed).
  The `bne` branch at 0x9bd4 targets 0x9a68, is taken when at(=[sym(kernelbp)]) != k0(?), and falls through when at(=[sym(kernelbp)]) == k0(?).

- `handle_watch` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x9bdc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x9bdc-0x9c40 (100 bytes).
  It occupies 100 bytes.
  The `lh` at 0x9bdc loads 2 bytes from abs 0xffffffffffffc3a0.
  The `sw` at 0x9c04 stores 4 bytes to (sym(flag_at_kernelbp) + ([-0x3c60]:2 << 0x2)) +0x0.
  The `ld` at 0x9c14 loads 8 bytes from abs 0xa800000000001020.
  The `ld` at 0x9c20 loads 8 bytes from [0xa800000000001020]:8 +0x8.
  The `ld` at 0x9c28 loads 8 bytes from abs 0xffffffffffffc038.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x9c2c).
  The `beq` branch at 0x9c18 targets 0x9a68, is taken when at(=[0xa800000000001020]:8) == 0, and falls through when at(=[0xa800000000001020]:8) != 0.
  The `beq` branch at 0x9c24 targets 0x9a68, is taken when at(=[[0xa800000000001020]:8+8]:8) == 0, and falls through when at(=[[0xa800000000001020]:8+8]:8) != 0.
  The instructions from 0x9c34 to 0x9c3c are not reached by any path from the entry, and their branches are not listed.

- `kmiss` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x9c40 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x9c40-0xa11c (1244 bytes).
  It occupies 1244 bytes.
  5 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x9c8c, `ld` at 0x9d84, `ld` at 0x9dd8.
  2 such `lh` accesses load 2 bytes from [-0x3fe8]:8 +0x578, including `lh` at 0x9c9c, `lh` at 0x9e24.
  2 such `sd` accesses store 8 bytes to abs 0xffffffffffffc040, including `sd` at 0x9cb0, `sd` at 0x9e38.
  2 such `ld` accesses load 8 bytes from [-0x3fe8]:8 +0x568, including `ld` at 0x9cb8, `ld` at 0x9cf8.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0x9cc4, `ld` at 0x9d04, `ld` at 0x9e54.
  5 such `ld` accesses load 8 bytes from abs 0xffffffffffffc040, including `ld` at 0x9ccc, `ld` at 0x9ce8, `ld` at 0x9e4c.
  6 such `ld` accesses load 8 bytes from abs 0xffffffffffffc038, including `ld` at 0x9d74, `ld` at 0x9da8, `ld` at 0x9db4.
  The `ld` at 0x9d78 loads 8 bytes from abs 0xffffffffffffc028.
  3 such `ld` accesses load 8 bytes from [-0x3fe8]:8 +0x3e0, including `ld` at 0x9d88, `ld` at 0x9ddc, `ld` at 0x9e00.
  The `lb` at 0x9d8c loads 1 byte from [[-0x3fe8]:8+992]:8 +0x348.
  The `sb` at 0x9da4 stores 1 byte to [[-0x3fe8]:8+992]:8 +0x348.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x9de4, `sd` at 0x9dec, `sd` at 0x9e0c.
  2 such `ld` accesses load 8 bytes from [-0x3fe8]:8 +0x570, including `ld` at 0x9e40, `ld` at 0x9e88.
  2 such `lw` accesses load 4 bytes from sym(syssegsz) +0x0, including `lw` at 0x9f88, `lw` at 0xa068.
  The `ld` at 0x9fb8 loads 8 bytes from sym(kptbl) +0x0.
  The `sd` at 0xa0a0 stores 8 bytes to sym(_assregs) +0x18.
  The `sd` at 0xa0bc stores 8 bytes to sym(_assregs) +0x20.
  The `sd` at 0xa0d8 stores 8 bytes to sym(_assregs) +0x28.
  Calls assfail via direct with a0=sym(.data)+904, a1=sym(.data)+923, a2=0x0, a3=a3 at entry (arg3) (`j` at 0xa110).
  Calls longway via direct with a0=?, a1=?, a2=?, a3=a3 at entry (arg3) (`j` at 0xa114).
  The `bne` branch at 0x9c5c targets 0xa114, is taken when k0(?) < at(=0xc0000fbfe0000000) (unsigned), and falls through when k0(?) >= at(=0xc0000fbfe0000000) (unsigned).
  The `bltz` branch at 0x9c78 targets 0x9e18, is taken when k0(?) < 0 (signed), and falls through when k0(?) >= 0 (signed).
  The `beq` branch at 0x9c84 targets 0x9f54, is taken when k0(?) >= at(=0x20000000) (unsigned), and falls through when k0(?) < at(=0x20000000) (unsigned).
  The `beq` branch at 0x9c94 targets 0xa114, is taken when at(=[-0x3fe8]:8) == 0, and falls through when at(=[-0x3fe8]:8) != 0.
  The `beq` branch at 0x9ca0 targets 0x9ec8, is taken when k1(=[[-0x3fe8]:8+1400]:2) == 0, and falls through when k1(=[[-0x3fe8]:8+1400]:2) != 0.
  The `beq` branch at 0x9ca8 targets 0x9cec, is taken when k1(?) == 0, and falls through when k1(?) != 0.
  The `beql` branch at 0x9cc8 targets 0x9e20, is taken when t0(?) == 0, and falls through when t0(?) != 0; its branch-likely delay slot `ld t0,-16320(zero)` at 0x9ccc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x9ce4 targets 0x9d04 and is always taken.
  The `bne` branch at 0x9cf0 targets 0xa114, is taken when k1(?) != 0, and falls through when k1(?) == 0.
  The `beql` branch at 0x9d08 targets 0x9eb0, is taken when k0(?) == 0, and falls through when k0(?) != 0; its branch-likely delay slot `nop` at 0x9d0c runs only when taken and is annulled on fall-through.
  The `bgez` branch at 0x9d14 targets 0x9d28, is taken when k1(?) >= 0 (signed), and falls through when k1(?) < 0 (signed).
  The `beq` branch at 0x9d20 targets 0x9d34 and is always taken.
  The `beq` branch at 0x9d54 targets 0x9d68, is taken when (k0(?) & 0x4000) == 0, and falls through when (k0(?) & 0x4000) != 0.
  The `beq` branch at 0x9d60 targets 0x9d70 and is always taken.
  The `bgez` branch at 0x9d70 targets 0x9dc0, is taken when k0(?) >= 0 (signed), and falls through when k0(?) < 0 (signed).
  The `bne` branch at 0x9d7c targets 0x9db4, is taken when k0(=[-0x3fd8]:8) != 0, and falls through when k0(=[-0x3fd8]:8) == 0.
  The `bgez` branch at 0x9d94 targets 0x9db4, is taken when k0(=[[[-0x3fe8]:8+992]:8+840]:1-5) >= 0 (signed), and falls through when k0(=[[[-0x3fe8]:8+992]:8+840]:1-5) < 0 (signed).
  The `beq` branch at 0x9dac targets 0x9dc0 and is always taken.
  The `bgez` branch at 0x9dc8 targets 0x9e14, is taken when k0(?) >= 0 (signed), and falls through when k0(?) < 0 (signed).
  The `beq` branch at 0x9e28 targets 0x9ec8, is taken when k1(=[[-0x3fe8]:8+1400]:2) == 0, and falls through when k1(=[[-0x3fe8]:8+1400]:2) != 0.
  The `beq` branch at 0x9e30 targets 0x9e7c, is taken when k1(?) == 0, and falls through when k1(?) != 0.
  The `beql` branch at 0x9e48 targets 0x9ec8, is taken when t0(=[[-0x3fe8]:8+1392]:8) == 0, and falls through when t0(=[[-0x3fe8]:8+1392]:8) != 0; its branch-likely delay slot `ld t0,-16320(zero)` at 0x9e4c runs only when taken and is annulled on fall-through.
  The `beql` branch at 0x9e58 targets 0x9ec8, is taken when t0(?) == 0, and falls through when t0(?) != 0; its branch-likely delay slot `ld t0,-16320(zero)` at 0x9e5c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x9e74 targets 0x9e98 and is always taken.
  The `bne` branch at 0x9e80 targets 0xa114, is taken when k1(?) != 0, and falls through when k1(?) == 0.
  The `beq` branch at 0x9e90 targets 0x9ec8, is taken when k0(=[[-0x3fe8]:8+1392]:8) == 0, and falls through when k0(=[[-0x3fe8]:8+1392]:8) != 0.
  The `bne` branch at 0x9ea0 targets 0x9d10, is taken when k0(?) != 0, and falls through when k0(?) == 0.
  The `beq` branch at 0x9ea8 targets 0x9ec8 and is always taken.
  The `beq` branch at 0x9ec0 targets 0x9e20 and is always taken.
  The `bgez` branch at 0x9edc targets 0x9eec, is taken when k0(?) >= 0 (signed), and falls through when k0(?) < 0 (signed).
  The `bgez` branch at 0x9f20 targets 0x9f3c, is taken when k1(?) >= 0 (signed), and falls through when k1(?) < 0 (signed).
  The `beql` branch at 0x9f3c targets 0x9f48, is taken when k0(?) == 0, and falls through when k0(?) != 0; its branch-likely delay slot `dmtc0 zero,v0,0` at 0x9f40 runs only when taken and is annulled on fall-through.
  The `bltz` branch at 0x9f68 targets 0xa114, is taken when k0(?) < 0 (signed), and falls through when k0(?) >= 0 (signed).
  The `beq` branch at 0x9f98 targets 0xa004, is taken when k0(?) >= at(=[sym(syssegsz)]) (unsigned), and falls through when k0(?) < at(=[sym(syssegsz)]) (unsigned).
  The `beq` branch at 0x9fd0 targets 0x9fdc, is taken when (k0(?) & 0x4000) == 0, and falls through when (k0(?) & 0x4000) != 0.
  The `bgez` branch at 0xa040 targets 0xa114, is taken when k0(?) >= 0 (signed), and falls through when k0(?) < 0 (signed).
  The `bltz` branch at 0xa048 targets 0xa114, is taken when k0(?) < 0 (signed), and falls through when k0(?) >= 0 (signed).
  The `blez` branch at 0xa078 targets 0xa114, is taken when at(?) <= 0 (signed), and falls through when at(?) > 0 (signed).
  The `beq` branch at 0xa080 targets 0xa088 and is always taken.

- `kmissnxt` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x9f54 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x9f54-0xa080 (300 bytes).
  It occupies 300 bytes.
  2 such `lw` accesses load 4 bytes from sym(syssegsz) +0x0, including `lw` at 0x9f88, `lw` at 0xa068.
  The `ld` at 0x9fb8 loads 8 bytes from sym(kptbl) +0x0.
  The `ld` at 0x9ff8 loads 8 bytes from abs 0xffffffffffffc038.
  The `bltz` branch at 0x9f68 targets 0xa114, is taken when k0(?) < 0 (signed), and falls through when k0(?) >= 0 (signed).
  The `beq` branch at 0x9f98 targets 0xa004, is taken when k0(?) >= at(=[sym(syssegsz)]) (unsigned), and falls through when k0(?) < at(=[sym(syssegsz)]) (unsigned).
  The `beq` branch at 0x9fd0 targets 0x9fdc, is taken when (k0(?) & 0x4000) == 0, and falls through when (k0(?) & 0x4000) != 0.
  The `bgez` branch at 0xa040 targets 0xa114, is taken when k0(?) >= 0 (signed), and falls through when k0(?) < 0 (signed).
  The `bltz` branch at 0xa048 targets 0xa114, is taken when k0(?) < 0 (signed), and falls through when k0(?) >= 0 (signed).
  The `blez` branch at 0xa078 targets 0xa114, is taken when at(?) <= 0 (signed), and falls through when at(?) > 0 (signed).

- `kvmiss_hit` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa080 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa080-0xa11c (156 bytes).
  It occupies 156 bytes.
  The `sd` at 0xa0a0 stores 8 bytes to sym(_assregs) +0x18.
  The `sd` at 0xa0bc stores 8 bytes to sym(_assregs) +0x20.
  The `sd` at 0xa0d8 stores 8 bytes to sym(_assregs) +0x28.
  Calls assfail via direct with a0=sym(.data)+904, a1=sym(.data)+923, a2=0x0, a3=a3 at entry (arg3) (`j` at 0xa110).
  The `beq` branch at 0xa080 targets 0xa088 and is always taken.
  The instructions from 0xa118 to 0xa118 are not reached by any path from the entry, and their branches are not listed.

- `update_ust_i` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa11c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa11c-0xa154 (56 bytes).
  It occupies 56 bytes.
  The `jal` at 0xa124 calls spl7 with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa12c calls update_ust with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa138 calls splx with a0=ret(spl7), a1=?, a2=?, a3=?.
  The return at 0xa14c has v0 = ret(update_ust).

- `get_ust_nano` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa154 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa154-0xa184 (48 bytes).
  It occupies 48 bytes.
  The `sd` at 0xa180 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The return at 0xa17c has v0 = [sym(.sdata)+184].

- `ust_to_nano` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa184 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa184-0xa1b0 (44 bytes).
  It occupies 44 bytes.
  The `sd` at 0xa1ac stores 8 bytes to a1 (arg1 at entry) +0x0.
  The return at 0xa1a8 has v0 = [sym(.sdata)+184].

- `get_ust` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa1b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa1b0-0xa1bc (12 bytes).
  It occupies 12 bytes.
  The `sd` at 0xa1b8 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The return at 0xa1b4 has v0 = ?.

- `get_updated_ust_i` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa1bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa1bc-0xa1f8 (60 bytes).
  It occupies 60 bytes.
  The `jal` at 0xa1c4 calls spl7 with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa1cc calls update_ust with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa1dc calls splx with a0=ret(spl7), a1=?, a2=?, a3=?.
  The return at 0xa1f0 has v0 = [sym(ust_val)]:8.

- `nano_to_ust` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa1f8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa1f8-0xa220 (40 bytes).
  It occupies 40 bytes.
  The return at 0xa218 has v0 = ?.

- `ust_init` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa220 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa220-0xa240 (32 bytes).
  It occupies 32 bytes.
  The return at 0xa238 has v0 = 0x50.

- `update_ust` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa240 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa240-0xa254 (20 bytes).
  It occupies 20 bytes.
  The `ld` at 0xa248 loads 8 bytes from abs 0xffffffffaff20000.
  The `sd` at 0xa250 stores 8 bytes to sym(ust_val) +0x0.
  The return at 0xa24c has v0 = [0xffffffffaff20000]:8.

- `ecc_exception` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa260 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa260-0xa42c (460 bytes).
  It occupies 460 bytes.
  26 such `sd` accesses store 8 bytes to ?, including `sd` at 0xa288, `sd` at 0xa28c, `sd` at 0xa290.
  The `lb` at 0xa324 loads 1 byte from ?.
  2 such `sb` accesses store 1 byte to ?, including `sb` at 0xa330, `sb` at 0xa41c.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0xa340, `sw` at 0xa348, `sw` at 0xa350.
  The `ld` at 0xa36c loads 8 bytes from abs 0xffffffffffffc3c0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xa3a8, `lw` at 0xa3b0.
  23 such `ld` accesses load 8 bytes from ?, including `ld` at 0xa3c0, `ld` at 0xa3cc, `ld` at 0xa3d0.
  The `jal` at 0xa2f0 calls tfi_save with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa35c calls ecc_handler with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa3a0 calls ecc_panic with a0=ret(ecc_handler), a1=?, a2=?, a3=?.
  The `jal` at 0xa3b8 calls tfi_restore with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0xa328 targets 0xa334, is taken when k0(?) != 0, and falls through when k0(?) == 0.
  The `beq` branch at 0xa364 targets 0xa3a8, is taken when v0(=ret(ecc_handler)) == 0, and falls through when v0(=ret(ecc_handler)) != 0.

- `ULIsystrap_j` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa480 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa480-0xa488 (8 bytes).
  It occupies 8 bytes.
  The `sd` at 0xa484 stores 8 bytes to abs 0xffffffffffffc038.
  Calls ULIsystrap via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xa480).

- `systrap` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa500 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa500-0xa67c (380 bytes).
  It occupies 380 bytes.
  The `ld` at 0xa500 loads 8 bytes from abs 0xffffffffffffc028.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0xa508, `ld` at 0xa50c, `ld` at 0xa5d4.
  2 such `ld` accesses load 8 bytes from [-0x3fe8]:8 +0x3e0, including `ld` at 0xa510, `ld` at 0xa5d8.
  The `sd` at 0xa518 stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x240.
  The `sd` at 0xa520 stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x248.
  The `sd` at 0xa528 stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x180.
  The `sd` at 0xa530 stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x188.
  The `sd` at 0xa538 stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x190.
  The `sd` at 0xa540 stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x198.
  The `sd` at 0xa548 stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x1a0.
  The `sd` at 0xa54c stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x1a8.
  The `sd` at 0xa550 stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x1b0.
  The `sd` at 0xa554 stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x1b8.
  The `sd` at 0xa55c stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x1e0.
  The `sd` at 0xa560 stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x1e8.
  The `sd` at 0xa564 stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x1f0.
  The `sd` at 0xa568 stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x1f8.
  The `sd` at 0xa56c stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x200.
  The `sd` at 0xa570 stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x208.
  The `sd` at 0xa574 stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x210.
  The `sd` at 0xa578 stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x218.
  The `sd` at 0xa57c stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x258.
  The `sd` at 0xa588 stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x170.
  The `sd` at 0xa594 stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x288.
  The `sd` at 0xa598 stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x2c8.
  The `sd` at 0xa59c stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x178.
  The `sd` at 0xa5a0 stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x250.
  The `sd` at 0xa5a4 stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x260.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0xa5ac, `ld` at 0xa5e8.
  2 such `ld` accesses load 8 bytes from [[-0x3fe8]:8+992]:8 +0x170, including `ld` at 0xa5b0, `ld` at 0xa5f4.
  2 such `sb` accesses store 1 byte to abs 0xffffffffffffc04f, including `sb` at 0xa5b8, `sb` at 0xa600.
  The `ld` at 0xa5f8 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x178.
  The `ld` at 0xa5fc loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x250.
  The `ld` at 0xa604 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x240.
  The `ld` at 0xa608 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x1b8.
  The `ld` at 0xa60c loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x1b0.
  The `ld` at 0xa610 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x1a8.
  The `ld` at 0xa614 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x1a0.
  The `ld` at 0xa618 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x198.
  The `ld` at 0xa61c loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x190.
  The `ld` at 0xa620 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x188.
  The `ld` at 0xa624 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x180.
  The `ld` at 0xa630 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x260.
  The `ld` at 0xa634 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x288.
  The `ld` at 0xa638 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x1e0.
  The `ld` at 0xa640 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x1e8.
  The `ld` at 0xa644 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x1f0.
  The `ld` at 0xa648 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x1f8.
  The `ld` at 0xa650 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x200.
  The `ld` at 0xa654 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x208.
  The `ld` at 0xa658 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x210.
  The `ld` at 0xa65c loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x218.
  The `ld` at 0xa660 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x258.
  The `ld` at 0xa664 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x248.
  The `jal` at 0xa5a8 calls ktimer_switch with a0=[-0x3fe0]:8, a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa5c8 calls syscall with a0=[[[-0x3fe8]:8+992]:8+368]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xa5ec calls ktimer_switch with a0=[-0x3fe0]:8, a1=0x0, a2=?, a3=?.
  Calls _baduk via direct with a0=[[[-0x3fe8]:8+992]:8+384]:8, a1=[[[-0x3fe8]:8+992]:8+392]:8, a2=[[[-0x3fe8]:8+992]:8+400]:8, a3=[[[-0x3fe8]:8+992]:8+408]:8, a4=[[[-0x3fe8]:8+992]:8+416]:8, a5=[[[-0x3fe8]:8+992]:8+424]:8, a6=[[[-0x3fe8]:8+992]:8+432]:8, a7=[[[-0x3fe8]:8+992]:8+440]:8 (`j` at 0xa66c).
  Calls exception_exit via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0xa674).
  The `bne` branch at 0xa504 targets 0xa480, is taken when k0(=[-0x3fd8]:8) != 0, and falls through when k0(=[-0x3fd8]:8) == 0.
  The `bne` branch at 0xa5e0 targets 0xa674, is taken when v0(=ret(syscall)) != 0, and falls through when v0(=ret(syscall)) == 0.

- `VEC_syscall` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa67c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa67c-0xa69c (32 bytes).
  It occupies 32 bytes.
  The `jal` at 0xa694 calls cmn_err with a0=0x0, a1=sym(.data)+936, a2=a2 at entry (arg2), a3=a3 at entry (arg3).

- `get_fpc_csr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa6a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa6a0-0xa6c8 (40 bytes).
  It occupies 40 bytes.
  The return at 0xa6c0 has v0 = ?.

- `set_fpc_csr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa6c8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa6c8-0xa6f8 (48 bytes).
  It occupies 48 bytes.
  The return at 0xa6f0 has v0 = ?.

- `get_cpu_irr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa6f8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa6f8-0xa704 (12 bytes).
  It occupies 12 bytes.
  The return at 0xa6fc has v0 = ?.

- `get_fpc_irr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa704 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa704-0xa738 (52 bytes).
  It occupies 52 bytes.
  2 such `sw` accesses store 4 bytes to abs 0xffffffffffffc404, including `sw` at 0xa718, `sw` at 0xa728.
  The return at 0xa730 has v0 = ?.

- `reviderror` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa738 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa738-0xa748 (16 bytes).
  It occupies 16 bytes.
  The return at 0xa740 has v0 = 0x0.

- `get_cpu_cnf` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa748 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa748-0xa754 (12 bytes).
  It occupies 12 bytes.
  The return at 0xa74c has v0 = ?.

- `clear_sline` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa754 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa754-0xa76c (24 bytes).
  It occupies 24 bytes.
  The return at 0xa764 has v0 = ?.

- `scache_ild` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa76c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa76c-0xa798 (44 bytes).
  It occupies 44 bytes.
  The `sh` at 0xa774 stores 2 bytes to a1 (arg1 at entry) +0x0.
  The return at 0xa790 has v0 = ?.

- `dLine` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa798 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa798-0xa7f4 (92 bytes).
  It occupies 92 bytes.
  The `sd` at 0xa7b4 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `sw` at 0xa7cc stores 4 bytes to ?.
  The `sb` at 0xa7d4 stores 1 byte to ?.
  The `bne` branch at 0xa7e4 targets 0xa7c4, is taken when a0(?) < a2(=a0+32) (signed), and falls through when a0(?) >= a2(=a0+32) (signed).
  The return at 0xa7ec has v0 = ?.

- `dCacheSize` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa7f4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa7f4-0xa814 (32 bytes).
  It occupies 32 bytes.
  The return at 0xa80c has v0 = ?.

- `iLine` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa814 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa814-0xa884 (112 bytes).
  It occupies 112 bytes.
  The `sd` at 0xa830 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The `sd` at 0xa85c stores 8 bytes to ?.
  The `sb` at 0xa864 stores 1 byte to ?.
  The `bne` branch at 0xa874 targets 0xa840, is taken when a0(?) < a2(=a0+64) (signed), and falls through when a0(?) >= a2(=a0+64) (signed).
  The return at 0xa87c has v0 = ?.

- `iCacheSize` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa884 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa884-0xa8a8 (36 bytes).
  It occupies 36 bytes.
  The return at 0xa8a0 has v0 = ?.

- `sLine` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa8a8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa8a8-0xa930 (136 bytes).
  It occupies 136 bytes.
  The `sd` at 0xa8c4 stores 8 bytes to a1 (arg1 at entry) +0x0.
  4 such `sw` accesses store 4 bytes to ?, including `sw` at 0xa8ec, `sw` at 0xa8f4, `sw` at 0xa908.
  The `sh` at 0xa8fc stores 2 bytes to ?.
  The `jal` at 0xa8cc calls sCacheSize with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgtz` branch at 0xa920 targets 0xa8e4, is taken when v0(?) > 0 (signed), and falls through when v0(?) <= 0 (signed).
  The return at 0xa928 has v0 = ?.

- `sCacheSize` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa930 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa930-0xa950 (32 bytes).
  It occupies 32 bytes.
  The return at 0xa948 has v0 = ?.

- `bcopyb` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa950 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa950-0xa980 (48 bytes).
  It occupies 48 bytes.
  The `lbu` at 0xa968 loads 1 byte from ?.
  The `sb` at 0xa974 stores 1 byte to ?.
  The `blez` branch at 0xa950 targets 0xa978, is taken when a2 <= 0 (signed), and falls through when a2 > 0 (signed).
  The `bne` branch at 0xa970 targets 0xa95c, is taken when a5(?) < v0(=a2) (signed), and falls through when a5(?) >= v0(=a2) (signed).
  The return at 0xa978 has v0 = a2.

- `bcopyh` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa980 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa980-0xa9e4 (100 bytes).
  It occupies 100 bytes.
  The `lh` at 0xa9cc loads 2 bytes from ?.
  The `sh` at 0xa9d8 stores 2 bytes to ?.
  The `bne` branch at 0xa98c targets 0xa9a4, is taken when (a2 & 0x1) != 0, and falls through when (a2 & 0x1) == 0.
  The `bne` branch at 0xa994 targets 0xa9a4, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0xa99c targets 0xa9ac, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `blez` branch at 0xa9b8 targets 0xa9dc, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `beq` branch at 0xa9d4 targets 0xa9c0, is taken when a5(?) >= v0(?) (signed), and falls through when a5(?) < v0(?) (signed).
  The return at 0xa9a4 has v0 = -0x1.
  The return at 0xa9dc has v0 = a2.

- `bcopyw` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xa9e4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xa9e4-0xaa4c (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0xaa34 loads 4 bytes from ?.
  The `sw` at 0xaa40 stores 4 bytes to ?.
  The `bne` branch at 0xa9f0 targets 0xaa08, is taken when (a2 & 0x3) != 0, and falls through when (a2 & 0x3) == 0.
  The `bne` branch at 0xa9f8 targets 0xaa08, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0xaa00 targets 0xaa10, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `blez` branch at 0xaa20 targets 0xaa44, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `beq` branch at 0xaa3c targets 0xaa28, is taken when a5(?) >= v0(?) (signed), and falls through when a5(?) < v0(?) (signed).
  The return at 0xaa08 has v0 = -0x1.
  The return at 0xaa44 has v0 = a2.

- `bcopyd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xaa4c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xaa4c-0xaab4 (104 bytes).
  It occupies 104 bytes.
  The `ld` at 0xaa9c loads 8 bytes from ?.
  The `sd` at 0xaaa8 stores 8 bytes to ?.
  The `bne` branch at 0xaa58 targets 0xaa70, is taken when (a2 & 0x7) != 0, and falls through when (a2 & 0x7) == 0.
  The `bne` branch at 0xaa60 targets 0xaa70, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0xaa68 targets 0xaa78, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `blez` branch at 0xaa88 targets 0xaaac, is taken when a5(?) <= 0 (signed), and falls through when a5(?) > 0 (signed).
  The `beq` branch at 0xaaa4 targets 0xaa90, is taken when a5(?) >= v0(?) (signed), and falls through when a5(?) < v0(?) (signed).
  The return at 0xaa70 has v0 = -0x1.
  The return at 0xaaac has v0 = a2.

- `bcopyn` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xaab4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xaab4-0xab3c (136 bytes).
  It occupies 136 bytes.
  The `jal` at 0xaafc calls bcopyd [0xaa4c] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=-0x1, a7=0x4.
  The `jal` at 0xab0c calls bcopyb [0xa950] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=-0x1, a7=0x4.
  The `jal` at 0xab1c calls bcopyh [0xa980] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=-0x1, a7=0x4.
  The `jal` at 0xab2c calls bcopyw [0xa9e4] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=-0x1, a7=0x4.
  The `beq` branch at 0xaacc targets 0xab0c, is taken when a3 == at(=0x1), and falls through when a3 != at(=0x1).
  The `beq` branch at 0xaad4 targets 0xab1c, is taken when a3 == v0(=0x2), and falls through when a3 != v0(=0x2).
  The `beq` branch at 0xaadc targets 0xab2c, is taken when a3 == a7(=0x4), and falls through when a3 != a7(=0x4).
  The `beq` branch at 0xaae4 targets 0xaafc, is taken when a3 == t0(=0x8), and falls through when a3 != t0(=0x8).
  The `beq` branch at 0xab04 targets 0xaaec and is always taken.
  The `beq` branch at 0xab14 targets 0xaaec and is always taken.
  The `beq` branch at 0xab24 targets 0xaaec and is always taken.
  The `beq` branch at 0xab34 targets 0xaaec and is always taken.
  The return at 0xaaf4 has v0 = one of -0x1, ret(bcopyd), ret(bcopyb), ret(bcopyh), ret(bcopyw).

- `pio_bcopyin` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xab3c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xab3c-0xabc4 (136 bytes).
  It occupies 136 bytes.
  The `ld` at 0xab3c loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ld` at 0xab5c loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `jal` at 0xab88 calls pio_mapaddr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?, a7=[a0+16]:8.
  The `jal` at 0xab9c calls bcopyn [0xaab4] with a0=ret(pio_mapaddr), a1=a2 at entry (arg2), a2=?, a3=a4 at entry (arg4).
  The `bne` branch at 0xab54 targets 0xabbc, is taken when a1 < a7(=[a0+16]:8) (unsigned), and falls through when a1 >= a7(=[a0+16]:8) (unsigned).
  The `beq` branch at 0xab6c targets 0xabbc, is taken when a1 >= v1(=([a0+16]:8 + [a0+24]:8)) (unsigned), and falls through when a1 < v1(=([a0+16]:8 + [a0+24]:8)) (unsigned).
  The `beq` branch at 0xab7c targets 0xab88, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xabbc targets 0xabac and is always taken.
  The return at 0xabb4 has v0 = one of ret(bcopyn), 0x0.

- `pio_bcopyout` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xabc4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xabc4-0xac4c (136 bytes).
  It occupies 136 bytes.
  The `ld` at 0xabc4 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ld` at 0xabe4 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `jal` at 0xac10 calls pio_mapaddr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?, a7=[a0+16]:8.
  The `jal` at 0xac24 calls bcopyn [0xaab4] with a0=a2 at entry (arg2), a1=ret(pio_mapaddr), a2=?, a3=a4 at entry (arg4).
  The `bne` branch at 0xabdc targets 0xac44, is taken when a1 < a7(=[a0+16]:8) (unsigned), and falls through when a1 >= a7(=[a0+16]:8) (unsigned).
  The `beq` branch at 0xabf4 targets 0xac44, is taken when a1 >= v1(=([a0+16]:8 + [a0+24]:8)) (unsigned), and falls through when a1 < v1(=([a0+16]:8 + [a0+24]:8)) (unsigned).
  The `beq` branch at 0xac04 targets 0xac10, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xac44 targets 0xac34 and is always taken.
  The return at 0xac3c has v0 = one of ret(bcopyn), 0x0.

- `pio_badaddr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xac4c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xac4c-0xac7c (48 bytes).
  It occupies 48 bytes.
  The `jal` at 0xac58 calls pio_mapaddr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xac64 calls badaddr with a0=ret(pio_mapaddr), a1=a2 at entry (arg2), a2=?, a3=?.
  The return at 0xac74 has v0 = ret(badaddr).

- `pio_badaddr_val` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xac7c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xac7c-0xacb4 (56 bytes).
  It occupies 56 bytes.
  The `jal` at 0xac8c calls pio_mapaddr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xac9c calls badaddr_val with a0=ret(pio_mapaddr), a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=?.
  The return at 0xacac has v0 = ret(badaddr_val).

- `pio_wbadaddr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xacb4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xacb4-0xace4 (48 bytes).
  It occupies 48 bytes.
  The `jal` at 0xacc0 calls pio_mapaddr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xaccc calls wbadaddr with a0=ret(pio_mapaddr), a1=a2 at entry (arg2), a2=?, a3=?.
  The return at 0xacdc has v0 = ret(wbadaddr).

- `pio_wbadaddr_val` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xace4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xace4-0xad24 (64 bytes).
  It occupies 64 bytes.
  The `jal` at 0xacf4 calls pio_mapaddr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xad0c calls wbadaddr_val with a0=ret(pio_mapaddr), a1=a2 at entry (arg2), a2=?, a3=?.
  The return at 0xad1c has v0 = ret(wbadaddr_val).

- `__dcache_inval` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xad30 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xad30-0xadf8 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xad38 loads 4 bytes from abs 0xffffffffffffc65c.
  The `blez` branch at 0xad30 targets 0xaed4, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `bne` branch at 0xad40 targets 0xadbc, is taken when a7(=[-0x39a4]) < a1 (unsigned), and falls through when a7(=[-0x39a4]) >= a1 (unsigned).
  The `beq` branch at 0xad54 targets 0xadb0, is taken when t0(=a0) >= t1(=(a0 + a1)) (unsigned), and falls through when t0(=a0) < t1(=(a0 + a1)) (unsigned).
  The `beq` branch at 0xad64 targets 0xad80, is taken when (t0(=a0) & 0x7f) == 0, and falls through when (t0(=a0) & 0x7f) != 0.
  The `beq` branch at 0xad78 targets 0xadb0, is taken when t0(?) >= t1(=(a0 + a1)-128) (unsigned), and falls through when t0(?) < t1(=(a0 + a1)-128) (unsigned).
  The `beq` branch at 0xad84 targets 0xada0, is taken when (t1(=(a0 + a1)-128) & 0x7f) == 0, and falls through when (t1(=(a0 + a1)-128) & 0x7f) != 0.
  The `beq` branch at 0xad98 targets 0xadb0, is taken when t0(?) >= t1(?) (unsigned), and falls through when t0(?) < t1(?) (unsigned).
  The `bne` branch at 0xada8 targets 0xada0, is taken when t0(?) < t1(?) (unsigned), and falls through when t0(?) >= t1(?) (unsigned).
  The `bne` branch at 0xade4 targets 0xadd8, is taken when t0(?) < t1(=table(0xa80000001fffff80)) (unsigned), and falls through when t0(?) >= t1(=table(0xa80000001fffff80)) (unsigned).
  The return at 0xadb4 has v0 = ?.
  The return at 0xadf0 has v0 = ?.

- `__dcache_wb` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xadf8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xadf8-0xae88 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xae00 loads 4 bytes from abs 0xffffffffffffc65c.
  The `blez` branch at 0xadf8 targets 0xaed4, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `bne` branch at 0xae08 targets 0xae4c, is taken when a7(=[-0x39a4]) < a1 (unsigned), and falls through when a7(=[-0x39a4]) >= a1 (unsigned).
  The `beq` branch at 0xae1c targets 0xae40, is taken when t0(=a0) >= t1(=(a0 + a1)) (unsigned), and falls through when t0(=a0) < t1(=(a0 + a1)) (unsigned).
  The `bne` branch at 0xae38 targets 0xae30, is taken when t0(?) < t1(=(a0 + a1)-128) (unsigned), and falls through when t0(?) >= t1(=(a0 + a1)-128) (unsigned).
  The `bne` branch at 0xae74 targets 0xae68, is taken when t0(?) < t1(=table(0xa80000001fffff80)) (unsigned), and falls through when t0(?) >= t1(=table(0xa80000001fffff80)) (unsigned).
  The return at 0xae44 has v0 = ?.
  The return at 0xae80 has v0 = ?.

- `__dcache_wb_inval` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xae88 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xae88-0xaf18 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xae90 loads 4 bytes from abs 0xffffffffffffc65c.
  The `blez` branch at 0xae88 targets 0xaed4, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `bne` branch at 0xae98 targets 0xaedc, is taken when a7(=[-0x39a4]) < a1 (unsigned), and falls through when a7(=[-0x39a4]) >= a1 (unsigned).
  The `beq` branch at 0xaeac targets 0xaed0, is taken when t0(=a0) >= t1(=(a0 + a1)) (unsigned), and falls through when t0(=a0) < t1(=(a0 + a1)) (unsigned).
  The `bne` branch at 0xaec8 targets 0xaec0, is taken when t0(?) < t1(=(a0 + a1)-128) (unsigned), and falls through when t0(?) >= t1(=(a0 + a1)-128) (unsigned).
  The `bne` branch at 0xaf04 targets 0xaef8, is taken when t0(?) < t1(=table(0xa80000001fffff80)) (unsigned), and falls through when t0(?) >= t1(=table(0xa80000001fffff80)) (unsigned).
  The return at 0xaed4 has v0 = ?.
  The return at 0xaf10 has v0 = ?.

- `__icache_inval` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xaf18 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xaf18-0xafa8 (144 bytes).
  It occupies 144 bytes.
  The `lw` at 0xaf20 loads 4 bytes from abs 0xffffffffffffc65c.
  The `blez` branch at 0xaf18 targets 0xb05c, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `bne` branch at 0xaf28 targets 0xaf6c, is taken when a7(=[-0x39a4]) < a1 (unsigned), and falls through when a7(=[-0x39a4]) >= a1 (unsigned).
  The `beq` branch at 0xaf3c targets 0xaf60, is taken when t0(=a0) >= t1(=(a0 + a1)) (unsigned), and falls through when t0(=a0) < t1(=(a0 + a1)) (unsigned).
  The `bne` branch at 0xaf58 targets 0xaf50, is taken when t0(?) < t1(=(a0 + a1)-128) (unsigned), and falls through when t0(?) >= t1(=(a0 + a1)-128) (unsigned).
  The `bne` branch at 0xaf94 targets 0xaf88, is taken when t0(?) < t1(=table(0xa80000001fffff80)) (unsigned), and falls through when t0(?) >= t1(=table(0xa80000001fffff80)) (unsigned).
  The return at 0xaf64 has v0 = ?.
  The return at 0xafa0 has v0 = ?.

- `__cache_wb_inval` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xafa8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xafa8-0xb064 (188 bytes).
  It occupies 188 bytes.
  The `lw` at 0xafb0 loads 4 bytes from abs 0xffffffffffffc65c.
  The `lw` at 0xb004 loads 4 bytes from sym(pdcache_size) +0x0.
  The `blez` branch at 0xafa8 targets 0xb05c, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `bne` branch at 0xafc4 targets 0xafd0, is taken when a4(?) < a1 (unsigned), and falls through when a4(?) >= a1 (unsigned).
  The `beq` branch at 0xafdc targets 0xb044, is taken when a1 >= a5(?) (unsigned), and falls through when a1 < a5(?) (unsigned).
  The `bne` branch at 0xb014 targets 0xb020, is taken when a6(=a1) < t2(?) (unsigned), and falls through when a6(=a1) >= t2(?) (unsigned).
  The `bne` branch at 0xb03c targets 0xb020, is taken when a5(?) < a6(?) (unsigned), and falls through when a5(?) >= a6(?) (unsigned).
  The `bne` branch at 0xb050 targets 0xb044, is taken when t0(?) < a4(?) (unsigned), and falls through when t0(?) >= a4(?) (unsigned).
  The return at 0xb05c has v0 = ?.

- `config_cache` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb064 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb064-0xb134 (208 bytes).
  It occupies 208 bytes.
  The `sw` at 0xb0bc stores 4 bytes to sym(picache_size) +0x0.
  The `sw` at 0xb0f0 stores 4 bytes to sym(pdcache_size) +0x0.
  The `sw` at 0xb110 stores 4 bytes to sym(scache_linemask) +0x0.
  The return at 0xb12c has v0 = ?.

- `size_2nd_cache` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb134 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb134-0xb1e0 (172 bytes).
  It occupies 172 bytes.
  The `lw` at 0xb168 loads 4 bytes from ?.
  The `bne` branch at 0xb13c targets 0xb14c and is always taken.
  The `beq` branch at 0xb170 targets 0xb14c, is taken when at(=0x1000000) >= v0(?) (signed), and falls through when at(=0x1000000) < v0(?) (signed).
  The `beq` branch at 0xb1bc targets 0xb1d8, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `bne` branch at 0xb1d0 targets 0xb1a0, is taken when v0(?) < at(=0x1000000) (signed), and falls through when v0(?) >= at(=0x1000000) (signed).
  The return at 0xb1d8 has v0 = ?.
  The instructions from 0xb144 to 0xb148 are not reached by any path from the entry, and their branches are not listed.

- `_c_hwb` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb1e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb1e0-0xb240 (96 bytes).
  It occupies 96 bytes.
  The `bne` branch at 0xb1ec targets 0xb228, is taken when a0 < t0(=0x1) (unsigned), and falls through when a0 >= t0(=0x1) (unsigned).
  The `beq` branch at 0xb1f4 targets 0xb234, is taken when a0 == t0(=0x1), and falls through when a0 != t0(=0x1).
  The `beq` branch at 0xb200 targets 0xb220, is taken when a0 == t0(=0x3), and falls through when a0 != t0(=0x3).
  The `beq` branch at 0xb220 targets 0xb218 and is always taken.
  The `beq` branch at 0xb22c targets 0xb218 and is always taken.
  The `beq` branch at 0xb238 targets 0xb218 and is always taken.
  The return at 0xb218 has v0 = one of ?, -0x1, 0x0.

- `_c_hwbinv` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb240 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb240-0xb294 (84 bytes).
  It occupies 84 bytes.
  The `bne` branch at 0xb24c targets 0xb280, is taken when a0 < t0(=0x1) (unsigned), and falls through when a0 >= t0(=0x1) (unsigned).
  The `beq` branch at 0xb254 targets 0xb288, is taken when a0 == t0(=0x1), and falls through when a0 != t0(=0x1).
  The `beq` branch at 0xb260 targets 0xb280, is taken when a0 == t0(=0x3), and falls through when a0 != t0(=0x3).
  The `beq` branch at 0xb280 targets 0xb278 and is always taken.
  The `beq` branch at 0xb28c targets 0xb278 and is always taken.
  The return at 0xb278 has v0 = one of ?, -0x1, 0x0.

- `_c_hinv` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb294 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb294-0xb2e0 (76 bytes).
  It occupies 76 bytes.
  The `bne` branch at 0xb2a0 targets 0xb2c8, is taken when a0 < t0(=0x1) (unsigned), and falls through when a0 >= t0(=0x1) (unsigned).
  The `beq` branch at 0xb2a8 targets 0xb2d4, is taken when a0 == t0(=0x1), and falls through when a0 != t0(=0x1).
  The `beq` branch at 0xb2cc targets 0xb2c0 and is always taken.
  The `beq` branch at 0xb2d8 targets 0xb2c0 and is always taken.
  The return at 0xb2c0 has v0 = one of ?, 0x0.

- `_c_ilt_n_ecc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb2e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb2e0-0xb32c (76 bytes).
  It occupies 76 bytes.
  The `sw` at 0xb308 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `sw` at 0xb310 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `bne` branch at 0xb2ec targets 0xb314, is taken when a0 < t0(=0x1) (unsigned), and falls through when a0 >= t0(=0x1) (unsigned).
  The `beq` branch at 0xb2f4 targets 0xb320, is taken when a0 == t0(=0x1), and falls through when a0 != t0(=0x1).
  The `beq` branch at 0xb318 targets 0xb300 and is always taken.
  The `beq` branch at 0xb324 targets 0xb300 and is always taken.
  The return at 0xb30c has v0 = 0x0.

- `_c_ilt` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb32c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb32c-0xb374 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0xb350 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `bne` branch at 0xb338 targets 0xb35c, is taken when a0 < t0(=0x1) (unsigned), and falls through when a0 >= t0(=0x1) (unsigned).
  The `beq` branch at 0xb340 targets 0xb368, is taken when a0 == t0(=0x1), and falls through when a0 != t0(=0x1).
  The `beq` branch at 0xb360 targets 0xb34c and is always taken.
  The `beq` branch at 0xb36c targets 0xb34c and is always taken.
  The return at 0xb354 has v0 = 0x0.

- `_c_ist` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb374 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb374-0xb3bc (72 bytes).
  It occupies 72 bytes.
  The `lw` at 0xb378 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `bne` branch at 0xb388 targets 0xb3a4, is taken when a0 < t0(=0x1) (unsigned), and falls through when a0 >= t0(=0x1) (unsigned).
  The `beq` branch at 0xb390 targets 0xb3b0, is taken when a0 == t0(=0x1), and falls through when a0 != t0(=0x1).
  The return at 0xb39c has v0 = 0x0.
  The return at 0xb3a8 has v0 = 0x0.
  The return at 0xb3b4 has v0 = 0x0.

- `getecc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb3bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb3bc-0xb3c8 (12 bytes).
  It occupies 12 bytes.
  The return at 0xb3c0 has v0 = ?.

- `setecc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb3c8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb3c8-0xb3d4 (12 bytes).
  It occupies 12 bytes.
  The return at 0xb3cc has v0 = ?.

- `runcached` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb3d4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb3d4-0xb3f0 (28 bytes).
  It occupies 28 bytes.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb3e8).

- `uncached` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb3f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb3f0-0xb40c (28 bytes).
  It occupies 28 bytes.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb404).

- `_munge_decc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb40c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb40c-0xb424 (24 bytes).
  It occupies 24 bytes.
  The return at 0xb41c has v0 = ?.

- `_read_tag` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb424 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb424-0xb47c (88 bytes).
  It occupies 88 bytes.
  The `sw` at 0xb458 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `bne` branch at 0xb430 targets 0xb464, is taken when a0 < t0(=0x1) (unsigned), and falls through when a0 >= t0(=0x1) (unsigned).
  The `beq` branch at 0xb438 targets 0xb470, is taken when a0 == t0(=0x1), and falls through when a0 != t0(=0x1).
  The `beq` branch at 0xb468 targets 0xb444 and is always taken.
  The `beq` branch at 0xb474 targets 0xb444 and is always taken.
  The return at 0xb45c has v0 = 0x0.

- `_write_tag` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb47c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb47c-0xb4c0 (68 bytes).
  It occupies 68 bytes.
  The `lw` at 0xb47c loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `bne` branch at 0xb48c targets 0xb4a8, is taken when a0 < t0(=0x1) (unsigned), and falls through when a0 >= t0(=0x1) (unsigned).
  The `beq` branch at 0xb494 targets 0xb4b4, is taken when a0 == t0(=0x1), and falls through when a0 != t0(=0x1).
  The `beq` branch at 0xb4ac targets 0xb4a0 and is always taken.
  The `beq` branch at 0xb4b8 targets 0xb4a0 and is always taken.
  The return at 0xb4a0 has v0 = ?.

- `flush_cache` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb4c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb4c0-0xb4f0 (48 bytes).
  It occupies 48 bytes.
  The `lw` at 0xb4c4 loads 4 bytes from abs 0xffffffffffffc65c.
  The `jal` at 0xb4d8 calls __cache_wb_inval with a0=0xa800000020000000, a1=[-0x39a4], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xb4e8 has v0 = ret(__cache_wb_inval).

- `cacheOP` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb4f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb4f0-0xb66c (380 bytes).
  It occupies 380 bytes.
  The `lw` at 0xb4f0 loads 4 bytes from a0 (arg0 at entry) +0x10.
  The `lw` at 0xb4f8 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0xb500 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `ld` at 0xb508 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xb50c loads 4 bytes from a0 (arg0 at entry) +0x8.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0xb554, `sw` at 0xb55c, `sw` at 0xb568.
  The `jalr` at 0xb548 calls (unknown callee) with a0=a0 at entry (arg0), a1=[a0]:8, a2=0xb550, a3=a3 at entry (arg3).
  The return at 0xb564 has v0 = ?.
  The instructions from 0xb56c to 0xb668 are not reached by any path from the entry, and their branches are not listed.

- `__prefetch_store` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb66c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb66c-0xb69c (48 bytes).
  It occupies 48 bytes.
  The `blez` branch at 0xb66c targets 0xb694, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `bgez` branch at 0xb68c targets 0xb680, is taken when a1(?) >= 0 (signed), and falls through when a1(?) < 0 (signed).
  The return at 0xb694 has v0 = ?.

- `__prefetch_load` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb69c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb69c-0xb6cc (48 bytes).
  It occupies 48 bytes.
  The `blez` branch at 0xb69c targets 0xb6c4, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `bgez` branch at 0xb6bc targets 0xb6b0, is taken when a1(?) >= 0 (signed), and falls through when a1(?) < 0 (signed).
  The return at 0xb6c4 has v0 = ?.

- `sw_cachesynch_patch_insts` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb6cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb6cc-0xb6e0 (20 bytes).
  It occupies 20 bytes.

- `cache_sync_bp_start` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb6d8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb6d8-0xb6e0 (8 bytes).
  It occupies 8 bytes.

- `cache_sync` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb6e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb6e0-0xb7cc (236 bytes).
  It occupies 236 bytes.
  The `sd` at 0xb6e0 stores 8 bytes to abs 0xffffffffffffc040.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc038, including `ld` at 0xb774, `ld` at 0xb7bc.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc040, including `ld` at 0xb77c, `ld` at 0xb7c0.
  Calls longway via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xb6f4).
  Calls longway via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xb710).
  Calls longway via direct with a0=?, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xb778).
  The `blez` branch at 0xb6e4 targets 0xb7ac, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `bne` branch at 0xb6ec targets 0xb6fc, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xb708 targets 0xb718, is taken when t0(=(a0 + a1)-1) != 0, and falls through when t0(=(a0 + a1)-1) == 0.
  The `beq` branch at 0xb740 targets 0xb74c, is taken when a1(?) >= t0(?) (signed), and falls through when a1(?) < t0(?) (signed).
  The `bgez` branch at 0xb76c targets 0xb780, is taken when at(?) >= 0 (signed), and falls through when at(?) < 0 (signed).
  The `bne` branch at 0xb794 targets 0xb75c, is taken when k0(?) < k1(?) (unsigned), and falls through when k0(?) >= k1(?) (unsigned).
  The `bne` branch at 0xb7a4 targets 0xb718, is taken when a1(?) != 0, and falls through when a1(?) == 0.

- `cache_sync_bp_end` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb6e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb6e0-0xb750 (112 bytes).
  It occupies 112 bytes.
  The `sd` at 0xb6e0 stores 8 bytes to abs 0xffffffffffffc040.
  Calls longway via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xb6f4).
  Calls longway via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xb710).
  The `blez` branch at 0xb6e4 targets 0xb7ac, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `bne` branch at 0xb6ec targets 0xb6fc, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0xb708 targets 0xb718, is taken when t0(=(a0 + a1)-1) != 0, and falls through when t0(=(a0 + a1)-1) == 0.
  The `beq` branch at 0xb740 targets 0xb74c, is taken when a1 >= t0(?) (signed), and falls through when a1 < t0(?) (signed).

- `sw_cachesynch_op1` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb750 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb750-0xb754 (4 bytes).
  It occupies 4 bytes.

- `sw_cachesynch_op2` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb754 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb754-0xb75c (8 bytes).
  It occupies 8 bytes.

- `sw_cachesynch_op4` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb75c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb75c-0xb798 (60 bytes).
  It occupies 60 bytes.
  The `ld` at 0xb774 loads 8 bytes from abs 0xffffffffffffc038.
  The `ld` at 0xb77c loads 8 bytes from abs 0xffffffffffffc040.
  Calls longway via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xb778).
  The `bgez` branch at 0xb76c targets 0xb780, is taken when at(?) >= 0 (signed), and falls through when at(?) < 0 (signed).
  The `bne` branch at 0xb794 targets 0xb75c, is taken when k0(?) < k1(?) (unsigned), and falls through when k0(?) >= k1(?) (unsigned).

- `sw_cachesynch_op3` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb798 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb798-0xb7cc (52 bytes).
  It occupies 52 bytes.
  The `ld` at 0xb7bc loads 8 bytes from abs 0xffffffffffffc038.
  The `ld` at 0xb7c0 loads 8 bytes from abs 0xffffffffffffc040.
  The `bne` branch at 0xb7a4 targets 0xb718, is taken when a1(?) != 0, and falls through when a1(?) == 0.

- `cache_tag_ecc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb7cc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb7cc-0xb84c (128 bytes).
  It occupies 128 bytes.
  The `lwu` at 0xb80c loads 4 bytes from sym(.data) +0x3c0.
  The `beq` branch at 0xb800 targets 0xb844, is taken when a1(=sym(.data)+960) == a2(=sym(.data)+1016), and falls through when a1(=sym(.data)+960) != a2(=sym(.data)+1016).
  The `beq` branch at 0xb814 targets 0xb82c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xb824 targets 0xb814 and is always taken.
  The `beq` branch at 0xb83c targets 0xb7e8 and is always taken.
  The return at 0xb844 has v0 = ?.

- `VEC_trap` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb850 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb850-0xb884 (52 bytes).
  It occupies 52 bytes.
  The `jal` at 0xb86c calls trap with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=s0 at entry, a3=a3 at entry (arg3).
  Calls exception_exit via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0xb87c).

- `soft_trap` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb850 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb850-0xb884 (52 bytes).
  It occupies 52 bytes.
  The `jal` at 0xb86c calls trap with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=s0 at entry, a3=a3 at entry (arg3).
  Calls exception_exit via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0xb87c).

- `uli_getasids` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb890 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb890-0xb89c (12 bytes).
  It occupies 12 bytes.
  The return at 0xb894 has v0 = ?.

- `uli_setasids` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb89c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb89c-0xb8a8 (12 bytes).
  It occupies 12 bytes.
  The return at 0xb8a0 has v0 = ?.

- `uli_eret` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb8a8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb8a8-0xb8d4 (44 bytes).
  It occupies 44 bytes.
  The `ld` at 0xb8a8 loads 8 bytes from a0 (arg0 at entry) +0xa0.
  The `ld` at 0xb8b0 loads 8 bytes from a0 (arg0 at entry) +0x78.
  The `ld` at 0xb8b8 loads 8 bytes from a0 (arg0 at entry) +0x70.
  The `ld` at 0xb8c0 loads 8 bytes from a0 (arg0 at entry) +0x68.
  The `ld` at 0xb8cc loads 8 bytes from a0 (arg0 at entry) +0x80.

- `spl0` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb8e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb8e0-0xb8fc (28 bytes).
  It occupies 28 bytes.
  The return at 0xb8f4 has v0 = ?.

- `spl1` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb8fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb8fc-0xb914 (24 bytes).
  It occupies 24 bytes.
  The return at 0xb90c has v0 = ?.

- `spl3` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb8fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb8fc-0xb914 (24 bytes).
  It occupies 24 bytes.
  The return at 0xb90c has v0 = ?.

- `spl5` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb8fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb8fc-0xb914 (24 bytes).
  It occupies 24 bytes.
  The return at 0xb90c has v0 = ?.

- `spl6` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb8fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb8fc-0xb914 (24 bytes).
  It occupies 24 bytes.
  The return at 0xb90c has v0 = ?.

- `splgio0` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb8fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb8fc-0xb914 (24 bytes).
  It occupies 24 bytes.
  The return at 0xb90c has v0 = ?.

- `splgio1` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb8fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb8fc-0xb914 (24 bytes).
  It occupies 24 bytes.
  The return at 0xb90c has v0 = ?.

- `splgio2` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb8fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb8fc-0xb914 (24 bytes).
  It occupies 24 bytes.
  The return at 0xb90c has v0 = ?.

- `splhi` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb8fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb8fc-0xb914 (24 bytes).
  It occupies 24 bytes.
  The return at 0xb90c has v0 = ?.

- `splhi_relnet` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb8fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb8fc-0xb914 (24 bytes).
  It occupies 24 bytes.
  The return at 0xb90c has v0 = ?.

- `splimp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb8fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb8fc-0xb914 (24 bytes).
  It occupies 24 bytes.
  The return at 0xb90c has v0 = ?.

- `splnet` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb8fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb8fc-0xb914 (24 bytes).
  It occupies 24 bytes.
  The return at 0xb90c has v0 = ?.

- `splretr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb8fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb8fc-0xb914 (24 bytes).
  It occupies 24 bytes.
  The return at 0xb90c has v0 = ?.

- `spltty` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb8fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb8fc-0xb914 (24 bytes).
  It occupies 24 bytes.
  The return at 0xb90c has v0 = ?.

- `splvme` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb8fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb8fc-0xb914 (24 bytes).
  It occupies 24 bytes.
  The return at 0xb90c has v0 = ?.

- `splhintr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb8fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb8fc-0xb914 (24 bytes).
  It occupies 24 bytes.
  The return at 0xb90c has v0 = ?.

- `issplhi` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb914 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb914-0xb93c (40 bytes).
  It occupies 40 bytes.
  The `bne` branch at 0xb91c targets 0xb930, is taken when a1(?) != v1(=0x1), and falls through when a1(?) == v1(=0x1).
  The `bne` branch at 0xb928 targets 0xb934, is taken when (a0 & 0x1000) != 0, and falls through when (a0 & 0x1000) == 0.
  The return at 0xb934 has v0 = one of 0x0, 0x1.

- `issplprof` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb93c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb93c-0xb964 (40 bytes).
  It occupies 40 bytes.
  The `bne` branch at 0xb944 targets 0xb958, is taken when a1(?) != v1(=0x1), and falls through when a1(?) == v1(=0x1).
  The `bne` branch at 0xb950 targets 0xb95c, is taken when (a0 & 0xa000) != 0, and falls through when (a0 & 0xa000) == 0.
  The return at 0xb95c has v0 = one of 0x0, 0x1.

- `isspl7` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb964 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb964-0xb994 (48 bytes).
  It occupies 48 bytes.
  The `bne` branch at 0xb96c targets 0xb97c, is taken when (a0 & 0x1) != 0, and falls through when (a0 & 0x1) == 0.
  The `beq` branch at 0xb974 targets 0xb98c and is always taken.
  The `bne` branch at 0xb980 targets 0xb98c, is taken when (a0 & 0xff00) != 0, and falls through when (a0 & 0xff00) == 0.
  The return at 0xb98c has v0 = one of 0x0, 0x1.

- `spl65` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb994 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb994-0xb9ac (24 bytes).
  It occupies 24 bytes.
  The return at 0xb9a4 has v0 = ?.

- `splprof` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb994 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb994-0xb9ac (24 bytes).
  It occupies 24 bytes.
  The return at 0xb9a4 has v0 = ?.

- `spl7` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb9ac (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb9ac-0xb9c4 (24 bytes).
  It occupies 24 bytes.
  The return at 0xb9bc has v0 = ?.

- `splerr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb9ac (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb9ac-0xb9c4 (24 bytes).
  It occupies 24 bytes.
  The return at 0xb9bc has v0 = ?.

- `splecc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb9c4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb9c4-0xb9e4 (32 bytes).
  It occupies 32 bytes.
  The return at 0xb9dc has v0 = ?.

- `splx` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb9e4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb9e4-0xba00 (28 bytes).
  It occupies 28 bytes.
  The return at 0xb9f8 has v0 = ?.

- `splxecc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xb9e4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xb9e4-0xba00 (28 bytes).
  It occupies 28 bytes.
  The return at 0xb9f8 has v0 = ?.

- `isspl0` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xba00 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xba00-0xba20 (32 bytes).
  It occupies 32 bytes.
  The `bne` branch at 0xba08 targets 0xba18, is taken when a0(?) != v1(=0xff01), and falls through when a0(?) == v1(=0xff01).
  The return at 0xba10 has v0 = 0x1.
  The return at 0xba18 has v0 = 0x0.

- `delay_for_intr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xba20 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xba20-0xba28 (8 bytes).
  It occupies 8 bytes.
  The return at 0xba20 has v0 = ?.

- `VEC_fpe` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xba30 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xba30-0xba9c (108 bytes).
  It occupies 108 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0xba50, `ld` at 0xba54.
  The `ld` at 0xba58 loads 8 bytes from abs 0xffffffffffffc018.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0xba5c, `lw` at 0xba68.
  The `sw` at 0xba64 stores 4 bytes to [-0x3fe8]:8 +0x540.
  The `sw` at 0xba6c stores 4 bytes to [-0x3fe8]:8 +0x544.
  The `jal` at 0xba48 calls trap with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=s0 at entry, a3=a3 at entry (arg3).
  The `jal` at 0xba84 calls fp_intr with a0=?, a1=?, a2=?, a3=?.
  Calls exception_exit via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0xba94).
  The `bne` branch at 0xba34 targets 0xba50, is taken when (s0 & 0x18) != 0, and falls through when (s0 & 0x18) == 0.
  The `bgez` branch at 0xba60 targets 0xba70, is taken when t0(?) >= 0 (signed), and falls through when t0(?) < 0 (signed).

- `tfi_save` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbaa0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbaa0-0xbad8 (56 bytes).
  It occupies 56 bytes.
  11 such `sd` accesses store 8 bytes to ?, including `sd` at 0xbaa0, `sd` at 0xbaa8, `sd` at 0xbab0.
  The return at 0xbad0 has v0 = ?.

- `tfi_restore` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbad8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbad8-0xbb10 (56 bytes).
  It occupies 56 bytes.
  11 such `ld` accesses load 8 bytes from ?, including `ld` at 0xbad8, `ld` at 0xbadc, `ld` at 0xbae0.
  The return at 0xbb08 has v0 = ?.

- `assbuffer` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbb10 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbb10-0xbb14 (4 bytes).
  It occupies 4 bytes.

- `assfail` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbb14 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbb14-0xbf50 (1084 bytes).
  It occupies 1084 bytes.
  The `sd` at 0xbb2c stores 8 bytes to sym(_assregs) +0x8.
  The `lw` at 0xbb4c loads 4 bytes from sym(panic_cpu) +0x0.
  The `lh` at 0xbb58 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `sw` at 0xbb70 stores 4 bytes to sym(panic_cpu) +0x0.
  The `sd` at 0xbb8c stores 8 bytes to sym(_assregs) +0xd8.
  2 such `sd` accesses store 8 bytes to sym(_assregs) +0xf8, including `sd` at 0xbbac, `sd` at 0xbf08.
  The `sd` at 0xbbcc stores 8 bytes to sym(_assregs) +0xe0.
  The `sd` at 0xbbe8 stores 8 bytes to sym(_assregs) +0x10.
  The `sd` at 0xbc04 stores 8 bytes to sym(_assregs) +0x30.
  The `sd` at 0xbc20 stores 8 bytes to sym(_assregs) +0x38.
  The `sd` at 0xbc3c stores 8 bytes to sym(_assregs) +0x40.
  The `sd` at 0xbc58 stores 8 bytes to sym(_assregs) +0x48.
  The `sd` at 0xbc74 stores 8 bytes to sym(_assregs) +0x50.
  The `sd` at 0xbc90 stores 8 bytes to sym(_assregs) +0x58.
  The `sd` at 0xbcac stores 8 bytes to sym(_assregs) +0x60.
  The `sd` at 0xbcc8 stores 8 bytes to sym(_assregs) +0x68.
  The `sd` at 0xbce4 stores 8 bytes to sym(_assregs) +0x70.
  The `sd` at 0xbd00 stores 8 bytes to sym(_assregs) +0x78.
  The `sd` at 0xbd1c stores 8 bytes to sym(_assregs) +0x80.
  The `sd` at 0xbd38 stores 8 bytes to sym(_assregs) +0x88.
  The `sd` at 0xbd54 stores 8 bytes to sym(_assregs) +0x90.
  The `sd` at 0xbd70 stores 8 bytes to sym(_assregs) +0x98.
  The `sd` at 0xbd8c stores 8 bytes to sym(_assregs) +0xa0.
  The `sd` at 0xbda8 stores 8 bytes to sym(_assregs) +0xa8.
  The `sd` at 0xbdc4 stores 8 bytes to sym(_assregs) +0xb0.
  The `sd` at 0xbde0 stores 8 bytes to sym(_assregs) +0xb8.
  The `sd` at 0xbdfc stores 8 bytes to sym(_assregs) +0xc0.
  The `sd` at 0xbe18 stores 8 bytes to sym(_assregs) +0xc8.
  The `sd` at 0xbe34 stores 8 bytes to sym(_assregs) +0xd0.
  The `sd` at 0xbe50 stores 8 bytes to sym(_assregs) +0xe8.
  The `sd` at 0xbe6c stores 8 bytes to sym(_assregs) +0xf0.
  The `sd` at 0xbe88 stores 8 bytes to sym(_assregs) +0x100.
  The `sd` at 0xbea8 stores 8 bytes to sym(_assregs) +0x108.
  The `sd` at 0xbec8 stores 8 bytes to sym(_assregs) +0x118.
  The `sd` at 0xbee8 stores 8 bytes to sym(_assregs) +0x110.
  The `sd` at 0xbf28 stores 8 bytes to sym(_assregs) +0x120.
  The `sd` at 0xbf44 stores 8 bytes to sym(_assregs) +0x160.
  Calls _assfail via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xbf48).
  The `bne` branch at 0xbb50 targets 0xbf48, is taken when v0(=[sym(panic_cpu)]) != at(=-0x1), and falls through when v0(=[sym(panic_cpu)]) == at(=-0x1).

- `getsr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbf50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbf50-0xbf5c (12 bytes).
  It occupies 12 bytes.
  The return at 0xbf54 has v0 = ?.

- `setsr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbf5c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbf5c-0xbf6c (16 bytes).
  It occupies 16 bytes.
  The return at 0xbf64 has v0 = ?.

- `getpc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbf6c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbf6c-0xbf74 (8 bytes).
  It occupies 8 bytes.
  The return at 0xbf6c has v0 = ra.

- `getsp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbf74 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbf74-0xbf7c (8 bytes).
  It occupies 8 bytes.
  The return at 0xbf74 has v0 = sp.

- `getpcsp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbf7c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbf7c-0xbf88 (12 bytes).
  It occupies 12 bytes.
  The `sd` at 0xbf7c stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `sd` at 0xbf84 stores 8 bytes to a1 (arg1 at entry) +0x0.
  The return at 0xbf80 has v0 = ?.

- `getgp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbf88 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbf88-0xbf90 (8 bytes).
  It occupies 8 bytes.
  The return at 0xbf88 has v0 = gp.

- `getcause` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbf90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbf90-0xbf9c (12 bytes).
  It occupies 12 bytes.
  The return at 0xbf94 has v0 = ?.

- `setcause` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbf9c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbf9c-0xbfa8 (12 bytes).
  It occupies 12 bytes.
  The return at 0xbfa0 has v0 = ?.

- `getbadvaddr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbfa8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbfa8-0xbfb4 (12 bytes).
  It occupies 12 bytes.
  The return at 0xbfac has v0 = ?.

- `get_sr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbfb4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbfb4-0xbfc0 (12 bytes).
  It occupies 12 bytes.
  The return at 0xbfb8 has v0 = ?.

- `set_sr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbfc0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbfc0-0xbfcc (12 bytes).
  It occupies 12 bytes.
  The return at 0xbfc4 has v0 = ?.

- `get_lladdr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbfcc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbfcc-0xbfd8 (12 bytes).
  It occupies 12 bytes.
  The return at 0xbfd0 has v0 = ?.

- `set_lladdr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbfd8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbfd8-0xbfe4 (12 bytes).
  It occupies 12 bytes.
  The return at 0xbfdc has v0 = ?.

- `do_sync_instruction` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbfe4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbfe4-0xbff0 (12 bytes).
  It occupies 12 bytes.
  The return at 0xbfe8 has v0 = ?.

- `siron` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xbff0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xbff0-0xc018 (40 bytes).
  It occupies 40 bytes.
  The return at 0xc010 has v0 = ?.

- `siroff` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc018 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc018-0xc044 (44 bytes).
  It occupies 44 bytes.
  The return at 0xc03c has v0 = ?.

- `flushbus` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc044 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc044-0xc064 (32 bytes).
  It occupies 32 bytes.
  The `ld` at 0xc048 loads 8 bytes from abs 0xffffffffaff50000.
  The `ld` at 0xc050 loads 8 bytes from abs 0xffffffffb8000000.
  The return at 0xc05c has v0 = ?.

- `wbflush` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc064 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc064-0xc06c (8 bytes).
  It occupies 8 bytes.
  The return at 0xc064 has v0 = ?.

- `ip26_enable_ucmem` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc06c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc06c-0xc074 (8 bytes).
  It occupies 8 bytes.
  The return at 0xc06c has v0 = ?.

- `ip26_return_ucmem` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc06c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc06c-0xc074 (8 bytes).
  It occupies 8 bytes.
  The return at 0xc06c has v0 = ?.

- `ip28_enable_ucmem` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc06c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc06c-0xc074 (8 bytes).
  It occupies 8 bytes.
  The return at 0xc06c has v0 = ?.

- `ip28_return_ucmem` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc06c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc06c-0xc074 (8 bytes).
  It occupies 8 bytes.
  The return at 0xc06c has v0 = ?.

- `badaddr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc080 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc080-0xc1a8 (296 bytes).
  It occupies 296 bytes.
  The `ld` at 0xc098 loads 8 bytes from abs 0xffffffffb8000060.
  The `sd` at 0xc09c stores 8 bytes to abs 0xffffffffb8000040.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffb8000000, including `ld` at 0xc0a0, `ld` at 0xc158.
  The `sd` at 0xc0a4 stores 8 bytes to abs 0xffffffffb8000060.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffaff10040, including `ld` at 0xc0b0, `ld` at 0xc17c.
  The `sd` at 0xc0b4 stores 8 bytes to abs 0xffffffffaff10040.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffaff50000, including `ld` at 0xc0bc, `ld` at 0xc150.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0xc0c0, `ld` at 0xc18c.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0xc0c8, `sh` at 0xc190.
  The `lb` at 0xc0d8 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lh` at 0xc0f0 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xc108 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0xc120 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `jal` at 0xc144 calls cmn_err with a0=0x0, a1=sym(.data)+1016, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xc0d0 targets 0xc0e4, is taken when a1 != at(=0x1), and falls through when a1 == at(=0x1).
  The `beq` branch at 0xc0dc targets 0xc14c and is always taken.
  The `bne` branch at 0xc0e8 targets 0xc0fc, is taken when a1 != at(=0x2), and falls through when a1 == at(=0x2).
  The `beq` branch at 0xc0f4 targets 0xc14c and is always taken.
  The `bne` branch at 0xc100 targets 0xc114, is taken when a1 != at(=0x4), and falls through when a1 == at(=0x4).
  The `beq` branch at 0xc10c targets 0xc14c and is always taken.
  The `bne` branch at 0xc118 targets 0xc12c, is taken when a1 != at(=0x8), and falls through when a1 == at(=0x8).
  The `beq` branch at 0xc124 targets 0xc14c and is always taken.
  The `bne` branch at 0xc168 targets 0xc788, is taken when (t1(?) & 0x4000) != 0, and falls through when (t1(?) & 0x4000) == 0.
  The `bne` branch at 0xc184 targets 0xc788, is taken when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) != 0, and falls through when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) == 0.
  The return at 0xc1a0 has v0 = 0x0.

- `badaddr_val` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc1a8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc1a8-0xc314 (364 bytes).
  It occupies 364 bytes.
  The `ld` at 0xc1c0 loads 8 bytes from abs 0xffffffffb8000060.
  The `sd` at 0xc1c4 stores 8 bytes to abs 0xffffffffb8000040.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffb8000000, including `ld` at 0xc1c8, `ld` at 0xc2b0.
  The `sd` at 0xc1cc stores 8 bytes to abs 0xffffffffb8000060.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffaff10040, including `ld` at 0xc1d8, `ld` at 0xc2d4.
  The `sd` at 0xc1dc stores 8 bytes to abs 0xffffffffaff10040.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffaff50000, including `ld` at 0xc1e4, `ld` at 0xc2a8.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0xc1e8, `ld` at 0xc2e4.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0xc1f4, `sh` at 0xc2f0.
  2 such `sw` accesses store 4 bytes to abs 0xffffffffffffc404, including `sw` at 0xc200, `sw` at 0xc2fc.
  The `lb` at 0xc210 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `sb` at 0xc218 stores 1 byte to a2 (arg2 at entry) +0x0.
  The `lh` at 0xc230 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0xc238 stores 2 bytes to a2 (arg2 at entry) +0x0.
  The `lw` at 0xc250 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0xc258 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `ld` at 0xc270 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sd` at 0xc278 stores 8 bytes to a2 (arg2 at entry) +0x0.
  The `jal` at 0xc29c calls cmn_err with a0=0x0, a1=sym(.data)+1025, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xc1ec targets 0xc200, is taken when t2(=[-0x3fe0]:8) == 0, and falls through when t2(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0xc1f8 targets 0xc204 and is always taken.
  The `bne` branch at 0xc208 targets 0xc224, is taken when a1 != at(=0x1), and falls through when a1 == at(=0x1).
  The `beq` branch at 0xc21c targets 0xc2a4 and is always taken.
  The `bne` branch at 0xc228 targets 0xc244, is taken when a1 != at(=0x2), and falls through when a1 == at(=0x2).
  The `beq` branch at 0xc23c targets 0xc2a4 and is always taken.
  The `bne` branch at 0xc248 targets 0xc264, is taken when a1 != at(=0x4), and falls through when a1 == at(=0x4).
  The `beq` branch at 0xc25c targets 0xc2a4 and is always taken.
  The `bne` branch at 0xc268 targets 0xc284, is taken when a1 != at(=0x8), and falls through when a1 == at(=0x8).
  The `beq` branch at 0xc27c targets 0xc2a4 and is always taken.
  The `bne` branch at 0xc2c0 targets 0xc788, is taken when (t1(?) & 0x4000) != 0, and falls through when (t1(?) & 0x4000) == 0.
  The `bne` branch at 0xc2dc targets 0xc788, is taken when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) != 0, and falls through when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) == 0.
  The `beq` branch at 0xc2e8 targets 0xc2fc, is taken when t2(=[-0x3fe0]:8) == 0, and falls through when t2(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0xc2f4 targets 0xc300 and is always taken.
  The return at 0xc30c has v0 = 0x0.

- `wbadaddr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc314 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc314-0xc460 (332 bytes).
  It occupies 332 bytes.
  The `ld` at 0xc32c loads 8 bytes from abs 0xffffffffb8000060.
  The `sd` at 0xc330 stores 8 bytes to abs 0xffffffffb8000040.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffb8000000, including `ld` at 0xc334, `ld` at 0xc3ec, `ld` at 0xc400.
  The `sd` at 0xc338 stores 8 bytes to abs 0xffffffffb8000060.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffaff10040, including `ld` at 0xc344, `ld` at 0xc434.
  The `sd` at 0xc348 stores 8 bytes to abs 0xffffffffaff10040.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffaff50000, including `ld` at 0xc350, `ld` at 0xc3e4, `ld` at 0xc3f8.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0xc354, `ld` at 0xc444.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0xc35c, `sh` at 0xc448.
  The `sb` at 0xc36c stores 1 byte to a0 (arg0 at entry) +0x0.
  The `sh` at 0xc384 stores 2 bytes to a0 (arg0 at entry) +0x0.
  The `sw` at 0xc39c stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `sd` at 0xc3b4 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `lw` at 0xc410 loads 4 bytes from abs 0x9000000000000000.
  The `jal` at 0xc3d8 calls cmn_err with a0=0x0, a1=sym(.data)+1038, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xc364 targets 0xc378, is taken when a1 != at(=0x1), and falls through when a1 == at(=0x1).
  The `beq` branch at 0xc370 targets 0xc3e0 and is always taken.
  The `bne` branch at 0xc37c targets 0xc390, is taken when a1 != at(=0x2), and falls through when a1 == at(=0x2).
  The `beq` branch at 0xc388 targets 0xc3e0 and is always taken.
  The `bne` branch at 0xc394 targets 0xc3a8, is taken when a1 != at(=0x4), and falls through when a1 == at(=0x4).
  The `beq` branch at 0xc3a0 targets 0xc3e0 and is always taken.
  The `bne` branch at 0xc3ac targets 0xc3c0, is taken when a1 != at(=0x8), and falls through when a1 == at(=0x8).
  The `beq` branch at 0xc3b8 targets 0xc3e0 and is always taken.
  The `bne` branch at 0xc420 targets 0xc788, is taken when (t1(?) & 0x4000) != 0, and falls through when (t1(?) & 0x4000) == 0.
  The `bne` branch at 0xc43c targets 0xc788, is taken when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) != 0, and falls through when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) == 0.
  The return at 0xc458 has v0 = 0x0.

- `wbadaddr_val` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc460 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc460-0xc5c8 (360 bytes).
  It occupies 360 bytes.
  The `ld` at 0xc478 loads 8 bytes from abs 0xffffffffb8000060.
  The `sd` at 0xc47c stores 8 bytes to abs 0xffffffffb8000040.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffb8000000, including `ld` at 0xc480, `ld` at 0xc558, `ld` at 0xc56c.
  The `sd` at 0xc484 stores 8 bytes to abs 0xffffffffb8000060.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffaff10040, including `ld` at 0xc490, `ld` at 0xc59c.
  The `sd` at 0xc494 stores 8 bytes to abs 0xffffffffaff10040.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffaff50000, including `ld` at 0xc49c, `ld` at 0xc550, `ld` at 0xc564.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0xc4a0, `ld` at 0xc5ac.
  2 such `sh` accesses store 2 bytes to [-0x3fe0]:8 +0xf6, including `sh` at 0xc4a8, `sh` at 0xc5b0.
  The `lb` at 0xc4b8 loads 1 byte from a2 (arg2 at entry) +0x0.
  The `sb` at 0xc4c0 stores 1 byte to a0 (arg0 at entry) +0x0.
  The `lh` at 0xc4d8 loads 2 bytes from a2 (arg2 at entry) +0x0.
  The `sh` at 0xc4e0 stores 2 bytes to a0 (arg0 at entry) +0x0.
  The `lw` at 0xc4f8 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `sw` at 0xc500 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `ld` at 0xc518 loads 8 bytes from a2 (arg2 at entry) +0x0.
  The `sd` at 0xc520 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `lw` at 0xc57c loads 4 bytes from abs 0x9000000000000000.
  The `jal` at 0xc544 calls cmn_err with a0=0x0, a1=sym(.data)+1048, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xc4b0 targets 0xc4cc, is taken when a1 != at(=0x1), and falls through when a1 == at(=0x1).
  The `beq` branch at 0xc4c4 targets 0xc54c and is always taken.
  The `bne` branch at 0xc4d0 targets 0xc4ec, is taken when a1 != at(=0x2), and falls through when a1 == at(=0x2).
  The `beq` branch at 0xc4e4 targets 0xc54c and is always taken.
  The `bne` branch at 0xc4f0 targets 0xc50c, is taken when a1 != at(=0x4), and falls through when a1 == at(=0x4).
  The `beq` branch at 0xc504 targets 0xc54c and is always taken.
  The `bne` branch at 0xc510 targets 0xc52c, is taken when a1 != at(=0x8), and falls through when a1 == at(=0x8).
  The `beq` branch at 0xc524 targets 0xc54c and is always taken.
  The `bne` branch at 0xc588 targets 0xc788, is taken when (t1(?) & 0x4000) != 0, and falls through when (t1(?) & 0x4000) == 0.
  The `bne` branch at 0xc5a4 targets 0xc788, is taken when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) != 0, and falls through when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) == 0.
  The return at 0xc5c0 has v0 = 0x0.

- `earlybadaddr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc5c8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc5c8-0xc700 (312 bytes).
  It occupies 312 bytes.
  The `ld` at 0xc5e0 loads 8 bytes from abs 0xffffffffb8000060.
  The `sd` at 0xc5e4 stores 8 bytes to abs 0xffffffffb8000040.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffb8000000, including `ld` at 0xc5e8, `ld` at 0xc69c.
  The `sd` at 0xc5ec stores 8 bytes to abs 0xffffffffb8000060.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffaff10040, including `ld` at 0xc5f8, `ld` at 0xc6c0.
  The `sd` at 0xc5fc stores 8 bytes to abs 0xffffffffaff10040.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffaff50000, including `ld` at 0xc604, `ld` at 0xc694.
  2 such `sw` accesses store 4 bytes to sym(nofault) +0x0, including `sw` at 0xc624, `sw` at 0xc6e8.
  The `lb` at 0xc634 loads 1 byte from a0 (arg0 at entry) +0x0.
  The `lh` at 0xc64c loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0xc664 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jal` at 0xc688 calls cmn_err with a0=0x0, a1=sym(.data)+1062, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xc62c targets 0xc640, is taken when a1 != at(=0x1), and falls through when a1 == at(=0x1).
  The `beq` branch at 0xc638 targets 0xc690 and is always taken.
  The `bne` branch at 0xc644 targets 0xc658, is taken when a1 != at(=0x2), and falls through when a1 == at(=0x2).
  The `beq` branch at 0xc650 targets 0xc690 and is always taken.
  The `bne` branch at 0xc65c targets 0xc670, is taken when a1 != at(=0x4), and falls through when a1 == at(=0x4).
  The `beq` branch at 0xc668 targets 0xc690 and is always taken.
  The `bne` branch at 0xc6ac targets 0xc7e4, is taken when (t1(?) & 0x4000) != 0, and falls through when (t1(?) & 0x4000) == 0.
  The `bne` branch at 0xc6c8 targets 0xc7e4, is taken when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) != 0, and falls through when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) == 0.
  The return at 0xc6f8 has v0 = 0x0.

- `wbadmemaddr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc700 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc700-0xc788 (136 bytes).
  It occupies 136 bytes.
  2 such `sw` accesses store 4 bytes to sym(nofault) +0x0, including `sw` at 0xc730, `sw` at 0xc770.
  The `sw` at 0xc734 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `lw` at 0xc738 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0xc748 loads 8 bytes from abs 0xffffffffaff10040.
  The `bne` branch at 0xc750 targets 0xc788, is taken when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) != 0, and falls through when (t1(=[0xffffffffaff10040]:8) & at(=0x10000)) == 0.
  The return at 0xc780 has v0 = 0x0.

- `baerror` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc788 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc788-0xc7e4 (92 bytes).
  It occupies 92 bytes.
  The `ld` at 0xc78c loads 8 bytes from abs 0xffffffffb8000060.
  The `sd` at 0xc790 stores 8 bytes to abs 0xffffffffb8000040.
  The `ld` at 0xc794 loads 8 bytes from abs 0xffffffffb8000000.
  The `sd` at 0xc798 stores 8 bytes to abs 0xffffffffb8000060.
  The `ld` at 0xc7a4 loads 8 bytes from abs 0xffffffffaff10040.
  The `sd` at 0xc7a8 stores 8 bytes to abs 0xffffffffaff10040.
  The `ld` at 0xc7b0 loads 8 bytes from abs 0xffffffffaff50000.
  The `ld` at 0xc7b8 loads 8 bytes from abs 0xffffffffffffc020.
  The `sh` at 0xc7c4 stores 2 bytes to [-0x3fe0]:8 +0xf6.
  The `sw` at 0xc7d0 stores 4 bytes to abs 0xffffffffffffc404.
  The `beq` branch at 0xc7bc targets 0xc7d0, is taken when t2(=[-0x3fe0]:8) == 0, and falls through when t2(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0xc7c8 targets 0xc7d4 and is always taken.
  The return at 0xc7dc has v0 = 0x1.

- `earlybaerror` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc7e4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc7e4-0xc844 (96 bytes).
  It occupies 96 bytes.
  The `ld` at 0xc7e8 loads 8 bytes from abs 0xffffffffb8000060.
  The `sd` at 0xc7ec stores 8 bytes to abs 0xffffffffb8000040.
  The `ld` at 0xc7f0 loads 8 bytes from abs 0xffffffffb8000000.
  The `sd` at 0xc7f4 stores 8 bytes to abs 0xffffffffb8000060.
  The `ld` at 0xc800 loads 8 bytes from abs 0xffffffffaff10040.
  The `sd` at 0xc804 stores 8 bytes to abs 0xffffffffaff10040.
  The `ld` at 0xc80c loads 8 bytes from abs 0xffffffffaff50000.
  The `sw` at 0xc830 stores 4 bytes to sym(nofault) +0x0.
  The return at 0xc83c has v0 = 0x1.

- `VEC_breakpoint` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc850 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc850-0xc85c (12 bytes).
  It occupies 12 bytes.
  Calls VEC_trap via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xc850).
  The instructions from 0xc858 to 0xc858 are not reached by any path from the entry, and their branches are not listed.

- `kernelbp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc858 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc858-0xc85c (4 bytes).
  It occupies 4 bytes.

- `debug` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc85c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc85c-0xc8d4 (120 bytes).
  It occupies 120 bytes.
  The `lh` at 0xc874 loads 2 bytes from sym(kdebug) +0x0.
  The `sh` at 0xc8ac stores 2 bytes to sym(kbdstate) +0x0.
  The `sb` at 0xc8c8 stores 1 byte to sym(kbdcntrlstate) +0x0.
  The `blez` branch at 0xc878 targets 0xc8cc, is taken when t0(=[sym(kdebug)]:2) <= 0 (signed), and falls through when t0(=[sym(kdebug)]:2) > 0 (signed).
  The return at 0xc8cc has v0 = ?.

- `sstepbp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc8d4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc8d4-0xc8d8 (4 bytes).
  It occupies 4 bytes.

- `ULIsystrap` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xc8e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xc8e0-0xcbc0 (736 bytes).
  It occupies 736 bytes.
  5 such `ld` accesses load 8 bytes from abs 0xffffffffffffc028, including `ld` at 0xc8fc, `ld` at 0xc930, `ld` at 0xc98c.
  3 such `ld` accesses load 8 bytes from [-0x3fd8]:8 +0x88, including `ld` at 0xc90c, `ld` at 0xc934, `ld` at 0xcacc.
  9 such `sd` accesses store 8 bytes to ?, including `sd` at 0xc948, `sd` at 0xc94c, `sd` at 0xc950.
  2 such `sb` accesses store 1 byte to abs 0xffffffffffffc04f, including `sb` at 0xc984, `sb` at 0xc9f8.
  The `ld` at 0xc998 loads 8 bytes from [-0x3fd8]:8 +0x90.
  2 such `sd` accesses store 8 bytes to abs 0xffffffffffffc018, including `sd` at 0xc9a0, `sd` at 0xca00.
  The `lh` at 0xc9a8 loads 2 bytes from [-0x3fd8]:8 +0xa8.
  7 such `ld` accesses load 8 bytes from ?, including `ld` at 0xc9ac, `ld` at 0xca0c, `ld` at 0xca10.
  The `ld` at 0xc9fc loads 8 bytes from [-0x3fd8]:8 +0x98.
  The `lh` at 0xca08 loads 2 bytes from [-0x3fd8]:8 +0xaa.
  The `lw` at 0xca34 loads 4 bytes from [-0x3fd8]:8 +0xe8.
  The `sd` at 0xca44 stores 8 bytes to [-0x3fd8]:8 +0x1d0.
  The `sd` at 0xca48 stores 8 bytes to [-0x3fd8]:8 +0x1c8.
  The `ld` at 0xca4c loads 8 bytes from abs 0xffffffffffffc038.
  The `sd` at 0xca50 stores 8 bytes to [-0x3fd8]:8 +0xf0.
  The `sd` at 0xca54 stores 8 bytes to [-0x3fd8]:8 +0x108.
  The `sd` at 0xca58 stores 8 bytes to [-0x3fd8]:8 +0x110.
  The `sd` at 0xca5c stores 8 bytes to [-0x3fd8]:8 +0x118.
  The `sd` at 0xca60 stores 8 bytes to [-0x3fd8]:8 +0x120.
  The `sd` at 0xca64 stores 8 bytes to [-0x3fd8]:8 +0x128.
  The `sd` at 0xca68 stores 8 bytes to [-0x3fd8]:8 +0x130.
  The `sd` at 0xca6c stores 8 bytes to [-0x3fd8]:8 +0x138.
  The `sd` at 0xca70 stores 8 bytes to [-0x3fd8]:8 +0x140.
  The `sd` at 0xca74 stores 8 bytes to [-0x3fd8]:8 +0x168.
  The `sd` at 0xca78 stores 8 bytes to [-0x3fd8]:8 +0x170.
  The `sd` at 0xca7c stores 8 bytes to [-0x3fd8]:8 +0x178.
  The `sd` at 0xca80 stores 8 bytes to [-0x3fd8]:8 +0x180.
  The `sd` at 0xca84 stores 8 bytes to [-0x3fd8]:8 +0x188.
  The `sd` at 0xca88 stores 8 bytes to [-0x3fd8]:8 +0x190.
  The `sd` at 0xca8c stores 8 bytes to [-0x3fd8]:8 +0x198.
  The `sd` at 0xca90 stores 8 bytes to [-0x3fd8]:8 +0x1a0.
  The `sd` at 0xcaa4 stores 8 bytes to [-0x3fd8]:8 +0x1e0.
  The `sd` at 0xcab0 stores 8 bytes to [-0x3fd8]:8 +0x1e8.
  The `sd` at 0xcab4 stores 8 bytes to [-0x3fd8]:8 +0x208.
  The `sd` at 0xcab8 stores 8 bytes to [-0x3fd8]:8 +0x210.
  The `sd` at 0xcabc stores 8 bytes to [-0x3fd8]:8 +0x250.
  The `sd` at 0xcac0 stores 8 bytes to [-0x3fd8]:8 +0x200.
  The `sw` at 0xcac4 stores 4 bytes to [-0x3fd8]:8 +0xe8.
  Calls uli_return via direct with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xc928).
  The `jal` at 0xc9a4 calls uli_setasids with a0=[[-0x3fd8]:8+168]:2, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xc9c8 calls ULI_syscall with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xca04 calls uli_setasids with a0=[[-0x3fd8]:8+170]:2, a1=[[-0x3fd8]:8+152]:8, a2=?, a3=one of 0x0, 0x1.
  The `jal` at 0xcaa8 calls tfi_save with a0=?, a1=?, a2=?, a3=?.
  Calls uli_badtrap via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0xcaec).
  The `bne` branch at 0xc8e4 targets 0xca30, is taken when v0(?) != at(=0x410), and falls through when v0(?) == at(=0x410).
  The `bne` branch at 0xc8ec targets 0xca30, is taken when a0 != at(=0xa8), and falls through when a0 == at(=0xa8).
  The `bne` branch at 0xc8f4 targets 0xc930, is taken when a1 != at(=0x3), and falls through when a1 == at(=0x3).
  The `bnel` branch at 0xc9dc targets 0xc9ec, is taken when v0(=ret(ULI_syscall)) != 0, and falls through when v0(=ret(ULI_syscall)) == 0; its branch-likely delay slot `addiu a3,zero,1` at 0xc9e0 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0xca38 targets 0xcac8, is taken when k1(=[[-0x3fd8]:8+232]) != 0, and falls through when k1(=[[-0x3fd8]:8+232]) == 0.
  The instructions from 0xcaf4 to 0xcbbc are not reached by any path from the entry, and their branches are not listed.

- `keruliframe` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xca30 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xca30-0xcbc0 (400 bytes).
  It occupies 400 bytes.
  The `ld` at 0xca30 loads 8 bytes from abs 0xffffffffffffc028.
  The `lw` at 0xca34 loads 4 bytes from [-0x3fd8]:8 +0xe8.
  The `sd` at 0xca44 stores 8 bytes to [-0x3fd8]:8 +0x1d0.
  The `sd` at 0xca48 stores 8 bytes to [-0x3fd8]:8 +0x1c8.
  The `ld` at 0xca4c loads 8 bytes from abs 0xffffffffffffc038.
  The `sd` at 0xca50 stores 8 bytes to [-0x3fd8]:8 +0xf0.
  The `sd` at 0xca54 stores 8 bytes to [-0x3fd8]:8 +0x108.
  The `sd` at 0xca58 stores 8 bytes to [-0x3fd8]:8 +0x110.
  The `sd` at 0xca5c stores 8 bytes to [-0x3fd8]:8 +0x118.
  The `sd` at 0xca60 stores 8 bytes to [-0x3fd8]:8 +0x120.
  The `sd` at 0xca64 stores 8 bytes to [-0x3fd8]:8 +0x128.
  The `sd` at 0xca68 stores 8 bytes to [-0x3fd8]:8 +0x130.
  The `sd` at 0xca6c stores 8 bytes to [-0x3fd8]:8 +0x138.
  The `sd` at 0xca70 stores 8 bytes to [-0x3fd8]:8 +0x140.
  The `sd` at 0xca74 stores 8 bytes to [-0x3fd8]:8 +0x168.
  The `sd` at 0xca78 stores 8 bytes to [-0x3fd8]:8 +0x170.
  The `sd` at 0xca7c stores 8 bytes to [-0x3fd8]:8 +0x178.
  The `sd` at 0xca80 stores 8 bytes to [-0x3fd8]:8 +0x180.
  The `sd` at 0xca84 stores 8 bytes to [-0x3fd8]:8 +0x188.
  The `sd` at 0xca88 stores 8 bytes to [-0x3fd8]:8 +0x190.
  The `sd` at 0xca8c stores 8 bytes to [-0x3fd8]:8 +0x198.
  The `sd` at 0xca90 stores 8 bytes to [-0x3fd8]:8 +0x1a0.
  The `sd` at 0xcaa4 stores 8 bytes to [-0x3fd8]:8 +0x1e0.
  The `sd` at 0xcab0 stores 8 bytes to [-0x3fd8]:8 +0x1e8.
  The `sd` at 0xcab4 stores 8 bytes to [-0x3fd8]:8 +0x208.
  The `sd` at 0xcab8 stores 8 bytes to [-0x3fd8]:8 +0x210.
  The `sd` at 0xcabc stores 8 bytes to [-0x3fd8]:8 +0x250.
  The `sd` at 0xcac0 stores 8 bytes to [-0x3fd8]:8 +0x200.
  The `sw` at 0xcac4 stores 4 bytes to [-0x3fd8]:8 +0xe8.
  The `ld` at 0xcacc loads 8 bytes from [-0x3fd8]:8 +0x88.
  The `jal` at 0xcaa8 calls tfi_save with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  Calls uli_badtrap via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0xcaec).
  The `bne` branch at 0xca38 targets 0xcac8, is taken when k1(=[[-0x3fd8]:8+232]) != 0, and falls through when k1(=[[-0x3fd8]:8+232]) == 0.
  The instructions from 0xcaf4 to 0xcbbc are not reached by any path from the entry, and their branches are not listed.

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

- `_baduk` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xcc54 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xcc54-0xd070 (1052 bytes).
  It occupies 1052 bytes.
  The `ld` at 0xcc58 loads 8 bytes from abs 0xffffffffffffc3c0.
  Calls assfail via direct with a0=sym(.data)+1440, a1=sym(.data)+1453, a2=0x0, a3=a3 at entry (arg3) (`j` at 0xcc88).
  The instructions from 0xcc90 to 0xd06c are not reached by any path from the entry, and their branches are not listed.

- `ecommon` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd070 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd070-0xd124 (180 bytes).
  It occupies 180 bytes.
  The `ld` at 0xd070 loads 8 bytes from abs 0xffffffffffffc038.
  23 such `sd` accesses store 8 bytes to ?, including `sd` at 0xd074, `sd` at 0xd078, `sd` at 0xd07c.
  The `ld` at 0xd0c0 loads 8 bytes from abs 0xffffffffffffc020.
  The `lw` at 0xd0d4 loads 4 bytes from [-0x3fe0]:8 +0x2e0.
  The `ld` at 0xd118 loads 8 bytes from ?.
  The `jal` at 0xd0b8 calls tfi_save with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xd0e0 calls ktimer_switch with a0=[-0x3fe0]:8, a1=?, a2=?, a3=?.
  Calls (unknown callee) via register with a0=?, a1=?, a2=?, a3=? (`jr` at 0xd11c).
  The `beq` branch at 0xd0c8 targets 0xd0e8, is taken when a0(=[-0x3fe0]:8) == 0, and falls through when a0(=[-0x3fe0]:8) != 0.
  The `bne` branch at 0xd0d8 targets 0xd0e8, is taken when (k0(?) & 0x100) != 0, and falls through when (k0(?) & 0x100) == 0.

- `ecommon_allsaved` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd0c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd0c0-0xd124 (100 bytes).
  It occupies 100 bytes.
  The `ld` at 0xd0c0 loads 8 bytes from abs 0xffffffffffffc020.
  The `lw` at 0xd0d4 loads 4 bytes from [-0x3fe0]:8 +0x2e0.
  5 such `sd` accesses store 8 bytes to ?, including `sd` at 0xd0f0, `sd` at 0xd0f8, `sd` at 0xd0fc.
  The `ld` at 0xd118 loads 8 bytes from ?.
  The `jal` at 0xd0e0 calls ktimer_switch with a0=[-0x3fe0]:8, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  Calls (unknown callee) via register with a0=?, a1=?, a2=?, a3=? (`jr` at 0xd11c).
  The `beq` branch at 0xd0c8 targets 0xd0e8, is taken when a0(=[-0x3fe0]:8) == 0, and falls through when a0(=[-0x3fe0]:8) != 0.
  The `bne` branch at 0xd0d8 targets 0xd0e8, is taken when (k0(?) & 0x100) != 0, and falls through when (k0(?) & 0x100) == 0.

- `softfp_adderr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd124 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd124-0xd148 (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0xd130 calls cmn_err with a0=0x0, a1=sym(.rodata)+2120, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd140 has v0 = 0x0.

- `softfp_insterr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd148 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd148-0xd170 (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0xd158 calls cmn_err with a0=0x0, a1=sym(.rodata)+2120, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd168 has v0 = 0x0.

- `ioerror_dump` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd170 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd170-0xd444 (724 bytes).
  It occupies 724 bytes.
  The `ld` at 0xd1f8 loads 8 bytes from (sym(imask_values) + (a2 << 0x3)) +0x0.
  14 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x0, including `lw` at 0xd1fc, `lw` at 0xd21c, `lw` at 0xd304.
  The `lh` at 0xd210 loads 2 bytes from a3 (arg3 at entry) +0x4.
  3 such `lh` accesses load 2 bytes from a3 (arg3 at entry) +0xa, including `lh` at 0xd28c, `lh` at 0xd328, `lh` at 0xd440.
  The `ld` at 0xd29c loads 8 bytes from (sym(pdaindr) + ([a3+10]:2 << 0x4)) +0x8.
  The `ld` at 0xd2a8 loads 8 bytes from [(sym(pdaindr) + ([a3+10]:2 << 0x4))+8]:8 +0x648.
  The `lh` at 0xd2f4 loads 2 bytes from a3 (arg3 at entry) +0x6.
  The `lh` at 0xd30c loads 2 bytes from a3 (arg3 at entry) +0x8.
  The `lh` at 0xd344 loads 2 bytes from a3 (arg3 at entry) +0xc.
  The `lh` at 0xd360 loads 2 bytes from a3 (arg3 at entry) +0xe.
  The `ld` at 0xd378 loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `ld` at 0xd390 loads 8 bytes from a3 (arg3 at entry) +0x18.
  The `ld` at 0xd3a8 loads 8 bytes from a3 (arg3 at entry) +0x20.
  The `ld` at 0xd3c4 loads 8 bytes from a3 (arg3 at entry) +0x28.
  The `ld` at 0xd3e0 loads 8 bytes from a3 (arg3 at entry) +0x30.
  The `ld` at 0xd3fc loads 8 bytes from a3 (arg3 at entry) +0x38.
  The `ld` at 0xd418 loads 8 bytes from a3 (arg3 at entry) +0x40.
  The `ld` at 0xd430 loads 8 bytes from a3 (arg3 at entry) +0x48.
  The `jal` at 0xd1f4 calls printf with a0=sym(.rodata)+2120, a1=a0 at entry (arg0), a2=sym(.rodata)+2120, a3=sym(.rodata)+2120, a4=sym(.rodata)+2120, a5=sym(.rodata)+2120, a6=[(sym(imask_values) + (a2 << 0x3))]:8, a7=(a2 << 0x3).
  The `jal` at 0xd214 calls printf with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+4]:2, a3=?.
  The `jal` at 0xd2a4 calls printf with a0=sym(.rodata)+2120, a1=[a3+10]:2, a2=[[(sym(pdaindr) + ([a3+10]:2 << 0x4))+8]:8+1608]:8, a3=([a3+10]:2 << 0x4).
  The `jal` at 0xd2b8 calls printf with a0=sym(.rodata)+2120, a1=?, a2=?, a3=?.
  The `jal` at 0xd2f8 calls printf with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+6]:2, a3=?.
  The `jal` at 0xd310 calls printf with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+8]:2, a3=?.
  The `jal` at 0xd32c calls printf with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+10]:2, a3=?.
  The `jal` at 0xd348 calls printf with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+12]:2, a3=?.
  The `jal` at 0xd364 calls printf with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+14]:2, a3=?.
  The `jal` at 0xd37c calls printf with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+16]:8, a3=?.
  The `jal` at 0xd394 calls printf with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+24]:8, a3=?.
  The `jal` at 0xd3ac calls printf with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+32]:8, a3=?.
  The `jal` at 0xd3c8 calls printf with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+40]:8, a3=?.
  The `jal` at 0xd3e4 calls printf with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+48]:8, a3=?.
  The `jal` at 0xd400 calls printf with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+56]:8, a3=?.
  The `jal` at 0xd41c calls printf with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+64]:8, a3=([a3] << 0xd).
  The `jal` at 0xd434 calls printf with a0=sym(.rodata)+2120, a1=sym(.rodata)+2120, a2=[a3+72]:8, a3=([a3] << 0xd).
  The `beq` branch at 0xd18c targets 0xd2cc, is taken when (a1 & 0x4) == 0, and falls through when (a1 & 0x4) != 0.
  The `beq` branch at 0xd1a0 targets 0xd2d8, is taken when (a1 & 0x8) == 0, and falls through when (a1 & 0x8) != 0.
  The `beq` branch at 0xd1b4 targets 0xd2e0, is taken when (a1 & 0x1) == 0, and falls through when (a1 & 0x1) != 0.
  The `beq` branch at 0xd1c8 targets 0xd2e8, is taken when (a1 & 0x2) == 0, and falls through when (a1 & 0x2) != 0.
  The `beq` branch at 0xd204 targets 0xd224, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bltz` branch at 0xd224 targets 0xd2f0, is taken when t0(=([a3] << 0x1)) < 0 (signed), and falls through when t0(=([a3] << 0x1)) >= 0 (signed).
  The `bltz` branch at 0xd22c targets 0xd308, is taken when t1(=([a3] << 0x2)) < 0 (signed), and falls through when t1(=([a3] << 0x2)) >= 0 (signed).
  The `bltz` branch at 0xd234 targets 0xd320, is taken when t2(=([a3] << 0x3)) < 0 (signed), and falls through when t2(=([a3] << 0x3)) >= 0 (signed).
  The `bltz` branch at 0xd23c targets 0xd33c, is taken when t3(=([a3] << 0x4)) < 0 (signed), and falls through when t3(=([a3] << 0x4)) >= 0 (signed).
  The `bltz` branch at 0xd244 targets 0xd358, is taken when t8(=([a3] << 0x5)) < 0 (signed), and falls through when t8(=([a3] << 0x5)) >= 0 (signed).
  The `bltz` branch at 0xd24c targets 0xd374, is taken when t9(=([a3] << 0x6)) < 0 (signed), and falls through when t9(=([a3] << 0x6)) >= 0 (signed).
  The `bltz` branch at 0xd254 targets 0xd38c, is taken when ra(=([a3] << 0x7)) < 0 (signed), and falls through when ra(=([a3] << 0x7)) >= 0 (signed).
  The `bltz` branch at 0xd25c targets 0xd3a4, is taken when at(=([a3] << 0x8)) < 0 (signed), and falls through when at(=([a3] << 0x8)) >= 0 (signed).
  The `bltz` branch at 0xd264 targets 0xd3bc, is taken when v0(=([a3] << 0x9)) < 0 (signed), and falls through when v0(=([a3] << 0x9)) >= 0 (signed).
  The `bltz` branch at 0xd26c targets 0xd3d8, is taken when v1(=([a3] << 0xa)) < 0 (signed), and falls through when v1(=([a3] << 0xa)) >= 0 (signed).
  The `bltz` branch at 0xd274 targets 0xd3f4, is taken when a1(=([a3] << 0xb)) < 0 (signed), and falls through when a1(=([a3] << 0xb)) >= 0 (signed).
  The `bltz` branch at 0xd27c targets 0xd410, is taken when a2(=([a3] << 0xc)) < 0 (signed), and falls through when a2(=([a3] << 0xc)) >= 0 (signed).
  The `bltz` branch at 0xd284 targets 0xd42c, is taken when a3(=([a3] << 0xd)) < 0 (signed), and falls through when a3(=([a3] << 0xd)) >= 0 (signed).
  The `beq` branch at 0xd2d0 targets 0xd19c and is always taken.
  The `beq` branch at 0xd2d8 targets 0xd1b0 and is always taken.
  The `beq` branch at 0xd2e0 targets 0xd1c4 and is always taken.
  The `beq` branch at 0xd2e8 targets 0xd1d8 and is always taken.
  The `beq` branch at 0xd300 targets 0xd228 and is always taken.
  The `beq` branch at 0xd318 targets 0xd230 and is always taken.
  The `beq` branch at 0xd334 targets 0xd238 and is always taken.
  The `beq` branch at 0xd350 targets 0xd240 and is always taken.
  The `beq` branch at 0xd36c targets 0xd248 and is always taken.
  The `beq` branch at 0xd384 targets 0xd250 and is always taken.
  The `beq` branch at 0xd39c targets 0xd258 and is always taken.
  The `beq` branch at 0xd3b4 targets 0xd260 and is always taken.
  The `beq` branch at 0xd3d0 targets 0xd268 and is always taken.
  The `beq` branch at 0xd3ec targets 0xd270 and is always taken.
  The `beq` branch at 0xd408 targets 0xd278 and is always taken.
  The `beq` branch at 0xd424 targets 0xd280 and is always taken.
  The `beq` branch at 0xd43c targets 0xd290 and is always taken.
  The return at 0xd2c4 has v0 = ret(printf).

- `error_mark_page` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd444 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd444-0xd468 (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0xd454 calls cmn_err with a0=0x5, a1=sym(.rodata)+2120, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd460 has v0 = ret(cmn_err).

- `error_reclaim_page` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd468 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd468-0xd490 (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0xd478 calls cmn_err with a0=0x5, a1=sym(.rodata)+2120, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xd488 has v0 = 0x0.

- `_hook_exceptions` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd490 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd490-0xd718 (648 bytes).
  It occupies 648 bytes.
  2 such `lw` accesses load 4 bytes from sym(utlbmiss_prolog_patch) +0x0, including `lw` at 0xd4a8, `lw` at 0xd584.
  2 such `lw` accesses load 4 bytes from sym(utlbmiss_prolog_mp) -0x4, including `lw` at 0xd4f0, `lw` at 0xd508.
  12 such `sw` accesses store 4 bytes to ?, including `sw` at 0xd4f4, `sw` at 0xd510, `sw` at 0xd594.
  The `sw` at 0xd520 stores 4 bytes to abs 0xffffffffa0000000.
  6 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd590, `lw` at 0xd5a8, `lw` at 0xd5dc.
  The `sw` at 0xd60c stores 4 bytes to abs 0xffffffffa0000080.
  2 such `lw` accesses load 4 bytes from sym(_ecc_errorvec) -0x4, including `lw` at 0xd670, `lw` at 0xd688.
  2 such `lw` accesses load 4 bytes from sym(_j_exceptnorm) -0x4, including `lw` at 0xd6b0, `lw` at 0xd6c8.
  The `sd` at 0xd6e8 stores 8 bytes to abs 0xa800000000000418.
  The `sd` at 0xd6f4 stores 8 bytes to abs 0xa800000000000420.
  The `jal` at 0xd6f0 calls flush_cache with a0=?, a1=?, a2=sym(_j_endexceptnorm), a3=?, a6=-0x3b38, a7=0xa800000000000420.
  The `jal` at 0xd708 calls assfail with a0=sym(.rodata)+3000, a1=sym(.rodata)+3000, a2=0x19e, a3=?, a4=sym(utlbmiss), a5=0x1, a6=sym(utlbmiss_prolog_patch).
  The `blez` branch at 0xd4a4 targets 0xd4b8, is taken when at(=[sym(kdebug)]:2) <= 0 (signed), and falls through when at(=[sym(kdebug)]:2) > 0 (signed).
  The `beq` branch at 0xd4d8 targets 0xd514, is taken when a1(=sym(utlbmiss_prolog_mp)) >= s2(=sym(eutlbmiss_prolog_mp)) (unsigned), and falls through when a1(=sym(utlbmiss_prolog_mp)) < s2(=sym(eutlbmiss_prolog_mp)) (unsigned).
  The `beq` branch at 0xd4f8 targets 0xd514, is taken when a1(=sym(utlbmiss_prolog_mp)) >= s2(=sym(eutlbmiss_prolog_mp)) (unsigned), and falls through when a1(=sym(utlbmiss_prolog_mp)) < s2(=sym(eutlbmiss_prolog_mp)) (unsigned).
  The `bne` branch at 0xd50c targets 0xd4e4, is taken when a1(=sym(utlbmiss_prolog_mp)) < s2(=sym(eutlbmiss_prolog_mp)) (unsigned), and falls through when a1(=sym(utlbmiss_prolog_mp)) >= s2(=sym(eutlbmiss_prolog_mp)) (unsigned).
  The `beq` branch at 0xd518 targets 0xd528, is taken when t2(=[sym(need_utlbmiss_patch)]) == 0, and falls through when t2(=[sym(need_utlbmiss_patch)]) != 0.
  The `beq` branch at 0xd54c targets 0xd560, is taken when t3(?) >= 0x81 (signed), and falls through when t3(?) < 0x81 (signed).
  The `beq` branch at 0xd558 targets 0xd564 and is always taken.
  The `beq` branch at 0xd570 targets 0xd704, is taken when t8(?) >= 0x81 (signed), and falls through when t8(?) < 0x81 (signed).
  The `beq` branch at 0xd580 targets 0xd5b4, is taken when s3(?) >= s1(?) (unsigned), and falls through when s3(?) < s1(?) (unsigned).
  The `beq` branch at 0xd598 targets 0xd5b4, is taken when a1(?) >= s1(?) (unsigned), and falls through when a1(?) < s1(?) (unsigned).
  The `bne` branch at 0xd5ac targets 0xd588, is taken when a1(?) < s1(?) (unsigned), and falls through when a1(?) >= s1(?) (unsigned).
  The `blez` branch at 0xd5c4 targets 0xd600, is taken when a1(=[sym(utlbmiss_prolog_size)]) <= 0 (signed), and falls through when a1(=[sym(utlbmiss_prolog_size)]) > 0 (signed).
  The `beq` branch at 0xd5e4 targets 0xd600, is taken when a1(?) >= s2(=sym(eutlbmiss_prolog_mp)) (unsigned), and falls through when a1(?) < s2(=sym(eutlbmiss_prolog_mp)) (unsigned).
  The `bne` branch at 0xd5f8 targets 0xd5d0, is taken when a1(?) < s2(=sym(eutlbmiss_prolog_mp)) (unsigned), and falls through when a1(?) >= s2(=sym(eutlbmiss_prolog_mp)) (unsigned).
  The `beq` branch at 0xd604 targets 0xd610, is taken when t3(=[sym(need_utlbmiss_patch)]) == 0, and falls through when t3(=[sym(need_utlbmiss_patch)]) != 0.
  The `beq` branch at 0xd610 targets 0xd644, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xd628 targets 0xd644, is taken when a1(?) >= s1(?) (unsigned), and falls through when a1(?) < s1(?) (unsigned).
  The `bne` branch at 0xd63c targets 0xd618, is taken when a1(?) < s1(?) (unsigned), and falls through when a1(?) >= s1(?) (unsigned).
  The `beq` branch at 0xd660 targets 0xd694, is taken when a1(=sym(_ecc_errorvec)) >= a3(=sym(_ecc_end)) (unsigned), and falls through when a1(=sym(_ecc_errorvec)) < a3(=sym(_ecc_end)) (unsigned).
  The `beq` branch at 0xd678 targets 0xd694, is taken when a1(=sym(_ecc_errorvec)) >= a3(=sym(_ecc_end)) (unsigned), and falls through when a1(=sym(_ecc_errorvec)) < a3(=sym(_ecc_end)) (unsigned).
  The `bne` branch at 0xd68c targets 0xd668, is taken when a1(=sym(_ecc_errorvec)) < a3(=sym(_ecc_end)) (unsigned), and falls through when a1(=sym(_ecc_errorvec)) >= a3(=sym(_ecc_end)) (unsigned).
  The `beq` branch at 0xd698 targets 0xd6d8, is taken when a5(=sym(_j_exceptnorm)) >= a2(=sym(_j_endexceptnorm)) (unsigned), and falls through when a5(=sym(_j_exceptnorm)) < a2(=sym(_j_endexceptnorm)) (unsigned).
  The `beq` branch at 0xd6b8 targets 0xd6d4, is taken when a1(=sym(_j_exceptnorm)) >= a2(=sym(_j_endexceptnorm)) (unsigned), and falls through when a1(=sym(_j_exceptnorm)) < a2(=sym(_j_endexceptnorm)) (unsigned).
  The `bne` branch at 0xd6cc targets 0xd6a8, is taken when a1(=sym(_j_exceptnorm)) < a2(=sym(_j_endexceptnorm)) (unsigned), and falls through when a1(=sym(_j_exceptnorm)) >= a2(=sym(_j_endexceptnorm)) (unsigned).
  The `beq` branch at 0xd710 targets 0xd578 and is always taken.
  The return at 0xd6fc has v0 = ret(flush_cache).

- `sw_cachesynch_patch` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd718 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd718-0xd784 (108 bytes).
  It occupies 108 bytes.
  The `ld` at 0xd740 loads 8 bytes from sym(.data) +0x1d10.
  The `lw` at 0xd750 loads 4 bytes from sym(sw_cachesynch_patch_insts) +0x0.
  The `sw` at 0xd754 stores 4 bytes to ?.
  The `ld` at 0xd758 loads 8 bytes from sym(.data) +0x1d18.
  The `lw` at 0xd764 loads 4 bytes from sym(sw_cachesynch_patch_insts) +0x4.
  The `sw` at 0xd768 stores 4 bytes to sym(sw_cachesynch_op2) +0x0.
  The `ld` at 0xd76c loads 8 bytes from sym(.data) +0x1d20.
  The `jal` at 0xd720 calls get_cpu_irr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0xd734 targets 0xd77c, is taken when at(?) != v0(=0x4), and falls through when at(?) == v0(=0x4).
  The `beq` branch at 0xd748 targets 0xd77c, is taken when v0(=sym(sw_cachesynch_op1)) == 0, and falls through when v0(=sym(sw_cachesynch_op1)) != 0.
  The `beq` branch at 0xd75c targets 0xd77c, is taken when a1(=sym(sw_cachesynch_op2)) == 0, and falls through when a1(=sym(sw_cachesynch_op2)) != 0.
  The `bne` branch at 0xd774 targets 0xd750, is taken when a1(=sym(sw_cachesynch_op3)) != 0, and falls through when a1(=sym(sw_cachesynch_op3)) == 0.
  The return at 0xd77c has v0 = one of 0x4, sym(sw_cachesynch_op1).

- `_j_exceptnorm` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd790 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd790-0xd7a0 (16 bytes).
  It occupies 16 bytes.
  The `ld` at 0xd790 loads 8 bytes from abs 0xffffffffffffc000.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xd798).

- `_j_endexceptnorm` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd7a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd7a0-0xd7b0 (16 bytes).
  It occupies 16 bytes.
  Calls exception via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xd7a8).

- `_j_exceptnorm_nosymmon` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd7a0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd7a0-0xd7b0 (16 bytes).
  It occupies 16 bytes.
  Calls exception via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xd7a8).

- `_endexceptnorm_prolog` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd7b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd7b0-0xd800 (80 bytes).
  It occupies 80 bytes.

- `_exceptnorm_prolog` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd7b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd7b0-0xd800 (80 bytes).
  It occupies 80 bytes.

- `_j_endexceptnorm_nosymmon` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd7b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd7b0-0xd800 (80 bytes).
  It occupies 80 bytes.

- `utlbmiss_prolog_up` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd800 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd800-0xd80c (12 bytes).
  It occupies 12 bytes.

- `eutlbmiss_prolog_up` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd80c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd80c-0xd81c (16 bytes).
  It occupies 16 bytes.
  The `beq` branch at 0xd80c targets 0xd818 and is always taken.
  The instructions from 0xd814 to 0xd814 are not reached by any path from the entry, and their branches are not listed.

- `utlbmiss_prolog_mp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd80c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd80c-0xd81c (16 bytes).
  It occupies 16 bytes.
  The `beq` branch at 0xd80c targets 0xd818 and is always taken.
  The instructions from 0xd814 to 0xd814 are not reached by any path from the entry, and their branches are not listed.

- `eutlbmiss_prolog_mp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd81c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd81c-0xd880 (100 bytes).
  It occupies 100 bytes.

- `utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd880 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd880-0xd8a8 (40 bytes).
  It occupies 40 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0xd890, `ld` at 0xd894.

- `utlbmiss_not_large_page` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd890 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd890-0xd8a8 (24 bytes).
  It occupies 24 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0xd890, `ld` at 0xd894.

- `eutlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd8a8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd8a8-0xd930 (136 bytes).
  It occupies 136 bytes.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0xd8b8, `ld` at 0xd904, `ld` at 0xd910.
  The `sd` at 0xd8cc stores 8 bytes to abs 0xffffffffffffc038.
  The `ld` at 0xd928 loads 8 bytes from abs 0xffffffffffffc038.
  The `beq` branch at 0xd8c4 targets 0xd890, is taken when (k1(?) & 0xf) == 0, and falls through when (k1(?) & 0xf) != 0.

- `lpg_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd8a8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd8a8-0xd930 (136 bytes).
  It occupies 136 bytes.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0xd8b8, `ld` at 0xd904, `ld` at 0xd910.
  The `sd` at 0xd8cc stores 8 bytes to abs 0xffffffffffffc038.
  The `ld` at 0xd928 loads 8 bytes from abs 0xffffffffffffc038.
  The `beq` branch at 0xd8c4 targets 0xd890, is taken when (k1(?) & 0xf) == 0, and falls through when (k1(?) & 0xf) != 0.

- `elpg_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd930 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd930-0xd980 (80 bytes).
  It occupies 80 bytes.

- `utlbmiss2` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd980 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd980-0xd9bc (60 bytes).
  It occupies 60 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0xd990, `ld` at 0xd994.
  The `beq` branch at 0xd9a4 targets 0xd9bc, is taken when k1(?) == 0, and falls through when k1(?) != 0.
  The `beq` branch at 0xd9ac targets 0xda20, is taken when k0(?) == 0, and falls through when k0(?) != 0.

- `utlbmiss2_not_large_page` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd990 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd990-0xd9bc (44 bytes).
  It occupies 44 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0xd990, `ld` at 0xd994.
  The `beq` branch at 0xd9a4 targets 0xd9bc, is taken when k1(?) == 0, and falls through when k1(?) != 0.
  The `beq` branch at 0xd9ac targets 0xda20, is taken when k0(?) == 0, and falls through when k0(?) != 0.

- `eutlbmiss2` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd9bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd9bc-0xd9c0 (4 bytes).
  It occupies 4 bytes.

- `utlbmiss_sharedseg1a` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd9bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd9bc-0xd9c0 (4 bytes).
  It occupies 4 bytes.

- `utlbmiss_sharedseg1` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xd9c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xd9c0-0xda20 (96 bytes).
  It occupies 96 bytes.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0xd9e0, `ld` at 0xd9e4, `ld` at 0xda10.
  The `bne` branch at 0xd9c0 targets 0xd9f8, is taken when k0(?) != 0, and falls through when k0(?) == 0.

- `utlbmiss_sharedseg2a` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xda20 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xda20-0xda24 (4 bytes).
  It occupies 4 bytes.

- `utlbmiss_sharedseg2` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xda24 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xda24-0xda4c (40 bytes).
  It occupies 40 bytes.
  The `ld` at 0xda3c loads 8 bytes from ?.

- `lpg_overlay_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xda4c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xda4c-0xdad4 (136 bytes).
  It occupies 136 bytes.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0xda5c, `ld` at 0xdaa8, `ld` at 0xdab4.
  The `sd` at 0xda70 stores 8 bytes to abs 0xffffffffffffc038.
  The `ld` at 0xdacc loads 8 bytes from abs 0xffffffffffffc038.
  The `beq` branch at 0xda68 targets 0xd990, is taken when (k1(?) & 0xf) == 0, and falls through when (k1(?) & 0xf) != 0.

- `elpg_overlay_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdad4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdad4-0xdb00 (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0xdae0 loads 4 bytes from abs 0xffffffffffffc4bc.
  The `sw` at 0xdaec stores 4 bytes to abs 0xffffffffffffc4bc.
  The `lw` at 0xdaf0 loads 4 bytes from abs 0xffffffffffffc4c0.
  The `sw` at 0xdafc stores 4 bytes to abs 0xffffffffffffc4c0.
  Calls utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdae8).
  Calls utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdaf8).
  The `beq` branch at 0xdadc targets 0xdaf0, is taken when (k1(?) & 0x10) == 0, and falls through when (k1(?) & 0x10) != 0.

- `utlbmiss1` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdad4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdad4-0xdb00 (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0xdae0 loads 4 bytes from abs 0xffffffffffffc4bc.
  The `sw` at 0xdaec stores 4 bytes to abs 0xffffffffffffc4bc.
  The `lw` at 0xdaf0 loads 4 bytes from abs 0xffffffffffffc4c0.
  The `sw` at 0xdafc stores 4 bytes to abs 0xffffffffffffc4c0.
  Calls utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdae8).
  Calls utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdaf8).
  The `beq` branch at 0xdadc targets 0xdaf0, is taken when (k1(?) & 0x10) == 0, and falls through when (k1(?) & 0x10) != 0.

- `eutlbmiss1` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdb00 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdb00-0xdb2c (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0xdb0c loads 4 bytes from abs 0xffffffffffffc4bc.
  The `sw` at 0xdb18 stores 4 bytes to abs 0xffffffffffffc4bc.
  The `lw` at 0xdb1c loads 4 bytes from abs 0xffffffffffffc4c0.
  The `sw` at 0xdb28 stores 4 bytes to abs 0xffffffffffffc4c0.
  Calls lpg_utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb14).
  Calls lpg_utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb24).
  The `beq` branch at 0xdb08 targets 0xdb1c, is taken when (k1(?) & 0x10) == 0, and falls through when (k1(?) & 0x10) != 0.

- `lpg_counting_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdb00 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdb00-0xdb2c (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0xdb0c loads 4 bytes from abs 0xffffffffffffc4bc.
  The `sw` at 0xdb18 stores 4 bytes to abs 0xffffffffffffc4bc.
  The `lw` at 0xdb1c loads 4 bytes from abs 0xffffffffffffc4c0.
  The `sw` at 0xdb28 stores 4 bytes to abs 0xffffffffffffc4c0.
  Calls lpg_utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb14).
  Calls lpg_utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb24).
  The `beq` branch at 0xdb08 targets 0xdb1c, is taken when (k1(?) & 0x10) == 0, and falls through when (k1(?) & 0x10) != 0.

- `elpg_counting_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdb2c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdb2c-0xdb58 (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0xdb38 loads 4 bytes from abs 0xffffffffffffc4bc.
  The `sw` at 0xdb44 stores 4 bytes to abs 0xffffffffffffc4bc.
  The `lw` at 0xdb48 loads 4 bytes from abs 0xffffffffffffc4c0.
  The `sw` at 0xdb54 stores 4 bytes to abs 0xffffffffffffc4c0.
  Calls utlbmiss2 via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb40).
  Calls utlbmiss2 via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb50).
  The `beq` branch at 0xdb34 targets 0xdb48, is taken when (k1(?) & 0x10) == 0, and falls through when (k1(?) & 0x10) != 0.

- `utlbmiss3` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdb2c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdb2c-0xdb58 (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0xdb38 loads 4 bytes from abs 0xffffffffffffc4bc.
  The `sw` at 0xdb44 stores 4 bytes to abs 0xffffffffffffc4bc.
  The `lw` at 0xdb48 loads 4 bytes from abs 0xffffffffffffc4c0.
  The `sw` at 0xdb54 stores 4 bytes to abs 0xffffffffffffc4c0.
  Calls utlbmiss2 via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb40).
  Calls utlbmiss2 via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb50).
  The `beq` branch at 0xdb34 targets 0xdb48, is taken when (k1(?) & 0x10) == 0, and falls through when (k1(?) & 0x10) != 0.

- `eutlbmiss3` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdb58 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdb58-0xdb84 (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0xdb64 loads 4 bytes from abs 0xffffffffffffc4bc.
  The `sw` at 0xdb70 stores 4 bytes to abs 0xffffffffffffc4bc.
  The `lw` at 0xdb74 loads 4 bytes from abs 0xffffffffffffc4c0.
  The `sw` at 0xdb80 stores 4 bytes to abs 0xffffffffffffc4c0.
  Calls lpg_overlay_utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb6c).
  Calls lpg_overlay_utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb7c).
  The `beq` branch at 0xdb60 targets 0xdb74, is taken when (k1(?) & 0x10) == 0, and falls through when (k1(?) & 0x10) != 0.

- `lpg_overlay_counting_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdb58 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdb58-0xdb84 (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0xdb64 loads 4 bytes from abs 0xffffffffffffc4bc.
  The `sw` at 0xdb70 stores 4 bytes to abs 0xffffffffffffc4bc.
  The `lw` at 0xdb74 loads 4 bytes from abs 0xffffffffffffc4c0.
  The `sw` at 0xdb80 stores 4 bytes to abs 0xffffffffffffc4c0.
  Calls lpg_overlay_utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb6c).
  Calls lpg_overlay_utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb7c).
  The `beq` branch at 0xdb60 targets 0xdb74, is taken when (k1(?) & 0x10) == 0, and falls through when (k1(?) & 0x10) != 0.

- `elpg_overlay_counting_utlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdb84 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdb84-0xdb88 (4 bytes).
  It occupies 4 bytes.
  The `ld` at 0xdb84 loads 8 bytes from abs 0xffffffffffffc4c8.

- `utlbmiss_prolog_patch` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdb84 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdb84-0xdb88 (4 bytes).
  It occupies 4 bytes.
  The `ld` at 0xdb84 loads 8 bytes from abs 0xffffffffffffc4c8.

- `utlbmissj` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdb88 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdb88-0xdba8 (32 bytes).
  It occupies 32 bytes.
  Calls utlbmiss via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xdb98).
  The instructions from 0xdba0 to 0xdba4 are not reached by any path from the entry, and their branches are not listed.

- `eutlbmissj` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdba8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdba8-0xdbb0 (8 bytes).
  It occupies 8 bytes.

- `_ecc_errorvec` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdbb0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdbb0-0xdc18 (104 bytes).
  It occupies 104 bytes.
  The `ld` at 0xdbcc loads 8 bytes from abs 0xffffffffaff50000.
  The `ld` at 0xdbd4 loads 8 bytes from ([0xffffffffaff50000]:8 << 0x3) +0xff0.
  The `sd` at 0xdbd8 stores 8 bytes to [([0xffffffffaff50000]:8 << 0x3)+4080]:8 +0xc8.
  The `sd` at 0xdbdc stores 8 bytes to [([0xffffffffaff50000]:8 << 0x3)+4080]:8 +0x0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xdc10).

- `_ecc_end` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdc18 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdc18-0xdc30 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0xdc2c loads 4 bytes from (a0 << 0x2) -0x500fffe0.
  The return at 0xdc28 has v0 = [(a0 << 0x2)-1343225824].

- `get_mem_conf` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdc18 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdc18-0xdc30 (24 bytes).
  It occupies 24 bytes.
  The `lw` at 0xdc2c loads 4 bytes from (a0 << 0x2) -0x500fffe0.
  The return at 0xdc28 has v0 = [(a0 << 0x2)-1343225824].

- `bank_addrlo` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdc30 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdc30-0xdc54 (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0xdc38 calls _ecc_end [0xdc18] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0xdc4c has v0 = ?.

- `banksz` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdc54 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdc54-0xdc98 (68 bytes).
  It occupies 68 bytes.
  The `jal` at 0xdc5c calls _ecc_end [0xdc18] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xdc7c targets 0xdc90, is taken when (v0(=ret(_ecc_end)) & a3(=0xffffffff80000000)) == 0, and falls through when (v0(=ret(_ecc_end)) & a3(=0xffffffff80000000)) != 0.
  The `beq` branch at 0xdc90 targets 0xdc88 and is always taken.
  The return at 0xdc88 has v0 = one of ?, 0x0.

- `addr_to_bank` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdc98 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdc98-0xdd3c (164 bytes).
  It occupies 164 bytes.
  The `jal` at 0xdcdc calls banksz [0xdc54] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xdcec calls bank_addrlo [0xdc30] with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0xdcb0 targets 0xdcbc, is taken when a0 < at(=0x20000000) (unsigned), and falls through when a0 >= at(=0x20000000) (unsigned).
  The `beq` branch at 0xdcc4 targets 0xdcdc and is always taken.
  The `beq` branch at 0xdcd4 targets 0xdd1c, is taken when s0(?) >= 0x4 (signed), and falls through when s0(?) < 0x4 (signed).
  The `beq` branch at 0xdce4 targets 0xdccc, is taken when v0(=ret(banksz)) == 0, and falls through when v0(=ret(banksz)) != 0.
  The `bne` branch at 0xdd00 targets 0xdccc, is taken when s2(?) < v0(=ret(bank_addrlo)) (unsigned), and falls through when s2(?) >= v0(=ret(bank_addrlo)) (unsigned).
  The `beq` branch at 0xdd0c targets 0xdccc, is taken when s2(?) >= a0(?) (unsigned), and falls through when s2(?) < a0(?) (unsigned).
  The `beq` branch at 0xdd14 targets 0xdd24 and is always taken.
  The return at 0xdd34 has v0 = one of ?, -0x1.

- `szmem` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdd3c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdd3c-0xdddc (160 bytes).
  It occupies 160 bytes.
  The `jal` at 0xdd74 calls banksz [0xdc54] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xdd54 targets 0xdd68, is taken when at(=[sym(.sdata)+216]:8) == 0, and falls through when at(=[sym(.sdata)+216]:8) != 0.
  The `bne` branch at 0xdd8c targets 0xdd74, is taken when s0(?) < 0x4 (signed), and falls through when s0(?) >= 0x4 (signed).
  The `beq` branch at 0xdd9c targets 0xddd4, is taken when s2(=a1) == 0, and falls through when s2(=a1) != 0.
  The `beq` branch at 0xddcc targets 0xdd5c and is always taken.
  The `beq` branch at 0xddd4 targets 0xddb8 and is always taken.
  The return at 0xdd60 has v0 = one of ([sym(.sdata)+216]:8 << 0x0), ?.

- `is_in_main_memory` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdddc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdddc-0xde14 (56 bytes).
  It occupies 56 bytes.
  The `bne` branch at 0xddec targets 0xddfc, is taken when a0 < a4(=0x20000000) (unsigned), and falls through when a0 >= a4(=0x20000000) (unsigned).
  The `bne` branch at 0xddf4 targets 0xde04, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0xddfc targets 0xde0c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The return at 0xde04 has v0 = 0x1.
  The return at 0xde0c has v0 = 0x0.

- `block_is_in_main_memory` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xde14 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xde14-0xde60 (76 bytes).
  It occupies 76 bytes.
  The `jal` at 0xde20 calls is_in_main_memory with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xde38 calls is_in_main_memory with a0=(a0 + a1)-1, a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0xde28 targets 0xde50, is taken when v0(=ret(is_in_main_memory)) == 0, and falls through when v0(=ret(is_in_main_memory)) != 0.
  The `beq` branch at 0xde40 targets 0xde54, is taken when v0(=ret(is_in_main_memory)) == 0, and falls through when v0(=ret(is_in_main_memory)) != 0.
  The `beq` branch at 0xde48 targets 0xde54 and is always taken.
  The return at 0xde58 has v0 = one of 0x0, 0x1.

- `is_in_pfdat` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xde60 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xde60-0xde94 (52 bytes).
  It occupies 52 bytes.
  The `bne` branch at 0xde70 targets 0xde88, is taken when a0 < at(?) (signed), and falls through when a0 >= at(?) (signed).
  The `bne` branch at 0xde80 targets 0xde8c, is taken when a0 < v1(=[sym(.sdata)+216]:8+32768) (unsigned), and falls through when a0 >= v1(=[sym(.sdata)+216]:8+32768) (unsigned).
  The return at 0xde8c has v0 = one of 0x0, 0x1.

- `clean_icache` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xde94 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xde94-0xdf28 (148 bytes).
  It occupies 148 bytes.
  The `jal` at 0xdef8 calls __icache_inval with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?, a5=0xa800000000000000, a6=0x1.
  The `jal` at 0xdf18 calls __cache_wb_inval with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0xa800010000000000, a6=0x1.
  The `beq` branch at 0xdea0 targets 0xdf00, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0xdebc targets 0xdedc, is taken when (a3 & 0x100) == 0, and falls through when (a3 & 0x100) != 0.
  The `bne` branch at 0xded0 targets 0xdee0, is taken when a0 < at(=0xa800000000000000) (unsigned), and falls through when a0 >= at(=0xa800000000000000) (unsigned).
  The `bne` branch at 0xded8 targets 0xdf18, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0xdee8 targets 0xdef4, is taken when a0 < v0(=0x10000000000) (unsigned), and falls through when a0 >= v0(=0x10000000000) (unsigned).
  The `beq` branch at 0xdef0 targets 0xdf0c, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0xdf10 targets 0xdef8 and is always taken.
  The `beq` branch at 0xdf20 targets 0xdf04 and is always taken.
  The return at 0xdf04 has v0 = one of ?, ret(__cache_wb_inval).

- `clean_dcache` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xdf28 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xdf28-0xe008 (224 bytes).
  It occupies 224 bytes.
  The `jal` at 0xdfbc calls __dcache_inval with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=-0xb, a7=0x1.
  The `jal` at 0xdfd4 calls __dcache_wb with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=-0xb, a7=0x1.
  The `jal` at 0xdfe8 calls __cache_wb_inval with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=a0 at entry (arg0), a6=-0xb, a7=0x1.
  The `jal` at 0xdff8 calls __dcache_wb_inval with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=-0xb, a7=0x1.
  The `beq` branch at 0xdf38 targets 0xdfdc, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0xdf68 targets 0xdf88, is taken when (a3 & 0x100) == 0, and falls through when (a3 & 0x100) != 0.
  The `bne` branch at 0xdf7c targets 0xdf8c, is taken when a0 < t9(=0xa800000000000000) (unsigned), and falls through when a0 >= t9(=0xa800000000000000) (unsigned).
  The `bne` branch at 0xdf84 targets 0xdfe8, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0xdf98 targets 0xdfa8, is taken when a0 < at(=0x10000000000) (unsigned), and falls through when a0 >= at(=0x10000000000) (unsigned).
  The `beq` branch at 0xdfa0 targets 0xdfac, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xdfac targets 0xdff8, is taken when t2(?) == t3(=0x3), and falls through when t2(?) != t3(=0x3).
  The `beq` branch at 0xdfb4 targets 0xdfcc, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xdfc4 targets 0xdfe0 and is always taken.
  The `beq` branch at 0xdfcc targets 0xdfe0, is taken when ra(?) == 0, and falls through when ra(?) != 0.
  The `beq` branch at 0xdff0 targets 0xdfe0 and is always taken.
  The `beq` branch at 0xe000 targets 0xdfe0 and is always taken.
  The return at 0xdfe0 has v0 = one of ret(__dcache_inval), ?, ret(__cache_wb_inval), ret(__dcache_wb_inval).

- `sync_dcaches_excl` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe008 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe008-0xe124 (284 bytes).
  It occupies 284 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0xe014, `ld` at 0xe080.
  2 such `lbu` accesses load 1 byte from abs 0xffffffffffffc04f, including `lbu` at 0xe038, `lbu` at 0xe0d0.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xe098, `lbu` at 0xe0ac, `lbu` at 0xe0c4.
  The `jal` at 0xe044 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xe070 calls __dcache_wb_inval with a0=?, a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xe0dc calls splx with a0=?, a1=[-0x3fe0]:8, a2=?, a3=?, a5=0x2.
  The `jal` at 0xe104 calls rt_unpin_thread with a0=?, a1=[-0x3fe0]:8, a2=?, a3=?, a4=[-0x3fb1]:1, a5=0x2.
  The `jal` at 0xe114 calls rt_pin_thread with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xe030 targets 0xe044, is taken when at(=[-0x3fe0]:8) == 0, and falls through when at(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0xe03c targets 0xe114, is taken when v0(=[-0x3fb1]:1) == v1(=0x2), and falls through when v0(=[-0x3fb1]:1) != v1(=0x2).
  The `beq` branch at 0xe07c targets 0xe0c8, is taken when s1(=a1) == 0, and falls through when s1(=a1) != 0.
  The `bne` branch at 0xe09c targets 0xe0c8, is taken when a0(=a1-1) < a2(?) (unsigned), and falls through when a0(=a1-1) >= a2(?) (unsigned).
  The `bne` branch at 0xe0b0 targets 0xe0c8, is taken when a0(=a1-1) < a2(?) (unsigned), and falls through when a0(=a1-1) >= a2(?) (unsigned).
  The `beq` branch at 0xe0c0 targets 0xe08c, is taken when a0(=a1-1) >= a2(?) (unsigned), and falls through when a0(=a1-1) < a2(?) (unsigned).
  The `beq` branch at 0xe0c8 targets 0xe0dc, is taken when a1(=[-0x3fe0]:8) == 0, and falls through when a1(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0xe0d4 targets 0xe104, is taken when a4(=[-0x3fb1]:1) == a5(=0x2), and falls through when a4(=[-0x3fb1]:1) != a5(=0x2).
  The `beq` branch at 0xe10c targets 0xe0e8 and is always taken.
  The `beq` branch at 0xe11c targets 0xe050 and is always taken.
  The return at 0xe0fc has v0 = 0x1.

- `sync_dcaches` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe124 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe124-0xe26c (328 bytes).
  It occupies 328 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc020, including `ld` at 0xe168, `ld` at 0xe1a0.
  2 such `lbu` accesses load 1 byte from abs 0xffffffffffffc04f, including `lbu` at 0xe174, `lbu` at 0xe208.
  2 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xe1dc, `lbu` at 0xe1fc.
  The `jal` at 0xe158 calls sync_dcaches_excl with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xe180 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xe214 calls rt_unpin_thread with a0=?, a1=[-0x3fe0]:8, a2=?, a3=?.
  The `jal` at 0xe224 calls splx with a0=?, a1=[-0x3fe0]:8, a2=?, a3=?.
  The `jal` at 0xe250 calls rt_pin_thread with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bgez` branch at 0xe150 targets 0xe168, is taken when at(=(a3 << 0x2f)) >= 0 (signed), and falls through when at(=(a3 << 0x2f)) < 0 (signed).
  The `beq` branch at 0xe160 targets 0xe230 and is always taken.
  The `beq` branch at 0xe16c targets 0xe180, is taken when t8(=[-0x3fe0]:8) == 0, and falls through when t8(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0xe178 targets 0xe250, is taken when t9(=[-0x3fb1]:1) == ra(=0x2), and falls through when t9(=[-0x3fb1]:1) != ra(=0x2).
  The `bne` branch at 0xe1a8 targets 0xe1b4, is taken when s0(?) < at(=0x10000000000) (unsigned), and falls through when s0(?) >= at(=0x10000000000) (unsigned).
  The `beq` branch at 0xe1b0 targets 0xe260, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xe1c4 targets 0xe200, is taken when s1(=a1) == 0, and falls through when s1(=a1) != 0.
  The `bne` branch at 0xe1e4 targets 0xe200, is taken when a0(=a1-1) < v0(?) (unsigned), and falls through when a0(=a1-1) >= v0(?) (unsigned).
  The `beq` branch at 0xe1f8 targets 0xe1d0, is taken when a0(=a1-1) >= v0(?) (unsigned), and falls through when a0(=a1-1) < v0(?) (unsigned).
  The `beq` branch at 0xe200 targets 0xe224, is taken when a1(=[-0x3fe0]:8) == 0, and falls through when a1(=[-0x3fe0]:8) != 0.
  The `bne` branch at 0xe20c targets 0xe224, is taken when t2(=[-0x3fb1]:1) != t3(=0x2), and falls through when t2(=[-0x3fb1]:1) == t3(=0x2).
  The `beq` branch at 0xe21c targets 0xe230 and is always taken.
  The `beq` branch at 0xe258 targets 0xe18c and is always taken.
  The `beq` branch at 0xe264 targets 0xe1c4 and is always taken.
  The return at 0xe248 has v0 = one of ret(sync_dcaches_excl), 0x0.

- `__heart_invalidate_war` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe26c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe26c-0xe348 (220 bytes).
  It occupies 220 bytes.
  3 such `lbu` accesses load 1 byte from ?, including `lbu` at 0xe2e8, `lbu` at 0xe2fc, `lbu` at 0xe314.
  The `jal` at 0xe2b8 calls __dcache_inval with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?, a4=a0 at entry (arg0).
  The `jal` at 0xe338 calls cache_operation with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x48001, a3=?, a4=a0 at entry (arg0).
  The `bne` branch at 0xe294 targets 0xe32c, is taken when a0 < at(=0xa800000000000000) (unsigned), and falls through when a0 >= at(=0xa800000000000000) (unsigned).
  The `beq` branch at 0xe29c targets 0xe32c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xe2cc targets 0xe318, is taken when t8(=[sym(maxcpus)]) == t9(=0x1), and falls through when t8(=[sym(maxcpus)]) != t9(=0x1).
  The `beq` branch at 0xe2d4 targets 0xe31c, is taken when s1(=a1) == 0, and falls through when s1(=a1) != 0.
  The `bne` branch at 0xe2ec targets 0xe318, is taken when a0(=a1-1) < a3(?) (unsigned), and falls through when a0(=a1-1) >= a3(?) (unsigned).
  The `bne` branch at 0xe300 targets 0xe318, is taken when a0(=a1-1) < a3(?) (unsigned), and falls through when a0(=a1-1) >= a3(?) (unsigned).
  The `beq` branch at 0xe310 targets 0xe2dc, is taken when a0(=a1-1) >= a3(?) (unsigned), and falls through when a0(=a1-1) < a3(?) (unsigned).
  The `beq` branch at 0xe340 targets 0xe31c and is always taken.
  The return at 0xe324 has v0 = one of ret(__dcache_inval), ?, ret(cache_operation).

- `pmem_getfirstclick` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe348 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe348-0xe350 (8 bytes).
  It occupies 8 bytes.
  The return at 0xe348 has v0 = 0x8000.

- `node_getfirstfree` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe350 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe350-0xe358 (8 bytes).
  It occupies 8 bytes.
  The return at 0xe350 has v0 = 0x8000.

- `node_getmaxclick` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe358 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe358-0xe368 (16 bytes).
  It occupies 16 bytes.
  The return at 0xe360 has v0 = ([sym(.sdata)+216]:8+32767 << 0x0).

- `setupbadmem` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe368 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe368-0xe4ac (324 bytes).
  It occupies 324 bytes.
  The `sh` at 0xe3c4 stores 2 bytes to [sym(pfdat)]:8 +0x400014.
  The `sh` at 0xe3e4 stores 2 bytes to [sym(pfdat)]:8 +0x800014.
  The `sh` at 0xe43c stores 2 bytes to [sym(pfdat)]:8 +0xffffd4.
  The `sh` at 0xe460 stores 2 bytes to [sym(pfdat)]:8 +0x1ffffd4.
  The `jal` at 0xe37c calls banksz [0xdc54] with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xe488 calls cmn_err with a0=0x5, a1=sym(.rodata)+3120, a2=0xffffc000, a3=0xffff, a6=one of 0xffff, 0x400000, a7=0x800000.
  The `jal` at 0xe49c calls cmn_err with a0=0x5, a1=sym(.rodata)+3120, a2=0x1ffffc000, a3=?.
  The `bne` branch at 0xe3ac targets 0xe3c8, is taken when a2(?) != at(=0x40000000), and falls through when a2(?) == at(=0x40000000).
  The `beq` branch at 0xe3c0 targets 0xe3ec and is always taken.
  The `bne` branch at 0xe3d4 targets 0xe3e8, is taken when a2(?) != a5(=0x80000000), and falls through when a2(?) == a5(=0x80000000).
  The `beq` branch at 0xe3e0 targets 0xe3ec and is always taken.
  The `beq` branch at 0xe3f8 targets 0xe464, is taken when a2(=[sym(tigon2_war_enable)]) == 0, and falls through when a2(=[sym(tigon2_war_enable)]) != 0.
  The `bne` branch at 0xe404 targets 0xe464, is taken when s1(?) < t2(=0x100000000) (unsigned), and falls through when s1(?) >= t2(=0x100000000) (unsigned).
  The `beq` branch at 0xe40c targets 0xe480, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0xe438 targets 0xe464, is taken when s1(?) < t9(=0x200000000) (unsigned), and falls through when s1(?) >= t9(=0x200000000) (unsigned).
  The `beq` branch at 0xe448 targets 0xe498, is taken when ra(=[sym(tigon2_war_enable)]) >= 0x2 (signed), and falls through when ra(=[sym(tigon2_war_enable)]) < 0x2 (signed).
  The `beq` branch at 0xe490 targets 0xe418 and is always taken.
  The `beq` branch at 0xe4a4 targets 0xe454 and is always taken.
  The return at 0xe478 has v0 = one of 0x0, 0x1, 0x2, 0x3.

- `maddr_to_dimm` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe4ac (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe4ac-0xe500 (84 bytes).
  It occupies 84 bytes.
  The `ld` at 0xe4ec loads 8 bytes from table(sym(.data)+7472) +0x0.
  The `jal` at 0xe4b8 calls addr_to_bank [0xdc98] with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xe4d8 targets 0xe4f8, is taken when v0(=ret(addr_to_bank)) == a5(=-0x1), and falls through when v0(=ret(addr_to_bank)) != a5(=-0x1).
  The `beq` branch at 0xe4f8 targets 0xe4f0 and is always taken.
  The return at 0xe4f0 has v0 = one of entry(sym(.data)+7472), 0x0.

- `log_dimmerr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe500 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe500-0xe5e8 (232 bytes).
  It occupies 232 bytes.
  The `jal` at 0xe524 calls maddr_to_dimm with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xe558 calls sprintf with a0=sp-64, a1=sym(.rodata)+3120, a2=one of 0x43, 0x44, a3=?, a5=0x43.
  The `jal` at 0xe5a0 calls cmn_err with a0=one of 0x1, 0x5, a1=sym(.rodata)+3120, a2=sym(.rodata)+3120, a3=sym(.rodata)+3120, a4=a0 at entry (arg0), a5=sym(.rodata)+3120, a7=sp-64.
  The `beq` branch at 0xe530 targets 0xe5bc, is taken when s3(=a1) == 0, and falls through when s3(=a1) != 0.
  The `bne` branch at 0xe568 targets 0xe5cc, is taken when s1(=a4) != 0, and falls through when s1(=a4) == 0.
  The `bne` branch at 0xe574 targets 0xe5d8, is taken when s0(=ret(maddr_to_dimm)) != 0, and falls through when s0(=ret(maddr_to_dimm)) == 0.
  The `beq` branch at 0xe5c4 targets 0xe570, is taken when s1(=a4) == 0, and falls through when s1(=a4) != 0.
  The `beq` branch at 0xe5d0 targets 0xe57c, is taken when s0(=ret(maddr_to_dimm)) == 0, and falls through when s0(=ret(maddr_to_dimm)) != 0.
  The `beq` branch at 0xe5e0 targets 0xe588 and is always taken.
  The return at 0xe5b4 has v0 = ret(maddr_to_dimm).

- `VEC_addrerr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe5f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe5f0-0xe5f8 (8 bytes).
  It occupies 8 bytes.
  Calls VEC_trap via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xe5f0).

- `VEC_tlbmiss` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe600 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe600-0xe644 (68 bytes).
  It occupies 68 bytes.
  The `ld` at 0xe600 loads 8 bytes from ?.
  The `ld` at 0xe618 loads 8 bytes from a0 (arg0 at entry) +0xf8.
  The `ld` at 0xe640 loads 8 bytes from a0 (arg0 at entry) +0x118.
  The `jal` at 0xe610 calls tlbmiss with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  Calls exception_exit via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0xe62c).
  Calls soft_trap via direct with a0=a0 at entry (arg0), a1=ret(tlbmiss), a2=?, a3=[a0+280]:8 (`j` at 0xe63c).
  The `bne` branch at 0xe61c targets 0xe634, is taken when v0(=ret(tlbmiss)) != 0, and falls through when v0(=ret(tlbmiss)) == 0.

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

- `sendSIGFPE` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe698 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe698-0xe6e8 (80 bytes).
  It occupies 80 bytes.
  The `ld` at 0xe698 loads 8 bytes from abs 0xffffffffffffc018.
  The `ld` at 0xe6b4 loads 8 bytes from [-0x3fe8]:8 +0x3e0.
  The `sw` at 0xe6b8 stores 4 bytes to [[-0x3fe8]:8+992]:8 +0x0.
  The `jal` at 0xe6c4 calls sigtouthread with a0=a0 at entry (arg0), a1=0x8, a2=0x0, a3=a3 at entry (arg3).
  The `jal` at 0xe6d0 calls checkfp with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `bne` branch at 0xe6ac targets 0xe6bc, is taken when a2(=[-0x3fe8]:8) != a0, and falls through when a2(=[-0x3fe8]:8) == a0.
  The return at 0xe6e0 has v0 = ret(checkfp).

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

- `softfp_dispatch` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xe814 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xe814-0xf244 (2608 bytes).
  It occupies 2608 bytes.
  8 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0xe834, `ld` at 0xe864, `ld` at 0xed1c.
  The `ld` at 0xe868 loads 8 bytes from [-0x3fe8]:8 +0x318.
  The `ld` at 0xe86c loads 8 bytes from a0 (arg0 at entry) +0x120.
  The `ld` at 0xe870 loads 8 bytes from [[-0x3fe8]:8+792]:8 +0x200.
  The `ld` at 0xe884 loads 8 bytes from [[-0x3fe8]:8+792]:8 +0x208.
  3 such `ld` accesses load 8 bytes from table(sym(.rodata)+3328) +0x0, including `ld` at 0xea34, `ld` at 0xecb0, `ld` at 0xed08.
  3 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x549, including `lbu` at 0xed20, `lbu` at 0xedcc, `lbu` at 0xedf4.
  The `jal` at 0xe838 calls checkfp with a0=[-0x3fe8]:8, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xe854 calls get_current_abi with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xe85c calls load_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xe8d0 calls fp_init_glob with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=one of 0x0, 0x3.
  The `jal` at 0xe8f4 calls illfpinst [0xf244] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?, a6=0x13, a7=0x11.
  The `jal` at 0xe93c calls illfpinst [0xf244] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?, a6=0x13.
  The `jal` at 0xe98c calls illfpinst [0xf244] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?, a6=0x13.
  The `jal` at 0xe9a4 calls fpload_d with a0=?, a1=?, a2=?, a3=?, a6=0x13.
  The `jal` at 0xe9d8 calls illfpinst [0xf244] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?, a5=(a1 << 0xf).
  The `jal` at 0xe9ec calls fpload_d with a0=?, a1=?, a2=?, a3=?, a5=(a1 << 0xf).
  The `jal` at 0xea00 calls fpload_d with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xea48 calls fpload_s with a0=?, a1=?, a2=?, a3=?, a6=0x13.
  The `jal` at 0xea94 calls illfpinst [0xf244] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?, a4=0x1.
  The `jal` at 0xeac0 calls illfpinst [0xf244] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?, a5=(a1 << 0xf).
  The `jal` at 0xead4 calls fpload_d with a0=?, a1=?, a2=?, a3=?, a4=0x1.
  The `jal` at 0xeb2c calls illfpinst [0xf244] with a0=?, a1=a0 at entry (arg0), a2=?, a3=0x4, a4=0x5.
  The `jal` at 0xeb40 calls illfpinst [0xf244] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0xeb54 calls fpload_s with a0=?, a1=?, a2=?, a3=?, a5=(a1 << 0xf).
  The `jal` at 0xeb68 calls fpload_s with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xeb90 calls illfpinst [0xf244] with a0=?, a1=a0 at entry (arg0), a2=0x21, a3=0x4, a4=0x5.
  The `jal` at 0xec6c calls illfpinst [0xf244] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0xecc4 calls illfpinst [0xf244] with a0=?, a1=a0 at entry (arg0), a2=(a1 << 0x19), a3=?.
  The `jal` at 0xed14 calls _cvtsd_l with a0=0x1, a1=?, a2=0x21, a3=0x4, a4=0x5.
  The `jal` at 0xed44 calls illfpinst [0xf244] with a0=?, a1=a0 at entry (arg0), a2=0x21, a3=0x4.
  The `jal` at 0xed58 calls fpload_s with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xed68 calls _cvtsd_w with a0=0x1, a1=?, a2=0x21, a3=0x4.
  The `jal` at 0xed7c calls illfpinst [0xf244] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0xed8c calls _cvtsd_l with a0=0x0, a1=?, a2=?, a3=0x4, a4=0x5.
  The `jal` at 0xeda0 calls illfpinst [0xf244] with a0=?, a1=a0 at entry (arg0), a2=?, a3=?.
  The `jal` at 0xedc0 calls _comp_sd with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0xede8 calls _comp_sd with a0=0x1, a1=?, a2=?, a3=?.
  The `jal` at 0xf01c calls _cvtsd_w with a0=0x0, a1=?, a2=?, a3=0x4.
  The `beq` branch at 0xe82c targets 0xe840, is taken when at(=[sym(force_checkfp)]) == 0, and falls through when at(=[sym(force_checkfp)]) != 0.
  The `bne` branch at 0xe87c targets 0xe8a0, is taken when a0(=[a0+288]:8) < t8(=[[[-0x3fe8]:8+792]:8+512]:8) (unsigned), and falls through when a0(=[a0+288]:8) >= t8(=[[[-0x3fe8]:8+792]:8+512]:8) (unsigned).
  The `bne` branch at 0xe88c targets 0xe8a0, is taken when a2(=[[[-0x3fe8]:8+792]:8+520]:8) < a0(=[a0+288]:8) (unsigned), and falls through when a2(=[[[-0x3fe8]:8+792]:8+520]:8) >= a0(=[a0+288]:8) (unsigned).
  The `beq` branch at 0xe898 targets 0xe8a4 and is always taken.
  The `beq` branch at 0xe8e0 targets 0xe978, is taken when v0(?) == a6(=0x13), and falls through when v0(?) != a6(=0x13).
  The `beq` branch at 0xe8ec targets 0xe904, is taken when v0(?) == a7(=0x11), and falls through when v0(?) != a7(=0x11).
  The `beq` branch at 0xe8fc targets 0xe948 and is always taken.
  The `beq` branch at 0xe90c targets 0xe980, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `beq` branch at 0xe914 targets 0xea40, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0xe91c targets 0xea44, is taken when s4(?) == t8(=0x4), and falls through when s4(?) != t8(=0x4).
  The `beq` branch at 0xe928 targets 0xe99c, is taken when s4(?) == t9(=0x1), and falls through when s4(?) != t9(=0x1).
  The `beq` branch at 0xe930 targets 0xe9a0, is taken when s4(?) == ra(=0x5), and falls through when s4(?) != ra(=0x5).
  The `bne` branch at 0xe978 targets 0xe914, is taken when s7(?) != 0, and falls through when s7(?) == 0.
  The `bgez` branch at 0xe984 targets 0xe914, is taken when at(=(a1 << 0x14)) >= 0 (signed), and falls through when at(=(a1 << 0x14)) < 0 (signed).
  The `beq` branch at 0xe994 targets 0xe948 and is always taken.
  The `beq` branch at 0xe9b0 targets 0xea58, is taken when s5(=one of 0x0, 0x1) == 0, and falls through when s5(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0xe9b8 targets 0xeaa4, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `beq` branch at 0xe9c0 targets 0xeb50, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0xe9cc targets 0xe9e8, is taken when s4(?) == a1(=0x1), and falls through when s4(?) != a1(=0x1).
  The `beq` branch at 0xe9e0 targets 0xe948 and is always taken.
  The `beq` branch at 0xea2c targets 0xeb3c, is taken when a0(?) >= 0x1a (unsigned), and falls through when a0(?) < 0x1a (unsigned).
  The `beq` branch at 0xea50 targets 0xe9b0 and is always taken.
  The `bne` branch at 0xea5c targets 0xea74, is taken when s5(?) < 0x4 (unsigned), and falls through when s5(?) >= 0x4 (unsigned).
  The `bne` branch at 0xea64 targets 0xeaf4, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0xea6c targets 0xeaf4, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0xea74 targets 0xec64, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `beq` branch at 0xea7c targets 0xed54, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0xea88 targets 0xead0, is taken when s4(?) == a4(=0x1), and falls through when s4(?) != a4(=0x1).
  The `beq` branch at 0xea9c targets 0xe948 and is always taken.
  The `bltz` branch at 0xeaa4 targets 0xeac0, is taken when a5(=(a1 << 0xf)) < 0 (signed), and falls through when a5(=(a1 << 0xf)) >= 0 (signed).
  The `bltz` branch at 0xeab0 targets 0xeabc, is taken when a6(=(a1 << 0xa)) < 0 (signed), and falls through when a6(=(a1 << 0xa)) >= 0 (signed).
  The `bgez` branch at 0xeab8 targets 0xe9c0, is taken when a7(=(a1 << 0x19)) >= 0 (signed), and falls through when a7(=(a1 << 0x19)) < 0 (signed).
  The `beq` branch at 0xeac8 targets 0xe948 and is always taken.
  The `bne` branch at 0xeae4 targets 0xeaf4, is taken when s5(?) < 0x30 (unsigned), and falls through when s5(?) >= 0x30 (unsigned).
  The `bne` branch at 0xeaec targets 0xeafc, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0xeaf4 targets 0xecbc, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `beq` branch at 0xeafc targets 0xec7c, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0xeb08 targets 0xecd4, is taken when v0(=0x1) == s4(?), and falls through when v0(=0x1) != s4(?).
  The `beq` branch at 0xeb14 targets 0xed2c, is taken when s4(?) == a3(=0x4), and falls through when s4(?) != a3(=0x4).
  The `beq` branch at 0xeb20 targets 0xeb78, is taken when s4(?) == a4(=0x5), and falls through when s4(?) != a4(=0x5).
  The `beq` branch at 0xeb34 targets 0xe948 and is always taken.
  The `beq` branch at 0xeb48 targets 0xe948 and is always taken.
  The `beq` branch at 0xeb70 targets 0xea0c and is always taken.
  The `beq` branch at 0xeb78 targets 0xed8c, is taken when s5(?) == a1(=0x20), and falls through when s5(?) != a1(=0x20).
  The `beq` branch at 0xeb84 targets 0xed14, is taken when s5(?) == a2(=0x21), and falls through when s5(?) != a2(=0x21).
  The `beq` branch at 0xeb98 targets 0xe948 and is always taken.
  The `bgez` branch at 0xec64 targets 0xea7c, is taken when a1(=(a1 << 0xf)) >= 0 (signed), and falls through when a1(=(a1 << 0xf)) < 0 (signed).
  The `beq` branch at 0xec74 targets 0xe948 and is always taken.
  The `bne` branch at 0xec7c targets 0xec94, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0xec88 targets 0xedb0, is taken when s5(?) < 0x40 (unsigned), and falls through when s5(?) >= 0x40 (unsigned).
  The `beq` branch at 0xeca8 targets 0xed78, is taken when a0(?) >= 0x26 (unsigned), and falls through when a0(?) < 0x26 (unsigned).
  The `bgez` branch at 0xecbc targets 0xeafc, is taken when a2(=(a1 << 0x19)) >= 0 (signed), and falls through when a2(=(a1 << 0x19)) < 0 (signed).
  The `beq` branch at 0xeccc targets 0xe948 and is always taken.
  The `bne` branch at 0xecd4 targets 0xecec, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bne` branch at 0xece0 targets 0xedd8, is taken when s5(?) < 0x40 (unsigned), and falls through when s5(?) >= 0x40 (unsigned).
  The `beq` branch at 0xed00 targets 0xed9c, is taken when a2(?) >= 0x26 (unsigned), and falls through when a2(?) < 0x26 (unsigned).
  The `beq` branch at 0xed24 targets 0xe948 and is always taken.
  The `beq` branch at 0xed2c targets 0xf01c, is taken when s5(?) == a1(=0x20), and falls through when s5(?) != a1(=0x20).
  The `beq` branch at 0xed38 targets 0xed68, is taken when s5(?) == a2(=0x21), and falls through when s5(?) != a2(=0x21).
  The `beq` branch at 0xed4c targets 0xe948 and is always taken.
  The `beq` branch at 0xed60 targets 0xeae0 and is always taken.
  The `beq` branch at 0xed70 targets 0xed20 and is always taken.
  The `beq` branch at 0xed84 targets 0xe948 and is always taken.
  The `beq` branch at 0xed94 targets 0xed20 and is always taken.
  The `beq` branch at 0xeda8 targets 0xe948 and is always taken.
  The `beq` branch at 0xedd0 targets 0xe948 and is always taken.
  The `beq` branch at 0xedf8 targets 0xe948 and is always taken.
  The `beq` branch at 0xf024 targets 0xed20 and is always taken.
  The return at 0xe970 has v0 = one of ret(illfpinst), ?.
  The instructions from 0xeba0 to 0xec60 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xee00 to 0xf018 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0xf02c to 0xf240 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0xea38 uses a jump table whose successors are unresolved.
  The indirect jump at 0xecb4 uses a jump table whose successors are unresolved.
  The indirect jump at 0xed0c uses a jump table whose successors are unresolved.

- `illfpinst` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xf244 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xf244-0xf27c (56 bytes).
  It occupies 56 bytes.
  The `ld` at 0xf260 loads 8 bytes from abs 0xffffffffffffc018.
  The `jal` at 0xf258 calls softfp_psignal with a0=0x4, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The `jal` at 0xf264 calls checkfp with a0=[-0x3fe8]:8, a1=0x0, a2=?, a3=?.
  The return at 0xf274 has v0 = 0x1.

- `_rsqrt_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xf27c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xf27c-0xf5c0 (836 bytes).
  It occupies 836 bytes.
  The `lw` at 0xf2c0 loads 4 bytes from ((a0 << 0x2) + sym(EXP_INF)) +0x0.
  6 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0xf2d4, `ld` at 0xf2ec, `ld` at 0xf44c.
  6 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0xf2dc, `lw` at 0xf2f0, `lw` at 0xf450.
  3 such `sw` accesses store 4 bytes to [-0x3fe8]:8 +0x53c, including `sw` at 0xf2e8, `sw` at 0xf458, `sw` at 0xf4c0.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0xf348, `ld` at 0xf520.
  The `ld` at 0xf394 loads 8 bytes from ((a0 << 0x3) + sym(IMP_1BIT)) +0x0.
  The `lw` at 0xf39c loads 4 bytes from ((a0 << 0x2) + sym(EXP_BIAS)) +0x0.
  The `lw` at 0xf3c0 loads 4 bytes from ((a0 << 0x2) + sym(EXP_SHIFT)) +0x0.
  2 such `ld` accesses load 8 bytes from (sym(QUIETNAN) + (a0 << 0x3)) +0x0, including `ld` at 0xf498, `ld` at 0xf564.
  The `ld` at 0xf500 loads 8 bytes from ((a0 << 0x3) + sym(renorm)) +0x0.
  The `lw` at 0xf528 loads 4 bytes from ((a0 << 0x2) + sym(EXP_MIN)) +0x0.
  The `lw` at 0xf52c loads 4 bytes from ?.
  The `lw` at 0xf588 loads 4 bytes from ((a0 << 0x2) + sym(SIGN_SHIFT)) +0x0.
  The `ld` at 0xf590 loads 8 bytes from (sym(INFINITY) + (a0 << 0x3)) +0x0.
  The `jal` at 0xf2a0 calls breakout_and_test_sd with a0=a0 at entry (arg0), a1=sp-8, a2=sp-96, a3=sp-92, a4=sp-88.
  The `jal` at 0xf300 calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=0x10040, a3=?.
  The `jal` at 0xf308 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xf344 calls _div_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xf470 calls post_sig with a0=0x8, a1=sym(INFINITY), a2=?, a3=?.
  The `jal` at 0xf478 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xf494 calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=?.
  The `jal` at 0xf49c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xf4d8 calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=?, a4=([[-0x3fe8]:8+1340] | 0x10040), a5=[-0x3fe8]:8, a6=0x10040.
  The `jal` at 0xf4e0 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0xf504 calls (unknown callee) with a0=sp-88, a1=?, a2=((a0 << 0x3) + sym(IMP_1BIT)), a3=?, a4=0x1, a7=[((a0 << 0x3) + sym(renorm))]:8.
  The `jal` at 0xf53c calls fpstore_sd with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `jal` at 0xf544 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xf560 calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=?, a4=([[-0x3fe8]:8+1340] | 0x10040), a5=[-0x3fe8]:8, a6=0x10040.
  The `jal` at 0xf568 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xf59c calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))], a4=(a0 << 0x3).
  The `jal` at 0xf5a4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0xf2a8 targets 0xf34c, is taken when v0(=ret(breakout_and_test_sd)) != 0, and falls through when v0(=ret(breakout_and_test_sd)) == 0.
  The `bne` branch at 0xf2c4 targets 0xf360, is taken when at(=[((a0 << 0x2) + sym(EXP_INF))]) != t2(?), and falls through when at(=[((a0 << 0x2) + sym(EXP_INF))]) == t2(?).
  The `beq` branch at 0xf2cc targets 0xf53c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xf2f8 targets 0xf488, is taken when (v1(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (v1(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0xf310 targets 0xf350 and is always taken.
  The `beq` branch at 0xf360 targets 0xf440, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0xf36c targets 0xf4ac, is taken when a3(?) == a4(=0x1), and falls through when a3(?) != a4(=0x1).
  The `beq` branch at 0xf38c targets 0xf4f8, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bltz` branch at 0xf3e8 targets 0xf4f0, is taken when t0(=[((a0 << 0x2) + sym(EXP_SHIFT))]+1) < 0 (signed), and falls through when t0(=[((a0 << 0x2) + sym(EXP_SHIFT))]+1) >= 0 (signed).
  The `beq` branch at 0xf3f4 targets 0xf5b4 and is always taken.
  The `bne` branch at 0xf418 targets 0xf318, is taken when t0(=[((a0 << 0x2) + sym(EXP_SHIFT))]+1) < a2(?) (signed), and falls through when t0(=[((a0 << 0x2) + sym(EXP_SHIFT))]+1) >= a2(?) (signed).
  The `bgez` branch at 0xf42c targets 0xf3fc, is taken when a6(?) >= 0 (signed), and falls through when a6(?) < 0 (signed).
  The `beq` branch at 0xf438 targets 0xf404 and is always taken.
  The `bne` branch at 0xf444 targets 0xf368, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0xf468 targets 0xf578, is taken when (a7(=[[-0x3fe8]:8+1340]) & 0x400) == 0, and falls through when (a7(=[[-0x3fe8]:8+1340]) & 0x400) != 0.
  The `beq` branch at 0xf480 targets 0xf350 and is always taken.
  The `beq` branch at 0xf4a4 targets 0xf350 and is always taken.
  The `beq` branch at 0xf4d0 targets 0xf554, is taken when (a3(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (a3(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0xf4e8 targets 0xf350 and is always taken.
  The `beq` branch at 0xf4f0 targets 0xf318 and is always taken.
  The `beq` branch at 0xf534 targets 0xf3b0 and is always taken.
  The `beq` branch at 0xf54c targets 0xf350 and is always taken.
  The `beq` branch at 0xf570 targets 0xf350 and is always taken.
  The `beq` branch at 0xf5ac targets 0xf350 and is always taken.
  The `beq` branch at 0xf5b8 targets 0xf424 and is always taken.
  The return at 0xf358 has v0 = one of ret(store_fpcsr), ?.

- `_cvtsd_l` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xf5c0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xf5c0-0xf71c (348 bytes).
  It occupies 348 bytes.
  3 such `lb` accesses load 1 byte from ?, including `lb` at 0xf62c, `lb` at 0xf69c, `lb` at 0xf6fc.
  The `ld` at 0xf650 loads 8 bytes from ((a0 << 0x3) + sym(round)) +0x0.
  The `ld` at 0xf6b8 loads 8 bytes from ((a0 << 0x3) + sym(MTWOP63)) +0x0.
  The `jalr` at 0xf654 calls (unknown callee) with a0=one of 0x0, 0x1, a1=?, a2=?, a3=?, a4=[((a0 << 0x3) + sym(round))]:8.
  The `jal` at 0xf6b4 calls fpstore_sd with a0=a0 at entry (arg0), a1=[((a0 << 0x3) + sym(MTWOP63))]:8, a2=a1 at entry (arg1), a3=-0x1, a6=sym(.data)+7536.
  The `jal` at 0xf6bc calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xf6d0 calls renorm_d with a0=sp-8, a1=a1 at entry (arg1), a2=?, a3=-0x1, a6=sym(.data)+7536.
  The `jal` at 0xf704 calls fpstore_sd with a0=a0 at entry (arg0), a1=0x0, a2=a1 at entry (arg1), a3=-0x1, a6=sym(.data)+7536.
  The `jal` at 0xf70c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xf5d8 targets 0xf700, is taken when a1 == 0, and falls through when a1 != 0.
  The `beq` branch at 0xf5e8 targets 0xf6a8, is taken when a1 == at(=0x8000000000000000), and falls through when a1 != at(=0x8000000000000000).
  The `bltz` branch at 0xf5f0 targets 0xf670, is taken when a1 < 0 (signed), and falls through when a1 >= 0 (signed).
  The `beq` branch at 0xf610 targets 0xf6cc, is taken when (a2(?) & v0(=0xffe0000000000000)) == 0, and falls through when (a2(?) & v0(=0xffe0000000000000)) != 0.
  The `beq` branch at 0xf624 targets 0xf67c, is taken when (a2(?) & v1(=0xf000000000000000)) == 0, and falls through when (a2(?) & v1(=0xf000000000000000)) != 0.
  The `beq` branch at 0xf674 targets 0xf5fc and is always taken.
  The `beq` branch at 0xf688 targets 0xf6ec, is taken when (a2(?) & a5(=0xff00000000000000)) == 0, and falls through when (a2(?) & a5(=0xff00000000000000)) != 0.
  The `beq` branch at 0xf6a0 targets 0xf634 and is always taken.
  The `beq` branch at 0xf6c4 targets 0xf660 and is always taken.
  The `beq` branch at 0xf6e4 targets 0xf648 and is always taken.
  The `beq` branch at 0xf6f8 targets 0xf634 and is always taken.
  The `beq` branch at 0xf714 targets 0xf660 and is always taken.
  The return at 0xf668 has v0 = one of ret(?), ret(store_fpcsr).

- `fpstore_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xf71c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xf71c-0xf768 (76 bytes).
  It occupies 76 bytes.
  The `ld` at 0xf71c loads 8 bytes from abs 0xffffffffffffc018.
  The `lbu` at 0xf724 loads 1 byte from [-0x3fe8]:8 +0x549.
  The `lbu` at 0xf730 loads 1 byte from [-0x3fe8]:8 +0x54a.
  The `jal` at 0xf740 calls fpstore_d with a0=a1 at entry (arg1), a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=a3 at entry (arg3), a4=a1 at entry (arg1), a5=[[-0x3fe8]:8+1354]:1.
  The `jal` at 0xf758 calls fpstore_s with a0=a1 at entry (arg1), a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=a3 at entry (arg3), a4=a1 at entry (arg1), a5=[[-0x3fe8]:8+1354]:1.
  The `beq` branch at 0xf734 targets 0xf754, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0xf760 targets 0xf74c and is always taken.
  The return at 0xf74c has v0 = one of ret(fpstore_d), ret(fpstore_s).

- `fpstore_d` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xf768 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xf768-0xf848 (224 bytes).
  It occupies 224 bytes.
  The `ld` at 0xf794 loads 8 bytes from abs 0xffffffffffffc460.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0xf798, `ld` at 0xf7ac, `ld` at 0xf82c.
  2 such `ld` accesses load 8 bytes from [-0x3fe8]:8 +0x3e0, including `ld` at 0xf7b0, `ld` at 0xf830.
  2 such `sd` accesses store 8 bytes to ((a1 << 0x3) + [[-0x3fe8]:8+992]:8) +0x28, including `sd` at 0xf7c0, `sd` at 0xf828.
  The `sd` at 0xf844 stores 8 bytes to ([[-0x3fe8]:8+992]:8 + (a1 << 0x3)) +0x30.
  The `jal` at 0xf788 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xf7a4 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xf7e0 calls getsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xf7f4 calls setsr with a0=(ret(getsr) | one of 0x20000000, 0x24000000), a1=0x20000000, a2=?, a3=?.
  The `jal` at 0xf804 calls fpunit_fpstore_d with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0xf80c calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf79c targets 0xf7e0, is taken when at(=[-0x3fe8]:8) == v0(=[-0x3ba0]:8), and falls through when at(=[-0x3fe8]:8) != v0(=[-0x3ba0]:8).
  The `beq` branch at 0xf7b8 targets 0xf81c, is taken when s0(=a2) == 0, and falls through when s0(=a2) != 0.
  The `beq` branch at 0xf814 targets 0xf7c8 and is always taken.
  The `beq` branch at 0xf840 targets 0xf7c4 and is always taken.
  The return at 0xf7d8 has v0 = one of ((a1 << 0x3) + [[-0x3fe8]:8+992]:8), ret(splx).

- `fpstore_s` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xf848 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xf848-0xf8f0 (168 bytes).
  It occupies 168 bytes.
  The `ld` at 0xf870 loads 8 bytes from abs 0xffffffffffffc460.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0xf874, `ld` at 0xf8c4.
  The `ld` at 0xf8c8 loads 8 bytes from [-0x3fe8]:8 +0x3e0.
  The `sd` at 0xf8d4 stores 8 bytes to ([[-0x3fe8]:8+992]:8 + (a1 << 0x3)) +0x28.
  The `jal` at 0xf864 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xf880 calls getsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xf898 calls setsr with a0=(ret(getsr) | one of 0x20000000, 0x24000000), a1=a2 at entry (arg2), a2=0x20000000, a3=?.
  The `jal` at 0xf8a4 calls fpunit_fpstore_s with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xf8ac calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xf8bc calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `bne` branch at 0xf878 targets 0xf8bc, is taken when at(=[-0x3fe8]:8) != v0(=[-0x3ba0]:8), and falls through when at(=[-0x3fe8]:8) == v0(=[-0x3ba0]:8).
  The `beq` branch at 0xf8b4 targets 0xf8dc and is always taken.
  The return at 0xf8e8 has v0 = ret(splx).

- `fpload_d` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xf8f0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xf8f0-0xf9bc (204 bytes).
  It occupies 204 bytes.
  The `ld` at 0xf914 loads 8 bytes from abs 0xffffffffffffc460.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0xf918, `ld` at 0xf92c.
  The `ld` at 0xf930 loads 8 bytes from [-0x3fe8]:8 +0x3e0.
  The `ld` at 0xf940 loads 8 bytes from ((a0 << 0x3) + [[-0x3fe8]:8+992]:8) +0x28.
  The `ld` at 0xf9a0 loads 8 bytes from ((a0 << 0x3) + [[-0x3fe8]:8+992]:8) +0x30.
  The `jal` at 0xf908 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xf924 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xf960 calls getsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xf974 calls setsr with a0=(ret(getsr) | one of 0x20000000, 0x24000000), a1=0x20000000, a2=?, a3=?.
  The `jal` at 0xf980 calls fpunit_fpload_d with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0xf98c calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `beq` branch at 0xf91c targets 0xf960, is taken when at(=[-0x3fe8]:8) == v0(=[-0x3ba0]:8), and falls through when at(=[-0x3fe8]:8) != v0(=[-0x3ba0]:8).
  The `beq` branch at 0xf93c targets 0xf99c, is taken when s0(=a1) == 0, and falls through when s0(=a1) != 0.
  The `beq` branch at 0xf994 targets 0xf948 and is always taken.
  The `beq` branch at 0xf9b4 targets 0xf948 and is always taken.
  The return at 0xf958 has v0 = one of [((a0 << 0x3) + [[-0x3fe8]:8+992]:8)+40]:8, ret(fpunit_fpload_d), ?.

- `fpload_s` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xf9bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xf9bc-0xfa64 (168 bytes).
  It occupies 168 bytes.
  The `ld` at 0xf9dc loads 8 bytes from abs 0xffffffffffffc460.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0xf9e0, `ld` at 0xfa30.
  The `ld` at 0xfa34 loads 8 bytes from [-0x3fe8]:8 +0x3e0.
  The `ld` at 0xfa44 loads 8 bytes from ([[-0x3fe8]:8+992]:8 + (a0 << 0x3)) +0x28.
  The `jal` at 0xf9d0 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xf9ec calls getsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xfa04 calls setsr with a0=(ret(getsr) | one of 0x20000000, 0x24000000), a1=a1 at entry (arg1), a2=0x20000000, a3=?.
  The `jal` at 0xfa0c calls fpunit_fpload_s with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0xfa18 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xfa28 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `bne` branch at 0xf9e4 targets 0xfa28, is taken when at(=[-0x3fe8]:8) != v0(=[-0x3ba0]:8), and falls through when at(=[-0x3fe8]:8) == v0(=[-0x3ba0]:8).
  The `beq` branch at 0xfa20 targets 0xfa50 and is always taken.
  The return at 0xfa5c has v0 = one of ret(fpunit_fpload_s), ?.

- `store_fpcsr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xfa64 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xfa64-0xfb18 (180 bytes).
  It occupies 180 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0xfa64, `ld` at 0xfa8c.
  2 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x549, including `lbu` at 0xfa68, `lbu` at 0xfa90.
  The `lw` at 0xfa80 loads 4 bytes from [-0x3fe8]:8 +0x53c.
  The `ld` at 0xfaa0 loads 8 bytes from [-0x3fe8]:8 +0x3e0.
  The `sw` at 0xfaa4 stores 4 bytes to [[-0x3fe8]:8+992]:8 +0x130.
  The `ld` at 0xfac0 loads 8 bytes from abs 0xffffffffffffc460.
  The `lw` at 0xfaf0 loads 4 bytes from [-0x3fe8]:8 +0x538.
  The `jal` at 0xfa84 calls splhi with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=[-0x3fe8]:8.
  The `jal` at 0xfaac calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xfacc calls getsr with a0=?, a1=[-0x3ba0]:8, a2=?, a3=[-0x3fe8]:8.
  The `jal` at 0xfad8 calls setsr with a0=(ret(getsr) | 0x20000000), a1=?, a2=?, a3=?.
  The `jal` at 0xfae0 calls set_fpc_csr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xfa7c targets 0xfaf0, is taken when (at(=[[-0x3fe8]:8+1353]:1) & 0x10) == 0, and falls through when (at(=[[-0x3fe8]:8+1353]:1) & 0x10) != 0.
  The `beq` branch at 0xfa98 targets 0xfac0, is taken when (v1(=[[-0x3fe8]:8+1353]:1) & 0x10) == 0, and falls through when (v1(=[[-0x3fe8]:8+1353]:1) & 0x10) != 0.
  The `bne` branch at 0xfac4 targets 0xfaa0, is taken when a1(=[-0x3ba0]:8) != a3(=[-0x3fe8]:8), and falls through when a1(=[-0x3ba0]:8) == a3(=[-0x3fe8]:8).
  The `beq` branch at 0xfae8 targets 0xfaa8 and is always taken.
  The `beq` branch at 0xfafc targets 0xfa84, is taken when a4(=[[-0x3fe8]:8+1336]) == 0, and falls through when a4(=[[-0x3fe8]:8+1336]) != 0.
  The `beq` branch at 0xfb10 targets 0xfa84 and is always taken.
  The return at 0xfab8 has v0 = ret(splx).

- `load_fpcsr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xfb18 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xfb18-0xfb88 (112 bytes).
  It occupies 112 bytes.
  The `ld` at 0xfb2c loads 8 bytes from abs 0xffffffffffffc018.
  The `ld` at 0xfb30 loads 8 bytes from abs 0xffffffffffffc460.
  The `ld` at 0xfb3c loads 8 bytes from [-0x3fe8]:8 +0x3e0.
  The `lw` at 0xfb40 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x130.
  The `jal` at 0xfb24 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xfb44 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0xfb64 calls getsr with a0=[-0x3fe8]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xfb70 calls setsr with a0=(ret(getsr) | 0x20000000), a1=?, a2=?, a3=?.
  The `jal` at 0xfb78 calls get_fpc_csr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0xfb34 targets 0xfb64, is taken when at(=[-0x3ba0]:8) == a0(=[-0x3fe8]:8), and falls through when at(=[-0x3ba0]:8) != a0(=[-0x3fe8]:8).
  The `beq` branch at 0xfb80 targets 0xfb44 and is always taken.
  The return at 0xfb5c has v0 = ?.

- `post_sig` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xfb88 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xfb88-0xfbd8 (80 bytes).
  It occupies 80 bytes.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0xfb88, `ld` at 0xfbb4, `ld` at 0xfbcc.
  2 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x549, including `lbu` at 0xfb8c, `lbu` at 0xfbb8.
  The `lw` at 0xfba8 loads 4 bytes from [-0x3fe8]:8 +0x53c.
  The `ld` at 0xfbb0 loads 8 bytes from [-0x3fe8]:8 +0x530.
  The `sb` at 0xfbc0 stores 1 byte to [-0x3fe8]:8 +0x549.
  The `jal` at 0xfbac calls softfp_psignal with a0=a0 at entry (arg0), a1=[[-0x3fe8]:8+1340], a2=[[-0x3fe8]:8+1328]:8, a3=a3 at entry (arg3), a4=[-0x3fe8]:8.
  The `jal` at 0xfbc8 calls checkfp with a0=[-0x3fe8]:8, a1=0x0, a2=?, a3=?.
  The `beq` branch at 0xfb98 targets 0xfba8, is taken when (at(=[[-0x3fe8]:8+1353]:1) & 0x10) == 0, and falls through when (at(=[[-0x3fe8]:8+1353]:1) & 0x10) != 0.
  The `beq` branch at 0xfbd0 targets 0xfba0 and is always taken.
  The return at 0xfba0 has v0 = one of ?, ret(checkfp).

- `fp_init_glob` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xfbd8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xfbd8-0xfc20 (72 bytes).
  It occupies 72 bytes.
  6 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0xfbd8, `ld` at 0xfbe0, `ld` at 0xfbe8.
  The `sd` at 0xfbdc stores 8 bytes to [-0x3fe8]:8 +0x530.
  The `sw` at 0xfbe4 stores 4 bytes to [-0x3fe8]:8 +0x53c.
  The `sw` at 0xfbec stores 4 bytes to [-0x3fe8]:8 +0x538.
  The `sb` at 0xfbfc stores 1 byte to [-0x3fe8]:8 +0x548.
  The `sb` at 0xfc10 stores 1 byte to [-0x3fe8]:8 +0x549.
  The `sb` at 0xfc1c stores 1 byte to [-0x3fe8]:8 +0x54a.
  The return at 0xfc18 has v0 = ((a4 | one of 0x0, 0x20) | 0x4).

- `breakout_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xfc20 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xfc20-0xfd00 (224 bytes).
  It occupies 224 bytes.
  3 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0x0, including `ld` at 0xfc28, `ld` at 0xfc60, `ld` at 0xfc80.
  The `lw` at 0xfc30 loads 4 bytes from ((a0 << 0x2) + sym(EXP_SHIFT)) +0x0.
  2 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xfc44, `sw` at 0xfc58.
  The `lw` at 0xfc48 loads 4 bytes from ((a0 << 0x2) + sym(EXP_MASK)) +0x0.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(SIGN_SHIFT)) +0x0, including `lw` at 0xfc5c, `lw` at 0xfcb8.
  The `sw` at 0xfc78 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `ld` at 0xfc7c loads 8 bytes from (sym(FRAC_MASK) + (a0 << 0x3)) +0x0.
  2 such `sd` accesses store 8 bytes to a4 (arg4 at entry) +0x0, including `sd` at 0xfc88, `sd` at 0xfcb4.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0xfc8c, `ld` at 0xfcc8, `ld` at 0xfcd8.
  The `lbu` at 0xfc90 loads 1 byte from [-0x3fe8]:8 +0x549.
  The `lw` at 0xfca0 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `lwu` at 0xfcbc loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `sd` at 0xfcc4 stores 8 bytes to a1 (arg1 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0xfccc, `lw` at 0xfcdc.
  The `sw` at 0xfcd4 stores 4 bytes to [-0x3fe8]:8 +0x53c.
  The `jal` at 0xfcec calls post_sig with a0=0x8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=((a0 << 0x2) + sym(SIGN_SHIFT)).
  The `beq` branch at 0xfc98 targets 0xfcf8, is taken when (at(=[[-0x3fe8]:8+1353]:1) & 0x1) == 0, and falls through when (at(=[[-0x3fe8]:8+1353]:1) & 0x1) != 0.
  The `bne` branch at 0xfca4 targets 0xfcf8, is taken when t8(=[a3]) != 0, and falls through when t8(=[a3]) == 0.
  The `beq` branch at 0xfcac targets 0xfcf8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0xfce4 targets 0xfcf8, is taken when (t9(=[[-0x3fe8]:8+1340]) & 0x80) == 0, and falls through when (t9(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  The return at 0xfcf8 has v0 = one of ?, [-0x3fe8]:8, ret(post_sig).

- `screen_nan_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xfd00 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xfd00-0xfdc8 (200 bytes).
  It occupies 200 bytes.
  The `lw` at 0xfd0c loads 4 bytes from (sym(EXP_NAN) + (a0 << 0x2)) +0x0.
  The `ld` at 0xfd2c loads 8 bytes from ((a0 << 0x3) + sym(SNANBIT_MASK)) +0x0.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0xfd3c, `ld` at 0xfd4c.
  2 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0xfd40, `lw` at 0xfd50.
  The `sw` at 0xfd48 stores 4 bytes to [-0x3fe8]:8 +0x53c.
  The `ld` at 0xfdbc loads 8 bytes from ((a0 << 0x3) + sym(QUIETNAN)) +0x0.
  The `jal` at 0xfd60 calls post_sig with a0=0x8, a1=?, a2=([[-0x3fe8]:8+1340] | 0x10040), a3=[-0x3fe8]:8, a4=0x10040, a6=sym(SNANBIT_MASK).
  The `jal` at 0xfd68 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xfd94 calls fpstore_sd with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a4=0x10040, a6=sym(SNANBIT_MASK).
  The `jal` at 0xfd9c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xfdb8 calls fpstore_sd with a0=a0 at entry (arg0), a1=[((a0 << 0x3) + sym(QUIETNAN))]:8, a2=([[-0x3fe8]:8+1340] | 0x10040), a3=[-0x3fe8]:8, a4=0x10040, a6=sym(SNANBIT_MASK).
  The `bne` branch at 0xfd20 targets 0xfd80, is taken when at(=[(sym(EXP_NAN) + (a0 << 0x2))]) != a2, and falls through when at(=[(sym(EXP_NAN) + (a0 << 0x2))]) == a2.
  The `beq` branch at 0xfd34 targets 0xfd88, is taken when (v1(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8) & a3) == 0, and falls through when (v1(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8) & a3) != 0.
  The `beq` branch at 0xfd58 targets 0xfdb0, is taken when (a1(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (a1(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0xfd80 targets 0xfd78 and is always taken.
  The `beq` branch at 0xfd8c targets 0xfd78, is taken when a3 == 0, and falls through when a3 != 0.
  The `beq` branch at 0xfda8 targets 0xfd78 and is always taken.
  The `beq` branch at 0xfdc0 targets 0xfd68 and is always taken.
  The return at 0xfd78 has v0 = one of 0x0, 0x1.

- `breakout_and_test_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xfdc8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xfdc8-0xfe28 (96 bytes).
  It occupies 96 bytes.
  The `ld` at 0xfdf4 loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `lw` at 0xfdf8 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `ld` at 0xfe04 loads 8 bytes from a4 (arg4 at entry) +0x0.
  The `jal` at 0xfde0 calls breakout_sd with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xfe00 calls screen_nan_sd with a0=a0 at entry (arg0), a1=[a1]:8, a2=[a3], a3=[a4]:8.
  The `beq` branch at 0xfe0c targets 0xfe20, is taken when v0(=ret(screen_nan_sd)) == 0, and falls through when v0(=ret(screen_nan_sd)) != 0.
  The `beq` branch at 0xfe20 targets 0xfe18 and is always taken.
  The return at 0xfe18 has v0 = one of 0x0, 0x1.

- `breakout_and_test2_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xfe28 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xfe28-0xffc0 (408 bytes).
  It occupies 408 bytes.
  The `lw` at 0xfe90 loads 4 bytes from (sym(EXP_NAN) + (a0 << 0x2)) +0x0.
  The `lw` at 0xfe94 loads 4 bytes from a3 (arg3 at entry) +0x0.
  2 such `ld` accesses load 8 bytes from ((a0 << 0x3) + sym(SNANBIT_MASK)) +0x0, including `ld` at 0xfeb8, `ld` at 0xfee0.
  2 such `ld` accesses load 8 bytes from a4 (arg4 at entry) +0x0, including `ld` at 0xfebc, `ld` at 0xff4c.
  The `lw` at 0xfecc loads 4 bytes from a7 (arg7 at entry) +0x0.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0xfed8, `ld` at 0xff7c.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0xfef0, `ld` at 0xff00.
  2 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0xfef4, `lw` at 0xff04.
  The `sw` at 0xfefc stores 4 bytes to [-0x3fe8]:8 +0x53c.
  The `ld` at 0xff60 loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0xff8c loads 8 bytes from a5 (arg5 at entry) +0x0.
  The `ld` at 0xffb4 loads 8 bytes from ((a0 << 0x3) + sym(QUIETNAN)) +0x0.
  The `jal` at 0xfe5c calls breakout_sd with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xfe74 calls breakout_sd with a0=a0 at entry (arg0), a1=a5 at entry (arg5), a2=a6 at entry (arg6), a3=a7 at entry (arg7).
  The `jal` at 0xff14 calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=(a0 << 0x3), a3=?, a4=sym(SNANBIT_MASK).
  The `jal` at 0xff1c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xff5c calls fpstore_sd with a0=a0 at entry (arg0), a1=[a1]:8, a2=(a0 << 0x3), a3=[a7], a4=sym(SNANBIT_MASK).
  The `jal` at 0xff64 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xff88 calls fpstore_sd with a0=a0 at entry (arg0), a1=[a5]:8, a2=?, a3=[a7], a4=sym(SNANBIT_MASK).
  The `jal` at 0xff90 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xffb0 calls fpstore_sd with a0=a0 at entry (arg0), a1=[((a0 << 0x3) + sym(QUIETNAN))]:8, a2=(a0 << 0x3), a3=?, a4=sym(SNANBIT_MASK).
  The `bne` branch at 0xfeb0 targets 0xfecc, is taken when a1(=[a3]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]), and falls through when a1(=[a3]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  The `bne` branch at 0xfec4 targets 0xfef0, is taken when (a5(=[a4]:8) & a6(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) != 0, and falls through when (a5(=[a4]:8) & a6(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) == 0.
  The `bne` branch at 0xfed0 targets 0xff44, is taken when a3(=[a7]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]), and falls through when a3(=[a7]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  The `beq` branch at 0xfee8 targets 0xff44, is taken when (a7(?) & t0(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) == 0, and falls through when (a7(?) & t0(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) != 0.
  The `beq` branch at 0xff0c targets 0xffa8, is taken when (t1(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (t1(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `bne` branch at 0xff44 targets 0xff74, is taken when a1(=[a3]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]), and falls through when a1(=[a3]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  The `beq` branch at 0xff50 targets 0xff74, is taken when t9(=[a4]:8) == 0, and falls through when t9(=[a4]:8) != 0.
  The `beq` branch at 0xff6c targets 0xff28 and is always taken.
  The `bne` branch at 0xff74 targets 0xffa0, is taken when a3(=[a7]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]), and falls through when a3(=[a7]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  The `beq` branch at 0xff80 targets 0xffa0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0xff98 targets 0xff28 and is always taken.
  The `beq` branch at 0xffa0 targets 0xff28 and is always taken.
  The `beq` branch at 0xffb8 targets 0xff1c and is always taken.
  The return at 0xff3c has v0 = one of 0x0, 0x1.

- `breakout_and_test3_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0xffc0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0xffc0-0x101d0 (528 bytes).
  It occupies 528 bytes.
  The `lw` at 0x10038 loads 4 bytes from a3 (arg3 at entry) +0x0.
  The `lw` at 0x10040 loads 4 bytes from (sym(EXP_NAN) + (a0 << 0x2)) +0x0.
  2 such `ld` accesses load 8 bytes from a4 (arg4 at entry) +0x0, including `ld` at 0x10058, `ld` at 0x1012c.
  3 such `ld` accesses load 8 bytes from ((a0 << 0x3) + sym(SNANBIT_MASK)) +0x0, including `ld` at 0x10060, `ld` at 0x100e8, `ld` at 0x10110.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x10070, `ld` at 0x10088.
  2 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x10078, `lw` at 0x1008c.
  The `sw` at 0x10084 stores 4 bytes to [-0x3fe8]:8 +0x53c.
  The `lw` at 0x100d0 loads 4 bytes from a7 (arg7 at entry) +0x0.
  5 such `ld` accesses load 8 bytes from ?, including `ld` at 0x100ec, `ld` at 0x10114, `ld` at 0x1015c.
  The `lw` at 0x100fc loads 4 bytes from ?.
  The `ld` at 0x10140 loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x1016c loads 8 bytes from a5 (arg5 at entry) +0x0.
  The `ld` at 0x101c4 loads 8 bytes from ((a0 << 0x3) + sym(QUIETNAN)) +0x0.
  The `jal` at 0xfff4 calls breakout_sd with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1000c calls breakout_sd with a0=a0 at entry (arg0), a1=a5 at entry (arg5), a2=a6 at entry (arg6), a3=a7 at entry (arg7).
  The `jal` at 0x10028 calls breakout_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1009c calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=(a0 << 0x3), a3=?, a5=([[-0x3fe8]:8+1340] | 0x10040), a6=[-0x3fe8]:8, a7=0x10040.
  The `jal` at 0x100a4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1013c calls fpstore_sd with a0=a0 at entry (arg0), a1=[a1]:8, a2=(a0 << 0x3), a3=?, a5=[a7], a6=((a0 << 0x3) + sym(SNANBIT_MASK)).
  The `jal` at 0x10144 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10168 calls fpstore_sd with a0=a0 at entry (arg0), a1=[a5]:8, a2=?, a3=?, a5=[a7], a6=((a0 << 0x3) + sym(SNANBIT_MASK)).
  The `jal` at 0x10170 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10198 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a5=[a7], a6=((a0 << 0x3) + sym(SNANBIT_MASK)).
  The `jal` at 0x101a0 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x101c0 calls fpstore_sd with a0=a0 at entry (arg0), a1=[((a0 << 0x3) + sym(QUIETNAN))]:8, a2=(a0 << 0x3), a3=?, a5=([[-0x3fe8]:8+1340] | 0x10040), a6=[-0x3fe8]:8, a7=0x10040.
  The `bne` branch at 0x10050 targets 0x100d0, is taken when a0(=[a3]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]), and falls through when a0(=[a3]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  The `beq` branch at 0x10068 targets 0x100d0, is taken when (a1(=[a4]:8) & a3(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) == 0, and falls through when (a1(=[a4]:8) & a3(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) != 0.
  The `beq` branch at 0x10094 targets 0x101b8, is taken when (a4(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (a4(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `bne` branch at 0x100dc targets 0x100fc, is taken when a5(=[a7]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]), and falls through when a5(=[a7]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  The `bne` branch at 0x100f4 targets 0x10070, is taken when (t0(?) & t1(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) != 0, and falls through when (t0(?) & t1(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) == 0.
  The `bne` branch at 0x10108 targets 0x10124, is taken when a7(?) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]), and falls through when a7(?) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  The `bne` branch at 0x1011c targets 0x10070, is taken when (t0(?) & t1(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) != 0, and falls through when (t0(?) & t1(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8)) == 0.
  The `bne` branch at 0x10124 targets 0x10154, is taken when a0(=[a3]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]), and falls through when a0(=[a3]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  The `beq` branch at 0x10130 targets 0x10154, is taken when t1(=[a4]:8) == 0, and falls through when t1(=[a4]:8) != 0.
  The `beq` branch at 0x1014c targets 0x100b0 and is always taken.
  The `bne` branch at 0x10154 targets 0x10180, is taken when a5(=[a7]) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]), and falls through when a5(=[a7]) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  The `beq` branch at 0x10160 targets 0x10180, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10178 targets 0x100b0 and is always taken.
  The `bne` branch at 0x10180 targets 0x101b0, is taken when a7(?) != v0(=[(sym(EXP_NAN) + (a0 << 0x2))]), and falls through when a7(?) == v0(=[(sym(EXP_NAN) + (a0 << 0x2))]).
  The `beq` branch at 0x1018c targets 0x101b0, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x101a8 targets 0x100b0 and is always taken.
  The `beq` branch at 0x101b0 targets 0x100b0 and is always taken.
  The `beq` branch at 0x101c8 targets 0x100a4 and is always taken.
  The return at 0x100c8 has v0 = one of 0x0, 0x1.

- `_cvtsd_w` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x101d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x101d0-0x10274 (164 bytes).
  It occupies 164 bytes.
  The `ld` at 0x10218 loads 8 bytes from (sym(round) + (a0 << 0x3)) +0x0.
  The `jal` at 0x10204 calls renorm_d with a0=sp-8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?.
  The `jalr` at 0x1022c calls (unknown callee) with a0=one of 0x0, 0x1, a1=?, a2=?, a3=0x0, a4=[(sym(round) + (a0 << 0x3))]:8, a5=(a0 << 0x3).
  The `jal` at 0x1025c calls fpstore_sd with a0=a0 at entry (arg0), a1=0x0, a2=a2 at entry (arg2), a3=a1 at entry (arg1).
  The `jal` at 0x10264 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x101e8 targets 0x10258, is taken when a1 == 0, and falls through when a1 != 0.
  The `bltz` branch at 0x101f8 targets 0x10248, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `beq` branch at 0x10250 targets 0x10204 and is always taken.
  The `beq` branch at 0x1026c targets 0x10238 and is always taken.
  The return at 0x10240 has v0 = one of ret(?), ret(store_fpcsr).

- `_nmsub_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x10274 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x10274-0x10338 (196 bytes).
  It occupies 196 bytes.
  The `ld` at 0x10284 loads 8 bytes from abs 0xffffffffffffc018.
  The `lbu` at 0x10290 loads 1 byte from [-0x3fe8]:8 +0x549.
  The `sb` at 0x102a8 stores 1 byte to [-0x3fe8]:8 +0x549.
  The `jal` at 0x102e0 calls breakout_and_test3_sd with a0=a0 at entry (arg0), a1=sp-24, a2=sp-96, a3=sp-92, a4=sp-88, a5=sp-16, a6=sp-80, a7=sp-76.
  The `jal` at 0x10328 calls madd with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x102e8 targets 0x102fc, is taken when v0(=ret(breakout_and_test3_sd)) == 0, and falls through when v0(=ret(breakout_and_test3_sd)) != 0.
  The `beq` branch at 0x10330 targets 0x102f4 and is always taken.
  The return at 0x102f4 has v0 = one of ret(breakout_and_test3_sd), ret(madd).

- `_cvtw_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x10338 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x10338-0x104f4 (444 bytes).
  It occupies 444 bytes.
  The `lw` at 0x10370 loads 4 bytes from ((a0 << 0x2) + sym(EXP_BIAS)) +0x0.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x10398, `ld` at 0x103a8, `ld` at 0x104cc.
  2 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x1039c, `lw` at 0x103ac.
  The `sw` at 0x103a4 stores 4 bytes to [-0x3fe8]:8 +0x53c.
  The `ld` at 0x103e0 loads 8 bytes from (sym(IMP_1BIT) + (a0 << 0x3)) +0x0.
  The `ld` at 0x10460 loads 8 bytes from (sym(renorm) + (a0 << 0x3)) +0x0.
  The `lw` at 0x10478 loads 4 bytes from ?.
  2 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x549, including `lbu` at 0x10498, `lbu` at 0x104d0.
  2 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x54a, including `lbu` at 0x104a0, `lbu` at 0x104d8.
  The `jal` at 0x1035c calls breakout_sd with a0=a0 at entry (arg0), a1=sp-8, a2=sp-64, a3=sp-60, a4=sp-56.
  The `jal` at 0x103bc calls post_sig with a0=0x8, a1=?, a2=(a0 << 0x3), a3=[((a0 << 0x2) + sym(EXP_BIAS))], a4=[-0x3fe8]:8, a6=([[-0x3fe8]:8+1340] | 0x10040), a7=[-0x3fe8]:8.
  The `jal` at 0x103c4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10438 calls round_w with a0=?, a1=?, a2=?, a3=0x34.
  The `jalr` at 0x10464 calls (unknown callee) with a0=sp-56, a1=?, a2=(a0 << 0x3), a3=[(sym(renorm) + (a0 << 0x3))]:8, a5=(a0 << 0x2), a6=(sym(IMP_1BIT) + (a0 << 0x3)), a7=sym(IMP_1BIT).
  The `jal` at 0x104a4 calls fpstore_s with a0=0x7fffffff, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[((a0 << 0x2) + sym(EXP_BIAS))], a4=[-0x3fe8]:8, a6=([[-0x3fe8]:8+1340] | 0x10040), a7=[-0x3fe8]:8.
  The `jal` at 0x104ac calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x104dc calls fpstore_s with a0=0x0, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[((a0 << 0x2) + sym(EXP_BIAS))], a5=(a0 << 0x2), a6=(sym(IMP_1BIT) + (a0 << 0x3)), a7=sym(IMP_1BIT).
  The `jal` at 0x104e4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x10390 targets 0x103d4, is taken when a4(?) < at(=[((a0 << 0x2) + sym(EXP_BIAS))]+32) (signed), and falls through when a4(?) >= at(=[((a0 << 0x2) + sym(EXP_BIAS))]+32) (signed).
  The `beq` branch at 0x103b4 targets 0x10498, is taken when (a5(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (a5(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x103cc targets 0x10444 and is always taken.
  The `beq` branch at 0x103d8 targets 0x10450, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x103f0 targets 0x10488, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `beq` branch at 0x1040c targets 0x1041c, is taken when a4(?) >= -0x1 (signed), and falls through when a4(?) < -0x1 (signed).
  The `beq` branch at 0x10414 targets 0x10438 and is always taken.
  The `beq` branch at 0x10424 targets 0x104bc, is taken when a4(?) == a6(=-0x1), and falls through when a4(?) != a6(=-0x1).
  The `beq` branch at 0x10450 targets 0x104cc, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x10480 targets 0x103f8, is taken when s0(=a0) != 0, and falls through when s0(=a0) == 0.
  The `beq` branch at 0x10490 targets 0x103f8 and is always taken.
  The `beq` branch at 0x104b4 targets 0x10444 and is always taken.
  The `beq` branch at 0x104c4 targets 0x10438 and is always taken.
  The `beq` branch at 0x104ec targets 0x10444 and is always taken.
  The return at 0x10448 has v0 = one of ret(store_fpcsr), ret(round_w).

- `_cvtl_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x104f4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x104f4-0x10714 (544 bytes).
  It occupies 544 bytes.
  The `ld` at 0x10530 loads 8 bytes from ((a0 << 0x3) + sym(MTWOP63)) +0x0.
  The `lw` at 0x1054c loads 4 bytes from ((a0 << 0x2) + sym(EXP_BIAS)) +0x0.
  4 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x10564, `ld` at 0x1057c, `ld` at 0x1068c.
  2 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x1056c, `lw` at 0x10580.
  The `sw` at 0x10578 stores 4 bytes to [-0x3fe8]:8 +0x53c.
  The `ld` at 0x105b0 loads 8 bytes from ((a0 << 0x3) + sym(IMP_1BIT)) +0x0.
  The `ld` at 0x10638 loads 8 bytes from ((a0 << 0x3) + sym(renorm)) +0x0.
  The `lw` at 0x10650 loads 4 bytes from ?.
  3 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x549, including `lbu` at 0x10694, `lbu` at 0x106b8, `lbu` at 0x106f0.
  3 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x54a, including `lbu` at 0x1069c, `lbu` at 0x106c0, `lbu` at 0x106f8.
  The `jal` at 0x10518 calls breakout_sd with a0=a0 at entry (arg0), a1=sp-8, a2=sp-64, a3=sp-60, a4=sp-56.
  The `jal` at 0x10590 calls post_sig with a0=0x8, a1=?, a2=((a0 << 0x3) + sym(IMP_1BIT)), a3=[((a0 << 0x2) + sym(EXP_BIAS))], a4=[-0x3fe8]:8, a6=([[-0x3fe8]:8+1340] | 0x10040), a7=[-0x3fe8]:8.
  The `jal` at 0x10598 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x105e8 calls round_l with a0=?, a1=?, a2=?, a3=0x34.
  The `jalr` at 0x1063c calls (unknown callee) with a0=sp-56, a1=?, a2=((a0 << 0x3) + sym(IMP_1BIT)), a3=[((a0 << 0x3) + sym(renorm))]:8, a5=(a0 << 0x3), a6=(a0 << 0x2), a7=sym(IMP_1BIT).
  The `jal` at 0x106a0 calls fpstore_d with a0=0x8000000000000000, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?, a5=(a0 << 0x3), a7=sym(IMP_1BIT).
  The `jal` at 0x106a8 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x106c4 calls fpstore_d with a0=0x7fffffffffffffff, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[((a0 << 0x2) + sym(EXP_BIAS))], a4=[-0x3fe8]:8, a6=([[-0x3fe8]:8+1340] | 0x10040), a7=[-0x3fe8]:8.
  The `jal` at 0x106cc calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x106fc calls fpstore_d with a0=0x0, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[((a0 << 0x2) + sym(EXP_BIAS))], a5=(a0 << 0x3), a6=(a0 << 0x2), a7=sym(IMP_1BIT).
  The `jal` at 0x10704 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10538 targets 0x1068c, is taken when at(=[((a0 << 0x3) + sym(MTWOP63))]:8) == v0(=a1), and falls through when at(=[((a0 << 0x3) + sym(MTWOP63))]:8) != v0(=a1).
  The `bne` branch at 0x1055c targets 0x105a8, is taken when a4(?) < v0(=[((a0 << 0x2) + sym(EXP_BIAS))]+63) (signed), and falls through when a4(?) >= v0(=[((a0 << 0x2) + sym(EXP_BIAS))]+63) (signed).
  The `beq` branch at 0x10588 targets 0x106b8, is taken when (a5(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (a5(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x105a0 targets 0x105f4 and is always taken.
  The `beq` branch at 0x105a8 targets 0x10628, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x105c0 targets 0x10660, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `beq` branch at 0x105dc targets 0x10600, is taken when a4(?) >= -0x1 (signed), and falls through when a4(?) < -0x1 (signed).
  The `beq` branch at 0x1060c targets 0x106dc, is taken when a4(?) == a6(=-0x1), and falls through when a4(?) != a6(=-0x1).
  The `beq` branch at 0x10614 targets 0x10670, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x10620 targets 0x105e8 and is always taken.
  The `beq` branch at 0x10628 targets 0x106ec, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x10658 targets 0x105c8, is taken when s0(=a0) != 0, and falls through when s0(=a0) == 0.
  The `beq` branch at 0x10668 targets 0x105c8 and is always taken.
  The `beq` branch at 0x10670 targets 0x105e8, is taken when a4(?) == a3(=0x34), and falls through when a4(?) != a3(=0x34).
  The `beq` branch at 0x10684 targets 0x105e8 and is always taken.
  The `beq` branch at 0x106b0 targets 0x105f4 and is always taken.
  The `beq` branch at 0x106d4 targets 0x105f4 and is always taken.
  The `beq` branch at 0x106e4 targets 0x105e8 and is always taken.
  The `beq` branch at 0x1070c targets 0x105f4 and is always taken.
  The return at 0x105f8 has v0 = one of ret(store_fpcsr), ret(round_l).

- `_comp_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x10714 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x10714-0x10954 (576 bytes).
  It occupies 576 bytes.
  The `lw` at 0x10724 loads 4 bytes from ((a0 << 0x2) + sym(EXP_SHIFT)) +0x0.
  The `lw` at 0x10734 loads 4 bytes from ((a0 << 0x2) + sym(SIGN_SHIFT)) +0x0.
  The `ld` at 0x10750 loads 8 bytes from ((a0 << 0x3) + sym(FRAC_MASK)) +0x0.
  The `lw` at 0x10768 loads 4 bytes from ((a0 << 0x2) + sym(EXP_MASK)) +0x0.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_NAN)) +0x0, including `lw` at 0x107a0, `lw` at 0x107ec.
  4 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x107cc, `ld` at 0x10834, `ld` at 0x1084c.
  4 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x107dc, `lw` at 0x1083c, `lw` at 0x10850.
  8 such `sw` accesses store 4 bytes to [-0x3fe8]:8 +0x53c, including `sw` at 0x107e4, `sw` at 0x10848, `sw` at 0x108c4.
  2 such `ld` accesses load 8 bytes from ((a0 << 0x3) + sym(SNANBIT_MASK)) +0x0, including `ld` at 0x10800, `ld` at 0x1081c.
  The `jal` at 0x10860 calls post_sig with a0=0x8, a1=sym(SNANBIT_MASK), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=[((a0 << 0x2) + sym(EXP_NAN))].
  The `jal` at 0x10868 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x108c8 calls store_fpcsr with a0=[[-0x3fe8]:8+1340], a1=?, a2=?, a3=a3 at entry (arg3), a6=[-0x3fe8]:8.
  The `beq` branch at 0x10788 targets 0x10794, is taken when a4 == 0, and falls through when a4 != 0.
  The `bne` branch at 0x107a4 targets 0x107b4, is taken when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) != t0(?), and falls through when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) == t0(?).
  The `bne` branch at 0x107ac targets 0x107cc, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0x107b8 targets 0x10878, is taken when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) != t1(?), and falls through when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) == t1(?).
  The `beq` branch at 0x107c0 targets 0x10878, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x107d8 targets 0x108f8, is taken when (a3 & 0x1) == 0, and falls through when (a3 & 0x1) != 0.
  The `bne` branch at 0x107f4 targets 0x10810, is taken when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) != t0(?), and falls through when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) == t0(?).
  The `bne` branch at 0x10808 targets 0x10834, is taken when (a7(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8) & t2(?)) != 0, and falls through when (a7(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8) & t2(?)) == 0.
  The `bne` branch at 0x10810 targets 0x1082c, is taken when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) != t1(?), and falls through when a6(=[((a0 << 0x2) + sym(EXP_NAN))]) == t1(?).
  The `bne` branch at 0x10824 targets 0x10834, is taken when (t0(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8) & t8(?)) != 0, and falls through when (t0(=[((a0 << 0x3) + sym(SNANBIT_MASK))]:8) & t8(?)) == 0.
  The `beq` branch at 0x1082c targets 0x10868, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x10858 targets 0x10868, is taken when (t1(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (t1(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x10870 targets 0x108d4 and is always taken.
  The `beq` branch at 0x1087c targets 0x10908, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x10884 targets 0x10914, is taken when t9(?) == 0, and falls through when t9(?) != 0.
  The `beq` branch at 0x10890 targets 0x108a8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x108b0 targets 0x108dc, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x108bc targets 0x10938, is taken when (a3 & 0x4) == 0, and falls through when (a3 & 0x4) != 0.
  The `bne` branch at 0x108dc targets 0x10928, is taken when a1(?) != a2(?), and falls through when a1(?) == a2(?).
  The `beq` branch at 0x108e8 targets 0x10948, is taken when (a3 & 0x2) == 0, and falls through when (a3 & 0x2) != 0.
  The `beq` branch at 0x108f0 targets 0x108c8 and is always taken.
  The `beq` branch at 0x10900 targets 0x107e8 and is always taken.
  The `bne` branch at 0x1090c targets 0x10888, is taken when t9(?) != 0, and falls through when t9(?) == 0.
  The `bne` branch at 0x10918 targets 0x1089c, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x10920 targets 0x108ac and is always taken.
  The `beq` branch at 0x10930 targets 0x108c8 and is always taken.
  The `beq` branch at 0x10940 targets 0x108c8 and is always taken.
  The `beq` branch at 0x1094c targets 0x108c8 and is always taken.
  The return at 0x108d4 has v0 = ret(store_fpcsr).

- `_nmadd_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x10954 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x10954-0x10a1c (200 bytes).
  It occupies 200 bytes.
  The `ld` at 0x10964 loads 8 bytes from abs 0xffffffffffffc018.
  The `lbu` at 0x10970 loads 1 byte from [-0x3fe8]:8 +0x549.
  The `sb` at 0x10988 stores 1 byte to [-0x3fe8]:8 +0x549.
  The `jal` at 0x109c0 calls breakout_and_test3_sd with a0=a0 at entry (arg0), a1=sp-24, a2=sp-96, a3=sp-92, a4=sp-88, a5=sp-16, a6=sp-80, a7=sp-76.
  The `jal` at 0x10a0c calls madd with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x109c8 targets 0x109dc, is taken when v0(=ret(breakout_and_test3_sd)) == 0, and falls through when v0(=ret(breakout_and_test3_sd)) != 0.
  The `beq` branch at 0x10a14 targets 0x109d4 and is always taken.
  The return at 0x109d4 has v0 = one of ret(breakout_and_test3_sd), ret(madd).

- `_madd_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x10a1c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x10a1c-0x10adc (192 bytes).
  It occupies 192 bytes.
  The `ld` at 0x10a2c loads 8 bytes from abs 0xffffffffffffc018.
  The `lbu` at 0x10a38 loads 1 byte from [-0x3fe8]:8 +0x549.
  The `sb` at 0x10a50 stores 1 byte to [-0x3fe8]:8 +0x549.
  The `jal` at 0x10a88 calls breakout_and_test3_sd with a0=a0 at entry (arg0), a1=sp-24, a2=sp-96, a3=sp-92, a4=sp-88, a5=sp-16, a6=sp-80, a7=sp-76.
  The `jal` at 0x10acc calls madd with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10a90 targets 0x10aa4, is taken when v0(=ret(breakout_and_test3_sd)) == 0, and falls through when v0(=ret(breakout_and_test3_sd)) != 0.
  The `beq` branch at 0x10ad4 targets 0x10a9c and is always taken.
  The return at 0x10a9c has v0 = one of ret(breakout_and_test3_sd), ret(madd).

- `_sqrt_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x10adc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x10adc-0x10dc8 (748 bytes).
  It occupies 748 bytes.
  The `lw` at 0x10b1c loads 4 bytes from ((a0 << 0x2) + sym(EXP_INF)) +0x0.
  4 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x10b30, `ld` at 0x10b48, `ld` at 0x10d00.
  4 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x10b38, `lw` at 0x10b4c, `lw` at 0x10d08.
  2 such `sw` accesses store 4 bytes to [-0x3fe8]:8 +0x53c, including `sw` at 0x10b44, `sw` at 0x10d14.
  The `ld` at 0x10ba0 loads 8 bytes from ?.
  The `lw` at 0x10bf0 loads 4 bytes from ((a0 << 0x2) + sym(EXP_BIAS)) +0x0.
  The `ld` at 0x10bf8 loads 8 bytes from ((a0 << 0x3) + sym(IMP_1BIT)) +0x0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x10c1c, `lw` at 0x10d70.
  2 such `ld` accesses load 8 bytes from (sym(QUIETNAN) + (a0 << 0x3)) +0x0, including `ld` at 0x10cec, `ld` at 0x10dac.
  The `ld` at 0x10d54 loads 8 bytes from ((a0 << 0x3) + sym(renorm)) +0x0.
  The `jal` at 0x10b00 calls breakout_and_test_sd with a0=a0 at entry (arg0), a1=sp-8, a2=sp-64, a3=sp-60, a4=sp-56.
  The `jal` at 0x10b5c calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=0x10040, a3=?.
  The `jal` at 0x10b64 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10ba4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?, a6=sym(round).
  The `jal` at 0x10cc4 calls fpstore_sd with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?.
  The `jal` at 0x10ccc calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10ce8 calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=?.
  The `jal` at 0x10cf0 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10d2c calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=(a0 << 0x2), a3=?, a4=([[-0x3fe8]:8+1340] | 0x10040), a5=[-0x3fe8]:8, a6=0x10040, a7=0x1.
  The `jal` at 0x10d34 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x10d58 calls (unknown callee) with a0=sp-56, a1=?, a2=(a0 << 0x2), a3=?, a7=[((a0 << 0x3) + sym(renorm))]:8.
  The `jal` at 0x10d84 calls fpstore_sd with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=(a0 << 0x2), a3=?.
  The `jal` at 0x10d8c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10da8 calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=?, a4=([[-0x3fe8]:8+1340] | 0x10040), a5=[-0x3fe8]:8, a6=0x10040, a7=0x1.
  The `jal` at 0x10db0 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x10b08 targets 0x10bac, is taken when v0(=ret(breakout_and_test_sd)) != 0, and falls through when v0(=ret(breakout_and_test_sd)) == 0.
  The `bne` branch at 0x10b20 targets 0x10bbc, is taken when at(=[((a0 << 0x2) + sym(EXP_INF))]) != a1(?), and falls through when at(=[((a0 << 0x2) + sym(EXP_INF))]) == a1(?).
  The `beq` branch at 0x10b28 targets 0x10d84, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10b54 targets 0x10cdc, is taken when (v1(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (v1(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x10b6c targets 0x10bb0 and is always taken.
  The `beq` branch at 0x10b7c targets 0x10c9c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x10b8c targets 0x10ca4, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `beq` branch at 0x10bbc targets 0x10cb8, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10bc8 targets 0x10d00, is taken when t3(?) == a7(=0x1), and falls through when t3(?) != a7(=0x1).
  The `beq` branch at 0x10bd4 targets 0x10d4c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bltz` branch at 0x10c48 targets 0x10d44, is taken when t1(?) < 0 (signed), and falls through when t1(?) >= 0 (signed).
  The `beq` branch at 0x10c50 targets 0x10dc0 and is always taken.
  The `bne` branch at 0x10c74 targets 0x10b74, is taken when t1(?) < a2(?) (signed), and falls through when t1(?) >= a2(?) (signed).
  The `bgez` branch at 0x10c88 targets 0x10c58, is taken when a7(?) >= 0 (signed), and falls through when a7(?) < 0 (signed).
  The `beq` branch at 0x10c94 targets 0x10c60 and is always taken.
  The `bne` branch at 0x10c9c targets 0x10b98, is taken when s0(=a0) != 0, and falls through when s0(=a0) == 0.
  The `beq` branch at 0x10cb0 targets 0x10b94 and is always taken.
  The `bne` branch at 0x10cbc targets 0x10bc0, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x10cd4 targets 0x10bb0 and is always taken.
  The `beq` branch at 0x10cf8 targets 0x10bb0 and is always taken.
  The `beq` branch at 0x10d24 targets 0x10d9c, is taken when (a3(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (a3(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x10d3c targets 0x10bb0 and is always taken.
  The `beq` branch at 0x10d44 targets 0x10b74 and is always taken.
  The `beq` branch at 0x10d7c targets 0x10c0c and is always taken.
  The `beq` branch at 0x10d94 targets 0x10bb0 and is always taken.
  The `beq` branch at 0x10db8 targets 0x10bb0 and is always taken.
  The `beq` branch at 0x10dc0 targets 0x10c80 and is always taken.
  The return at 0x10bb4 has v0 = one of ret(store_fpcsr), ?.

- `_msub_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x10dc8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x10dc8-0x10e8c (196 bytes).
  It occupies 196 bytes.
  The `ld` at 0x10dd8 loads 8 bytes from abs 0xffffffffffffc018.
  The `lbu` at 0x10de4 loads 1 byte from [-0x3fe8]:8 +0x549.
  The `sb` at 0x10dfc stores 1 byte to [-0x3fe8]:8 +0x549.
  The `jal` at 0x10e34 calls breakout_and_test3_sd with a0=a0 at entry (arg0), a1=sp-24, a2=sp-96, a3=sp-92, a4=sp-88, a5=sp-16, a6=sp-80, a7=sp-76.
  The `jal` at 0x10e7c calls madd with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x10e3c targets 0x10e50, is taken when v0(=ret(breakout_and_test3_sd)) == 0, and falls through when v0(=ret(breakout_and_test3_sd)) != 0.
  The `beq` branch at 0x10e84 targets 0x10e48 and is always taken.
  The return at 0x10e48 has v0 = one of ret(breakout_and_test3_sd), ret(madd).

- `_cvts_d` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x10e8c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x10e8c-0x11048 (444 bytes).
  It occupies 444 bytes.
  5 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x10f08, `ld` at 0x10f20, `ld` at 0x10f98.
  2 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x10f10, `lw` at 0x10f24.
  The `sw` at 0x10f1c stores 4 bytes to [-0x3fe8]:8 +0x53c.
  4 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x549, including `lbu` at 0x10f9c, `lbu` at 0x10fbc, `lbu` at 0x10fe8.
  4 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x54a, including `lbu` at 0x10fa0, `lbu` at 0x10fc4, `lbu` at 0x10ff0.
  The `jal` at 0x10ea8 calls breakout_sd with a0=0x1, a1=sp-16, a2=sp-48, a3=sp-44, a4=sp-40.
  The `jal` at 0x10ee0 calls round_s with a0=?, a1=?, a2=?, a3=0x0.
  The `jal` at 0x10f34 calls post_sig with a0=0x8, a1=[-0x3fe8]:8, a2=0x10040, a3=?, a4=[-0x3fe8]:8.
  The `jal` at 0x10f3c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10f54 calls renorm_d with a0=sp-40, a1=?, a2=?, a3=?, a4=0x1.
  The `jal` at 0x10fa4 calls fpstore_s with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?, a4=0x1.
  The `jal` at 0x10fac calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10fc8 calls fpstore_s with a0=0x7fbfffff, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?, a4=[-0x3fe8]:8.
  The `jal` at 0x10fd0 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x10ff4 calls fpstore_s with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?, a4=0x1.
  The `jal` at 0x10ffc calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x11030 calls fpstore_s with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=0x7f800000, a4=0x1.
  The `jal` at 0x11038 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x10ec0 targets 0x10ef4, is taken when a1(?) == at(=0x7ff), and falls through when a1(?) != at(=0x7ff).
  The `beq` branch at 0x10ec8 targets 0x10f4c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x10f00 targets 0x10f70, is taken when (a2(?) & v0(=0x8000000000000)) == 0, and falls through when (a2(?) & v0(=0x8000000000000)) != 0.
  The `beq` branch at 0x10f2c targets 0x10fbc, is taken when (v1(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (v1(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x10f44 targets 0x10eec and is always taken.
  The `beq` branch at 0x10f4c targets 0x10fe0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10f68 targets 0x10edc and is always taken.
  The `beq` branch at 0x10f70 targets 0x11018, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10f7c targets 0x1100c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x10fb4 targets 0x10eec and is always taken.
  The `beq` branch at 0x10fd8 targets 0x10eec and is always taken.
  The `beq` branch at 0x11004 targets 0x10eec and is always taken.
  The `beq` branch at 0x11010 targets 0x10f98 and is always taken.
  The `beq` branch at 0x11040 targets 0x10eec and is always taken.
  The return at 0x10eec has v0 = one of ret(round_s), ret(store_fpcsr).

- `checkfp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11050 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11050-0x11228 (472 bytes).
  It occupies 472 bytes.
  The `ld` at 0x11068 loads 8 bytes from abs 0xffffffffffffc460.
  The `ld` at 0x1108c loads 8 bytes from a0 (arg0 at entry) +0x318.
  The `ld` at 0x11090 loads 8 bytes from a0 (arg0 at entry) +0x3e0.
  The `lb` at 0x11094 loads 1 byte from [a0+792]:8 +0x9c.
  The `sw` at 0x110cc stores 4 bytes to [a0+992]:8 +0x130.
  The `swc1` at 0x110d8 stores 4 bytes to [a0+992]:8 +0x124.
  The `swc1` at 0x110dc stores 4 bytes to [a0+992]:8 +0x11c.
  The `swc1` at 0x110e0 stores 4 bytes to [a0+992]:8 +0x114.
  The `swc1` at 0x110e4 stores 4 bytes to [a0+992]:8 +0x10c.
  The `swc1` at 0x110e8 stores 4 bytes to [a0+992]:8 +0x104.
  The `swc1` at 0x110ec stores 4 bytes to [a0+992]:8 +0xfc.
  The `swc1` at 0x110f0 stores 4 bytes to [a0+992]:8 +0xf4.
  The `swc1` at 0x110f4 stores 4 bytes to [a0+992]:8 +0xec.
  The `swc1` at 0x110f8 stores 4 bytes to [a0+992]:8 +0xe4.
  The `swc1` at 0x110fc stores 4 bytes to [a0+992]:8 +0xdc.
  The `swc1` at 0x11100 stores 4 bytes to [a0+992]:8 +0xd4.
  The `swc1` at 0x11104 stores 4 bytes to [a0+992]:8 +0xcc.
  The `swc1` at 0x11108 stores 4 bytes to [a0+992]:8 +0xc4.
  The `swc1` at 0x1110c stores 4 bytes to [a0+992]:8 +0xbc.
  The `swc1` at 0x11110 stores 4 bytes to [a0+992]:8 +0xb4.
  The `swc1` at 0x11114 stores 4 bytes to [a0+992]:8 +0xac.
  The `swc1` at 0x11118 stores 4 bytes to [a0+992]:8 +0xa4.
  The `swc1` at 0x1111c stores 4 bytes to [a0+992]:8 +0x9c.
  The `swc1` at 0x11120 stores 4 bytes to [a0+992]:8 +0x94.
  The `swc1` at 0x11124 stores 4 bytes to [a0+992]:8 +0x8c.
  The `swc1` at 0x11128 stores 4 bytes to [a0+992]:8 +0x84.
  The `swc1` at 0x1112c stores 4 bytes to [a0+992]:8 +0x7c.
  The `swc1` at 0x11130 stores 4 bytes to [a0+992]:8 +0x74.
  The `swc1` at 0x11134 stores 4 bytes to [a0+992]:8 +0x6c.
  The `swc1` at 0x11138 stores 4 bytes to [a0+992]:8 +0x64.
  The `swc1` at 0x1113c stores 4 bytes to [a0+992]:8 +0x5c.
  The `swc1` at 0x11140 stores 4 bytes to [a0+992]:8 +0x54.
  The `swc1` at 0x11144 stores 4 bytes to [a0+992]:8 +0x4c.
  The `swc1` at 0x11148 stores 4 bytes to [a0+992]:8 +0x44.
  The `swc1` at 0x1114c stores 4 bytes to [a0+992]:8 +0x3c.
  The `swc1` at 0x11150 stores 4 bytes to [a0+992]:8 +0x34.
  The `swc1` at 0x11158 stores 4 bytes to [a0+992]:8 +0x2c.
  The `sdc1` at 0x1115c stores 8 bytes to [a0+992]:8 +0x120.
  The `sdc1` at 0x11160 stores 8 bytes to [a0+992]:8 +0x118.
  The `sdc1` at 0x11164 stores 8 bytes to [a0+992]:8 +0x110.
  The `sdc1` at 0x11168 stores 8 bytes to [a0+992]:8 +0x108.
  The `sdc1` at 0x1116c stores 8 bytes to [a0+992]:8 +0x100.
  The `sdc1` at 0x11170 stores 8 bytes to [a0+992]:8 +0xf8.
  The `sdc1` at 0x11174 stores 8 bytes to [a0+992]:8 +0xf0.
  The `sdc1` at 0x11178 stores 8 bytes to [a0+992]:8 +0xe8.
  The `sdc1` at 0x1117c stores 8 bytes to [a0+992]:8 +0xe0.
  The `sdc1` at 0x11180 stores 8 bytes to [a0+992]:8 +0xd8.
  The `sdc1` at 0x11184 stores 8 bytes to [a0+992]:8 +0xd0.
  The `sdc1` at 0x11188 stores 8 bytes to [a0+992]:8 +0xc8.
  The `sdc1` at 0x1118c stores 8 bytes to [a0+992]:8 +0xc0.
  The `sdc1` at 0x11190 stores 8 bytes to [a0+992]:8 +0xb8.
  The `sdc1` at 0x11194 stores 8 bytes to [a0+992]:8 +0xb0.
  The `sdc1` at 0x11198 stores 8 bytes to [a0+992]:8 +0xa8.
  The `sdc1` at 0x1119c stores 8 bytes to [a0+992]:8 +0xa0.
  The `sdc1` at 0x111a0 stores 8 bytes to [a0+992]:8 +0x98.
  The `sdc1` at 0x111a4 stores 8 bytes to [a0+992]:8 +0x90.
  The `sdc1` at 0x111a8 stores 8 bytes to [a0+992]:8 +0x88.
  The `sdc1` at 0x111ac stores 8 bytes to [a0+992]:8 +0x80.
  The `sdc1` at 0x111b0 stores 8 bytes to [a0+992]:8 +0x78.
  The `sdc1` at 0x111b4 stores 8 bytes to [a0+992]:8 +0x70.
  The `sdc1` at 0x111b8 stores 8 bytes to [a0+992]:8 +0x68.
  The `sdc1` at 0x111bc stores 8 bytes to [a0+992]:8 +0x60.
  The `sdc1` at 0x111c0 stores 8 bytes to [a0+992]:8 +0x58.
  The `sdc1` at 0x111c4 stores 8 bytes to [a0+992]:8 +0x50.
  The `sdc1` at 0x111c8 stores 8 bytes to [a0+992]:8 +0x48.
  The `sdc1` at 0x111cc stores 8 bytes to [a0+992]:8 +0x40.
  The `sdc1` at 0x111d0 stores 8 bytes to [a0+992]:8 +0x38.
  The `sdc1` at 0x111d4 stores 8 bytes to [a0+992]:8 +0x30.
  The `sdc1` at 0x111d8 stores 8 bytes to [a0+992]:8 +0x28.
  The `ld` at 0x111e4 loads 8 bytes from abs 0xffffffffffffc018.
  The `sd` at 0x111e8 stores 8 bytes to abs 0xffffffffffffc460.
  The `ld` at 0x111f4 loads 8 bytes from [-0x3fe8]:8 +0x3e0.
  The `ld` at 0x11200 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x260.
  The `sd` at 0x1120c stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x260.
  The `jal` at 0x1105c calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x11210 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `beq` branch at 0x11074 targets 0x11210, is taken when v0(=[-0x3ba0]:8) == 0, and falls through when v0(=[-0x3ba0]:8) != 0.
  The `bne` branch at 0x1107c targets 0x11210, is taken when a0 != v0(=[-0x3ba0]:8), and falls through when a0 == v0(=[-0x3ba0]:8).
  The `beq` branch at 0x11084 targets 0x111e4, is taken when a1 == at(=0x1), and falls through when a1 != at(=0x1).
  The `beq` branch at 0x1109c targets 0x110a8, is taken when (t0(=[[a0+792]:8+156]:1) & 0xc) == 0, and falls through when (t0(=[[a0+792]:8+156]:1) & 0xc) != 0.
  The `beq` branch at 0x110c0 targets 0x110d0, is taken when a1 == at(=0x2), and falls through when a1 != at(=0x2).
  The `bne` branch at 0x110d0 targets 0x1115c, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x11154 targets 0x111dc and is always taken.
  The `beq` branch at 0x111ec targets 0x11210, is taken when t1(=[-0x3fe8]:8) == 0, and falls through when t1(=[-0x3fe8]:8) != 0.
  The return at 0x11220 has v0 = ret(splx).

- `fpunit_fpstore_s` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11230 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11230-0x113dc (428 bytes).
  It occupies 428 bytes.
  The `ld` at 0x11250 loads 8 bytes from (sym(.rodata)+4424 + (a1 << 0x3)) +0x0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x11254).
  The instructions from 0x1125c to 0x113d8 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x11254 uses a jump table whose successors are unresolved.

- `fpunit_fpstore_d` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x113e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x113e0-0x116fc (796 bytes).
  It occupies 796 bytes.
  The `ld` at 0x11408 loads 8 bytes from table(sym(.rodata)+4680) +0x0.
  The `ld` at 0x11430 loads 8 bytes from (sym(.rodata)+4808 + (a1 << 0x3)) +0x0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x11434).
  The `bne` branch at 0x113e0 targets 0x11414, is taken when a2 != 0, and falls through when a2 == 0.
  The instructions from 0x1143c to 0x116f8 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x1140c uses a jump table whose successors are unresolved.
  The indirect jump at 0x11434 uses a jump table whose successors are unresolved.

- `longway` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11700 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11700-0x11980 (640 bytes).
  It occupies 640 bytes.
  2 such `lb` accesses load 1 byte from abs 0xffffffffffffc04f, including `lb` at 0x11700, `lb` at 0x11904.
  9 such `sd` accesses store 8 bytes to ?, including `sd` at 0x11734, `sd` at 0x1173c, `sd` at 0x11744.
  The `lw` at 0x117c0 loads 4 bytes from sym(dump_in_progress) +0x0.
  The `ld` at 0x117cc loads 8 bytes from abs 0xffffffffffffc020.
  The `ld` at 0x117d8 loads 8 bytes from [-0x3fe0]:8 +0xe0.
  The `ld` at 0x11810 loads 8 bytes from abs 0xffffffffffffc018.
  The `ld` at 0x11814 loads 8 bytes from [-0x3fe8]:8 +0x3e0.
  The `sd` at 0x1181c stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x238.
  The `sd` at 0x11828 stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x240.
  The `sd` at 0x11830 stores 8 bytes to [[-0x3fe8]:8+992]:8 +0x248.
  2 such `sb` accesses store 1 byte to abs 0xffffffffffffc04f, including `sb` at 0x1183c, `sb` at 0x11910.
  The `sw` at 0x118f8 stores 4 bytes to sym(ovflwword) +0x0.
  The `ld` at 0x1190c loads 8 bytes from abs 0xffffffffffffc3c0.
  Calls keruliframe via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1171c).
  Calls ecommon via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x11748).
  Calls ecommon via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x11770).
  Calls ecommon via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x11808).
  Calls ecommon via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x1184c).
  The `jal` at 0x11918 calls printf with a0=sym(.data)+7600, a1=?, a2=sp, a3=?.
  The `jal` at 0x1193c calls printf with a0=sym(.data)+7908, a1=ra at entry, a2=[-0x3fb1]:1, a3=?.
  The `jal` at 0x11970 calls panic with a0=sym(.data)+7928, a1=?, a2=?, a3=?.
  Calls _baduk via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x11978).
  The `beq` branch at 0x11704 targets 0x11810, is taken when k0(=[-0x3fb1]:1) == 0, and falls through when k0(=[-0x3fb1]:1) != 0.
  The `beq` branch at 0x1170c targets 0x117a8, is taken when k0(=[-0x3fb1]:1-1) == 0, and falls through when k0(=[-0x3fb1]:1-1) != 0.
  The `bnel` branch at 0x11714 targets 0x11724, is taken when k0(=[-0x3fb1]:1-4) != 0, and falls through when k0(=[-0x3fb1]:1-4) == 0; its branch-likely delay slot `addi k0,k0,2` at 0x11718 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x11724 targets 0x11750, is taken when k0(=[-0x3fb1]:1-2) != 0, and falls through when k0(=[-0x3fb1]:1-2) == 0.
  The `bne` branch at 0x117c4 targets 0x117e8, is taken when k0(=[sym(dump_in_progress)]) != 0, and falls through when k0(=[sym(dump_in_progress)]) == 0.
  The `beq` branch at 0x117d0 targets 0x117e8, is taken when k0(=[-0x3fe0]:8) == 0, and falls through when k0(=[-0x3fe0]:8) != 0.
  The `beq` branch at 0x117e0 targets 0x11854, is taken when k0(=[[-0x3fe0]:8+224]:8) >= sp(=sp) (unsigned), and falls through when k0(=[[-0x3fe0]:8+224]:8) < sp(=sp) (unsigned).
  The `beq` branch at 0x11868 targets 0x118e0 and is always taken.
  The instructions from 0x11778 to 0x117a4 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x11870 to 0x118dc are not reached by any path from the entry, and their branches are not listed.

- `stkovflw` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11854 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11854-0x11870 (28 bytes).
  It occupies 28 bytes.
  The `beq` branch at 0x11868 targets 0x118e0 and is always taken.

- `stkundflw` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11870 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11870-0x1188c (28 bytes).
  It occupies 28 bytes.
  The `beq` branch at 0x11884 targets 0x118e0 and is always taken.

- `stkscr1` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1188c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1188c-0x118a8 (28 bytes).
  It occupies 28 bytes.
  The `beq` branch at 0x118a0 targets 0x118e0 and is always taken.

- `stkscr2` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x118a8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x118a8-0x118c4 (28 bytes).
  It occupies 28 bytes.
  The `beq` branch at 0x118bc targets 0x118e0 and is always taken.

- `stkscr3` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x118c4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x118c4-0x11980 (188 bytes).
  It occupies 188 bytes.
  The `sw` at 0x118f8 stores 4 bytes to sym(ovflwword) +0x0.
  The `lb` at 0x11904 loads 1 byte from abs 0xffffffffffffc04f.
  The `ld` at 0x1190c loads 8 bytes from abs 0xffffffffffffc3c0.
  The `sb` at 0x11910 stores 1 byte to abs 0xffffffffffffc04f.
  The `jal` at 0x11918 calls printf with a0=sym(.data)+7843, a1=?, a2=sp, a3=?.
  The `jal` at 0x1193c calls printf with a0=sym(.data)+7908, a1=ra at entry, a2=[-0x3fb1]:1, a3=?.
  The `jal` at 0x11970 calls panic with a0=sym(.data)+7928, a1=?, a2=?, a3=?.
  Calls _baduk via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x11978).
  The `beq` branch at 0x118d8 targets 0x118e0 and is always taken.

- `_cvtd_s` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11980 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11980-0x11b2c (428 bytes).
  It occupies 428 bytes.
  4 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x119c0, `ld` at 0x11a08, `ld` at 0x11a24.
  4 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x549, including `lbu` at 0x119d4, `lbu` at 0x11a88, `lbu` at 0x11ac4.
  4 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x54a, including `lbu` at 0x119e4, `lbu` at 0x11a94, `lbu` at 0x11ac8.
  2 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x11a14, `lw` at 0x11a28.
  The `sw` at 0x11a20 stores 4 bytes to [-0x3fe8]:8 +0x53c.
  The `jal` at 0x1199c calls breakout_sd with a0=0x0, a1=sp-16, a2=sp-48, a3=sp-44, a4=sp-40.
  The `jal` at 0x119e8 calls fpstore_d with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?.
  The `jal` at 0x119f0 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x11a38 calls post_sig with a0=0x8, a1=0x10000, a2=?, a3=[-0x3fe8]:8, a4=[-0x3fe8]:8, a6=([[-0x3fe8]:8+1340] | 0x10040), a7=0x10040.
  The `jal` at 0x11a40 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x11a58 calls renorm_s with a0=sp-40, a1=?, a2=?, a3=?.
  The `jal` at 0x11aac calls fpstore_d with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[-0x3fe8]:8, a4=0x7ff0000000000000.
  The `jal` at 0x11ab4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x11ad0 calls fpstore_d with a0=0x7ff7ffffffffffff, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[-0x3fe8]:8, a4=[-0x3fe8]:8, a6=([[-0x3fe8]:8+1340] | 0x10040), a7=0x10040.
  The `jal` at 0x11ad8 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x11afc calls fpstore_d with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?.
  The `jal` at 0x11b04 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x11b14 calls fpstore_d with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[-0x3fe8]:8, a4=0x7ff0000000000000.
  The `jal` at 0x11b1c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x119ac targets 0x11a04, is taken when a4(?) == at(=0xff), and falls through when a4(?) != at(=0xff).
  The `beq` branch at 0x119b4 targets 0x11a50, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bgez` branch at 0x11a0c targets 0x11a84, is taken when a4(?) >= 0 (signed), and falls through when a4(?) < 0 (signed).
  The `beq` branch at 0x11a30 targets 0x11ac4, is taken when (a5(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (a5(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x11a48 targets 0x119fc and is always taken.
  The `beq` branch at 0x11a50 targets 0x11ae8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x11a7c targets 0x119c0 and is always taken.
  The `beq` branch at 0x11a9c targets 0x11b14, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x11abc targets 0x119fc and is always taken.
  The `beq` branch at 0x11ae0 targets 0x119fc and is always taken.
  The `beq` branch at 0x11b0c targets 0x119fc and is always taken.
  The `beq` branch at 0x11b24 targets 0x119fc and is always taken.
  The return at 0x119fc has v0 = ret(store_fpcsr).

- `round_w` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11b2c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11b2c-0x11c90 (356 bytes).
  It occupies 356 bytes.
  4 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x11b70, `ld` at 0x11bec, `ld` at 0x11c30.
  The `lbu` at 0x11b80 loads 1 byte from [-0x3fe8]:8 +0x548.
  The `lb` at 0x11ba8 loads 1 byte from ?.
  4 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x11be0, `lw` at 0x11bf0, `lw` at 0x11c24.
  2 such `sw` accesses store 4 bytes to [-0x3fe8]:8 +0x53c, including `sw` at 0x11be8, `sw` at 0x11c2c.
  2 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x549, including `lbu` at 0x11c50, `lbu` at 0x11c74.
  2 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x54a, including `lbu` at 0x11c58, `lbu` at 0x11c7c.
  The `jal` at 0x11c00 calls post_sig with a0=0x8, a1=0xffffffff80000000, a2=?, a3=?, a4=[-0x3fe8]:8, a5=0x7fff0000.
  The `jal` at 0x11c08 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x11c44 calls post_sig with a0=0x8, a1=0xffffffff80000000, a2=?, a3=?, a4=[-0x3fe8]:8, a5=0x7fff0000.
  The `jal` at 0x11c5c calls fpstore_s with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?, a4=[-0x3fe8]:8.
  The `jal` at 0x11c64 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x11c80 calls fpstore_s with a0=0x7fffffff, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?, a4=[-0x3fe8]:8, a5=0x7fff0000.
  The `beq` branch at 0x11b48 targets 0x11b60, is taken when (a2 & at(=0x7fffffffffffffff)) == 0, and falls through when (a2 & at(=0x7fffffffffffffff)) != 0.
  The `beq` branch at 0x11bb4 targets 0x11bc0, is taken when a0 == 0, and falls through when a0 != 0.
  The `bne` branch at 0x11bd0 targets 0x11be0, is taken when s0(?) < a1(=0xffffffff80000000) (signed), and falls through when s0(?) >= a1(=0xffffffff80000000) (signed).
  The `beq` branch at 0x11bd8 targets 0x11c1c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x11bf8 targets 0x11c74, is taken when (a7(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (a7(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x11c1c targets 0x11c50, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x11c3c targets 0x11c50, is taken when (t2(=[[-0x3fe8]:8+1340]) & 0x80) == 0, and falls through when (t2(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  The `beq` branch at 0x11c6c targets 0x11c14 and is always taken.
  The `beq` branch at 0x11c88 targets 0x11c08 and is always taken.
  The return at 0x11c14 has v0 = ret(store_fpcsr).

- `round_s` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x11c90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x11c90-0x12458 (1992 bytes).
  It occupies 1992 bytes.
  20 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x11d24, `ld` at 0x11d7c, `ld` at 0x11da0.
  3 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x548, including `lbu` at 0x11d38, `lbu` at 0x11db0, `lbu` at 0x12338.
  10 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x549, including `lbu` at 0x11d3c, `lbu` at 0x11e10, `lbu` at 0x11eb8.
  6 such `lb` accesses load 1 byte from ?, including `lb` at 0x11d60, `lb` at 0x11dd4, `lb` at 0x11f24.
  15 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x11d70, `lw` at 0x11d80, `lw` at 0x11e00.
  11 such `sw` accesses store 4 bytes to [-0x3fe8]:8 +0x53c, including `sw` at 0x11d78, `sw` at 0x11e08, `sw` at 0x11f54.
  6 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x54a, including `lbu` at 0x11e40, `lbu` at 0x11fa0, `lbu` at 0x120c0.
  3 such `ld` accesses load 8 bytes from [-0x3fe8]:8 +0x3e0, including `ld` at 0x11e58, `ld` at 0x120d0, `ld` at 0x123d0.
  3 such `sd` accesses store 8 bytes to [[-0x3fe8]:8+992]:8 +0x128, including `sd` at 0x11e64, `sd` at 0x120d4, `sd` at 0x123d4.
  The `lwu` at 0x12080 loads 4 bytes from table(sym(.data)+7968) +0x0.
  The `lb` at 0x121a0 loads 1 byte from table(sym(round_bit)) +0x1.
  The `jal` at 0x11d90 calls post_sig with a0=0x8, a1=?, a2=?, a3=a3 at entry (arg3), a5=[-0x3fe8]:8, a6=0x7fffffffffffffff.
  The `jal` at 0x11e44 calls fpstore_s with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?, a5=[-0x3fe8]:8, a7=(a1 + one of 0xc0, 0xc1).
  The `jal` at 0x11e68 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x11f6c calls post_sig with a0=0x8, a1=?, a2=?, a3=a3 at entry (arg3), a5=[-0x3fe8]:8, a6=0x7fffffffffffffff.
  The `jal` at 0x11fa4 calls fpstore_s with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[[-0x3fe8]:8+1353]:1, a5=[-0x3fe8]:8.
  The `jal` at 0x11fac calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x12084 calls post_sig with a0=0x8, a1=[[-0x3fe8]:8+1352]:1, a2=[[-0x3fe8]:8+1340], a3=?, a5=[-0x3fe8]:8.
  The `jal` at 0x120c4 calls fpstore_s with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?, a5=[-0x3fe8]:8.
  The `jal` at 0x120f0 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x12170 calls fpstore_s with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[[-0x3fe8]:8+1353]:1, a5=[-0x3fe8]:8.
  The `jal` at 0x12178 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x121e4 calls post_sig with a0=0x8, a1=?, a2=?, a3=?, a5=[-0x3fe8]:8.
  The `jal` at 0x12220 calls post_sig with a0=0x8, a1=[[-0x3fe8]:8+1352]:1, a2=[[-0x3fe8]:8+1340], a3=?, a5=[-0x3fe8]:8.
  The `jal` at 0x12248 calls fpstore_s with a0=entry(sym(.data)+7968), a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[[-0x3fe8]:8+1353]:1, a5=[-0x3fe8]:8.
  The `jal` at 0x12250 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x12318 calls post_sig with a0=0x8, a1=?, a2=([[-0x3fe8]:8+1340] | 0x2008), a3=?, a5=[-0x3fe8]:8.
  The `jal` at 0x123c4 calls fpstore_s with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[[-0x3fe8]:8+1353]:1, a5=[-0x3fe8]:8, a7=(a1 + one of 0xc0, 0xc1).
  The `jal` at 0x123d8 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x11cc8 targets 0x11ce8, is taken when (a6(=0x7fffffffffffffff) & a3) == 0, and falls through when (a6(=0x7fffffffffffffff) & a3) != 0.
  The `beq` branch at 0x11cfc targets 0x11d1c, is taken when (a6(=0x7fffffffffffffff) & s1(?)) == 0, and falls through when (a6(=0x7fffffffffffffff) & s1(?)) != 0.
  The `beq` branch at 0x11d34 targets 0x11ea0, is taken when s2(=a1) >= -0x96 (signed), and falls through when s2(=a1) < -0x96 (signed).
  The `beq` branch at 0x11d44 targets 0x12188, is taken when (v0(=[[-0x3fe8]:8+1353]:1) & 0x2) == 0, and falls through when (v0(=[[-0x3fe8]:8+1353]:1) & 0x2) != 0.
  The `beq` branch at 0x11d88 targets 0x11f54, is taken when (a0(=[[-0x3fe8]:8+1340]) & 0x100) == 0, and falls through when (a0(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  The `bgez` branch at 0x11dec targets 0x121f4, is taken when ra(?) >= 0 (signed), and falls through when ra(?) < 0 (signed).
  The `beq` branch at 0x11df8 targets 0x11e10, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x11e18 targets 0x11e68, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0.
  The `beq` branch at 0x11ea4 targets 0x11fbc, is taken when s2(=a1) >= -0x7e (signed), and falls through when s2(=a1) < -0x7e (signed).
  The `beq` branch at 0x11ecc targets 0x12260, is taken when (t9(=[[-0x3fe8]:8+1353]:1) & 0x2) == 0, and falls through when (t9(=[[-0x3fe8]:8+1353]:1) & 0x2) != 0.
  The `bne` branch at 0x11ee0 targets 0x11d48, is taken when s0(?) < t8(=0x7fffff) (unsigned), and falls through when s0(?) >= t8(=0x7fffff) (unsigned).
  The `beq` branch at 0x11f30 targets 0x11d70, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x11f3c targets 0x12404, is taken when a1(=0x1) == a0(?), and falls through when a1(=0x1) != a0(?).
  The `beq` branch at 0x11f44 targets 0x11d70, is taken when at(?) == a1(=0x1), and falls through when at(?) != a1(=0x1).
  The `beq` branch at 0x11f64 targets 0x11f78, is taken when (v0(=[[-0x3fe8]:8+1340]) & 0x80) == 0, and falls through when (v0(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  The `bne` branch at 0x11f80 targets 0x11f94, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0.
  The `bne` branch at 0x11f8c targets 0x11fac, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x8) != 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x8) == 0.
  The `beq` branch at 0x11fb4 targets 0x11e74 and is always taken.
  The `beq` branch at 0x11fc0 targets 0x11fe0, is taken when (a6(=0x7fffffffffffffff) & s1(?)) == 0, and falls through when (a6(=0x7fffffffffffffff) & s1(?)) != 0.
  The `beq` branch at 0x1202c targets 0x122e8, is taken when s2(=a1) == a2(=-0x7f), and falls through when s2(=a1) != a2(=-0x7f).
  The `bgez` branch at 0x12038 targets 0x1204c, is taken when t9(?) >= 0 (signed), and falls through when t9(?) < 0 (signed).
  The `bne` branch at 0x1204c targets 0x12100, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x1207c targets 0x12204, is taken when (a0(=[[-0x3fe8]:8+1340]) & 0x200) == 0, and falls through when (a0(=[[-0x3fe8]:8+1340]) & 0x200) != 0.
  The `beq` branch at 0x12098 targets 0x120d8, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0.
  The `beq` branch at 0x120d8 targets 0x120f0, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x120f8 targets 0x11e74 and is always taken.
  The `bne` branch at 0x12108 targets 0x12130, is taken when s5(?) < -0x7e (signed), and falls through when s5(?) >= -0x7e (signed).
  The `beq` branch at 0x12128 targets 0x12134 and is always taken.
  The `beq` branch at 0x12138 targets 0x123e8, is taken when (a2(=[[-0x3fe8]:8+1340]) & 0x100) == 0, and falls through when (a2(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  The `bne` branch at 0x12140 targets 0x12310, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x12148 targets 0x121c4, is taken when a0(?) == a1(=0x1), and falls through when a0(?) != a1(=0x1).
  The `bne` branch at 0x12158 targets 0x1216c, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0.
  The `bne` branch at 0x12164 targets 0x12178, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x8) != 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x8) == 0.
  The `beq` branch at 0x12180 targets 0x11e74 and is always taken.
  The `bgez` branch at 0x121b4 targets 0x12420, is taken when t8(?) >= 0 (signed), and falls through when t8(?) < 0 (signed).
  The `beq` branch at 0x121dc targets 0x12150, is taken when (t8(=[[-0x3fe8]:8+1340]) & 0x80) == 0, and falls through when (t8(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  The `beq` branch at 0x121ec targets 0x12150 and is always taken.
  The `bne` branch at 0x121f4 targets 0x11e00, is taken when s4(?) != 0, and falls through when s4(?) == 0.
  The `beq` branch at 0x121fc targets 0x11e14 and is always taken.
  The `beq` branch at 0x12218 targets 0x1222c, is taken when (ra(=[[-0x3fe8]:8+1340]) & 0x80) == 0, and falls through when (ra(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  The `bne` branch at 0x12234 targets 0x12240, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0.
  The `bne` branch at 0x1223c targets 0x12250, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x12258 targets 0x11e74 and is always taken.
  The `beq` branch at 0x12274 targets 0x12284, is taken when (a6(=0x7fffffffffffffff) & s1(?)) == 0, and falls through when (a6(=0x7fffffffffffffff) & s1(?)) != 0.
  The `bltz` branch at 0x122d8 targets 0x122f4, is taken when ra(?) < 0 (signed), and falls through when ra(?) >= 0 (signed).
  The `beq` branch at 0x122e0 targets 0x122fc and is always taken.
  The `bgez` branch at 0x122ec targets 0x12038, is taken when v1(?) >= 0 (signed), and falls through when v1(?) < 0 (signed).
  The `beq` branch at 0x122f4 targets 0x12048 and is always taken.
  The `beq` branch at 0x12308 targets 0x123ec, is taken when (a2(=[[-0x3fe8]:8+1340]) & 0x100) == 0, and falls through when (a2(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  The `bgez` branch at 0x12374 targets 0x12448, is taken when a3(?) >= 0 (signed), and falls through when a3(?) < 0 (signed).
  The `beq` branch at 0x12380 targets 0x12398, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x123a0 targets 0x123d8, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0.
  The `beq` branch at 0x123e0 targets 0x11e74 and is always taken.
  The `beq` branch at 0x123e8 targets 0x12440, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x123f0 targets 0x12150, is taken when a0(?) != a1(=0x1), and falls through when a0(?) == a1(=0x1).
  The `beq` branch at 0x123fc targets 0x12148 and is always taken.
  The `bltz` branch at 0x12408 targets 0x11f44, is taken when a4(?) < 0 (signed), and falls through when a4(?) >= 0 (signed).
  The `bne` branch at 0x12410 targets 0x11f44, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x12418 targets 0x11d74 and is always taken.
  The `bne` branch at 0x12428 targets 0x12310, is taken when (a2(=[[-0x3fe8]:8+1340]) & 0x100) != 0, and falls through when (a2(=[[-0x3fe8]:8+1340]) & 0x100) == 0.
  The `beq` branch at 0x12438 targets 0x121c4 and is always taken.
  The `beq` branch at 0x12440 targets 0x12148 and is always taken.
  The `bne` branch at 0x12448 targets 0x12388, is taken when s4(?) != 0, and falls through when s4(?) == 0.
  The `beq` branch at 0x12450 targets 0x1239c and is always taken.
  The return at 0x11e98 has v0 = ret(store_fpcsr).

- `maddrnd_s` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x12458 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x12458-0x129a8 (1360 bytes).
  It occupies 1360 bytes.
  13 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x124d4, `ld` at 0x12534, `ld` at 0x126c4.
  The `lbu` at 0x124e8 loads 1 byte from [-0x3fe8]:8 +0x548.
  5 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x549, including `lbu` at 0x124ec, `lbu` at 0x1258c, `lbu` at 0x126fc.
  5 such `lb` accesses load 1 byte from ?, including `lb` at 0x12510, `lb` at 0x125fc, `lb` at 0x12684.
  12 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x12528, `lw` at 0x12538, `lw` at 0x126b8.
  9 such `sw` accesses store 4 bytes to [-0x3fe8]:8 +0x53c, including `sw` at 0x12530, `sw` at 0x126c0, `sw` at 0x12718.
  The `lwu` at 0x126e4 loads 4 bytes from table(sym(.data)+7968) +0x0.
  3 such `sb` accesses store 1 byte to [-0x3fe8]:8 +0x549, including `sb` at 0x12708, `sb` at 0x12760, `sb` at 0x1279c.
  The `jal` at 0x12548 calls post_sig with a0=0x8, a1=?, a2=[-0x3fe8]:8, a3=?, a5=([[-0x3fe8]:8+1340] | 0x1004), a6=-0x7f.
  The `jal` at 0x126f0 calls post_sig with a0=0x8, a1=[[-0x3fe8]:8+1340], a2=[-0x3fe8]:8, a3=([[-0x3fe8]:8+1340] | 0x1004).
  The `jal` at 0x12748 calls post_sig with a0=0x8, a1=?, a2=?, a3=?.
  The `jal` at 0x12784 calls post_sig with a0=0x8, a1=[[-0x3fe8]:8+1340], a2=[-0x3fe8]:8, a3=?, a5=([[-0x3fe8]:8+1340] | 0x2008).
  The `jal` at 0x12834 calls post_sig with a0=0x8, a1=?, a2=[-0x3fe8]:8, a3=?.
  The `jal` at 0x12864 calls post_sig with a0=0x8, a1=[[-0x3fe8]:8+1340], a2=[-0x3fe8]:8, a3=([[-0x3fe8]:8+1340] | 0x1004).
  The `beq` branch at 0x12484 targets 0x124a4, is taken when (v0(=0x7fffffffffffffff) & a3) == 0, and falls through when (v0(=0x7fffffffffffffff) & a3) != 0.
  The `beq` branch at 0x124b4 targets 0x124d4, is taken when (v0(=0x7fffffffffffffff) & s1(?)) == 0, and falls through when (v0(=0x7fffffffffffffff) & s1(?)) != 0.
  The `beq` branch at 0x124e4 targets 0x1257c, is taken when s2(=a1) >= -0x96 (signed), and falls through when s2(=a1) < -0x96 (signed).
  The `beq` branch at 0x124f4 targets 0x127e0, is taken when (v0(=[[-0x3fe8]:8+1353]:1) & 0x2) == 0, and falls through when (v0(=[[-0x3fe8]:8+1353]:1) & 0x2) != 0.
  The `beq` branch at 0x12540 targets 0x12550, is taken when (a4(=[[-0x3fe8]:8+1340]) & 0x80) == 0, and falls through when (a4(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  The `beq` branch at 0x12550 targets 0x12724, is taken when s1(?) == s2(=0x1), and falls through when s1(?) != s2(=0x1).
  The `beq` branch at 0x12580 targets 0x12624, is taken when s2(=a1) >= -0x7e (signed), and falls through when s2(=a1) < -0x7e (signed).
  The `beq` branch at 0x125a4 targets 0x12874, is taken when (t9(=[[-0x3fe8]:8+1353]:1) & 0x2) == 0, and falls through when (t9(=[[-0x3fe8]:8+1353]:1) & 0x2) != 0.
  The `bne` branch at 0x125b8 targets 0x124f8, is taken when s0(?) < t9(=0x7fffff) (unsigned), and falls through when s0(?) >= t9(=0x7fffff) (unsigned).
  The `beq` branch at 0x1260c targets 0x12920, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x12614 targets 0x12910, is taken when s2(=0x1) == v0(?), and falls through when s2(=0x1) != v0(?).
  The `beq` branch at 0x1261c targets 0x12528 and is always taken.
  The `beq` branch at 0x12628 targets 0x12648, is taken when (v0(=0x7fffffffffffffff) & s1(?)) == 0, and falls through when (v0(=0x7fffffffffffffff) & s1(?)) != 0.
  The `beq` branch at 0x12694 targets 0x128fc, is taken when s2(=a1) == a6(=-0x7f), and falls through when s2(=a1) != a6(=-0x7f).
  The `bgez` branch at 0x126a0 targets 0x126b4, is taken when at(?) >= 0 (signed), and falls through when at(?) < 0 (signed).
  The `bne` branch at 0x126b4 targets 0x12764, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x126e8 targets 0x1284c, is taken when (a3(=[[-0x3fe8]:8+1340]) & 0x200) == 0, and falls through when (a3(=[[-0x3fe8]:8+1340]) & 0x200) != 0.
  The `beq` branch at 0x12704 targets 0x1271c, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x1271c targets 0x12560 and is always taken.
  The `beq` branch at 0x12740 targets 0x12558, is taken when (v0(=[[-0x3fe8]:8+1340]) & 0x100) == 0, and falls through when (v0(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  The `beq` branch at 0x1275c targets 0x12554 and is always taken.
  The `beq` branch at 0x12768 targets 0x12930, is taken when (a1(=[[-0x3fe8]:8+1340]) & 0x100) == 0, and falls through when (a1(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  The `beq` branch at 0x12770 targets 0x12844, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x127a0 targets 0x12928, is taken when a3(?) == s1(=0x1), and falls through when a3(?) != s1(=0x1).
  The `bne` branch at 0x127ac targets 0x127d4, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x127cc targets 0x127d8 and is always taken.
  The `beq` branch at 0x127d8 targets 0x12560 and is always taken.
  The `bgez` branch at 0x12808 targets 0x1294c, is taken when a3(?) >= 0 (signed), and falls through when a3(?) < 0 (signed).
  The `beq` branch at 0x1282c targets 0x127a8, is taken when (t9(=[[-0x3fe8]:8+1340]) & 0x80) == 0, and falls through when (t9(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  The `beq` branch at 0x1283c targets 0x127a8 and is always taken.
  The `beq` branch at 0x12844 targets 0x127a0 and is always taken.
  The `beq` branch at 0x1285c targets 0x1286c, is taken when (at(=[[-0x3fe8]:8+1340]) & 0x80) == 0, and falls through when (at(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  The `beq` branch at 0x1286c targets 0x12560 and is always taken.
  The `beq` branch at 0x12888 targets 0x12898, is taken when (v0(=0x7fffffffffffffff) & s1(?)) == 0, and falls through when (v0(=0x7fffffffffffffff) & s1(?)) != 0.
  The `bltz` branch at 0x128ec targets 0x12908, is taken when v1(?) < 0 (signed), and falls through when v1(?) >= 0 (signed).
  The `beq` branch at 0x128f4 targets 0x12974 and is always taken.
  The `bgez` branch at 0x12900 targets 0x126a0, is taken when a4(?) >= 0 (signed), and falls through when a4(?) < 0 (signed).
  The `beq` branch at 0x12908 targets 0x126b0 and is always taken.
  The `bltz` branch at 0x12910 targets 0x1261c, is taken when a5(?) < 0 (signed), and falls through when a5(?) >= 0 (signed).
  The `bne` branch at 0x12918 targets 0x1261c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x12920 targets 0x12528 and is always taken.
  The `beq` branch at 0x12928 targets 0x12814 and is always taken.
  The `beq` branch at 0x12930 targets 0x1296c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x12938 targets 0x127a8, is taken when a3(?) != s1(=0x1), and falls through when a3(?) == s1(=0x1).
  The `beq` branch at 0x12944 targets 0x127a0 and is always taken.
  The `beq` branch at 0x12954 targets 0x12990, is taken when (a1(=[[-0x3fe8]:8+1340]) & 0x100) == 0, and falls through when (a1(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  The `beq` branch at 0x12964 targets 0x1277c and is always taken.
  The `beq` branch at 0x1296c targets 0x127a0 and is always taken.
  The `beq` branch at 0x1297c targets 0x129a0, is taken when (a1(=[[-0x3fe8]:8+1340]) & 0x100) == 0, and falls through when (a1(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  The `beq` branch at 0x12988 targets 0x1277c and is always taken.
  The `beq` branch at 0x12998 targets 0x12814 and is always taken.
  The `beq` branch at 0x129a0 targets 0x12934 and is always taken.
  The return at 0x12574 has v0 = one of ?, entry(sym(.data)+7968).

- `round_l` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x129a8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x129a8-0x12a90 (232 bytes).
  It occupies 232 bytes.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x129f0, `ld` at 0x12a48, `ld` at 0x12a64.
  The `lbu` at 0x12a00 loads 1 byte from [-0x3fe8]:8 +0x548.
  The `lb` at 0x12a24 loads 1 byte from ?.
  2 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x12a3c, `lw` at 0x12a4c.
  The `sw` at 0x12a44 stores 4 bytes to [-0x3fe8]:8 +0x53c.
  The `lbu` at 0x12a68 loads 1 byte from [-0x3fe8]:8 +0x549.
  The `lbu` at 0x12a70 loads 1 byte from [-0x3fe8]:8 +0x54a.
  The `jal` at 0x12a5c calls post_sig with a0=0x8, a1=a1 at entry (arg1), a2=?, a3=?, a4=[-0x3fe8]:8, a5=0x1, a6=0x8000000000000000.
  The `jal` at 0x12a74 calls fpstore_d with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?, a4=[-0x3fe8]:8.
  The `jal` at 0x12a7c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x129d0 targets 0x129e4, is taken when (a2 & at(=0x7fffffffffffffff)) == 0, and falls through when (a2 & at(=0x7fffffffffffffff)) != 0.
  The `beq` branch at 0x12a28 targets 0x12a34, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x12a34 targets 0x12a68, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x12a54 targets 0x12a68, is taken when (t0(=[[-0x3fe8]:8+1340]) & 0x80) == 0, and falls through when (t0(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  The return at 0x12a88 has v0 = ret(store_fpcsr).

- `round_d` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x12a90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x12a90-0x1324c (1980 bytes).
  It occupies 1980 bytes.
  21 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x12af4, `ld` at 0x12b58, `ld` at 0x12b7c.
  3 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x548, including `lbu` at 0x12b08, `lbu` at 0x12b8c, `lbu` at 0x13128.
  10 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x549, including `lbu` at 0x12b0c, `lbu` at 0x12bf4, `lbu` at 0x12ca0.
  6 such `lb` accesses load 1 byte from ?, including `lb` at 0x12b38, `lb` at 0x12bb0, `lb` at 0x12d10.
  16 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x12b4c, `lw` at 0x12b5c, `lw` at 0x12be4.
  12 such `sw` accesses store 4 bytes to [-0x3fe8]:8 +0x53c, including `sw` at 0x12b54, `sw` at 0x12bec, `sw` at 0x12c4c.
  6 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x54a, including `lbu` at 0x12c1c, `lbu` at 0x12d84, `lbu` at 0x12ea4.
  3 such `ld` accesses load 8 bytes from [-0x3fe8]:8 +0x3e0, including `ld` at 0x12c2c, `ld` at 0x12eb4, `ld` at 0x131c4.
  3 such `sd` accesses store 8 bytes to [[-0x3fe8]:8+992]:8 +0x128, including `sd` at 0x12c34, `sd` at 0x12eb8, `sd` at 0x131c8.
  The `ld` at 0x12e6c loads 8 bytes from table(sym(.data)+8000) +0x0.
  The `lb` at 0x12f80 loads 1 byte from table(sym(round_bit)) +0x1.
  The `jal` at 0x12b6c calls post_sig with a0=0x8, a1=?, a2=?, a3=?, a5=[-0x3fe8]:8, a6=0x7fffffffffffffff.
  The `jal` at 0x12c20 calls fpstore_d with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[[-0x3fe8]:8+1353]:1, a5=[-0x3fe8]:8, a7=(a1 + one of 0x600, 0x601).
  The `jal` at 0x12c50 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x12d58 calls post_sig with a0=0x8, a1=?, a2=?, a3=?, a5=[-0x3fe8]:8, a6=0x7fffffffffffffff.
  The `jal` at 0x12d88 calls fpstore_d with a0=(one of 0x0, 0x10000000000000 | (a0 << 0x3f)), a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[[-0x3fe8]:8+1353]:1, a5=[-0x3fe8]:8.
  The `jal` at 0x12d90 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x12e70 calls post_sig with a0=0x8, a1=[[-0x3fe8]:8+1352]:1, a2=?, a3=[[-0x3fe8]:8+1340], a5=[-0x3fe8]:8.
  The `jal` at 0x12ea8 calls fpstore_d with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=?, a5=[-0x3fe8]:8.
  The `jal` at 0x12ed4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x12f4c calls fpstore_d with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[[-0x3fe8]:8+1353]:1, a5=[-0x3fe8]:8.
  The `jal` at 0x12f54 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x12fc4 calls post_sig with a0=0x8, a1=?, a2=?, a3=?, a5=[-0x3fe8]:8.
  The `jal` at 0x13000 calls post_sig with a0=0x8, a1=[[-0x3fe8]:8+1352]:1, a2=?, a3=[[-0x3fe8]:8+1340], a5=[-0x3fe8]:8.
  The `jal` at 0x13028 calls fpstore_d with a0=entry(sym(.data)+8000), a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[[-0x3fe8]:8+1353]:1, a5=[-0x3fe8]:8.
  The `jal` at 0x13030 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x13108 calls post_sig with a0=0x8, a1=?, a2=?, a3=[[-0x3fe8]:8+1340], a5=[-0x3fe8]:8.
  The `jal` at 0x131b8 calls fpstore_d with a0=?, a1=[[-0x3fe8]:8+1354]:1, a2=?, a3=[[-0x3fe8]:8+1353]:1, a5=[-0x3fe8]:8, a7=(a1 + one of 0x600, 0x601).
  The `jal` at 0x131cc calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x12ac8 targets 0x12ae8, is taken when (a6(=0x7fffffffffffffff) & a3) == 0, and falls through when (a6(=0x7fffffffffffffff) & a3) != 0.
  The `beq` branch at 0x12b04 targets 0x12c88, is taken when s2(=a1) >= -0x433 (signed), and falls through when s2(=a1) < -0x433 (signed).
  The `beq` branch at 0x12b14 targets 0x12f64, is taken when (v0(=[[-0x3fe8]:8+1353]:1) & 0x2) == 0, and falls through when (v0(=[[-0x3fe8]:8+1353]:1) & 0x2) != 0.
  The `beq` branch at 0x12b64 targets 0x12d40, is taken when (a0(=[[-0x3fe8]:8+1340]) & 0x100) == 0, and falls through when (a0(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  The `beq` branch at 0x12bd0 targets 0x12fd4, is taken when (a6(?) & ra(=0x20000000000000)) == 0, and falls through when (a6(?) & ra(=0x20000000000000)) != 0.
  The `beq` branch at 0x12bdc targets 0x12bf4, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x12bfc targets 0x12c38, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0.
  The `beq` branch at 0x12c38 targets 0x12c50, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x12c8c targets 0x12da0, is taken when s2(=a1) >= -0x3fe (signed), and falls through when s2(=a1) < -0x3fe (signed).
  The `beq` branch at 0x12cb4 targets 0x13040, is taken when (t9(=[[-0x3fe8]:8+1353]:1) & 0x2) == 0, and falls through when (t9(=[[-0x3fe8]:8+1353]:1) & 0x2) != 0.
  The `bne` branch at 0x12cc8 targets 0x12b20, is taken when s0(?) < t8(=0xfffffffffffff) (unsigned), and falls through when s0(?) >= t8(=0xfffffffffffff) (unsigned).
  The `beq` branch at 0x12d1c targets 0x12b4c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x12d28 targets 0x131f8, is taken when a1(=0x1) == a0(?), and falls through when a1(=0x1) != a0(?).
  The `beq` branch at 0x12d30 targets 0x12b4c, is taken when at(?) == a1(=0x1), and falls through when at(?) != a1(=0x1).
  The `beq` branch at 0x12d50 targets 0x12d64, is taken when (v0(=[[-0x3fe8]:8+1340]) & 0x80) == 0, and falls through when (v0(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  The `bne` branch at 0x12d6c targets 0x12d80, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0.
  The `bne` branch at 0x12d78 targets 0x12d90, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x8) != 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x8) == 0.
  The `beq` branch at 0x12d98 targets 0x12c5c and is always taken.
  The `beq` branch at 0x12da4 targets 0x12dc4, is taken when (a6(=0x7fffffffffffffff) & s1(?)) == 0, and falls through when (a6(=0x7fffffffffffffff) & s1(?)) != 0.
  The `beq` branch at 0x12e10 targets 0x130d0, is taken when s2(=a1) == a3(=-0x3ff), and falls through when s2(=a1) != a3(=-0x3ff).
  The `beq` branch at 0x12e24 targets 0x12e38, is taken when (s0(?) & t9(=0x20000000000000)) == 0, and falls through when (s0(?) & t9(=0x20000000000000)) != 0.
  The `bne` branch at 0x12e38 targets 0x12ee4, is taken when ra(?) != 0, and falls through when ra(?) == 0.
  The `beq` branch at 0x12e68 targets 0x12fe4, is taken when (a0(=[[-0x3fe8]:8+1340]) & 0x200) == 0, and falls through when (a0(=[[-0x3fe8]:8+1340]) & 0x200) != 0.
  The `beq` branch at 0x12e84 targets 0x12ebc, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0.
  The `beq` branch at 0x12ebc targets 0x12ed4, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x12edc targets 0x12c5c and is always taken.
  The `bne` branch at 0x12ee8 targets 0x12f0c, is taken when s6(?) < -0x3fe (signed), and falls through when s6(?) >= -0x3fe (signed).
  The `beq` branch at 0x12f04 targets 0x12f10 and is always taken.
  The `beq` branch at 0x12f14 targets 0x131dc, is taken when (a3(=[[-0x3fe8]:8+1340]) & 0x100) == 0, and falls through when (a3(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  The `bne` branch at 0x12f1c targets 0x13100, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x12f24 targets 0x12fa4, is taken when a0(?) == a1(=0x1), and falls through when a0(?) != a1(=0x1).
  The `bne` branch at 0x12f34 targets 0x12f48, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0.
  The `bne` branch at 0x12f40 targets 0x12f54, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x8) != 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x8) == 0.
  The `beq` branch at 0x12f5c targets 0x12c5c and is always taken.
  The `beq` branch at 0x12f94 targets 0x13214, is taken when (a0(=0x10000000000000) & s0(?)) == 0, and falls through when (a0(=0x10000000000000) & s0(?)) != 0.
  The `beq` branch at 0x12fbc targets 0x12f2c, is taken when (t8(=[[-0x3fe8]:8+1340]) & 0x80) == 0, and falls through when (t8(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  The `beq` branch at 0x12fcc targets 0x12f2c and is always taken.
  The `bne` branch at 0x12fd4 targets 0x12be4, is taken when s4(?) != 0, and falls through when s4(?) == 0.
  The `beq` branch at 0x12fdc targets 0x12bf8 and is always taken.
  The `beq` branch at 0x12ff8 targets 0x1300c, is taken when (ra(=[[-0x3fe8]:8+1340]) & 0x80) == 0, and falls through when (ra(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  The `bne` branch at 0x13014 targets 0x13020, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0.
  The `bne` branch at 0x1301c targets 0x13030, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x13038 targets 0x12c5c and is always taken.
  The `beq` branch at 0x13054 targets 0x13064, is taken when (a6(=0x7fffffffffffffff) & s1(?)) == 0, and falls through when (a6(=0x7fffffffffffffff) & s1(?)) != 0.
  The `bne` branch at 0x130c0 targets 0x130e4, is taken when (s0(?) & a3(=0x10000000000000)) != 0, and falls through when (s0(?) & a3(=0x10000000000000)) == 0.
  The `beq` branch at 0x130c8 targets 0x130ec and is always taken.
  The `beq` branch at 0x130dc targets 0x12e1c, is taken when (s0(?) & a7(=0x10000000000000)) == 0, and falls through when (s0(?) & a7(=0x10000000000000)) != 0.
  The `beq` branch at 0x130e4 targets 0x12e34 and is always taken.
  The `beq` branch at 0x130f8 targets 0x131e0, is taken when (a3(=[[-0x3fe8]:8+1340]) & 0x100) == 0, and falls through when (a3(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  The `beq` branch at 0x1316c targets 0x1323c, is taken when (a6(?) & t2(=0x20000000000000)) == 0, and falls through when (a6(?) & t2(=0x20000000000000)) != 0.
  The `beq` branch at 0x13178 targets 0x13190, is taken when s4(?) == 0, and falls through when s4(?) != 0.
  The `beq` branch at 0x13198 targets 0x131cc, is taken when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) == 0, and falls through when (a3(=[[-0x3fe8]:8+1353]:1) & 0x4) != 0.
  The `beq` branch at 0x131d4 targets 0x12c5c and is always taken.
  The `beq` branch at 0x131dc targets 0x13234, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x131e4 targets 0x12f2c, is taken when a0(?) != a1(=0x1), and falls through when a0(?) == a1(=0x1).
  The `beq` branch at 0x131f0 targets 0x12f24 and is always taken.
  The `bltz` branch at 0x131fc targets 0x12d30, is taken when a3(?) < 0 (signed), and falls through when a3(?) >= 0 (signed).
  The `bne` branch at 0x13204 targets 0x12d30, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x1320c targets 0x12b50 and is always taken.
  The `bne` branch at 0x1321c targets 0x13100, is taken when (a3(=[[-0x3fe8]:8+1340]) & 0x100) != 0, and falls through when (a3(=[[-0x3fe8]:8+1340]) & 0x100) == 0.
  The `beq` branch at 0x1322c targets 0x12fa4 and is always taken.
  The `beq` branch at 0x13234 targets 0x12f24 and is always taken.
  The `bne` branch at 0x1323c targets 0x13180, is taken when s4(?) != 0, and falls through when s4(?) == 0.
  The `beq` branch at 0x13244 targets 0x13194 and is always taken.
  The return at 0x12c80 has v0 = ret(store_fpcsr).

- `maddrnd_d` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1324c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1324c-0x13780 (1332 bytes).
  It occupies 1332 bytes.
  13 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x13298, `ld` at 0x132f8, `ld` at 0x13494.
  The `lbu` at 0x132ac loads 1 byte from [-0x3fe8]:8 +0x548.
  5 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x549, including `lbu` at 0x132b0, `lbu` at 0x13350, `lbu` at 0x134cc.
  5 such `lb` accesses load 1 byte from ?, including `lb` at 0x132d4, `lb` at 0x133c4, `lb` at 0x1344c.
  12 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x132ec, `lw` at 0x132fc, `lw` at 0x13488.
  9 such `sw` accesses store 4 bytes to [-0x3fe8]:8 +0x53c, including `sw` at 0x132f4, `sw` at 0x13490, `sw` at 0x134e8.
  The `ld` at 0x134b4 loads 8 bytes from table(sym(.data)+8000) +0x0.
  3 such `sb` accesses store 1 byte to [-0x3fe8]:8 +0x549, including `sb` at 0x134d8, `sb` at 0x13530, `sb` at 0x1356c.
  The `jal` at 0x1330c calls post_sig with a0=0x8, a1=?, a2=[-0x3fe8]:8, a3=?, a5=([[-0x3fe8]:8+1340] | 0x1004), a6=0x1.
  The `jal` at 0x134c0 calls post_sig with a0=0x8, a1=[[-0x3fe8]:8+1340], a2=[-0x3fe8]:8, a3=?.
  The `jal` at 0x13518 calls post_sig with a0=0x8, a1=?, a2=?, a3=?, a6=0x1.
  The `jal` at 0x13554 calls post_sig with a0=0x8, a1=[[-0x3fe8]:8+1340], a2=[-0x3fe8]:8, a3=?, a4=([[-0x3fe8]:8+1340] | 0x2008).
  The `jal` at 0x13604 calls post_sig with a0=0x8, a1=?, a2=[-0x3fe8]:8, a3=?, a6=one of 0x1, 0x7fffffffffffffff.
  The `jal` at 0x13634 calls post_sig with a0=0x8, a1=[[-0x3fe8]:8+1340], a2=[-0x3fe8]:8, a3=?.
  The `beq` branch at 0x13278 targets 0x13298, is taken when (a6(=0x7fffffffffffffff) & a3) == 0, and falls through when (a6(=0x7fffffffffffffff) & a3) != 0.
  The `beq` branch at 0x132a8 targets 0x13340, is taken when s1(=a1) >= -0x433 (signed), and falls through when s1(=a1) < -0x433 (signed).
  The `beq` branch at 0x132b8 targets 0x135ac, is taken when (v0(=[[-0x3fe8]:8+1353]:1) & 0x2) == 0, and falls through when (v0(=[[-0x3fe8]:8+1353]:1) & 0x2) != 0.
  The `beq` branch at 0x13304 targets 0x13318, is taken when (a4(=[[-0x3fe8]:8+1340]) & 0x80) == 0, and falls through when (a4(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  The `beq` branch at 0x13318 targets 0x134f4, is taken when s1(?) == a6(=0x1), and falls through when s1(?) != a6(=0x1).
  The `beq` branch at 0x13344 targets 0x133ec, is taken when s1(=a1) >= -0x3fe (signed), and falls through when s1(=a1) < -0x3fe (signed).
  The `beq` branch at 0x13368 targets 0x13644, is taken when (t9(=[[-0x3fe8]:8+1353]:1) & 0x2) == 0, and falls through when (t9(=[[-0x3fe8]:8+1353]:1) & 0x2) != 0.
  The `bne` branch at 0x1337c targets 0x132bc, is taken when s0(?) < t9(=0xfffffffffffff) (unsigned), and falls through when s0(?) >= t9(=0xfffffffffffff) (unsigned).
  The `beq` branch at 0x133d0 targets 0x13700, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x133dc targets 0x136f0, is taken when v1(=0x1) == v0(?), and falls through when v1(=0x1) != v0(?).
  The `beq` branch at 0x133e4 targets 0x132ec and is always taken.
  The `beq` branch at 0x133f0 targets 0x13410, is taken when (a6(=0x7fffffffffffffff) & s2(?)) == 0, and falls through when (a6(=0x7fffffffffffffff) & s2(?)) != 0.
  The `beq` branch at 0x1345c targets 0x136d4, is taken when s1(=a1) == a7(=-0x3ff), and falls through when s1(=a1) != a7(=-0x3ff).
  The `beq` branch at 0x13470 targets 0x13484, is taken when (s0(?) & at(=0x20000000000000)) == 0, and falls through when (s0(?) & at(=0x20000000000000)) != 0.
  The `bne` branch at 0x13484 targets 0x13534, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `beq` branch at 0x134b8 targets 0x1361c, is taken when (v0(=[[-0x3fe8]:8+1340]) & 0x200) == 0, and falls through when (v0(=[[-0x3fe8]:8+1340]) & 0x200) != 0.
  The `beq` branch at 0x134d4 targets 0x134ec, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x134ec targets 0x13324 and is always taken.
  The `beq` branch at 0x13510 targets 0x13320, is taken when (v0(=[[-0x3fe8]:8+1340]) & 0x100) == 0, and falls through when (v0(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  The `beq` branch at 0x1352c targets 0x1331c and is always taken.
  The `beq` branch at 0x13538 targets 0x13710, is taken when (a1(=[[-0x3fe8]:8+1340]) & 0x100) == 0, and falls through when (a1(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  The `beq` branch at 0x13540 targets 0x13614, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x13574 targets 0x13708, is taken when v0(?) == a6(=0x1), and falls through when v0(?) != a6(=0x1).
  The `bne` branch at 0x1357c targets 0x135a0, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x13598 targets 0x135a4 and is always taken.
  The `beq` branch at 0x135a4 targets 0x13324 and is always taken.
  The `beq` branch at 0x135dc targets 0x13728, is taken when (s0(?) & a1(=0x10000000000000)) == 0, and falls through when (s0(?) & a1(=0x10000000000000)) != 0.
  The `beq` branch at 0x135fc targets 0x1357c, is taken when (ra(=[[-0x3fe8]:8+1340]) & 0x80) == 0, and falls through when (ra(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  The `beq` branch at 0x1360c targets 0x1357c and is always taken.
  The `beq` branch at 0x13614 targets 0x13574 and is always taken.
  The `beq` branch at 0x1362c targets 0x1363c, is taken when (v1(=[[-0x3fe8]:8+1340]) & 0x80) == 0, and falls through when (v1(=[[-0x3fe8]:8+1340]) & 0x80) != 0.
  The `beq` branch at 0x1363c targets 0x13324 and is always taken.
  The `beq` branch at 0x13658 targets 0x13668, is taken when (a6(=0x7fffffffffffffff) & s2(?)) == 0, and falls through when (a6(=0x7fffffffffffffff) & s2(?)) != 0.
  The `bne` branch at 0x136c4 targets 0x136e8, is taken when (s0(?) & a4(=0x10000000000000)) != 0, and falls through when (s0(?) & a4(=0x10000000000000)) == 0.
  The `beq` branch at 0x136cc targets 0x1374c and is always taken.
  The `beq` branch at 0x136e0 targets 0x13468, is taken when (s0(?) & a6(=0x10000000000000)) == 0, and falls through when (s0(?) & a6(=0x10000000000000)) != 0.
  The `beq` branch at 0x136e8 targets 0x13480 and is always taken.
  The `bltz` branch at 0x136f0 targets 0x133e4, is taken when a7(?) < 0 (signed), and falls through when a7(?) >= 0 (signed).
  The `bne` branch at 0x136f8 targets 0x133e4, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x13700 targets 0x132ec and is always taken.
  The `beq` branch at 0x13708 targets 0x135e4 and is always taken.
  The `beq` branch at 0x13710 targets 0x13744, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `bne` branch at 0x13718 targets 0x13578, is taken when v0(?) != t0(=0x1), and falls through when v0(?) == t0(=0x1).
  The `beq` branch at 0x13720 targets 0x13570 and is always taken.
  The `beq` branch at 0x13730 targets 0x13764, is taken when (a1(=[[-0x3fe8]:8+1340]) & 0x100) == 0, and falls through when (a1(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  The `beq` branch at 0x1373c targets 0x1354c and is always taken.
  The `beq` branch at 0x13744 targets 0x13574 and is always taken.
  The `beq` branch at 0x13754 targets 0x13778, is taken when (a1(=[[-0x3fe8]:8+1340]) & 0x100) == 0, and falls through when (a1(=[[-0x3fe8]:8+1340]) & 0x100) != 0.
  The `beq` branch at 0x1375c targets 0x1354c and is always taken.
  The `beq` branch at 0x13770 targets 0x135e4 and is always taken.
  The `beq` branch at 0x13778 targets 0x13714 and is always taken.
  The return at 0x13338 has v0 = one of (one of 0x0, 0x10000000000000 | (a0 << 0x3f)), entry(sym(.data)+8000), ?.

- `VEC_unexp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13780 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13780-0x137a0 (32 bytes).
  It occupies 32 bytes.
  The `jal` at 0x13798 calls cmn_err with a0=0x0, a1=sym(.data)+8064, a2=a2 at entry (arg2), a3=a3 at entry (arg3).

- `slave_loop` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13800 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13800-0x13858 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0x13800 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `sb` at 0x13824 stores 1 byte to ([a0+12] + sym(slave_loop_ready)) +0x0.
  The `ld` at 0x13838 loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x13844 loads 8 bytes from a0 (arg0 at entry) +0x40.
  The `sd` at 0x13848 stores 8 bytes to a0 (arg0 at entry) +0x18.
  The `ld` at 0x1384c loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `jalr` at 0x13850 calls (unknown callee) with a0=[a0+72]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x13830 targets 0x13830, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x1383c targets 0x13828, is taken when t0(=[a0+24]:8) == 0, and falls through when t0(=[a0+24]:8) != 0.

- `start_slave_loop` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13880 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13880-0x138c8 (72 bytes).
  It occupies 72 bytes.
  3 such `sd` accesses store 8 bytes to ?, including `sd` at 0x138a8, `sd` at 0x138ac, `sd` at 0x138b0.
  The `bne` branch at 0x138b8 targets 0x138a8, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The return at 0x138c0 has v0 = ?.

- `backtouser` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x138d0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x138d0-0x13950 (128 bytes).
  It occupies 128 bytes.
  The `ld` at 0x138d0 loads 8 bytes from abs 0xffffffffffffc020.
  The `sb` at 0x138dc stores 1 byte to abs 0xffffffffffffc04f.
  22 such `ld` accesses load 8 bytes from ?, including `ld` at 0x138e0, `ld` at 0x138ec, `ld` at 0x138f0.
  The `jal` at 0x138d4 calls ktimer_switch with a0=[-0x3fe0]:8, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x138e4 calls tfi_restore with a0=?, a1=?, a2=?, a3=?.

- `earlynofault` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13950 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13950-0x13984 (52 bytes).
  It occupies 52 bytes.
  The `ld` at 0x1396c loads 8 bytes from a0 (arg0 at entry) +0x120.
  The `jal` at 0x13970 calls dobuserre with a0=a0 at entry (arg0), a1=[a0+288]:8, a2=0x1, a3=a3 at entry (arg3).
  The `beq` branch at 0x13958 targets 0x1396c, is taken when a1 == at(=0x1c), and falls through when a1 != at(=0x1c).
  The `beq` branch at 0x1397c targets 0x13964 and is always taken.
  The return at 0x13964 has v0 = one of 0x0, 0x1.

- `idle_err` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13984 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13984-0x13a24 (160 bytes).
  It occupies 160 bytes.
  The `jal` at 0x139c4 calls dobuserre with a0=0x0, a1=a0 at entry (arg0), a2=0x0, a3=a3 at entry (arg3), a4=0x1c.
  The `jal` at 0x139cc calls getbadvaddr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x139ec calls cmn_err with a0=0x0, a1=sym(.rodata)+5064, a2=a2 at entry (arg2), a3=a0 at entry (arg0), a4=a1 at entry (arg1), a5=a3 at entry (arg3), a6=ret(getbadvaddr).
  The `jal` at 0x13a14 calls dobuserr with a0=0x0, a1=a0 at entry (arg0), a2=0x0, a3=a3 at entry (arg3), a4=0x1c.
  The `beq` branch at 0x139b0 targets 0x139bc, is taken when a7(?) == at(=0x18), and falls through when a7(?) != at(=0x18).
  The `bne` branch at 0x139b8 targets 0x13a08, is taken when a7(?) != a4(=0x1c), and falls through when a7(?) == a4(=0x1c).
  The `beq` branch at 0x13a08 targets 0x139cc, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x13a1c targets 0x139cc and is always taken.
  The return at 0x13a00 has v0 = ret(cmn_err).

- `dobuserre` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13a24 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13a24-0x13a40 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x13a2c calls dobuserr_common with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x1.
  The return at 0x13a38 has v0 = ret(dobuserr_common).

- `dobuserr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13a40 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13a40-0x13a5c (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x13a48 calls dobuserr_common with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x0.
  The return at 0x13a54 has v0 = ret(dobuserr_common).

- `hem_add_dimm` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13a5c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13a5c-0x13ae0 (132 bytes).
  It occupies 132 bytes.
  The `lbu` at 0x13aac loads 1 byte from ret(maddr_to_dimm) +0x0.
  The `jal` at 0x13a78 calls maddr_to_dimm with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x13a94 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=a0 at entry (arg0), a3=a1 at entry (arg1).
  The `jal` at 0x13ac8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=ret(maddr_to_dimm), a3=?.
  The `beq` branch at 0x13aa4 targets 0x13ac0, is taken when s0(=ret(maddr_to_dimm)) == 0, and falls through when s0(=ret(maddr_to_dimm)) != 0.
  The `beq` branch at 0x13ab0 targets 0x13ac0, is taken when a2(=[ret(maddr_to_dimm)]:1) == 0, and falls through when a2(=[ret(maddr_to_dimm)]:1) != 0.
  The `beq` branch at 0x13ab8 targets 0x13ac8 and is always taken.
  The return at 0x13ad8 has v0 = ret(cmn_err).

- `hem_add_sync` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13ae0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13ae0-0x13bb4 (212 bytes).
  It occupies 212 bytes.
  The `jal` at 0x13b2c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=a0 at entry (arg0), a7=a0 at entry (arg0).
  The `jal` at 0x13b40 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=a1 at entry (arg1).
  The `jal` at 0x13b58 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=a2 at entry (arg2).
  The `jal` at 0x13b88 calls hem_add_dimm [0x13a5c] with a0=sym(.rodata)+5064, a1=a5 at entry (arg5), a2=?, a3=?.
  The `jal` at 0x13ba4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=a3 at entry (arg3), a3=a4 at entry (arg4).
  The `bne` branch at 0x13b08 targets 0x13b1c, is taken when a0 != 0, and falls through when a0 == 0.
  The `beq` branch at 0x13b14 targets 0x13b24 and is always taken.
  The `beq` branch at 0x13b64 targets 0x13b84, is taken when s0(=a3) == at(=0xfe), and falls through when s0(=a3) != at(=0xfe).
  The `bne` branch at 0x13b6c targets 0x13b98, is taken when s0(=a3) != a0(=0xff), and falls through when s0(=a3) == a0(=0xff).
  The `beq` branch at 0x13b90 targets 0x13b74 and is always taken.
  The `beq` branch at 0x13bac targets 0x13b74 and is always taken.
  The return at 0x13b7c has v0 = one of ret(cmn_err), ret(hem_add_dimm).

- `hem_add_ioe` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13bb4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13bb4-0x13df4 (576 bytes).
  It occupies 576 bytes.
  14 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x0, including `lw` at 0x13bf8, `lw` at 0x13cac, `lw` at 0x13cc4.
  The `ld` at 0x13c88 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x13c9c loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `lh` at 0x13cb4 loads 2 bytes from a0 (arg0 at entry) +0x4.
  The `lh` at 0x13ccc loads 2 bytes from a0 (arg0 at entry) +0x6.
  The `lh` at 0x13ce4 loads 2 bytes from a0 (arg0 at entry) +0x8.
  The `lh` at 0x13cfc loads 2 bytes from a0 (arg0 at entry) +0xa.
  The `lh` at 0x13d18 loads 2 bytes from a0 (arg0 at entry) +0xc.
  The `lh` at 0x13d34 loads 2 bytes from a0 (arg0 at entry) +0xe.
  The `ld` at 0x13d50 loads 8 bytes from a0 (arg0 at entry) +0x10.
  The `ld` at 0x13d6c loads 8 bytes from a0 (arg0 at entry) +0x18.
  The `ld` at 0x13d88 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x13da4 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x13dc0 loads 8 bytes from a0 (arg0 at entry) +0x30.
  The `ld` at 0x13de0 loads 8 bytes from a0 (arg0 at entry) +0x40.
  The `jal` at 0x13bf0 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=a3 at entry (arg3).
  The `jal` at 0x13c8c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+72]:8.
  The `jal` at 0x13ca0 calls hem_add_dimm [0x13a5c] with a0=sym(.rodata)+5064, a1=[a0+56]:8, a2=?, a3=?.
  The `jal` at 0x13cb8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+4]:2.
  The `jal` at 0x13cd0 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+6]:2.
  The `jal` at 0x13ce8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+8]:2.
  The `jal` at 0x13d00 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+10]:2.
  The `jal` at 0x13d1c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+12]:2, a4=([a0] << 0x5).
  The `jal` at 0x13d38 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+14]:2, a4=([a0] << 0x5), a5=([a0] << 0x6).
  The `jal` at 0x13d54 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+16]:8, a5=([a0] << 0x6), a6=([a0] << 0x7).
  The `jal` at 0x13d70 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+24]:8, a6=([a0] << 0x7), a7=([a0] << 0x8).
  The `jal` at 0x13d8c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+32]:8, a7=([a0] << 0x8).
  The `jal` at 0x13da8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+40]:8.
  The `jal` at 0x13dc4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+48]:8.
  The `jal` at 0x13de4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[a0+64]:8.
  The `bne` branch at 0x13bc8 targets 0x13be4, is taken when at(=[sym(kdebug)]:2) != 0, and falls through when at(=[sym(kdebug)]:2) == 0.
  The `bne` branch at 0x13c00 targets 0x13cb0, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bltz` branch at 0x13c0c targets 0x13cc8, is taken when v1(=([a0] << 0x1)) < 0 (signed), and falls through when v1(=([a0] << 0x1)) >= 0 (signed).
  The `bltz` branch at 0x13c18 targets 0x13ce0, is taken when a1(=([a0] << 0x2)) < 0 (signed), and falls through when a1(=([a0] << 0x2)) >= 0 (signed).
  The `bltz` branch at 0x13c24 targets 0x13cf8, is taken when a2(=([a0] << 0x3)) < 0 (signed), and falls through when a2(=([a0] << 0x3)) >= 0 (signed).
  The `bltz` branch at 0x13c30 targets 0x13d10, is taken when a3(=([a0] << 0x4)) < 0 (signed), and falls through when a3(=([a0] << 0x4)) >= 0 (signed).
  The `bltz` branch at 0x13c38 targets 0x13d2c, is taken when a4(=([a0] << 0x5)) < 0 (signed), and falls through when a4(=([a0] << 0x5)) >= 0 (signed).
  The `bltz` branch at 0x13c40 targets 0x13d48, is taken when a5(=([a0] << 0x6)) < 0 (signed), and falls through when a5(=([a0] << 0x6)) >= 0 (signed).
  The `bltz` branch at 0x13c48 targets 0x13d64, is taken when a6(=([a0] << 0x7)) < 0 (signed), and falls through when a6(=([a0] << 0x7)) >= 0 (signed).
  The `bltz` branch at 0x13c50 targets 0x13d80, is taken when a7(=([a0] << 0x8)) < 0 (signed), and falls through when a7(=([a0] << 0x8)) >= 0 (signed).
  The `bltz` branch at 0x13c58 targets 0x13d9c, is taken when t0(=([a0] << 0x9)) < 0 (signed), and falls through when t0(=([a0] << 0x9)) >= 0 (signed).
  The `bltz` branch at 0x13c60 targets 0x13db8, is taken when t1(=([a0] << 0xa)) < 0 (signed), and falls through when t1(=([a0] << 0xa)) >= 0 (signed).
  The `bltz` branch at 0x13c68 targets 0x13c9c, is taken when t2(=([a0] << 0xb)) < 0 (signed), and falls through when t2(=([a0] << 0xb)) >= 0 (signed).
  The `bltz` branch at 0x13c70 targets 0x13dd4, is taken when t3(=([a0] << 0xc)) < 0 (signed), and falls through when t3(=([a0] << 0xc)) >= 0 (signed).
  The `bgez` branch at 0x13c78 targets 0x13bd0, is taken when t8(=([a0] << 0xd)) >= 0 (signed), and falls through when t8(=([a0] << 0xd)) < 0 (signed).
  The `beq` branch at 0x13c94 targets 0x13bd4 and is always taken.
  The `beq` branch at 0x13ca8 targets 0x13c6c and is always taken.
  The `beq` branch at 0x13cc0 targets 0x13c08 and is always taken.
  The `beq` branch at 0x13cd8 targets 0x13c14 and is always taken.
  The `beq` branch at 0x13cf0 targets 0x13c20 and is always taken.
  The `beq` branch at 0x13d08 targets 0x13c2c and is always taken.
  The `beq` branch at 0x13d24 targets 0x13c34 and is always taken.
  The `beq` branch at 0x13d40 targets 0x13c3c and is always taken.
  The `beq` branch at 0x13d5c targets 0x13c44 and is always taken.
  The `beq` branch at 0x13d78 targets 0x13c4c and is always taken.
  The `beq` branch at 0x13d94 targets 0x13c54 and is always taken.
  The `beq` branch at 0x13db0 targets 0x13c5c and is always taken.
  The `beq` branch at 0x13dcc targets 0x13c64 and is always taken.
  The `beq` branch at 0x13dec targets 0x13c74 and is always taken.
  The return at 0x13bdc has v0 = one of ?, ret(cmn_err).

- `dobuserr_common` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x13df4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x13df4-0x162e8 (9460 bytes).
  It occupies 9460 bytes.
  3 such `lh` accesses load 2 bytes from abs 0xffffffffffffc3a0, including `lh` at 0x13e44, `lh` at 0x1448c, `lh` at 0x144c8.
  4 such `ll` accesses load 4 bytes from sym(heart_error_cpumap) +0x0, including `ll` at 0x13e80, `ll` at 0x14328, `ll` at 0x144f4.
  4 such `sc` accesses store 4 bytes to sym(heart_error_cpumap) +0x0, including `sc` at 0x13e88, `sc` at 0x14330, `sc` at 0x144fc.
  The `ld` at 0x13ed4 loads 8 bytes from abs 0xffffffffaff00000.
  The `sd` at 0x13ee4 stores 8 bytes to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0x0.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffaff10040, including `ld` at 0x13ee8, `ld` at 0x144bc, `ld` at 0x14f1c.
  The `sd` at 0x13eec stores 8 bytes to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0x10.
  The `ld` at 0x13ef0 loads 8 bytes from abs 0xffffffffaff000a8.
  The `sd` at 0x13ef4 stores 8 bytes to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0x20.
  The `ld` at 0x13ef8 loads 8 bytes from abs 0xffffffffaff00090.
  The `sd` at 0x13f04 stores 8 bytes to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0x30.
  The `ld` at 0x13f08 loads 8 bytes from abs 0xffffffffaff00088.
  The `sd` at 0x13f1c stores 8 bytes to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0x40.
  The `ld` at 0x13f20 loads 8 bytes from abs 0x9000000018000060.
  The `sd` at 0x13f24 stores 8 bytes to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0x50.
  The `lw` at 0x13f28 loads 4 bytes from abs 0x9000000018000044.
  The `sd` at 0x13f3c stores 8 bytes to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0x60.
  The `lw` at 0x13f40 loads 4 bytes from abs 0x9000000018000014.
  The `sd` at 0x13f54 stores 8 bytes to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0x70.
  The `lw` at 0x13f58 loads 4 bytes from abs 0x900000001800001c.
  The `sd` at 0x13f70 stores 8 bytes to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0x80.
  The `ld` at 0x13f74 loads 8 bytes from abs 0x9000000018000090.
  The `sd` at 0x13f7c stores 8 bytes to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0x90.
  The `ld` at 0x13f80 loads 8 bytes from abs 0x9000000018000070.
  The `sd` at 0x13f88 stores 8 bytes to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0xa0.
  The `ld` at 0x13f8c loads 8 bytes from abs 0x9000000018000078.
  The `sd` at 0x13f94 stores 8 bytes to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0xb0.
  The `ld` at 0x13f98 loads 8 bytes from abs 0xffffffffaff00098.
  The `sd` at 0x13fa0 stores 8 bytes to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0xc0.
  The `ld` at 0x13fa8 loads 8 bytes from abs 0xffffffffaff000a0.
  The `sd` at 0x13fb4 stores 8 bytes to (([-0x3c60]:2 << 0x3) + sym(_heart_mode)) +0xd0.
  The `ld` at 0x13fe0 loads 8 bytes from a0 (arg0 at entry) +0x118.
  The `ld` at 0x14150 loads 8 bytes from abs 0xffffffffaff10030.
  The `sw` at 0x14454 stores 4 bytes to abs 0x9000000018000044.
  The `sd` at 0x14464 stores 8 bytes to abs 0x9000000018000060.
  2 such `sd` accesses store 8 bytes to abs 0xffffffffaff10040, including `sd` at 0x1447c, `sd` at 0x14f0c.
  The `sd` at 0x144dc stores 8 bytes to abs 0xffffffffaff10020.
  The `ld` at 0x1491c loads 8 bytes from a0 (arg0 at entry) +0x120.
  The `lw` at 0x14bb0 loads 4 bytes from (([-0x3c60]:2 << 0x2) + sym(heart_SysCorErr_ptime)) +0x0.
  The `lw` at 0x14bbc loads 4 bytes from (([-0x3c60]:2 << 0x2) + sym(heart_SysCorErr_count)) +0x0.
  The `sw` at 0x14bd0 stores 4 bytes to (([-0x3c60]:2 << 0x2) + sym(heart_SysCorErr_count)) +0x0.
  2 such `lw` accesses load 4 bytes from table(sym(real_data_eccsyns)) +0x0, including `lw` at 0x14e18, `lw` at 0x159a0.
  2 such `lbu` accesses load 1 byte from table(sym(real_data_eccsyns)) +0x4, including `lbu` at 0x14ec8, `lbu` at 0x14ecc.
  6 such `ld` accesses load 8 bytes from abs 0xffffffffaff60000, including `ld` at 0x14f10, `ld` at 0x14f24, `ld` at 0x14f4c.
  The `ld` at 0x14f18 loads 8 bytes from ?.
  The `ld` at 0x14f28 loads 8 bytes from abs 0xffffffffaff00018.
  2 such `sd` accesses store 8 bytes to abs 0xffffffffaff00018, including `sd` at 0x14f40, `sd` at 0x14f9c.
  The `lld` at 0x14f50 loads 8 bytes from ?.
  The `scd` at 0x14f5c stores 8 bytes to ?.
  The `ld` at 0x159bc loads 8 bytes from (sym(etstrings) + (entry(sym(real_data_eccsyns)) << 0x3)) +0x0.
  The `lw` at 0x15af0 loads 4 bytes from ?.
  The `sw` at 0x15b08 stores 4 bytes to ?.
  The `jal` at 0x13ebc calls compare_and_swap_int with a0=sym(heart_error_cpumap), a1=[sym(heart_error_cpumap)], a2=?, a3=?.
  The `jal` at 0x14160 calls heart_intr with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x141c0 calls heart_paddr_to_port with a0=?, a1=sp-832, a2=sp-824, a3=?.
  The `jal` at 0x1422c calls heart_error_refine with a0=sym(.rodata)+5064, a1=?, a2=?, a3=sp-808, a5=0x20000000000.
  The `jal` at 0x14248 calls hem_add_ioe [0x13bb4] with a0=sp-808, a1=?, a2=?, a3=?.
  The `jal` at 0x143e0 calls heart_error_refine with a0=sym(.rodata)+5064, a1=0x4, a2=?, a3=sp-808, a7=0x1000000.
  The `jal` at 0x143fc calls hem_add_ioe [0x13bb4] with a0=sp-808, a1=?, a2=?, a3=?.
  The `jal` at 0x14434 calls cmn_err_tag with a0=0x44, a1=0x0, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x144ac calls heart_imr_bits_rmw with a0=[-0x3c60]:2, a1=0x0, a2=?, a3=0x8000000000000000, a4=0xffffffffaff10000.
  The `jal` at 0x146a8 calls heart_error_refine with a0=sym(.rodata)+5064, a1=one of 0x9, 0xa, a2=?, a3=sp-808, a5=0x1000000.
  The `jal` at 0x146c4 calls hem_add_ioe [0x13bb4] with a0=sp-808, a1=?, a2=?, a3=?.
  The `jal` at 0x14780 calls tlb_to_phys [0x162e8] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1480c calls heart_error_refine with a0=sym(.rodata)+5064, a1=0x5, a2=?, a3=sp-808.
  The `jal` at 0x1486c calls hem_add_ioe [0x13bb4] with a0=sp-808, a1=?, a2=?, a3=?.
  The `jal` at 0x14900 calls us_delay with a0=0x5, a1=?, a2=?, a3=?.
  The `jal` at 0x14954 calls is_in_main_memory with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x14974 calls ldst_addr with a0=a0 at entry (arg0), a1=(([-0x3c60]:2 << 0x3) + sym(_heart_mode)), a2=a2 at entry (arg2), a3=?, a4=[a0+280]:8, a6=0x18, a7=0x1c.
  The `jal` at 0x149c4 calls heart_error_refine with a0=sym(.rodata)+5064, a1=one of 0x5, 0x6, a2=?, a3=sp-808.
  The `jal` at 0x14e80 calls log_dimmerr with a0=?, a1=?, a2=?, a3=?, a7=one of 0x0, 0x1.
  The `jal` at 0x14f78 calls __dcache_wb_inval with a0=?, a1=0x8, a2=?, a3=?, a6=table(sym(real_data_eccsyns)).
  The `jal` at 0x14fb8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x14fe0 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15008 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x1502c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15050 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15074 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15098 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x150b8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x150d4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0xffffffffaff10040]:8, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x15110 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15130 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=a0 at entry (arg0).
  The `jal` at 0x15150 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=a1 at entry (arg1).
  The `jal` at 0x1516c calls hem_add_sync [0x13ae0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x15180 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x1519c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x151b8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0xffffffffaff10040]:8, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x151d0 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x151e8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x151fc calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15214 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0x9000000018000060]:8, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x1522c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x15244 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x1525c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x15274 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x1528c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x152a4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x152bc calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x152d0 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x152ec calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x1530c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x1532c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x1534c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x1536c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x1538c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x153ac calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x153cc calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x153e8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x15404 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0xffffffffaff10040]:8, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x1541c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0x9000000018000060]:8, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x15464 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15480 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0xffffffffaff10040]:8, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x154a4 calls hem_add_sync [0x13ae0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x154bc calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x154d4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x154f4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15514 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15544 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x1557c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a5=[-0x3c60]:2+24.
  The `jal` at 0x15590 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x155a4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x155bc calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x155d0 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x155e8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a5=0x9.
  The `jal` at 0x1560c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15630 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15654 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15678 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x1569c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x156b8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=?, a3=?.
  The `jal` at 0x15734 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=?, a3=?, a4=sym(.rodata)+5064, a5=sym(.rodata)+5064, a6=sym(.rodata)+5064, a7=sym(.rodata)+5064.
  The `jal` at 0x15784 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x157a0 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0xffffffffaff10040]:8, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x157c8 calls hem_add_sync [0x13ae0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x157e4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x157fc calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15810 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15824 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15838 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x1586c calls cmn_err with a0=0x4, a1=sym(.rodata)+5064, a2=?, a3=?.
  The `jal` at 0x1587c calls cmn_err with a0=0x4, a1=sym(.rodata)+5064, a2=?, a3=?.
  The `jal` at 0x158b0 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=0x1.
  The `jal` at 0x158c4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x158e4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x158fc calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15910 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15928 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15930 calls hem_add_ioe [0x13bb4] with a0=sp-808, a1=?, a2=?, a3=?.
  The `jal` at 0x159b8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=sym(.rodata)+5064, a4=[(sym(etstrings) + (entry(sym(real_data_eccsyns)) << 0x3))]:8, a5=sym(.rodata)+5064, a6=(entry(sym(real_data_eccsyns)) << 0x3).
  The `jal` at 0x159d0 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x159e4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15a08 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=sym(.rodata)+5064.
  The `jal` at 0x15a24 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15a3c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15a5c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=0x3ffffffff.
  The `jal` at 0x15a88 calls hem_add_sync [0x13ae0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x15ab8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[sym(time)], a4=sym(heart_SysCorErr_count).
  The `jal` at 0x15ad4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0xffffffffaff10040]:8, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x15aec calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15b68 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a7=0x10000.
  The `jal` at 0x15b84 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0xffffffffaff10040]:8, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x15b9c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x15bb0 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15bc4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15c04 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=sym(.rodata)+5064.
  The `jal` at 0x15c34 calls hem_add_sync [0x13ae0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x15c84 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a5=[-0x3c60]:2+4.
  The `jal` at 0x15ca8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15ccc calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15cf0 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15d14 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15d38 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15d78 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=?, a3=?.
  The `jal` at 0x15e08 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=?, a3=?, a4=sym(.rodata)+5064, a5=sym(.rodata)+5064, a6=sym(.rodata)+5064, a7=sym(.rodata)+5064.
  The `jal` at 0x15e88 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15eac calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15ed0 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15ef4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x15f10 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0xffffffffaff10040]:8, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x15f28 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0x9000000018000060]:8, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x15f40 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x15f58 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x15f74 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15f88 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15fa4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x15fd0 calls hem_add_sync [0x13ae0] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x15fec calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x16000 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[sym(.sdata)+260].
  The `jal` at 0x16024 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x16038 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[sym(.sdata)+228].
  The `jal` at 0x1605c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=[sym(.sdata)+236]+1, a6=[sym(.sdata)+240].
  The `jal` at 0x16070 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[sym(.sdata)+236].
  The `jal` at 0x16094 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x160a8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[sym(.sdata)+244].
  The `jal` at 0x160cc calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x160e0 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[sym(.sdata)+252].
  The `jal` at 0x16160 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x1617c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0xffffffffaff10040]:8, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x16194 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x161b4 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=0x3ffffffff.
  The `jal` at 0x161f8 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a5=[-0x3c60]:2+4.
  The `jal` at 0x16214 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=[0xffffffffaff10040]:8, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x1622c calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?, a4=sym(h_mode_trig_tbl).
  The `jal` at 0x16240 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x16254 calls cmn_err with a0=0x6, a1=sym(.rodata)+5064, a2=sym(.rodata)+5064, a3=?.
  The `jal` at 0x16284 calls hem_add_sync [0x13ae0] with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x13e6c targets 0x14520, is taken when (s1(?) & at(=[sym(heart_error_cpumap)])) == 0, and falls through when (s1(?) & at(=[sym(heart_error_cpumap)])) != 0.
  The `beql` branch at 0x13e8c targets 0x13e80, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `nop` at 0x13e90 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x13e98 targets 0x13ec8 and is always taken.
  The `bne` branch at 0x13ea4 targets 0x14150, is taken when ra(=[sym(panicstr)]:8) != 0, and falls through when ra(=[sym(panicstr)]:8) == 0.
  The `bne` branch at 0x13eb4 targets 0x13ea0, is taken when (a1(=[sym(heart_error_cpumap)]) & 0xf) != 0, and falls through when (a1(=[sym(heart_error_cpumap)]) & 0xf) == 0.
  The `beq` branch at 0x13ec4 targets 0x13ea0, is taken when v0(=ret(compare_and_swap_int)) == 0, and falls through when v0(=ret(compare_and_swap_int)) != 0.
  The `beq` branch at 0x13fb0 targets 0x14768, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x13fbc targets 0x14770, is taken when s0(=0x1) == a3(=a2), and falls through when s0(=0x1) != a3(=a2).
  The `beq` branch at 0x13fc8 targets 0x14778, is taken when a4(=0x2) == a5(=a2), and falls through when a4(=0x2) != a5(=a2).
  The `beq` branch at 0x13fd0 targets 0x14048, is taken when s2(=a3) == 0, and falls through when s2(=a3) != 0.
  The `beq` branch at 0x13fd8 targets 0x14048, is taken when s5(=a0) == 0, and falls through when s5(=a0) != 0.
  The `beq` branch at 0x13fec targets 0x14910, is taken when v0(?) == a6(=0x18), and falls through when v0(?) != a6(=0x18).
  The `beq` branch at 0x13ff8 targets 0x1496c, is taken when v0(?) == a7(=0x1c), and falls through when v0(?) != a7(=0x1c).
  The `bne` branch at 0x1401c targets 0x14170, is taken when a0(?) < t1(=0x8000000000000000) (unsigned), and falls through when a0(?) >= t1(=0x8000000000000000) (unsigned).
  The `beq` branch at 0x1402c targets 0x14174, is taken when a0(?) >= t2(=0xc000000000000000) (unsigned), and falls through when a0(?) < t2(=0xc000000000000000) (unsigned).
  The `beq` branch at 0x14040 targets 0x141b8 and is always taken.
  The `beq` branch at 0x14054 targets 0x14070, is taken when a0(=one of 0x0, 0x1) == 0, and falls through when a0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x14060 targets 0x14070, is taken when (s4(=[0x9000000018000060]:8) & 0x8) == 0, and falls through when (s4(=[0x9000000018000060]:8) & 0x8) != 0.
  The `beq` branch at 0x14074 targets 0x14758, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0x140c8 targets 0x14fac, is taken when (s1(?) & s8(?)) != 0, and falls through when (s1(?) & s8(?)) == 0.
  The `bgez` branch at 0x140e0 targets 0x14100, is taken when ra(=([0xffffffffaff10040]:8 << 0x2f)) >= 0 (signed), and falls through when ra(=([0xffffffffaff10040]:8 << 0x2f)) < 0 (signed).
  The `bne` branch at 0x140f4 targets 0x152e0, is taken when (s4(=[0x9000000018000060]:8) & at(=0x33062000)) != 0, and falls through when (s4(=[0x9000000018000060]:8) & at(=0x33062000)) == 0.
  The `beq` branch at 0x14108 targets 0x145e0, is taken when (v0(=0x300ff000000) & a4(?)) == 0, and falls through when (v0(=0x300ff000000) & a4(?)) != 0.
  The `bne` branch at 0x1411c targets 0x14268, is taken when s6(=[-0x3c60]:2) != a6(?), and falls through when s6(=[-0x3c60]:2) == a6(?).
  The `beq` branch at 0x14130 targets 0x14560, is taken when a7(=a1) == 0, and falls through when a7(=a1) != 0.
  The `bne` branch at 0x14140 targets 0x14568, is taken when s5(=a0) != 0, and falls through when s5(=a0) == 0.
  The `beq` branch at 0x14148 targets 0x1457c and is always taken.
  The `beq` branch at 0x14158 targets 0x14900, is taken when (s3(?) & t1(=[0xffffffffaff10030]:8)) == 0, and falls through when (s3(?) & t1(=[0xffffffffaff10030]:8)) != 0.
  The `beq` branch at 0x14168 targets 0x13eac and is always taken.
  The `bne` branch at 0x14178 targets 0x14194, is taken when a0(?) < t2(=0xffffffff80000000) (unsigned), and falls through when a0(?) >= t2(=0xffffffff80000000) (unsigned).
  The `beq` branch at 0x14184 targets 0x141a0, is taken when a0(?) >= v0(=0xffffffffa0000000) (unsigned), and falls through when a0(?) < v0(=0xffffffffa0000000) (unsigned).
  The `beq` branch at 0x1418c targets 0x141ac and is always taken.
  The `bne` branch at 0x14198 targets 0x14780, is taken when a0(?) < v0(=0xffffffffa0000000) (unsigned), and falls through when a0(?) >= v0(=0xffffffffa0000000) (unsigned).
  The `beq` branch at 0x141a4 targets 0x14780, is taken when a0(?) >= t9(=0xffffffffc0000000) (unsigned), and falls through when a0(?) < t9(=0xffffffffc0000000) (unsigned).
  The `beq` branch at 0x141cc targets 0x14048 and is always taken.
  The `beq` branch at 0x14234 targets 0x14258, is taken when v0(=ret(heart_error_refine)) == 0, and falls through when v0(=ret(heart_error_refine)) != 0.
  The `beq` branch at 0x14240 targets 0x154cc, is taken when v0(=ret(heart_error_refine)) == a2(=0x9), and falls through when v0(=ret(heart_error_refine)) != a2(=0x9).
  The `beq` branch at 0x1426c targets 0x145dc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x14274 targets 0x142cc, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bltz` branch at 0x14280 targets 0x142bc, is taken when a0(?) < 0 (signed), and falls through when a0(?) >= 0 (signed).
  The `beq` branch at 0x1428c targets 0x142b8, is taken when a0(?) >= 0x10 (signed), and falls through when a0(?) < 0x10 (signed).
  The `beq` branch at 0x14298 targets 0x1436c, is taken when t0(=a1) == 0, and falls through when t0(=a1) != 0.
  The `bne` branch at 0x142a8 targets 0x14374, is taken when s5(=a0) != 0, and falls through when s5(=a0) == 0.
  The `beq` branch at 0x142b0 targets 0x14388 and is always taken.
  The `beq` branch at 0x142bc targets 0x14954, is taken when a0(?) == t2(=0xfe), and falls through when a0(?) != t2(=0xfe).
  The `bne` branch at 0x142c4 targets 0x15454, is taken when t3(?) != 0, and falls through when t3(?) == 0.
  The `beq` branch at 0x142d0 targets 0x14414, is taken when t8(=0x1) == t9(=a2), and falls through when t8(=0x1) != t9(=a2).
  The `beq` branch at 0x142d8 targets 0x14414, is taken when ra(=[sym(kdebug)]:2) == 0, and falls through when ra(=[sym(kdebug)]:2) != 0.
  The `bne` branch at 0x142e0 targets 0x150f8, is taken when s2(?) != 0, and falls through when s2(?) == 0.
  The `beq` branch at 0x142ec targets 0x14440, is taken when at(=0x2) == v0(=a2), and falls through when at(=0x2) != v0(=a2).
  The `beq` branch at 0x142fc targets 0x14440, is taken when v1(=0x1) == a0(=a2), and falls through when v1(=0x1) != a0(=a2).
  The `beq` branch at 0x14304 targets 0x14440, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x14310 targets 0x14430, is taken when a1(=a3) == 0, and falls through when a1(=a3) != 0.
  The `beql` branch at 0x14334 targets 0x14328, is taken when (a2(=[sym(heart_error_cpumap)]) & a4(?)) == 0, and falls through when (a2(=[sym(heart_error_cpumap)]) & a4(?)) != 0; its branch-likely delay slot `nop` at 0x14338 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1436c targets 0x14388, is taken when s5(=a0) == 0, and falls through when s5(=a0) != 0.
  The `beq` branch at 0x143e8 targets 0x142cc, is taken when v0(=ret(heart_error_refine)) == 0, and falls through when v0(=ret(heart_error_refine)) != 0.
  The `beq` branch at 0x143f4 targets 0x154b4, is taken when v0(=ret(heart_error_refine)) == t1(=0x9), and falls through when v0(=ret(heart_error_refine)) != t1(=0x9).
  The `bne` branch at 0x1440c targets 0x142d4, is taken when t2(=0x1) != t3(=a2), and falls through when t2(=0x1) == t3(=a2).
  The `beq` branch at 0x14414 targets 0x142e8, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x14420 targets 0x142e8, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `beq` branch at 0x14428 targets 0x155b4 and is always taken.
  The `beq` branch at 0x1444c targets 0x14458, is taken when (t9(?) & ra(=0x4f00000)) == 0, and falls through when (t9(?) & ra(=0x4f00000)) != 0.
  The `beq` branch at 0x1445c targets 0x14468, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0x1446c targets 0x14484, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x14484 targets 0x144b8, is taken when v1(=a3) == 0, and falls through when v1(=a3) != 0.
  The `beq` branch at 0x144c0 targets 0x144e4, is taken when a4(=[0xffffffffaff10040]:8) == 0, and falls through when a4(=[0xffffffffaff10040]:8) != 0.
  The `beql` branch at 0x14500 targets 0x144f4, is taken when (t2(=[sym(heart_error_cpumap)]) & t8(?)) == 0, and falls through when (t2(=[sym(heart_error_cpumap)]) & t8(?)) != 0; its branch-likely delay slot `nop` at 0x14504 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x14508 targets 0x14938, is taken when t0(=0x1) == t1(=a2), and falls through when t0(=0x1) != t1(=a2).
  The `beq` branch at 0x14510 targets 0x148f8, is taken when s2(?) == 0, and falls through when s2(?) != 0.
  The `beq` branch at 0x14518 targets 0x1433c and is always taken.
  The `beql` branch at 0x14538 targets 0x1452c, is taken when t9(?) == 0, and falls through when t9(?) != 0; its branch-likely delay slot `nop` at 0x1453c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x14558 targets 0x13eac and is always taken.
  The `beq` branch at 0x14560 targets 0x1457c, is taken when s5(=a0) == 0, and falls through when s5(=a0) != 0.
  The `beq` branch at 0x14598 targets 0x141d4, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x145a4 targets 0x141d4, is taken when a5(?) != a4(?), and falls through when a5(?) == a4(?).
  The `beq` branch at 0x145d4 targets 0x141ec and is always taken.
  The `beq` branch at 0x145e8 targets 0x146f8, is taken when (a5(=0x4f00000) & a0(?)) == 0, and falls through when (a5(=0x4f00000) & a0(?)) != 0.
  The `beq` branch at 0x14600 targets 0x14620, is taken when t3(=a1) == 0, and falls through when t3(=a1) != 0.
  The `bne` branch at 0x14610 targets 0x14628, is taken when s5(=a0) != 0, and falls through when s5(=a0) == 0.
  The `beq` branch at 0x14618 targets 0x1463c and is always taken.
  The `beq` branch at 0x14620 targets 0x1463c, is taken when s5(=a0) == 0, and falls through when s5(=a0) != 0.
  The `beq` branch at 0x146b0 targets 0x146d4, is taken when v0(=ret(heart_error_refine)) == 0, and falls through when v0(=ret(heart_error_refine)) != 0.
  The `beq` branch at 0x146bc targets 0x155e0, is taken when v0(=ret(heart_error_refine)) == a5(=0x9), and falls through when v0(=ret(heart_error_refine)) != a5(=0x9).
  The `beq` branch at 0x146e0 targets 0x14940, is taken when (s3(?) & a6(?)) == 0, and falls through when (s3(?) & a6(?)) != 0.
  The `bne` branch at 0x146ec targets 0x14274, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x146f8 targets 0x148b0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x14710 targets 0x148a0, is taken when s6(=[-0x3c60]:2) != a4(?), and falls through when s6(=[-0x3c60]:2) == a4(?).
  The `beq` branch at 0x1471c targets 0x1489c, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x14738 targets 0x14794, is taken when t0(=a1) == 0, and falls through when t0(=a1) != 0.
  The `bne` branch at 0x14748 targets 0x1479c, is taken when s5(=a0) != 0, and falls through when s5(=a0) == 0.
  The `beq` branch at 0x14750 targets 0x147b0 and is always taken.
  The `beq` branch at 0x14760 targets 0x14270 and is always taken.
  The `beq` branch at 0x14768 targets 0x13fd0 and is always taken.
  The `beq` branch at 0x14770 targets 0x13fd0 and is always taken.
  The `beq` branch at 0x14778 targets 0x13fd0 and is always taken.
  The `beq` branch at 0x1478c targets 0x141b8 and is always taken.
  The `beq` branch at 0x14794 targets 0x147b0, is taken when s5(=a0) == 0, and falls through when s5(=a0) != 0.
  The `beq` branch at 0x14814 targets 0x1487c, is taken when v0(=ret(heart_error_refine)) == 0, and falls through when v0(=ret(heart_error_refine)) != 0.
  The `beq` branch at 0x14840 targets 0x157d8, is taken when v0(=ret(heart_error_refine)) == v1(=0x9), and falls through when v0(=ret(heart_error_refine)) != v1(=0x9).
  The `bne` branch at 0x1484c targets 0x15860, is taken when a1(?) != a4(?), and falls through when a1(?) == a4(?).
  The `bne` branch at 0x14864 targets 0x1587c, is taken when a3(?) != a4(?), and falls through when a3(?) == a4(?).
  The `beq` branch at 0x14884 targets 0x14dcc, is taken when (s3(?) & a5(?)) == 0, and falls through when (s3(?) & a5(?)) != 0.
  The `bne` branch at 0x148a4 targets 0x14274, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x148b0 targets 0x14a00, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bne` branch at 0x148c4 targets 0x149f4, is taken when s6(=[-0x3c60]:2) != a5(?), and falls through when s6(=[-0x3c60]:2) == a5(?).
  The `beq` branch at 0x148d8 targets 0x14a78, is taken when a6(=a1) == 0, and falls through when a6(=a1) != 0.
  The `bne` branch at 0x148e8 targets 0x14a80, is taken when s5(=a0) != 0, and falls through when s5(=a0) == 0.
  The `beq` branch at 0x148f0 targets 0x14a94 and is always taken.
  The `beq` branch at 0x148f8 targets 0x1433c and is always taken.
  The `beq` branch at 0x14908 targets 0x13eac and is always taken.
  The `beq` branch at 0x14924 targets 0x14a70, is taken when (a4(=[a0+280]:8) & t1(=0x80000000)) == 0, and falls through when (a4(=[a0+280]:8) & t1(=0x80000000)) != 0.
  The `beq` branch at 0x14930 targets 0x14010 and is always taken.
  The `beq` branch at 0x14938 targets 0x1433c and is always taken.
  The `beq` branch at 0x1494c targets 0x146e8 and is always taken.
  The `bne` branch at 0x1495c targets 0x142c4, is taken when v0(=ret(is_in_main_memory)) != 0, and falls through when v0(=ret(is_in_main_memory)) == 0.
  The `beq` branch at 0x14964 targets 0x15778 and is always taken.
  The `beq` branch at 0x14980 targets 0x14010 and is always taken.
  The `bne` branch at 0x149cc targets 0x158d4, is taken when v0(=ret(heart_error_refine)) != 0, and falls through when v0(=ret(heart_error_refine)) == 0.
  The `beq` branch at 0x149e0 targets 0x14de0, is taken when (s3(?) & v0(?)) == 0, and falls through when (s3(?) & v0(?)) != 0.
  The `bne` branch at 0x149f4 targets 0x14274, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x14a00 targets 0x14b84, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x14a24 targets 0x14df4, is taken when (v0(?) & a2(=0x200000000000)) == 0, and falls through when (v0(?) & a2(=0x200000000000)) != 0.
  The `bne` branch at 0x14a2c targets 0x14b24, is taken when s6(=[-0x3c60]:2) != v0(?), and falls through when s6(=[-0x3c60]:2) == v0(?).
  The `beq` branch at 0x14a44 targets 0x14b28, is taken when (v0(?) & s1(?)) == 0, and falls through when (v0(?) & s1(?)) != 0.
  The `beq` branch at 0x14a50 targets 0x14b28, is taken when (s1(?) & 0x1) == 0, and falls through when (s1(?) & 0x1) != 0.
  The `bne` branch at 0x14a60 targets 0x14b2c, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x14a68 targets 0x14b40 and is always taken.
  The `beq` branch at 0x14a70 targets 0x14010 and is always taken.
  The `beq` branch at 0x14a78 targets 0x14a94, is taken when s5(=a0) == 0, and falls through when s5(=a0) != 0.
  The `beq` branch at 0x14ac0 targets 0x14988, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x14acc targets 0x14988, is taken when a0(?) != a4(?), and falls through when a0(?) == a4(?).
  The `beq` branch at 0x14b1c targets 0x149a0 and is always taken.
  The `beq` branch at 0x14b28 targets 0x14b3c, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x14b34 targets 0x14e94, is taken when t2(?) == t3(=0xfe), and falls through when t2(?) != t3(=0xfe).
  The `beq` branch at 0x14b50 targets 0x14e04, is taken when (a5(?) & a6(=0x40000000000)) == 0, and falls through when (a5(?) & a6(=0x40000000000)) != 0.
  The `beq` branch at 0x14b60 targets 0x15950, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x14b78 targets 0x14274, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x14b90 targets 0x14bec, is taken when (v0(?) & s1(?)) == 0, and falls through when (v0(?) & s1(?)) != 0.
  The `beq` branch at 0x14bcc targets 0x15aac, is taken when a0(=[(([-0x3c60]:2 << 0x2) + sym(heart_SysCorErr_ptime))]) >= a3(=[sym(time)]) (signed), and falls through when a0(=[(([-0x3c60]:2 << 0x2) + sym(heart_SysCorErr_ptime))]) < a3(=[sym(time)]) (signed).
  The `bne` branch at 0x14be0 targets 0x14274, is taken when s1(?) < 0x1 (unsigned), and falls through when s1(?) >= 0x1 (unsigned).
  The `beq` branch at 0x14bf4 targets 0x14c1c, is taken when (s7(=[0xffffffffaff10040]:8) & a4(=0x40000000000)) == 0, and falls through when (s7(=[0xffffffffaff10040]:8) & a4(=0x40000000000)) != 0.
  The `beq` branch at 0x14c08 targets 0x15b0c, is taken when s6(=[-0x3c60]:2) == a5(?), and falls through when s6(=[-0x3c60]:2) != a5(?).
  The `bne` branch at 0x14c10 targets 0x14274, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x14c20 targets 0x14da8, is taken when (a7(=0x10000) & s1(?)) == 0, and falls through when (a7(=0x10000) & s1(?)) != 0.
  The `beq` branch at 0x14c28 targets 0x14d9c, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `bne` branch at 0x14c40 targets 0x15c78, is taken when (t0(=0x4f00000) & t1(?)) != 0, and falls through when (t0(=0x4f00000) & t1(?)) == 0.
  The `beq` branch at 0x14c54 targets 0x14d08, is taken when (s3(?) & v0(=0x1d000)) == 0, and falls through when (s3(?) & v0(=0x1d000)) != 0.
  The `beq` branch at 0x14c5c targets 0x14c80, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x14c78 targets 0x16018, is taken when a1(=[sym(time)]) >= a2(=[sym(.sdata)+232]) (signed), and falls through when a1(=[sym(time)]) < a2(=[sym(.sdata)+232]) (signed).
  The `beq` branch at 0x14c84 targets 0x14cac, is taken when (s3(?) & 0x4000) == 0, and falls through when (s3(?) & 0x4000) != 0.
  The `beq` branch at 0x14ca0 targets 0x16050, is taken when a5(=[sym(time)]) >= a6(=[sym(.sdata)+240]) (signed), and falls through when a5(=[sym(time)]) < a6(=[sym(.sdata)+240]) (signed).
  The `beq` branch at 0x14cac targets 0x14cd4, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x14cc8 targets 0x16088, is taken when t1(=[sym(time)]) >= t2(=[sym(.sdata)+248]) (signed), and falls through when t1(=[sym(time)]) < t2(=[sym(.sdata)+248]) (signed).
  The `beq` branch at 0x14cd8 targets 0x14d00, is taken when (t3(=0x10000) & s3(?)) == 0, and falls through when (t3(=0x10000) & s3(?)) != 0.
  The `beq` branch at 0x14cf4 targets 0x160c0, is taken when t9(=[sym(time)]) >= ra(=[sym(.sdata)+256]) (signed), and falls through when t9(=[sym(time)]) < ra(=[sym(.sdata)+256]) (signed).
  The `bgez` branch at 0x14d0c targets 0x14d40, is taken when v0(?) >= 0 (signed), and falls through when v0(?) < 0 (signed).
  The `beq` branch at 0x14d28 targets 0x15fe0, is taken when a0(=[sym(time)]) >= a1(=[sym(.sdata)+264]) (signed), and falls through when a0(=[sym(time)]) < a1(=[sym(.sdata)+264]) (signed).
  The `beq` branch at 0x14d40 targets 0x14d60, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x14d60 targets 0x14d80, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x14d84 targets 0x15e24, is taken when (v0(?) & 0x7) != 0, and falls through when (v0(?) & 0x7) == 0.
  The `beq` branch at 0x14d8c targets 0x14edc, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `bne` branch at 0x14d9c targets 0x14274, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `bne` branch at 0x14db4 targets 0x160f8, is taken when (s1(?) & a4(?)) != 0, and falls through when (s1(?) & a4(?)) == 0.
  The `beq` branch at 0x14dbc targets 0x14274, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x14dc4 targets 0x16150 and is always taken.
  The `beq` branch at 0x14dd8 targets 0x1488c and is always taken.
  The `beq` branch at 0x14dec targets 0x149e8 and is always taken.
  The `bne` branch at 0x14df4 targets 0x14b78, is taken when s6(=[-0x3c60]:2) != v0(?), and falls through when s6(=[-0x3c60]:2) == v0(?).
  The `beq` branch at 0x14dfc targets 0x14a38 and is always taken.
  The `beq` branch at 0x14e20 targets 0x14ec0, is taken when v0(=entry(sym(real_data_eccsyns))) == t3(=0x1), and falls through when v0(=entry(sym(real_data_eccsyns))) != t3(=0x1).
  The `beq` branch at 0x14e28 targets 0x14ecc, is taken when v0(=entry(sym(real_data_eccsyns))) == t0(=0x2), and falls through when v0(=entry(sym(real_data_eccsyns))) != t0(=0x2).
  The `beq` branch at 0x14e50 targets 0x14ef4, is taken when t1(=0x1) == t2(?), and falls through when t1(=0x1) != t2(?).
  The `beq` branch at 0x14e8c targets 0x14b60 and is always taken.
  The `bne` branch at 0x14eac targets 0x14b3c, is taken when a0(?) != a1(?), and falls through when a0(?) == a1(?).
  The `beq` branch at 0x14eb8 targets 0x14b40 and is always taken.
  The `bne` branch at 0x14ec4 targets 0x14e30, is taken when v0(=entry(sym(real_data_eccsyns))) != a4(=0x2), and falls through when v0(=entry(sym(real_data_eccsyns))) == a4(=0x2).
  The `beq` branch at 0x14ed4 targets 0x14e30 and is always taken.
  The `beq` branch at 0x14eec targets 0x14d90 and is always taken.
  The `beql` branch at 0x14f60 targets 0x14f50, is taken when t3(=table(0x0)) == 0, and falls through when t3(=table(0x0)) != 0; its branch-likely delay slot `nop` at 0x14f64 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x14fa4 targets 0x14e6c and is always taken.
  The `beq` branch at 0x14fcc targets 0x14fec, is taken when (s8(?) & ra(=0x100000000000)) == 0, and falls through when (s8(?) & ra(=0x100000000000)) != 0.
  The `beq` branch at 0x14ff4 targets 0x15014, is taken when (s8(?) & a2(=0x80000000000)) == 0, and falls through when (s8(?) & a2(=0x80000000000)) != 0.
  The `beq` branch at 0x15018 targets 0x15038, is taken when (a2(?) & s8(?)) == 0, and falls through when (a2(?) & s8(?)) != 0.
  The `beq` branch at 0x1503c targets 0x1505c, is taken when (a2(?) & s8(?)) == 0, and falls through when (a2(?) & s8(?)) != 0.
  The `beq` branch at 0x15060 targets 0x15080, is taken when (a2(?) & s8(?)) == 0, and falls through when (a2(?) & s8(?)) != 0.
  The `beq` branch at 0x15084 targets 0x150a0, is taken when (a2(?) & s8(?)) == 0, and falls through when (a2(?) & s8(?)) != 0.
  The `beq` branch at 0x150e8 targets 0x15744, is taken when (s1(?) & a3(?)) == 0, and falls through when (s1(?) & a3(?)) != 0.
  The `beq` branch at 0x150f0 targets 0x140dc and is always taken.
  The `beq` branch at 0x150fc targets 0x15178, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x15118 targets 0x1513c, is taken when s5(=a0) == 0, and falls through when s5(=a0) != 0.
  The `beq` branch at 0x1513c targets 0x1515c, is taken when a3(=a1) == 0, and falls through when a3(=a1) != 0.
  The `beq` branch at 0x152d8 targets 0x142e8 and is always taken.
  The `bgez` branch at 0x152f8 targets 0x15318, is taken when a2(=([0x9000000018000060]:8 << 0x22)) >= 0 (signed), and falls through when a2(=([0x9000000018000060]:8 << 0x22)) < 0 (signed).
  The `bgez` branch at 0x15318 targets 0x15338, is taken when a2(=([0x9000000018000060]:8 << 0x23)) >= 0 (signed), and falls through when a2(=([0x9000000018000060]:8 << 0x23)) < 0 (signed).
  The `bgez` branch at 0x15338 targets 0x15358, is taken when a2(=([0x9000000018000060]:8 << 0x26)) >= 0 (signed), and falls through when a2(=([0x9000000018000060]:8 << 0x26)) < 0 (signed).
  The `bgez` branch at 0x15358 targets 0x15378, is taken when a2(=([0x9000000018000060]:8 << 0x27)) >= 0 (signed), and falls through when a2(=([0x9000000018000060]:8 << 0x27)) < 0 (signed).
  The `bgez` branch at 0x15378 targets 0x15398, is taken when a2(=([0x9000000018000060]:8 << 0x2d)) >= 0 (signed), and falls through when a2(=([0x9000000018000060]:8 << 0x2d)) < 0 (signed).
  The `bgez` branch at 0x15398 targets 0x153b8, is taken when a2(=([0x9000000018000060]:8 << 0x2e)) >= 0 (signed), and falls through when a2(=([0x9000000018000060]:8 << 0x2e)) < 0 (signed).
  The `beq` branch at 0x153b8 targets 0x153d8, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `bne` branch at 0x15430 targets 0x140fc, is taken when (s4(=[0x9000000018000060]:8) & s3(?)) != 0, and falls through when (s4(=[0x9000000018000060]:8) & s3(?)) == 0.
  The `bne` branch at 0x15444 targets 0x14100, is taken when (s1(?) & t8(=0xfffffffffffeffff)) != 0, and falls through when (s1(?) & t8(=0xfffffffffffeffff)) == 0.
  The `beq` branch at 0x1544c targets 0x14274 and is always taken.
  The `beq` branch at 0x1548c targets 0x142c8, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x154ac targets 0x142cc and is always taken.
  The `beq` branch at 0x154c4 targets 0x143fc and is always taken.
  The `beq` branch at 0x154e0 targets 0x15500, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x15500 targets 0x15520, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x15530 targets 0x15550, is taken when (a2(=0x300ff000000) & a3(?)) == 0, and falls through when (a2(=0x300ff000000) & a3(?)) != 0.
  The `beq` branch at 0x15568 targets 0x15588, is taken when (a2(=0x300ff000000) & a3(?)) == 0, and falls through when (a2(=0x300ff000000) & a3(?)) != 0.
  The `beq` branch at 0x155ac targets 0x14248 and is always taken.
  The `beq` branch at 0x155d8 targets 0x142e8 and is always taken.
  The `bgez` branch at 0x155f8 targets 0x15618, is taken when a2(?) >= 0 (signed), and falls through when a2(?) < 0 (signed).
  The `bgez` branch at 0x1561c targets 0x1563c, is taken when a2(?) >= 0 (signed), and falls through when a2(?) < 0 (signed).
  The `bgez` branch at 0x15640 targets 0x15660, is taken when a2(?) >= 0 (signed), and falls through when a2(?) < 0 (signed).
  The `bgez` branch at 0x15664 targets 0x15684, is taken when a2(?) >= 0 (signed), and falls through when a2(?) < 0 (signed).
  The `bgez` branch at 0x15688 targets 0x156a8, is taken when a2(?) >= 0 (signed), and falls through when a2(?) < 0 (signed).
  The `bltz` branch at 0x156cc targets 0x1574c, is taken when a4(?) < 0 (signed), and falls through when a4(?) >= 0 (signed).
  The `bltz` branch at 0x156dc targets 0x15754, is taken when a5(?) < 0 (signed), and falls through when a5(?) >= 0 (signed).
  The `bltz` branch at 0x156ec targets 0x1575c, is taken when a6(?) < 0 (signed), and falls through when a6(?) >= 0 (signed).
  The `bltz` branch at 0x156fc targets 0x15764, is taken when a7(?) < 0 (signed), and falls through when a7(?) >= 0 (signed).
  The `bltz` branch at 0x1570c targets 0x1576c, is taken when t0(?) < 0 (signed), and falls through when t0(?) >= 0 (signed).
  The `beq` branch at 0x1573c targets 0x146c4 and is always taken.
  The `beq` branch at 0x15744 targets 0x14270 and is always taken.
  The `beq` branch at 0x1574c targets 0x156d8 and is always taken.
  The `beq` branch at 0x15754 targets 0x156e8 and is always taken.
  The `beq` branch at 0x1575c targets 0x156f8 and is always taken.
  The `beq` branch at 0x15764 targets 0x15708 and is always taken.
  The `beq` branch at 0x15770 targets 0x15718 and is always taken.
  The `beq` branch at 0x157ac targets 0x142cc, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x157d0 targets 0x142cc and is always taken.
  The `bne` branch at 0x1584c targets 0x1588c, is taken when (v0(?) & 0x3) != 0, and falls through when (v0(?) & 0x3) == 0.
  The `beq` branch at 0x15858 targets 0x158a8 and is always taken.
  The `beq` branch at 0x15874 targets 0x14854 and is always taken.
  The `beq` branch at 0x15884 targets 0x1486c and is always taken.
  The `bne` branch at 0x1588c targets 0x15940, is taken when a3(=0x1) != v0(?), and falls through when a3(=0x1) == v0(?).
  The `beq` branch at 0x15898 targets 0x158a8 and is always taken.
  The `beq` branch at 0x158cc targets 0x14848 and is always taken.
  The `bne` branch at 0x158d4 targets 0x158ec, is taken when v0(=ret(heart_error_refine)) != a2(=0x9), and falls through when v0(=ret(heart_error_refine)) == a2(=0x9).
  The `beq` branch at 0x15938 targets 0x149d4 and is always taken.
  The `bne` branch at 0x15940 targets 0x158a0, is taken when a4(=0x2) != v0(?), and falls through when a4(=0x2) == v0(?).
  The `beq` branch at 0x15948 targets 0x158a8 and is always taken.
  The `beq` branch at 0x15954 targets 0x15964, is taken when (s1(?) & 0x2) == 0, and falls through when (s1(?) & 0x2) != 0.
  The `beq` branch at 0x1595c targets 0x15968 and is always taken.
  The `beq` branch at 0x1596c targets 0x15a98, is taken when (s1(?) & 0x1) == 0, and falls through when (s1(?) & 0x1) != 0.
  The `bne` branch at 0x15974 targets 0x15aa0, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x159f0 targets 0x15a18, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x15a10 targets 0x15a2c and is always taken.
  The `beq` branch at 0x15a68 targets 0x15a90, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x15a70 targets 0x15a90, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x15a90 targets 0x14b64 and is always taken.
  The `beq` branch at 0x15a98 targets 0x1597c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x15aa4 targets 0x15984 and is always taken.
  The `beq` branch at 0x15b04 targets 0x14bd4 and is always taken.
  The `beq` branch at 0x15b24 targets 0x15b50, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x15b38 targets 0x15b50, is taken when a0(?) != a1(?), and falls through when a0(?) == a1(?).
  The `beq` branch at 0x15b48 targets 0x15b58 and is always taken.
  The `bgez` branch at 0x15bd8 targets 0x15c54, is taken when a0(?) >= 0 (signed), and falls through when a0(?) < 0 (signed).
  The `beq` branch at 0x15be8 targets 0x15c64, is taken when a4(=sym(.rodata)+5064) == 0, and falls through when a4(=sym(.rodata)+5064) != 0.
  The `beq` branch at 0x15bf0 targets 0x15c6c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x15c10 targets 0x15c40, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x15c1c targets 0x15c3c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x15c4c targets 0x14c0c and is always taken.
  The `bne` branch at 0x15c5c targets 0x15bf0, is taken when t0(=sym(.rodata)+5064) != 0, and falls through when t0(=sym(.rodata)+5064) == 0.
  The `bne` branch at 0x15c64 targets 0x15bf8, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `beq` branch at 0x15c70 targets 0x15c00 and is always taken.
  The `bgez` branch at 0x15c94 targets 0x15cb4, is taken when a2(?) >= 0 (signed), and falls through when a2(?) < 0 (signed).
  The `bgez` branch at 0x15cb8 targets 0x15cd8, is taken when a2(?) >= 0 (signed), and falls through when a2(?) < 0 (signed).
  The `bgez` branch at 0x15cdc targets 0x15cfc, is taken when a2(?) >= 0 (signed), and falls through when a2(?) < 0 (signed).
  The `bgez` branch at 0x15d00 targets 0x15d20, is taken when a2(?) >= 0 (signed), and falls through when a2(?) < 0 (signed).
  The `bgez` branch at 0x15d24 targets 0x15d44, is taken when a2(?) >= 0 (signed), and falls through when a2(?) < 0 (signed).
  The `bltz` branch at 0x15d88 targets 0x162ac, is taken when a7(?) < 0 (signed), and falls through when a7(?) >= 0 (signed).
  The `bltz` branch at 0x15d9c targets 0x162b4, is taken when a5(?) < 0 (signed), and falls through when a5(?) >= 0 (signed).
  The `bltz` branch at 0x15db0 targets 0x162bc, is taken when a6(?) < 0 (signed), and falls through when a6(?) >= 0 (signed).
  The `bltz` branch at 0x15dc4 targets 0x162c4, is taken when a7(?) < 0 (signed), and falls through when a7(?) >= 0 (signed).
  The `bltz` branch at 0x15dd8 targets 0x162cc, is taken when t0(?) < 0 (signed), and falls through when t0(?) >= 0 (signed).
  The `beq` branch at 0x15e1c targets 0x14c48 and is always taken.
  The `beq` branch at 0x15e48 targets 0x15e68, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `bne` branch at 0x15e54 targets 0x15e68, is taken when ra(?) != t3(?), and falls through when ra(?) == t3(?).
  The `beq` branch at 0x15e60 targets 0x15e6c and is always taken.
  The `beq` branch at 0x15e98 targets 0x15eb8, is taken when (a4(?) & 0x4) == 0, and falls through when (a4(?) & 0x4) != 0.
  The `beq` branch at 0x15ebc targets 0x15edc, is taken when (a2(?) & 0x2) == 0, and falls through when (a2(?) & 0x2) != 0.
  The `beq` branch at 0x15ee0 targets 0x15f00, is taken when (a2(?) & 0x1) == 0, and falls through when (a2(?) & 0x1) != 0.
  The `beq` branch at 0x15fb0 targets 0x14d8c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x15fb8 targets 0x14d8c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x15fd8 targets 0x14d8c and is always taken.
  The `beq` branch at 0x16010 targets 0x14d30 and is always taken.
  The `beq` branch at 0x16048 targets 0x14c80 and is always taken.
  The `beq` branch at 0x16080 targets 0x14ca8 and is always taken.
  The `beq` branch at 0x160b8 targets 0x14cd0 and is always taken.
  The `beq` branch at 0x160f0 targets 0x14cfc and is always taken.
  The `beq` branch at 0x16104 targets 0x161cc, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x16120 targets 0x162d8, is taken when v1(?) != a0(=0xfe), and falls through when v1(?) == a0(=0xfe).
  The `bne` branch at 0x16130 targets 0x16140, is taken when s6(=[-0x3c60]:2) != a1(?), and falls through when s6(=[-0x3c60]:2) == a1(?).
  The `bne` branch at 0x1613c targets 0x161e4, is taken when a4(?) != a3(?), and falls through when a4(?) == a3(?).
  The `beq` branch at 0x16148 targets 0x161e8 and is always taken.
  The `beq` branch at 0x161c4 targets 0x14270 and is always taken.
  The `beq` branch at 0x16260 targets 0x16290, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1626c targets 0x1628c, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x1629c targets 0x14dbc, is taken when s1(?) >= 0x1 (unsigned), and falls through when s1(?) < 0x1 (unsigned).
  The `beq` branch at 0x162a4 targets 0x14274 and is always taken.
  The `beq` branch at 0x162ac targets 0x15d94 and is always taken.
  The `beq` branch at 0x162b4 targets 0x15da8 and is always taken.
  The `beq` branch at 0x162bc targets 0x15dbc and is always taken.
  The `beq` branch at 0x162c4 targets 0x15dd0 and is always taken.
  The `beq` branch at 0x162d0 targets 0x15de4 and is always taken.
  The `beq` branch at 0x162e0 targets 0x161e4 and is always taken.
  The return at 0x14364 has v0 = one of 0x0, 0x1.

- `tlb_to_phys` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x162e8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x162e8-0x16378 (144 bytes).
  It occupies 144 bytes.
  The `jal` at 0x16320 calls tlbgetpid with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x16330 calls tlb_probe with a0=?, a1=a0 at entry (arg0), a2=sp-32, a3=?.
  The `bne` branch at 0x16308 targets 0x16320, is taken when a0 < at(=0xc000000000000000) (unsigned), and falls through when a0 >= at(=0xc000000000000000) (unsigned).
  The `beq` branch at 0x16310 targets 0x16320, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x16318 targets 0x16330 and is always taken.
  The `beq` branch at 0x16348 targets 0x16370, is taken when v0(=ret(tlb_probe)) == a2(=-0x1), and falls through when v0(=ret(tlb_probe)) != a2(=-0x1).
  The `beq` branch at 0x16370 targets 0x16364 and is always taken.
  The return at 0x16368 has v0 = one of ?, -0x1.

- `_dummy_proc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16380 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16380-0x16388 (8 bytes).
  It occupies 8 bytes.
  The return at 0x16380 has v0 = ?.

- `first_address` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16380 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16380-0x16390 (16 bytes).
  It occupies 16 bytes.
  The return at 0x16380 has v0 = ?.
  The instructions from 0x16388 to 0x1638c are not reached by any path from the entry, and their branches are not listed.

- `fpunit_fpload_s` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16390 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16390-0x166bc (812 bytes).
  It occupies 812 bytes.
  The `ld` at 0x163b0 loads 8 bytes from (sym(.rodata)+11040 + (a0 << 0x3)) +0x0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x163b4).
  The instructions from 0x163bc to 0x166b8 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x163b4 uses a jump table whose successors are unresolved.

- `renorm_d` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x166bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x166bc-0x167d4 (280 bytes).
  It occupies 280 bytes.
  The `ld` at 0x166bc loads 8 bytes from a0 (arg0 at entry) +0x0.
  7 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x0, including `sd` at 0x1671c, `sd` at 0x16734, `sd` at 0x16750.
  The `lb` at 0x167b8 loads 1 byte from ?.
  The `beq` branch at 0x166d4 targets 0x167cc, is taken when (a3(=[a0]:8) & v1(=0x1fffffffffffff)) == 0, and falls through when (a3(=[a0]:8) & v1(=0x1fffffffffffff)) != 0.
  The `beq` branch at 0x166dc targets 0x166f0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x16704 targets 0x1675c, is taken when (a5(=0xfff0000000000) & a3(=[a0]:8)) != 0, and falls through when (a5(=0xfff0000000000) & a3(=[a0]:8)) == 0.
  The `bne` branch at 0x16720 targets 0x16754, is taken when (a5(=0xfff0000000000) & a3(?)) != 0, and falls through when (a5(=0xfff0000000000) & a3(?)) == 0.
  The `bne` branch at 0x16738 targets 0x16754, is taken when (a5(=0xfff0000000000) & a3(?)) != 0, and falls through when (a5(=0xfff0000000000) & a3(?)) == 0.
  The `beq` branch at 0x1674c targets 0x16710, is taken when (a5(=0xfff0000000000) & a3(?)) == 0, and falls through when (a5(=0xfff0000000000) & a3(?)) != 0.
  The `beq` branch at 0x16754 targets 0x16760 and is always taken.
  The `bne` branch at 0x16760 targets 0x167ac, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0x16778 targets 0x167ac, is taken when (v0(=0xf000000000000) & a3(?)) != 0, and falls through when (v0(=0xf000000000000) & a3(?)) == 0.
  The `bne` branch at 0x16790 targets 0x167ac, is taken when (v0(=0xf000000000000) & a3(?)) != 0, and falls through when (v0(=0xf000000000000) & a3(?)) == 0.
  The `beq` branch at 0x167a4 targets 0x16768, is taken when (v0(=0xf000000000000) & a3(?)) == 0, and falls through when (v0(=0xf000000000000) & a3(?)) != 0.
  The return at 0x166e8 has v0 = 0x0.
  The return at 0x167c4 has v0 = ?.
  The return at 0x167cc has v0 = 0x0.

- `VEC_dbe` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x167e0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x167e0-0x16838 (88 bytes).
  It occupies 88 bytes.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffaff50000, including `ld` at 0x167e4, `ld` at 0x1681c.
  The `ld` at 0x16800 loads 8 bytes from ([0xffffffffaff50000]:8 << 0x3) -0x500f0000.
  The `sd` at 0x16814 stores 8 bytes to ([0xffffffffaff50000]:8 << 0x3) -0x500f0000.
  The `ld` at 0x16824 loads 8 bytes from abs 0xffffffffb8000000.
  The `lh` at 0x1682c loads 2 bytes from abs 0xffffffffffffc3a0.
  The `sd` at 0x16834 stores 8 bytes to a0 (arg0 at entry) +0x140.
  Calls VEC_trap via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x16830).

- `renorm_s` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16838 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16838-0x16904 (204 bytes).
  It occupies 204 bytes.
  The `ld` at 0x16838 loads 8 bytes from a0 (arg0 at entry) +0x0.
  5 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x0, including `sd` at 0x16880, `sd` at 0x16898, `sd` at 0x168b4.
  The `lb` at 0x168d8 loads 1 byte from ?.
  The `beq` branch at 0x16848 targets 0x168fc, is taken when (a3(=[a0]:8) & at(=0xffffff)) == 0, and falls through when (a3(=[a0]:8) & at(=0xffffff)) != 0.
  The `bgez` branch at 0x16850 targets 0x16864, is taken when a4(=([a0]:8 << 0x28)) >= 0 (signed), and falls through when a4(=([a0]:8 << 0x28)) < 0 (signed).
  The `bne` branch at 0x16868 targets 0x168c0, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x16884 targets 0x168b8, is taken when (v0(=0xff0000) & a3(?)) != 0, and falls through when (v0(=0xff0000) & a3(?)) == 0.
  The `bne` branch at 0x1689c targets 0x168b8, is taken when (v0(=0xff0000) & a3(?)) != 0, and falls through when (v0(=0xff0000) & a3(?)) == 0.
  The `beq` branch at 0x168b0 targets 0x16874, is taken when (v0(=0xff0000) & a3(?)) == 0, and falls through when (v0(=0xff0000) & a3(?)) != 0.
  The `beq` branch at 0x168b8 targets 0x168c4 and is always taken.
  The `beq` branch at 0x168c4 targets 0x168ec, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x168f4 targets 0x168cc and is always taken.
  The return at 0x1685c has v0 = 0x0.
  The return at 0x168e4 has v0 = ?.
  The return at 0x168fc has v0 = 0x0.

- `_get_count` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16910 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16910-0x1691c (12 bytes).
  It occupies 12 bytes.
  The return at 0x16914 has v0 = ?.

- `get_r4k_counter` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16910 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16910-0x1691c (12 bytes).
  It occupies 12 bytes.
  The return at 0x16914 has v0 = ?.

- `_get_compare` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1691c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1691c-0x16928 (12 bytes).
  It occupies 12 bytes.
  The return at 0x16920 has v0 = ?.

- `_set_count` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16928 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16928-0x16934 (12 bytes).
  It occupies 12 bytes.
  The return at 0x1692c has v0 = ?.

- `_add_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16934 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16934-0x169a8 (116 bytes).
  It occupies 116 bytes.
  The `jal` at 0x16968 calls breakout_and_test2_sd with a0=a0 at entry (arg0), a1=sp-24, a2=sp-80, a3=sp-76, a4=sp-72, a5=sp-16, a6=sp-64, a7=sp-60.
  The `jal` at 0x16998 calls add with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x16970 targets 0x16984, is taken when v0(=ret(breakout_and_test2_sd)) == 0, and falls through when v0(=ret(breakout_and_test2_sd)) != 0.
  The `beq` branch at 0x169a0 targets 0x1697c and is always taken.
  The return at 0x1697c has v0 = one of ret(breakout_and_test2_sd), ret(add).

- `fpunit_fpload_d` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x169b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x169b0-0x16e0c (1116 bytes).
  It occupies 1116 bytes.
  The `ld` at 0x169d8 loads 8 bytes from table(sym(.rodata)+11296) +0x0.
  The `ld` at 0x16a00 loads 8 bytes from (sym(.rodata)+11424 + (a0 << 0x3)) +0x0.
  Calls (unknown callee) via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x16a04).
  The `bne` branch at 0x169b0 targets 0x169e4, is taken when a1 != 0, and falls through when a1 == 0.
  The instructions from 0x16a0c to 0x16e08 are not reached by any path from the entry, and their branches are not listed.
  The indirect jump at 0x169dc uses a jump table whose successors are unresolved.
  The indirect jump at 0x16a04 uses a jump table whose successors are unresolved.

- `_sub_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16e0c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16e0c-0x16e84 (120 bytes).
  It occupies 120 bytes.
  The `jal` at 0x16e40 calls breakout_and_test2_sd with a0=a0 at entry (arg0), a1=sp-24, a2=sp-80, a3=sp-76, a4=sp-72, a5=sp-16, a6=sp-64, a7=sp-60.
  The `jal` at 0x16e74 calls add with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x16e48 targets 0x16e5c, is taken when v0(=ret(breakout_and_test2_sd)) == 0, and falls through when v0(=ret(breakout_and_test2_sd)) != 0.
  The `beq` branch at 0x16e7c targets 0x16e54 and is always taken.
  The return at 0x16e54 has v0 = one of ret(breakout_and_test2_sd), ret(add).

- `_mul_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x16e84 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x16e84-0x17258 (980 bytes).
  It occupies 980 bytes.
  The `lw` at 0x16edc loads 4 bytes from ((a0 << 0x2) + sym(EXP_INF)) +0x0.
  4 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x16f08, `ld` at 0x16f20, `ld` at 0x16fa8.
  4 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x16f10, `lw` at 0x16f24, `lw` at 0x16fac.
  2 such `sw` accesses store 4 bytes to [-0x3fe8]:8 +0x53c, including `sw` at 0x16f1c, `sw` at 0x16fb8.
  4 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(SIGN_SHIFT)) +0x0, including `lw` at 0x16f58, `lw` at 0x170dc, `lw` at 0x17110.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_BIAS)) +0x0, including `lw` at 0x17010, `lw` at 0x17040.
  2 such `ld` accesses load 8 bytes from ((a0 << 0x3) + sym(IMP_1BIT)) +0x0, including `ld` at 0x17018, `ld` at 0x17034.
  The `ld` at 0x170b8 loads 8 bytes from ((a0 << 0x3) + sym(round)) +0x0.
  2 such `ld` accesses load 8 bytes from (sym(QUIETNAN) + (a0 << 0x3)) +0x0, including `ld` at 0x171b4, `ld` at 0x17244.
  2 such `ld` accesses load 8 bytes from ((a0 << 0x3) + sym(renorm)) +0x0, including `ld` at 0x171d0, `ld` at 0x17208.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_MIN)) +0x0, including `lw` at 0x171e8, `lw` at 0x17220.
  The `jal` at 0x16ec0 calls breakout_and_test2_sd with a0=a0 at entry (arg0), a1=sp-24, a2=sp-112, a3=sp-108, a4=sp-104, a5=sp-16, a6=sp-96, a7=sp-92.
  The `jal` at 0x16f34 calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=([[-0x3fe8]:8+1340] | 0x10040), a4=[-0x3fe8]:8, a5=0x10040.
  The `jal` at 0x16f3c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x16f68 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x16f70 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x16fd0 calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=sym(SIGN_SHIFT), a6=([[-0x3fe8]:8+1340] | 0x10040), a7=[-0x3fe8]:8.
  The `jal` at 0x16fd8 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1706c calls mul64 with a0=?, a1=?, a2=sp-80, a3=?.
  The `jal` at 0x17078 calls renorm_d with a0=sp-72, a1=?, a2=?, a3=?.
  The `jalr` at 0x170c0 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?, a6=[((a0 << 0x3) + sym(round))]:8.
  The `jal` at 0x170ec calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x170f4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x17120 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x17128 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x17178 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=[((a0 << 0x2) + sym(SIGN_SHIFT))], a3=?.
  The `jal` at 0x17180 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x171b0 calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=([[-0x3fe8]:8+1340] | 0x10040), a4=[-0x3fe8]:8, a5=0x10040.
  The `jal` at 0x171b8 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x171d4 calls (unknown callee) with a0=sp-104, a1=?, a2=?, a3=[((a0 << 0x3) + sym(renorm))]:8.
  The `jalr` at 0x1720c calls (unknown callee) with a0=sp-88, a1=?, a2=sym(EXP_BIAS), a3=?, a7=[((a0 << 0x3) + sym(renorm))]:8.
  The `jal` at 0x17240 calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=sym(SIGN_SHIFT), a6=([[-0x3fe8]:8+1340] | 0x10040), a7=[-0x3fe8]:8.
  The `jal` at 0x17248 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x16ec8 targets 0x16f78, is taken when v0(=ret(breakout_and_test2_sd)) != 0, and falls through when v0(=ret(breakout_and_test2_sd)) == 0.
  The `bne` branch at 0x16ee4 targets 0x16f8c, is taken when a0(=[((a0 << 0x2) + sym(EXP_INF))]) != a6(?), and falls through when a0(=[((a0 << 0x2) + sym(EXP_INF))]) == a6(?).
  The `beq` branch at 0x16eec targets 0x17104, is taken when a0(=[((a0 << 0x2) + sym(EXP_INF))]) == a3(?), and falls through when a0(=[((a0 << 0x2) + sym(EXP_INF))]) != a3(?).
  The `bne` branch at 0x16ef4 targets 0x16f50, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `bne` branch at 0x16f00 targets 0x16f50, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x16f2c targets 0x171a4, is taken when (a2(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (a2(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x16f44 targets 0x16f7c and is always taken.
  The `bne` branch at 0x16f8c targets 0x16fe8, is taken when a0(=[((a0 << 0x2) + sym(EXP_INF))]) != a3(?), and falls through when a0(=[((a0 << 0x2) + sym(EXP_INF))]) == a3(?).
  The `bne` branch at 0x16f94 targets 0x170d4, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x16fa0 targets 0x170d0, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x16fc8 targets 0x17234, is taken when (a5(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (a5(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x16fe0 targets 0x16f7c and is always taken.
  The `beq` branch at 0x16fe8 targets 0x17138, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x16ff0 targets 0x17148, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x16ff8 targets 0x171c8, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x17028 targets 0x17200, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x17054 targets 0x17190, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `bne` branch at 0x170a4 targets 0x170b0, is taken when v0(=ret(renorm_d)) != t9(=0xb), and falls through when v0(=ret(renorm_d)) == t9(=0xb).
  The `beq` branch at 0x170c8 targets 0x16f78 and is always taken.
  The `beq` branch at 0x170fc targets 0x16f7c and is always taken.
  The `beq` branch at 0x17130 targets 0x16f7c and is always taken.
  The `bne` branch at 0x17138 targets 0x16ff0, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x17140 targets 0x17158 and is always taken.
  The `bne` branch at 0x1714c targets 0x16ff8, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `beq` branch at 0x17188 targets 0x16f7c and is always taken.
  The `beq` branch at 0x1719c targets 0x1705c and is always taken.
  The `beq` branch at 0x171c0 targets 0x16f7c and is always taken.
  The `bne` branch at 0x171f8 targets 0x17030, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x1722c targets 0x17054 and is always taken.
  The `beq` branch at 0x17250 targets 0x16f7c and is always taken.
  The return at 0x16f84 has v0 = one of ret(store_fpcsr), ?.
  The instructions from 0x16f4c to 0x16f4c are not reached by any path from the entry, and their branches are not listed.

- `_abs_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x17258 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x17258-0x172f4 (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0x17278 loads 4 bytes from ((a0 << 0x2) + sym(EXP_SHIFT)) +0x0.
  The `ld` at 0x17288 loads 8 bytes from ((a0 << 0x3) + sym(FRAC_MASK)) +0x0.
  The `lw` at 0x17290 loads 4 bytes from ((a0 << 0x2) + sym(EXP_MASK)) +0x0.
  The `ld` at 0x172cc loads 8 bytes from ((a0 << 0x3) + sym(SIGNBIT)) +0x0.
  The `jal` at 0x172a8 calls screen_nan_sd with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a5=a1 at entry (arg1), a6=sym(EXP_MASK).
  The `jal` at 0x172dc calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=sym(SIGNBIT).
  The `jal` at 0x172e4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x172b0 targets 0x172c4, is taken when v0(=ret(screen_nan_sd)) == 0, and falls through when v0(=ret(screen_nan_sd)) != 0.
  The `beq` branch at 0x172ec targets 0x172bc and is always taken.
  The return at 0x172bc has v0 = one of ret(screen_nan_sd), ret(store_fpcsr).

- `_neg_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x172f4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x172f4-0x1738c (152 bytes).
  It occupies 152 bytes.
  The `lw` at 0x17314 loads 4 bytes from ((a0 << 0x2) + sym(EXP_SHIFT)) +0x0.
  The `ld` at 0x17324 loads 8 bytes from ((a0 << 0x3) + sym(FRAC_MASK)) +0x0.
  The `lw` at 0x1732c loads 4 bytes from ((a0 << 0x2) + sym(EXP_MASK)) +0x0.
  The `ld` at 0x1736c loads 8 bytes from ((a0 << 0x3) + sym(SIGNBIT)) +0x0.
  The `jal` at 0x17344 calls screen_nan_sd with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?, a5=a1 at entry (arg1), a6=sym(EXP_MASK).
  The `jal` at 0x17374 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=a1 at entry (arg1), a3=?.
  The `jal` at 0x1737c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1734c targets 0x17360, is taken when v0(=ret(screen_nan_sd)) == 0, and falls through when v0(=ret(screen_nan_sd)) != 0.
  The `beq` branch at 0x17384 targets 0x17358 and is always taken.
  The return at 0x17358 has v0 = one of ret(screen_nan_sd), ret(store_fpcsr).

- `_div_sd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1738c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1738c-0x17838 (1196 bytes).
  It occupies 1196 bytes.
  The `lw` at 0x173e4 loads 4 bytes from ((a0 << 0x2) + sym(EXP_INF)) +0x0.
  6 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x173fc, `ld` at 0x17414, `ld` at 0x1765c.
  6 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x17404, `lw` at 0x17418, `lw` at 0x17660.
  3 such `sw` accesses store 4 bytes to [-0x3fe8]:8 +0x53c, including `sw` at 0x17410, `sw` at 0x17668, `sw` at 0x17788.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x17468, `ld` at 0x174ec, `ld` at 0x17620.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_BIAS)) +0x0, including `lw` at 0x174b8, `lw` at 0x174e4.
  The `ld` at 0x174c0 loads 8 bytes from ((a0 << 0x3) + sym(IMP_1BIT)) +0x0.
  The `lw` at 0x17524 loads 4 bytes from ((a0 << 0x2) + sym(MANTWIDTH)) +0x0.
  The `ld` at 0x175e4 loads 8 bytes from ((a0 << 0x3) + sym(renorm)) +0x0.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_MIN)) +0x0, including `lw` at 0x175fc, `lw` at 0x17638.
  2 such `ld` accesses load 8 bytes from (sym(QUIETNAN) + (a0 << 0x3)) +0x0, including `ld` at 0x176a8, `ld` at 0x17814.
  4 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(SIGN_SHIFT)) +0x0, including `lw` at 0x176c4, `lw` at 0x17708, `lw` at 0x1774c.
  The `ld` at 0x177dc loads 8 bytes from (sym(INFINITY) + (a0 << 0x3)) +0x0.
  The `jal` at 0x173c8 calls breakout_and_test2_sd with a0=a0 at entry (arg0), a1=sp-24, a2=sp-96, a3=sp-92, a4=sp-88, a5=sp-16, a6=sp-80, a7=sp-76.
  The `jal` at 0x17428 calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=([[-0x3fe8]:8+1340] | 0x10040), a4=[-0x3fe8]:8, a5=0x10040.
  The `jal` at 0x17430 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x17470 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?, a6=sym(round), a7=[((a0 << 0x2) + sym(MANTWIDTH))].
  The `jalr` at 0x175e8 calls (unknown callee) with a0=sp-88, a1=?, a2=?, a3=[((a0 << 0x3) + sym(renorm))]:8, a4=sym(renorm).
  The `jalr` at 0x17624 calls (unknown callee) with a0=sp-72, a1=sym(EXP_BIAS), a2=?, a3=?, a4=sym(renorm).
  The `jal` at 0x17680 calls post_sig with a0=0x8, a1=?, a2=?, a3=([[-0x3fe8]:8+1340] | 0x8020), a4=[-0x3fe8]:8.
  The `jal` at 0x17688 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x176a4 calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=([[-0x3fe8]:8+1340] | 0x10040), a4=[-0x3fe8]:8, a5=0x10040.
  The `jal` at 0x176ac calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x176d4 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x176dc calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x17710 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=[((a0 << 0x2) + sym(SIGN_SHIFT))], a3=?.
  The `jal` at 0x17718 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x17754 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=[((a0 << 0x2) + sym(SIGN_SHIFT))], a3=?, a4=sym(renorm).
  The `jal` at 0x1775c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x177a0 calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=?, a5=([[-0x3fe8]:8+1340] | 0x10040), a6=[-0x3fe8]:8, a7=0x10040.
  The `jal` at 0x177a8 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x177ec calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))], a4=(a0 << 0x3).
  The `jal` at 0x177f4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x17810 calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=?, a5=([[-0x3fe8]:8+1340] | 0x10040), a6=[-0x3fe8]:8, a7=0x10040.
  The `jal` at 0x17818 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x173d0 targets 0x17478, is taken when v0(=ret(breakout_and_test2_sd)) != 0, and falls through when v0(=ret(breakout_and_test2_sd)) == 0.
  The `bne` branch at 0x173ec targets 0x1748c, is taken when a1(=[((a0 << 0x2) + sym(EXP_INF))]) != a2(?), and falls through when a1(=[((a0 << 0x2) + sym(EXP_INF))]) == a2(?).
  The `bne` branch at 0x173f4 targets 0x176bc, is taken when a1(=[((a0 << 0x2) + sym(EXP_INF))]) != a0(?), and falls through when a1(=[((a0 << 0x2) + sym(EXP_INF))]) == a0(?).
  The `beq` branch at 0x17420 targets 0x17698, is taken when (a2(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (a2(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x17438 targets 0x1747c and is always taken.
  The `beq` branch at 0x17440 targets 0x175b4, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x17450 targets 0x175bc, is taken when s0(=a0) == 0, and falls through when s0(=a0) != 0.
  The `beq` branch at 0x1748c targets 0x176ec, is taken when a1(=[((a0 << 0x2) + sym(EXP_INF))]) == a0(?), and falls through when a1(=[((a0 << 0x2) + sym(EXP_INF))]) != a0(?).
  The `beq` branch at 0x17494 targets 0x1764c, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x1749c targets 0x175d0, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x174d0 targets 0x17614, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x17508 targets 0x1751c, is taken when a5(?) >= a6(?) (unsigned), and falls through when a5(?) < a6(?) (unsigned).
  The `bltz` branch at 0x17528 targets 0x17728, is taken when a7(=[((a0 << 0x2) + sym(MANTWIDTH))]) < 0 (signed), and falls through when a7(=[((a0 << 0x2) + sym(MANTWIDTH))]) >= 0 (signed).
  The `beq` branch at 0x17530 targets 0x17828 and is always taken.
  The `bne` branch at 0x17544 targets 0x17594, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `bne` branch at 0x17554 targets 0x17568, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bne` branch at 0x17570 targets 0x17594, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `bne` branch at 0x1757c targets 0x17538, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x1758c targets 0x17538 and is always taken.
  The `bne` branch at 0x17598 targets 0x17440, is taken when a5(?) < a6(?) (unsigned), and falls through when a5(?) >= a6(?) (unsigned).
  The `bne` branch at 0x175ac targets 0x17448, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x175b4 targets 0x1745c, is taken when s0(=a0) != 0, and falls through when s0(=a0) == 0.
  The `beq` branch at 0x175c8 targets 0x17458 and is always taken.
  The `beq` branch at 0x175d0 targets 0x17730, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x1760c targets 0x174d8, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x17644 targets 0x17500 and is always taken.
  The `bne` branch at 0x1764c targets 0x1749c, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x17654 targets 0x1776c, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x17678 targets 0x177b8, is taken when (a2(=[[-0x3fe8]:8+1340]) & 0x400) == 0, and falls through when (a2(=[[-0x3fe8]:8+1340]) & 0x400) != 0.
  The `beq` branch at 0x17690 targets 0x1747c and is always taken.
  The `beq` branch at 0x176b4 targets 0x1747c and is always taken.
  The `beq` branch at 0x176e4 targets 0x1747c and is always taken.
  The `beq` branch at 0x17720 targets 0x1747c and is always taken.
  The `beq` branch at 0x17728 targets 0x17594 and is always taken.
  The `beq` branch at 0x17764 targets 0x1747c and is always taken.
  The `bne` branch at 0x1776c targets 0x1765c, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x17798 targets 0x17804, is taken when (a4(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (a4(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x177b0 targets 0x1747c and is always taken.
  The `beq` branch at 0x177fc targets 0x1747c and is always taken.
  The `beq` branch at 0x17820 targets 0x1747c and is always taken.
  The `beq` branch at 0x17830 targets 0x17550 and is always taken.
  The return at 0x17484 has v0 = one of ret(store_fpcsr), ?.

- `ecc_cacheOp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x17838 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x17838-0x1786c (52 bytes).
  It occupies 52 bytes.
  The `jal` at 0x17848 calls cacheOP with a0=sp-32, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x17864 has v0 = ?.

- `ecc_cacheop_get` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1786c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1786c-0x17890 (36 bytes).
  It occupies 36 bytes.
  The `sd` at 0x1786c stores 8 bytes to a2 (arg2 at entry) +0x0.
  The `sw` at 0x17870 stores 4 bytes to a2 (arg2 at entry) +0x8.
  The `jal` at 0x1787c calls cacheOP with a0=a2 at entry (arg2), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x17888 has v0 = ret(cacheOP).

- `ecc_display` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x17890 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x17890-0x17c48 (952 bytes).
  It occupies 952 bytes.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0x17998, `ld` at 0x17a78, `ld` at 0x17b50.
  The `ld` at 0x17c44 loads 8 bytes from a4 (arg4 at entry) +0x0.
  The `jal` at 0x17970 calls cmn_err_tag with a0=0xb91, a1=a0 at entry (arg0), a2=sym(type_values), a3=a1 at entry (arg1), a5=sym(type_values), a6=a3 at entry (arg3).
  The `jal` at 0x17a50 calls cmn_err_tag with a0=0xb90, a1=a0 at entry (arg0), a2=sym(type_values), a3=a1 at entry (arg1), a5=sym(type_values), a6=a3 at entry (arg3).
  The `jal` at 0x17b34 calls cmn_err_tag with a0=0xb92, a1=a0 at entry (arg0), a2=sym(type_values), a3=a1 at entry (arg1), a5=sym(type_values), a6=a3 at entry (arg3).
  The `jal` at 0x17c14 calls cmn_err_tag with a0=0xb93, a1=a0 at entry (arg0), a2=sym(type_values), a3=a1 at entry (arg1), a5=sym(type_values), a6=a3 at entry (arg3).
  The `beq` branch at 0x178ec targets 0x179f0, is taken when (t2(=0xffffffffc0000000) & a2) == 0, and falls through when (t2(=0xffffffffc0000000) & a2) != 0.
  The `bne` branch at 0x17904 targets 0x17aa4, is taken when a6(?) != t1(=0x40000000), and falls through when a6(?) == t1(=0x40000000).
  The `beq` branch at 0x1793c targets 0x1798c and is always taken.
  The `beq` branch at 0x17988 targets 0x179c0, is taken when t9(?) >= 0x2 (signed), and falls through when t9(?) < 0x2 (signed).
  The `beq` branch at 0x179a4 targets 0x17978, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x179ac targets 0x17944, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x179b8 targets 0x17944 and is always taken.
  The `beq` branch at 0x17a1c targets 0x17a6c and is always taken.
  The `beq` branch at 0x17a68 targets 0x17a9c, is taken when t9(?) >= 0x2 (signed), and falls through when t9(?) < 0x2 (signed).
  The `beq` branch at 0x17a80 targets 0x17a58, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x17a88 targets 0x17a24, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x17a94 targets 0x17a24 and is always taken.
  The `beq` branch at 0x17a9c targets 0x179c4 and is always taken.
  The `bne` branch at 0x17ab8 targets 0x17b80, is taken when a6(?) != t8(=0xffffffff80000000), and falls through when a6(?) == t8(=0xffffffff80000000).
  The `beq` branch at 0x17afc targets 0x17c38 and is always taken.
  The `beq` branch at 0x17b48 targets 0x17b78, is taken when s4(?) >= 0x2 (signed), and falls through when s4(?) < 0x2 (signed).
  The `beq` branch at 0x17b5c targets 0x17b3c, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x17b64 targets 0x17b04, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x17b70 targets 0x17b04 and is always taken.
  The `beq` branch at 0x17b78 targets 0x179c4 and is always taken.
  The `bne` branch at 0x17b80 targets 0x179c0, is taken when t2(=0xffffffffc0000000) != a6(?), and falls through when t2(=0xffffffffc0000000) == a6(?).
  The `beq` branch at 0x17be0 targets 0x17c1c, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `bne` branch at 0x17c28 targets 0x17bdc, is taken when s4(?) < 0x2 (signed), and falls through when s4(?) >= 0x2 (signed).
  The `beq` branch at 0x17c30 targets 0x179c4 and is always taken.
  The `beq` branch at 0x17c40 targets 0x17b54 and is always taken.
  The return at 0x179e8 has v0 = ?.

- `ecc_cleanRegion` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x17c48 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x17c48-0x17c90 (72 bytes).
  It occupies 72 bytes.
  The `jal` at 0x17c68 calls ecc_cacheOp [0x17838] with a0=0x17, a1=?, a2=?, a3=?.
  The `blez` branch at 0x17c5c targets 0x17c7c, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `bgtz` branch at 0x17c74 targets 0x17c64, is taken when s1(?) > 0 (signed), and falls through when s1(?) <= 0 (signed).
  The return at 0x17c88 has v0 = one of ?, ret(ecc_cacheOp).

- `ecc_init` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x17c90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x17c90-0x17d5c (204 bytes).
  It occupies 204 bytes.
  The `lh` at 0x17cac loads 2 bytes from abs 0xffffffffffffc3a0.
  The `sd` at 0x17d20 stores 8 bytes to table(sym(cacheErr_frames)) +0x0.
  The `sd` at 0x17d2c stores 8 bytes to ?.
  The `jal` at 0x17ca8 calls kmem_zalloc with a0=0x1000, a1=0x900, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x17cbc calls ecc_cleanRegion [0x17c48] with a0=ret(kmem_zalloc), a1=0x1000, a2=?, a3=?.
  The `jal` at 0x17d4c calls cmn_err with a0=0x0, a1=sym(.rodata)+11680, a2=sym(.rodata)+11680, a3=?.
  The `beq` branch at 0x17cb0 targets 0x17d30, is taken when v0(=ret(kmem_zalloc)) == 0, and falls through when v0(=ret(kmem_zalloc)) != 0.
  The `beq` branch at 0x17d54 targets 0x17cbc and is always taken.
  The return at 0x17d28 has v0 = ?.

- `ecc_force_cache_line_invalid` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x17d5c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x17d5c-0x17db0 (84 bytes).
  It occupies 84 bytes.
  The `jal` at 0x17d88 calls cacheOP with a0=sp-48, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x17d98 calls cacheOP with a0=sp-48, a1=?, a2=?, a3=?.
  The return at 0x17da8 has v0 = ret(cacheOP).

- `cer_to_hex` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x17db0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x17db0-0x17e54 (164 bytes).
  It occupies 164 bytes.
  4 such `lbu` accesses load 1 byte from ?, including `lbu` at 0x17dec, `lbu` at 0x17e08, `lbu` at 0x17e28.
  6 such `sb` accesses store 1 byte to ?, including `sb` at 0x17df0, `sb` at 0x17e10, `sb` at 0x17e14.
  The `beq` branch at 0x17df4 targets 0x17e14, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x17e0c targets 0x17ddc, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x17e30 targets 0x17e4c, is taken when a4(=sp-16) >= a3(?) (unsigned), and falls through when a4(=sp-16) < a3(?) (unsigned).
  The `bne` branch at 0x17e44 targets 0x17e20, is taken when a4(=sp-16) < a3(?) (unsigned), and falls through when a4(=sp-16) >= a3(?) (unsigned).
  The return at 0x17e4c has v0 = ?.

- `ecc_handler` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x17e54 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x17e54-0x18544 (1776 bytes).
  It occupies 1776 bytes.
  The `lwu` at 0x17e6c loads 4 bytes from a1 (arg1 at entry) +0x18.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x238, including `lw` at 0x17ec0, `lw` at 0x17f14.
  The `lw` at 0x17ec4 loads 4 bytes from a1 (arg1 at entry) +0x23c.
  The `sw` at 0x17f08 stores 4 bytes to ?.
  The `ld` at 0x17f0c loads 8 bytes from a1 (arg1 at entry) +0x0.
  8 such `sd` accesses store 8 bytes to ?, including `sd` at 0x17f10, `sd` at 0x17fb0, `sd` at 0x1802c.
  The `sw` at 0x17f24 stores 4 bytes to a1 (arg1 at entry) +0x238.
  The `sd` at 0x17f38 stores 8 bytes to a1 (arg1 at entry) +0x8.
  The `sd` at 0x17f40 stores 8 bytes to a1 (arg1 at entry) +0x10.
  The `ld` at 0x18028 loads 8 bytes from a1 (arg1 at entry) +0x8.
  The `ld` at 0x18030 loads 8 bytes from a1 (arg1 at entry) +0x10.
  The `sb` at 0x18044 stores 1 byte to abs 0xffffffffffffc6e0.
  The `lbu` at 0x18048 loads 1 byte from a1 (arg1 at entry) +0x26.
  The `sb` at 0x18058 stores 1 byte to a1 (arg1 at entry) +0x26.
  The `ld` at 0x18064 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sd` at 0x18070 stores 8 bytes to a0 (arg0 at entry) +0x3b8.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x18080, `ld` at 0x18094.
  The `lw` at 0x1810c loads 4 bytes from a1 (arg1 at entry) +0x28.
  The `sw` at 0x18128 stores 4 bytes to a1 (arg1 at entry) +0x28.
  The `lw` at 0x18130 loads 4 bytes from a1 (arg1 at entry) +0x2c.
  The `sw` at 0x18144 stores 4 bytes to a1 (arg1 at entry) +0x2c.
  The `lw` at 0x18278 loads 4 bytes from a1 (arg1 at entry) +0x30.
  The `sw` at 0x18294 stores 4 bytes to a1 (arg1 at entry) +0x30.
  The `lw` at 0x182e0 loads 4 bytes from a1 (arg1 at entry) +0x34.
  The `sw` at 0x182f0 stores 4 bytes to a1 (arg1 at entry) +0x34.
  The `ld` at 0x182f8 loads 8 bytes from abs 0xffffffffaff10040.
  The `ld` at 0x18308 loads 8 bytes from abs 0xffffffffaff00098.
  The `jal` at 0x17eb0 calls cer_to_hex with a0=sym(.rodata)+11680, a1=([a1+24] << 0x0), a2=0x0, a3=a3 at entry (arg3), a5=0x0.
  The `jal` at 0x17f94 calls ecc_cacheOp [0x17838] with a0=0x4, a1=?, a2=?, a3=?.
  The `jal` at 0x17fe0 calls ecc_cacheOp [0x17838] with a0=0x0, a1=table(0xa800000000000000), a2=?, a3=?.
  The `jal` at 0x17ff0 calls ecc_cacheOp [0x17838] with a0=0x0, a1=?, a2=?, a3=?.
  The `jal` at 0x18000 calls ecc_force_cache_line_invalid with a0=table(0xa800000000000000), a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x18010 calls ecc_force_cache_line_invalid with a0=table(0xa800000000000000), a1=0x1, a2=0x0, a3=?.
  The `jal` at 0x180b0 calls ecc_cacheOp [0x17838] with a0=0x13, a1=?, a2=?, a3=?.
  The `jal` at 0x1818c calls ecc_cacheOp [0x17838] with a0=0x1, a1=?, a2=0x3, a3=?.
  The `jal` at 0x181bc calls ecc_cacheOp [0x17838] with a0=0x5, a1=?, a2=?, a3=?.
  The `jal` at 0x183d8 calls maddr_to_dimm with a0=?, a1=0xc0000000, a2=0x0, a3=0x40000000, a4=0x80000000, a5=0x0.
  The `jal` at 0x1841c calls sprintf with a0=sym(cacheErr_frames), a1=sym(.rodata)+11680, a2=?, a3=ret(maddr_to_dimm).
  The `jal` at 0x18480 calls ecc_cacheOp [0x17838] with a0=0x7, a1=?, a2=?, a3=?.
  The `jal` at 0x184a4 calls ecc_cacheOp [0x17838] with a0=0x3, a1=?, a2=0x3, a3=?.
  The `jal` at 0x184b4 calls ecc_force_cache_line_invalid with a0=table(0xa800000000000000), a1=?, a2=0x3, a3=?.
  The `bgez` branch at 0x17e8c targets 0x17ec0, is taken when at(=([a1+24] << 0x22)) >= 0 (signed), and falls through when at(=([a1+24] << 0x22)) < 0 (signed).
  The `beq` branch at 0x17eb8 targets 0x180c8 and is always taken.
  The `beq` branch at 0x17ed4 targets 0x17f28, is taken when t8(=[a1+572]) == t9(?), and falls through when t8(=[a1+572]) != t9(?).
  The `bne` branch at 0x17ee0 targets 0x17f00, is taken when v0(=[a1+568]) < 0x11 (signed), and falls through when v0(=[a1+568]) >= 0x11 (signed).
  The `beq` branch at 0x17f20 targets 0x17f2c and is always taken.
  The `beq` branch at 0x17f3c targets 0x180f8, is taken when (a1(=0xc0000000) & s0(=[a1+24])) == 0, and falls through when (a1(=0xc0000000) & s0(=[a1+24])) != 0.
  The `beq` branch at 0x17f48 targets 0x1812c, is taken when v0(?) == a3(=0x40000000), and falls through when v0(?) != a3(=0x40000000).
  The `beq` branch at 0x17f54 targets 0x18270, is taken when v0(?) == a4(=0x80000000), and falls through when v0(?) != a4(=0x80000000).
  The `beq` branch at 0x17f5c targets 0x182e0, is taken when a1(=0xc0000000) == v0(?), and falls through when a1(=0xc0000000) != v0(?).
  The `bgez` branch at 0x17f84 targets 0x18020, is taken when s8(?) >= 0 (signed), and falls through when s8(?) < 0 (signed).
  The `beq` branch at 0x17f8c targets 0x1803c and is always taken.
  The `beq` branch at 0x17fac targets 0x17fdc, is taken when s2(?) >= 0x2 (unsigned), and falls through when s2(?) < 0x2 (unsigned).
  The `bne` branch at 0x17fc0 targets 0x17f94, is taken when (s0(=[a1+24]) & t9(=one of 0x5500000, 0xaa00000)) != 0, and falls through when (s0(=[a1+24]) & t9(=one of 0x5500000, 0xaa00000)) == 0.
  The `bne` branch at 0x17fd4 targets 0x17fb4, is taken when s2(?) < 0x2 (unsigned), and falls through when s2(?) >= 0x2 (unsigned).
  The `bltz` branch at 0x1801c targets 0x18038, is taken when s8(?) < 0 (signed), and falls through when s8(?) >= 0 (signed).
  The `beq` branch at 0x18040 targets 0x180a4, is taken when s3(?) == 0, and falls through when s3(?) != 0.
  The `beq` branch at 0x18050 targets 0x180a4, is taken when v0(=0x2) == a0(=[a1+38]:1), and falls through when v0(=0x2) != a0(=[a1+38]:1).
  The `bgtz` branch at 0x1809c targets 0x18074, is taken when a5(?) > 0 (signed), and falls through when a5(?) <= 0 (signed).
  The `bne` branch at 0x180c0 targets 0x180ac, is taken when s0(?) < 0x1000 (unsigned), and falls through when s0(?) >= 0x1000 (unsigned).
  The `beq` branch at 0x18124 targets 0x17fb4 and is always taken.
  The `beq` branch at 0x18140 targets 0x18360, is taken when (s7(=0x5500000) & s0(=[a1+24])) == 0, and falls through when (s7(=0x5500000) & s0(=[a1+24])) != 0.
  The `beq` branch at 0x18180 targets 0x181a8 and is always taken.
  The `beq` branch at 0x181a0 targets 0x18240, is taken when s3(?) >= 0x2 (unsigned), and falls through when s3(?) < 0x2 (unsigned).
  The `beq` branch at 0x181b4 targets 0x18194, is taken when (s0(=[a1+24]) & v0(=one of 0x5500000, 0xaa00000)) == 0, and falls through when (s0(=[a1+24]) & v0(=one of 0x5500000, 0xaa00000)) != 0.
  The `beq` branch at 0x181d8 targets 0x181f0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x181e8 targets 0x182a0, is taken when a2(=0x3) == a0(?), and falls through when a2(=0x3) != a0(?).
  The `beq` branch at 0x181f0 targets 0x18200, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x181f8 targets 0x182c0, is taken when a1(=0x2) == a4(?), and falls through when a1(=0x2) != a4(?).
  The `beq` branch at 0x18200 targets 0x1818c, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x18210 targets 0x18188, is taken when a2(=0x3) != a6(?), and falls through when a2(=0x3) == a6(?).
  The `bne` branch at 0x18218 targets 0x1818c, is taken when a1(=0x2) != a7(?), and falls through when a1(=0x2) == a7(?).
  The `beq` branch at 0x18238 targets 0x1825c and is always taken.
  The `beq` branch at 0x18268 targets 0x1801c and is always taken.
  The `beq` branch at 0x18298 targets 0x1801c and is always taken.
  The `beq` branch at 0x182b8 targets 0x1825c and is always taken.
  The `beq` branch at 0x182d8 targets 0x1825c and is always taken.
  The `beq` branch at 0x182ec targets 0x1839c, is taken when (s0(=[a1+24]) & t9(=0x12000000)) == 0, and falls through when (s0(=[a1+24]) & t9(=0x12000000)) != 0.
  The `beq` branch at 0x18300 targets 0x18430, is taken when (ra(=[0xffffffffaff10040]:8) & 0x2) == 0, and falls through when (ra(=[0xffffffffaff10040]:8) & 0x2) != 0.
  The `beq` branch at 0x18328 targets 0x183d8, is taken when at(?) == v0(?), and falls through when at(?) != v0(?).
  The `beq` branch at 0x1834c targets 0x183bc, is taken when a2(=one of 0x0, 0x1) == 0, and falls through when a2(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x18358 targets 0x1801c and is always taken.
  The `bne` branch at 0x18364 targets 0x18148, is taken when (s5(=0xaa00000) & s0(=[a1+24])) != 0, and falls through when (s5(=0xaa00000) & s0(=[a1+24])) == 0.
  The `bgez` branch at 0x1836c targets 0x18510, is taken when t9(=([a1+24] << 0x23)) >= 0 (signed), and falls through when t9(=([a1+24] << 0x23)) < 0 (signed).
  The `beq` branch at 0x18394 targets 0x1801c and is always taken.
  The `beq` branch at 0x183c0 targets 0x18450, is taken when (s0(=[a1+24]) & t8(=0x3800000)) == 0, and falls through when (s0(=[a1+24]) & t8(=0x3800000)) != 0.
  The `beq` branch at 0x183d0 targets 0x1801c and is always taken.
  The `beq` branch at 0x18428 targets 0x18348 and is always taken.
  The `beq` branch at 0x18448 targets 0x1834c and is always taken.
  The `bgez` branch at 0x18450 targets 0x1852c, is taken when t8(=([a1+24] << 0x25)) >= 0 (signed), and falls through when t8(=([a1+24] << 0x25)) < 0 (signed).
  The `beq` branch at 0x18478 targets 0x184d0 and is always taken.
  The `beq` branch at 0x18490 targets 0x184bc, is taken when (a1(?) & 0x3) == 0, and falls through when (a1(?) & 0x3) != 0.
  The `beq` branch at 0x1849c targets 0x18508, is taken when a2(=0x3) == a1(?), and falls through when a2(=0x3) != a1(?).
  The `beq` branch at 0x184c8 targets 0x1801c, is taken when s5(?) >= 0x2 (unsigned), and falls through when s5(?) < 0x2 (unsigned).
  The `bne` branch at 0x184e4 targets 0x18480, is taken when (s0(=[a1+24]) & a4(=one of 0x4000000, 0x8000000)) != 0, and falls through when (s0(=[a1+24]) & a4(=one of 0x4000000, 0x8000000)) == 0.
  The `bne` branch at 0x184f8 targets 0x184d0, is taken when s5(?) < 0x2 (unsigned), and falls through when s5(?) >= 0x2 (unsigned).
  The `beq` branch at 0x18500 targets 0x1801c and is always taken.
  The `beq` branch at 0x18508 targets 0x1801c and is always taken.
  The `beq` branch at 0x18524 targets 0x18390 and is always taken.
  The `bltz` branch at 0x1852c targets 0x1845c, is taken when t8(=([a1+24] << 0x24)) < 0 (signed), and falls through when t8(=([a1+24] << 0x24)) >= 0 (signed).
  The `beq` branch at 0x1853c targets 0x1801c and is always taken.
  The return at 0x180f0 has v0 = one of sym(.rodata)+11680, ?.

- `ecc_panic` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x18544 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x18544-0x185b4 (112 bytes).
  It occupies 112 bytes.
  The `lw` at 0x18548 loads 4 bytes from a2 (arg2 at entry) +0x18.
  The `ld` at 0x1854c loads 8 bytes from a2 (arg2 at entry) +0x0.
  The `jal` at 0x1856c calls ecc_display [0x17890] with a0=0x14, a1=a0 at entry (arg0), a2=[a2+24], a3=[a2]:8, a4=a2+8.
  The `jal` at 0x1859c calls cmn_err with a0=0x10, a1=sym(.rodata)+11680, a2=a0 at entry (arg0), a3=a1+952, a4=sym(.rodata)+11680.
  The return at 0x185ac has v0 = ret(cmn_err).

- `ecc_log` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x185b4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x185b4-0x185bc (8 bytes).
  It occupies 8 bytes.
  The return at 0x185b4 has v0 = ?.

- `ecc_printPending` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x185bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x185bc-0x186ec (304 bytes).
  It occupies 304 bytes.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1862c, `ld` at 0x18670, `ld` at 0x18674.
  7 such `lw` accesses load 4 bytes from ?, including `lw` at 0x18638, `lw` at 0x1863c, `lw` at 0x18640.
  The `lwu` at 0x18684 loads 4 bytes from ?.
  The `ld` at 0x186e8 loads 8 bytes from sym(pdaindr) +0xa90.
  The `jalr` at 0x18650 calls (unknown callee) with a0=sym(.rodata)+11680, a1=?, a2=?, a3=?.
  The `jalr` at 0x18680 calls (unknown callee) with a0=sym(.rodata)+11680, a1=?, a2=?, a3=?.
  The `beq` branch at 0x18610 targets 0x186dc and is always taken.
  The `beq` branch at 0x18624 targets 0x186b8, is taken when s4(?) >= 0x80 (signed), and falls through when s4(?) < 0x80 (signed).
  The `beq` branch at 0x18630 targets 0x18618, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x18660 targets 0x18618, is taken when s1(?) == t0(?), and falls through when s1(?) != t0(?).
  The `bne` branch at 0x186a8 targets 0x1866c, is taken when s1(?) != a2(?), and falls through when s1(?) == a2(?).
  The `beq` branch at 0x186b0 targets 0x1861c and is always taken.
  The `beq` branch at 0x186e4 targets 0x18630 and is always taken.
  The return at 0x186d4 has v0 = ?.

- `ecc_compute_sctag_ecc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x186ec (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x186ec-0x1877c (144 bytes).
  It occupies 144 bytes.
  The `ld` at 0x18730 loads 8 bytes from ?.
  The `jal` at 0x18738 calls ecc_bitcount with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x18748 targets 0x18754, is taken when (v0(=ret(ecc_bitcount)) & 0x1) == 0, and falls through when (v0(=ret(ecc_bitcount)) & 0x1) != 0.
  The `bne` branch at 0x18754 targets 0x1872c, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The return at 0x18774 has v0 = ?.

- `scache_data_bit_error` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1877c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1877c-0x188a4 (296 bytes).
  It occupies 296 bytes.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x18800, `ld` at 0x18840, `ld` at 0x18854.
  The `beq` branch at 0x187b8 targets 0x18890 and is always taken.
  The `beq` branch at 0x187c0 targets 0x1886c, is taken when s2(?) == a4(?), and falls through when s2(?) != a4(?).
  The `beq` branch at 0x187dc targets 0x18874, is taken when v0(?) >= 0x88 (signed), and falls through when v0(?) < 0x88 (signed).
  The `beq` branch at 0x187f4 targets 0x18814 and is always taken.
  The `beq` branch at 0x1880c targets 0x187c0, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x18830 targets 0x187fc, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `beq` branch at 0x18838 targets 0x18854, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x1884c targets 0x1880c and is always taken.
  The `beq` branch at 0x1885c targets 0x1880c, is taken when (v1(?) & t9(?)) == 0, and falls through when (v1(?) & t9(?)) != 0.
  The `beq` branch at 0x18864 targets 0x1880c and is always taken.
  The `beq` branch at 0x1886c targets 0x1887c and is always taken.
  The `beq` branch at 0x1889c targets 0x187e8 and is always taken.
  The return at 0x18888 has v0 = one of ?, -0x1.

- `ecc_compute_scdata_ecc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x188a4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x188a4-0x18968 (196 bytes).
  It occupies 196 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x188f8, `ld` at 0x188fc.
  The `jal` at 0x1890c calls ecc_bitcount with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x18930 calls ecc_bitcount with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1891c targets 0x18928, is taken when (v0(=ret(ecc_bitcount)) & 0x1) == 0, and falls through when (v0(=ret(ecc_bitcount)) & 0x1) != 0.
  The `bne` branch at 0x18928 targets 0x188e8, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x1894c targets 0x18958, is taken when (v0(=ret(ecc_bitcount)) & 0x1) == 0, and falls through when (v0(=ret(ecc_bitcount)) & 0x1) != 0.
  The return at 0x18960 has v0 = ?.

- `ecc_bitcount` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x18968 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x18968-0x18994 (44 bytes).
  It occupies 44 bytes.
  The `beq` branch at 0x18968 targets 0x18988, is taken when a0 == 0, and falls through when a0 != 0.
  The `bne` branch at 0x18978 targets 0x18970, is taken when (a0(?) & at(?)) != 0, and falls through when (a0(?) & at(?)) == 0.
  The return at 0x18980 has v0 = ?.
  The return at 0x1898c has v0 = 0x0.

- `ecc_scache_bits_in_error` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x18994 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x18994-0x189e8 (84 bytes).
  It occupies 84 bytes.
  The `jal` at 0x189ac calls ecc_bitcount with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x189a0 targets 0x189d8, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x189c0 targets 0x189e0, is taken when v0(=ret(ecc_bitcount)) == a1(=0x1), and falls through when v0(=ret(ecc_bitcount)) != a1(=0x1).
  The `beq` branch at 0x189c8 targets 0x189e0, is taken when v0(=ret(ecc_bitcount)) == a0(=0x3), and falls through when v0(=ret(ecc_bitcount)) != a0(=0x3).
  The `beq` branch at 0x189d0 targets 0x189e0, is taken when v0(=ret(ecc_bitcount)) == a3(=0x5), and falls through when v0(=ret(ecc_bitcount)) != a3(=0x5).
  The `beq` branch at 0x189e0 targets 0x189d8 and is always taken.
  The return at 0x189d8 has v0 = one of 0x0, 0x1, 0x2.

- `warn` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x189e8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x189e8-0x18a34 (76 bytes).
  It occupies 76 bytes.
  The `jal` at 0x18a20 calls icmn_err_tag with a0=0x0, a1=0x14, a2=a0 at entry (arg0), a3=sp-56.
  The return at 0x18a2c has v0 = ret(icmn_err_tag).

- `engr_dvt_thread` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x18a34 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x18a34-0x18a74 (64 bytes).
  It occupies 64 bytes.
  The `jal` at 0x18a58 calls cmn_err with a0=0x5, a1=sym(.rodata)+11680, a2=sym(.rodata)+11680, a3=a3 at entry (arg3).
  The `jal` at 0x18a60 calls sthread_exit with a0=?, a1=?, a2=?, a3=?.
  The return at 0x18a6c has v0 = ret(sthread_exit).

- `dumptlb` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x18a74 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x18a74-0x18b00 (140 bytes).
  It occupies 140 bytes.
  The `sw` at 0x18ae8 stores 4 bytes to ?.
  The `jal` at 0x18ac8 calls tlbgetent with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x18a98 targets 0x18aec, is taken when a3(=[sym(tlbdumptbl)]:8) == 0, and falls through when a3(=[sym(tlbdumptbl)]:8) != 0.
  The `bne` branch at 0x18ad8 targets 0x18aac, is taken when s0(?) < 0x40 (signed), and falls through when s0(?) >= 0x40 (signed).
  The return at 0x18af8 has v0 = one of ?, ret(tlbgetent).

- `checkAllTlbsDumped` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x18b00 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x18b00-0x18b9c (156 bytes).
  It occupies 156 bytes.
  The `lw` at 0x18b6c loads 4 bytes from ?.
  The `jal` at 0x18b40 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x18b7c calls printf with a0=sym(.rodata)+12680, a1=?, a2=?, a3=?.
  The `beq` branch at 0x18b10 targets 0x18b8c, is taken when at(=[sym(tlbdumptbl)]:8) == 0, and falls through when at(=[sym(tlbdumptbl)]:8) != 0.
  The `blez` branch at 0x18b18 targets 0x18b90, is taken when a1(=[sym(maxcpus)]) <= 0 (signed), and falls through when a1(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x18b24 targets 0x18b40 and is always taken.
  The `beq` branch at 0x18b38 targets 0x18b8c, is taken when s0(?) >= v0(=[sym(maxcpus)]) (signed), and falls through when s0(?) < v0(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x18b48 targets 0x18b30, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0x18b70 targets 0x18b30, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x18b84 targets 0x18b30 and is always taken.
  The return at 0x18b94 has v0 = ?.
  The instructions from 0x18b2c to 0x18b2c are not reached by any path from the entry, and their branches are not listed.

- `VEC_nofault` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x18ba0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x18ba0-0x18bb4 (20 bytes).
  It occupies 20 bytes.
  The `jal` at 0x18ba4 calls trap_nofault with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=s0 at entry, a3=a3 at entry (arg3).
  Calls exception_exit via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x18bac).

- `VEC_cpfault` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x18bc0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x18bc0-0x18f28 (872 bytes).
  It occupies 872 bytes.
  3 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x18be4, `ld` at 0x18d5c, `ld` at 0x18ed4.
  2 such `ld` accesses load 8 bytes from [-0x3fe8]:8 +0x3e0, including `ld` at 0x18bf0, `ld` at 0x18d60.
  The `sw` at 0x18bf4 stores 4 bytes to [[-0x3fe8]:8+992]:8 +0x138.
  The `sd` at 0x18bfc stores 8 bytes to ?.
  The `ld` at 0x18c00 loads 8 bytes from abs 0xffffffffffffc460.
  The `ld` at 0x18c14 loads 8 bytes from [-0x3ba0]:8 +0x318.
  The `lb` at 0x18c18 loads 1 byte from [[-0x3ba0]:8+792]:8 +0x9c.
  The `ld` at 0x18c40 loads 8 bytes from [-0x3ba0]:8 +0x3e0.
  The `sw` at 0x18c48 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x130.
  The `swc1` at 0x18c54 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x124.
  The `swc1` at 0x18c58 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x11c.
  The `swc1` at 0x18c5c stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x114.
  The `swc1` at 0x18c60 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x10c.
  The `swc1` at 0x18c64 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x104.
  The `swc1` at 0x18c68 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0xfc.
  The `swc1` at 0x18c6c stores 4 bytes to [[-0x3ba0]:8+992]:8 +0xf4.
  The `swc1` at 0x18c70 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0xec.
  The `swc1` at 0x18c74 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0xe4.
  The `swc1` at 0x18c78 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0xdc.
  The `swc1` at 0x18c7c stores 4 bytes to [[-0x3ba0]:8+992]:8 +0xd4.
  The `swc1` at 0x18c80 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0xcc.
  The `swc1` at 0x18c84 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0xc4.
  The `swc1` at 0x18c88 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0xbc.
  The `swc1` at 0x18c8c stores 4 bytes to [[-0x3ba0]:8+992]:8 +0xb4.
  The `swc1` at 0x18c90 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0xac.
  The `swc1` at 0x18c94 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0xa4.
  The `swc1` at 0x18c98 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x9c.
  The `swc1` at 0x18c9c stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x94.
  The `swc1` at 0x18ca0 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x8c.
  The `swc1` at 0x18ca4 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x84.
  The `swc1` at 0x18ca8 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x7c.
  The `swc1` at 0x18cac stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x74.
  The `swc1` at 0x18cb0 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x6c.
  The `swc1` at 0x18cb4 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x64.
  The `swc1` at 0x18cb8 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x5c.
  The `swc1` at 0x18cbc stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x54.
  The `swc1` at 0x18cc0 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x4c.
  The `swc1` at 0x18cc4 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x44.
  The `swc1` at 0x18cc8 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x3c.
  The `swc1` at 0x18ccc stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x34.
  The `swc1` at 0x18cd0 stores 4 bytes to [[-0x3ba0]:8+992]:8 +0x2c.
  The `sdc1` at 0x18cdc stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x120.
  The `sdc1` at 0x18ce0 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x118.
  The `sdc1` at 0x18ce4 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x110.
  The `sdc1` at 0x18ce8 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x108.
  The `sdc1` at 0x18cec stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x100.
  The `sdc1` at 0x18cf0 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0xf8.
  The `sdc1` at 0x18cf4 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0xf0.
  The `sdc1` at 0x18cf8 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0xe8.
  The `sdc1` at 0x18cfc stores 8 bytes to [[-0x3ba0]:8+992]:8 +0xe0.
  The `sdc1` at 0x18d00 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0xd8.
  The `sdc1` at 0x18d04 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0xd0.
  The `sdc1` at 0x18d08 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0xc8.
  The `sdc1` at 0x18d0c stores 8 bytes to [[-0x3ba0]:8+992]:8 +0xc0.
  The `sdc1` at 0x18d10 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0xb8.
  The `sdc1` at 0x18d14 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0xb0.
  The `sdc1` at 0x18d18 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0xa8.
  The `sdc1` at 0x18d1c stores 8 bytes to [[-0x3ba0]:8+992]:8 +0xa0.
  The `sdc1` at 0x18d20 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x98.
  The `sdc1` at 0x18d24 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x90.
  The `sdc1` at 0x18d28 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x88.
  The `sdc1` at 0x18d2c stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x80.
  The `sdc1` at 0x18d30 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x78.
  The `sdc1` at 0x18d34 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x70.
  The `sdc1` at 0x18d38 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x68.
  The `sdc1` at 0x18d3c stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x60.
  The `sdc1` at 0x18d40 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x58.
  The `sdc1` at 0x18d44 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x50.
  The `sdc1` at 0x18d48 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x48.
  The `sdc1` at 0x18d4c stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x40.
  The `sdc1` at 0x18d50 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x38.
  The `sdc1` at 0x18d54 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x30.
  The `sdc1` at 0x18d58 stores 8 bytes to [[-0x3ba0]:8+992]:8 +0x28.
  The `ld` at 0x18d64 loads 8 bytes from [-0x3fe8]:8 +0x318.
  The `lb` at 0x18d68 loads 1 byte from [[-0x3fe8]:8+792]:8 +0x9c.
  The `lwc1` at 0x18d9c loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x2c.
  The `lwc1` at 0x18da0 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x34.
  The `lwc1` at 0x18da4 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x3c.
  The `lwc1` at 0x18da8 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x44.
  The `lwc1` at 0x18dac loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x4c.
  The `lwc1` at 0x18db0 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x54.
  The `lwc1` at 0x18db4 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x5c.
  The `lwc1` at 0x18db8 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x64.
  The `lwc1` at 0x18dbc loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x6c.
  The `lwc1` at 0x18dc0 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x74.
  The `lwc1` at 0x18dc4 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x7c.
  The `lwc1` at 0x18dc8 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x84.
  The `lwc1` at 0x18dcc loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x8c.
  The `lwc1` at 0x18dd0 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x94.
  The `lwc1` at 0x18dd4 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x9c.
  The `lwc1` at 0x18dd8 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0xa4.
  The `lwc1` at 0x18ddc loads 4 bytes from [[-0x3fe8]:8+992]:8 +0xac.
  The `lwc1` at 0x18de0 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0xb4.
  The `lwc1` at 0x18de4 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0xbc.
  The `lwc1` at 0x18de8 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0xc4.
  The `lwc1` at 0x18dec loads 4 bytes from [[-0x3fe8]:8+992]:8 +0xcc.
  The `lwc1` at 0x18df0 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0xd4.
  The `lwc1` at 0x18df4 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0xdc.
  The `lwc1` at 0x18df8 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0xe4.
  The `lwc1` at 0x18dfc loads 4 bytes from [[-0x3fe8]:8+992]:8 +0xec.
  The `lwc1` at 0x18e00 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0xf4.
  The `lwc1` at 0x18e04 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0xfc.
  The `lwc1` at 0x18e08 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x104.
  The `lwc1` at 0x18e0c loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x10c.
  The `lwc1` at 0x18e10 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x114.
  The `lwc1` at 0x18e14 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x11c.
  The `lwc1` at 0x18e18 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x124.
  The `ldc1` at 0x18e24 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x28.
  The `ldc1` at 0x18e28 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x30.
  The `ldc1` at 0x18e2c loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x38.
  The `ldc1` at 0x18e30 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x40.
  The `ldc1` at 0x18e34 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x48.
  The `ldc1` at 0x18e38 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x50.
  The `ldc1` at 0x18e3c loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x58.
  The `ldc1` at 0x18e40 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x60.
  The `ldc1` at 0x18e44 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x68.
  The `ldc1` at 0x18e48 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x70.
  The `ldc1` at 0x18e4c loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x78.
  The `ldc1` at 0x18e50 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x80.
  The `ldc1` at 0x18e54 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x88.
  The `ldc1` at 0x18e58 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x90.
  The `ldc1` at 0x18e5c loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x98.
  The `ldc1` at 0x18e60 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0xa0.
  The `ldc1` at 0x18e64 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0xa8.
  The `ldc1` at 0x18e68 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0xb0.
  The `ldc1` at 0x18e6c loads 8 bytes from [[-0x3fe8]:8+992]:8 +0xb8.
  The `ldc1` at 0x18e70 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0xc0.
  The `ldc1` at 0x18e74 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0xc8.
  The `ldc1` at 0x18e78 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0xd0.
  The `ldc1` at 0x18e7c loads 8 bytes from [[-0x3fe8]:8+992]:8 +0xd8.
  The `ldc1` at 0x18e80 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0xe0.
  The `ldc1` at 0x18e84 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0xe8.
  The `ldc1` at 0x18e88 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0xf0.
  The `ldc1` at 0x18e8c loads 8 bytes from [[-0x3fe8]:8+992]:8 +0xf8.
  The `ldc1` at 0x18e90 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x100.
  The `ldc1` at 0x18e94 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x108.
  The `ldc1` at 0x18e98 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x110.
  The `ldc1` at 0x18e9c loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x118.
  The `ldc1` at 0x18ea0 loads 8 bytes from [[-0x3fe8]:8+992]:8 +0x120.
  The `lw` at 0x18ea8 loads 4 bytes from [[-0x3fe8]:8+992]:8 +0x130.
  The `sd` at 0x18edc stores 8 bytes to abs 0xffffffffffffc460.
  The `ld` at 0x18f04 loads 8 bytes from ?.
  Calls exception_exit via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=[-0x3fe8]:8 (`j` at 0x18ee8).
  Calls exception_exit via direct with a0=a0 at entry (arg0), a1=[-0x3fe8]:8, a2=[-0x3ba0]:8, a3=a3 at entry (arg3) (`j` at 0x18ef0).
  Calls VEC_trap via direct with a0=a0 at entry (arg0), a1=0x8c, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x18ef8).
  The `jal` at 0x18f20 calls cmn_err with a0=0x0, a1=sym(.data)+15952, a2=?, a3=?.
  The `beq` branch at 0x18bc4 targets 0x18f00, is taken when (s0 & 0x18) == 0, and falls through when (s0 & 0x18) != 0.
  The `bne` branch at 0x18bdc targets 0x18ef8, is taken when a1(?) != at(=0x1), and falls through when a1(?) == at(=0x1).
  The `beq` branch at 0x18c04 targets 0x18ef0, is taken when a2(=[-0x3ba0]:8) == a1(=[-0x3fe8]:8), and falls through when a2(=[-0x3ba0]:8) != a1(=[-0x3fe8]:8).
  The `beq` branch at 0x18c0c targets 0x18d5c, is taken when a2(=[-0x3ba0]:8) == 0, and falls through when a2(=[-0x3ba0]:8) != 0.
  The `beq` branch at 0x18c20 targets 0x18c2c, is taken when (t0(=[[[-0x3ba0]:8+792]:8+156]:1) & 0xc) == 0, and falls through when (t0(=[[[-0x3ba0]:8+792]:8+156]:1) & 0xc) != 0.
  The `bne` branch at 0x18c4c targets 0x18cdc, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x18cd4 targets 0x18d5c and is always taken.
  The `beq` branch at 0x18d74 targets 0x18d80, is taken when (t0(=[[[-0x3fe8]:8+792]:8+156]:1) & 0xc) == 0, and falls through when (t0(=[[[-0x3fe8]:8+792]:8+156]:1) & 0xc) != 0.
  The `bne` branch at 0x18d94 targets 0x18e24, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `beq` branch at 0x18e1c targets 0x18ea4 and is always taken.

- `hwperf_init` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x18f28 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x18f28-0x19038 (272 bytes).
  It occupies 272 bytes.
  The `sw` at 0x18f60 stores 4 bytes to sym(pdaindr) +0xf40.
  The `sh` at 0x18f68 stores 2 bytes to sym(pdaindr) +0xf3e.
  The `sh` at 0x18f70 stores 2 bytes to sym(pdaindr) +0xf3c.
  The `sd` at 0x18f7c stores 8 bytes to sym(pdaindr) +0xf30.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0x18f88, `ld` at 0x18f90, `ld` at 0x18fd8.
  The `sd` at 0x18fe0 stores 8 bytes to ?.
  The `jal` at 0x18f44 calls spinlock_init with a0=sym(.bss)+3888, a1=sym(.rodata)+12728, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x18f9c calls init_mutex with a0=?, a1=0x0, a2=sym(.rodata)+12728, a3=?.
  The `jal` at 0x18fb8 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x18fc8 calls hwperf_cpu_monitor_info_alloc [0x1a720] with a0=?, a1=[sym(maxcpus)], a2=?, a3=?.
  The `jal` at 0x18ff0 calls hwperf_cpu_monitor_info_alloc [0x1a720] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x19014 calls cmn_err with a0=0x0, a1=sym(.rodata)+12728, a2=?, a3=?.
  The `jal` at 0x19028 calls cmn_err with a0=0x0, a1=sym(.rodata)+12728, a2=?, a3=?.
  The `blez` branch at 0x18f78 targets 0x18fec, is taken when a1(=[sym(maxcpus)]) <= 0 (signed), and falls through when a1(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x18f80 targets 0x18fb8 and is always taken.
  The `beq` branch at 0x18fb0 targets 0x18fec, is taken when s0(?) >= a1(=[sym(maxcpus)]) (signed), and falls through when s0(?) < a1(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x18fc0 targets 0x18fa8, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0x18fdc targets 0x18f88, is taken when v0(=ret(hwperf_cpu_monitor_info_alloc)) != 0, and falls through when v0(=ret(hwperf_cpu_monitor_info_alloc)) == 0.
  The `beq` branch at 0x18fe4 targets 0x19014 and is always taken.
  The `beq` branch at 0x18ff8 targets 0x19024, is taken when v0(=ret(hwperf_cpu_monitor_info_alloc)) == 0, and falls through when v0(=ret(hwperf_cpu_monitor_info_alloc)) != 0.
  The `beq` branch at 0x1901c targets 0x18f8c and is always taken.
  The `beq` branch at 0x19030 targets 0x19004 and is always taken.
  The return at 0x1900c has v0 = one of ret(hwperf_cpu_monitor_info_alloc), ret(cmn_err).

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

- `hwperf_enable_sys_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19088 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19088-0x190bc (52 bytes).
  It occupies 52 bytes.
  The `jal` at 0x190a8 calls hwperf_enable_counters with a0=[sym(sys_hwperf_mon)]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=(a2 | 0x8), a4=a3 at entry (arg3).
  The return at 0x190b4 has v0 = ret(hwperf_enable_counters).

- `hwperf_enable_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x190bc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x190bc-0x19274 (440 bytes).
  It occupies 440 bytes.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc0, including `lw` at 0x19110, `lw` at 0x191e0.
  The `lh` at 0x19158 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0x191e8 stores 2 bytes to a0 (arg0 at entry) +0x16.
  The `sh` at 0x191ec stores 2 bytes to a0 (arg0 at entry) +0xc.
  The `lw` at 0x191f0 loads 4 bytes from ?.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x19204, `sw` at 0x19268.
  3 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x0, including `sh` at 0x19214, `sh` at 0x19220, `sh` at 0x19238.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x18, including `lw` at 0x19248, `lw` at 0x19258.
  The `sw` at 0x19254 stores 4 bytes to a4 (arg4 at entry) +0x0.
  The `jal` at 0x190ec calls cap_able with a0=0x2000000000, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x19150 calls mutex_lock with a0=a0+32, a1=0x19, a2=?, a3=?.
  The `jal` at 0x19168 calls mutex_unlock with a0=a0+32, a1=?, a2=?, a3=?.
  The `jal` at 0x19184 calls hwperf_get_access with a0=a0 at entry (arg0), a1=a3 at entry (arg3), a2=?, a3=?.
  The `jal` at 0x19194 calls mutex_unlock with a0=a0+32, a1=?, a2=?, a3=?.
  The `jal` at 0x191b4 calls r1nk_perf_init_counters with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=?.
  The `jal` at 0x191c8 calls hwperf_release_access with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a7=0x81.
  The `jal` at 0x191d0 calls mutex_unlock with a0=a0+32, a1=?, a2=?, a3=?.
  The `jal` at 0x19234 calls hwperf_initiate_startup with a0=a0 at entry (arg0), a1=?, a2=?, a3=-0x11, a7=0x81.
  The `jal` at 0x19240 calls mutex_unlock with a0=a0+32, a1=?, a2=?, a3=?.
  The `beq` branch at 0x190f8 targets 0x19108, is taken when (s1(=a3) & 0x8) == 0, and falls through when (s1(=a3) & 0x8) != 0.
  The `beq` branch at 0x19100 targets 0x191a4, is taken when v0(=ret(cap_able)) == 0, and falls through when v0(=ret(cap_able)) != 0.
  The `beq` branch at 0x19108 targets 0x19178, is taken when s3(=a2) == 0, and falls through when s3(=a2) != 0.
  The `bltz` branch at 0x19114 targets 0x19124, is taken when v0(=[a1+192]) < 0 (signed), and falls through when v0(=[a1+192]) >= 0 (signed).
  The `bne` branch at 0x1911c targets 0x19148, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `beq` branch at 0x19160 targets 0x19184, is taken when (a2(=[a0]:2) & 0x8) == 0, and falls through when (a2(=[a0]:2) & 0x8) != 0.
  The `beq` branch at 0x19170 targets 0x19128 and is always taken.
  The `beq` branch at 0x1917c targets 0x19110 and is always taken.
  The `beq` branch at 0x1918c targets 0x191ac, is taken when v0(=ret(hwperf_get_access)) == 0, and falls through when v0(=ret(hwperf_get_access)) != 0.
  The `beq` branch at 0x1919c targets 0x19128 and is always taken.
  The `beq` branch at 0x191a4 targets 0x19128 and is always taken.
  The `beq` branch at 0x191c0 targets 0x191e0, is taken when v0(=ret(r1nk_perf_init_counters)) == 0, and falls through when v0(=ret(r1nk_perf_init_counters)) != 0.
  The `beq` branch at 0x191d8 targets 0x19128 and is always taken.
  The `beq` branch at 0x191fc targets 0x19258, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x19210 targets 0x19224, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0x19250 targets 0x19128 and is always taken.
  The `bltz` branch at 0x1925c targets 0x1926c, is taken when a2(=[a0+24]) < 0 (signed), and falls through when a2(=[a0+24]) >= 0 (signed).
  The `beq` branch at 0x19264 targets 0x19208 and is always taken.
  The `beq` branch at 0x1926c targets 0x19264 and is always taken.
  The return at 0x19140 has v0 = one of 0x16, 0x10, ret(hwperf_get_access), 0x1, ret(r1nk_perf_init_counters), 0x0.

- `hwperf_disable_sys_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19274 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19274-0x19290 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x1927c calls hwperf_disable_counters with a0=[sym(sys_hwperf_mon)]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x19288 has v0 = ret(hwperf_disable_counters).

- `hwperf_disable_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19290 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19290-0x193b0 (288 bytes).
  It occupies 288 bytes.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x0, including `lh` at 0x192bc, `lh` at 0x19350.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x0, including `sh` at 0x192e8, `sh` at 0x1939c.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x19310, `ld` at 0x19314.
  The `lh` at 0x19318 loads 2 bytes from ?.
  The `sh` at 0x19320 stores 2 bytes to ?.
  The `lw` at 0x19360 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `sw` at 0x19368 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `jal` at 0x192b4 calls mutex_lock with a0=a0+32, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x192fc calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x19338 calls hwperf_read_counters with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x19340 calls hwperf_check_release with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x19348 calls hwperf_release_access with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1936c calls mutex_unlock with a0=a0+32, a1=?, a2=?, a3=?.
  The `jal` at 0x193a0 calls mutex_unlock with a0=a0+32, a1=?, a2=?, a3=?.
  The `beq` branch at 0x192d8 targets 0x193a0, is taken when (v0(=[a0]:2) & 0xf) == 0, and falls through when (v0(=[a0]:2) & 0xf) != 0.
  The `beq` branch at 0x192e4 targets 0x19338, is taken when (v0(?) & 0x2) == 0, and falls through when (v0(?) & 0x2) != 0.
  The `blez` branch at 0x192f0 targets 0x19338, is taken when a1(=[sym(maxcpus)]) <= 0 (signed), and falls through when a1(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x19304 targets 0x19324, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0x19330 targets 0x192fc, is taken when s0(?) < a3(=[sym(maxcpus)]) (signed), and falls through when s0(?) >= a3(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x19358 targets 0x19398, is taken when (v0(=[a0]:2) & 0x40) == 0, and falls through when (v0(=[a0]:2) & 0x40) != 0.
  The `beq` branch at 0x19398 targets 0x19360 and is always taken.
  The `beq` branch at 0x193a8 targets 0x19378 and is always taken.
  The return at 0x19390 has v0 = 0x0.

- `hwperf_parent_accumulates` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x193b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x193b0-0x193e4 (52 bytes).
  It occupies 52 bytes.
  The `lh` at 0x193b8 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0x193c8 stores 2 bytes to a0 (arg0 at entry) +0x0.
  The `lw` at 0x193cc loads 4 bytes from a0 (arg0 at entry) +0x18.
  2 such `sw` accesses store 4 bytes to a1 (arg1 at entry) +0x0, including `sw` at 0x193d0, `sw` at 0x193e0.
  The `beq` branch at 0x193b0 targets 0x193dc, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x193c0 targets 0x193cc, is taken when (a3(=[a0]:2) & 0xf) == 0, and falls through when (a3(=[a0]:2) & 0xf) != 0.
  The `beq` branch at 0x193dc targets 0x193d4 and is always taken.
  The return at 0x193d4 has v0 = 0x0.

- `hwperf_change_sys_control` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x193e4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x193e4-0x19414 (48 bytes).
  It occupies 48 bytes.
  The `jal` at 0x19400 calls hwperf_change_control with a0=[sym(sys_hwperf_mon)]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The return at 0x1940c has v0 = ret(hwperf_change_control).

- `cpumon_alloc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19414 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19414-0x19528 (276 bytes).
  It occupies 276 bytes.
  3 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x478, including `ld` at 0x19414, `ld` at 0x19498, `ld` at 0x19524.
  The `ld` at 0x1944c loads 8 bytes from a0 (arg0 at entry) +0x318.
  The `sd` at 0x19460 stores 8 bytes to a0 (arg0 at entry) +0x478.
  The `ld` at 0x194a8 loads 8 bytes from [a0+792]:8 +0xa8.
  The `lw` at 0x194b4 loads 4 bytes from ret(hwperf_cpu_monitor_info_alloc) +0x4.
  The `lh` at 0x194b8 loads 2 bytes from ret(hwperf_cpu_monitor_info_alloc) +0x0.
  The `sw` at 0x194c4 stores 4 bytes to ret(hwperf_cpu_monitor_info_alloc) +0x4.
  The `sh` at 0x194d0 stores 2 bytes to ret(hwperf_cpu_monitor_info_alloc) +0x0.
  The `sd` at 0x194d4 stores 8 bytes to [a0+792]:8 +0xa8.
  The `jal` at 0x19478 calls hwperf_cpu_monitor_info_alloc [0x1a720] with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x19490 calls mutex_bitlock with a0=[a0+792]:8+148, a1=0x1, a2=?, a3=?.
  The `jal` at 0x194d8 calls mutex_bitunlock with a0=[a0+792]:8+148, a1=0x1, a2=ret(mutex_bitlock), a3=?.
  The `jal` at 0x194ec calls mutex_bitunlock with a0=[a0+792]:8+148, a1=0x1, a2=ret(mutex_bitlock), a3=?.
  The `jal` at 0x194fc calls hwperf_cpu_monitor_info_free with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x19424 targets 0x19438, is taken when v0(=[a0+1144]:8) == 0, and falls through when v0(=[a0+1144]:8) != 0.
  The `beq` branch at 0x19458 targets 0x19474 and is always taken.
  The `beq` branch at 0x1946c targets 0x194e8, is taken when s0(=one of 0x0, 0x1) == 0, and falls through when s0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x19484 targets 0x19474, is taken when v0(=ret(hwperf_cpu_monitor_info_alloc)) == 0, and falls through when v0(=ret(hwperf_cpu_monitor_info_alloc)) != 0.
  The `bne` branch at 0x194a0 targets 0x1946c, is taken when t8(=[a0+1144]:8) != 0, and falls through when t8(=[a0+1144]:8) == 0.
  The `bne` branch at 0x194ac targets 0x19460, is taken when t9(=[[a0+792]:8+168]:8) != 0, and falls through when t9(=[[a0+792]:8+168]:8) == 0.
  The `beq` branch at 0x194e0 targets 0x19468 and is always taken.
  The `beq` branch at 0x194f4 targets 0x19508, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x19520 targets 0x1942c and is always taken.
  The return at 0x19430 has v0 = [a0+1144]:8.

- `hwperf_change_control` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19528 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19528-0x19584 (92 bytes).
  It occupies 92 bytes.
  The `jal` at 0x1953c calls hwperf_disable_counters with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x19564 calls hwperf_enable_counters with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x0, a3=a2 at entry (arg2), a4=a3 at entry (arg3).
  The `beq` branch at 0x19544 targets 0x19558, is taken when v0(=ret(hwperf_disable_counters)) == 0, and falls through when v0(=ret(hwperf_disable_counters)) != 0.
  The `beq` branch at 0x1956c targets 0x1957c, is taken when v0(=ret(hwperf_enable_counters)) == 0, and falls through when v0(=ret(hwperf_enable_counters)) != 0.
  The `beq` branch at 0x19574 targets 0x19550 and is always taken.
  The `beq` branch at 0x1957c targets 0x1954c and is always taken.
  The return at 0x19550 has v0 = one of ?, ret(hwperf_enable_counters).

- `hwperf_sys_control_info` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19584 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19584-0x195b4 (48 bytes).
  It occupies 48 bytes.
  The `jal` at 0x195a0 calls hwperf_control_info with a0=[sym(sys_hwperf_mon)]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a2 at entry (arg2).
  The return at 0x195ac has v0 = ret(hwperf_control_info).

- `hwperf_control_info` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x195b4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x195b4-0x19704 (336 bytes).
  It occupies 336 bytes.
  The `lh` at 0x195ec loads 2 bytes from a0 (arg0 at entry) +0x0.
  5 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x70, including `lh` at 0x195fc, `lh` at 0x1961c, `lh` at 0x19640.
  2 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x19614, `lhu` at 0x19638.
  2 such `sh` accesses store 2 bytes to ?, including `sh` at 0x19618, `sh` at 0x1963c.
  The `lh` at 0x1965c loads 2 bytes from a0 (arg0 at entry) +0xc.
  The `sw` at 0x19660 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `sw` at 0x1967c stores 4 bytes to ?.
  The `lw` at 0x19694 loads 4 bytes from ?.
  The `lw` at 0x196b4 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `sw` at 0x196c0 stores 4 bytes to a3 (arg3 at entry) +0x0.
  The `lw` at 0x19700 loads 4 bytes from a0 (arg0 at entry) +0xb4.
  The `jal` at 0x195e4 calls mutex_lock with a0=a0+32, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x196bc calls mutex_unlock with a0=a0+32, a1=?, a2=0xffffffff80000000, a3=?.
  The `jal` at 0x196e4 calls mutex_unlock with a0=a0+32, a1=?, a2=0xffffffff80000000, a3=?.
  The `beq` branch at 0x195f4 targets 0x196e4, is taken when (at(=[a0]:2) & 0xf) == 0, and falls through when (at(=[a0]:2) & 0xf) != 0.
  The `blez` branch at 0x19600 targets 0x19654, is taken when v0(=[a0+112]:2) <= 0 (signed), and falls through when v0(=[a0+112]:2) > 0 (signed).
  The `beq` branch at 0x19628 targets 0x19654, is taken when v0(?) >= v1(=[a0+112]:2) (signed), and falls through when v0(?) < v1(=[a0+112]:2) (signed).
  The `bne` branch at 0x1964c targets 0x1960c, is taken when v0(?) < a3(=[a0+112]:2) (signed), and falls through when v0(?) >= a3(=[a0+112]:2) (signed).
  The `beq` branch at 0x19654 targets 0x196b4, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `blez` branch at 0x19668 targets 0x196b0, is taken when a6(=[a0+112]:2) <= 0 (signed), and falls through when a6(=[a0+112]:2) > 0 (signed).
  The `beq` branch at 0x19670 targets 0x196f4 and is always taken.
  The `beq` branch at 0x1968c targets 0x196b0, is taken when v0(?) >= t1(=[a0+112]:2) (signed), and falls through when v0(?) < t1(=[a0+112]:2) (signed).
  The `bne` branch at 0x196a0 targets 0x19678, is taken when a7(?) != 0, and falls through when a7(?) == 0.
  The `beq` branch at 0x196a8 targets 0x1967c and is always taken.
  The `beq` branch at 0x196ec targets 0x196c8 and is always taken.
  The `beq` branch at 0x196fc targets 0x19698 and is always taken.
  The return at 0x196dc has v0 = one of 0x0, 0x16.

- `hwperf_get_cpu_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19704 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19704-0x1978c (136 bytes).
  It occupies 136 bytes.
  The `lhu` at 0x19710 loads 2 bytes from sym(pdaindr) +0xf3c.
  The `ld` at 0x1975c loads 8 bytes from (sym(pdaindr) + (a0 << 0x4)) +0x8.
  The `ld` at 0x19760 loads 8 bytes from [(sym(pdaindr) + (a0 << 0x4))+8]:8 +0x6d0.
  The `jal` at 0x19740 calls cpu_enabled with a0=?, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=0x16.
  The `jal` at 0x19778 calls hwperf_get_counters with a0=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1744]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?, a5=sym(pdaindr).
  The `beq` branch at 0x19724 targets 0x19738, is taken when at(=[sym(.bss)+3900]:2) == v0(=0x8), and falls through when at(=[sym(.bss)+3900]:2) != v0(=0x8).
  The `beq` branch at 0x19748 targets 0x19768, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0x19764 targets 0x19774, is taken when a0(=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1744]:8) != 0, and falls through when a0(=[[(sym(pdaindr) + (a0 << 0x4))+8]:8+1744]:8) == 0.
  The `beq` branch at 0x1976c targets 0x1972c and is always taken.
  The `beq` branch at 0x19784 targets 0x1972c and is always taken.
  The return at 0x19730 has v0 = one of 0x16, ret(hwperf_get_counters).

- `hwperf_get_sys_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1978c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1978c-0x197b4 (40 bytes).
  It occupies 40 bytes.
  The `jal` at 0x197a0 calls hwperf_get_counters with a0=[sym(sys_hwperf_mon)]:8, a1=a0 at entry (arg0), a2=a1 at entry (arg1), a3=a3 at entry (arg3).
  The return at 0x197ac has v0 = ret(hwperf_get_counters).

- `hwperf_get_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x197b4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x197b4-0x19884 (208 bytes).
  It occupies 208 bytes.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x70, including `lh` at 0x197ec, `lh` at 0x1983c.
  The `ld` at 0x19810 loads 8 bytes from ?.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x19814, `sd` at 0x19838.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x19818, `lw` at 0x19824.
  The `lw` at 0x19860 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `sw` at 0x19868 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jal` at 0x197dc calls mutex_lock with a0=a0+32, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x197e4 calls hwperf_read_counters with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x19864 calls mutex_unlock with a0=a0+32, a1=?, a2=?, a3=?.
  The `blez` branch at 0x197f4 targets 0x1985c, is taken when at(=[a0+112]:2) <= 0 (signed), and falls through when at(=[a0+112]:2) > 0 (signed).
  The `beq` branch at 0x1981c targets 0x1983c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x19854 targets 0x19810, is taken when a3(?) < t1(=[a0+112]:2) (signed), and falls through when a3(?) >= t1(=[a0+112]:2) (signed).
  The return at 0x1987c has v0 = 0x0.

- `hwperf_plus_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19884 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19884-0x1996c (232 bytes).
  It occupies 232 bytes.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x70, including `lh` at 0x198c0, `lh` at 0x19918.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x198e0, `lw` at 0x198f0.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x198ec, `ld` at 0x1990c.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x19904, `sd` at 0x19914.
  The `lw` at 0x19934 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x19938 loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `sw` at 0x19948 stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jal` at 0x198b0 calls mutex_lock with a0=a0+32, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x198b8 calls hwperf_read_counters with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x19954 calls mutex_unlock with a0=a0+32, a1=?, a2=?, a3=?.
  The `blez` branch at 0x198c4 targets 0x19934, is taken when at(=[a0+112]:2) <= 0 (signed), and falls through when at(=[a0+112]:2) > 0 (signed).
  The `beq` branch at 0x198e8 targets 0x19908, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `bne` branch at 0x1992c targets 0x198e0, is taken when a4(?) < t3(=[a0+112]:2) (signed), and falls through when a4(?) >= t3(=[a0+112]:2) (signed).
  The `beq` branch at 0x19940 targets 0x1994c, is taken when t9(=[a2]) >= a0(=[a0+24]) (signed), and falls through when t9(=[a2]) < a0(=[a0+24]) (signed).
  The return at 0x19964 has v0 = ret(mutex_unlock).

- `hwperf_set_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1996c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1996c-0x19a30 (196 bytes).
  It occupies 196 bytes.
  3 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x70, including `lh` at 0x199a0, `lh` at 0x199c0, `lh` at 0x199e4.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x199b8, `ld` at 0x199dc.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x199bc, `sd` at 0x199e0.
  The `lw` at 0x199f8 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lw` at 0x199fc loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `sw` at 0x19a0c stores 4 bytes to a2 (arg2 at entry) +0x0.
  The `jal` at 0x19998 calls mutex_lock with a0=a0+32, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x19a18 calls mutex_unlock with a0=a0+32, a1=?, a2=?, a3=?.
  The `blez` branch at 0x199a4 targets 0x199f8, is taken when at(=[a0+112]:2) <= 0 (signed), and falls through when at(=[a0+112]:2) > 0 (signed).
  The `beq` branch at 0x199cc targets 0x199f8, is taken when a3(?) >= v0(=[a0+112]:2) (signed), and falls through when a3(?) < v0(=[a0+112]:2) (signed).
  The `bne` branch at 0x199f0 targets 0x199b0, is taken when a3(?) < a1(=[a0+112]:2) (signed), and falls through when a3(?) >= a1(=[a0+112]:2) (signed).
  The `beq` branch at 0x19a04 targets 0x19a10, is taken when a5(=[a2]) >= a0(=[a0+24]) (signed), and falls through when a5(=[a2]) < a0(=[a0+24]) (signed).
  The return at 0x19a28 has v0 = ret(mutex_unlock).

- `hwperf_setup_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19a30 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19a30-0x19a80 (80 bytes).
  It occupies 80 bytes.
  The `lhu` at 0x19a34 loads 2 bytes from sym(pdaindr) +0xf3c.
  The `lw` at 0x19a48 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lh` at 0x19a4c loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x19a54 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `sh` at 0x19a64 stores 2 bytes to a0 (arg0 at entry) +0x0.
  The `sd` at 0x19a74 stores 8 bytes to abs 0xffffffffffffc6d8.
  The `jal` at 0x19a70 calls r1nk_perf_start_counters with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x19a40 targets 0x19a70, is taken when at(=[sym(.bss)+3900]:2) == v0(=0x4), and falls through when at(=[sym(.bss)+3900]:2) != v0(=0x4).
  The `beq` branch at 0x19a78 targets 0x19a68 and is always taken.
  The return at 0x19a68 has v0 = one of ?, ret(r1nk_perf_start_counters).

- `hwperf_multiplex_events` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19a80 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19a80-0x19b48 (200 bytes).
  It occupies 200 bytes.
  The `lh` at 0x19aac loads 2 bytes from a0 (arg0 at entry) +0x0.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x30, including `lh` at 0x19abc, `lh` at 0x19ae4.
  The `sh` at 0x19adc stores 2 bytes to ?.
  The `lh` at 0x19b00 loads 2 bytes from ?.
  The `jal` at 0x19a8c calls r1nk_perf_update_counters with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x19a94 calls hwperf_multiplex_counter_check [0x1a7d4] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x19ad4 calls hwperf_next_event_index_get [0x1a818] with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x19b28 calls r1nk_perf_start_counters with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `beq` branch at 0x19aa4 targets 0x19b30, is taken when v0(=ret(hwperf_multiplex_counter_check)) == 0, and falls through when v0(=ret(hwperf_multiplex_counter_check)) != 0.
  The `beq` branch at 0x19ab4 targets 0x19b34, is taken when (at(=[a0]:2) & 0x8) == 0, and falls through when (at(=[a0]:2) & 0x8) != 0.
  The `blez` branch at 0x19ac0 targets 0x19b28, is taken when a0(=[a0+48]:2) <= 0 (signed), and falls through when a0(=[a0+48]:2) > 0 (signed).
  The `beq` branch at 0x19ac8 targets 0x19afc and is always taken.
  The `beq` branch at 0x19af4 targets 0x19b28, is taken when s0(?) >= a0(=[a0+48]:2) (signed), and falls through when s0(?) < a0(=[a0+48]:2) (signed).
  The `beq` branch at 0x19b08 targets 0x19ad0, is taken when t8(?) >= 0x2 (signed), and falls through when t8(?) < 0x2 (signed).
  The `bne` branch at 0x19b20 targets 0x19afc, is taken when s0(?) < a0(=[a0+48]:2) (signed), and falls through when s0(?) >= a0(=[a0+48]:2) (signed).
  The return at 0x19b40 has v0 = one of ret(hwperf_multiplex_counter_check), ?.

- `hwperf_add_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19b48 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19b48-0x19bc4 (124 bytes).
  It occupies 124 bytes.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x70, including `lh` at 0x19b48, `lh` at 0x19ba8.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x19b5c, `lw` at 0x19b7c.
  The `ld` at 0x19b70 loads 8 bytes from ?.
  The `lld` at 0x19b90 loads 8 bytes from ?.
  The `scd` at 0x19b9c stores 8 bytes to ?.
  The `blez` branch at 0x19b4c targets 0x19bbc, is taken when at(=[a0+112]:2) <= 0 (signed), and falls through when at(=[a0+112]:2) > 0 (signed).
  The `beq` branch at 0x19b74 targets 0x19b90, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beql` branch at 0x19ba0 targets 0x19b90, is taken when t9(?) == 0, and falls through when t9(?) != 0; its branch-likely delay slot `nop` at 0x19ba4 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x19bb4 targets 0x19b5c, is taken when a4(?) < t3(=[a0+112]:2) (signed), and falls through when a4(?) >= t3(=[a0+112]:2) (signed).
  The return at 0x19bbc has v0 = ?.

- `hwperf_fork_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19bc4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19bc4-0x19c84 (192 bytes).
  It occupies 192 bytes.
  The `ld` at 0x19bcc loads 8 bytes from a0 (arg0 at entry) +0x478.
  The `lh` at 0x19bf0 loads 2 bytes from [a0+1144]:8 +0x0.
  The `lh` at 0x19c1c loads 2 bytes from ret(cpumon_alloc) +0x0.
  The `sh` at 0x19c28 stores 2 bytes to ret(cpumon_alloc) +0x16.
  The `sh` at 0x19c30 stores 2 bytes to ret(cpumon_alloc) +0x0.
  The `ll` at 0x19c48 loads 4 bytes from sym(pdaindr) +0xf30.
  The `sc` at 0x19c54 stores 4 bytes to sym(pdaindr) +0xf30.
  The `jal` at 0x19be8 calls mutex_lock with a0=[a0+1144]:8+32, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x19c00 calls cpumon_alloc with a0=a1 at entry (arg1), a1=?, a2=?, a3=?.
  The `jal` at 0x19c10 calls hwperf_copy_cmp with a0=[a0+1144]:8, a1=ret(cpumon_alloc), a2=?, a3=?.
  The `jal` at 0x19c34 calls mutex_unlock with a0=[a0+1144]:8+32, a1=-0x1, a2=?, a3=?.
  The `jal` at 0x19c74 calls mutex_unlock with a0=[a0+1144]:8+32, a1=?, a2=?, a3=?.
  The `beq` branch at 0x19bd8 targets 0x19c60, is taken when s0(=[a0+1144]:8) == 0, and falls through when s0(=[a0+1144]:8) != 0.
  The `beq` branch at 0x19bf8 targets 0x19c74, is taken when (at(=[[a0+1144]:8]:2) & 0xf) == 0, and falls through when (at(=[[a0+1144]:8]:2) & 0xf) != 0.
  The `beql` branch at 0x19c58 targets 0x19c48, is taken when a5(=[sym(.bss)+3888]+1) == 0, and falls through when a5(=[sym(.bss)+3888]+1) != 0; its branch-likely delay slot `nop` at 0x19c5c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x19c7c targets 0x19c64 and is always taken.
  The return at 0x19c6c has v0 = one of ?, ret(mutex_unlock).

- `hwperf_sys_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19ca0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19ca0-0x19d5c (188 bytes).
  It occupies 188 bytes.
  The `ld` at 0x19cb0 loads 8 bytes from abs 0xffffffffffffc6d8.
  The `lh` at 0x19cbc loads 2 bytes from [-0x3928]:8 +0x0.
  The `lw` at 0x19cd0 loads 4 bytes from [-0x3928]:8 +0x18.
  The `sh` at 0x19cd8 stores 2 bytes to [-0x3928]:8 +0x0.
  The `sw` at 0x19ce0 stores 4 bytes to [-0x3928]:8 +0x18.
  The `ld` at 0x19cf0 loads 8 bytes from abs 0xffffffffffffc6d0.
  The `sd` at 0x19cfc stores 8 bytes to abs 0xffffffffffffc6d8.
  The `lh` at 0x19d04 loads 2 bytes from [-0x3930]:8 +0x0.
  The `sh` at 0x19d1c stores 2 bytes to [-0x3930]:8 +0x0.
  The `lh` at 0x19d2c loads 2 bytes from abs 0xffffffffffffc3a0.
  The `ll` at 0x19d40 loads 4 bytes from sym(processor_enabled) +0x110.
  The `sc` at 0x19d48 stores 4 bytes to sym(processor_enabled) +0x110.
  The `jal` at 0x19ca8 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x19ce4 calls r1nk_perf_update_counters with a0=[-0x3928]:8, a1=[[-0x3928]:8]:2, a2=-0x9, a3=?.
  The `jal` at 0x19cf8 calls hwperf_copy_cmp with a0=a0 at entry (arg0), a1=[-0x3930]:8, a2=?, a3=?.
  The `jal` at 0x19d18 calls r1nk_perf_start_counters with a0=[-0x3930]:8, a1=[-0x3930]:8, a2=?, a3=?, a4=-0x3.
  The `jal` at 0x19d20 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `beq` branch at 0x19cb4 targets 0x19cec, is taken when a0(=[-0x3928]:8) == 0, and falls through when a0(=[-0x3928]:8) != 0.
  The `beq` branch at 0x19cc4 targets 0x19ce4, is taken when (a1(=[[-0x3928]:8]:2) & 0x8) == 0, and falls through when (a1(=[[-0x3928]:8]:2) & 0x8) != 0.
  The `beql` branch at 0x19d4c targets 0x19d40, is taken when (a5(=[sym(.sbss)+272]) & a7(?)) == 0, and falls through when (a5(=[sym(.sbss)+272]) & a7(?)) != 0; its branch-likely delay slot `nop` at 0x19d50 runs only when taken and is annulled on fall-through.
  The return at 0x19d54 has v0 = ret(splx).

- `hwperf_get_access` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19d5c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19d5c-0x19e4c (240 bytes).
  It occupies 240 bytes.
  The `lhu` at 0x19da4 loads 2 bytes from sym(pdaindr) +0xf3c.
  The `ld` at 0x19df4 loads 8 bytes from sym(pdaindr) +0xf30.
  2 such `sh` accesses store 2 bytes to sym(pdaindr) +0xf3c, including `sh` at 0x19e0c, `sh` at 0x19e24.
  The `sd` at 0x19e1c stores 8 bytes to sym(pdaindr) +0xf30.
  The `ll` at 0x19e2c loads 4 bytes from sym(pdaindr) +0xf30.
  The `sc` at 0x19e38 stores 4 bytes to sym(pdaindr) +0xf30.
  The `jal` at 0x19d78 calls mutex_spinlock with a0=sym(.bss)+3888, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x19dbc calls mutex_spinunlock with a0=sym(.bss)+3888, a1=ret(mutex_spinlock), a2=?, a3=?, a5=one of 0x2, 0x8, a7=sym(.bss)+3888.
  The `beq` branch at 0x19da0 targets 0x19dd8, is taken when (s0(=a1) & 0x8) == 0, and falls through when (s0(=a1) & 0x8) != 0.
  The `beq` branch at 0x19da8 targets 0x19df0, is taken when a4(=[sym(.bss)+3900]:2) == a5(=0x2), and falls through when a4(=[sym(.bss)+3900]:2) != a5(=0x2).
  The `beq` branch at 0x19db0 targets 0x19e0c, is taken when a4(=[sym(.bss)+3900]:2) == a6(=0x1), and falls through when a4(=[sym(.bss)+3900]:2) != a6(=0x1).
  The `beq` branch at 0x19dd8 targets 0x19e24, is taken when a4(=[sym(.bss)+3900]:2) == t0(=0x1), and falls through when a4(=[sym(.bss)+3900]:2) != t0(=0x1).
  The `beq` branch at 0x19de0 targets 0x19e20, is taken when t1(=0x4) == a4(=[sym(.bss)+3900]:2), and falls through when t1(=0x4) != a4(=[sym(.bss)+3900]:2).
  The `beq` branch at 0x19de8 targets 0x19dbc and is always taken.
  The `beq` branch at 0x19df8 targets 0x19e08, is taken when a3(=[sym(.bss)+3888]:8) == a4(=a0), and falls through when a3(=[sym(.bss)+3888]:8) != a4(=a0).
  The `beq` branch at 0x19e00 targets 0x19dbc and is always taken.
  The `beq` branch at 0x19e18 targets 0x19dbc and is always taken.
  The `beql` branch at 0x19e3c targets 0x19e2c, is taken when s0(=[sym(.bss)+3888]+1) == 0, and falls through when s0(=[sym(.bss)+3888]+1) != 0; its branch-likely delay slot `nop` at 0x19e40 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x19e44 targets 0x19dbc and is always taken.
  The return at 0x19dd0 has v0 = one of 0x0, 0x10.

- `hwperf_check_release` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19e4c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19e4c-0x19fb4 (360 bytes).
  It occupies 360 bytes.
  The `lh` at 0x19e60 loads 2 bytes from a0 (arg0 at entry) +0x0.
  3 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x16, including `lh` at 0x19e7c, `lh` at 0x19e94, `lh` at 0x19ed8.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x19f18, `ld` at 0x19f1c.
  The `lh` at 0x19f28 loads 2 bytes from ?.
  The `jal` at 0x19e8c calls nano_delay with a0=sp-48, a1=a1 at entry (arg1), a2=[a0]:2, a3=a3 at entry (arg3).
  The `jal` at 0x19efc calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x19f40 calls nano_delay with a0=sp-48, a1=?, a2=?, a3=-0x1.
  The `jal` at 0x19f78 calls assfail with a0=sym(.rodata)+12728, a1=sym(.rodata)+12728, a2=0x378, a3=?.
  The `jal` at 0x19f90 calls assfail with a0=sym(.rodata)+12728, a1=sym(.rodata)+12728, a2=0x384, a3=-0x1.
  The `jal` at 0x19fa4 calls assfail with a0=sym(.rodata)+12728, a1=sym(.rodata)+12728, a2=0x389, a3=?, a4=sym(.rodata)+12728.
  The `beq` branch at 0x19e74 targets 0x19eb0, is taken when (a2(=[a0]:2) & 0x1) == 0, and falls through when (a2(=[a0]:2) & 0x1) != 0.
  The `beq` branch at 0x19e84 targets 0x19ea0, is taken when v1(=[a0+22]:2) == s0(=-0x1), and falls through when v1(=[a0+22]:2) != s0(=-0x1).
  The `bne` branch at 0x19e98 targets 0x19f6c, is taken when a0(=[a0+22]:2) != s0(=-0x1), and falls through when a0(=[a0+22]:2) == s0(=-0x1).
  The `beq` branch at 0x19ec0 targets 0x19f5c, is taken when (a2(=[a0]:2) & 0x2) == 0, and falls through when (a2(=[a0]:2) & 0x2) != 0.
  The `blez` branch at 0x19ec8 targets 0x19ea0, is taken when a0(=[sym(maxcpus)]) <= 0 (signed), and falls through when a0(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x19ed0 targets 0x19ef8 and is always taken.
  The `bne` branch at 0x19ee0 targets 0x19f88, is taken when a2(=[a0+22]:2) != a3(=-0x1), and falls through when a2(=[a0+22]:2) == a3(=-0x1).
  The `beq` branch at 0x19ef4 targets 0x19f54, is taken when s0(?) >= a4(=[sym(maxcpus)]) (signed), and falls through when s0(?) < a4(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x19f08 targets 0x19ee8, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `beq` branch at 0x19f20 targets 0x19eec, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x19f2c targets 0x19eec, is taken when a2(?) == a3(=-0x1), and falls through when a2(?) != a3(=-0x1).
  The `bne` branch at 0x19f38 targets 0x19ed8, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x19f4c targets 0x19ed8 and is always taken.
  The `beq` branch at 0x19f54 targets 0x19ea0 and is always taken.
  The `bne` branch at 0x19f5c targets 0x19ea0, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x19f64 targets 0x19fa0 and is always taken.
  The `beq` branch at 0x19f80 targets 0x19ea0 and is always taken.
  The `beq` branch at 0x19f98 targets 0x19eec and is always taken.
  The `beq` branch at 0x19fac targets 0x19ea0 and is always taken.
  The return at 0x19ea8 has v0 = one of 0x2faf080, ret(nano_delay), ?, ret(assfail).

- `hwperf_release_access` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x19fb4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x19fb4-0x1a094 (224 bytes).
  It occupies 224 bytes.
  3 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x0, including `lh` at 0x19fdc, `lh` at 0x1a008, `lh` at 0x1a06c.
  The `lw` at 0x19ff4 loads 4 bytes from sym(pdaindr) +0xf40.
  2 such `sh` accesses store 2 bytes to sym(pdaindr) +0xf3c, including `sh` at 0x1a004, `sh` at 0x1a090.
  2 such `sh` accesses store 2 bytes to a0 (arg0 at entry) +0x0, including `sh` at 0x1a010, `sh` at 0x1a078.
  The `sd` at 0x1a014 stores 8 bytes to sym(pdaindr) +0xf30.
  The `ll` at 0x1a04c loads 4 bytes from sym(pdaindr) +0xf30.
  The `sc` at 0x1a058 stores 4 bytes to sym(pdaindr) +0xf30.
  The `lhu` at 0x1a068 loads 2 bytes from sym(pdaindr) +0xf3c.
  The `jal` at 0x19fd4 calls mutex_spinlock with a0=sym(.bss)+3888, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1a020 calls mutex_spinunlock with a0=sym(.bss)+3888, a1=ret(mutex_spinlock), a2=0x1, a3=?.
  The `beq` branch at 0x19ff8 targets 0x1a038, is taken when (a5(=[a0]:2) & 0x2) == 0, and falls through when (a5(=[a0]:2) & 0x2) != 0.
  The `beq` branch at 0x1a044 targets 0x1a018, is taken when (a5(=[a0]:2) & 0x1) == 0, and falls through when (a5(=[a0]:2) & 0x1) != 0.
  The `beql` branch at 0x1a05c targets 0x1a04c, is taken when a5(=[sym(.bss)+3888]-1) == 0, and falls through when a5(=[sym(.bss)+3888]-1) != 0; its branch-likely delay slot `nop` at 0x1a060 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1a064 targets 0x1a07c, is taken when a4(=[sym(.bss)+3888]-1) == 0, and falls through when a4(=[sym(.bss)+3888]-1) != 0.
  The `beq` branch at 0x1a074 targets 0x1a018 and is always taken.
  The `beq` branch at 0x1a08c targets 0x1a06c and is always taken.
  The return at 0x1a030 has v0 = ret(mutex_spinunlock).

- `hwperf_find_cpu` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a094 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a094-0x1a12c (152 bytes).
  It occupies 152 bytes.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1a0ec, `ld` at 0x1a0f0, `ld` at 0x1a0fc.
  The `jal` at 0x1a0d4 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `blez` branch at 0x1a0b0 targets 0x1a110, is taken when at(=[sym(maxcpus)]) <= 0 (signed), and falls through when at(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x1a0b8 targets 0x1a0d0 and is always taken.
  The `beq` branch at 0x1a0c8 targets 0x1a114, is taken when s0(?) >= a3(=[sym(maxcpus)]) (signed), and falls through when s0(?) < a3(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x1a0dc targets 0x1a0c0, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `beq` branch at 0x1a0f4 targets 0x1a0c0, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `bne` branch at 0x1a100 targets 0x1a0c0, is taken when v1(?) != s1(=a0), and falls through when v1(?) == s1(=a0).
  The `beq` branch at 0x1a108 targets 0x1a114 and is always taken.
  The return at 0x1a124 has v0 = one of -0x1, ?.

- `hwperf_initiate_startup` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a12c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a12c-0x1a288 (348 bytes).
  It occupies 348 bytes.
  The `lh` at 0x1a138 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `ld` at 0x1a1b0 loads 8 bytes from ?.
  The `lh` at 0x1a1b4 loads 2 bytes from ?.
  The `ll` at 0x1a1bc loads 4 bytes from sym(processor_enabled) +0x110.
  The `sc` at 0x1a1c4 stores 4 bytes to sym(processor_enabled) +0x110.
  2 such `lh` accesses load 2 bytes from abs 0xffffffffffffc3a0, including `lh` at 0x1a1d0, `lh` at 0x1a254.
  The `jal` at 0x1a174 calls hwperf_sys_counters with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1a194 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1a1e4 calls cpuaction with a0=?, a1=sym(hwperf_sys_counters), a2=0x1, a3=a0 at entry (arg0).
  The `jal` at 0x1a240 calls hwperf_find_cpu with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1a260 calls hwperf_proc_counters with a0=(ret(hwperf_find_cpu) << 0x30), a1=?, a2=-0x1, a3=[-0x3c60]:2.
  The `jal` at 0x1a278 calls cpuaction with a0=?, a1=sym(hwperf_proc_counters), a2=0x1, a3=[-0x3c60]:2.
  The `beq` branch at 0x1a154 targets 0x1a240, is taken when (at(=[a0]:2) & 0x2) == 0, and falls through when (at(=[a0]:2) & 0x2) != 0.
  The `blez` branch at 0x1a164 targets 0x1a1f4, is taken when v1(=[sym(maxcpus)]) <= 0 (signed), and falls through when v1(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x1a16c targets 0x1a18c and is always taken.
  The `beq` branch at 0x1a188 targets 0x1a1f4, is taken when s0(?) >= a0(=[sym(maxcpus)]) (signed), and falls through when s0(?) < a0(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x1a19c targets 0x1a180, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `beql` branch at 0x1a1c8 targets 0x1a1bc, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `nop` at 0x1a1cc runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1a1d4 targets 0x1a174, is taken when t8(=[-0x3c60]:2) == s0(?), and falls through when t8(=[-0x3c60]:2) != s0(?).
  The `beq` branch at 0x1a1ec targets 0x1a180 and is always taken.
  The `beq` branch at 0x1a1f8 targets 0x1a224, is taken when v0(=[sym(.sbss)+272]) == 0, and falls through when v0(=[sym(.sbss)+272]) != 0.
  The `beq` branch at 0x1a204 targets 0x1a224, is taken when v1(=[sym(.sbss)+272]) == 0, and falls through when v1(=[sym(.sbss)+272]) != 0.
  The `beq` branch at 0x1a210 targets 0x1a224, is taken when a0(=[sym(.sbss)+272]) == 0, and falls through when a0(=[sym(.sbss)+272]) != 0.
  The `bne` branch at 0x1a21c targets 0x1a200, is taken when a1(=[sym(.sbss)+272]) != 0, and falls through when a1(=[sym(.sbss)+272]) == 0.
  The `beq` branch at 0x1a24c targets 0x1a228, is taken when v0(=ret(hwperf_find_cpu)) == a2(=-0x1), and falls through when v0(=ret(hwperf_find_cpu)) != a2(=-0x1).
  The `bne` branch at 0x1a258 targets 0x1a270, is taken when a3(=[-0x3c60]:2) != v0(=ret(hwperf_find_cpu)), and falls through when a3(=[-0x3c60]:2) == v0(=ret(hwperf_find_cpu)).
  The `beq` branch at 0x1a268 targets 0x1a228 and is always taken.
  The `beq` branch at 0x1a280 targets 0x1a228 and is always taken.
  The return at 0x1a238 has v0 = one of [sym(.sbss)+272], ret(hwperf_find_cpu), ret(hwperf_proc_counters), ret(cpuaction).

- `hwperf_proc_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a288 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a288-0x1a2f4 (108 bytes).
  It occupies 108 bytes.
  The `ld` at 0x1a298 loads 8 bytes from abs 0xffffffffffffc018.
  The `ld` at 0x1a2a4 loads 8 bytes from [-0x3fe8]:8 +0x478.
  The `lh` at 0x1a2b0 loads 2 bytes from [[-0x3fe8]:8+1144]:8 +0x0.
  The `ld` at 0x1a2c0 loads 8 bytes from abs 0xffffffffffffc6d8.
  The `jal` at 0x1a290 calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1a2cc calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `jal` at 0x1a2e4 calls hwperf_setup_counters with a0=[[-0x3fe8]:8+1144]:8, a1=?, a2=?, a3=[-0x3fe8]:8.
  The `beq` branch at 0x1a29c targets 0x1a2cc, is taken when a3(=[-0x3fe8]:8) == 0, and falls through when a3(=[-0x3fe8]:8) != 0.
  The `beq` branch at 0x1a2a8 targets 0x1a2cc, is taken when a0(=[[-0x3fe8]:8+1144]:8) == 0, and falls through when a0(=[[-0x3fe8]:8+1144]:8) != 0.
  The `beq` branch at 0x1a2b8 targets 0x1a2cc, is taken when (at(=[[[-0x3fe8]:8+1144]:8]:2) & 0x8) == 0, and falls through when (at(=[[[-0x3fe8]:8+1144]:8]:2) & 0x8) != 0.
  The `beq` branch at 0x1a2c4 targets 0x1a2e4, is taken when v0(=[-0x3928]:8) == 0, and falls through when v0(=[-0x3928]:8) != 0.
  The `beq` branch at 0x1a2ec targets 0x1a2cc and is always taken.
  The return at 0x1a2dc has v0 = ret(splx).

- `hwperf_update_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a2f4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a2f4-0x1a338 (68 bytes).
  It occupies 68 bytes.
  The `lh` at 0x1a304 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `ll` at 0x1a31c loads 4 bytes from sym(processor_enabled) +0x110.
  The `sc` at 0x1a324 stores 4 bytes to sym(processor_enabled) +0x110.
  The `jal` at 0x1a2fc calls r1nk_perf_update_counters with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0x1a328 targets 0x1a31c, is taken when (at(=[sym(.sbss)+272]) & v1(?)) == 0, and falls through when (at(=[sym(.sbss)+272]) & v1(?)) != 0; its branch-likely delay slot `nop` at 0x1a32c runs only when taken and is annulled on fall-through.
  The return at 0x1a330 has v0 = sym(.sbss)+272.

- `hwperf_update_counters_async` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a338 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a338-0x1a37c (68 bytes).
  It occupies 68 bytes.
  The `lh` at 0x1a348 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `ll` at 0x1a360 loads 4 bytes from sym(processor_enabled) +0x114.
  The `sc` at 0x1a368 stores 4 bytes to sym(processor_enabled) +0x114.
  The `jal` at 0x1a340 calls r1nk_perf_update_counters with a0=0x0, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beql` branch at 0x1a36c targets 0x1a360, is taken when (at(=[sym(.sbss)+276]) & v1(?)) == 0, and falls through when (at(=[sym(.sbss)+276]) & v1(?)) != 0; its branch-likely delay slot `nop` at 0x1a370 runs only when taken and is annulled on fall-through.
  The return at 0x1a374 has v0 = sym(.sbss)+276.

- `hwperf_read_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a37c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a37c-0x1a638 (700 bytes).
  It occupies 700 bytes.
  The `lh` at 0x1a388 loads 2 bytes from a0 (arg0 at entry) +0x0.
  5 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1a404, `ld` at 0x1a4d0, `ld` at 0x1a4d4.
  The `lh` at 0x1a408 loads 2 bytes from ?.
  The `ll` at 0x1a410 loads 4 bytes from sym(processor_enabled) +0x110.
  The `sc` at 0x1a418 stores 4 bytes to sym(processor_enabled) +0x110.
  2 such `lh` accesses load 2 bytes from abs 0xffffffffffffc3a0, including `lh` at 0x1a424, `lh` at 0x1a5d0.
  4 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x70, including `lh` at 0x1a454, `lh` at 0x1a4a0, `lh` at 0x1a538.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x1a494, `sd` at 0x1a504.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1a498, `lw` at 0x1a508, `lw` at 0x1a51c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1a49c, `sw` at 0x1a530.
  The `lh` at 0x1a5b4 loads 2 bytes from a0 (arg0 at entry) +0x16.
  2 such `ld` accesses load 8 bytes from (sym(pdaindr) + ([a0+22]:2 << 0x4)) +0x8, including `ld` at 0x1a5dc, `ld` at 0x1a5fc.
  2 such `lh` accesses load 2 bytes from [(sym(pdaindr) + ([a0+22]:2 << 0x4))+8]:8 +0x3a0, including `lh` at 0x1a5e0, `lh` at 0x1a600.
  The `ll` at 0x1a5e8 loads 4 bytes from sym(processor_enabled) +0x114.
  The `sc` at 0x1a5f0 stores 4 bytes to sym(processor_enabled) +0x114.
  The `jal` at 0x1a3c8 calls hwperf_update_counters with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1a3e8 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1a438 calls cpuaction with a0=?, a1=sym(hwperf_update_counters), a2=0x1, a3=0x0.
  The `jal` at 0x1a568 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1a578 calls cpu_enabled with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1a618 calls cpuaction with a0=[a0+22]:2, a1=sym(hwperf_update_counters_async), a2=0x1, a3=0x0, a4=sym(pdaindr).
  The `jal` at 0x1a628 calls r1nk_perf_update_counters with a0=0x0, a1=([a0+22]:2 << 0x4), a2=a2 at entry (arg2), a3=(sym(pdaindr) + ([a0+22]:2 << 0x4)), a4=sym(pdaindr).
  The `beq` branch at 0x1a3a8 targets 0x1a5b4, is taken when (at(=[a0]:2) & 0x2) == 0, and falls through when (at(=[a0]:2) & 0x2) != 0.
  The `blez` branch at 0x1a3b4 targets 0x1a448, is taken when a0(=[sym(maxcpus)]) <= 0 (signed), and falls through when a0(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x1a3c0 targets 0x1a3e4 and is always taken.
  The `beq` branch at 0x1a3dc targets 0x1a448, is taken when s1(?) >= a0(=[sym(maxcpus)]) (signed), and falls through when s1(?) < a0(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x1a3f0 targets 0x1a3d4, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `beql` branch at 0x1a41c targets 0x1a410, is taken when v0(?) == 0, and falls through when v0(?) != 0; its branch-likely delay slot `nop` at 0x1a420 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1a428 targets 0x1a3c8, is taken when t8(=[-0x3c60]:2) == s1(?), and falls through when t8(=[-0x3c60]:2) != s1(?).
  The `beq` branch at 0x1a440 targets 0x1a3d4 and is always taken.
  The `beq` branch at 0x1a450 targets 0x1a47c, is taken when v0(=[sym(.sbss)+272]) == 0, and falls through when v0(=[sym(.sbss)+272]) != 0.
  The `beq` branch at 0x1a45c targets 0x1a47c, is taken when v1(=[sym(.sbss)+272]) == 0, and falls through when v1(=[sym(.sbss)+272]) != 0.
  The `beq` branch at 0x1a468 targets 0x1a47c, is taken when a2(=[sym(.sbss)+272]) == 0, and falls through when a2(=[sym(.sbss)+272]) != 0.
  The `bne` branch at 0x1a474 targets 0x1a458, is taken when a3(=[sym(.sbss)+272]) != 0, and falls through when a3(=[sym(.sbss)+272]) == 0.
  The `blez` branch at 0x1a47c targets 0x1a4b8, is taken when a1(=[a0+112]:2) <= 0 (signed), and falls through when a1(=[a0+112]:2) > 0 (signed).
  The `bne` branch at 0x1a4ac targets 0x1a488, is taken when a1(?) < a4(=[a0+112]:2) (signed), and falls through when a1(?) >= a4(=[a0+112]:2) (signed).
  The `blez` branch at 0x1a4b8 targets 0x1a594, is taken when a0(=[sym(maxcpus)]) <= 0 (signed), and falls through when a0(=[sym(maxcpus)]) > 0 (signed).
  The `beq` branch at 0x1a4c0 targets 0x1a564 and is always taken.
  The `blez` branch at 0x1a4d8 targets 0x1a554, is taken when a0(=[a0+112]:2) <= 0 (signed), and falls through when a0(=[a0+112]:2) > 0 (signed).
  The `beq` branch at 0x1a514 targets 0x1a534, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x1a548 targets 0x1a4f8, is taken when a1(?) < t8(=[a0+112]:2) (signed), and falls through when a1(?) >= t8(=[a0+112]:2) (signed).
  The `beq` branch at 0x1a55c targets 0x1a594, is taken when s1(?) >= t9(=[sym(maxcpus)]) (signed), and falls through when s1(?) < t9(=[sym(maxcpus)]) (signed).
  The `beq` branch at 0x1a570 targets 0x1a554, is taken when v0(=ret(cpu_enabled)) == 0, and falls through when v0(=ret(cpu_enabled)) != 0.
  The `bne` branch at 0x1a584 targets 0x1a4c8, is taken when v0(=ret(cpu_enabled)) != 0, and falls through when v0(=ret(cpu_enabled)) == 0.
  The `beq` branch at 0x1a58c targets 0x1a4d8 and is always taken.
  The `beq` branch at 0x1a5c8 targets 0x1a594, is taken when a0(=[a0+22]:2) == t8(=-0x1), and falls through when a0(=[a0+22]:2) != t8(=-0x1).
  The `beq` branch at 0x1a5d4 targets 0x1a628, is taken when t9(=[-0x3c60]:2) == a0(=[a0+22]:2), and falls through when t9(=[-0x3c60]:2) != a0(=[a0+22]:2).
  The `beql` branch at 0x1a5f4 targets 0x1a5e8, is taken when a2(?) == 0, and falls through when a2(?) != 0; its branch-likely delay slot `nop` at 0x1a5f8 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x1a60c targets 0x1a594, is taken when (ra(=[sym(.sbss)+276]) & at(?)) != 0, and falls through when (ra(=[sym(.sbss)+276]) & at(?)) == 0.
  The `beq` branch at 0x1a620 targets 0x1a598 and is always taken.
  The `beq` branch at 0x1a630 targets 0x1a598 and is always taken.
  The return at 0x1a5ac has v0 = one of ?, ret(cpuaction), ret(r1nk_perf_update_counters).

- `hwperf_copy_cmp` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a638 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a638-0x1a6f4 (188 bytes).
  It occupies 188 bytes.
  2 such `lh` accesses load 2 bytes from a1 (arg1 at entry) +0x70, including `lh` at 0x1a638, `lh` at 0x1a680.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1a650, `lw` at 0x1a65c.
  2 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1a654, `sw` at 0x1a668.
  The `sd` at 0x1a670 stores 8 bytes to ?.
  The `lhu` at 0x1a678 loads 2 bytes from ?.
  4 such `sh` accesses store 2 bytes to ?, including `sh` at 0x1a67c, `sh` at 0x1a6c0, `sh` at 0x1a6c8.
  The `lw` at 0x1a694 loads 4 bytes from a0 (arg0 at entry) +0x18.
  2 such `lh` accesses load 2 bytes from a1 (arg1 at entry) +0x30, including `lh` at 0x1a698, `lh` at 0x1a6d4.
  The `sw` at 0x1a69c stores 4 bytes to a1 (arg1 at entry) +0x18.
  The `lh` at 0x1a6a0 loads 2 bytes from a0 (arg0 at entry) +0xc.
  The `sh` at 0x1a6ac stores 2 bytes to a1 (arg1 at entry) +0xc.
  3 such `lh` accesses load 2 bytes from ?, including `lh` at 0x1a6bc, `lh` at 0x1a6c4, `lh` at 0x1a6cc.
  The `lh` at 0x1a6e8 loads 2 bytes from a0 (arg0 at entry) +0x0.
  The `sh` at 0x1a6f0 stores 2 bytes to a1 (arg1 at entry) +0x0.
  The `blez` branch at 0x1a63c targets 0x1a694, is taken when at(=[a1+112]:2) <= 0 (signed), and falls through when at(=[a1+112]:2) > 0 (signed).
  The `bne` branch at 0x1a68c targets 0x1a648, is taken when a3(?) < v0(=[a1+112]:2) (signed), and falls through when a3(?) >= v0(=[a1+112]:2) (signed).
  The `blez` branch at 0x1a6a8 targets 0x1a6e8, is taken when t0(=[a1+48]:2) <= 0 (signed), and falls through when t0(=[a1+48]:2) > 0 (signed).
  The `bne` branch at 0x1a6e0 targets 0x1a6b4, is taken when a3(?) < t2(=[a1+48]:2) (signed), and falls through when a3(?) >= t2(=[a1+48]:2) (signed).
  The return at 0x1a6ec has v0 = ?.

- `hwperf_arch_nosupport` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a6f4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a6f4-0x1a6fc (8 bytes).
  It occupies 8 bytes.
  The return at 0x1a6f4 has v0 = 0x59.

- `hwperf_arch_fatal` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a6fc (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a6fc-0x1a720 (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0x1a70c calls cmn_err with a0=0x0, a1=sym(.rodata)+12728, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x1a718 has v0 = ret(cmn_err).

- `hwperf_cpu_monitor_info_alloc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a720 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a720-0x1a7b0 (144 bytes).
  It occupies 144 bytes.
  The `sh` at 0x1a74c stores 2 bytes to ret(kmem_zalloc) +0x70.
  The `sh` at 0x1a758 stores 2 bytes to ret(kmem_zalloc) +0x30.
  The `sw` at 0x1a75c stores 4 bytes to ret(kmem_zalloc) +0x8.
  The `ld` at 0x1a760 loads 8 bytes from abs 0xffffffffffffc018.
  The `ld` at 0x1a76c loads 8 bytes from [-0x3fe8]:8 +0x2f0.
  The `lw` at 0x1a778 loads 4 bytes from [[-0x3fe8]:8+752]:8 +0x298.
  The `sw` at 0x1a77c stores 4 bytes to ret(kmem_zalloc) +0x10.
  The `sd` at 0x1a784 stores 8 bytes to ret(kmem_zalloc) +0x38.
  The `sd` at 0x1a78c stores 8 bytes to ret(kmem_zalloc) +0x40.
  The `sh` at 0x1a790 stores 2 bytes to ret(kmem_zalloc) +0x14.
  The `jal` at 0x1a730 calls kmem_zalloc with a0=0x2b8, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1a754 calls r1nk_perf_architecture with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x1a738 targets 0x1a748, is taken when v0(=ret(kmem_zalloc)) != 0, and falls through when v0(=ret(kmem_zalloc)) == 0.
  The `beq` branch at 0x1a740 targets 0x1a794 and is always taken.
  The `beq` branch at 0x1a764 targets 0x1a7a8, is taken when a2(=[-0x3fe8]:8) == 0, and falls through when a2(=[-0x3fe8]:8) != 0.
  The `beq` branch at 0x1a770 targets 0x1a7a8, is taken when a3(=[[-0x3fe8]:8+752]:8) == 0, and falls through when a3(=[[-0x3fe8]:8+752]:8) != 0.
  The `beq` branch at 0x1a7a8 targets 0x1a77c and is always taken.
  The return at 0x1a7a0 has v0 = one of 0x0, ret(kmem_zalloc).

- `hwperf_cpu_monitor_info_free` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a7b0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a7b0-0x1a7d4 (36 bytes).
  It occupies 36 bytes.
  The `jal` at 0x1a7c4 calls kern_free with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x1a7b4 targets 0x1a7c4, is taken when a0 != 0, and falls through when a0 == 0.
  The `beq` branch at 0x1a7cc targets 0x1a7bc and is always taken.
  The return at 0x1a7bc has v0 = one of ?, ret(kern_free).

- `hwperf_multiplex_counter_check` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a7d4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a7d4-0x1a818 (68 bytes).
  It occupies 68 bytes.
  The `lh` at 0x1a7d4 loads 2 bytes from a0 (arg0 at entry) +0x30.
  The `lh` at 0x1a7e8 loads 2 bytes from ?.
  The `blez` branch at 0x1a7d8 targets 0x1a804, is taken when a4(=[a0+48]:2) <= 0 (signed), and falls through when a4(=[a0+48]:2) > 0 (signed).
  The `beq` branch at 0x1a7f4 targets 0x1a810, is taken when at(?) >= 0x2 (signed), and falls through when at(?) < 0x2 (signed).
  The `bne` branch at 0x1a7fc targets 0x1a7e4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The return at 0x1a808 has v0 = 0x0.
  The return at 0x1a810 has v0 = 0x1.

- `hwperf_next_event_index_get` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1a818 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1a818-0x1a890 (120 bytes).
  It occupies 120 bytes.
  The `lh` at 0x1a820 loads 2 bytes from (a0 + (a1 + a1)) +0x68.
  The `lh` at 0x1a82c loads 2 bytes from (a0 + (a1 + a1)) +0x60.
  The `ld` at 0x1a83c loads 8 bytes from (a0 + (a1 << 0x3)) +0x38.
  The `lhu` at 0x1a874 loads 2 bytes from ?.
  The `beq` branch at 0x1a86c targets 0x1a880, is taken when (a5(=[(a0 + (a1 << 0x3))+56]:8) & t0(?)) == 0, and falls through when (a5(=[(a0 + (a1 << 0x3))+56]:8) & t0(?)) != 0.
  The `bne` branch at 0x1a878 targets 0x1a888, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x1a880 targets 0x1a848, is taken when a6(=[(a0 + (a1 + a1))+96]:2) != v0(?), and falls through when a6(=[(a0 + (a1 + a1))+96]:2) == v0(?).
  The return at 0x1a888 has v0 = ?.

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

- `r1nk_perf_update_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1ab50 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1ab50-0x1acc4 (372 bytes).
  It occupies 372 bytes.
  5 such `lh` accesses load 2 bytes from ?, including `lh` at 0x1ab78, `lh` at 0x1abb0, `lh` at 0x1abcc.
  The `lw` at 0x1ab9c loads 4 bytes from ?.
  The `sw` at 0x1aba8 stores 4 bytes to ?.
  The `lld` at 0x1ac34 loads 8 bytes from ?.
  The `scd` at 0x1ac40 stores 8 bytes to ?.
  The `ld` at 0x1ac64 loads 8 bytes from abs 0xffffffffffffc6d8.
  The `lh` at 0x1ac74 loads 2 bytes from [-0x3928]:8 +0x0.
  The `sh` at 0x1aca8 stores 2 bytes to ?.
  The `sd` at 0x1acb0 stores 8 bytes to abs 0xffffffffffffc6d8.
  The `jal` at 0x1ab70 calls r1nk_perf_check_architecture with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1ab8c calls r1nkperf_data_register_get with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1ac08 calls splx with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1ac4c calls r1nkperf_data_register_set with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x1ac5c calls splhi with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1ac8c calls r1nk_perf_stop_counters with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1acb4 calls splx with a0=ret(splhi), a1=?, a2=?, a3=?.
  The `beq` branch at 0x1ab64 targets 0x1ac5c, is taken when a0 == 0, and falls through when a0 != 0.
  The `blez` branch at 0x1ab7c targets 0x1abf0, is taken when v0(?) <= 0 (signed), and falls through when v0(?) > 0 (signed).
  The `beq` branch at 0x1ab84 targets 0x1abc4 and is always taken.
  The `beq` branch at 0x1aba0 targets 0x1ac28, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x1abc0 targets 0x1abf0, is taken when s0(?) >= v0(?) (signed), and falls through when s0(?) < v0(?) (signed).
  The `bgez` branch at 0x1abd0 targets 0x1ab8c, is taken when s2(?) >= 0 (signed), and falls through when s2(?) < 0 (signed).
  The `bne` branch at 0x1abe8 targets 0x1abc8, is taken when s0(?) < v0(?) (signed), and falls through when s0(?) >= v0(?) (signed).
  The `beq` branch at 0x1abf8 targets 0x1ac8c, is taken when (t8(?) & 0x8) == 0, and falls through when (t8(?) & 0x8) != 0.
  The `beq` branch at 0x1ac00 targets 0x1ac10, is taken when s3(=one of 0x0, 0x1) == 0, and falls through when s3(=one of 0x0, 0x1) != 0.
  The `beql` branch at 0x1ac44 targets 0x1ac34, is taken when at(?) == 0, and falls through when at(?) != 0; its branch-likely delay slot `nop` at 0x1ac48 runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x1ac54 targets 0x1abb0 and is always taken.
  The `beq` branch at 0x1ac6c targets 0x1acb4, is taken when s1(=[-0x3928]:8) == 0, and falls through when s1(=[-0x3928]:8) != 0.
  The `beq` branch at 0x1ac7c targets 0x1acb4, is taken when (at(=[[-0x3928]:8]:2) & 0xf) == 0, and falls through when (at(=[[-0x3928]:8]:2) & 0xf) != 0.
  The `beq` branch at 0x1ac84 targets 0x1ab70 and is always taken.
  The `beq` branch at 0x1aca0 targets 0x1acac, is taken when (v0(?) & 0x4) == 0, and falls through when (v0(?) & 0x4) != 0.
  The `beq` branch at 0x1acac targets 0x1ac00 and is always taken.
  The `beq` branch at 0x1acbc targets 0x1ac14 and is always taken.
  The return at 0x1ac20 has v0 = one of ?, ret(splx).

- `r1nk_perf_start_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1acc4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1acc4-0x1ae40 (380 bytes).
  It occupies 380 bytes.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x0, including `lh` at 0x1acf4, `lh` at 0x1ae3c.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x30, including `lh` at 0x1ad0c, `lh` at 0x1ad64.
  The `lh` at 0x1ad18 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `sh` at 0x1ad28 stores 2 bytes to a0 (arg0 at entry) +0x16.
  2 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x1ad34, `lhu` at 0x1adb4.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1ad48, `lw` at 0x1ad54.
  The `lh` at 0x1ad80 loads 2 bytes from ?.
  The `lw` at 0x1ad8c loads 4 bytes from abs 0xffffffffffffc3fc.
  The `jal` at 0x1acd0 calls getsr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1acd8 calls issplhi with a0=(ret(getsr) << 0x0), a1=?, a2=?, a3=?.
  The `jal` at 0x1ad04 calls r1nk_perf_check_architecture with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1ad38 calls r1nkperf_control_register_set with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1ad58 calls r1nkperf_data_register_set with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1ae30 calls assfail with a0=sym(.rodata)+12952, a1=sym(.rodata)+12952, a2=0x119, a3=?.
  The `beq` branch at 0x1acec targets 0x1ae24, is taken when v0(=ret(issplhi)) == 0, and falls through when v0(=ret(issplhi)) != 0.
  The `beq` branch at 0x1acfc targets 0x1ae00, is taken when (at(=[a0]:2) & 0x8) == 0, and falls through when (at(=[a0]:2) & 0x8) != 0.
  The `blez` branch at 0x1ad24 targets 0x1adfc, is taken when a0(=[a0+48]:2) <= 0 (signed), and falls through when a0(=[a0+48]:2) > 0 (signed).
  The `beq` branch at 0x1ad2c targets 0x1ad7c and is always taken.
  The `beq` branch at 0x1ad4c targets 0x1ae1c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1ad74 targets 0x1adfc, is taken when s0(?) >= a0(=[a0+48]:2) (signed), and falls through when s0(?) < a0(=[a0+48]:2) (signed).
  The `bltz` branch at 0x1ad84 targets 0x1ade4, is taken when s2(?) < 0 (signed), and falls through when s2(?) >= 0 (signed).
  The `beq` branch at 0x1ad98 targets 0x1ada4, is taken when a1(?) == s3(=0xe), and falls through when a1(?) != s3(=0xe).
  The `bne` branch at 0x1ada0 targets 0x1ad34, is taken when a1(?) != s4(=0xf), and falls through when a1(?) == s4(=0xf).
  The `bne` branch at 0x1ada8 targets 0x1ad34, is taken when s0(?) != a2(=0x1), and falls through when s0(?) == a2(=0x1).
  The `beq` branch at 0x1addc targets 0x1ad38 and is always taken.
  The `bne` branch at 0x1adf4 targets 0x1ad7c, is taken when s0(?) < a0(=[a0+48]:2) (signed), and falls through when s0(?) >= a0(=[a0+48]:2) (signed).
  The `beq` branch at 0x1ae1c targets 0x1ad58 and is always taken.
  The `beq` branch at 0x1ae38 targets 0x1acf8 and is always taken.
  The return at 0x1ae14 has v0 = ?.

- `r1nk_perf_stop_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1ae40 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1ae40-0x1aed8 (152 bytes).
  It occupies 152 bytes.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x30, including `lh` at 0x1ae6c, `lh` at 0x1ae94.
  The `sh` at 0x1ae74 stores 2 bytes to a0 (arg0 at entry) +0x16.
  The `jal` at 0x1ae4c calls getsr with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1ae54 calls issplhi with a0=(ret(getsr) << 0x0), a1=?, a2=?, a3=?.
  The `jal` at 0x1ae64 calls r1nk_perf_check_architecture with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x1ae88 calls r1nkperf_control_register_set with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x1aec8 calls assfail with a0=sym(.rodata)+12952, a1=sym(.rodata)+12952, a2=0x15e, a3=?.
  The `beq` branch at 0x1ae5c targets 0x1aec0, is taken when v0(=ret(issplhi)) == 0, and falls through when v0(=ret(issplhi)) != 0.
  The `blez` branch at 0x1ae78 targets 0x1aeac, is taken when at(=[a0+48]:2) <= 0 (signed), and falls through when at(=[a0+48]:2) > 0 (signed).
  The `bne` branch at 0x1aea4 targets 0x1ae88, is taken when s0(?) < v1(=[a0+48]:2) (signed), and falls through when s0(?) >= v1(=[a0+48]:2) (signed).
  The `beq` branch at 0x1aed0 targets 0x1ae64 and is always taken.
  The return at 0x1aeb8 has v0 = one of -0x1, ret(r1nkperf_control_register_set).

- `r1nk_perf_init_counters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1aed8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1aed8-0x1b130 (600 bytes).
  It occupies 600 bytes.
  5 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x30, including `lh` at 0x1af04, `lh` at 0x1af44, `lh` at 0x1af6c.
  10 such `sh` accesses store 2 bytes to ?, including `sh` at 0x1af34, `sh` at 0x1af3c, `sh` at 0x1af5c.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x70, including `lh` at 0x1af80, `lh` at 0x1af9c.
  3 such `lh` accesses load 2 bytes from ?, including `lh` at 0x1afc4, `lh` at 0x1b074, `lh` at 0x1b0b8.
  3 such `sw` accesses store 4 bytes to ?, including `sw` at 0x1afec, `sw` at 0x1b04c, `sw` at 0x1b050.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1aff0, `ld` at 0x1b098.
  The `sd` at 0x1affc stores 8 bytes to ?.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x1b014, `lw` at 0x1b0d0.
  The `ld` at 0x1b110 loads 8 bytes from a0 (arg0 at entry) +0x38.
  The `jal` at 0x1aefc calls cap_able with a0=0x2000000000, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `blez` branch at 0x1af24 targets 0x1af80, is taken when a1(=[a0+48]:2) <= 0 (signed), and falls through when a1(=[a0+48]:2) > 0 (signed).
  The `beq` branch at 0x1af50 targets 0x1af80, is taken when a4(?) >= a2(=[a0+48]:2) (signed), and falls through when a4(?) < a2(=[a0+48]:2) (signed).
  The `bne` branch at 0x1af78 targets 0x1af30, is taken when a4(?) < a6(=[a0+48]:2) (signed), and falls through when a4(?) >= a6(=[a0+48]:2) (signed).
  The `blez` branch at 0x1af88 targets 0x1b0fc, is taken when a6(=[a0+112]:2) <= 0 (signed), and falls through when a6(=[a0+112]:2) > 0 (signed).
  The `beq` branch at 0x1af90 targets 0x1b114 and is always taken.
  The `beq` branch at 0x1afb8 targets 0x1b0fc, is taken when a7(?) >= t0(=[a0+112]:2) (signed), and falls through when a7(?) < t0(=[a0+112]:2) (signed).
  The `beq` branch at 0x1b000 targets 0x1af98, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x1b010 targets 0x1b01c, is taken when (a5(?) & 0x2) == 0, and falls through when (a5(?) & 0x2) != 0.
  The `beq` branch at 0x1b018 targets 0x1b104, is taken when v0(=ret(cap_able)) == 0, and falls through when v0(=ret(cap_able)) != 0.
  The `bltz` branch at 0x1b020 targets 0x1b0d4, is taken when t2(?) < 0 (signed), and falls through when t2(?) >= 0 (signed).
  The `beq` branch at 0x1b028 targets 0x1b0d4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x1b030 targets 0x1b0d4, is taken when t8(?) == 0, and falls through when t8(?) != 0.
  The `bltz` branch at 0x1b038 targets 0x1b0d4, is taken when a4(?) < 0 (signed), and falls through when a4(?) >= 0 (signed).
  The `beq` branch at 0x1b040 targets 0x1b0cc, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `blez` branch at 0x1b064 targets 0x1af98, is taken when a6(=[a0+48]:2) <= 0 (signed), and falls through when a6(=[a0+48]:2) > 0 (signed).
  The `beq` branch at 0x1b06c targets 0x1b10c and is always taken.
  The `beq` branch at 0x1b090 targets 0x1af98, is taken when a4(?) >= a6(=[a0+48]:2) (signed), and falls through when a4(?) < a6(=[a0+48]:2) (signed).
  The `beq` branch at 0x1b0b0 targets 0x1b088, is taken when (a3(?) & t0(?)) == 0, and falls through when (a3(?) & t0(?)) != 0.
  The `bne` branch at 0x1b0bc targets 0x1b074, is taken when a6(?) != t3(=-0x1), and falls through when a6(?) == t3(=-0x1).
  The `beq` branch at 0x1b0c4 targets 0x1b074 and is always taken.
  The `beq` branch at 0x1b0cc targets 0x1b050 and is always taken.
  The `beq` branch at 0x1b0fc targets 0x1b0d8 and is always taken.
  The `beq` branch at 0x1b104 targets 0x1b0d8 and is always taken.
  The `beq` branch at 0x1b10c targets 0x1b09c and is always taken.
  The `beq` branch at 0x1b128 targets 0x1afc4 and is always taken.
  The return at 0x1b0f4 has v0 = one of 0x0, 0x1, 0x16.

- `r1nk_perf_architecture` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1b130 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1b130-0x1b1a4 (116 bytes).
  It occupies 116 bytes.
  The `lw` at 0x1b130 loads 4 bytes from abs 0xffffffffffffc3fc.
  The `lh` at 0x1b190 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `jal` at 0x1b194 calls cmn_err with a0=0x0, a1=sym(.rodata)+12952, a2=[-0x3c60]:2, a3=[-0x3c04], a4=0x9, a5=0x2.
  The `beq` branch at 0x1b154 targets 0x1b180, is taken when v0(?) == at(=0xe), and falls through when v0(?) != at(=0xe).
  The `beq` branch at 0x1b15c targets 0x1b180, is taken when v0(?) == a2(=0xf), and falls through when v0(?) != a2(=0xf).
  The `bne` branch at 0x1b164 targets 0x1b188, is taken when v0(?) != a4(=0x9), and falls through when v0(?) == a4(=0x9).
  The `beq` branch at 0x1b180 targets 0x1b178 and is always taken.
  The `beq` branch at 0x1b19c targets 0x1b178 and is always taken.
  The return at 0x1b178 has v0 = one of 0x1, 0x2, 0x4, ret(cmn_err).

- `r1nk_perf_check_architecture` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1b1a4 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1b1a4-0x1b228 (132 bytes).
  It occupies 132 bytes.
  The `lw` at 0x1b1b8 loads 4 bytes from a0 (arg0 at entry) +0x8.
  2 such `lh` accesses load 2 bytes from a0 (arg0 at entry) +0x14, including `lh` at 0x1b1c4, `lh` at 0x1b224.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x4, including `lw` at 0x1b1d0, `lw` at 0x1b1f4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x1b1e8, `lw` at 0x1b214.
  The `sw` at 0x1b1fc stores 4 bytes to a0 (arg0 at entry) +0x4.
  The `jal` at 0x1b1b0 calls r1nk_perf_architecture with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1b1ec calls signal with a0=[a0+16], a1=[a0+20]:2, a2=[a0+20]:2, a3=?.
  The `jal` at 0x1b218 calls cmn_err with a0=0x5, a1=sym(.rodata)+12952, a2=[a0+20]:2, a3=[a0+16].
  The `beq` branch at 0x1b1bc targets 0x1b200, is taken when at(=[a0+8]) == v0(=ret(r1nk_perf_architecture)), and falls through when at(=[a0+8]) != v0(=ret(r1nk_perf_architecture)).
  The `beq` branch at 0x1b1c8 targets 0x1b204, is taken when a2(=[a0+20]:2) == 0, and falls through when a2(=[a0+20]:2) != 0.
  The `bne` branch at 0x1b1d8 targets 0x1b204, is taken when (v0(=[a0+4]) & 0x1) != 0, and falls through when (v0(=[a0+4]) & 0x1) == 0.
  The `bne` branch at 0x1b1e0 targets 0x1b210, is taken when a0(=[sym(perfcnt_arch_swtch_msg)]) != 0, and falls through when a0(=[sym(perfcnt_arch_swtch_msg)]) == 0.
  The `beq` branch at 0x1b220 targets 0x1b1e8 and is always taken.
  The return at 0x1b208 has v0 = one of ret(r1nk_perf_architecture), ?.

- `mul64` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1b230 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1b230-0x1b248 (24 bytes).
  It occupies 24 bytes.
  The `sd` at 0x1b238 stores 8 bytes to a2 (arg2 at entry) +0x0.
  The return at 0x1b240 has v0 = ?.

- `madd` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1b248 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1b248-0x1b818 (1488 bytes).
  It occupies 1488 bytes.
  The `lw` at 0x1b278 loads 4 bytes from ((a0 << 0x2) + sym(EXP_INF)) +0x0.
  8 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x1b2b8, `ld` at 0x1b2d0, `ld` at 0x1b358.
  6 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x1b2c0, `lw` at 0x1b2d4, `lw` at 0x1b360.
  3 such `sw` accesses store 4 bytes to [-0x3fe8]:8 +0x53c, including `sw` at 0x1b2cc, `sw` at 0x1b36c, `sw` at 0x1b508.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_BIAS)) +0x0, including `lw` at 0x1b3c4, `lw` at 0x1b3f4.
  2 such `ld` accesses load 8 bytes from ((a0 << 0x3) + sym(IMP_1BIT)) +0x0, including `ld` at 0x1b3cc, `ld` at 0x1b3e8.
  The `ld` at 0x1b474 loads 8 bytes from ((a0 << 0x3) + sym(maddrnd)) +0x0.
  5 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_SHIFT)) +0x0, including `lw` at 0x1b550, `lw` at 0x1b6d8, `lw` at 0x1b71c.
  6 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(SIGN_SHIFT)) +0x0, including `lw` at 0x1b558, `lw` at 0x1b5cc, `lw` at 0x1b6e0.
  The `lbu` at 0x1b5b4 loads 1 byte from [-0x3fe8]:8 +0x548.
  2 such `ld` accesses load 8 bytes from ((a0 << 0x3) + sym(renorm)) +0x0, including `ld` at 0x1b618, `ld` at 0x1b64c.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_MIN)) +0x0, including `lw` at 0x1b630, `lw` at 0x1b660.
  3 such `ld` accesses load 8 bytes from (sym(QUIETNAN) + (a0 << 0x3)) +0x0, including `ld` at 0x1b680, `ld` at 0x1b6b4, `ld` at 0x1b7a0.
  The `jal` at 0x1b2e4 calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=sym(EXP_SHIFT).
  The `jal` at 0x1b2ec calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b384 calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=?, a6=([[-0x3fe8]:8+1340] | 0x10040), a7=[-0x3fe8]:8.
  The `jal` at 0x1b38c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b424 calls mul64 with a0=?, a1=?, a2=sp-144, a3=?.
  The `jal` at 0x1b434 calls renorm_d with a0=sp-152, a1=?, a2=?, a3=?.
  The `jalr` at 0x1b47c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?, a6=[((a0 << 0x3) + sym(maddrnd))]:8.
  The `jal` at 0x1b49c calls breakout_sd with a0=a0 at entry (arg0), a1=sp-160, a2=sp-52, a3=sp-44, a4=sp-40.
  The `jal` at 0x1b4bc calls add with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=a7 at entry (arg7).
  The `jal` at 0x1b520 calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=?, a3=?.
  The `jal` at 0x1b528 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b56c calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x1b574 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b5e4 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=[((a0 << 0x2) + sym(SIGN_SHIFT))], a3=[[-0x3fe8]:8+1352]:1, a4=0x3.
  The `jal` at 0x1b5ec calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1b61c calls (unknown callee) with a0=sp-40, a1=a1 at entry (arg1), a2=[((a0 << 0x3) + sym(renorm))]:8, a3=?.
  The `jalr` at 0x1b650 calls (unknown callee) with a0=sp-16, a1=sym(EXP_BIAS), a2=sym(renorm), a3=?.
  The `jal` at 0x1b67c calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=sym(EXP_SHIFT).
  The `jal` at 0x1b684 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b6b0 calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=?, a6=([[-0x3fe8]:8+1340] | 0x10040), a7=[-0x3fe8]:8.
  The `jal` at 0x1b6b8 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b6f0 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(EXP_SHIFT))], a4=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x1b6f8 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b734 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))], a4=((a0 << 0x2) + sym(SIGN_SHIFT)).
  The `jal` at 0x1b73c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b778 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(EXP_SHIFT))], a4=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x1b780 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b79c calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=?.
  The `jal` at 0x1b7a4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b7e8 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=?, a4=[((a0 << 0x2) + sym(EXP_SHIFT))], a5=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x1b7f0 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x1b298 targets 0x1b2fc, is taken when t1(=[((a0 << 0x2) + sym(EXP_INF))]) != a2, and falls through when t1(=[((a0 << 0x2) + sym(EXP_INF))]) == a2.
  The `bne` branch at 0x1b2a0 targets 0x1b338, is taken when t1(=[((a0 << 0x2) + sym(EXP_INF))]) != a5, and falls through when t1(=[((a0 << 0x2) + sym(EXP_INF))]) == a5.
  The `bne` branch at 0x1b2a8 targets 0x1b708, is taken when t1(=[((a0 << 0x2) + sym(EXP_INF))]) != a2(?), and falls through when t1(=[((a0 << 0x2) + sym(EXP_INF))]) == a2(?).
  The `beq` branch at 0x1b2b0 targets 0x1b6c8, is taken when a3(?) == a7, and falls through when a3(?) != a7.
  The `beq` branch at 0x1b2dc targets 0x1b674, is taken when (t2(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (t2(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x1b2f4 targets 0x1b4c8 and is always taken.
  The `bne` branch at 0x1b2fc targets 0x1b338, is taken when t1(=[((a0 << 0x2) + sym(EXP_INF))]) != a5, and falls through when t1(=[((a0 << 0x2) + sym(EXP_INF))]) == a5.
  The `bne` branch at 0x1b338 targets 0x1b39c, is taken when t1(=[((a0 << 0x2) + sym(EXP_INF))]) != t2(?), and falls through when t1(=[((a0 << 0x2) + sym(EXP_INF))]) == t2(?).
  The `bne` branch at 0x1b340 targets 0x1b4e4, is taken when t1(=[((a0 << 0x2) + sym(EXP_INF))]) != a2(?), and falls through when t1(=[((a0 << 0x2) + sym(EXP_INF))]) == a2(?).
  The `beq` branch at 0x1b348 targets 0x1b694, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x1b350 targets 0x1b74c, is taken when s4(=a7) == a4(?), and falls through when s4(=a7) != a4(?).
  The `beq` branch at 0x1b37c targets 0x1b6a4, is taken when (a5(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (a5(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x1b394 targets 0x1b4c8 and is always taken.
  The `beq` branch at 0x1b39c targets 0x1b584, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x1b3a4 targets 0x1b594, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x1b3ac targets 0x1b610, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `beq` branch at 0x1b3dc targets 0x1b648, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x1b404 targets 0x1b5fc, is taken when s1(=a0) == 0, and falls through when s1(=a0) != 0.
  The `bne` branch at 0x1b460 targets 0x1b46c, is taken when v0(=ret(renorm_d)) != t0(=0xb), and falls through when v0(=ret(renorm_d)) == t0(=0xb).
  The `bne` branch at 0x1b4e4 targets 0x1b53c, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `bne` branch at 0x1b4ec targets 0x1b53c, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x1b518 targets 0x1b790, is taken when (a7(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (a7(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x1b530 targets 0x1b4c8 and is always taken.
  The `beq` branch at 0x1b57c targets 0x1b4c8 and is always taken.
  The `bne` branch at 0x1b584 targets 0x1b3a4, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x1b58c targets 0x1b5a0 and is always taken.
  The `bne` branch at 0x1b594 targets 0x1b3ac, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `bne` branch at 0x1b5a0 targets 0x1b7b4, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `bne` branch at 0x1b5a8 targets 0x1b7b8, is taken when a3(?) != 0, and falls through when a3(?) == 0.
  The `beq` branch at 0x1b5c8 targets 0x1b800, is taken when a3(=[[-0x3fe8]:8+1352]:1) == a4(=0x3), and falls through when a3(=[[-0x3fe8]:8+1352]:1) != a4(=0x3).
  The `beq` branch at 0x1b5f4 targets 0x1b4c8 and is always taken.
  The `beq` branch at 0x1b608 targets 0x1b40c and is always taken.
  The `bne` branch at 0x1b640 targets 0x1b3e4, is taken when s0(?) != 0, and falls through when s0(?) == 0.
  The `beq` branch at 0x1b66c targets 0x1b404 and is always taken.
  The `beq` branch at 0x1b68c targets 0x1b4c8 and is always taken.
  The `bne` branch at 0x1b694 targets 0x1b350, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x1b69c targets 0x1b35c and is always taken.
  The `beq` branch at 0x1b6c0 targets 0x1b4c8 and is always taken.
  The `beq` branch at 0x1b700 targets 0x1b4c8 and is always taken.
  The `beq` branch at 0x1b744 targets 0x1b4c8 and is always taken.
  The `beq` branch at 0x1b788 targets 0x1b4c8 and is always taken.
  The `beq` branch at 0x1b7ac targets 0x1b4c8 and is always taken.
  The `beq` branch at 0x1b7f8 targets 0x1b4c8 and is always taken.
  The `beq` branch at 0x1b810 targets 0x1b5e4 and is always taken.
  The return at 0x1b4dc has v0 = one of ret(store_fpcsr), ret(add).
  The instructions from 0x1b538 to 0x1b538 are not reached by any path from the entry, and their branches are not listed.

- `add` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1b818 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1b818-0x1bd88 (1392 bytes).
  It occupies 1392 bytes.
  The `lw` at 0x1b844 loads 4 bytes from ((a0 << 0x2) + sym(EXP_INF)) +0x0.
  4 such `ld` accesses load 8 bytes from abs 0xffffffffffffc018, including `ld` at 0x1b87c, `ld` at 0x1b894, `ld` at 0x1b8f0.
  2 such `lw` accesses load 4 bytes from [-0x3fe8]:8 +0x53c, including `lw` at 0x1b884, `lw` at 0x1b898.
  The `sw` at 0x1b890 stores 4 bytes to [-0x3fe8]:8 +0x53c.
  2 such `lbu` accesses load 1 byte from [-0x3fe8]:8 +0x548, including `lbu` at 0x1b8f4, `lbu` at 0x1bb24.
  7 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(SIGN_SHIFT)) +0x0, including `lw` at 0x1b908, `lw` at 0x1bb38, `lw` at 0x1bb7c.
  The `ld` at 0x1ba04 loads 8 bytes from ((a0 << 0x3) + sym(round)) +0x0.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_BIAS)) +0x0, including `lw` at 0x1ba50, `lw` at 0x1ba7c.
  2 such `ld` accesses load 8 bytes from ((a0 << 0x3) + sym(IMP_1BIT)) +0x0, including `ld` at 0x1ba58, `ld` at 0x1ba70.
  5 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_SHIFT)) +0x0, including `lw` at 0x1bb84, `lw` at 0x1bbd8, `lw` at 0x1bc44.
  The `ld` at 0x1bbc0 loads 8 bytes from (sym(QUIETNAN) + (a0 << 0x3)) +0x0.
  2 such `ld` accesses load 8 bytes from ((a0 << 0x3) + sym(renorm)) +0x0, including `ld` at 0x1bcc4, `ld` at 0x1bcf4.
  2 such `lw` accesses load 4 bytes from ((a0 << 0x2) + sym(EXP_MIN)) +0x0, including `lw` at 0x1bcd8, `lw` at 0x1bd08.
  The `jal` at 0x1b8a8 calls post_sig with a0=0x8, a1=sym(QUIETNAN), a2=0x10040, a3=a3 at entry (arg3).
  The `jal` at 0x1b8b0 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b91c calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1b924 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1b9c8 calls renorm_d with a0=sp-144, a1=?, a2=?, a3=?.
  The `jalr` at 0x1ba0c calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1bb4c calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=sym(SIGN_SHIFT).
  The `jal` at 0x1bb54 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1bb98 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=a3 at entry (arg3), a4=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x1bba0 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1bbbc calls fpstore_sd with a0=a0 at entry (arg0), a1=[(sym(QUIETNAN) + (a0 << 0x3))]:8, a2=(a0 << 0x3), a3=a3 at entry (arg3).
  The `jal` at 0x1bbc4 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1bbf8 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x1bc00 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1bc64 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x1bc6c calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1bca4 calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x1bcac calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `jalr` at 0x1bcc8 calls (unknown callee) with a0=sp-40, a1=a1 at entry (arg1), a2=[((a0 << 0x3) + sym(renorm))]:8, a3=a3 at entry (arg3).
  The `jalr` at 0x1bcf8 calls (unknown callee) with a0=sp-16, a1=sym(IMP_1BIT), a2=?, a3=?.
  The `jal` at 0x1bd5c calls fpstore_sd with a0=a0 at entry (arg0), a1=?, a2=?, a3=[((a0 << 0x2) + sym(SIGN_SHIFT))].
  The `jal` at 0x1bd64 calls store_fpcsr with a0=?, a1=?, a2=?, a3=?.
  The `bne` branch at 0x1b864 targets 0x1b8c0, is taken when v0(=[((a0 << 0x2) + sym(EXP_INF))]) != a2, and falls through when v0(=[((a0 << 0x2) + sym(EXP_INF))]) == a2.
  The `bne` branch at 0x1b86c targets 0x1bc3c, is taken when v0(=[((a0 << 0x2) + sym(EXP_INF))]) != a5, and falls through when v0(=[((a0 << 0x2) + sym(EXP_INF))]) == a5.
  The `beq` branch at 0x1b874 targets 0x1bbd4, is taken when a1 == a4, and falls through when a1 != a4.
  The `beq` branch at 0x1b8a0 targets 0x1bbb0, is taken when (v1(=[[-0x3fe8]:8+1340]) & 0x800) == 0, and falls through when (v1(=[[-0x3fe8]:8+1340]) & 0x800) != 0.
  The `beq` branch at 0x1b8b8 targets 0x1ba18 and is always taken.
  The `beq` branch at 0x1b8c0 targets 0x1bc7c, is taken when v0(=[((a0 << 0x2) + sym(EXP_INF))]) == a5, and falls through when v0(=[((a0 << 0x2) + sym(EXP_INF))]) != a5.
  The `beq` branch at 0x1b8c8 targets 0x1bb08, is taken when a2 == 0, and falls through when a2 != 0.
  The `beq` branch at 0x1b8d0 targets 0x1bb64, is taken when s0(=a5) == 0, and falls through when s0(=a5) != 0.
  The `beq` branch at 0x1b8d8 targets 0x1ba3c, is taken when s2(=a1) == s3(=a4), and falls through when s2(=a1) != s3(=a4).
  The `bne` branch at 0x1b8e0 targets 0x1ba3c, is taken when s1(=a2) != s0(=a5), and falls through when s1(=a2) == s0(=a5).
  The `bne` branch at 0x1b8e8 targets 0x1ba3c, is taken when a6 != a3, and falls through when a6 == a3.
  The `beq` branch at 0x1b904 targets 0x1bd18, is taken when v1(=[[-0x3fe8]:8+1352]:1) == a0(=0x3), and falls through when v1(=[[-0x3fe8]:8+1352]:1) != a0(=0x3).
  The `beq` branch at 0x1b92c targets 0x1ba18 and is always taken.
  The `beq` branch at 0x1b950 targets 0x1baf8, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x1b96c targets 0x1b990, is taken when s2(=a1) == s3(=a4), and falls through when s2(=a1) != s3(=a4).
  The `beq` branch at 0x1b994 targets 0x1bc24, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x1b9a8 targets 0x1b9c8, is taken when (a2(?) & a6(=0xffe0000000000000)) == 0, and falls through when (a2(?) & a6(=0xffe0000000000000)) != 0.
  The `beq` branch at 0x1b9d4 targets 0x1b9fc, is taken when v0(=ret(renorm_d)) == 0, and falls through when v0(=ret(renorm_d)) != 0.
  The `beq` branch at 0x1ba3c targets 0x1bcbc, is taken when s1(=a2) == 0, and falls through when s1(=a2) != 0.
  The `beq` branch at 0x1ba64 targets 0x1bcec, is taken when s0(=a5) == 0, and falls through when s0(=a5) != 0.
  The `beq` branch at 0x1ba8c targets 0x1bc10, is taken when s5(=a0) == 0, and falls through when s5(=a0) != 0.
  The `beq` branch at 0x1ba9c targets 0x1baa8, is taken when s0(?) >= v0(?) (signed), and falls through when s0(?) < v0(?) (signed).
  The `beq` branch at 0x1bab0 targets 0x1bac0, is taken when s1(?) >= v0(?) (signed), and falls through when s1(?) < v0(?) (signed).
  The `bne` branch at 0x1bac0 targets 0x1bae0, is taken when t1(?) != 0, and falls through when t1(?) == 0.
  The `bne` branch at 0x1bac8 targets 0x1b938, is taken when s1(?) != s0(?), and falls through when s1(?) == s0(?).
  The `bne` branch at 0x1bad4 targets 0x1b938, is taken when a3(?) < a6(?) (unsigned), and falls through when a3(?) >= a6(?) (unsigned).
  The `beq` branch at 0x1baf0 targets 0x1b94c and is always taken.
  The `beq` branch at 0x1baf8 targets 0x1b990, is taken when s2(=a1) == s3(=a4), and falls through when s2(=a1) != s3(=a4).
  The `beq` branch at 0x1bb00 targets 0x1b978 and is always taken.
  The `bne` branch at 0x1bb08 targets 0x1b8d0, is taken when a3 != 0, and falls through when a3 == 0.
  The `bne` branch at 0x1bb10 targets 0x1bd30, is taken when a5 != 0, and falls through when a5 == 0.
  The `bne` branch at 0x1bb18 targets 0x1bd30, is taken when a6 != 0, and falls through when a6 == 0.
  The `beq` branch at 0x1bb34 targets 0x1bd74, is taken when v1(=[[-0x3fe8]:8+1352]:1) == a0(=0x3), and falls through when v1(=[[-0x3fe8]:8+1352]:1) != a0(=0x3).
  The `beq` branch at 0x1bb5c targets 0x1ba18 and is always taken.
  The `bne` branch at 0x1bb64 targets 0x1b8d8, is taken when a6 != 0, and falls through when a6 == 0.
  The `beq` branch at 0x1bba8 targets 0x1ba18 and is always taken.
  The `beq` branch at 0x1bbcc targets 0x1ba18 and is always taken.
  The `beq` branch at 0x1bc08 targets 0x1ba18 and is always taken.
  The `beq` branch at 0x1bc1c targets 0x1ba94 and is always taken.
  The `beq` branch at 0x1bc34 targets 0x1b99c and is always taken.
  The `beq` branch at 0x1bc74 targets 0x1ba18 and is always taken.
  The `beq` branch at 0x1bcb4 targets 0x1ba18 and is always taken.
  The `bne` branch at 0x1bce4 targets 0x1ba6c, is taken when s0(=a5) != 0, and falls through when s0(=a5) == 0.
  The `beq` branch at 0x1bd10 targets 0x1ba8c and is always taken.
  The `beq` branch at 0x1bd24 targets 0x1b91c and is always taken.
  The `beq` branch at 0x1bd6c targets 0x1ba18 and is always taken.
  The `beq` branch at 0x1bd80 targets 0x1bb4c and is always taken.
  The return at 0x1ba34 has v0 = one of ret(store_fpcsr), ret(?).
  The instructions from 0x1b934 to 0x1b934 are not reached by any path from the entry, and their branches are not listed.
  The instructions from 0x1bd2c to 0x1bd2c are not reached by any path from the entry, and their branches are not listed.

- `VEC_tlbmod` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1bd90 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1bd90-0x1bdd0 (64 bytes).
  It occupies 64 bytes.
  The `ld` at 0x1bd90 loads 8 bytes from ?.
  The `ld` at 0x1bdcc loads 8 bytes from a0 (arg0 at entry) +0x118.
  The `jal` at 0x1bda0 calls tlbmod with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3).
  Calls exception_exit via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x1bdb8).
  Calls soft_trap via direct with a0=a0 at entry (arg0), a1=ret(tlbmod), a2=?, a3=[a0+280]:8 (`j` at 0x1bdc8).
  The `bne` branch at 0x1bda8 targets 0x1bdc0, is taken when v0(=ret(tlbmod)) != 0, and falls through when v0(=ret(tlbmod)) == 0.

- `readadapters` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1bdd0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1bdd0-0x1bdd8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1bdd0 has v0 = 0x0.

- `pio_mapalloc` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1bdd8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1bdd8-0x1bde0 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1bdd8 has v0 = 0x0.

- `pio_mapaddr` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1bde0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1bde0-0x1bde8 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1bde0 has v0 = 0x0.

- `pio_mapfree` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1bde8 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1bde8-0x1bdf0 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1bde8 has v0 = ?.

- `VEC_ibe` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1bdf0 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1bdf0-0x1be60 (112 bytes).
  It occupies 112 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1bdf0, `ld` at 0x1bdf4.
  The `sd` at 0x1be08 stores 8 bytes to ?.
  2 such `ld` accesses load 8 bytes from abs 0xffffffffaff50000, including `ld` at 0x1be10, `ld` at 0x1be44.
  The `ld` at 0x1be28 loads 8 bytes from ([0xffffffffaff50000]:8 << 0x3) -0x500f0000.
  The `sd` at 0x1be3c stores 8 bytes to ([0xffffffffaff50000]:8 << 0x3) -0x500f0000.
  The `ld` at 0x1be4c loads 8 bytes from abs 0xffffffffb8000000.
  The `lh` at 0x1be54 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `sd` at 0x1be5c stores 8 bytes to a0 (arg0 at entry) +0x140.
  Calls VEC_trap via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=?, a3=a3 at entry (arg3) (`j` at 0x1be58).
  The `bgez` branch at 0x1bdf8 targets 0x1be04, is taken when ra(?) >= 0 (signed), and falls through when ra(?) < 0 (signed).

- `btool_size` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1be60 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1be60-0x1be68 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1be60 has v0 = 0x0.

- `btool_getinfo` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1be68 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1be68-0x1be70 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1be68 has v0 = 0x16.

- `btool_reinit` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1be70 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1be70-0x1be78 (8 bytes).
  It occupies 8 bytes.
  The return at 0x1be70 has v0 = ?.

- `other_prda` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1be80 (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1be80-0x1be9c (28 bytes).
  It occupies 28 bytes.
  The `lw` at 0x1be84 loads 4 bytes from a0 (arg0 at entry) +0x800.
  The `sw` at 0x1be90 stores 4 bytes to a0 (arg0 at entry) +0x800.
  The `beq` branch at 0x1be88 targets 0x1be94, is taken when at(=[a0+2048]) == v0(=[sym(.sbss)+280]), and falls through when at(=[a0+2048]) != v0(=[sym(.sbss)+280]).
  The return at 0x1be94 has v0 = [sym(.sbss)+280].

- `otherprda` in `usr/cpu/sysgen/IP30boot/kernel.o` at 0x1be9c (n64).
  Evidence grade: inferred.
  Exact binary: `usr/cpu/sysgen/IP30boot/kernel.o`.
  Range: 0x1be9c-0x1bee4 (72 bytes).
  It occupies 72 bytes.
  The `sw` at 0x1beac stores 4 bytes to a0 (arg0 at entry) +0x800.
  The `jal` at 0x1bec0 calls get_host_id with a0=sp-80, a1=sp-16, a2=0x0, a3=a3 at entry (arg3).
  The `beq` branch at 0x1bea4 targets 0x1beb8, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0x1bedc targets 0x1beb0 and is always taken.
  The return at 0x1beb0 has v0 = ?.
