# Instruction readings from hostfacts

Each entry records selected non-stack accesses, calls with argument slots, conditional branches and return values from the binary build named in its heading. Claims cite instruction addresses. These readings describe software behavior and do not establish hardware behavior.

- `swcopyout` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x7000, 88 bytes) Inferred.
  Stores 2 bytes from `v0` to [-0x3fe0]:8 +0xf6; value 0x2 (`sh` at 0x7038).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x7044).
  At `bltz a2,70e4` at 0x7004, the branch is taken when a2 < 0 (signed); it falls through when a2 >= 0 (signed) (`bltz` at 0x7004).
  At `bltz a1,70e4` at 0x700c, the branch is taken when a1 < 0 (signed); it falls through when a1 >= 0 (signed) (`bltz` at 0x700c).
  At `bne at,zero,70e4` at 0x7024, the branch is taken when t0(=0x10000000000) < v0(=(a1 + a2)) (unsigned); it falls through when t0(=0x10000000000) >= v0(=(a1 + a2)) (unsigned) (`bne` at 0x7024).
  Returns with v0 = 0x0 at 0x7050 (`jr` at 0x7050).
  Calls `swbcopy` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x7034).
- `uzero` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x7058, 140 bytes) Inferred.
  Stores 2 bytes from `v0` to [-0x3fe0]:8 +0xf6; value 0x2 (`sh` at 0x70c4).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x70d0).
  At `bne t1,at,7090` at 0x706c, the branch is taken when t1(=[[-0x3fe0]:8+112]:1) != at(=0x1); it falls through when t1(=[[-0x3fe0]:8+112]:1) == at(=0x1) (`bne` at 0x706c).
  At `beq t2,zero,7090` at 0x7078, the branch is taken when t2(=[[-0x3fe0]:8+824]:8) == 0; it falls through when t2(=[[-0x3fe0]:8+824]:8) != 0 (`beq` at 0x7078).
  At `bltz a1,70e4` at 0x7090, the branch is taken when a1 < 0 (signed); it falls through when a1 >= 0 (signed) (`bltz` at 0x7090).
  At `bltz a0,70e4` at 0x7098, the branch is taken when a0 < 0 (signed); it falls through when a0 >= 0 (signed) (`bltz` at 0x7098).
  At `bne at,zero,70e4` at 0x70b0, the branch is taken when t0(=0x10000000000) < v0(=(a0 + a1)) (unsigned); it falls through when t0(=0x10000000000) >= v0(=(a0 + a1)) (unsigned) (`bne` at 0x70b0).
  Returns with v0 = 0x0 at 0x70dc (`jr` at 0x70dc).
  Calls `do_ucopy_zero` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x7080).
  Calls `.text` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x7088).
  Calls `bzero` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x70c0).
- `cerror` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x70e4, 20 bytes) Inferred.
  Returns with v0 = -0x1 at 0x70f0 (`jr` at 0x70f0).
- `memset` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x70f8, 276 bytes) Inferred.
  Stores 1 bytes from `a1` to ? (base unknown) (`sb` at 0x715c).
  Stores 2 bytes from `a1` to ? (base unknown) (`sh` at 0x7178).
  Stores 4 bytes from `a1` to ? (base unknown) (`sw` at 0x7194).
  Stores 8 bytes from `a1` to ? (base unknown) (`sd` at 0x71b0).
  Stores 8 bytes from `a1` to ? (base unknown) (`sd` at 0x71cc).
  Stores 8 bytes from `a1` to ? (base unknown) (`sd` at 0x71d8).
  Stores 8 bytes from `a1` to ? (base unknown) (`sd` at 0x71ec).
  Stores 8 bytes from `a1` to ? (base unknown) (`sd` at 0x71f4).
  Stores 8 bytes from `a1` to ? (base unknown) (`sd` at 0x71f8).
  Stores 8 bytes from `a1` to ? (base unknown) (`sd` at 0x7200).
  At `beq a2,zero,7204` at 0x70f8, the branch is taken when a2 == 0; it falls through when a2 != 0 (`beq` at 0x70f8).
  At `beq t0,zero,71dc` at 0x7120, the branch is taken when (a0 & 0x1f) == 0; it falls through when (a0 & 0x1f) != 0 (`beq` at 0x7120).
  At `beq t0,zero,71bc` at 0x712c, the branch is taken when (a0 & 0xf) == 0; it falls through when (a0 & 0xf) != 0 (`beq` at 0x712c).
  At `beq t0,zero,71a0` at 0x7138, the branch is taken when (a0 & 0x7) == 0; it falls through when (a0 & 0x7) != 0 (`beq` at 0x7138).
  At `beq t0,zero,7184` at 0x7144, the branch is taken when (a0 & 0x3) == 0; it falls through when (a0 & 0x3) != 0 (`beq` at 0x7144).
  At `beq t0,zero,7168` at 0x7150, the branch is taken when (a0 & 0x1) == 0; it falls through when (a0 & 0x1) != 0 (`beq` at 0x7150).
  At `beq a2,zero,7204` at 0x7164, the branch is taken when a2(?) == 0; it falls through when a2(?) != 0 (`beq` at 0x7164).
  At `bne at,zero,7158` at 0x716c, the branch is taken when at(?) != 0; it falls through when at(?) == 0 (`bne` at 0x716c).
  At `beq a2,zero,7204` at 0x7180, the branch is taken when a2(?) == 0; it falls through when a2(?) != 0 (`beq` at 0x7180).
  At `bne at,zero,7168` at 0x7188, the branch is taken when at(?) != 0; it falls through when at(?) == 0 (`bne` at 0x7188).
  At `beq a2,zero,7204` at 0x719c, the branch is taken when a2(?) == 0; it falls through when a2(?) != 0 (`beq` at 0x719c).
  At `bne at,zero,7184` at 0x71a4, the branch is taken when at(?) != 0; it falls through when at(?) == 0 (`bne` at 0x71a4).
  At `beq a2,zero,7204` at 0x71b8, the branch is taken when a2(?) == 0; it falls through when a2(?) != 0 (`beq` at 0x71b8).
  At `bne at,zero,71a0` at 0x71c0, the branch is taken when at(?) != 0; it falls through when at(?) == 0 (`bne` at 0x71c0).
  At `beq a2,zero,7204` at 0x71d4, the branch is taken when a2(?) == 0; it falls through when a2(?) != 0 (`beq` at 0x71d4).
  At `bne at,zero,71bc` at 0x71e0, the branch is taken when a2(?) < 0x21 (unsigned); it falls through when a2(?) >= 0x21 (unsigned) (`bne` at 0x71e0).
  At `bne a2,zero,71dc` at 0x71fc, the branch is taken when a2(?) != 0; it falls through when a2(?) == 0 (`bne` at 0x71fc).
  Returns with v0 = a0 at 0x7204 (`jr` at 0x7204).
- `blkclr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x720c, 192 bytes) Inferred.
  At `bnel v0,zero,7228` at 0x7218, the branch is taken when v0(?) != 0; it falls through when v0(?) == 0 (`bnel` at 0x7218).
  Calls `_pagezero` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x7220).
- `bzero` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x720c, 192 bytes) Inferred.
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x0; value 0x0 (`sdl` at 0x7234).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x7258).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x725c).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x7260).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x726c).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x727c).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x7280).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x7290).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sdr` at 0x72a8).
  Stores 1 bytes from `zero` to ? (base unknown); value 0x0 (`sb` at 0x72b8).
  At `bnel v0,zero,7228` at 0x7218, the branch is taken when v0(?) != 0; it falls through when v0(?) == 0 (`bnel` at 0x7218).
  At `bne v0,zero,72ac` at 0x722c, the branch is taken when a1 < 0x8 (signed); it falls through when a1 >= 0x8 (signed) (`bne` at 0x722c).
  At `beq a3,zero,7270` at 0x724c, the branch is taken when (a1(?) & at(=-0x20)) == 0; it falls through when (a1(?) & at(=-0x20)) != 0 (`beq` at 0x724c).
  At `bne a0,a3,7254` at 0x7268, the branch is taken when a0(?) != a3(?); it falls through when a0(?) == a3(?) (`bne` at 0x7268).
  At `beq v0,zero,7288` at 0x7274, the branch is taken when (a1(?) & 0x10) == 0; it falls through when (a1(?) & 0x10) != 0 (`beq` at 0x7274).
  At `beq v1,zero,7298` at 0x7288, the branch is taken when v1(?) == 0; it falls through when v1(?) != 0 (`beq` at 0x7288).
  At `beq v0,zero,72c4` at 0x729c, the branch is taken when v0(?) == 0; it falls through when v0(?) != 0 (`beq` at 0x729c).
  At `blez a1,72c4` at 0x72ac, the branch is taken when a1 <= 0 (signed); it falls through when a1 > 0 (signed) (`blez` at 0x72ac).
  At `bne a0,a3,72b4` at 0x72bc, the branch is taken when a0(?) != a3(=(a0 + a1)); it falls through when a0(?) == a3(=(a0 + a1)) (`bne` at 0x72bc).
  Returns with v0 = ? at 0x72a4 (`jr` at 0x72a4).
  Returns with v0 = ? at 0x72c4 (`jr` at 0x72c4).
  Calls `_pagezero` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x7220).
- `bzero_nopage` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x7228, 48 bytes) Inferred.
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x0; value 0x0 (`sdl` at 0x7234).
  At `bne v0,zero,72ac` at 0x722c, the branch is taken when a1 < 0x8 (signed); it falls through when a1 >= 0x8 (signed) (`bne` at 0x722c).
  At `beq a3,zero,7270` at 0x724c, the branch is taken when (a1(?) & at(=-0x20)) == 0; it falls through when (a1(?) & at(=-0x20)) != 0 (`beq` at 0x724c).
- `bzero_stores` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x7258, 12 bytes) Inferred.
  Stores 8 bytes from `zero` to a0 (arg0 at entry) -0x20; value 0x0 (`sd` at 0x7258).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) -0x10; value 0x0 (`sd` at 0x725c).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) -0x18; value 0x0 (`sd` at 0x7260).
- `bzero_pref` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x7264, 104 bytes) Inferred.
  Range 0x72ac 0x72b0 0x72b4 0x72b8 0x72bc 0x72c0 is not reached from the entry.
  Stores 8 bytes from `zero` to a0 (arg0 at entry) -0x8; value 0x0 (`sd` at 0x726c).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x0; value 0x0 (`sd` at 0x727c).
  Stores 8 bytes from `zero` to a0 (arg0 at entry) +0x8; value 0x0 (`sd` at 0x7280).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sd` at 0x7290).
  Stores 8 bytes from `zero` to ? (base unknown); value 0x0 (`sdr` at 0x72a8).
  At `bne a0,a3,7254` at 0x7268, the branch is taken when a0 != a3; it falls through when a0 == a3 (`bne` at 0x7268).
  At `beq v0,zero,7288` at 0x7274, the branch is taken when (a1 & 0x10) == 0; it falls through when (a1 & 0x10) != 0 (`beq` at 0x7274).
  At `beq v1,zero,7298` at 0x7288, the branch is taken when v1(?) == 0; it falls through when v1(?) != 0 (`beq` at 0x7288).
  At `beq v0,zero,72c4` at 0x729c, the branch is taken when v0(?) == 0; it falls through when v0(?) != 0 (`beq` at 0x729c).
  At `blez a1,72c4` at 0x72ac, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`blez` at 0x72ac).
  At `bne a0,a3,72b4` at 0x72bc, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`bne` at 0x72bc).
  Returns with v0 = ? at 0x72a4 (`jr` at 0x72a4).
  Returns with v0 = ? at 0x72c4 (`jr` at 0x72c4).
- `bzero_end` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x72cc, 8 bytes) Inferred.
  Returns with v0 = ? at 0x72cc (`jr` at 0x72cc).
- `bzerror` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x72cc, 8 bytes) Inferred.
  Returns with v0 = ? at 0x72cc (`jr` at 0x72cc).
- `bcmp` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x72d4, 452 bytes) Inferred.
  At `bne at,zero,7468` at 0x72dc, the branch is taken when a2 < 0xb (signed); it falls through when a2 >= 0xb (signed) (`bne` at 0x72dc).
  At `bne v0,zero,73fc` at 0x72ec, the branch is taken when (v0(?) & 0x3) != 0; it falls through when (v0(?) & 0x3) == 0 (`bne` at 0x72ec).
  At `beq t8,zero,7320` at 0x72f8, the branch is taken when (t8(?) & 0x3) == 0; it falls through when (t8(?) & 0x3) != 0 (`beq` at 0x72f8).
  At `bne t0,t1,73f4` at 0x731c, the branch is taken when t0(?) != t1(?); it falls through when t0(?) == t1(?) (`bne` at 0x731c).
  At `beq v0,zero,7384` at 0x7328, the branch is taken when (a2(?) & at(=-0x10)) == 0; it falls through when (a2(?) & at(=-0x10)) != 0 (`beq` at 0x7328).
  At `bne t0,t1,73f4` at 0x7340, the branch is taken when t0(?) != t1(?); it falls through when t0(?) == t1(?) (`bne` at 0x7340).
  At `bne t0,t1,73f4` at 0x7354, the branch is taken when t0(?) != t1(?); it falls through when t0(?) == t1(?) (`bne` at 0x7354).
  At `bne t0,t1,73f4` at 0x7364, the branch is taken when t0(?) != t1(?); it falls through when t0(?) == t1(?) (`bne` at 0x7364).
  At `bne t0,t1,73f4` at 0x7374, the branch is taken when t0(?) != t1(?); it falls through when t0(?) == t1(?) (`bne` at 0x7374).
  At `bne v0,zero,7330` at 0x737c, the branch is taken when v0(?) != 0; it falls through when v0(?) == 0 (`bne` at 0x737c).
  At `beq t9,zero,73b8` at 0x7388, the branch is taken when (a2(?) & 0x8) == 0; it falls through when (a2(?) & 0x8) != 0 (`beq` at 0x7388).
  At `bne t0,t1,73f4` at 0x73a0, the branch is taken when t0(?) != t1(?); it falls through when t0(?) == t1(?) (`bne` at 0x73a0).
  At `bne t0,t1,73f4` at 0x73b0, the branch is taken when t0(?) != t1(?); it falls through when t0(?) == t1(?) (`bne` at 0x73b0).
  At `beq t8,zero,73d8` at 0x73b8, the branch is taken when t8(?) == 0; it falls through when t8(?) != 0 (`beq` at 0x73b8).
  At `bne t0,t1,73f4` at 0x73d0, the branch is taken when t0(?) != t1(?); it falls through when t0(?) == t1(?) (`bne` at 0x73d0).
  At `beq t9,zero,7490` at 0x73d8, the branch is taken when t9(?) == 0; it falls through when t9(?) != 0 (`beq` at 0x73d8).
  At `beq a3,zero,7430` at 0x7404, the branch is taken when (a3(?) & 0x3) == 0; it falls through when (a3(?) & 0x3) != 0 (`beq` at 0x7404).
  At `bne t0,t1,73f4` at 0x7420, the branch is taken when t0(?) != t1(?); it falls through when t0(?) == t1(?) (`bne` at 0x7420).
  At `bne a0,a3,7410` at 0x7428, the branch is taken when a0(?) != a3(?); it falls through when a0(?) == a3(?) (`bne` at 0x7428).
  At `beq a3,zero,7468` at 0x7438, the branch is taken when (a2(?) & at(=-0x4)) == 0; it falls through when (a2(?) & at(=-0x4)) != 0 (`beq` at 0x7438).
  At `bne t0,t1,73f4` at 0x7458, the branch is taken when t0(?) != t1(?); it falls through when t0(?) == t1(?) (`bne` at 0x7458).
  At `bne a0,a3,7444` at 0x7460, the branch is taken when a0(?) != a3(?); it falls through when a0(?) == a3(?) (`bne` at 0x7460).
  At `blez a2,7490` at 0x7468, the branch is taken when a2(?) <= 0 (signed); it falls through when a2(?) > 0 (signed) (`blez` at 0x7468).
  At `bne t0,t1,73f4` at 0x7480, the branch is taken when t0(?) != t1(?); it falls through when t0(?) == t1(?) (`bne` at 0x7480).
  At `bne a0,a3,7470` at 0x7488, the branch is taken when a0(?) != a3(?); it falls through when a0(?) == a3(?) (`bne` at 0x7488).
  Returns with v0 = ? at 0x73f4 (`jr` at 0x73f4).
  Returns with v0 = 0x0 at 0x7490 (`jr` at 0x7490).
- `memcmp` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x72d4, 452 bytes) Inferred.
  At `bne at,zero,7468` at 0x72dc, the branch is taken when a2 < 0xb (signed); it falls through when a2 >= 0xb (signed) (`bne` at 0x72dc).
  At `bne v0,zero,73fc` at 0x72ec, the branch is taken when (v0(?) & 0x3) != 0; it falls through when (v0(?) & 0x3) == 0 (`bne` at 0x72ec).
  At `beq t8,zero,7320` at 0x72f8, the branch is taken when (t8(?) & 0x3) == 0; it falls through when (t8(?) & 0x3) != 0 (`beq` at 0x72f8).
  At `bne t0,t1,73f4` at 0x731c, the branch is taken when t0(?) != t1(?); it falls through when t0(?) == t1(?) (`bne` at 0x731c).
  At `beq v0,zero,7384` at 0x7328, the branch is taken when (a2(?) & at(=-0x10)) == 0; it falls through when (a2(?) & at(=-0x10)) != 0 (`beq` at 0x7328).
  At `bne t0,t1,73f4` at 0x7340, the branch is taken when t0(?) != t1(?); it falls through when t0(?) == t1(?) (`bne` at 0x7340).
  At `bne t0,t1,73f4` at 0x7354, the branch is taken when t0(?) != t1(?); it falls through when t0(?) == t1(?) (`bne` at 0x7354).
  At `bne t0,t1,73f4` at 0x7364, the branch is taken when t0(?) != t1(?); it falls through when t0(?) == t1(?) (`bne` at 0x7364).
  At `bne t0,t1,73f4` at 0x7374, the branch is taken when t0(?) != t1(?); it falls through when t0(?) == t1(?) (`bne` at 0x7374).
  At `bne v0,zero,7330` at 0x737c, the branch is taken when v0(?) != 0; it falls through when v0(?) == 0 (`bne` at 0x737c).
  At `beq t9,zero,73b8` at 0x7388, the branch is taken when (a2(?) & 0x8) == 0; it falls through when (a2(?) & 0x8) != 0 (`beq` at 0x7388).
  At `bne t0,t1,73f4` at 0x73a0, the branch is taken when t0(?) != t1(?); it falls through when t0(?) == t1(?) (`bne` at 0x73a0).
  At `bne t0,t1,73f4` at 0x73b0, the branch is taken when t0(?) != t1(?); it falls through when t0(?) == t1(?) (`bne` at 0x73b0).
  At `beq t8,zero,73d8` at 0x73b8, the branch is taken when t8(?) == 0; it falls through when t8(?) != 0 (`beq` at 0x73b8).
  At `bne t0,t1,73f4` at 0x73d0, the branch is taken when t0(?) != t1(?); it falls through when t0(?) == t1(?) (`bne` at 0x73d0).
  At `beq t9,zero,7490` at 0x73d8, the branch is taken when t9(?) == 0; it falls through when t9(?) != 0 (`beq` at 0x73d8).
  At `beq a3,zero,7430` at 0x7404, the branch is taken when (a3(?) & 0x3) == 0; it falls through when (a3(?) & 0x3) != 0 (`beq` at 0x7404).
  At `bne t0,t1,73f4` at 0x7420, the branch is taken when t0(?) != t1(?); it falls through when t0(?) == t1(?) (`bne` at 0x7420).
  At `bne a0,a3,7410` at 0x7428, the branch is taken when a0(?) != a3(?); it falls through when a0(?) == a3(?) (`bne` at 0x7428).
  At `beq a3,zero,7468` at 0x7438, the branch is taken when (a2(?) & at(=-0x4)) == 0; it falls through when (a2(?) & at(=-0x4)) != 0 (`beq` at 0x7438).
  At `bne t0,t1,73f4` at 0x7458, the branch is taken when t0(?) != t1(?); it falls through when t0(?) == t1(?) (`bne` at 0x7458).
  At `bne a0,a3,7444` at 0x7460, the branch is taken when a0(?) != a3(?); it falls through when a0(?) == a3(?) (`bne` at 0x7460).
  At `blez a2,7490` at 0x7468, the branch is taken when a2(?) <= 0 (signed); it falls through when a2(?) > 0 (signed) (`blez` at 0x7468).
  At `bne t0,t1,73f4` at 0x7480, the branch is taken when t0(?) != t1(?); it falls through when t0(?) == t1(?) (`bne` at 0x7480).
  At `bne a0,a3,7470` at 0x7488, the branch is taken when a0(?) != a3(?); it falls through when a0(?) == a3(?) (`bne` at 0x7488).
  Returns with v0 = ? at 0x73f4 (`jr` at 0x73f4).
  Returns with v0 = 0x0 at 0x7490 (`jr` at 0x7490).
- `addupc` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x7498, 248 bytes) Inferred.
  Stores 2 bytes from `v1` to [-0x3fe0]:8 +0xf6; value 0x3 (`sh` at 0x750c).
  Stores 4 bytes from `v1` to ? (base unknown) (`sc` at 0x752c).
  Stores 2 bytes from `v1` to [-0x3fe0]:8 +0xf6; value 0x3 (`sh` at 0x7564).
  Stores 4 bytes from `v1` to ? (base unknown) (`sc` at 0x7570).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x757c).
  At `bltz a0,7588` at 0x74a0, the branch is taken when a0(?) < 0 (signed); it falls through when a0(?) >= 0 (signed) (`bltz` at 0x74a0).
  At `bne v0,at,74c0` at 0x74b0, the branch is taken when v0(=[a1+24]) != at(=0x2); it falls through when v0(=[a1+24]) == at(=0x2) (`bne` at 0x74b0).
  At `bne a3,zero,753c` at 0x74dc, the branch is taken when a3 != 0; it falls through when a3 == 0 (`bne` at 0x74dc).
  At `beq at,zero,7588` at 0x74f0, the branch is taken when v0(?) >= v1(=[a1+8]) (unsigned); it falls through when v0(?) < v1(=[a1+8]) (unsigned) (`beq` at 0x74f0).
  At `bltz v0,7590` at 0x74fc, the branch is taken when v0(?) < 0 (signed); it falls through when v0(?) >= 0 (signed) (`bltz` at 0x74fc).
  At `bne t1,zero,7524` at 0x7518, the branch is taken when (v0(?) & 0x2) != 0; it falls through when (v0(?) & 0x2) == 0 (`bne` at 0x7518).
  At `beql v1,zero,7524` at 0x7530, the branch is taken when v1(?) == 0; it falls through when v1(?) != 0 (`beql` at 0x7530).
  At `beq at,zero,7588` at 0x7548, the branch is taken when v0(?) >= v1(=[a1+8]) (unsigned); it falls through when v0(?) < v1(=[a1+8]) (unsigned) (`beq` at 0x7548).
  At `bltz v0,7590` at 0x7554, the branch is taken when v0(?) < 0 (signed); it falls through when v0(?) >= 0 (signed) (`bltz` at 0x7554).
  At `beql v1,zero,7568` at 0x7574, the branch is taken when v1(?) == 0; it falls through when v1(?) != 0 (`beql` at 0x7574).
  Returns with v0 = 0x0 at 0x7580 (`jr` at 0x7580).
  Returns with v0 = -0x1 at 0x7588 (`jr` at 0x7588).
- `adderr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x7590, 12 bytes) Inferred.
  Stores 4 bytes from `zero` to a1 (arg1 at entry) +0x18; value 0x0 (`sw` at 0x7598).
  Returns with v0 = 0x0 at 0x7594 (`jr` at 0x7594).
