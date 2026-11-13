# Instruction readings from hostfacts

Each entry records selected software behavior from its exact binary range. These inferred software observations do not establish hardware behavior.

- `RecordCreateSet` in `usr/gfx/arch/GENERIC/Xsgi` at 0x102754d0 (n32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/GENERIC/Xsgi`.
  Range: 0x102754d0-0x102755ec (284 bytes).
  It occupies 284 bytes.
  The `lhu` at 0x10275508 loads 2 bytes from a0 (arg0 at entry) +0x2.
  3 such `lhu` accesses load 2 bytes from ?, including `lhu` at 0x1027552c, `lhu` at 0x10275540, `lhu` at 0x10275558.
  The `jalr` at 0x102755c4 calls (unknown callee) with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=?, a6=one of 0x101d2570, 0x1025c820.
  The `blez` branch at 0x102754f0 targets 0x102755d8, is taken when a1 <= 0 (signed), and falls through when a1 > 0 (signed).
  The `beq` branch at 0x10275500 targets 0x1027551c, is taken when a7(?) == 0, and falls through when a7(?) != 0.
  The `beq` branch at 0x10275510 targets 0x1027551c, is taken when a6(=-0x1) >= a7(=[a0+2]:2) (signed), and falls through when a6(=-0x1) < a7(=[a0+2]:2) (signed).
  The `beq` branch at 0x1027551c targets 0x1027555c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x10275534 targets 0x10275540, is taken when a6(?) >= a7(?) (signed), and falls through when a6(?) < a7(?) (signed).
  The `beq` branch at 0x10275548 targets 0x10275554, is taken when a6(?) >= a7(?) (signed), and falls through when a6(?) < a7(?) (signed).
  The `bnel` branch at 0x10275554 targets 0x10275530, is taken when a5(?) != t0(=((a1 << 0x2) + a0)), and falls through when a5(?) == t0(=((a1 << 0x2) + a0)); its branch-likely delay slot `lhu a7,2(a5)` at 0x10275558 runs only when taken and is annulled on fall-through.
  The `bne` branch at 0x10275564 targets 0x10275574, is taken when t2(?) != 0, and falls through when t2(?) == 0.
  The `bne` branch at 0x1027556c targets 0x102755ac, is taken when a5(?) != 0, and falls through when a5(?) == 0.
  The `bne` branch at 0x1027557c targets 0x102755b4, is taken when a5(?) < t1(=(a1 << 0x2)) (signed), and falls through when a5(?) >= t1(=(a1 << 0x2)) (signed).
  The `beq` branch at 0x1027558c targets 0x102755bc, is taken when a2 == 0, and falls through when a2 != 0.
  The `bne` branch at 0x10275594 targets 0x102755a0, is taken when t8(?) != 0, and falls through when t8(?) == 0.
  The `beq` branch at 0x1027559c targets 0x102755bc, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x102755b4 targets 0x10275594, is taken when a2 != 0, and falls through when a2 == 0.
  The `beq` branch at 0x102755dc targets 0x10275588, is taken when 0 >= t1(=(a1 << 0x2)) (signed), and falls through when 0 < t1(=(a1 << 0x2)) (signed).
  The `beq` branch at 0x102755e4 targets 0x102755b4 and is always taken.
  The return at 0x102755a4 has v0 = 0x0.
  The return at 0x102755d0 has v0 = ret(?).
- `_GLupdateLockKey` in `usr/gfx/arch/IGLOO/libgl.so` at 0xec863e4 (o32).
  Evidence grade: inferred.
  Exact binary: `usr/gfx/arch/IGLOO/libgl.so`.
  Range: 0xec863e4-0xec8657c (408 bytes).
  It occupies 408 bytes.
  The `lw` at 0xec8640c loads 4 bytes from abs 0xecde288 (_GLcapsLockMask).
  The `lw` at 0xec86414 loads 4 bytes from abs 0xecde284 (_GLnumLockMask).
  2 such `sh` accesses store 2 bytes to table(0xece8848) +0x0, including `sh` at 0xec86444, `sh` at 0xec86460.
  2 such `sb` accesses store 1 byte to table(0xece884c) +0x0, including `sb` at 0xec86470, `sb` at 0xec86474.
  The `lbu` at 0xec86478 loads 1 byte from table(0xece884d) +0x0.
  The `sb` at 0xec86480 stores 1 byte to table(0xece884d) +0x0.
  The `bne` branch at 0xec863fc targets 0xec86410, is taken when a0(?) != at(=0x4), and falls through when a0(?) == at(=0x4).
  The `beq` branch at 0xec86408 targets 0xec86418 and is always taken.
  The `beq` branch at 0xec86418 targets 0xec86484, is taken when v0(=[one of 0xecde284, 0xecde288]) == 0, and falls through when v0(=[one of 0xecde284, 0xecde288]) != 0.
  The `beq` branch at 0xec86420 targets 0xec86448, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xec86440 targets 0xec86464 and is always taken.
  The `beq` branch at 0xec86464 targets 0xec86474, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0xec8646c targets 0xec86478 and is always taken.
  The return at 0xec86484 has v0 = one of [one of 0xecde284, 0xecde288], table(0xece8848).
  The instructions from 0xec8648c to 0xec86578 are not reached by any path from the entry, and their branches are not listed.

Skipped no routines.
