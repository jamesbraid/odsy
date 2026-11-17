# Readings: `builds/vpro-patch-4104/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_pmm.o)`

One entry per routine, filed here from the reading batches by binary.

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