- `fubyte` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x759c, 28 bytes) Inferred.
  Stores 2 bytes from `v0` to [-0x3fe0]:8 +0xf6; value 0x4 (`sh` at 0x75a8).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x75b4).
  At `bltz a0,7758` at 0x759c, the branch is taken when a0 < 0 (signed); it falls through when a0 >= 0 (signed) (`bltz` at 0x759c).
  Returns with v0 = [a0]:1 at 0x75b0 (`jr` at 0x75b0).
- `fuibyte` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x759c, 28 bytes) Inferred.
  Stores 2 bytes from `v0` to [-0x3fe0]:8 +0xf6; value 0x4 (`sh` at 0x75a8).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x75b4).
  At `bltz a0,7758` at 0x759c, the branch is taken when a0 < 0 (signed); it falls through when a0 >= 0 (signed) (`bltz` at 0x759c).
  Returns with v0 = [a0]:1 at 0x75b0 (`jr` at 0x75b0).
- `upath` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x75b8, 68 bytes) Inferred.
  Stores 2 bytes from `v0` to [-0x3fe0]:8 +0xf6; value 0x4 (`sh` at 0x75c4).
  Stores 1 bytes from `v0` to ? (base unknown) (`sb` at 0x75d8).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x75f8).
  At `bltz a0,7758` at 0x75b8, the branch is taken when a0 < 0 (signed); it falls through when a0 >= 0 (signed) (`bltz` at 0x75b8).
  At `beq v0,zero,75f0` at 0x75d4, the branch is taken when v0(?) == 0; it falls through when v0(?) != 0 (`beq` at 0x75d4).
  At `bne a2,zero,75cc` at 0x75e0, the branch is taken when a2(?) != 0; it falls through when a2(?) == 0 (`bne` at 0x75e0).
  Returns with v0 = ? at 0x75f4 (`jr` at 0x75f4).
- `subyte` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x75fc, 32 bytes) Inferred.
  Stores 2 bytes from `v0` to [-0x3fe0]:8 +0xf6; value 0x4 (`sh` at 0x7608).
  Stores 1 bytes from `a1` to a0 (arg0 at entry) +0x0; value a1 (`sb` at 0x760c).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x7610).
  At `bltz a0,7758` at 0x75fc, the branch is taken when a0 < 0 (signed); it falls through when a0 >= 0 (signed) (`bltz` at 0x75fc).
  Returns with v0 = 0x0 at 0x7614 (`jr` at 0x7614).
- `suibyte` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x75fc, 32 bytes) Inferred.
  Stores 2 bytes from `v0` to [-0x3fe0]:8 +0xf6; value 0x4 (`sh` at 0x7608).
  Stores 1 bytes from `a1` to a0 (arg0 at entry) +0x0; value a1 (`sb` at 0x760c).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x7610).
  At `bltz a0,7758` at 0x75fc, the branch is taken when a0 < 0 (signed); it falls through when a0 >= 0 (signed) (`bltz` at 0x75fc).
  Returns with v0 = 0x0 at 0x7614 (`jr` at 0x7614).
- `fuiword` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x761c, 32 bytes) Inferred.
  Stores 2 bytes from `v0` to [-0x3fe0]:8 +0xf6; value 0x4 (`sh` at 0x7628).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x7630).
  At `bltz a0,7758` at 0x761c, the branch is taken when a0 < 0 (signed); it falls through when a0 >= 0 (signed) (`bltz` at 0x761c).
  Returns with v0 = [a0] at 0x7634 (`jr` at 0x7634).
- `fuword` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x761c, 32 bytes) Inferred.
  Stores 2 bytes from `v0` to [-0x3fe0]:8 +0xf6; value 0x4 (`sh` at 0x7628).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x7630).
  At `bltz a0,7758` at 0x761c, the branch is taken when a0 < 0 (signed); it falls through when a0 >= 0 (signed) (`bltz` at 0x761c).
  Returns with v0 = [a0] at 0x7634 (`jr` at 0x7634).
- `sfu32v` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x763c, 52 bytes) Inferred.
  Stores 2 bytes from `v0` to [-0x3fe0]:8 +0xf6; value 0xc (`sh` at 0x7648).
  Stores 4 bytes from `v0` to ? (base unknown) (`sw` at 0x7654).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x7664).
  At `bltz a1,76b0` at 0x763c, the branch is taken when a1 < 0 (signed); it falls through when a1 >= 0 (signed) (`bltz` at 0x763c).
  At `bne zero,a3,764c` at 0x765c, the branch is taken when a3(?) != 0; it falls through when a3(?) == 0 (`bne` at 0x765c).
  Returns with v0 = 0x1 at 0x7668 (`jr` at 0x7668).
- `sfu32` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x7670, 32 bytes) Inferred.
  Stores 2 bytes from `v0` to [-0x3fe0]:8 +0xf6; value 0xc (`sh` at 0x767c).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x7684).
  At `bltz a1,76b0` at 0x7670, the branch is taken when a1 < 0 (signed); it falls through when a1 >= 0 (signed) (`bltz` at 0x7670).
  Returns with v0 = [a1] at 0x7688 (`jr` at 0x7688).
- `spu32` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x7690, 32 bytes) Inferred.
  Stores 2 bytes from `v0` to [-0x3fe0]:8 +0xf6; value 0xc (`sh` at 0x769c).
  Stores 4 bytes from `a2` to a1 (arg1 at entry) +0x0; value a2 (`sw` at 0x76a0).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x76a4).
  At `bltz a1,76b0` at 0x7690, the branch is taken when a1 < 0 (signed); it falls through when a1 >= 0 (signed) (`bltz` at 0x7690).
  Returns with v0 = 0x1 at 0x76a8 (`jr` at 0x76a8).
- `suerror` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x76b0, 16 bytes) Inferred.
  Stores 4 bytes from `v1` to a0 (arg0 at entry) +0x0; value 0xe (`sw` at 0x76bc).
  Returns with v0 = 0x0 at 0x76b8 (`jr` at 0x76b8).
- `fulong` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x76c0, 32 bytes) Inferred.
  Stores 2 bytes from `v0` to [-0x3fe0]:8 +0xf6; value 0x4 (`sh` at 0x76cc).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x76d4).
  At `bltz a0,7758` at 0x76c0, the branch is taken when a0 < 0 (signed); it falls through when a0 >= 0 (signed) (`bltz` at 0x76c0).
  Returns with v0 = [a0]:8 at 0x76d8 (`jr` at 0x76d8).
- `suiword` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x76e0, 32 bytes) Inferred.
  Stores 2 bytes from `v0` to [-0x3fe0]:8 +0xf6; value 0x4 (`sh` at 0x76ec).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0x0; value a1 (`sw` at 0x76f0).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x76f4).
  At `bltz a0,7758` at 0x76e0, the branch is taken when a0 < 0 (signed); it falls through when a0 >= 0 (signed) (`bltz` at 0x76e0).
  Returns with v0 = 0x0 at 0x76f8 (`jr` at 0x76f8).
- `suword` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x76e0, 32 bytes) Inferred.
  Stores 2 bytes from `v0` to [-0x3fe0]:8 +0xf6; value 0x4 (`sh` at 0x76ec).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0x0; value a1 (`sw` at 0x76f0).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x76f4).
  At `bltz a0,7758` at 0x76e0, the branch is taken when a0 < 0 (signed); it falls through when a0 >= 0 (signed) (`bltz` at 0x76e0).
  Returns with v0 = 0x0 at 0x76f8 (`jr` at 0x76f8).
- `suhalf` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x7700, 32 bytes) Inferred.
  Stores 2 bytes from `v0` to [-0x3fe0]:8 +0xf6; value 0x4 (`sh` at 0x770c).
  Stores 2 bytes from `a1` to a0 (arg0 at entry) +0x0; value a1 (`sh` at 0x7710).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x7714).
  At `bltz a0,7758` at 0x7700, the branch is taken when a0 < 0 (signed); it falls through when a0 >= 0 (signed) (`bltz` at 0x7700).
  Returns with v0 = 0x0 at 0x7718 (`jr` at 0x7718).
- `sulong` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x7720, 32 bytes) Inferred.
  Stores 2 bytes from `v0` to [-0x3fe0]:8 +0xf6; value 0x4 (`sh` at 0x772c).
  Stores 8 bytes from `a1` to a0 (arg0 at entry) +0x0; value a1 (`sd` at 0x7730).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x7734).
  At `bltz a0,7758` at 0x7720, the branch is taken when a0 < 0 (signed); it falls through when a0 >= 0 (signed) (`bltz` at 0x7720).
  Returns with v0 = 0x0 at 0x7738 (`jr` at 0x7738).
- `fkiword` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x7740, 24 bytes) Inferred.
  Stores 4 bytes from `v0` to abs 0xffffffffffffc404; value 0xd (`sw` at 0x7744).
  Stores 4 bytes from `zero` to abs 0xffffffffffffc404; value 0x0 (`sw` at 0x774c).
  Returns with v0 = [a0] at 0x7750 (`jr` at 0x7750).
- `uerror` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x7758, 8 bytes) Inferred.
  Returns with v0 = -0x1 at 0x7758 (`jr` at 0x7758).
- `strlen` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x7760, 32 bytes) Inferred.
  At `bne v1,zero,7764` at 0x776c, the branch is taken when v1(?) != 0; it falls through when v1(?) == 0 (`bne` at 0x776c).
  Returns with v0 = ? at 0x7778 (`jr` at 0x7778).
- `uload_word` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x7780, 36 bytes) Inferred.
  Stores 2 bytes from `v0` to [-0x3fe0]:8 +0xf6; value 0xb (`sh` at 0x7788).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x7794).
  Stores 8 bytes from `v1` to a1 (arg1 at entry) +0x0 (`sd` at 0x7798).
  Returns with v0 = 0x0 at 0x779c (`jr` at 0x779c).
- `uload_half` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x77a4, 44 bytes) Inferred.
  Stores 2 bytes from `v0` to [-0x3fe0]:8 +0xf6; value 0xb (`sh` at 0x77ac).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x77c0).
  Stores 8 bytes from `v1` to a1 (arg1 at entry) +0x0; value (([a0]:1 << 0x8) | [a0+1]:1) (`sd` at 0x77c4).
  Returns with v0 = 0x0 at 0x77c8 (`jr` at 0x77c8).
- `uload_uhalf` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x77d0, 44 bytes) Inferred.
  Stores 2 bytes from `v0` to [-0x3fe0]:8 +0xf6; value 0xb (`sh` at 0x77d8).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x77ec).
  Stores 8 bytes from `v1` to a1 (arg1 at entry) +0x0; value (([a0]:1 << 0x8) | [a0+1]:1) (`sd` at 0x77f0).
  Returns with v0 = 0x0 at 0x77f4 (`jr` at 0x77f4).
- `uload_uword` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x77fc, 44 bytes) Inferred.
  Stores 2 bytes from `v0` to [-0x3fe0]:8 +0xf6; value 0xb (`sh` at 0x7804).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x7818).
  Stores 8 bytes from `v1` to a1 (arg1 at entry) +0x0 (`sd` at 0x781c).
  Returns with v0 = 0x0 at 0x7820 (`jr` at 0x7820).
- `uload_double` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x7828, 36 bytes) Inferred.
  Stores 2 bytes from `v0` to [-0x3fe0]:8 +0xf6; value 0xb (`sh` at 0x7830).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x783c).
  Stores 8 bytes from `v1` to a1 (arg1 at entry) +0x0 (`sd` at 0x7840).
  Returns with v0 = 0x0 at 0x7844 (`jr` at 0x7844).
- `ustore_double` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x784c, 32 bytes) Inferred.
  Stores 2 bytes from `v0` to [-0x3fe0]:8 +0xf6; value 0xb (`sh` at 0x7854).
  Stores 8 bytes from `a1` to a0 (arg0 at entry) +0x0; value a1 (`sdl` at 0x7858).
  Stores 8 bytes from `a1` to a0 (arg0 at entry) +0x7; value a1 (`sdr` at 0x785c).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x7860).
  Returns with v0 = 0x0 at 0x7864 (`jr` at 0x7864).
- `ustore_word` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x786c, 32 bytes) Inferred.
  Stores 2 bytes from `v0` to [-0x3fe0]:8 +0xf6; value 0xb (`sh` at 0x7874).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0x0; value a1 (`swl` at 0x7878).
  Stores 4 bytes from `a1` to a0 (arg0 at entry) +0x3; value a1 (`swr` at 0x787c).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x7880).
  Returns with v0 = 0x0 at 0x7884 (`jr` at 0x7884).
- `ustore_half` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x788c, 36 bytes) Inferred.
  Stores 2 bytes from `v0` to [-0x3fe0]:8 +0xf6; value 0xb (`sh` at 0x7894).
  Stores 1 bytes from `a1` to a0 (arg0 at entry) +0x1; value a1 (`sb` at 0x7898).
  Stores 1 bytes from `at` to a0 (arg0 at entry) +0x0 (`sb` at 0x78a0).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x78a4).
  Returns with v0 = 0x0 at 0x78a8 (`jr` at 0x78a8).
- `fixade_error` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x78b0, 8 bytes) Inferred.
  Returns with v0 = gp at 0x78b0 (`jr` at 0x78b0).
- `memcpy` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x78b8, 1224 bytes) Inferred.
  Stores 8 bytes from `v0` to a0 (arg0 at entry) +0x0 (`sdl` at 0x7938).
  Stores 8 bytes from `t0` to ? (base unknown) (`sd` at 0x7978).
  Stores 8 bytes from `t2` to ? (base unknown) (`sd` at 0x797c).
  Stores 8 bytes from `t1` to ? (base unknown) (`sd` at 0x7980).
  Stores 8 bytes from `t3` to ? (base unknown) (`sd` at 0x7984).
  Stores 8 bytes from `a4` to ? (base unknown) (`sd` at 0x7988).
  Stores 8 bytes from `a6` to ? (base unknown) (`sd` at 0x798c).
  Stores 8 bytes from `a5` to ? (base unknown) (`sd` at 0x7990).
  Stores 8 bytes from `a7` to ? (base unknown) (`sd` at 0x7994).
  Stores 8 bytes from `t2` to ? (base unknown) (`sd` at 0x79d4).
  Stores 8 bytes from `t0` to ? (base unknown) (`sd` at 0x79d8).
  Stores 8 bytes from `t1` to ? (base unknown) (`sd` at 0x79dc).
  Stores 8 bytes from `t3` to ? (base unknown) (`sd` at 0x79e0).
  Stores 8 bytes from `a4` to ? (base unknown) (`sd` at 0x79e4).
  Stores 8 bytes from `a6` to ? (base unknown) (`sd` at 0x79e8).
  Stores 8 bytes from `a5` to ? (base unknown) (`sd` at 0x79ec).
  Stores 8 bytes from `a7` to ? (base unknown) (`sd` at 0x79f4).
  Stores 4 bytes from `v0` to a0 (arg0 at entry) +0x0 (`swl` at 0x7a2c).
  Stores 4 bytes from `t0` to ? (base unknown) (`sw` at 0x7a70).
  Stores 4 bytes from `t1` to ? (base unknown) (`sw` at 0x7a74).
  Stores 4 bytes from `t2` to ? (base unknown) (`sw` at 0x7a78).
  Stores 4 bytes from `t3` to ? (base unknown) (`sw` at 0x7a7c).
  Stores 4 bytes from `a4` to ? (base unknown) (`sw` at 0x7a80).
  Stores 4 bytes from `a5` to ? (base unknown) (`sw` at 0x7a84).
  Stores 4 bytes from `a6` to ? (base unknown) (`sw` at 0x7a88).
  Stores 4 bytes from `a7` to ? (base unknown) (`sw` at 0x7a90).
  Stores 4 bytes from `t0` to ? (base unknown) (`sw` at 0x7ab8).
  Stores 4 bytes from `t1` to ? (base unknown) (`sw` at 0x7abc).
  Stores 4 bytes from `t2` to ? (base unknown) (`sw` at 0x7ac0).
  Stores 4 bytes from `t3` to ? (base unknown) (`sw` at 0x7ac4).
  Stores 4 bytes from `t0` to ? (base unknown) (`sw` at 0x7ae4).
  Stores 4 bytes from `t1` to ? (base unknown) (`sw` at 0x7ae8).
  Stores 4 bytes from `t0` to ? (base unknown) (`sw` at 0x7b04).
  Stores 4 bytes from `t0` to ? (base unknown) (`swr` at 0x7b24).
  Stores 1 bytes from `v0` to ? (base unknown) (`sb` at 0x7b4c).
  Stores 4 bytes from `t0` to ? (base unknown) (`sw` at 0x7b7c).
  Stores 4 bytes from `t1` to ? (base unknown) (`sw` at 0x7b88).
  Stores 4 bytes from `t2` to ? (base unknown) (`sw` at 0x7b94).
  Stores 4 bytes from `t3` to ? (base unknown) (`sw` at 0x7b9c).
  Stores 4 bytes from `t0` to ? (base unknown) (`sw` at 0x7bc4).
  Stores 4 bytes from `t1` to ? (base unknown) (`sw` at 0x7bc8).
  Stores 4 bytes from `t0` to ? (base unknown) (`sw` at 0x7be8).
  Stores 1 bytes from `v0` to ? (base unknown) (`sb` at 0x7c04).
  Stores 1 bytes from `v0` to ? (base unknown) (`sb` at 0x7c54).
  Stores 1 bytes from `v0` to (a0 + a2) -0x1; value [(a1 + a2)-1]:1 (`sb` at 0x7c8c).
  Stores 2 bytes from `v0` to (a0 + a2) -0x2; value [(a1 + a2)-2]:2 (`sh` at 0x7ca4).
  Stores 1 bytes from `v0` to (a0 + a2) -0x1; value [(a1 + a2)-1]:1 (`sb` at 0x7cbc).
  Stores 2 bytes from `v1` to (a0 + a2) -0x3; value [(a1 + a2)-3]:2 (`sh` at 0x7cc0).
  Stores 4 bytes from `v0` to ? (base unknown) (`sw` at 0x7cfc).
  Stores 4 bytes from `v1` to ? (base unknown) (`sw` at 0x7d00).
  Stores 4 bytes from `t0` to ? (base unknown) (`sw` at 0x7d04).
  Stores 4 bytes from `t1` to ? (base unknown) (`sw` at 0x7d08).
  Stores 4 bytes from `t2` to ? (base unknown) (`sw` at 0x7d0c).
  Stores 4 bytes from `t3` to ? (base unknown) (`sw` at 0x7d10).
  Stores 4 bytes from `a4` to ? (base unknown) (`sw` at 0x7d14).
  Stores 4 bytes from `a5` to ? (base unknown) (`sw` at 0x7d1c).
  Stores 4 bytes from `v0` to ? (base unknown) (`sw` at 0x7d48).
  Stores 4 bytes from `v1` to ? (base unknown) (`sw` at 0x7d4c).
  Stores 4 bytes from `t0` to ? (base unknown) (`sw` at 0x7d50).
  Stores 4 bytes from `t1` to ? (base unknown) (`sw` at 0x7d58).
  Stores 4 bytes from `v0` to ? (base unknown) (`sw` at 0x7d7c).
  At `bnel v0,zero,78ec` at 0x78dc, the branch is taken when v0(?) != 0; it falls through when v0(?) == 0 (`bnel` at 0x78dc).
  At `beq at,zero,7900` at 0x78f4, the branch is taken when a0(=a1) >= a1(=a0) (signed); it falls through when a0(=a1) < a1(=a0) (signed) (`beq` at 0x78f4).
  At `bne at,zero,7c10` at 0x78fc, the branch is taken when at(?) != 0; it falls through when at(?) == 0 (`bne` at 0x78fc).
  At `bne at,zero,7bec` at 0x7904, the branch is taken when at(?) != 0; it falls through when at(?) == 0 (`bne` at 0x7904).
  At `bne v0,v1,7a00` at 0x7918, the branch is taken when v0(?) != v1(?); it falls through when v0(?) == v1(?) (`bne` at 0x7918).
  At `beq v0,zero,7940` at 0x7920, the branch is taken when v0(?) == 0; it falls through when v0(?) != 0 (`beq` at 0x7920).
  At `beq a3,zero,7a34` at 0x7948, the branch is taken when (a2(?) & at(=-0x40)) == 0; it falls through when (a2(?) & at(=-0x40)) != 0 (`beq` at 0x7948).
  At `beq a3,a1,79f8` at 0x79a0, the branch is taken when a3(?) == a1(?); it falls through when a3(?) != a1(?) (`beq` at 0x79a0).
  At `bne a3,a1,7954` at 0x79f0, the branch is taken when a3(?) != a1(?); it falls through when a3(?) == a1(?) (`bne` at 0x79f0).
  At `bne v0,v1,7b28` at 0x7a0c, the branch is taken when v0(?) != v1(?); it falls through when v0(?) == v1(?) (`bne` at 0x7a0c).
  At `beq v0,zero,7a34` at 0x7a14, the branch is taken when v0(?) == 0; it falls through when v0(?) != 0 (`beq` at 0x7a14).
  At `beq a3,zero,7a94` at 0x7a3c, the branch is taken when (a2(?) & at(=-0x20)) == 0; it falls through when (a2(?) & at(=-0x20)) != 0 (`beq` at 0x7a3c).
  At `bne a3,a1,7a48` at 0x7a8c, the branch is taken when a3(?) != a1(?); it falls through when a3(?) == a1(?) (`bne` at 0x7a8c).
  At `beq v0,zero,7ac8` at 0x7a98, the branch is taken when (a2(?) & 0x10) == 0; it falls through when (a2(?) & 0x10) != 0 (`beq` at 0x7a98).
  At `beq v1,zero,7aec` at 0x7acc, the branch is taken when (a2(?) & 0x8) == 0; it falls through when (a2(?) & 0x8) != 0 (`beq` at 0x7acc).
  At `beq v0,zero,7b08` at 0x7af0, the branch is taken when (a2(?) & 0x4) == 0; it falls through when (a2(?) & 0x4) != 0 (`beq` at 0x7af0).
  At `beq v1,zero,7c08` at 0x7b0c, the branch is taken when (a2(?) & 0x3) == 0; it falls through when (a2(?) & 0x3) != 0 (`beq` at 0x7b0c).
  At `beq v1,zero,7b50` at 0x7b28, the branch is taken when v1(?) == 0; it falls through when v1(?) != 0 (`beq` at 0x7b28).
  At `bne a1,a3,7b3c` at 0x7b48, the branch is taken when a1(?) != a3(?); it falls through when a1(?) == a3(?) (`bne` at 0x7b48).
  At `beq a3,zero,7ba0` at 0x7b58, the branch is taken when (a2(?) & at(=-0x10)) == 0; it falls through when (a2(?) & at(=-0x10)) != 0 (`beq` at 0x7b58).
  At `bne a3,a1,7b64` at 0x7b98, the branch is taken when a3(?) != a1(?); it falls through when a3(?) == a1(?) (`bne` at 0x7b98).
  At `beq v1,zero,7bcc` at 0x7ba4, the branch is taken when (a2(?) & 0x8) == 0; it falls through when (a2(?) & 0x8) != 0 (`beq` at 0x7ba4).
  At `beq v0,zero,7bec` at 0x7bd0, the branch is taken when (a2(?) & 0x4) == 0; it falls through when (a2(?) & 0x4) != 0 (`beq` at 0x7bd0).
  At `beq a2,zero,7c08` at 0x7bec, the branch is taken when a2(?) == 0; it falls through when a2(?) != 0 (`beq` at 0x7bec).
  At `bne a0,a3,7bf4` at 0x7c00, the branch is taken when a0(?) != a3(?); it falls through when a0(?) == a3(?) (`bne` at 0x7c00).
  At `bne at,zero,7c30` at 0x7c18, the branch is taken when a2 < 0xc (signed); it falls through when a2 >= 0xc (signed) (`bne` at 0x7c18).
  At `beq v0,v1,7c60` at 0x7c28, the branch is taken when v0(?) == v1(?); it falls through when v0(?) != v1(?) (`beq` at 0x7c28).
  At `beq a2,zero,7c08` at 0x7c30, the branch is taken when a2(?) == 0; it falls through when a2(?) != 0 (`beq` at 0x7c30).
  At `bne a0,v1,7c44` at 0x7c50, the branch is taken when a0(?) != v1(?); it falls through when a0(?) == v1(?) (`bne` at 0x7c50).
  At `beq v0,zero,7cc4` at 0x7c60, the branch is taken when v0(?) == 0; it falls through when v0(?) != 0 (`beq` at 0x7c60).
  At `beq v0,at,7ca8` at 0x7c68, the branch is taken when v0(?) == at(=0x3); it falls through when v0(?) != at(=0x3) (`beq` at 0x7c68).
  At `beq v0,at,7c90` at 0x7c70, the branch is taken when v0(?) == at(=0x2); it falls through when v0(?) != at(=0x2) (`beq` at 0x7c70).
  At `bne at,zero,7d20` at 0x7cc8, the branch is taken when a2(?) < 0x20 (signed); it falls through when a2(?) >= 0x20 (signed) (`bne` at 0x7cc8).
  At `bne at,zero,7d5c` at 0x7d24, the branch is taken when a2(?) < 0x10 (signed); it falls through when a2(?) >= 0x10 (signed) (`bne` at 0x7d24).
  At `bne at,zero,7c30` at 0x7d60, the branch is taken when a2(?) < 0x4 (signed); it falls through when a2(?) >= 0x4 (signed) (`bne` at 0x7d60).
  Returns with v0 = a0 at 0x7b20 (`jr` at 0x7b20).
  Returns with v0 = a0 at 0x7c08 (`jr` at 0x7c08).
  Returns with v0 = a0 at 0x7c58 (`jr` at 0x7c58).
  Calls `_pagecopy` via direct with a0=a1 at entry (arg1), a1=a0 at entry (arg0), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x78e4).
