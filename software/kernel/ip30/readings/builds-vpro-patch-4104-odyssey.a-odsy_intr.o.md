# Readings: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`

One entry per routine, filed here from the reading batches by binary.

## `odsyFlagInterrupt` at `0x11c`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)`.
  Range: 0x11c-0x534 (1048 bytes).
  It occupies 1048 bytes.
  The `ld` at 0x124 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `lh` at 0x138 loads 2 bytes from abs 0xffffffffffffc3a0.
  The `lw` at 0x13c loads 4 bytes from [a0+736]:8 +0x1014.
  The `lw` at 0x140 loads 4 bytes from [a0+736]:8 +0x1034.
  The `lw` at 0x158 loads 4 bytes from ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x10.
  The `sw` at 0x164 stores 4 bytes to ([sym(gfxinfo)]:8 + ([-0x3c60]:2 << 0x5)) +0x10.
  The `sw` at 0x294 stores 4 bytes to ?.
  The `lw` at 0x49c loads 4 bytes from a0 (arg0 at entry) +0x56fc.
  The `sw` at 0x4a8 stores 4 bytes to a0 (arg0 at entry) +0x56fc.
  The `jal` at 0x16c calls odsyLowaterInterrupt with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x19c calls odsyGenlockInterrupt with a0=a0 at entry (arg0), a1=0x40000000, a2=?, a3=?.
  The `jal` at 0x2a8 calls odsy_teardown with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The `jal` at 0x2c8 calls cmn_err with a0=0x5, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x2e4 calls cmn_err with a0=0x5, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x300 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x31c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x338 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x354 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x370 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x38c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x3a8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x3c4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x3e0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x3fc calls cmn_err with a0=0x5, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x418 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x434 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x450 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x46c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x488 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x4c0 calls cmn_err with a0=0x5, a1=sym(.rodata), a2=sym(.rodata), a3=[a0+22268]+1.
  The `jal` at 0x4dc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x4f8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x514 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x160 targets 0x178, is taken when (s1(?) & 0x200) == 0, and falls through when (s1(?) & 0x200) != 0.
  The `bne` branch at 0x180 targets 0x2c0, is taken when (s1(?) & v0(=0x2000000)) != 0, and falls through when (s1(?) & v0(=0x2000000)) == 0.
  The `beq` branch at 0x190 targets 0x1ac, is taken when (s1(?) & v1(=0xffffffff80000000)) == 0, and falls through when (s1(?) & v1(=0xffffffff80000000)) != 0.
  The `bne` branch at 0x1b0 targets 0x2d8, is taken when (s1(?) & a1(=0x40000000)) != 0, and falls through when (s1(?) & a1(=0x40000000)) == 0.
  The `bne` branch at 0x1bc targets 0x2f4, is taken when (s1(?) & at(=0x20000000)) != 0, and falls through when (s1(?) & at(=0x20000000)) == 0.
  The `bne` branch at 0x1c8 targets 0x310, is taken when (s1(?) & v0(=0x10000000)) != 0, and falls through when (s1(?) & v0(=0x10000000)) == 0.
  The `bne` branch at 0x1d4 targets 0x32c, is taken when (s1(?) & v1(=0x8000000)) != 0, and falls through when (s1(?) & v1(=0x8000000)) == 0.
  The `bne` branch at 0x1e0 targets 0x348, is taken when (s1(?) & a1(=0x1000000)) != 0, and falls through when (s1(?) & a1(=0x1000000)) == 0.
  The `bne` branch at 0x1ec targets 0x364, is taken when (s1(?) & at(=0x800000)) != 0, and falls through when (s1(?) & at(=0x800000)) == 0.
  The `bne` branch at 0x1f8 targets 0x380, is taken when (s1(?) & v0(=0x400000)) != 0, and falls through when (s1(?) & v0(=0x400000)) == 0.
  The `bne` branch at 0x204 targets 0x39c, is taken when (s1(?) & v1(=0x200000)) != 0, and falls through when (s1(?) & v1(=0x200000)) == 0.
  The `bne` branch at 0x210 targets 0x3b8, is taken when (s1(?) & a1(=0x100000)) != 0, and falls through when (s1(?) & a1(=0x100000)) == 0.
  The `bne` branch at 0x21c targets 0x3d4, is taken when (s1(?) & at(=0x40000)) != 0, and falls through when (s1(?) & at(=0x40000)) == 0.
  The `bne` branch at 0x22c targets 0x3f0, is taken when (s1(?) & v0(=0x3c000)) != 0, and falls through when (s1(?) & v0(=0x3c000)) == 0.
  The `bne` branch at 0x234 targets 0x40c, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x23c targets 0x428, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x244 targets 0x444, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x24c targets 0x460, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x254 targets 0x47c, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x25c targets 0x498, is taken when a1(?) != 0, and falls through when a1(?) == 0.
  The `bne` branch at 0x264 targets 0x4d0, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `bne` branch at 0x26c targets 0x4ec, is taken when v0(?) != 0, and falls through when v0(?) == 0.
  The `bne` branch at 0x274 targets 0x508, is taken when v1(?) != 0, and falls through when v1(?) == 0.
  The `bne` branch at 0x288 targets 0x2a0, is taken when (a1(?) & at(=0x39f02587)) != 0, and falls through when (a1(?) & at(=0x39f02587)) == 0.
  The `beq` branch at 0x298 targets 0x2b8 and is always taken.
  The `beq` branch at 0x2d0 targets 0x188 and is always taken.
  The `beq` branch at 0x2ec targets 0x1b4 and is always taken.
  The `beq` branch at 0x308 targets 0x1c0 and is always taken.
  The `beq` branch at 0x324 targets 0x1cc and is always taken.
  The `beq` branch at 0x340 targets 0x1d8 and is always taken.
  The `beq` branch at 0x35c targets 0x1e4 and is always taken.
  The `beq` branch at 0x378 targets 0x1f0 and is always taken.
  The `beq` branch at 0x394 targets 0x1fc and is always taken.
  The `beq` branch at 0x3b0 targets 0x208 and is always taken.
  The `beq` branch at 0x3cc targets 0x214 and is always taken.
  The `beq` branch at 0x3e8 targets 0x220 and is always taken.
  The `beq` branch at 0x404 targets 0x230 and is always taken.
  The `beq` branch at 0x420 targets 0x238 and is always taken.
  The `beq` branch at 0x43c targets 0x240 and is always taken.
  The `beq` branch at 0x458 targets 0x248 and is always taken.
  The `beq` branch at 0x474 targets 0x250 and is always taken.
  The `beq` branch at 0x490 targets 0x258 and is always taken.
  The `beq` branch at 0x4a4 targets 0x524, is taken when (s1(?) & 0x8) == 0, and falls through when (s1(?) & 0x8) != 0.
  The `beq` branch at 0x4c8 targets 0x260 and is always taken.
  The `beq` branch at 0x4e4 targets 0x268 and is always taken.
  The `beq` branch at 0x500 targets 0x270 and is always taken.
  The `beq` branch at 0x51c targets 0x278 and is always taken.
  The `beq` branch at 0x52c targets 0x4b8 and is always taken.
  The return at 0x2b8 has v0 = one of ?, ret(odsy_teardown).

