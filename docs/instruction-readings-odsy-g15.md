# Instruction readings from hostfacts

Each entry records selected non-stack accesses, calls with argument slots, conditional branches and return values from the binary build named in its heading. Claims cite instruction addresses. These readings describe software behavior and do not establish hardware behavior.

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
## Skipped routines

Skipped routines from the first 250 targets: `odsy_usb_comp_update_tiles` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `usb_comp_update_tiles` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `odsy_usb_comp_readwrite_register` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `usb_comp_readwrite_register` in `builds/6.5.30-media/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `odsy_usb_comp_update_tiles` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `usb_comp_update_tiles` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `odsy_usb_comp_readwrite_register` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `usb_comp_readwrite_register` in `usr/cpu/sysgen/IP35boot/odyssey.a(odsy_hpipe.o)` (already documented in docs/driver-functions.md); `getrand` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `tlbgetrand` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `ackkgclock` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `apsfail` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `bump_leds` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `check_delay_iflush` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `disallowboot` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `dma_mapinit` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g12.md); `dummy_func` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `heart_dcache_inval` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `heart_dcache_wb_inval` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `heart_write_dcache_inval` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `heart_write_dcache_wb_inval` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `stopkgclock` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `vme_init` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `vme_ivec_init` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `wd93_init` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `dcache_wb` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `dcache_wbinval` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `dki_dcache_wb` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `dki_dcache_wbinval` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `dummyret0_func` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `heart_need_flush` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `is_vme_space` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `vme_adapter` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `resetcounter` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `resetcounter_val` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `silence_all_audio` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `silence_bell` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddInt` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddUint` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddIntHot2` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddUintHot2` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicClearInt` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicClearUint` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `bitlock_release_32bit` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicClearInt64` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicClearLong` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicClearUint64` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicClearUlong` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `bitlock_release` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddInt64` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddUint64` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddInt64Hot2` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `atomicAddUint64Hot2` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `test_and_set_int64` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `test_and_set_long` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `test_and_set_ptr` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `swap_int64` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `swap_long` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `swap_ptr` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `compare_and_swap_int64` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `compare_and_swap_kt` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `compare_and_swap_long` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `compare_and_swap_ptr` in `usr/cpu/sysgen/IP30boot/kernel.o` (already documented in docs/instruction-readings-odsy-g14.md); `memmove` in `usr/cpu/sysgen/IP30boot/kernel.o` (skipped: address-based call check resolves 0x78b8 as memcpy and requires _pagecopy at 0x78e4, outside the 12-byte memmove range); `cache_sync_bp_end` in `usr/cpu/sysgen/IP30boot/kernel.o` (skipped: address-based call check resolves 0xb6e0 as cache_sync and requires longway at 0xb778, outside the 112-byte cache_sync_bp_end range).