- `bcopy` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x78c4, 40 bytes) Inferred.
  At `bnel v0,zero,78ec` at 0x78dc, the branch is taken when v0(?) != 0; it falls through when v0(?) == 0 (`bnel` at 0x78dc).
  Calls `_pagecopy` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x78e4).
- `ovbcopy` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x78c4, 40 bytes) Inferred.
  At `bnel v0,zero,78ec` at 0x78dc, the branch is taken when v0(?) != 0; it falls through when v0(?) == 0 (`bnel` at 0x78dc).
  Calls `_pagecopy` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x78e4).
- `bcopy_nopage` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x78ec, 112 bytes) Inferred.
  Stores 8 bytes from `v0` to a1 (arg1 at entry) +0x0 (`sdl` at 0x7938).
  At `beq at,zero,7900` at 0x78f4, the branch is taken when a0 >= a1 (signed); it falls through when a0 < a1 (signed) (`beq` at 0x78f4).
  At `bne at,zero,7c10` at 0x78fc, the branch is taken when at(?) != 0; it falls through when at(?) == 0 (`bne` at 0x78fc).
  At `bne at,zero,7bec` at 0x7904, the branch is taken when at(?) != 0; it falls through when at(?) == 0 (`bne` at 0x7904).
  At `bne v0,v1,7a00` at 0x7918, the branch is taken when v0(?) != v1(?); it falls through when v0(?) == v1(?) (`bne` at 0x7918).
  At `beq v0,zero,7940` at 0x7920, the branch is taken when v0(?) == 0; it falls through when v0(?) != 0 (`beq` at 0x7920).
  At `beq a3,zero,7a34` at 0x7948, the branch is taken when (a2(?) & at(=-0x40)) == 0; it falls through when (a2(?) & at(=-0x40)) != 0 (`beq` at 0x7948).
- `bcopy_pref1` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x795c, 28 bytes) Inferred.
- `bcopy_stores` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x7978, 56 bytes) Inferred.
  Stores 8 bytes from `t0` to a1 (arg1 at entry) +0x0; value t0 (`sd` at 0x7978).
  Stores 8 bytes from `t2` to a1 (arg1 at entry) +0x10; value t2 (`sd` at 0x797c).
  Stores 8 bytes from `t1` to a1 (arg1 at entry) +0x8; value t1 (`sd` at 0x7980).
  Stores 8 bytes from `t3` to a1 (arg1 at entry) +0x18; value t3 (`sd` at 0x7984).
  Stores 8 bytes from `a4` to a1 (arg1 at entry) +0x20; value a4 (`sd` at 0x7988).
  Stores 8 bytes from `a6` to a1 (arg1 at entry) +0x30; value a6 (`sd` at 0x798c).
  Stores 8 bytes from `a5` to a1 (arg1 at entry) +0x28; value a5 (`sd` at 0x7990).
  Stores 8 bytes from `a7` to a1 (arg1 at entry) +0x38; value a7 (`sd` at 0x7994).
  At `beq a3,a1,79f8` at 0x79a0, the branch is taken when a3 == a1(=a1+64); it falls through when a3 != a1(=a1+64) (`beq` at 0x79a0).
- `bcopy_pref2` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x79b0, 976 bytes) Inferred.
  Range 0x7a00 0x7a04 0x7a08 0x7a0c 0x7a10 0x7a14 0x7a18 0x7a1c 0x7a20 0x7a24 0x7a28 0x7a2c 0x7a30 0x7b28 0x7b2c 0x7b30 0x7b34 0x7b38 0x7b3c 0x7b40 0x7b44 0x7b48 0x7b4c 0x7b50 0x7b54 0x7b58 0x7b5c 0x7b60 0x7b64 0x7b68 0x7b6c 0x7b70 0x7b74 0x7b78 0x7b7c 0x7b80 0x7b84 0x7b88 0x7b8c 0x7b90 0x7b94 0x7b98 0x7b9c 0x7ba0 0x7ba4 0x7ba8 0x7bac 0x7bb0 0x7bb4 0x7bb8 0x7bbc 0x7bc0 0x7bc4 0x7bc8 0x7bcc 0x7bd0 0x7bd4 0x7bd8 0x7bdc 0x7be0 0x7be4 0x7be8 0x7bec 0x7bf0 0x7bf4 0x7bf8 0x7bfc 0x7c00 0x7c04 0x7c10 0x7c14 0x7c18 0x7c1c 0x7c20 0x7c24 0x7c28 0x7c2c 0x7c30 0x7c34 0x7c38 0x7c3c 0x7c40 0x7c44 0x7c48 0x7c4c 0x7c50 0x7c54 0x7c58 0x7c5c 0x7c60 0x7c64 0x7c68 0x7c6c 0x7c70 0x7c74 0x7c78 0x7c7c 0x7c80 0x7c84 0x7c88 0x7c8c 0x7c90 0x7c94 0x7c98 0x7c9c 0x7ca0 0x7ca4 0x7ca8 0x7cac 0x7cb0 0x7cb4 0x7cb8 0x7cbc 0x7cc0 0x7cc4 0x7cc8 0x7ccc 0x7cd0 0x7cd4 0x7cd8 0x7cdc 0x7ce0 0x7ce4 0x7ce8 0x7cec 0x7cf0 0x7cf4 0x7cf8 0x7cfc 0x7d00 0x7d04 0x7d08 0x7d0c 0x7d10 0x7d14 0x7d18 0x7d1c 0x7d20 0x7d24 0x7d28 0x7d2c 0x7d30 0x7d34 0x7d38 0x7d3c 0x7d40 0x7d44 0x7d48 0x7d4c 0x7d50 0x7d54 0x7d58 0x7d5c 0x7d60 0x7d64 0x7d68 0x7d6c 0x7d70 0x7d74 0x7d78 0x7d7c is not reached from the entry.
  Stores 8 bytes from `t2` to a1 (arg1 at entry) +0x10; value t2 (`sd` at 0x79d4).
  Stores 8 bytes from `t0` to a1 (arg1 at entry) +0x0; value t0 (`sd` at 0x79d8).
  Stores 8 bytes from `t1` to a1 (arg1 at entry) +0x8; value [a0+8]:8 (`sd` at 0x79dc).
  Stores 8 bytes from `t3` to a1 (arg1 at entry) +0x18; value [a0+24]:8 (`sd` at 0x79e0).
  Stores 8 bytes from `a4` to a1 (arg1 at entry) +0x20; value [a0+32]:8 (`sd` at 0x79e4).
  Stores 8 bytes from `a6` to a1 (arg1 at entry) +0x30; value [a0+48]:8 (`sd` at 0x79e8).
  Stores 8 bytes from `a5` to a1 (arg1 at entry) +0x28; value [a0+40]:8 (`sd` at 0x79ec).
  Stores 8 bytes from `a7` to a1 (arg1 at entry) +0x38; value [a0+56]:8 (`sd` at 0x79f4).
  Stores 4 bytes from `t0` to ? (base unknown) (`sw` at 0x7a70).
  Stores 4 bytes from `t1` to ? (base unknown) (`sw` at 0x7a74).
  Stores 4 bytes from `t2` to ? (base unknown) (`sw` at 0x7a78).
  Stores 4 bytes from `t3` to ? (base unknown) (`sw` at 0x7a7c).
  Stores 4 bytes from `a4` to ? (base unknown) (`sw` at 0x7a80).
  Stores 4 bytes from `a5` to ? (base unknown) (`sw` at 0x7a84).
  Stores 4 bytes from `a6` to ? (base unknown) (`sw` at 0x7a88).
  Stores 4 bytes from `a7` to ? (base unknown) (`sw` at 0x7a90).
  Stores 4 bytes from `t0` to ? (base unknown) (`sw` at 0x7ab8).
  Stores 4 bytes from `t1` to ? (base unknown) (`sw` at 0x7abc).
  Stores 4 bytes from `t2` to ? (base unknown) (`sw` at 0x7ac0).
  Stores 4 bytes from `t3` to ? (base unknown) (`sw` at 0x7ac4).
  Stores 4 bytes from `t0` to ? (base unknown) (`sw` at 0x7ae4).
  Stores 4 bytes from `t1` to ? (base unknown) (`sw` at 0x7ae8).
  Stores 4 bytes from `t0` to ? (base unknown) (`sw` at 0x7b04).
  Stores 4 bytes from `t0` to ? (base unknown) (`swr` at 0x7b24).
  At `bne a3,a1,7954` at 0x79f0, the branch is taken when a3 != a1(=a1+64); it falls through when a3 == a1(=a1+64) (`bne` at 0x79f0).
  At `bne v0,v1,7b28` at 0x7a0c, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`bne` at 0x7a0c).
  At `beq v0,zero,7a34` at 0x7a14, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0x7a14).
  At `beq a3,zero,7a94` at 0x7a3c, the branch is taken when (a2(?) & at(=-0x20)) == 0; it falls through when (a2(?) & at(=-0x20)) != 0 (`beq` at 0x7a3c).
  At `bne a3,a1,7a48` at 0x7a8c, the branch is taken when a3(?) != a1(?); it falls through when a3(?) == a1(?) (`bne` at 0x7a8c).
  At `beq v0,zero,7ac8` at 0x7a98, the branch is taken when (a2(?) & 0x10) == 0; it falls through when (a2(?) & 0x10) != 0 (`beq` at 0x7a98).
  At `beq v1,zero,7aec` at 0x7acc, the branch is taken when (a2(?) & 0x8) == 0; it falls through when (a2(?) & 0x8) != 0 (`beq` at 0x7acc).
  At `beq v0,zero,7b08` at 0x7af0, the branch is taken when (a2(?) & 0x4) == 0; it falls through when (a2(?) & 0x4) != 0 (`beq` at 0x7af0).
  At `beq v1,zero,7c08` at 0x7b0c, the branch is taken when (a2(?) & 0x3) == 0; it falls through when (a2(?) & 0x3) != 0 (`beq` at 0x7b0c).
  At `beq v1,zero,7b50` at 0x7b28, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0x7b28).
  At `bne a1,a3,7b3c` at 0x7b48, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`bne` at 0x7b48).
  At `beq a3,zero,7ba0` at 0x7b58, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0x7b58).
  At `bne a3,a1,7b64` at 0x7b98, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`bne` at 0x7b98).
  At `beq v1,zero,7bcc` at 0x7ba4, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0x7ba4).
  At `beq v0,zero,7bec` at 0x7bd0, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0x7bd0).
  At `beq a2,zero,7c08` at 0x7bec, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0x7bec).
  At `bne a0,a3,7bf4` at 0x7c00, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`bne` at 0x7c00).
  At `bne at,zero,7c30` at 0x7c18, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`bne` at 0x7c18).
  At `beq v0,v1,7c60` at 0x7c28, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0x7c28).
  At `beq a2,zero,7c08` at 0x7c30, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0x7c30).
  At `bne a0,v1,7c44` at 0x7c50, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`bne` at 0x7c50).
  At `beq v0,zero,7cc4` at 0x7c60, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0x7c60).
  At `beq v0,at,7ca8` at 0x7c68, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0x7c68).
  At `beq v0,at,7c90` at 0x7c70, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0x7c70).
  At `beq zero,zero,7cc4` at 0x7c88, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0x7c88).
  At `beq zero,zero,7cc4` at 0x7ca0, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0x7ca0).
  At `bne at,zero,7d20` at 0x7cc8, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`bne` at 0x7cc8).
  At `beq zero,zero,7cc4` at 0x7d18, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0x7d18).
  At `bne at,zero,7d5c` at 0x7d24, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`bne` at 0x7d24).
  At `beq zero,zero,7d20` at 0x7d54, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0x7d54).
  At `bne at,zero,7c30` at 0x7d60, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`bne` at 0x7d60).
  At `beq zero,zero,7d5c` at 0x7d78, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0x7d78).
  Returns with v0 = t8 at 0x7b20 (`jr` at 0x7b20).
  Returns with v0 = t8 at 0x7c08 (`jr` at 0x7c08).
- `bcopy_end` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x7d80, 56 bytes) Inferred.
  Stores 1 bytes from `v0` to ? (base unknown) (`sb` at 0x7da4).
  Stores 1 bytes from `v1` to ? (base unknown) (`sb` at 0x7dac).
  At `beq a2,zero,7db0` at 0x7d80, the branch is taken when a2 == 0; it falls through when a2 != 0 (`beq` at 0x7d80).
  At `beq a0,a1,7db0` at 0x7d88, the branch is taken when a0 == a1; it falls through when a0 != a1 (`beq` at 0x7d88).
  At `bgtz a2,7d90` at 0x7da8, the branch is taken when a2(?) > 0 (signed); it falls through when a2(?) <= 0 (signed) (`bgtz` at 0x7da8).
  Returns with v0 = ? at 0x7db0 (`jr` at 0x7db0).
- `swbcopy` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x7d80, 56 bytes) Inferred.
  Stores 1 bytes from `v0` to ? (base unknown) (`sb` at 0x7da4).
  Stores 1 bytes from `v1` to ? (base unknown) (`sb` at 0x7dac).
  At `beq a2,zero,7db0` at 0x7d80, the branch is taken when a2 == 0; it falls through when a2 != 0 (`beq` at 0x7d80).
  At `beq a0,a1,7db0` at 0x7d88, the branch is taken when a0 == a1; it falls through when a0 != a1 (`beq` at 0x7d88).
  At `bgtz a2,7d90` at 0x7da8, the branch is taken when a2(?) > 0 (signed); it falls through when a2(?) <= 0 (signed) (`bgtz` at 0x7da8).
  Returns with v0 = ? at 0x7db0 (`jr` at 0x7db0).
- `rtlock_ownerstamp` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x7db8, 48 bytes) Inferred.
  Stores 2 bytes from `v0` to [-0x3fe0]:8 +0xf6; value 0x4 (`sh` at 0x7dc4).
  Stores 4 bytes from `t1` to a0 (arg0 at entry) +0x0; value a1 (`sc` at 0x7dd0).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x7ddc).
  At `bltz a0,7758` at 0x7db8, the branch is taken when a0 < 0 (signed); it falls through when a0 >= 0 (signed) (`bltz` at 0x7db8).
  At `beql t1,zero,7dc8` at 0x7dd4, the branch is taken when t1(=a1) == 0; it falls through when t1(=a1) != 0 (`beql` at 0x7dd4).
  Returns with v0 = 0x0 at 0x7de0 (`jr` at 0x7de0).
- `dumpcopy` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x7de8, 80 bytes) Inferred.
  Stores 2 bytes from `v0` to [-0x3fe0]:8 +0xf6; value 0xe (`sh` at 0x7e00).
  Stores 4 bytes from `v0` to abs 0xffffffffffffc404; value 0xe (`sw` at 0x7e04).
  Stores 2 bytes from `zero` to [-0x3fe0]:8 +0xf6; value 0x0 (`sh` at 0x7e20).
  Stores 4 bytes from `zero` to abs 0xffffffffffffc404; value 0x0 (`sw` at 0x7e24).
  At `beq t0,zero,7e04` at 0x7df4, the branch is taken when t0(=[-0x3fe0]:8) == 0; it falls through when t0(=[-0x3fe0]:8) != 0 (`beq` at 0x7df4).
  At `beq t0,zero,7e24` at 0x7e14, the branch is taken when t0(=[-0x3fe0]:8) == 0; it falls through when t0(=[-0x3fe0]:8) != 0 (`beq` at 0x7e14).
  Returns with v0 = 0x0 at 0x7e30 (`jr` at 0x7e30).
  Calls `bcopy` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x7e08).
- `delay_calibrate` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x7e38, 48 bytes) Inferred.
  Stores 4 bytes from `at` to abs 0xffffffffffffc4b8 (`sw` at 0x7e64).
  Returns with v0 = ret(_ticksper1024inst) at 0x7e60 (`jr` at 0x7e60).
  Calls `_ticksper1024inst` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x7e40).
- `us_delaybus` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x7e68, 44 bytes) Inferred.
  Returns with v0 = ret(us_delay) at 0x7e8c (`jr` at 0x7e8c).
  Calls `flushbus` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x7e74).
  Calls `us_delay` via direct with a0=a0 at entry (arg0), a1=?, a2=?, a3=? (`jal` at 0x7e7c).
- `find_pclk_freq` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x7e94, 288 bytes) Inferred.
  At `beq v0,zero,7eac` at 0x7e9c, the branch is taken when v0(=[sym(pclk_freq)]) == 0; it falls through when v0(=[sym(pclk_freq)]) != 0 (`beq` at 0x7e9c).
  At `bne s1,a3,7ef0` at 0x7ec4, the branch is taken when s1(=[0xffffffffaff20000]:8) != a3(=[0xffffffffaff20000]:8); it falls through when s1(=[0xffffffffaff20000]:8) == a3(=[0xffffffffaff20000]:8) (`bne` at 0x7ec4).
  At `bne s1,a3,7ef0` at 0x7ed0, the branch is taken when s1(=[0xffffffffaff20000]:8) != a3(=[0xffffffffaff20000]:8); it falls through when s1(=[0xffffffffaff20000]:8) == a3(=[0xffffffffaff20000]:8) (`bne` at 0x7ed0).
  At `bne s1,a3,7ef0` at 0x7edc, the branch is taken when s1(=[0xffffffffaff20000]:8) != a3(=[0xffffffffaff20000]:8); it falls through when s1(=[0xffffffffaff20000]:8) == a3(=[0xffffffffaff20000]:8) (`bne` at 0x7edc).
  At `beq s1,a3,7ecc` at 0x7ee8, the branch is taken when s1(=[0xffffffffaff20000]:8) == a3(=[0xffffffffaff20000]:8); it falls through when s1(=[0xffffffffaff20000]:8) != a3(=[0xffffffffaff20000]:8) (`beq` at 0x7ee8).
  At `beq at,zero,7f5c` at 0x7f04, the branch is taken when at(=[0xffffffffaff20000]:8) >= a3(=[0xffffffffaff20000]:8+12500) (unsigned); it falls through when at(=[0xffffffffaff20000]:8) < a3(=[0xffffffffaff20000]:8+12500) (unsigned) (`beq` at 0x7f04).
  At `beq v0,zero,7f5c` at 0x7f14, the branch is taken when v0(=[0xffffffffaff20000]:8) >= a3(=[0xffffffffaff20000]:8+12500) (unsigned); it falls through when v0(=[0xffffffffaff20000]:8) < a3(=[0xffffffffaff20000]:8+12500) (unsigned) (`beq` at 0x7f14).
  At `beq v1,zero,7f5c` at 0x7f24, the branch is taken when v1(=[0xffffffffaff20000]:8) >= a3(=[0xffffffffaff20000]:8+12500) (unsigned); it falls through when v1(=[0xffffffffaff20000]:8) < a3(=[0xffffffffaff20000]:8+12500) (unsigned) (`beq` at 0x7f24).
  At `beq a0,zero,7f5c` at 0x7f34, the branch is taken when a0(=[0xffffffffaff20000]:8) >= a3(=[0xffffffffaff20000]:8+12500) (unsigned); it falls through when a0(=[0xffffffffaff20000]:8) < a3(=[0xffffffffaff20000]:8+12500) (unsigned) (`beq` at 0x7f34).
  At `beq a1,zero,7f5c` at 0x7f44, the branch is taken when a1(=[0xffffffffaff20000]:8) >= a3(=[0xffffffffaff20000]:8+12500) (unsigned); it falls through when a1(=[0xffffffffaff20000]:8) < a3(=[0xffffffffaff20000]:8+12500) (unsigned) (`beq` at 0x7f44).
  At `bne a2,zero,7f0c` at 0x7f54, the branch is taken when a2(=[0xffffffffaff20000]:8) < a3(=[0xffffffffaff20000]:8+12500) (unsigned); it falls through when a2(=[0xffffffffaff20000]:8) >= a3(=[0xffffffffaff20000]:8+12500) (unsigned) (`bne` at 0x7f54).
  Returns with v0 = ? at 0x7ea4 (`jr` at 0x7ea4).
  Calls `splprof` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x7eb0).
  Calls `_get_count` via direct with a0=?, a1=?, a2=?, a3=[0xffffffffaff20000]:8 (`jal` at 0x7ef0).
  Calls `_get_count` via direct with a0=?, a1=?, a2=?, a3=[0xffffffffaff20000]:8+12500 (`jal` at 0x7f60).
  Calls `splx` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x7f6c).
- `findcpufreq_hz` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x7fb4, 164 bytes) Inferred.
  At `beq a3,a7,8028` at 0x7fe0, the branch is taken when a3(?) == a7(=-0x1); it falls through when a3(?) != a7(=-0x1) (`beq` at 0x7fe0).
  At `beq at,zero,7ffc` at 0x7fec, the branch is taken when at(?) == 0; it falls through when at(?) != 0 (`beq` at 0x7fec).
  At `beq v1,zero,8034` at 0x8008, the branch is taken when a2(?) >= 0x1e (unsigned); it falls through when a2(?) < 0x1e (unsigned) (`beq` at 0x8008).
  At `bne a0,zero,7fe0` at 0x8018, the branch is taken when a5(?) < v0(=ret(find_pclk_freq)) (unsigned); it falls through when a5(?) >= v0(=ret(find_pclk_freq)) (unsigned) (`bne` at 0x8018).
  At `bne a3,a7,7fec` at 0x8020, the branch is taken when a3(?) != a7(=-0x1); it falls through when a3(?) == a7(=-0x1) (`bne` at 0x8020).
  Returns with v0 = entry(sym(.data)+664) at 0x8040 (`jr` at 0x8040).
  Calls `find_pclk_freq [0x7e94]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x7fbc).
- `cpu_mhz_rating` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x8058, 48 bytes) Inferred.
  Returns with v0 = ? at 0x8080 (`jr` at 0x8080).
  Calls `findcpufreq_hz` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x8060).
- `findcpufreq` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x8088, 52 bytes) Inferred.
  Returns with v0 = ? at 0x80b4 (`jr` at 0x80b4).
  Calls `findcpufreq_hz` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x8090).
- `fasthzerr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x80d0, 76 bytes) Inferred.
  Returns with v0 = ret(cmn_err) at 0x8114 (`jr` at 0x8114).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+1640, a2=a0 at entry (arg0), a3=a1 at entry (arg1) (`jal` at 0x80f0).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+1640, a2=a2 at entry (arg2), a3=? (`jal` at 0x8104).