- `odsyFlagInterrupt` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)` at 0x11c
  **Inferred.** Reads two status words from the device block at [a0+736] (+0x1014 and +0x1034, at 0x13c and 0x140) and a halfword at 0x138. It loads a word at +0x10 of a base the facts do not resolve (0x158) and stores a word to +0x10 at 0x164 only when bit 0x200 is set in a tested status value. It calls `odsyLowaterInterrupt` at 0x16c with its four arguments passed through, then tests the status word against masks (0x2000000, 0x80000000 and further single bits); `odsyGenlockInterrupt` is called at 0x19c with a1 = 0x40000000 on the path where bits under 0xffffffff80000000 are set. Many further masks lead to 21 `cmn_err` calls (levels 4 and 5), a store at +0x101c at 0x294 and a call to `odsy_teardown` at 0x2a8. The return is either [a0+736] or the result of `odsy_teardown` (return at 0x2b8).
  Reviewed: 2026-11-12

- `odsyGenlockInterrupt` in `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_intr.o)` at 0x5bc
  **Inferred.** Reads from the device block at [a0+736] two words (+0x233e6c at 0x604 and +0x233e64 at 0x634) and a word at a0+0x5690 at 0x61c. Bit 0x1 of the first word (test at 0x60c) selects whether this body runs; the paths then depend on bit 0x2 of that word (test at 0x654), a bit 0x40 test at 0x63c and the value of [a0+292] (tests at 0x648, 0x674, 0x738). When bit 0x2 is set it calls `cmn_err` at 0x668 and `odsy_i2cPLLRegWrite` with a1 = 0x1, 0x2 and 0x6 (0x68c, 0x69c, 0x6ac, a3 = 0x58 on the first); when that bit is clear it calls `cmn_err` at 0x72c and writes the same three register numbers at 0x750, 0x760 and 0x770 (a3 = 0x58 on the first). It also calls `rrmGenlockNotify` at 0x80c, and `odsy_i2cPLLRegWrite` with a1 = 0x0 and 0x7 at 0x868, 0x880, 0x894 and 0x8a8. The return at 0x7d8 is unresolved, the result of `vsema` or the result of `mutex_spinunlock`. Role (from name): reaction to a genlock interrupt; the facts do not identify what each register holds or what a3 = 0x58 means.
  Reviewed: 2026-11-12