- `startkgclock` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x811c, 408 bytes) Inferred.
  Stores 4 bytes from `zero` to abs 0xffffffffffffc56c; value 0x0 (`sw` at 0x81cc).
  Stores 8 bytes from `a5` to abs 0xffffffffffffc550; value 0x1 (`sd` at 0x81d4).
  At `beq a0,zero,8240` at 0x8134, the branch is taken when a0(=[sym(fasthz)]) == 0; it falls through when a0(=[sym(fasthz)]) != 0 (`beq` at 0x8134).
  At `bne t8,zero,8200` at 0x8140, the branch is taken when a0(=[sym(fasthz)]) < 0x1f4 (signed); it falls through when a0(=[sym(fasthz)]) >= 0x1f4 (signed) (`bne` at 0x8140).
  At `beq t9,zero,8274` at 0x8148, the branch is taken when t9(?) == 0; it falls through when t9(?) != 0 (`beq` at 0x8148).
  At `bne ra,zero,8174` at 0x8158, the branch is taken when ra(?) != 0; it falls through when ra(?) == 0 (`bne` at 0x8158).
  At `beq at,zero,818c` at 0x816c, the branch is taken when at(?) == 0; it falls through when at(?) != 0 (`beq` at 0x816c).
  At `bne a2,zero,8174` at 0x821c, the branch is taken when a2(?) != 0; it falls through when a2(?) == 0 (`bne` at 0x821c).
  At `bne a3,zero,8178` at 0x8230, the branch is taken when a3(?) != 0; it falls through when a3(?) == 0 (`bne` at 0x8230).
  At `bne a5,zero,8174` at 0x8250, the branch is taken when a5(?) != 0; it falls through when a5(?) == 0 (`bne` at 0x8250).
  At `bne a6,zero,8178` at 0x8264, the branch is taken when a6(?) != 0; it falls through when a6(?) == 0 (`bne` at 0x8264).
  At `bne a2,zero,8174` at 0x8290, the branch is taken when a2(?) != 0; it falls through when a2(?) == 0 (`bne` at 0x8290).
  At `bne a3,zero,8178` at 0x82a4, the branch is taken when a3(?) != 0; it falls through when a3(?) == 0 (`bne` at 0x82a4).
  Returns with v0 = ret(splx) at 0x81f8 (`jr` at 0x81f8).
  Calls `fasthzerr [0x80d0]` via direct with a0=?, a1=sym(.rodata)+1640, a2=0x3e8, a3=? (`jal` at 0x817c).
  Calls `splprof` via direct with a0=?, a1=?, a2=?, a3=?, a4=0xf4240 (`jal` at 0x81bc).
  Calls `set_timer_intr` via direct with a0=[-0x3c60]:2, a1=-0x1, a2=0x0, a3=?, a5=0x1 (`jal` at 0x81e0).
  Calls `splx` via direct with a0=ret(splprof), a1=?, a2=?, a3=? (`jal` at 0x81e8).
  Calls `fasthzerr [0x80d0]` via direct with a0=[sym(fasthz)], a1=sym(.rodata)+1640, a2=0x1f4, a3=a3 at entry (arg3) (`jal` at 0x8204).
  Calls `fasthzerr [0x80d0]` via direct with a0=[sym(fasthz)], a1=sym(.rodata)+1640, a2=0x9c4, a3=a3 at entry (arg3) (`jal` at 0x8278).
- `slowkgclock` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x82b4, 40 bytes) Inferred.
  Stores 8 bytes from `zero` to abs 0xffffffffffffc550; value 0x0 (`sd` at 0x82cc).
  Returns with v0 = ret(splx) at 0x82d4 (`jr` at 0x82d4).
  Calls `splprof` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x82bc).
  Calls `splx` via direct with a0=ret(splprof), a1=?, a2=?, a3=? (`jal` at 0x82c8).
- `timestamp_init` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x82dc, 36 bytes) Inferred.
  Returns with v0 = 0x50 at 0x82f8 (`jr` at 0x82f8).
- `baseio_qlsave` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x8300, 40 bytes) Inferred.
  Stores 4 bytes from `a0` to (sym(.sbss)+184 + ([sym(qlcnt)] << 0x2)) +0x0; value a0 (`sw` at 0x8318).
  At `beq at,zero,831c` at 0x830c, the branch is taken when a2(=[sym(qlcnt)]) >= 0x2 (signed); it falls through when a2(=[sym(qlcnt)]) < 0x2 (signed) (`beq` at 0x830c).
  Returns with v0 = ? at 0x8320 (`jr` at 0x8320).
- `powerfail_check` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x8328, 60 bytes) Inferred.
  Returns with v0 = ret(nested_spinunlock) at 0x835c (`jr` at 0x835c).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+1760, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x8334).
  Calls `heart_imr_bits_rmw` via direct with a0=[-0x3c60]:2, a1=0x0, a2=0x200000000000000, a3=? (`jal` at 0x8348).
  Calls `nested_spinunlock` via direct with a0=sym(ip30clocklock), a1=?, a2=?, a3=? (`jal` at 0x8350).
- `powerfail_ql_thread` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x8364, 92 bytes) Inferred.
  At `beq a0,zero,8398` at 0x8388, the branch is taken when a0(?) == 0; it falls through when a0(?) != 0 (`beq` at 0x8388).
  At `bne a1,zero,8384` at 0x83a4, the branch is taken when s0(?) < 0x2 (signed); it falls through when s0(?) >= 0x2 (signed) (`bne` at 0x83a4).
  Returns with v0 = ? at 0x83b8 (`jr` at 0x83b8).
  Calls `qlreset` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x8390).
- `powerfail` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x83c0, 132 bytes) Inferred.
  At `beq a3,zero,840c` at 0x83fc, the branch is taken when (a3(=[[sym(acfail_tinfo)]:8]) & 0x1000) == 0; it falls through when (a3(=[[sym(acfail_tinfo)]:8]) & 0x1000) != 0 (`beq` at 0x83fc).
  Returns with v0 = ret(nested_spinlock) at 0x843c (`jr` at 0x843c).
  Calls `slow_ioc3_sio` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x83c8).
  Calls `restore_ioc3_sio` via direct with a0=(ret(slow_ioc3_sio) | 0x78000), a1=?, a2=?, a3=? (`jal` at 0x83d8).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+1760, a2=?, a3=? (`jal` at 0x83e8).
  Calls `vsema` via direct with a0=[sym(acfail_tinfo)]:8+8, a1=?, a2=[sym(acfail_tinfo)]:8, a3=? (`jal` at 0x8404).
  Calls `timeout` via direct with a0=sym(powerfail_check), a1=0x0, a2=0xc8, a3=? (`jal` at 0x8414).
  Calls `heart_imr_bits_rmw` via direct with a0=[-0x3c60]:2, a1=0x200000000000000, a2=0x0, a3=? (`jal` at 0x8428).
  Calls `nested_spinlock` via direct with a0=sym(ip30clocklock), a1=?, a2=?, a3=? (`jal` at 0x8430).
- `cpu_godown` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x8444, 60 bytes) Inferred.
  Returns with v0 = ret(cpu_soft_powerdown) at 0x8478 (`jr` at 0x8478).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+1760, a2=[sym(clean_shutdown_time)], a3=a3 at entry (arg3) (`jal` at 0x8458).
  Calls `us_delay` via direct with a0=0x7a120, a1=?, a2=?, a3=? (`jal` at 0x8464).
  Calls `cpu_soft_powerdown` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x846c).
- `flash_led` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x8648, 56 bytes) Inferred.
  Returns with v0 = ret(timeout) at 0x8678 (`jr` at 0x8678).
  Calls `set_leds` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x8654).
  Calls `timeout` via direct with a0=sym(flash_led), a1=one of 0x0, 0x3, a2=0x19, a3=? (`jal` at 0x8668).
- `cpu_waitforreset` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x8680, 48 bytes) Inferred.
  At `beq at,zero,8690` at 0x8698, the branch is taken when (at(=[0x900000001f000104]) & 0x40) == 0; it falls through when (at(=[0x900000001f000104]) & 0x40) != 0 (`beq` at 0x8698).
  Calls `cpu_soft_powerdown` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x86a0).
- `rtodc` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x86b0, 452 bytes) Inferred.
  At `beq v0,zero,8840` at 0x86c4, the branch is taken when v0(=ret(_clock_func)) == 0; it falls through when v0(=ret(_clock_func)) != 0 (`beq` at 0x86c4).
  At `beq a0,zero,8824` at 0x874c, the branch is taken when a0(?) == 0; it falls through when a0(?) != 0 (`beq` at 0x874c).
  At `beq a1,zero,8838` at 0x875c, the branch is taken when a1(?) == 0; it falls through when a1(?) != 0 (`beq` at 0x875c).
  At `bne a4,zero,87a0` at 0x8774, the branch is taken when a4(?) != 0; it falls through when a4(?) == 0 (`bne` at 0x8774).
  At `beq t3,zero,8780` at 0x8798, the branch is taken when a4(?) >= a2(?) (signed); it falls through when a4(?) < a2(?) (signed) (`beq` at 0x8798).
  At `bne t3,zero,8818` at 0x87ac, the branch is taken when a6(?) < 0x7b3 (signed); it falls through when a6(?) >= 0x7b3 (signed) (`bne` at 0x87ac).
  At `bne t8,zero,8818` at 0x87cc, the branch is taken when a2(?) < 0x7b2 (signed); it falls through when a2(?) >= 0x7b2 (signed) (`bne` at 0x87cc).
  At `beq t9,zero,8800` at 0x87e0, the branch is taken when t9(?) == 0; it falls through when t9(?) != 0 (`beq` at 0x87e0).
  At `bne ra,zero,87bc` at 0x87f0, the branch is taken when ra(?) != 0; it falls through when ra(?) == 0 (`bne` at 0x87f0).
  At `bne at,zero,87f8` at 0x8808, the branch is taken when at(?) != 0; it falls through when at(?) == 0 (`bne` at 0x8808).
  At `beq v1,zero,8754` at 0x8830, the branch is taken when v1(?) == 0; it falls through when v1(?) != 0 (`beq` at 0x8830).
  At `beq v0,zero,8840` at 0x8854, the branch is taken when v0(=ret(_clock_func)) == 0; it falls through when v0(=ret(_clock_func)) != 0 (`beq` at 0x8854).
  Returns with v0 = ? at 0x881c (`jr` at 0x881c).
  Calls `_clock_func [0x88e4]` via direct with a0=0x0, a1=sp-32, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x86bc).
  Calls `us_delay` via direct with a0=0x64, a1=?, a2=?, a3=? (`jal` at 0x8840).
  Calls `_clock_func [0x88e4]` via direct with a0=0x0, a1=sp-32, a2=?, a3=? (`jal` at 0x884c).
- `wtodc` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x8874, 112 bytes) Inferred.
  Returns with v0 = ret(_clock_func) at 0x88dc (`jr` at 0x88dc).
  Calls `secs_to_calendar_time [0x8c8c]` via direct with a0=[sym(time)], a1=sp-22, a2=sp-24, a3=sp-26, a4=sp-28, a5=sp-30, a6=sp-32 (`jal` at 0x8894).
  Calls `_clock_func [0x88e4]` via direct with a0=0x1, a1=sp-32, a2=?, a3=? (`jal` at 0x88d0).
- `_clock_func` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x88e4, 524 bytes) Inferred.
  Stores 1 bytes from `a6` to abs 0x900000001f6a0000; value 0xa (`sb` at 0x8938).
  Stores 1 bytes from `a0` to abs 0x900000001f6c0000; value 0x30 (`sb` at 0x893c).
  Stores 1 bytes from `t0` to abs 0x900000001f6a0000; value 0xb (`sb` at 0x8940).
  Stores 1 bytes from `a7` to abs 0x900000001f6c0000; value 0x86 (`sb` at 0x8944).
  Stores 1 bytes from `zero` to abs 0x900000001f6a0000; value 0x0 (`sb` at 0x8948).
  Stores 1 bytes from `ra` to abs 0x900000001f6c0000; value [a1]:2 (`sb` at 0x8950).
  Stores 1 bytes from `t9` to abs 0x900000001f6a0000; value 0x2 (`sb` at 0x8958).
  Stores 1 bytes from `t8` to abs 0x900000001f6c0000; value [a1+2]:2 (`sb` at 0x8960).
  Stores 1 bytes from `t3` to abs 0x900000001f6a0000; value 0x4 (`sb` at 0x8968).
  Stores 1 bytes from `t2` to abs 0x900000001f6c0000; value [a1+4]:2 (`sb` at 0x8970).
  Stores 1 bytes from `t1` to abs 0x900000001f6a0000; value 0x7 (`sb` at 0x8978).
  Stores 1 bytes from `a3` to abs 0x900000001f6c0000; value [a1+6]:2 (`sb` at 0x8980).
  Stores 1 bytes from `a2` to abs 0x900000001f6a0000; value 0x8 (`sb` at 0x8988).
  Stores 1 bytes from `v1` to abs 0x900000001f6c0000; value [a1+8]:2 (`sb` at 0x8990).
  Stores 1 bytes from `at` to abs 0x900000001f6a0000; value 0x9 (`sb` at 0x8994).
  Stores 1 bytes from `t9` to abs 0x900000001f6c0000 (`sb` at 0x89a8).
  Stores 1 bytes from `t8` to abs 0x900000001f6a0000; value 0x48 (`sb` at 0x89b0).
  Stores 1 bytes from `t1` to abs 0x900000001f6c0000 (`sb` at 0x89c0).
  Stores 1 bytes from `a2` to abs 0x900000001f6a0000; value 0x6 (`sb` at 0x89c8).
  Stores 1 bytes from `a3` to abs 0x900000001f6c0000; value [a1+12]:2 (`sb` at 0x89d0).
  Stores 1 bytes from `t0` to abs 0x900000001f6a0000; value 0xb (`sb` at 0x89d4).
  Stores 1 bytes from `a2` to abs 0x900000001f6c0000; value 0x6 (`sb` at 0x89d8).
  Stores 1 bytes from `a1` to abs 0x900000001f6a0000; value 0x4a (`sb` at 0x89dc).
  Stores 1 bytes from `zero` to abs 0x900000001f6c0000; value 0x0 (`sb` at 0x89e0).
  Stores 1 bytes from `v1` to abs 0x900000001f6a0000; value 0xc (`sb` at 0x89e8).
  Stores 1 bytes from `a6` to abs 0x900000001f6a0000; value 0xa (`sb` at 0x8a20).
  Stores 1 bytes from `a0` to abs 0x900000001f6c0000; value 0x30 (`sb` at 0x8a24).
  Stores 1 bytes from `a1` to abs 0x900000001f6a0000; value 0x4a (`sb` at 0x8a28).
  Stores 1 bytes from `zero` to abs 0x900000001f6a0000; value 0x0 (`sb` at 0x8a6c).
  Stores 2 bytes from `v1` to a1 (arg1 at entry) +0x0; value [0x900000001f6c0000]:1 (`sh` at 0x8a74).
  Stores 1 bytes from `at` to abs 0x900000001f6a0000; value 0x2 (`sb` at 0x8a7c).
  Stores 2 bytes from `ra` to a1 (arg1 at entry) +0x2; value [0x900000001f6c0000]:1 (`sh` at 0x8a84).
  Stores 1 bytes from `t9` to abs 0x900000001f6a0000; value 0x4 (`sb` at 0x8a88).
  Stores 2 bytes from `t8` to a1 (arg1 at entry) +0x4; value [0x900000001f6c0000]:1 (`sh` at 0x8a90).
  Stores 1 bytes from `t3` to abs 0x900000001f6a0000; value 0x7 (`sb` at 0x8a94).
  Stores 2 bytes from `t2` to a1 (arg1 at entry) +0x6; value [0x900000001f6c0000]:1 (`sh` at 0x8a9c).
  Stores 1 bytes from `t1` to abs 0x900000001f6a0000; value 0x8 (`sb` at 0x8aa0).
  Stores 2 bytes from `t0` to a1 (arg1 at entry) +0x8; value [0x900000001f6c0000]:1 (`sh` at 0x8aa8).
  Stores 1 bytes from `a7` to abs 0x900000001f6a0000; value 0x9 (`sb` at 0x8aac).
  Stores 2 bytes from `a6` to a1 (arg1 at entry) +0xa; value [0x900000001f6c0000]:1 (`sh` at 0x8ab4).
  Stores 1 bytes from `a3` to abs 0x900000001f6a0000; value 0x48 (`sb` at 0x8ab8).
  Stores 2 bytes from `a1` to a1 (arg1 at entry) +0xa (`sh` at 0x8adc).
  Stores 1 bytes from `a0` to abs 0x900000001f6a0000; value 0x6 (`sb` at 0x8ae0).
  Stores 2 bytes from `v1` to a1 (arg1 at entry) +0xc; value [0x900000001f6c0000]:1 (`sh` at 0x8aec).
  At `beq s5,zero,8a20` at 0x892c, the branch is taken when s5(=a0) == 0; it falls through when s5(=a0) != 0 (`beq` at 0x892c).
  At `beq at,zero,8a6c` at 0x8a48, the branch is taken when (at(=[0x900000001f6c0000]:1) & 0x40) == 0; it falls through when (at(=[0x900000001f6c0000]:1) & 0x40) != 0 (`beq` at 0x8a48).
  Returns with v0 = one of 0x0, 0x1 at 0x8a18 (`jr` at 0x8a18).
  Calls `mutex_spinlock_spl` via direct with a0=sym(ip30clocklock), a1=sym(splprof), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x8904).
  Calls `slow_ioc3_sio` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x890c).
  Calls `restore_ioc3_sio` via direct with a0=ret(slow_ioc3_sio), a1=?, a2=?, a3=?, a4=0x900000001f6c0000, a5=0x900000001f6a0000, a7=one of 0x9, 0x86 (`jal` at 0x89f0).
  Calls `mutex_spinunlock` via direct with a0=sym(ip30clocklock), a1=ret(mutex_spinlock_spl), a2=?, a3=? (`jal` at 0x89fc).
  Calls `restore_ioc3_sio` via direct with a0=ret(slow_ioc3_sio), a1=0x4a, a2=?, a3=0x48, a4=0x900000001f6c0000, a5=0x900000001f6a0000, a6=0xa, a7=0x9 (`jal` at 0x8a50).
  Calls `mutex_spinunlock` via direct with a0=sym(ip30clocklock), a1=ret(mutex_spinlock_spl), a2=?, a3=? (`jal` at 0x8a5c).
- `set_autopoweron` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x8af0, 412 bytes) Inferred.
  Stores 1 bytes from `t2` to abs 0x900000001f6a0000; value 0xa (`sb` at 0x8c08).
  Stores 1 bytes from `t1` to abs 0x900000001f6c0000; value 0x30 (`sb` at 0x8c10).
  Stores 1 bytes from `t0` to abs 0x900000001f6a0000; value 0x1 (`sb` at 0x8c18).
  Stores 1 bytes from `a7` to abs 0x900000001f6c0000 (`sb` at 0x8c20).
  Stores 1 bytes from `a6` to abs 0x900000001f6a0000; value 0x3 (`sb` at 0x8c28).
  Stores 1 bytes from `a5` to abs 0x900000001f6c0000 (`sb` at 0x8c30).
  Stores 1 bytes from `a4` to abs 0x900000001f6a0000; value 0x5 (`sb` at 0x8c38).
  Stores 1 bytes from `a3` to abs 0x900000001f6c0000 (`sb` at 0x8c40).
  Stores 1 bytes from `a2` to abs 0x900000001f6a0000; value 0x49 (`sb` at 0x8c48).
  Stores 1 bytes from `a1` to abs 0x900000001f6c0000 (`sb` at 0x8c50).
  Stores 1 bytes from `v0` to abs 0x900000001f6a0000; value 0x4b (`sb` at 0x8c5c).
  Stores 1 bytes from `v0` to abs 0x900000001f6a0000; value 0x4b (`sb` at 0x8c64).
  Stores 1 bytes from `ra` to abs 0x900000001f6c0000; value ([0x900000001f6c0000]:1 | 0x3) (`sb` at 0x8c6c).
  At `bne at,zero,8ba4` at 0x8b00, the branch is taken when at(=[sym(autopoweron_alarm)]) < a0(=[sym(time)]) (signed); it falls through when at(=[sym(autopoweron_alarm)]) >= a0(=[sym(time)]) (signed) (`bne` at 0x8b00).
  At `beq v1,zero,8bb0` at 0x8b74, the branch is taken when v1(?) == 0; it falls through when v1(?) != 0 (`beq` at 0x8b74).
  At `beq a2,zero,8bc4` at 0x8b84, the branch is taken when a2(?) == 0; it falls through when a2(?) != 0 (`beq` at 0x8b84).
  At `bne a3,zero,8bec` at 0x8b9c, the branch is taken when a3(?) < a7(=[table(sym(.data)+784)-4]) (signed); it falls through when a3(?) >= a7(=[table(sym(.data)+784)-4]) (signed) (`bne` at 0x8b9c).
  At `beq t0,zero,8b7c` at 0x8bbc, the branch is taken when t0(?) == 0; it falls through when t0(?) != 0 (`beq` at 0x8bbc).
  At `beq t2,zero,8ba4` at 0x8be4, the branch is taken when t2(?) >= t3(=[table(sym(.data)+784)+44]) (signed); it falls through when t2(?) < t3(=[table(sym(.data)+784)+44]) (signed) (`beq` at 0x8be4).
  Returns with v0 = ? at 0x8ba8 (`jr` at 0x8ba8).
  Calls `secs_to_calendar_time [0x8c8c]` via direct with a0=[sym(time)], a1=sp-48, a2=sp-46, a3=sp-44, a4=sp-42, a5=sp-40, a6=sp-38 (`jal` at 0x8b1c).
  Calls `secs_to_calendar_time [0x8c8c]` via direct with a0=[sym(autopoweron_alarm)], a1=sp-36, a2=sp-34, a3=sp-32, a4=sp-30, a5=sp-28, a6=sp-26 (`jal` at 0x8b3c).
  Calls `mutex_spinlock_spl` via direct with a0=sym(ip30clocklock), a1=sym(splprof), a2=?, a3=?, a4=[sym(autopoweron_alarm)], a6=sym(.data)+784 (`jal` at 0x8bec).
  Calls `slow_ioc3_sio` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x8bf4).
  Calls `restore_ioc3_sio` via direct with a0=ret(slow_ioc3_sio), a1=?, a2=0x49, a3=?, a4=0x5, a6=0x3 (`jal` at 0x8c70).
  Calls `mutex_spinunlock` via direct with a0=sym(ip30clocklock), a1=?, a2=?, a3=? (`jal` at 0x8c7c).
- `secs_to_calendar_time` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x8c8c, 484 bytes) Inferred.
  Stores 2 bytes from `at` to a1 (arg1 at entry) +0x0; value 0x7b2 (`sh` at 0x8c90).
  Stores 2 bytes from `t0` to a1 (arg1 at entry) +0x0 (`sh` at 0x8cd4).
  Stores 2 bytes from `zero` to a2 (arg2 at entry) +0x0; value 0x0 (`sh` at 0x8d44).
  Stores 2 bytes from `zero` to a2 (arg2 at entry) +0x0; value 0x0 (`sh` at 0x8da0).
  Stores 2 bytes from `a1` to a2 (arg2 at entry) +0x0 (`sh` at 0x8df4).
  Stores 2 bytes from `at` to a2 (arg2 at entry) +0x0 (`sh` at 0x8e38).
  Stores 2 bytes from `t9` to a3 (arg3 at entry) +0x0 (`sh` at 0x8e44).
  Stores 2 bytes from `t8` to a4 (arg4 at entry) +0x0 (`sh` at 0x8e48).
  Stores 2 bytes from `s7` to a5 (arg5 at entry) +0x0 (`sh` at 0x8e50).
  Stores 2 bytes from `s5` to a6 (arg6 at entry) +0x0 (`sh` at 0x8e5c).
  At `beq ra,zero,8d50` at 0x8cf8, the branch is taken when ra(?) == 0; it falls through when ra(?) != 0 (`beq` at 0x8cf8).
  At `beq at,zero,8d64` at 0x8d08, the branch is taken when at(?) == 0; it falls through when at(?) != 0 (`beq` at 0x8d08).
  At `beq t8,zero,8ccc` at 0x8d10, the branch is taken when t8(?) == 0; it falls through when t8(?) != 0 (`beq` at 0x8d10).
  At `beq ra,zero,8d84` at 0x8d18, the branch is taken when ra(?) == 0; it falls through when ra(?) != 0 (`beq` at 0x8d18).
  At `beq v0,zero,8d90` at 0x8d28, the branch is taken when v0(?) == 0; it falls through when v0(?) != 0 (`beq` at 0x8d28).
  At `beq v1,zero,8dac` at 0x8d40, the branch is taken when a0(?) >= v1(=[sym(.data)+784]) (signed); it falls through when a0(?) < v1(=[sym(.data)+784]) (signed) (`beq` at 0x8d40).
  At `beq a7,zero,8d00` at 0x8d5c, the branch is taken when a7(?) == 0; it falls through when a7(?) != 0 (`beq` at 0x8d5c).
  At `bne t8,zero,8d18` at 0x8d74, the branch is taken when a0(?) < t3(=0x1e28500) (signed); it falls through when a0(?) >= t3(=0x1e28500) (signed) (`bne` at 0x8d74).
  At `beq t8,zero,8d20` at 0x8d8c, the branch is taken when t8(?) == 0; it falls through when t8(?) != 0 (`beq` at 0x8d8c).
  At `bne ra,zero,8df8` at 0x8da4, the branch is taken when a0(?) < ra(=[sym(.data)+832]) (signed); it falls through when a0(?) >= ra(=[sym(.data)+832]) (signed) (`bne` at 0x8da4).
  At `beq t2,zero,8db8` at 0x8df0, the branch is taken when a0(?) >= t2(?) (signed); it falls through when a0(?) < t2(?) (signed) (`beq` at 0x8df0).
  Returns with v0 = ? at 0x8e68 (`jr` at 0x8e68).
- `cpu_clearpower` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x8e70, 112 bytes) Inferred.
  Stores 1 bytes from `a1` to abs 0x900000001f6a0000; value 0xa (`sb` at 0x8e9c).
  Stores 1 bytes from `a0` to abs 0x900000001f6c0000; value 0x30 (`sb` at 0x8ea4).
  Stores 1 bytes from `v0` to abs 0x900000001f6a0000; value 0x4a (`sb` at 0x8eb0).
  Stores 1 bytes from `zero` to abs 0x900000001f6c0000; value 0x0 (`sb` at 0x8eb8).
  Returns with v0 = ret(mutex_spinunlock) at 0x8ed8 (`jr` at 0x8ed8).
  Calls `mutex_spinlock_spl` via direct with a0=sym(ip30clocklock), a1=sym(splprof), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x8e7c).
  Calls `slow_ioc3_sio` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x8e88).
  Calls `flushbus` via direct with a0=0x30, a1=0xa, a2=?, a3=? (`jal` at 0x8eb4).
  Calls `restore_ioc3_sio` via direct with a0=ret(slow_ioc3_sio), a1=?, a2=?, a3=? (`jal` at 0x8ebc).
  Calls `mutex_spinunlock` via direct with a0=sym(ip30clocklock), a1=?, a2=?, a3=? (`jal` at 0x8ecc).
- `cpu_soft_powerdown` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x8ee0, 200 bytes) Inferred.
  Stores 1 bytes from `a4` to abs 0x900000001f6a0000; value 0xa (`sb` at 0x8f4c).
  Stores 1 bytes from `a3` to abs 0x900000001f6c0000; value 0x30 (`sb` at 0x8f54).
  Stores 1 bytes from `t8` to abs 0x900000001f6a0000; value 0x4b (`sb` at 0x8f5c).
  Stores 1 bytes from `t8` to abs 0x900000001f6a0000; value 0x4b (`sb` at 0x8f74).
  Stores 1 bytes from `a2` to abs 0x900000001f6c0000 (`sb` at 0x8f84).
  Stores 1 bytes from `s4` to abs 0x900000001f6a0000; value 0x4a (`sb` at 0x8f88).
  Stores 1 bytes from `s3` to abs 0x900000001f6c0000; value 0x8 (`sb` at 0x8f8c).
  Stores 1 bytes from `s5` to abs 0x900000001f6a0000; value 0xe (`sb` at 0x8f90).
  At `beq a0,zero,8ef8` at 0x8ee8, the branch is taken when a0(=[sym(fp_poweroff)]:8) == 0; it falls through when a0(=[sym(fp_poweroff)]:8) != 0 (`beq` at 0x8ee8).
  Calls `(unknown callee)` via register with a0=[sym(fp_poweroff)]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jalr` at 0x8ef0).
  Calls `conbuf_flush` via direct with a0=0x3, a1=?, a2=?, a3=? (`jal` at 0x8ef8).
  Calls `heart_imr_bits_rmw` via direct with a0=[sym(master_procid)]:2, a1=0x200000000000000, a2=0x0, a3=? (`jal` at 0x8f0c).
  Calls `mutex_spinlock_spl` via direct with a0=sym(ip30clocklock), a1=sym(splprof), a2=?, a3=? (`jal` at 0x8f30).
  Calls `slow_ioc3_sio` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x8f38).
  Calls `us_delay` via direct with a0=0x989680, a1=?, a2=?, a3=?, a5=[0x900000001f6c0000]:1 (`jal` at 0x8f98).
- `slow_ioc3_sio` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x8fa8, 32 bytes) Inferred.
  Stores 4 bytes from `at` to abs 0x900000001f600028 (`sw` at 0x8fc4).
  Returns with v0 = [0x900000001f600028] at 0x8fc0 (`jr` at 0x8fc0).
- `restore_ioc3_sio` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x8fc8, 32 bytes) Inferred.
  Stores 1 bytes from `v1` to abs 0x900000001f6a0000; value 0xe (`sb` at 0x8fd8).
  Stores 4 bytes from `a0` to abs 0x900000001f600028; value a0 (`sw` at 0x8fe4).
  Returns with v0 = [0x900000001f6c0000]:1 at 0x8fe0 (`jr` at 0x8fe0).
- `load_nvram_tab` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x8fe8, 56 bytes) Inferred.
  At `bgtz v0,900c` at 0x8ffc, the branch is taken when v0(=ret(arcs_nvram_tab)) > 0 (signed); it falls through when v0(=ret(arcs_nvram_tab)) <= 0 (signed) (`bgtz` at 0x8ffc).
  Returns with v0 = ? at 0x9004 (`jr` at 0x9004).
  Calls `arcs_nvram_tab` via direct with a0=sym(.bss)+560, a1=0x780, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x8ff4).
  Calls `cmn_err` via direct with a0=0x4, a1=sym(.rodata)+2064, a2=?, a3=? (`jal` at 0x9010).
- `nvchecksum` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x9020, 164 bytes) Inferred.
  Stores 1 bytes from `t1` to abs 0x900000001f6a0000; value 0xa (`sb` at 0x9040).
  Stores 1 bytes from `at` to abs 0x900000001f6c0000; value 0x20 (`sb` at 0x904c).
  Stores 1 bytes from `a0` to abs 0x900000001f6a0000 (`sb` at 0x9054).
  Stores 1 bytes from `t1` to abs 0x900000001f6a0000; value 0xa (`sb` at 0x907c).
  Stores 1 bytes from `t0` to abs 0x900000001f6c0000; value 0x30 (`sb` at 0x9080).
  Stores 1 bytes from `a6` to abs 0x900000001f6a0000; value 0x50 (`sb` at 0x9084).
  Stores 1 bytes from `a1` to abs 0x900000001f6c0000 (`sb` at 0x908c).
  Stores 1 bytes from `a7` to abs 0x900000001f6a0000; value 0x53 (`sb` at 0x9090).
  At `bne a0,zero,9050` at 0x9074, the branch is taken when a2(?) < 0x80 (signed); it falls through when a2(?) >= 0x80 (signed) (`bne` at 0x9074).
  At `bne v1,zero,9084` at 0x90b4, the branch is taken when a5(?) < 0x100 (signed); it falls through when a5(?) >= 0x100 (signed) (`bne` at 0x90b4).
  Returns with v0 = ? at 0x90bc (`jr` at 0x90bc).
- `ip30_set_an_nvram` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x90c4, 376 bytes) Inferred.
  Stores 1 bytes from `t1` to abs 0x900000001f6a0000; value 0xa (`sb` at 0x9148).
  Stores 1 bytes from `a6` to abs 0x900000001f6c0000; value 0x20 (`sb` at 0x914c).
  Stores 1 bytes from `ra` to abs 0x900000001f6a0000 (`sb` at 0x9174).
  Stores 1 bytes from `t8` to abs 0x900000001f6c0000 (`sb` at 0x9184).
  Stores 1 bytes from `v0` to abs 0x900000001f6a0000; value 0xa (`sb` at 0x91a4).
  Stores 1 bytes from `at` to abs 0x900000001f6c0000; value 0x30 (`sb` at 0x91ac).
  Stores 1 bytes from `t0` to abs 0x900000001f6a0000; value 0x50 (`sb` at 0x91b8).
  Stores 1 bytes from `a1` to abs 0x900000001f6c0000 (`sb` at 0x91c4).
  Stores 1 bytes from `t1` to abs 0x900000001f6a0000; value 0x53 (`sb` at 0x91cc).
  Stores 1 bytes from `v1` to abs 0x900000001f6c0000 (`sb` at 0x91e0).
  Stores 1 bytes from `a2` to abs 0x900000001f6a0000; value 0xf (`sb` at 0x9200).
  Stores 1 bytes from `v0` to abs 0x900000001f6c0000; value ret(nvchecksum) (`sb` at 0x9204).
  At `beq at,zero,922c` at 0x90ec, the branch is taken when at(=(a0 + a1)) >= 0xf3 (signed); it falls through when at(=(a0 + a1)) < 0xf3 (signed) (`beq` at 0x90ec).
  At `beq a7,zero,9150` at 0x9140, the branch is taken when s0(=a0+14) >= 0x80 (signed); it falls through when s0(=a0+14) < 0x80 (signed) (`beq` at 0x9140).
  At `bne zero,a2,9198` at 0x9154, the branch is taken when a2(?) != 0; it falls through when a2(?) == 0 (`bne` at 0x9154).
  At `beq a7,zero,9198` at 0x915c, the branch is taken when a7(?) == 0; it falls through when a7(?) != 0 (`beq` at 0x915c).
  At `bne zero,t9,91ec` at 0x9188, the branch is taken when s4(=(a0+14 + a1)-1) < s0(?) (signed); it falls through when s4(=(a0+14 + a1)-1) >= s0(?) (signed) (`bne` at 0x9188).
  At `bne a2,zero,9168` at 0x9190, the branch is taken when a2(?) != 0; it falls through when a2(?) == 0 (`bne` at 0x9190).
  At `beq a6,zero,91ec` at 0x9198, the branch is taken when a6(?) == 0; it falls through when a6(?) != 0 (`beq` at 0x9198).
  At `beq a2,zero,91ec` at 0x91a8, the branch is taken when a2(?) == 0; it falls through when a2(?) != 0 (`beq` at 0x91a8).
  At `bne a0,zero,91ec` at 0x91dc, the branch is taken when s4(=(a0+14 + a1)-1) < s0(?) (signed); it falls through when s4(=(a0+14 + a1)-1) >= s0(?) (signed) (`bne` at 0x91dc).
  At `bne a2,zero,91b8` at 0x91e4, the branch is taken when a2(?) != 0; it falls through when a2(?) == 0 (`bne` at 0x91e4).
  Returns with v0 = one of -0x1, 0x0 at 0x9234 (`jr` at 0x9234).
  Calls `mutex_spinlock_spl` via direct with a0=sym(ip30clocklock), a1=sym(splprof), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=a1 at entry (arg1) (`jal` at 0x9104).
  Calls `slow_ioc3_sio` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x9114).
  Calls `nvchecksum [0x9020]` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x91ec).
  Calls `restore_ioc3_sio` via direct with a0=?, a1=?, a2=0xf, a3=? (`jal` at 0x9208).
  Calls `mutex_spinunlock` via direct with a0=sym(ip30clocklock), a1=?, a2=?, a3=? (`jal` at 0x921c).
- `set_nvram` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x923c, 284 bytes) Inferred.
  At `beq v0,zero,92dc` at 0x9274, the branch is taken when v0(=ret(strcmp)) == 0; it falls through when v0(=ret(strcmp)) != 0 (`beq` at 0x9274).
  At `beq v0,zero,932c` at 0x928c, the branch is taken when v0(=ret(strcmp)) == 0; it falls through when v0(=ret(strcmp)) != 0 (`beq` at 0x928c).
  At `beq a2,zero,92c4` at 0x9298, the branch is taken when a2(=[sym(.bss)+604]) == 0; it falls through when a2(=[sym(.bss)+604]) != 0 (`beq` at 0x9298).
  At `beq v0,zero,92e4` at 0x92ac, the branch is taken when v0(=ret(strcmp)) == 0; it falls through when v0(=ret(strcmp)) != 0 (`beq` at 0x92ac).
  At `bne a3,zero,92a0` at 0x92b8, the branch is taken when a3(=[sym(.bss)+652]) != 0; it falls through when a3(=[sym(.bss)+652]) == 0 (`bne` at 0x92b8).
  At `beq a0,a6,9350` at 0x92f0, the branch is taken when a0(=[sym(.bss)+600]) == a6(=0x22b); it falls through when a0(=[sym(.bss)+600]) != a6(=0x22b) (`beq` at 0x92f0).
  At `bne v1,zero,9348` at 0x9304, the branch is taken when v0(=[sym(.bss)+604]) < a5(?) (signed); it falls through when v0(=[sym(.bss)+604]) >= a5(?) (signed) (`bne` at 0x9304).
  At `beq v0,zero,9318` at 0x930c, the branch is taken when v0(?) == 0; it falls through when v0(?) != 0 (`beq` at 0x930c).
  At `beq a2,zero,9298` at 0x9338, the branch is taken when a2(?) == 0; it falls through when a2(?) != 0 (`beq` at 0x9338).
  Returns with v0 = ? at 0x92d4 (`jr` at 0x92d4).
  Calls `strlen` via direct with a0=a1 at entry (arg1), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x9250).
  Calls `strcmp` via direct with a0=sym(.rodata)+2064, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x926c).
  Calls `strcmp` via direct with a0=a0 at entry (arg0), a1=sym(.rodata)+2064, a2=?, a3=? (`jal` at 0x9284).
  Calls `strcmp` via direct with a0=sym(.bss)+560, a1=a0 at entry (arg0), a2=?, a3=? (`jal` at 0x92a4).
  Calls `ip30_set_an_nvram` via direct with a0=[sym(.bss)+600], a1=?, a2=a1 at entry (arg1), a3=?, a6=0x22b (`jal` at 0x931c).
- `ip30_get_an_nvram` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x9358, 372 bytes) Inferred.
  Stores 1 bytes from `ra` to abs 0x900000001f6a0000; value 0xa (`sb` at 0x93dc).
  Stores 1 bytes from `t9` to abs 0x900000001f6c0000; value 0x20 (`sb` at 0x93e0).
  Stores 1 bytes from `ra` to abs 0x900000001f6a0000 (`sb` at 0x9404).
  Stores 1 bytes from `t8` to ? (base unknown); value [0x900000001f6c0000]:1 (`sb` at 0x9418).
  Stores 1 bytes from `v0` to abs 0x900000001f6a0000; value 0xa (`sb` at 0x9444).
  Stores 1 bytes from `at` to abs 0x900000001f6c0000; value 0x30 (`sb` at 0x944c).
  Stores 1 bytes from `t2` to abs 0x900000001f6a0000; value 0x50 (`sb` at 0x9458).
  Stores 1 bytes from `a3` to abs 0x900000001f6c0000 (`sb` at 0x9464).
  Stores 1 bytes from `t3` to abs 0x900000001f6a0000; value 0x53 (`sb` at 0x946c).
  Stores 1 bytes from `v1` to ? (base unknown); value [0x900000001f6c0000]:1 (`sb` at 0x9480).
  At `beq at,zero,94ac` at 0x9380, the branch is taken when at(=(a0 + a1)) >= 0xf3 (signed); it falls through when at(=(a0 + a1)) < 0xf3 (signed) (`beq` at 0x9380).
  At `beq t1,zero,93e4` at 0x93d4, the branch is taken when s0(=a0+14) >= 0x80 (signed); it falls through when s0(=a0+14) < 0x80 (signed) (`beq` at 0x93d4).
  At `bne zero,a7,94c4` at 0x93e8, the branch is taken when a7(?) != 0; it falls through when a7(?) == 0 (`bne` at 0x93e8).
  At `beq t1,zero,94bc` at 0x93f0, the branch is taken when t1(?) == 0; it falls through when t1(?) != 0 (`beq` at 0x93f0).
  At `bne zero,t9,948c` at 0x941c, the branch is taken when s2(=(a0+14 + a1)-1) < s0(?) (signed); it falls through when s2(=(a0+14 + a1)-1) >= s0(?) (signed) (`bne` at 0x941c).
  At `bne a7,zero,93fc` at 0x9424, the branch is taken when a7(?) != 0; it falls through when a7(?) == 0 (`bne` at 0x9424).
  At `beq t0,zero,948c` at 0x9430, the branch is taken when t0(?) == 0; it falls through when t0(?) != 0 (`beq` at 0x9430).
  At `beq a5,zero,948c` at 0x9448, the branch is taken when a5(?) == 0; it falls through when a5(?) != 0 (`beq` at 0x9448).
  At `bne a1,zero,948c` at 0x947c, the branch is taken when s2(=(a0+14 + a1)-1) < s0(?) (signed); it falls through when s2(=(a0+14 + a1)-1) >= s0(?) (signed) (`bne` at 0x947c).
  At `bne a7,zero,9458` at 0x9484, the branch is taken when a7(?) != 0; it falls through when a7(?) == 0 (`bne` at 0x9484).
  Returns with v0 = one of -0x1, 0x0 at 0x94b4 (`jr` at 0x94b4).
  Calls `mutex_spinlock_spl` via direct with a0=sym(ip30clocklock), a1=sym(splprof), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a5=a1 at entry (arg1) (`jal` at 0x9398).
  Calls `slow_ioc3_sio` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0x93a0).
  Calls `restore_ioc3_sio` via direct with a0=ret(slow_ioc3_sio), a1=?, a2=0x900000001f6a0000, a3=?, a6=0x900000001f6c0000 (`jal` at 0x948c).
  Calls `mutex_spinunlock` via direct with a0=sym(ip30clocklock), a1=?, a2=?, a3=? (`jal` at 0x949c).
- `read_branch_diag` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x94d0, 12 bytes) Inferred.
  Returns with v0 = ? at 0x94d4 (`jr` at 0x94d4).
- `write_branch_diag` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x94dc, 12 bytes) Inferred.
  Returns with v0 = ? at 0x94e0 (`jr` at 0x94e0).
- `branch_prediction_off` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x94e8, 36 bytes) Inferred.
  Returns with v0 = ? at 0x9504 (`jr` at 0x9504).
- `branch_prediction_on` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x950c, 28 bytes) Inferred.
  Returns with v0 = ? at 0x9520 (`jr` at 0x9520).
- `branch_prediction_taken` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x9528, 36 bytes) Inferred.
  Returns with v0 = ? at 0x9544 (`jr` at 0x9544).
- `branch_prediction_fwd_not_taken` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x954c, 24 bytes) Inferred.
  Returns with v0 = ? at 0x955c (`jr` at 0x955c).
- `exception` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x9800, 1076 bytes) Inferred.
  Range 0x9a9c 0x9aa0 0x9aa4 0x9aa8 0x9aac 0x9ab0 0x9ab4 0x9ab8 0x9abc 0x9ac0 0x9ac4 0x9ac8 0x9acc 0x9ad0 0x9ad4 0x9ad8 0x9adc 0x9ae0 0x9ae4 0x9ae8 0x9aec 0x9af0 0x9af4 0x9af8 0x9afc 0x9b00 0x9b04 0x9b08 0x9b0c 0x9b10 0x9b14 0x9b18 0x9b1c 0x9b20 0x9b24 0x9b28 0x9b2c 0x9b30 0x9b34 0x9b38 0x9b3c 0x9b40 0x9b44 0x9b48 0x9b4c 0x9b50 0x9b54 0x9b58 0x9b5c 0x9b60 0x9b64 0x9b68 0x9b6c 0x9b70 0x9b74 0x9b78 0x9b7c 0x9b80 0x9b84 0x9b88 0x9b8c 0x9b90 0x9b94 0x9b98 0x9b9c 0x9ba0 0x9ba4 0x9ba8 0x9bac 0x9bb0 0x9bb4 0x9bb8 0x9bbc 0x9bc0 0x9bc4 0x9bc8 0x9bcc 0x9bd0 0x9bd4 0x9bd8 0x9bdc 0x9be0 0x9be4 0x9be8 0x9bec 0x9bf0 0x9bf4 0x9bf8 0x9bfc 0x9c00 0x9c04 0x9c08 0x9c0c 0x9c10 0x9c14 0x9c18 0x9c1c 0x9c20 0x9c24 0x9c28 0x9c2c 0x9c30 is not reached from the entry.
  Stores 8 bytes from `v0` to [-0x3000]:8 +0x48; value ret(getpc) (`sd` at 0x9824).
  Stores 8 bytes from `k0` to [-0x3000]:8 +0x0 (`sd` at 0x9830).
  Stores 8 bytes from `k0` to [-0x3000]:8 +0x8 (`sd` at 0x9838).
  Stores 8 bytes from `k0` to [-0x3000]:8 +0x10 (`sd` at 0x9840).
  Stores 8 bytes from `k0` to [-0x3000]:8 +0x18 (`sd` at 0x9848).
  Stores 8 bytes from `ra` to [-0x3000]:8 +0x20; value ra (`sd` at 0x984c).
  Stores 8 bytes from `k0` to [-0x3000]:8 +0x28; value [-0x3fe8]:8 (`sd` at 0x9854).
  Stores 8 bytes from `sp` to [-0x3000]:8 +0x30; value sp (`sd` at 0x9858).
  Stores 8 bytes from `k0` to [-0x3000]:8 +0x38; value 0x4 (`sd` at 0x9860).
  Stores 4 bytes from `k0` to abs 0xffffffffffffd008; value [-0x2ff8]+1 (`sw` at 0x986c).
  Stores 8 bytes from `k0` to [-0x3000]:8 +0x40; value [-0x2ff8]+1 (`sd` at 0x9870).
  Stores 8 bytes from `at` to [-0x3000]:8 +0x50 (`sd` at 0x9884).
  Stores 8 bytes from `v0` to [-0x3000]:8 +0x58 (`sd` at 0x9888).
  Stores 8 bytes from `v1` to [-0x3000]:8 +0x60 (`sd` at 0x988c).
  Stores 8 bytes from `a0` to [-0x3000]:8 +0x68 (`sd` at 0x9890).
  Stores 8 bytes from `a1` to [-0x3000]:8 +0x70 (`sd` at 0x9894).
  Stores 8 bytes from `a2` to [-0x3000]:8 +0x78 (`sd` at 0x9898).
  Stores 8 bytes from `a3` to [-0x3000]:8 +0x80 (`sd` at 0x989c).
  Stores 8 bytes from `a4` to [-0x3000]:8 +0x88 (`sd` at 0x98a0).
  Stores 8 bytes from `a5` to [-0x3000]:8 +0x90 (`sd` at 0x98a4).
  Stores 8 bytes from `a6` to [-0x3000]:8 +0x98 (`sd` at 0x98a8).
  Stores 8 bytes from `a7` to [-0x3000]:8 +0xa0 (`sd` at 0x98ac).
  Stores 8 bytes from `t0` to [-0x3000]:8 +0xa8 (`sd` at 0x98b0).
  Stores 8 bytes from `t1` to [-0x3000]:8 +0xb0 (`sd` at 0x98b4).
  Stores 8 bytes from `t2` to [-0x3000]:8 +0xb8 (`sd` at 0x98b8).
  Stores 8 bytes from `t3` to [-0x3000]:8 +0xc0 (`sd` at 0x98bc).
  Stores 8 bytes from `s0` to [-0x3000]:8 +0xc8; value s0 (`sd` at 0x98c0).
  Stores 8 bytes from `s1` to [-0x3000]:8 +0xd0; value s1 (`sd` at 0x98c4).
  Stores 8 bytes from `s2` to [-0x3000]:8 +0xd8; value s2 (`sd` at 0x98c8).
  Stores 8 bytes from `s3` to [-0x3000]:8 +0xe0; value s3 (`sd` at 0x98cc).
  Stores 8 bytes from `s4` to [-0x3000]:8 +0xe8; value s4 (`sd` at 0x98d0).
  Stores 8 bytes from `s5` to [-0x3000]:8 +0xf0; value s5 (`sd` at 0x98d4).
  Stores 8 bytes from `s6` to [-0x3000]:8 +0xf8; value s6 (`sd` at 0x98d8).
  Stores 8 bytes from `s7` to [-0x3000]:8 +0x100; value s7 (`sd` at 0x98dc).
  Stores 8 bytes from `t8` to [-0x3000]:8 +0x108 (`sd` at 0x98e0).
  Stores 8 bytes from `t9` to [-0x3000]:8 +0x110 (`sd` at 0x98e4).
  Stores 8 bytes from `gp` to [-0x3000]:8 +0x118; value gp (`sd` at 0x98e8).
  Stores 8 bytes from `s8` to [-0x3000]:8 +0x120; value s8 (`sd` at 0x98ec).
  Stores 8 bytes from `a0` to [-0x3000]:8 +0x128; value 0xbad0bad0bad0bad0 (`sd` at 0x995c).
  Stores 8 bytes from `a0` to ([-0x3000]:8+296 + [-0x2fec]-8) +0x0; value 0xbad1bad1bad1bad1 (`sd` at 0x9984).
  Stores 8 bytes from `k1` to abs 0xffffffffffffd000 (`sd` at 0x9a1c).
  Stores 8 bytes from `at` to abs 0xffffffffffffc038 (`sd` at 0x9a4c).
  Stores 8 bytes from `at` to abs 0xffffffffffffc038 (`sd` at 0x9a64).
  Stores 8 bytes from `at` to abs 0xffffffffffffc038 (`sd` at 0x9a74).
  Stores 8 bytes from `at` to abs 0xffffffffffffc038 (`sd` at 0x9a90).
  Stores 8 bytes from `at` to abs 0xffffffffffffc038 (`sd` at 0x9a98).
  At `beq k0,zero,9a20` at 0x9808, the branch is taken when (k0(=[-0x2ff4]) & 0x1) == 0; it falls through when (k0(=[-0x2ff4]) & 0x1) != 0 (`beq` at 0x9808).
  At `beq k0,zero,9a00` at 0x987c, the branch is taken when (k0(=[-0x2ff4]) & 0x2) == 0; it falls through when (k0(=[-0x2ff4]) & 0x2) != 0 (`beq` at 0x987c).
  At `beq k0,zero,9a00` at 0x98f8, the branch is taken when (k0(=[-0x2ff4]) & 0x4) == 0; it falls through when (k0(=[-0x2ff4]) & 0x4) != 0 (`beq` at 0x98f8).
  At `bne a1,a2,9940` at 0x9914, the branch is taken when a1(?) != a2(=-0x8000); it falls through when a1(?) == a2(=-0x8000) (`bne` at 0x9914).
  At `bne k0,zero,9a1c` at 0x9a10, the branch is taken when k1(=([-0x3000]:8 + [-0x2ff0])) < k0(=-0x1001) (signed); it falls through when k1(=([-0x3000]:8 + [-0x2ff0])) >= k0(=-0x1001) (signed) (`bne` at 0x9a10).
  At `beq k0,zero,9a78` at 0x9a28, the branch is taken when (k0(?) & 0x7c) == 0; it falls through when (k0(?) & 0x7c) != 0 (`beq` at 0x9a28).
  At `bne k0,zero,9a40` at 0x9a30, the branch is taken when k0(?) != 0; it falls through when k0(?) == 0 (`bne` at 0x9a30).
  At `bne k0,zero,9a50` at 0x9a40, the branch is taken when k0(?) != 0; it falls through when k0(?) == 0 (`bne` at 0x9a40).
  At `beq k0,zero,9a48` at 0x9a50, the branch is taken when k0(?) == 0; it falls through when k0(?) != 0 (`beq` at 0x9a50).
  At `beq k0,zero,9a94` at 0x9a58, the branch is taken when k0(?) == 0; it falls through when k0(?) != 0 (`beq` at 0x9a58).
  At `beq k0,zero,9a8c` at 0x9a60, the branch is taken when k0(?) == 0; it falls through when k0(?) != 0 (`beq` at 0x9a60).
  At `bnel k0,sp,9a70` at 0x9a7c, the branch is taken when k0(=-0x6ef) != sp(?); it falls through when k0(=-0x6ef) == sp(?) (`bnel` at 0x9a7c).
  At `beq k0,zero,9b30` at 0x9ad8, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0x9ad8).
  At `beq k0,zero,9b9c` at 0x9b40, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0x9b40).
  At `beq at,zero,9a68` at 0x9b5c, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0x9b5c).
  At `beq at,zero,9a68` at 0x9b6c, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0x9b6c).
  At `bgez k0,9bb0` at 0x9ba4, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`bgez` at 0x9ba4).
  At `bne at,k0,9a68` at 0x9bd4, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`bne` at 0x9bd4).
  At `beq at,zero,9a68` at 0x9c18, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0x9c18).
  At `beq at,zero,9a68` at 0x9c24, the branch is taken when condition not analyzed; it falls through when condition not analyzed (`beq` at 0x9c24).
  Calls `getpc` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0x9814).
  Calls `bcopy` via direct with a0=([[-0x3000]:8+48]:8 + [-0x2fec]), a1=[-0x3000]:8+296, a2=[-0x2fec], a3=? (`jal` at 0x992c).
  Calls `systrap` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x9a38).
  Calls `kmiss` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x9a48).
  Calls `longway` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x9a68).
  Calls `intrnorm` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x9a70).
  Calls `handle_intr_wgflush` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x9a84).
  Calls `handle_brkpt` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x9a8c).
  Calls `handle_watch` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0x9a94).
- `exception_endfast` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x9a9c, 76 bytes) Inferred.
  Stores 8 bytes from `at` to abs 0xffffffffffffc038 (`sd` at 0x9a9c).
  At `beq k0,zero,9b30` at 0x9ad8, the branch is taken when k0(?) == 0; it falls through when k0(?) != 0 (`beq` at 0x9ad8).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x9ae0).
- `wgflush_start` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x9ae8, 80 bytes) Inferred.
  Stores 8 bytes from `a2` to a1 (arg1 at entry) +0x0; value a2 (`sd` at 0x9aec).
  Stores 8 bytes from `a3` to a1 (arg1 at entry) +0x8; value a3 (`sd` at 0x9af0).
  Stores 8 bytes from `a4` to a1 (arg1 at entry) +0x10; value a4 (`sd` at 0x9af4).
  Stores 8 bytes from `a5` to a1 (arg1 at entry) +0x18; value a5 (`sd` at 0x9af8).
  Stores 8 bytes from `a6` to a1 (arg1 at entry) +0x20; value a6 (`sd` at 0x9afc).
  Stores 8 bytes from `a7` to a1 (arg1 at entry) +0x28; value a7 (`sd` at 0x9b00).
  Stores 8 bytes from `t0` to a1 (arg1 at entry) +0x30; value t0 (`sd` at 0x9b04).
  Stores 8 bytes from `t1` to a1 (arg1 at entry) +0x38; value t1 (`sd` at 0x9b08).
  Stores 8 bytes from `t2` to a1 (arg1 at entry) +0x40; value t2 (`sd` at 0x9b0c).
  Stores 8 bytes from `t3` to a1 (arg1 at entry) +0x48; value t3 (`sd` at 0x9b10).
  Stores 8 bytes from `t8` to a1 (arg1 at entry) +0x50; value t8 (`sd` at 0x9b14).
  Stores 8 bytes from `t9` to a1 (arg1 at entry) +0x58; value t9 (`sd` at 0x9b18).
  Stores 8 bytes from `v0` to a1 (arg1 at entry) +0x60 (`sd` at 0x9b1c).
  Stores 8 bytes from `v1` to a1 (arg1 at entry) +0x68 (`sd` at 0x9b20).
  Stores 8 bytes from `s2` to a1 (arg1 at entry) +0x70; value s2 (`sd` at 0x9b24).
  Stores 8 bytes from `a0` to a1 (arg1 at entry) +0x78; value a0 (`sd` at 0x9b28).
  Calls `intrnorm` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0x9b30).
- `handle_brkpt` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x9b38, 164 bytes) Inferred.
  At `beq k0,zero,9b9c` at 0x9b40, the branch is taken when (k0(?) & 0x18) == 0; it falls through when (k0(?) & 0x18) != 0 (`beq` at 0x9b40).
  At `beq at,zero,9a68` at 0x9b5c, the branch is taken when (k1(?) & 0x400) == 0; it falls through when (k1(?) & 0x400) != 0 (`beq` at 0x9b5c).
  At `beq at,zero,9a68` at 0x9b6c, the branch is taken when k1(?) >= 0x18 (signed); it falls through when k1(?) < 0x18 (signed) (`beq` at 0x9b6c).
  At `bgez k0,9bb0` at 0x9ba4, the branch is taken when k0(?) >= 0 (signed); it falls through when k0(?) < 0 (signed) (`bgez` at 0x9ba4).
  At `bne at,k0,9a68` at 0x9bd4, the branch is taken when at(=[sym(kernelbp)]) != k0(?); it falls through when at(=[sym(kernelbp)]) == k0(?) (`bne` at 0x9bd4).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x9b94).
- `handle_watch` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x9bdc, 100 bytes) Inferred.
  Range 0x9c34 0x9c38 0x9c3c is not reached from the entry.
  Stores 4 bytes from `k0` to (sym(flag_at_kernelbp) + ([-0x3c60]:2 << 0x2)) +0x0; value 0x1 (`sw` at 0x9c04).
  At `beq at,zero,9a68` at 0x9c18, the branch is taken when at(=[0xa800000000001020]:8) == 0; it falls through when at(=[0xa800000000001020]:8) != 0 (`beq` at 0x9c18).
  At `beq at,zero,9a68` at 0x9c24, the branch is taken when at(=[[0xa800000000001020]:8+8]:8) == 0; it falls through when at(=[[0xa800000000001020]:8+8]:8) != 0 (`beq` at 0x9c24).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0x9c2c).
- `kmiss` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x9c40, 1244 bytes) Inferred.
  Stores 8 bytes from `t0` to abs 0xffffffffffffc040; value t0 (`sd` at 0x9cb0).
  Stores 1 bytes from `k1` to [[-0x3fe8]:8+992]:8 +0x348; value [[[-0x3fe8]:8+992]:8+840]:1+1 (`sb` at 0x9da4).
  Stores 8 bytes from `k1` to ? (base unknown) (`sd` at 0x9de4).
  Stores 8 bytes from `k1` to ? (base unknown) (`sd` at 0x9dec).
  Stores 8 bytes from `k1` to ? (base unknown) (`sd` at 0x9e0c).
  Stores 8 bytes from `t0` to abs 0xffffffffffffc040 (`sd` at 0x9e38).
  Stores 8 bytes from `a0` to sym(_assregs) +0x18; value a0 (`sd` at 0xa0a0).
  Stores 8 bytes from `a1` to sym(_assregs) +0x20; value a1 (`sd` at 0xa0bc).
  Stores 8 bytes from `a2` to sym(_assregs) +0x28; value a2 (`sd` at 0xa0d8).
  At `bne at,zero,a114` at 0x9c5c, the branch is taken when k0(?) < at(=0xc0000fbfe0000000) (unsigned); it falls through when k0(?) >= at(=0xc0000fbfe0000000) (unsigned) (`bne` at 0x9c5c).
  At `bltz k0,9e18` at 0x9c78, the branch is taken when k0(?) < 0 (signed); it falls through when k0(?) >= 0 (signed) (`bltz` at 0x9c78).
  At `beq at,zero,9f54` at 0x9c84, the branch is taken when k0(?) >= at(=0x20000000) (unsigned); it falls through when k0(?) < at(=0x20000000) (unsigned) (`beq` at 0x9c84).
  At `beq at,zero,a114` at 0x9c94, the branch is taken when at(=[-0x3fe8]:8) == 0; it falls through when at(=[-0x3fe8]:8) != 0 (`beq` at 0x9c94).
  At `beq k1,zero,9ec8` at 0x9ca0, the branch is taken when k1(=[[-0x3fe8]:8+1400]:2) == 0; it falls through when k1(=[[-0x3fe8]:8+1400]:2) != 0 (`beq` at 0x9ca0).
  At `beq k1,zero,9cec` at 0x9ca8, the branch is taken when k1(?) == 0; it falls through when k1(?) != 0 (`beq` at 0x9ca8).
  At `beql t0,zero,9e20` at 0x9cc8, the branch is taken when t0(?) == 0; it falls through when t0(?) != 0 (`beql` at 0x9cc8).
  At `bne k1,zero,a114` at 0x9cf0, the branch is taken when k1(?) != 0; it falls through when k1(?) == 0 (`bne` at 0x9cf0).
  At `beql k0,zero,9eb0` at 0x9d08, the branch is taken when k0(?) == 0; it falls through when k0(?) != 0 (`beql` at 0x9d08).
  At `bgez k1,9d28` at 0x9d14, the branch is taken when k1(?) >= 0 (signed); it falls through when k1(?) < 0 (signed) (`bgez` at 0x9d14).
  At `beq k1,zero,9d68` at 0x9d54, the branch is taken when (k0(?) & 0x4000) == 0; it falls through when (k0(?) & 0x4000) != 0 (`beq` at 0x9d54).
  At `bgez k0,9dc0` at 0x9d70, the branch is taken when k0(?) >= 0 (signed); it falls through when k0(?) < 0 (signed) (`bgez` at 0x9d70).
  At `bne k0,zero,9db4` at 0x9d7c, the branch is taken when k0(=[-0x3fd8]:8) != 0; it falls through when k0(=[-0x3fd8]:8) == 0 (`bne` at 0x9d7c).
  At `bgez k0,9db4` at 0x9d94, the branch is taken when k0(=[[[-0x3fe8]:8+992]:8+840]:1-5) >= 0 (signed); it falls through when k0(=[[[-0x3fe8]:8+992]:8+840]:1-5) < 0 (signed) (`bgez` at 0x9d94).
  At `bgez k0,9e14` at 0x9dc8, the branch is taken when k0(?) >= 0 (signed); it falls through when k0(?) < 0 (signed) (`bgez` at 0x9dc8).
  At `beq k1,zero,9ec8` at 0x9e28, the branch is taken when k1(=[[-0x3fe8]:8+1400]:2) == 0; it falls through when k1(=[[-0x3fe8]:8+1400]:2) != 0 (`beq` at 0x9e28).
  At `beq k1,zero,9e7c` at 0x9e30, the branch is taken when k1(?) == 0; it falls through when k1(?) != 0 (`beq` at 0x9e30).
  At `beql t0,zero,9ec8` at 0x9e48, the branch is taken when t0(=[[-0x3fe8]:8+1392]:8) == 0; it falls through when t0(=[[-0x3fe8]:8+1392]:8) != 0 (`beql` at 0x9e48).
  At `beql t0,zero,9ec8` at 0x9e58, the branch is taken when t0(?) == 0; it falls through when t0(?) != 0 (`beql` at 0x9e58).
  At `bne k1,zero,a114` at 0x9e80, the branch is taken when k1(?) != 0; it falls through when k1(?) == 0 (`bne` at 0x9e80).
  At `beq k0,zero,9ec8` at 0x9e90, the branch is taken when k0(=[[-0x3fe8]:8+1392]:8) == 0; it falls through when k0(=[[-0x3fe8]:8+1392]:8) != 0 (`beq` at 0x9e90).
  At `bne k0,zero,9d10` at 0x9ea0, the branch is taken when k0(?) != 0; it falls through when k0(?) == 0 (`bne` at 0x9ea0).
  At `bgez k0,9eec` at 0x9edc, the branch is taken when k0(?) >= 0 (signed); it falls through when k0(?) < 0 (signed) (`bgez` at 0x9edc).
  At `bgez k1,9f3c` at 0x9f20, the branch is taken when k1(?) >= 0 (signed); it falls through when k1(?) < 0 (signed) (`bgez` at 0x9f20).
  At `beql k0,zero,9f48` at 0x9f3c, the branch is taken when k0(?) == 0; it falls through when k0(?) != 0 (`beql` at 0x9f3c).
  At `bltz k0,a114` at 0x9f68, the branch is taken when k0(?) < 0 (signed); it falls through when k0(?) >= 0 (signed) (`bltz` at 0x9f68).
  At `beq at,zero,a004` at 0x9f98, the branch is taken when k0(?) >= at(=[sym(syssegsz)]) (unsigned); it falls through when k0(?) < at(=[sym(syssegsz)]) (unsigned) (`beq` at 0x9f98).
  At `beq at,zero,9fdc` at 0x9fd0, the branch is taken when (k0(?) & 0x4000) == 0; it falls through when (k0(?) & 0x4000) != 0 (`beq` at 0x9fd0).
  At `bgez k0,a114` at 0xa040, the branch is taken when k0(?) >= 0 (signed); it falls through when k0(?) < 0 (signed) (`bgez` at 0xa040).
  At `bltz k0,a114` at 0xa048, the branch is taken when k0(?) < 0 (signed); it falls through when k0(?) >= 0 (signed) (`bltz` at 0xa048).
  At `blez at,a114` at 0xa078, the branch is taken when at(?) <= 0 (signed); it falls through when at(?) > 0 (signed) (`blez` at 0xa078).
  Calls `assfail` via direct with a0=sym(sr_desc+120), a1=sym(sr_desc+158), a2=0x0, a3=a3 at entry (arg3) (`j` at 0xa110).
  Calls `longway` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xa114).
- `kmissnxt` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0x9f54, 300 bytes) Inferred.
  At `bltz k0,a114` at 0x9f68, the branch is taken when k0(?) < 0 (signed); it falls through when k0(?) >= 0 (signed) (`bltz` at 0x9f68).
  At `beq at,zero,a004` at 0x9f98, the branch is taken when k0(?) >= at(=[sym(syssegsz)]) (unsigned); it falls through when k0(?) < at(=[sym(syssegsz)]) (unsigned) (`beq` at 0x9f98).
  At `beq at,zero,9fdc` at 0x9fd0, the branch is taken when (k0(?) & 0x4000) == 0; it falls through when (k0(?) & 0x4000) != 0 (`beq` at 0x9fd0).
  At `bgez k0,a114` at 0xa040, the branch is taken when k0(?) >= 0 (signed); it falls through when k0(?) < 0 (signed) (`bgez` at 0xa040).
  At `bltz k0,a114` at 0xa048, the branch is taken when k0(?) < 0 (signed); it falls through when k0(?) >= 0 (signed) (`bltz` at 0xa048).
  At `blez at,a114` at 0xa078, the branch is taken when at(?) <= 0 (signed); it falls through when at(?) > 0 (signed) (`blez` at 0xa078).
- `kvmiss_hit` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa080, 156 bytes) Inferred.
  Range 0xa118 is not reached from the entry.
  Stores 8 bytes from `a0` to sym(_assregs) +0x18; value a0 (`sd` at 0xa0a0).
  Stores 8 bytes from `a1` to sym(_assregs) +0x20; value a1 (`sd` at 0xa0bc).
  Stores 8 bytes from `a2` to sym(_assregs) +0x28; value a2 (`sd` at 0xa0d8).
  Calls `assfail` via direct with a0=sym(sr_desc+120), a1=sym(sr_desc+158), a2=0x0, a3=a3 at entry (arg3) (`j` at 0xa110).
- `update_ust_i` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa11c, 56 bytes) Inferred.
  Returns with v0 = ? at 0xa14c (`jr` at 0xa14c).
  Calls `spl7` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xa124).
  Calls `update_ust` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xa12c).
  Calls `splx` via direct with a0=ret(spl7), a1=?, a2=?, a3=? (`jal` at 0xa138).
- `get_ust_nano` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa154, 48 bytes) Inferred.
  Stores 8 bytes from `at` to a0 (arg0 at entry) +0x0 (`sd` at 0xa180).
  Returns with v0 = [sym(.sdata)+184] at 0xa17c (`jr` at 0xa17c).
- `ust_to_nano` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa184, 44 bytes) Inferred.
  Stores 8 bytes from `at` to a1 (arg1 at entry) +0x0 (`sd` at 0xa1ac).
  Returns with v0 = [sym(.sdata)+184] at 0xa1a8 (`jr` at 0xa1a8).
- `get_ust` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa1b0, 12 bytes) Inferred.
  Stores 8 bytes from `at` to a0 (arg0 at entry) +0x0; value [sym(ust_val)]:8 (`sd` at 0xa1b8).
  Returns with v0 = ? at 0xa1b4 (`jr` at 0xa1b4).
- `get_updated_ust_i` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa1bc, 60 bytes) Inferred.
  Returns with v0 = ? at 0xa1f0 (`jr` at 0xa1f0).
  Calls `spl7` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xa1c4).
  Calls `update_ust` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xa1cc).
  Calls `splx` via direct with a0=ret(spl7), a1=?, a2=?, a3=? (`jal` at 0xa1dc).
- `nano_to_ust` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa1f8, 40 bytes) Inferred.
  Returns with v0 = ? at 0xa218 (`jr` at 0xa218).
- `ust_init` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa220, 32 bytes) Inferred.
  Returns with v0 = 0x50 at 0xa238 (`jr` at 0xa238).
- `update_ust` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa240, 20 bytes) Inferred.
  Stores 8 bytes from `v0` to sym(ust_val) +0x0; value [0xffffffffaff20000]:8 (`sd` at 0xa250).
  Returns with v0 = [0xffffffffaff20000]:8 at 0xa24c (`jr` at 0xa24c).
- `ecc_exception` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa260, 460 bytes) Inferred.
  Stores 8 bytes from `k0` to ? (base unknown) (`sd` at 0xa288).
  Stores 8 bytes from `s0` to ? (base unknown); value s0 (`sd` at 0xa28c).
  Stores 8 bytes from `s1` to ? (base unknown); value s1 (`sd` at 0xa290).
  Stores 8 bytes from `s2` to ? (base unknown); value s2 (`sd` at 0xa294).
  Stores 8 bytes from `s3` to ? (base unknown); value s3 (`sd` at 0xa298).
  Stores 8 bytes from `s4` to ? (base unknown); value s4 (`sd` at 0xa29c).
  Stores 8 bytes from `s5` to ? (base unknown); value s5 (`sd` at 0xa2a0).
  Stores 8 bytes from `s6` to ? (base unknown); value s6 (`sd` at 0xa2a4).
  Stores 8 bytes from `s7` to ? (base unknown); value s7 (`sd` at 0xa2a8).
  Stores 8 bytes from `a0` to ? (base unknown); value a0 (`sd` at 0xa2ac).
  Stores 8 bytes from `a1` to ? (base unknown); value a1 (`sd` at 0xa2b0).
  Stores 8 bytes from `a2` to ? (base unknown); value a2 (`sd` at 0xa2b4).
  Stores 8 bytes from `a3` to ? (base unknown); value a3 (`sd` at 0xa2b8).
  Stores 8 bytes from `a4` to ? (base unknown); value a4 (`sd` at 0xa2bc).
  Stores 8 bytes from `a5` to ? (base unknown); value a5 (`sd` at 0xa2c0).
  Stores 8 bytes from `a6` to ? (base unknown); value a6 (`sd` at 0xa2c4).
  Stores 8 bytes from `a7` to ? (base unknown); value a7 (`sd` at 0xa2c8).
  Stores 8 bytes from `gp` to ? (base unknown); value gp (`sd` at 0xa2cc).
  Stores 8 bytes from `sp` to ? (base unknown); value sp (`sd` at 0xa2d0).
  Stores 8 bytes from `ra` to ? (base unknown); value ra (`sd` at 0xa2d4).
  Stores 8 bytes from `k0` to ? (base unknown) (`sd` at 0xa2fc).
  Stores 8 bytes from `k0` to ? (base unknown) (`sd` at 0xa304).
  Stores 8 bytes from `k0` to ? (base unknown) (`sd` at 0xa30c).
  Stores 8 bytes from `k0` to ? (base unknown) (`sd` at 0xa314).
  Stores 8 bytes from `k0` to ? (base unknown) (`sd` at 0xa318).
  Stores 1 bytes from `k0` to ? (base unknown); value 0x1 (`sb` at 0xa330).
  Stores 8 bytes from `k0` to ? (base unknown) (`sd` at 0xa338).
  Stores 4 bytes from `v0` to ? (base unknown) (`sw` at 0xa340).
  Stores 4 bytes from `v0` to ? (base unknown) (`sw` at 0xa348).
  Stores 4 bytes from `v0` to ? (base unknown) (`sw` at 0xa350).
  Stores 1 bytes from `zero` to ? (base unknown); value 0x0 (`sb` at 0xa41c).
  At `bne k0,zero,a334` at 0xa328, the branch is taken when k0(?) != 0; it falls through when k0(?) == 0 (`bne` at 0xa328).
  At `beq v0,zero,a3a8` at 0xa364, the branch is taken when v0(=ret(ecc_handler)) == 0; it falls through when v0(=ret(ecc_handler)) != 0 (`beq` at 0xa364).
  Calls `tfi_save` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xa2f0).
  Calls `ecc_handler` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xa35c).
  Calls `ecc_panic` via direct with a0=ret(ecc_handler), a1=?, a2=?, a3=? (`jal` at 0xa3a0).
  Calls `tfi_restore` via direct with a0=?, a1=?, a2=?, a3=? (`jal` at 0xa3b8).
- `ULIsystrap_j` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa480, 8 bytes) Inferred.
  Stores 8 bytes from `at` to abs 0xffffffffffffc038 (`sd` at 0xa484).
  Calls `ULIsystrap` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xa480).
- `systrap` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa500, 380 bytes) Inferred.
  Stores 8 bytes from `gp` to [[-0x3fe8]:8+992]:8 +0x240; value gp (`sd` at 0xa518).
  Stores 8 bytes from `sp` to [[-0x3fe8]:8+992]:8 +0x248; value sp (`sd` at 0xa520).
  Stores 8 bytes from `a0` to [[-0x3fe8]:8+992]:8 +0x180; value a0 (`sd` at 0xa528).
  Stores 8 bytes from `a1` to [[-0x3fe8]:8+992]:8 +0x188; value a1 (`sd` at 0xa530).
  Stores 8 bytes from `a2` to [[-0x3fe8]:8+992]:8 +0x190; value a2 (`sd` at 0xa538).
  Stores 8 bytes from `a3` to [[-0x3fe8]:8+992]:8 +0x198; value a3 (`sd` at 0xa540).
  Stores 8 bytes from `a4` to [[-0x3fe8]:8+992]:8 +0x1a0; value a4 (`sd` at 0xa548).
  Stores 8 bytes from `a5` to [[-0x3fe8]:8+992]:8 +0x1a8; value a5 (`sd` at 0xa54c).
  Stores 8 bytes from `a6` to [[-0x3fe8]:8+992]:8 +0x1b0; value a6 (`sd` at 0xa550).
  Stores 8 bytes from `a7` to [[-0x3fe8]:8+992]:8 +0x1b8; value a7 (`sd` at 0xa554).
  Stores 8 bytes from `s0` to [[-0x3fe8]:8+992]:8 +0x1e0; value s0 (`sd` at 0xa55c).
  Stores 8 bytes from `s1` to [[-0x3fe8]:8+992]:8 +0x1e8; value s1 (`sd` at 0xa560).
  Stores 8 bytes from `s2` to [[-0x3fe8]:8+992]:8 +0x1f0; value s2 (`sd` at 0xa564).
  Stores 8 bytes from `s3` to [[-0x3fe8]:8+992]:8 +0x1f8; value s3 (`sd` at 0xa568).
  Stores 8 bytes from `s4` to [[-0x3fe8]:8+992]:8 +0x200; value s4 (`sd` at 0xa56c).
  Stores 8 bytes from `s5` to [[-0x3fe8]:8+992]:8 +0x208; value s5 (`sd` at 0xa570).
  Stores 8 bytes from `s6` to [[-0x3fe8]:8+992]:8 +0x210; value s6 (`sd` at 0xa574).
  Stores 8 bytes from `s7` to [[-0x3fe8]:8+992]:8 +0x218; value s7 (`sd` at 0xa578).
  Stores 8 bytes from `ra` to [[-0x3fe8]:8+992]:8 +0x258; value ra (`sd` at 0xa57c).
  Stores 8 bytes from `v0` to [[-0x3fe8]:8+992]:8 +0x170 (`sd` at 0xa588).
  Stores 8 bytes from `a0` to [[-0x3fe8]:8+992]:8 +0x288 (`sd` at 0xa594).
  Stores 8 bytes from `a0` to [[-0x3fe8]:8+992]:8 +0x2c8 (`sd` at 0xa598).
  Stores 8 bytes from `v1` to [[-0x3fe8]:8+992]:8 +0x178 (`sd` at 0xa59c).
  Stores 8 bytes from `s8` to [[-0x3fe8]:8+992]:8 +0x250; value s8 (`sd` at 0xa5a0).
  Stores 8 bytes from `s0` to [[-0x3fe8]:8+992]:8 +0x260 (`sd` at 0xa5a4).
  Stores 1 bytes from `k1` to abs 0xffffffffffffc04f; value 0x1 (`sb` at 0xa5b8).
  Stores 1 bytes from `zero` to abs 0xffffffffffffc04f; value 0x0 (`sb` at 0xa600).
  At `bne k0,zero,a480` at 0xa504, the branch is taken when k0(=[-0x3fd8]:8) != 0; it falls through when k0(=[-0x3fd8]:8) == 0 (`bne` at 0xa504).
  At `bne v0,zero,a674` at 0xa5e0, the branch is taken when v0(=ret(syscall)) != 0; it falls through when v0(=ret(syscall)) == 0 (`bne` at 0xa5e0).
  Calls `ktimer_switch` via direct with a0=[-0x3fe0]:8, a1=0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xa5a8).
  Calls `syscall` via direct with a0=[[[-0x3fe8]:8+992]:8+368]:8, a1=?, a2=?, a3=? (`jal` at 0xa5c8).
  Calls `ktimer_switch` via direct with a0=[-0x3fe0]:8, a1=0x0, a2=?, a3=? (`jal` at 0xa5ec).
  Calls `_baduk` via direct with a0=[[[-0x3fe8]:8+992]:8+384]:8, a1=[[[-0x3fe8]:8+992]:8+392]:8, a2=[[[-0x3fe8]:8+992]:8+400]:8, a3=[[[-0x3fe8]:8+992]:8+408]:8, a4=[[[-0x3fe8]:8+992]:8+416]:8, a5=[[[-0x3fe8]:8+992]:8+424]:8, a6=[[[-0x3fe8]:8+992]:8+432]:8, a7=[[[-0x3fe8]:8+992]:8+440]:8 (`j` at 0xa66c).
  Calls `exception_exit` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0xa674).
- `VEC_syscall` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa67c, 32 bytes) Inferred.
  Calls `cmn_err` via direct with a0=0x0, a1=sym(sr_desc+184), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xa694).
- `get_fpc_csr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa6a0, 40 bytes) Inferred.
  Returns with v0 = ? at 0xa6c0 (`jr` at 0xa6c0).
- `set_fpc_csr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa6c8, 48 bytes) Inferred.
  Returns with v0 = ? at 0xa6f0 (`jr` at 0xa6f0).
- `get_cpu_irr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa6f8, 12 bytes) Inferred.
  Returns with v0 = ? at 0xa6fc (`jr` at 0xa6fc).
- `get_fpc_irr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa704, 52 bytes) Inferred.
  Stores 4 bytes from `a0` to abs 0xffffffffffffc404; value 0x7 (`sw` at 0xa718).
  Stores 4 bytes from `zero` to abs 0xffffffffffffc404; value 0x0 (`sw` at 0xa728).
  Returns with v0 = ? at 0xa730 (`jr` at 0xa730).
- `reviderror` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa738, 16 bytes) Inferred.
  Returns with v0 = 0x0 at 0xa740 (`jr` at 0xa740).
- `get_cpu_cnf` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa748, 12 bytes) Inferred.
  Returns with v0 = ? at 0xa74c (`jr` at 0xa74c).
- `clear_sline` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa754, 24 bytes) Inferred.
  Returns with v0 = ? at 0xa764 (`jr` at 0xa764).
- `scache_ild` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa76c, 44 bytes) Inferred.
  Stores 2 bytes from `v0` to a1 (arg1 at entry) +0x0 (`sh` at 0xa774).
  Returns with v0 = ? at 0xa790 (`jr` at 0xa790).
- `dLine` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa798, 92 bytes) Inferred.
  Stores 8 bytes from `v0` to a1 (arg1 at entry) +0x0 (`sd` at 0xa7b4).
  Stores 4 bytes from `v0` to ? (base unknown) (`sw` at 0xa7cc).
  Stores 1 bytes from `v0` to ? (base unknown) (`sb` at 0xa7d4).
  At `bne at,zero,a7c4` at 0xa7e4, the branch is taken when a0(?) < a2(=a0+32) (signed); it falls through when a0(?) >= a2(=a0+32) (signed) (`bne` at 0xa7e4).
  Returns with v0 = ? at 0xa7ec (`jr` at 0xa7ec).
- `dCacheSize` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa7f4, 32 bytes) Inferred.
  Returns with v0 = ? at 0xa80c (`jr` at 0xa80c).
- `iLine` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa814, 112 bytes) Inferred.
  Stores 8 bytes from `v0` to a1 (arg1 at entry) +0x0 (`sd` at 0xa830).
  Stores 8 bytes from `v0` to ? (base unknown) (`sd` at 0xa85c).
  Stores 1 bytes from `v0` to ? (base unknown) (`sb` at 0xa864).
  At `bne at,zero,a840` at 0xa874, the branch is taken when a0(?) < a2(=a0+64) (signed); it falls through when a0(?) >= a2(=a0+64) (signed) (`bne` at 0xa874).
  Returns with v0 = ? at 0xa87c (`jr` at 0xa87c).
- `iCacheSize` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa884, 36 bytes) Inferred.
  Returns with v0 = ? at 0xa8a0 (`jr` at 0xa8a0).
- `sLine` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa8a8, 136 bytes) Inferred.
  Stores 8 bytes from `v0` to a1 (arg1 at entry) +0x0 (`sd` at 0xa8c4).
  Stores 4 bytes from `v1` to ? (base unknown) (`sw` at 0xa8ec).
  Stores 4 bytes from `v1` to ? (base unknown) (`sw` at 0xa8f4).
  Stores 2 bytes from `v1` to ? (base unknown) (`sh` at 0xa8fc).
  Stores 4 bytes from `v1` to ? (base unknown) (`sw` at 0xa908).
  Stores 4 bytes from `v1` to ? (base unknown) (`sw` at 0xa910).
  At `bgtz v0,a8e4` at 0xa920, the branch is taken when v0(?) > 0 (signed); it falls through when v0(?) <= 0 (signed) (`bgtz` at 0xa920).
  Returns with v0 = ? at 0xa928 (`jr` at 0xa928).
  Calls `sCacheSize` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xa8cc).
- `sCacheSize` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa930, 32 bytes) Inferred.
  Returns with v0 = ? at 0xa948 (`jr` at 0xa948).
- `bcopyb` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa950, 48 bytes) Inferred.
  Stores 1 bytes from `at` to ? (base unknown) (`sb` at 0xa974).
  At `blez a2,a978` at 0xa950, the branch is taken when a2 <= 0 (signed); it falls through when a2 > 0 (signed) (`blez` at 0xa950).
  At `bne v1,zero,a95c` at 0xa970, the branch is taken when a5(?) < v0(=a2) (signed); it falls through when a5(?) >= v0(=a2) (signed) (`bne` at 0xa970).
  Returns with v0 = a2 at 0xa978 (`jr` at 0xa978).
- `bcopyh` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa980, 100 bytes) Inferred.
  Stores 2 bytes from `a6` to ? (base unknown) (`sh` at 0xa9d8).
  At `bne at,zero,a9a4` at 0xa98c, the branch is taken when (a2 & 0x1) != 0; it falls through when (a2 & 0x1) == 0 (`bne` at 0xa98c).
  At `bne a5,zero,a9a4` at 0xa994, the branch is taken when a5(?) != 0; it falls through when a5(?) == 0 (`bne` at 0xa994).
  At `beq a6,zero,a9ac` at 0xa99c, the branch is taken when a6(?) == 0; it falls through when a6(?) != 0 (`beq` at 0xa99c).
  At `blez a5,a9dc` at 0xa9b8, the branch is taken when a5(?) <= 0 (signed); it falls through when a5(?) > 0 (signed) (`blez` at 0xa9b8).
  At `beq a7,zero,a9c0` at 0xa9d4, the branch is taken when a5(?) >= v0(?) (signed); it falls through when a5(?) < v0(?) (signed) (`beq` at 0xa9d4).
  Returns with v0 = -0x1 at 0xa9a4 (`jr` at 0xa9a4).
  Returns with v0 = a2 at 0xa9dc (`jr` at 0xa9dc).
- `bcopyw` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xa9e4, 104 bytes) Inferred.
  Stores 4 bytes from `a7` to ? (base unknown) (`sw` at 0xaa40).
  At `bne at,zero,aa08` at 0xa9f0, the branch is taken when (a2 & 0x3) != 0; it falls through when (a2 & 0x3) == 0 (`bne` at 0xa9f0).
  At `bne a5,zero,aa08` at 0xa9f8, the branch is taken when a5(?) != 0; it falls through when a5(?) == 0 (`bne` at 0xa9f8).
  At `beq a6,zero,aa10` at 0xaa00, the branch is taken when a6(?) == 0; it falls through when a6(?) != 0 (`beq` at 0xaa00).
  At `blez a5,aa44` at 0xaa20, the branch is taken when a5(?) <= 0 (signed); it falls through when a5(?) > 0 (signed) (`blez` at 0xaa20).
  At `beq t0,zero,aa28` at 0xaa3c, the branch is taken when a5(?) >= v0(?) (signed); it falls through when a5(?) < v0(?) (signed) (`beq` at 0xaa3c).
  Returns with v0 = -0x1 at 0xaa08 (`jr` at 0xaa08).
  Returns with v0 = a2 at 0xaa44 (`jr` at 0xaa44).
- `bcopyd` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xaa4c, 104 bytes) Inferred.
  Stores 8 bytes from `a7` to ? (base unknown) (`sd` at 0xaaa8).
  At `bne at,zero,aa70` at 0xaa58, the branch is taken when (a2 & 0x7) != 0; it falls through when (a2 & 0x7) == 0 (`bne` at 0xaa58).
  At `bne a5,zero,aa70` at 0xaa60, the branch is taken when a5(?) != 0; it falls through when a5(?) == 0 (`bne` at 0xaa60).
  At `beq a6,zero,aa78` at 0xaa68, the branch is taken when a6(?) == 0; it falls through when a6(?) != 0 (`beq` at 0xaa68).
  At `blez a5,aaac` at 0xaa88, the branch is taken when a5(?) <= 0 (signed); it falls through when a5(?) > 0 (signed) (`blez` at 0xaa88).
  At `beq t0,zero,aa90` at 0xaaa4, the branch is taken when a5(?) >= v0(?) (signed); it falls through when a5(?) < v0(?) (signed) (`beq` at 0xaaa4).
  Returns with v0 = -0x1 at 0xaa70 (`jr` at 0xaa70).
  Returns with v0 = a2 at 0xaaac (`jr` at 0xaaac).
- `bcopyn` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xaab4, 136 bytes) Inferred.
  At `beq a3,at,ab0c` at 0xaacc, the branch is taken when a3 == at(=0x1); it falls through when a3 != at(=0x1) (`beq` at 0xaacc).
  At `beq a3,v0,ab1c` at 0xaad4, the branch is taken when a3 == v0(=0x2); it falls through when a3 != v0(=0x2) (`beq` at 0xaad4).
  At `beq a3,a7,ab2c` at 0xaadc, the branch is taken when a3 == a7(=0x4); it falls through when a3 != a7(=0x4) (`beq` at 0xaadc).
  At `beq a3,t0,aafc` at 0xaae4, the branch is taken when a3 == t0(=0x8); it falls through when a3 != t0(=0x8) (`beq` at 0xaae4).
  Returns with v0 = ? at 0xaaf4 (`jr` at 0xaaf4).
  Calls `bcopyd [0xaa4c]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=-0x1, a7=0x4 (`jal` at 0xaafc).
  Calls `bcopyb [0xa950]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=-0x1, a7=0x4 (`jal` at 0xab0c).
  Calls `bcopyh [0xa980]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=-0x1, a7=0x4 (`jal` at 0xab1c).
  Calls `bcopyw [0xa9e4]` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=-0x1, a7=0x4 (`jal` at 0xab2c).
- `pio_bcopyin` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xab3c, 136 bytes) Inferred.
  At `bne at,zero,abbc` at 0xab54, the branch is taken when a1 < a7(=[a0+16]:8) (unsigned); it falls through when a1 >= a7(=[a0+16]:8) (unsigned) (`bne` at 0xab54).
  At `beq v1,zero,abbc` at 0xab6c, the branch is taken when a1 >= v1(=([a0+16]:8 + [a0+24]:8)) (unsigned); it falls through when a1 < v1(=([a0+16]:8 + [a0+24]:8)) (unsigned) (`beq` at 0xab6c).
  At `beq a3,zero,ab88` at 0xab7c, the branch is taken when a3(?) == 0; it falls through when a3(?) != 0 (`beq` at 0xab7c).
  Returns with v0 = ? at 0xabb4 (`jr` at 0xabb4).
  Calls `pio_mapaddr` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?, a7=[a0+16]:8 (`jal` at 0xab88).
  Calls `bcopyn [0xaab4]` via direct with a0=ret(pio_mapaddr), a1=a2 at entry (arg2), a2=?, a3=a4 at entry (arg4) (`jal` at 0xab9c).
- `pio_bcopyout` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xabc4, 136 bytes) Inferred.
  At `bne at,zero,ac44` at 0xabdc, the branch is taken when a1 < a7(=[a0+16]:8) (unsigned); it falls through when a1 >= a7(=[a0+16]:8) (unsigned) (`bne` at 0xabdc).
  At `beq v1,zero,ac44` at 0xabf4, the branch is taken when a1 >= v1(=([a0+16]:8 + [a0+24]:8)) (unsigned); it falls through when a1 < v1(=([a0+16]:8 + [a0+24]:8)) (unsigned) (`beq` at 0xabf4).
  At `beq a3,zero,ac10` at 0xac04, the branch is taken when a3(?) == 0; it falls through when a3(?) != 0 (`beq` at 0xac04).
  Returns with v0 = ? at 0xac3c (`jr` at 0xac3c).
  Calls `pio_mapaddr` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?, a7=[a0+16]:8 (`jal` at 0xac10).
  Calls `bcopyn [0xaab4]` via direct with a0=a2 at entry (arg2), a1=ret(pio_mapaddr), a2=?, a3=a4 at entry (arg4) (`jal` at 0xac24).
- `pio_badaddr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xac4c, 48 bytes) Inferred.
  Returns with v0 = ret(badaddr) at 0xac74 (`jr` at 0xac74).
  Calls `pio_mapaddr` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xac58).
  Calls `badaddr` via direct with a0=ret(pio_mapaddr), a1=a2 at entry (arg2), a2=?, a3=? (`jal` at 0xac64).
- `pio_badaddr_val` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xac7c, 56 bytes) Inferred.
  Returns with v0 = ret(badaddr_val) at 0xacac (`jr` at 0xacac).
  Calls `pio_mapaddr` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xac8c).
  Calls `badaddr_val` via direct with a0=ret(pio_mapaddr), a1=a2 at entry (arg2), a2=a3 at entry (arg3), a3=? (`jal` at 0xac9c).
- `pio_wbadaddr` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xacb4, 48 bytes) Inferred.
  Returns with v0 = ret(wbadaddr) at 0xacdc (`jr` at 0xacdc).
  Calls `pio_mapaddr` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xacc0).
  Calls `wbadaddr` via direct with a0=ret(pio_mapaddr), a1=a2 at entry (arg2), a2=?, a3=? (`jal` at 0xaccc).
- `pio_wbadaddr_val` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xace4, 64 bytes) Inferred.
  Returns with v0 = ret(wbadaddr_val) at 0xad1c (`jr` at 0xad1c).
  Calls `pio_mapaddr` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xacf4).
  Calls `wbadaddr_val` via direct with a0=ret(pio_mapaddr), a1=a2 at entry (arg2), a2=?, a3=? (`jal` at 0xad0c).
- `__dcache_inval` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xad30, 200 bytes) Inferred.
  At `blez a1,aed4` at 0xad30, the branch is taken when a1 <= 0 (signed); it falls through when a1 > 0 (signed) (`blez` at 0xad30).
  At `bne t2,zero,adbc` at 0xad40, the branch is taken when a7(=[-0x39a4]) < a1 (unsigned); it falls through when a7(=[-0x39a4]) >= a1 (unsigned) (`bne` at 0xad40).
  At `beq at,zero,adb0` at 0xad54, the branch is taken when t0(=a0) >= t1(=(a0 + a1)) (unsigned); it falls through when t0(=a0) < t1(=(a0 + a1)) (unsigned) (`beq` at 0xad54).
  At `beq t2,zero,ad80` at 0xad64, the branch is taken when (t0(=a0) & 0x7f) == 0; it falls through when (t0(=a0) & 0x7f) != 0 (`beq` at 0xad64).
  At `beq at,zero,adb0` at 0xad78, the branch is taken when t0(?) >= t1(=(a0 + a1)-128) (unsigned); it falls through when t0(?) < t1(=(a0 + a1)-128) (unsigned) (`beq` at 0xad78).
  At `beq t2,zero,ada0` at 0xad84, the branch is taken when (t1(=(a0 + a1)-128) & 0x7f) == 0; it falls through when (t1(=(a0 + a1)-128) & 0x7f) != 0 (`beq` at 0xad84).
  At `beq at,zero,adb0` at 0xad98, the branch is taken when t0(?) >= t1(?) (unsigned); it falls through when t0(?) < t1(?) (unsigned) (`beq` at 0xad98).
  At `bne at,zero,ada0` at 0xada8, the branch is taken when t0(?) < t1(?) (unsigned); it falls through when t0(?) >= t1(?) (unsigned) (`bne` at 0xada8).
  At `bne at,zero,add8` at 0xade4, the branch is taken when t0(?) < t1(=table(0xa80000001fffff80)) (unsigned); it falls through when t0(?) >= t1(=table(0xa80000001fffff80)) (unsigned) (`bne` at 0xade4).
  Returns with v0 = ? at 0xadb4 (`jr` at 0xadb4).
  Returns with v0 = ? at 0xadf0 (`jr` at 0xadf0).
- `__dcache_wb` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xadf8, 144 bytes) Inferred.
  At `blez a1,aed4` at 0xadf8, the branch is taken when a1 <= 0 (signed); it falls through when a1 > 0 (signed) (`blez` at 0xadf8).
  At `bne t2,zero,ae4c` at 0xae08, the branch is taken when a7(=[-0x39a4]) < a1 (unsigned); it falls through when a7(=[-0x39a4]) >= a1 (unsigned) (`bne` at 0xae08).
  At `beq at,zero,ae40` at 0xae1c, the branch is taken when t0(=a0) >= t1(=(a0 + a1)) (unsigned); it falls through when t0(=a0) < t1(=(a0 + a1)) (unsigned) (`beq` at 0xae1c).
  At `bne at,zero,ae30` at 0xae38, the branch is taken when t0(?) < t1(=(a0 + a1)-128) (unsigned); it falls through when t0(?) >= t1(=(a0 + a1)-128) (unsigned) (`bne` at 0xae38).
  At `bne at,zero,ae68` at 0xae74, the branch is taken when t0(?) < t1(=table(0xa80000001fffff80)) (unsigned); it falls through when t0(?) >= t1(=table(0xa80000001fffff80)) (unsigned) (`bne` at 0xae74).
  Returns with v0 = ? at 0xae44 (`jr` at 0xae44).
  Returns with v0 = ? at 0xae80 (`jr` at 0xae80).
- `__dcache_wb_inval` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xae88, 144 bytes) Inferred.
  At `blez a1,aed4` at 0xae88, the branch is taken when a1 <= 0 (signed); it falls through when a1 > 0 (signed) (`blez` at 0xae88).
  At `bne t2,zero,aedc` at 0xae98, the branch is taken when a7(=[-0x39a4]) < a1 (unsigned); it falls through when a7(=[-0x39a4]) >= a1 (unsigned) (`bne` at 0xae98).
  At `beq at,zero,aed0` at 0xaeac, the branch is taken when t0(=a0) >= t1(=(a0 + a1)) (unsigned); it falls through when t0(=a0) < t1(=(a0 + a1)) (unsigned) (`beq` at 0xaeac).
  At `bne at,zero,aec0` at 0xaec8, the branch is taken when t0(?) < t1(=(a0 + a1)-128) (unsigned); it falls through when t0(?) >= t1(=(a0 + a1)-128) (unsigned) (`bne` at 0xaec8).
  At `bne at,zero,aef8` at 0xaf04, the branch is taken when t0(?) < t1(=table(0xa80000001fffff80)) (unsigned); it falls through when t0(?) >= t1(=table(0xa80000001fffff80)) (unsigned) (`bne` at 0xaf04).
  Returns with v0 = ? at 0xaed4 (`jr` at 0xaed4).
  Returns with v0 = ? at 0xaf10 (`jr` at 0xaf10).
- `__icache_inval` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xaf18, 144 bytes) Inferred.
  At `blez a1,b05c` at 0xaf18, the branch is taken when a1 <= 0 (signed); it falls through when a1 > 0 (signed) (`blez` at 0xaf18).
  At `bne t2,zero,af6c` at 0xaf28, the branch is taken when a7(=[-0x39a4]) < a1 (unsigned); it falls through when a7(=[-0x39a4]) >= a1 (unsigned) (`bne` at 0xaf28).
  At `beq at,zero,af60` at 0xaf3c, the branch is taken when t0(=a0) >= t1(=(a0 + a1)) (unsigned); it falls through when t0(=a0) < t1(=(a0 + a1)) (unsigned) (`beq` at 0xaf3c).
  At `bne at,zero,af50` at 0xaf58, the branch is taken when t0(?) < t1(=(a0 + a1)-128) (unsigned); it falls through when t0(?) >= t1(=(a0 + a1)-128) (unsigned) (`bne` at 0xaf58).
  At `bne at,zero,af88` at 0xaf94, the branch is taken when t0(?) < t1(=table(0xa80000001fffff80)) (unsigned); it falls through when t0(?) >= t1(=table(0xa80000001fffff80)) (unsigned) (`bne` at 0xaf94).
  Returns with v0 = ? at 0xaf64 (`jr` at 0xaf64).
  Returns with v0 = ? at 0xafa0 (`jr` at 0xafa0).
- `__cache_wb_inval` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xafa8, 188 bytes) Inferred.
  At `blez a1,b05c` at 0xafa8, the branch is taken when a1 <= 0 (signed); it falls through when a1 > 0 (signed) (`blez` at 0xafa8).
  At `bne at,zero,afd0` at 0xafc4, the branch is taken when a4(?) < a1 (unsigned); it falls through when a4(?) >= a1 (unsigned) (`bne` at 0xafc4).
  At `beq at,zero,b044` at 0xafdc, the branch is taken when a1 >= a5(?) (unsigned); it falls through when a1 < a5(?) (unsigned) (`beq` at 0xafdc).
  At `bne at,zero,b020` at 0xb014, the branch is taken when a6(=a1) < t2(?) (unsigned); it falls through when a6(=a1) >= t2(?) (unsigned) (`bne` at 0xb014).
  At `bne at,zero,b020` at 0xb03c, the branch is taken when a5(?) < a6(?) (unsigned); it falls through when a5(?) >= a6(?) (unsigned) (`bne` at 0xb03c).
  At `bne at,zero,b044` at 0xb050, the branch is taken when t0(?) < a4(?) (unsigned); it falls through when t0(?) >= a4(?) (unsigned) (`bne` at 0xb050).
  Returns with v0 = ? at 0xb05c (`jr` at 0xb05c).
- `config_cache` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb064, 208 bytes) Inferred.
  Stores 4 bytes from `t2` to sym(picache_size) +0x0 (`sw` at 0xb0bc).
  Stores 4 bytes from `t2` to sym(pdcache_size) +0x0 (`sw` at 0xb0f0).
  Stores 4 bytes from `t2` to sym(scache_linemask) +0x0; value 0x7f (`sw` at 0xb110).
  Returns with v0 = ? at 0xb12c (`jr` at 0xb12c).
- `size_2nd_cache` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb134, 172 bytes) Inferred.
  Range 0xb144 0xb148 is not reached from the entry.
  At `beq at,zero,b14c` at 0xb170, the branch is taken when at(=0x1000000) >= v0(?) (signed); it falls through when at(=0x1000000) < v0(?) (signed) (`beq` at 0xb170).
  At `beq t1,zero,b1d8` at 0xb1bc, the branch is taken when t1(?) == 0; it falls through when t1(?) != 0 (`beq` at 0xb1bc).
  At `bne at,zero,b1a0` at 0xb1d0, the branch is taken when v0(?) < at(=0x1000000) (signed); it falls through when v0(?) >= at(=0x1000000) (signed) (`bne` at 0xb1d0).
  Returns with v0 = ? at 0xb1d8 (`jr` at 0xb1d8).
- `_c_hwb` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb1e0, 96 bytes) Inferred.
  At `bne at,zero,b228` at 0xb1ec, the branch is taken when a0 < t0(=0x1) (unsigned); it falls through when a0 >= t0(=0x1) (unsigned) (`bne` at 0xb1ec).
  At `beq a0,t0,b234` at 0xb1f4, the branch is taken when a0 == t0(=0x1); it falls through when a0 != t0(=0x1) (`beq` at 0xb1f4).
  At `beq a0,t0,b220` at 0xb200, the branch is taken when a0 == t0(=0x3); it falls through when a0 != t0(=0x3) (`beq` at 0xb200).
  Returns with v0 = ? at 0xb218 (`jr` at 0xb218).
- `_c_hwbinv` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb240, 84 bytes) Inferred.
  At `bne at,zero,b280` at 0xb24c, the branch is taken when a0 < t0(=0x1) (unsigned); it falls through when a0 >= t0(=0x1) (unsigned) (`bne` at 0xb24c).
  At `beq a0,t0,b288` at 0xb254, the branch is taken when a0 == t0(=0x1); it falls through when a0 != t0(=0x1) (`beq` at 0xb254).
  At `beq a0,t0,b280` at 0xb260, the branch is taken when a0 == t0(=0x3); it falls through when a0 != t0(=0x3) (`beq` at 0xb260).
  Returns with v0 = ? at 0xb278 (`jr` at 0xb278).
- `_c_hinv` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb294, 76 bytes) Inferred.
  At `bne at,zero,b2c8` at 0xb2a0, the branch is taken when a0 < t0(=0x1) (unsigned); it falls through when a0 >= t0(=0x1) (unsigned) (`bne` at 0xb2a0).
  At `beq a0,t0,b2d4` at 0xb2a8, the branch is taken when a0 == t0(=0x1); it falls through when a0 != t0(=0x1) (`beq` at 0xb2a8).
  Returns with v0 = ? at 0xb2c0 (`jr` at 0xb2c0).
- `_c_ilt_n_ecc` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb2e0, 76 bytes) Inferred.
  Stores 4 bytes from `t0` to a2 (arg2 at entry) +0x0 (`sw` at 0xb308).
  Stores 4 bytes from `t1` to a3 (arg3 at entry) +0x0 (`sw` at 0xb310).
  At `bne at,zero,b314` at 0xb2ec, the branch is taken when a0 < t0(=0x1) (unsigned); it falls through when a0 >= t0(=0x1) (unsigned) (`bne` at 0xb2ec).
  At `beq a0,t0,b320` at 0xb2f4, the branch is taken when a0 == t0(=0x1); it falls through when a0 != t0(=0x1) (`beq` at 0xb2f4).
  Returns with v0 = 0x0 at 0xb30c (`jr` at 0xb30c).
- `_c_ilt` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb32c, 72 bytes) Inferred.
  Stores 4 bytes from `t0` to a2 (arg2 at entry) +0x0 (`sw` at 0xb350).
  At `bne at,zero,b35c` at 0xb338, the branch is taken when a0 < t0(=0x1) (unsigned); it falls through when a0 >= t0(=0x1) (unsigned) (`bne` at 0xb338).
  At `beq a0,t0,b368` at 0xb340, the branch is taken when a0 == t0(=0x1); it falls through when a0 != t0(=0x1) (`beq` at 0xb340).
  Returns with v0 = 0x0 at 0xb354 (`jr` at 0xb354).
- `_c_ist` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb374, 72 bytes) Inferred.
  At `bne at,zero,b3a4` at 0xb388, the branch is taken when a0 < t0(=0x1) (unsigned); it falls through when a0 >= t0(=0x1) (unsigned) (`bne` at 0xb388).
  At `beq a0,t0,b3b0` at 0xb390, the branch is taken when a0 == t0(=0x1); it falls through when a0 != t0(=0x1) (`beq` at 0xb390).
  Returns with v0 = 0x0 at 0xb39c (`jr` at 0xb39c).
  Returns with v0 = 0x0 at 0xb3a8 (`jr` at 0xb3a8).
  Returns with v0 = 0x0 at 0xb3b4 (`jr` at 0xb3b4).
- `getecc` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb3bc, 12 bytes) Inferred.
  Returns with v0 = ? at 0xb3c0 (`jr` at 0xb3c0).
- `setecc` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb3c8, 12 bytes) Inferred.
  Returns with v0 = ? at 0xb3cc (`jr` at 0xb3cc).
- `runcached` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb3d4, 28 bytes) Inferred.
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb3e8).
- `uncached` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb3f0, 28 bytes) Inferred.
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jr` at 0xb404).
- `_munge_decc` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb40c, 24 bytes) Inferred.
  Returns with v0 = ? at 0xb41c (`jr` at 0xb41c).
- `_read_tag` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb424, 88 bytes) Inferred.
  Stores 4 bytes from `t0` to a2 (arg2 at entry) +0x0 (`sw` at 0xb458).
  At `bne at,zero,b464` at 0xb430, the branch is taken when a0 < t0(=0x1) (unsigned); it falls through when a0 >= t0(=0x1) (unsigned) (`bne` at 0xb430).
  At `beq a0,t0,b470` at 0xb438, the branch is taken when a0 == t0(=0x1); it falls through when a0 != t0(=0x1) (`beq` at 0xb438).
  Returns with v0 = 0x0 at 0xb45c (`jr` at 0xb45c).
- `_write_tag` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb47c, 68 bytes) Inferred.
  At `bne at,zero,b4a8` at 0xb48c, the branch is taken when a0 < t0(=0x1) (unsigned); it falls through when a0 >= t0(=0x1) (unsigned) (`bne` at 0xb48c).
  At `beq a0,t0,b4b4` at 0xb494, the branch is taken when a0 == t0(=0x1); it falls through when a0 != t0(=0x1) (`beq` at 0xb494).
  Returns with v0 = ? at 0xb4a0 (`jr` at 0xb4a0).
- `flush_cache` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb4c0, 48 bytes) Inferred.
  Returns with v0 = ret(__cache_wb_inval) at 0xb4e8 (`jr` at 0xb4e8).
  Calls `__cache_wb_inval` via direct with a0=0xa800000020000000, a1=[-0x39a4], a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`jal` at 0xb4d8).
- `cacheOP` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb4f0, 380 bytes) Inferred.
  Range 0xb56c 0xb570 0xb574 0xb578 0xb57c 0xb580 0xb584 0xb588 0xb58c 0xb590 0xb594 0xb598 0xb59c 0xb5a0 0xb5a4 0xb5a8 0xb5ac 0xb5b0 0xb5b4 0xb5b8 0xb5bc 0xb5c0 0xb5c4 0xb5c8 0xb5cc 0xb5d0 0xb5d4 0xb5d8 0xb5dc 0xb5e0 0xb5e4 0xb5e8 0xb5ec 0xb5f0 0xb5f4 0xb5f8 0xb5fc 0xb600 0xb604 0xb608 0xb60c 0xb610 0xb614 0xb618 0xb61c 0xb620 0xb624 0xb628 0xb62c 0xb630 0xb634 0xb638 0xb63c 0xb640 0xb644 0xb648 0xb64c 0xb650 0xb654 0xb658 0xb65c 0xb660 0xb664 0xb668 is not reached from the entry.
  Stores 4 bytes from `v0` to ? (base unknown) (`sw` at 0xb554).
  Stores 4 bytes from `v0` to ? (base unknown) (`sw` at 0xb55c).
  Stores 4 bytes from `v0` to ? (base unknown) (`sw` at 0xb568).
  Returns with v0 = ? at 0xb564 (`jr` at 0xb564).
  Calls `(unknown callee)` via register with a0=a0 at entry (arg0), a1=[a0]:8, a2=0xb550, a3=a3 at entry (arg3) (`jalr` at 0xb548).
- `__prefetch_store` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb66c, 48 bytes) Inferred.
  At `blez a1,b694` at 0xb66c, the branch is taken when a1 <= 0 (signed); it falls through when a1 > 0 (signed) (`blez` at 0xb66c).
  At `bgez a1,b680` at 0xb68c, the branch is taken when a1(?) >= 0 (signed); it falls through when a1(?) < 0 (signed) (`bgez` at 0xb68c).
  Returns with v0 = ? at 0xb694 (`jr` at 0xb694).
- `__prefetch_load` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb69c, 48 bytes) Inferred.
  At `blez a1,b6c4` at 0xb69c, the branch is taken when a1 <= 0 (signed); it falls through when a1 > 0 (signed) (`blez` at 0xb69c).
  At `bgez a1,b6b0` at 0xb6bc, the branch is taken when a1(?) >= 0 (signed); it falls through when a1(?) < 0 (signed) (`bgez` at 0xb6bc).
  Returns with v0 = ? at 0xb6c4 (`jr` at 0xb6c4).
- `sw_cachesynch_patch_insts` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb6cc, 20 bytes) Inferred.
- `cache_sync_bp_start` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb6d8, 8 bytes) Inferred.
- `cache_sync` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb6e0, 236 bytes) Inferred.
  Stores 8 bytes from `t0` to abs 0xffffffffffffc040; value t0 (`sd` at 0xb6e0).
  At `blez a1,b7ac` at 0xb6e4, the branch is taken when a1 <= 0 (signed); it falls through when a1 > 0 (signed) (`blez` at 0xb6e4).
  At `bne at,zero,b6fc` at 0xb6ec, the branch is taken when at(?) != 0; it falls through when at(?) == 0 (`bne` at 0xb6ec).
  At `bne t0,zero,b718` at 0xb708, the branch is taken when t0(=(a0 + a1)-1) != 0; it falls through when t0(=(a0 + a1)-1) == 0 (`bne` at 0xb708).
  At `beq at,zero,b74c` at 0xb740, the branch is taken when a1(?) >= t0(?) (signed); it falls through when a1(?) < t0(?) (signed) (`beq` at 0xb740).
  At `bgez at,b780` at 0xb76c, the branch is taken when at(?) >= 0 (signed); it falls through when at(?) < 0 (signed) (`bgez` at 0xb76c).
  At `bne at,zero,b75c` at 0xb794, the branch is taken when k0(?) < k1(?) (unsigned); it falls through when k0(?) >= k1(?) (unsigned) (`bne` at 0xb794).
  At `bne a1,zero,b718` at 0xb7a4, the branch is taken when a1(?) != 0; it falls through when a1(?) == 0 (`bne` at 0xb7a4).
  Calls `longway` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xb6f4).
  Calls `longway` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xb710).
  Calls `longway` via direct with a0=?, a1=?, a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xb778).
- `sw_cachesynch_op1` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb750, 4 bytes) Inferred.
- `sw_cachesynch_op2` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb754, 8 bytes) Inferred.
- `sw_cachesynch_op4` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb75c, 60 bytes) Inferred.
  At `bgez at,b780` at 0xb76c, the branch is taken when at(?) >= 0 (signed); it falls through when at(?) < 0 (signed) (`bgez` at 0xb76c).
  At `bne at,zero,b75c` at 0xb794, the branch is taken when k0(?) < k1(?) (unsigned); it falls through when k0(?) >= k1(?) (unsigned) (`bne` at 0xb794).
  Calls `longway` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3) (`j` at 0xb778).
- `sw_cachesynch_op3` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb798, 52 bytes) Inferred.
  At `bne a1,zero,b718` at 0xb7a4, the branch is taken when a1(?) != 0; it falls through when a1(?) == 0 (`bne` at 0xb7a4).
- `cache_tag_ecc` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb7cc, 128 bytes) Inferred.
  At `beq a1,a2,b844` at 0xb800, the branch is taken when a1(=sym(sr_desc+232)) == a2(=sym(sr_desc+344)); it falls through when a1(=sym(sr_desc+232)) != a2(=sym(sr_desc+344)) (`beq` at 0xb800).
  At `beq a2,zero,b82c` at 0xb814, the branch is taken when a2(?) == 0; it falls through when a2(?) != 0 (`beq` at 0xb814).
  Returns with v0 = ? at 0xb844 (`jr` at 0xb844).
- `VEC_trap` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb850, 52 bytes) Inferred.
  Calls `trap` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=s0 at entry, a3=a3 at entry (arg3) (`jal` at 0xb86c).
  Calls `exception_exit` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0xb87c).
- `soft_trap` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb850, 52 bytes) Inferred.
  Range 0xb884 0xb888 0xb88c is not reached from the entry.
  Calls `trap` via direct with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=s0 at entry, a3=a3 at entry (arg3) (`jal` at 0xb86c).
  Calls `exception_exit` via direct with a0=?, a1=?, a2=?, a3=? (`j` at 0xb87c).
- `uli_getasids` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb890, 12 bytes) Inferred.
  Returns with v0 = ? at 0xb894 (`jr` at 0xb894).
- `uli_setasids` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb89c, 12 bytes) Inferred.
  Returns with v0 = ? at 0xb8a0 (`jr` at 0xb8a0).
- `uli_eret` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb8a8, 44 bytes) Inferred.
- `spl0` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb8e0, 28 bytes) Inferred.
  Returns with v0 = ? at 0xb8f4 (`jr` at 0xb8f4).
- `spl1` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb8fc, 24 bytes) Inferred.
  Returns with v0 = ? at 0xb90c (`jr` at 0xb90c).
- `spl3` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb8fc, 24 bytes) Inferred.
  Returns with v0 = ? at 0xb90c (`jr` at 0xb90c).
- `spl5` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb8fc, 24 bytes) Inferred.
  Returns with v0 = ? at 0xb90c (`jr` at 0xb90c).
- `spl6` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb8fc, 24 bytes) Inferred.
  Returns with v0 = ? at 0xb90c (`jr` at 0xb90c).
- `splgio0` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb8fc, 24 bytes) Inferred.
  Returns with v0 = ? at 0xb90c (`jr` at 0xb90c).
- `splgio1` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb8fc, 24 bytes) Inferred.
  Returns with v0 = ? at 0xb90c (`jr` at 0xb90c).
- `splgio2` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb8fc, 24 bytes) Inferred.
  Returns with v0 = ? at 0xb90c (`jr` at 0xb90c).
- `splhi` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb8fc, 24 bytes) Inferred.
  Returns with v0 = ? at 0xb90c (`jr` at 0xb90c).
- `splhi_relnet` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb8fc, 24 bytes) Inferred.
  Returns with v0 = ? at 0xb90c (`jr` at 0xb90c).
- `splimp` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb8fc, 24 bytes) Inferred.
  Returns with v0 = ? at 0xb90c (`jr` at 0xb90c).
- `splnet` (`usr/cpu/sysgen/IP30boot/kernel.o`, 0xb8fc, 24 bytes) Inferred.
  Returns with v0 = ? at 0xb90c (`jr` at 0xb90c).

## Skipped routines

Skipped routines from the first 250 targets: `odsy_usb_comp_update_tiles` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `usb_comp_update_tiles` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `odsy_usb_comp_readwrite_register` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `usb_comp_readwrite_register` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `odsy_usb_comp_update_tiles` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `usb_comp_update_tiles` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `odsy_usb_comp_readwrite_register` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `usb_comp_readwrite_register` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `getrand` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `tlbgetrand` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `ackkgclock` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `apsfail` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `bump_leds` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `check_delay_iflush` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `disallowboot` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `dma_mapinit` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g12.md); `dummy_func` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `heart_dcache_inval` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `heart_dcache_wb_inval` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `heart_write_dcache_inval` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `heart_write_dcache_wb_inval` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `stopkgclock` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `vme_init` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `vme_ivec_init` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `wd93_init` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `dcache_wb` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `dcache_wbinval` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `dki_dcache_wb` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `dki_dcache_wbinval` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `dummyret0_func` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `heart_need_flush` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `is_vme_space` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `vme_adapter` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `resetcounter` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `resetcounter_val` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `silence_all_audio` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `silence_bell` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddInt` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddUint` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddIntHot2` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddUintHot2` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicClearInt` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicClearUint` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `bitlock_release_32bit` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicClearInt64` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicClearLong` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicClearUint64` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicClearUlong` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `bitlock_release` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddInt64` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddUint64` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddInt64Hot2` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddUint64Hot2` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `test_and_set_int64` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `test_and_set_long` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `test_and_set_ptr` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `swap_int64` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `swap_long` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `swap_ptr` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `compare_and_swap_int64` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `compare_and_swap_kt` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `compare_and_swap_long` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `compare_and_swap_ptr` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `memmove` in `usr/cpu/sysgen/IP30boot/kernel.o` (skipped: address-based call check resolves 0x78b8 as memcpy and requires _pagecopy at 0x78e4, outside the 12-byte memmove range); `cache_sync_bp_end` in `usr/cpu/sysgen/IP30boot/kernel.o` (skipped: address-based call check resolves 0xb6e0 as cache_sync and requires longway at 0xb778, outside the 112-byte cache_sync_bp_end range).
