# Readings: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`

One entry per routine, filed here from the reading batches by binary.

- `OdsyInitCSet` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0x0-0x28 (40 bytes).
  It occupies 40 bytes.
  The `sw` at 0x0 stores 4 bytes to a0 (arg0 at entry) +0x20.
  The `sw` at 0x4 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sw` at 0x8 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `sd` at 0x18 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0x14 calls OdsyInitCSetCursor with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x20 has v0 = ret(OdsyInitCSetCursor).

- `OdsyDestroyCSet` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0x28 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0x28-0x130 (264 bytes).
  It occupies 264 bytes.
  The `lw` at 0x28 loads 4 bytes from a0 (arg0 at entry) +0x20.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x3c, `lw` at 0x94.
  The `ld` at 0x50 loads 8 bytes from a0 (arg0 at entry) +0x0.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0x90, `ld` at 0xa4, `ld` at 0xcc.
  The `jal` at 0x7c calls kmem_free with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x8c calls kmem_free with a0=?, a1=0x20, a2=?, a3=?.
  The `jalr` at 0xc4 calls (unknown callee) with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x118 calls OdsyInitCSet with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?.
  The `blez` branch at 0x54 targets 0x108, is taken when at(=[a0+16]) <= 0 (signed), and falls through when at(=[a0+16]) > 0 (signed).
  The `beq` branch at 0x74 targets 0xa4 and is always taken.
  The `beq` branch at 0x9c targets 0xfc, is taken when s2(?) >= at(=[a0+16]) (signed), and falls through when s2(?) < at(=[a0+16]) (signed).
  The `beq` branch at 0xac targets 0x84, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `blez` branch at 0xb4 targets 0x7c, is taken when s4(?) <= 0 (signed), and falls through when s4(?) > 0 (signed).
  The `beq` branch at 0xbc targets 0xdc and is always taken.
  The `beq` branch at 0xd4 targets 0x7c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xe4 targets 0xd0, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xec targets 0xd4, is taken when s0(=a1) == 0, and falls through when s0(=a1) != 0.
  The `beq` branch at 0xf4 targets 0xc4 and is always taken.
  The return at 0x128 has v0 = ret(OdsyInitCSet).

- `OdsyInitCSetCursor` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0x130 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0x130-0x144 (20 bytes).
  It occupies 20 bytes.
  The `sw` at 0x130 stores 4 bytes to a0 (arg0 at entry) +0x1c.
  The `sw` at 0x134 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `ld` at 0x138 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sd` at 0x140 stores 8 bytes to a0 (arg0 at entry) +0x8.
  The return at 0x13c has v0 = ?.

- `OdsyNextCSetElem` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0x144 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0x144-0x234 (240 bytes).
  It occupies 240 bytes.
  The `ld` at 0x144 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `lw` at 0x154 loads 4 bytes from a0 (arg0 at entry) +0x1c.
  The `lw` at 0x160 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `lw` at 0x16c loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0x170 loads 4 bytes from a0 (arg0 at entry) +0x18.
  5 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x18, including `sw` at 0x188, `sw` at 0x1c0, `sw` at 0x1c4.
  The `lw` at 0x18c loads 4 bytes from ?.
  5 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1a0, `ld` at 0x1ac, `ld` at 0x1cc.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x1c8, `ld` at 0x214.
  3 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x8, including `sd` at 0x1d4, `sd` at 0x210, `sd` at 0x230.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x1c, including `sw` at 0x1d8, `sw` at 0x1e4.
  The `beq` branch at 0x14c targets 0x1e4, is taken when v0(=[a0+8]:8) == 0, and falls through when v0(=[a0+8]:8) != 0.
  The `bne` branch at 0x158 targets 0x1e4, is taken when at(=[a0+28]) != 0, and falls through when at(=[a0+28]) == 0.
  The `beq` branch at 0x164 targets 0x1e4, is taken when v1(=[a0+20]) == 0, and falls through when v1(=[a0+20]) != 0.
  The `beq` branch at 0x190 targets 0x228, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x198 targets 0x204, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x1b0 targets 0x1f4, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x1bc targets 0x1dc, is taken when v1(?) != a5(?), and falls through when v1(?) == a5(?).
  The `bne` branch at 0x1d0 targets 0x1dc, is taken when a2(=[a0]:8) != a1(?), and falls through when a2(=[a0]:8) == a1(?).
  The `bne` branch at 0x1fc targets 0x1a0, is taken when a3(?) < a5(?) (signed), and falls through when a3(?) >= a5(?) (signed).
  The `bne` branch at 0x218 targets 0x18c, is taken when v1(=[a0]:8) != v0(?), and falls through when v1(=[a0]:8) == v0(?).
  The `beq` branch at 0x22c targets 0x214 and is always taken.
  The return at 0x1dc has v0 = ?.
  The return at 0x1ec has v0 = 0x0.
  The return at 0x220 has v0 = ?.

- `OdsyFindMatchingCSetElem` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0x234 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0x234-0x35c (296 bytes).
  It occupies 296 bytes.
  The `lw` at 0x23c loads 4 bytes from a0 (arg0 at entry) +0x20.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x26c, `lw` at 0x29c.
  The `ld` at 0x278 loads 8 bytes from a0 (arg0 at entry) +0x0.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2a8, `ld` at 0x2c8, `ld` at 0x2e4.
  The `lw` at 0x2ac loads 4 bytes from ?.
  The `jalr` at 0x2cc calls (unknown callee) with a0=?, a1=a1 at entry (arg1), a2=?, a3=?.
  The `beq` branch at 0x254 targets 0x354, is taken when a5(=[a0+32]) == 0, and falls through when a5(=[a0+32]) != 0.
  The `blez` branch at 0x27c targets 0x304, is taken when v0(=[a0+16]) <= 0 (signed), and falls through when v0(=[a0+16]) > 0 (signed).
  The `beq` branch at 0x294 targets 0x2ac and is always taken.
  The `beq` branch at 0x2a4 targets 0x304, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x2b4 targets 0x2a0, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `blez` branch at 0x2bc targets 0x2a4, is taken when s5(?) <= 0 (signed), and falls through when s5(?) > 0 (signed).
  The `beq` branch at 0x2c4 targets 0x2e8 and is always taken.
  The `beq` branch at 0x2d4 targets 0x334, is taken when v0(=ret(?)) == 0, and falls through when v0(=ret(?)) != 0.
  The `beq` branch at 0x2dc targets 0x29c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x2f4 targets 0x2d8, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x2fc targets 0x2cc and is always taken.
  The `beq` branch at 0x34c targets 0x320 and is always taken.
  The `beq` branch at 0x354 targets 0x324 and is always taken.
  The return at 0x32c has v0 = one of ?, 0x0.

- `NewChunkNode` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0x35c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0x35c-0x3a0 (68 bytes).
  It occupies 68 bytes.
  The `jal` at 0x368 calls kmem_alloc with a0=0x20, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x38c calls bzero with a0=ret(kmem_alloc), a1=0x20, a2=?, a3=?.
  The `bne` branch at 0x374 targets 0x388, is taken when v0(=ret(kmem_alloc)) != 0, and falls through when v0(=ret(kmem_alloc)) == 0.
  The `beq` branch at 0x398 targets 0x380 and is always taken.
  The return at 0x380 has v0 = one of 0x0, ret(kmem_alloc).

- `OdsyAllocSpecificCSetId` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0x3a0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0x3a0-0x56c (460 bytes).
  It occupies 460 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x3ac, `lw` at 0x4c8.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x3dc, `lw` at 0x4b4.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x410, `ld` at 0x490, `ld` at 0x49c.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x438, `ld` at 0x44c.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x43c, `lw` at 0x460.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x45c, `sd` at 0x52c.
  The `sw` at 0x468 stores 4 bytes to ?.
  The `lw` at 0x470 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `sw` at 0x47c stores 4 bytes to a0 (arg0 at entry) +0x14.
  2 such `sd` accesses store 8 bytes to ret(NewChunkNode) +0x10, including `sd` at 0x48c, `sd` at 0x4e8.
  The `ld` at 0x494 loads 8 bytes from [a0]:8 +0x18.
  2 such `sd` accesses store 8 bytes to ret(NewChunkNode) +0x18, including `sd` at 0x498, `sd` at 0x4e4.
  The `sd` at 0x4a0 stores 8 bytes to [a0]:8 +0x18.
  The `ld` at 0x4a4 loads 8 bytes from ret(NewChunkNode) +0x18.
  The `sd` at 0x4a8 stores 8 bytes to [ret(NewChunkNode)+24]:8 +0x10.
  The `sw` at 0x4ac stores 4 bytes to ret(NewChunkNode) +0x8.
  The `sw` at 0x4c0 stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sd` at 0x4f0 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0x4c4 calls NewChunkNode with a0=[a0+32], a1=?, a2=?, a3=?.
  The `jal` at 0x524 calls kmem_alloc with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x55c calls bzero with a0=ret(kmem_alloc), a1=?, a2=?, a3=?.
  The `beq` branch at 0x3d4 targets 0x548, is taken when at(=[a0+32]) == 0, and falls through when at(=[a0+32]) != 0.
  The `bne` branch at 0x3f4 targets 0x410, is taken when s2(?) < v0(=[a0+16]) (signed), and falls through when s2(?) >= v0(=[a0+16]) (signed).
  The `blez` branch at 0x400 targets 0x410, is taken when s4(?) <= 0 (signed), and falls through when s4(?) > 0 (signed).
  The `beq` branch at 0x408 targets 0x4c4 and is always taken.
  The `blez` branch at 0x41c targets 0x43c, is taken when s2(?) <= 0 (signed), and falls through when s2(?) > 0 (signed).
  The `bne` branch at 0x434 targets 0x42c, is taken when v0(?) < s2(?) (signed), and falls through when v0(?) >= s2(?) (signed).
  The `beq` branch at 0x440 targets 0x510, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x4bc targets 0x410, is taken when s1(?) >= s4(?) (signed), and falls through when s1(?) < s4(?) (signed).
  The `beq` branch at 0x4cc targets 0x4f4, is taken when v0(=ret(NewChunkNode)) == 0, and falls through when v0(=ret(NewChunkNode)) != 0.
  The `bne` branch at 0x4dc targets 0x48c, is taken when a0(=[a0]:8) != 0, and falls through when a0(=[a0]:8) == 0.
  The `beq` branch at 0x4ec targets 0x4ac and is always taken.
  The `beq` branch at 0x508 targets 0x484 and is always taken.
  The `bne` branch at 0x530 targets 0x558, is taken when v0(=ret(kmem_alloc)) != 0, and falls through when v0(=ret(kmem_alloc)) == 0.
  The `beq` branch at 0x540 targets 0x484 and is always taken.
  The `beq` branch at 0x550 targets 0x484 and is always taken.
  The `beq` branch at 0x564 targets 0x448 and is always taken.
  The return at 0x484 has v0 = one of a1, -0x1.

- `OdsyAllocCSetId` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0x56c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0x56c-0x7cc (608 bytes).
  It occupies 608 bytes.
  The `lw` at 0x574 loads 4 bytes from a0 (arg0 at entry) +0x20.
  4 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x10, including `lw` at 0x590, `lw` at 0x5c8, `lw` at 0x624.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x5a8, `ld` at 0x6e0, `ld` at 0x708.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x5d8, `ld` at 0x5fc, `ld` at 0x608.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x5dc, `lw` at 0x63c.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x630, `sd` at 0x754.
  The `sw` at 0x648 stores 4 bytes to ?.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x14, including `lw` at 0x650, `lw` at 0x6e4.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x14, including `sw` at 0x65c, `sw` at 0x6f4.
  The `sd` at 0x6bc stores 8 bytes to ret(NewChunkNode) +0x0.
  The `sw` at 0x6d8 stores 4 bytes to ret(NewChunkNode) +0x8.
  The `sw` at 0x6ec stores 4 bytes to a0 (arg0 at entry) +0x10.
  2 such `sd` accesses store 8 bytes to ret(NewChunkNode) +0x10, including `sd` at 0x704, `sd` at 0x79c.
  The `ld` at 0x70c loads 8 bytes from [a0]:8 +0x18.
  2 such `sd` accesses store 8 bytes to ret(NewChunkNode) +0x18, including `sd` at 0x710, `sd` at 0x798.
  The `sd` at 0x718 stores 8 bytes to [a0]:8 +0x18.
  The `ld` at 0x71c loads 8 bytes from ret(NewChunkNode) +0x18.
  The `sd` at 0x720 stores 8 bytes to [ret(NewChunkNode)+24]:8 +0x10.
  The `ld` at 0x72c loads 8 bytes from ret(NewChunkNode) +0x0.
  The `sd` at 0x734 stores 8 bytes to [ret(NewChunkNode)]:8 +0x0.
  The `sd` at 0x7a4 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0x670 calls NewChunkNode with a0=[a0+32], a1=?, a2=?, a3=?.
  The `jal` at 0x6b4 calls kmem_alloc with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x6cc calls bzero with a0=ret(kmem_alloc), a1=?, a2=?, a3=?.
  The `jal` at 0x748 calls kmem_alloc with a0=?, a1=0x0, a2=?, a3=?.
  The `jal` at 0x75c calls bzero with a0=ret(kmem_alloc), a1=?, a2=?, a3=?.
  The `jal` at 0x780 calls kmem_free with a0=ret(NewChunkNode), a1=0x20, a2=?, a3=?.
  The `beq` branch at 0x584 targets 0x76c, is taken when s1(=[a0+32]) == 0, and falls through when s1(=[a0+32]) != 0.
  The `blez` branch at 0x5b0 targets 0x66c, is taken when a0(=[a0+16]) <= 0 (signed), and falls through when a0(=[a0+16]) > 0 (signed).
  The `beq` branch at 0x5c0 targets 0x5dc and is always taken.
  The `beq` branch at 0x5d4 targets 0x66c, is taken when s4(?) >= a0(=[a0+16]) (signed), and falls through when s4(?) < a0(=[a0+16]) (signed).
  The `beq` branch at 0x5e4 targets 0x5cc, is taken when v0(?) == s3(?), and falls through when v0(?) != s3(?).
  The `beq` branch at 0x5ec targets 0x744, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `blez` branch at 0x5f4 targets 0x5c8, is taken when s3(?) <= 0 (signed), and falls through when s3(?) > 0 (signed).
  The `beq` branch at 0x610 targets 0x628, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x618 targets 0x600, is taken when a2(?) != 0, and falls through when a2(?) == 0.
  The `beq` branch at 0x620 targets 0x5cc and is always taken.
  The `bne` branch at 0x688 targets 0x6a4, is taken when v0(=ret(NewChunkNode)) != 0, and falls through when v0(=ret(NewChunkNode)) == 0.
  The `beq` branch at 0x69c targets 0x664 and is always taken.
  The `beq` branch at 0x6c0 targets 0x778, is taken when v0(=ret(kmem_alloc)) == 0, and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` branch at 0x6fc targets 0x798, is taken when v0(=[a0]:8) == 0, and falls through when v0(=[a0]:8) != 0.
  The `beq` branch at 0x73c targets 0x664 and is always taken.
  The `beq` branch at 0x750 targets 0x7a8, is taken when v0(=ret(kmem_alloc)) == 0, and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` branch at 0x764 targets 0x5f4 and is always taken.
  The `beq` branch at 0x770 targets 0x664 and is always taken.
  The `beq` branch at 0x790 targets 0x664 and is always taken.
  The `beq` branch at 0x7a0 targets 0x724 and is always taken.
  The `beq` branch at 0x7c4 targets 0x664 and is always taken.
  The return at 0x664 has v0 = one of ?, -0x1, [a0+20].

- `OdsyDeallocCSetId` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0x7cc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0x7cc-0x870 (164 bytes).
  It occupies 164 bytes.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x20, including `lw` at 0x7cc, `lw` at 0x84c.
  The `ld` at 0x7e8 loads 8 bytes from a0 (arg0 at entry) +0x0.
  3 such `ld` accesses load 8 bytes from ?, including `ld` at 0x7f8, `ld` at 0x808, `ld` at 0x858.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x818, `sd` at 0x864.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x81c, `lw` at 0x834.
  The `sw` at 0x824 stores 4 bytes to ?.
  The `lw` at 0x828 loads 4 bytes from a0 (arg0 at entry) +0x14.
  The `sw` at 0x830 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `jal` at 0x85c calls kmem_free with a0=?, a1=?, a2=?, a3=0x1, a5=a0 at entry (arg0), a6=[a0+32].
  The `blez` branch at 0x7e4 targets 0x7fc, is taken when a4(?) <= 0 (signed), and falls through when a4(?) > 0 (signed).
  The `bne` branch at 0x7f4 targets 0x7ec, is taken when a3(?) < a4(?) (signed), and falls through when a3(?) >= a4(?) (signed).
  The `beq` branch at 0x838 targets 0x84c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x868 targets 0x840 and is always taken.
  The return at 0x844 has v0 = one of ?, ret(kmem_free).

- `OdsyLookupCSetId` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0x870 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0x870-0x968 (248 bytes).
  It occupies 248 bytes.
  The `lw` at 0x870 loads 4 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x884 loads 8 bytes from a0 (arg0 at entry) +0x0.
  7 such `ld` accesses load 8 bytes from ?, including `ld` at 0x894, `ld` at 0x8b0, `ld` at 0x8d4.
  The `beq` branch at 0x878 targets 0x95c, is taken when a5(=[a0+32]) == 0, and falls through when a5(=[a0+32]) != 0.
  The `blez` branch at 0x880 targets 0x918, is taken when a6(?) <= 0 (signed), and falls through when a6(?) > 0 (signed).
  The `beq` branch at 0x888 targets 0x94c, is taken when v0(=[a0]:8) == 0, and falls through when v0(=[a0]:8) != 0.
  The `beq` branch at 0x8a0 targets 0x918, is taken when a4(?) >= a6(?) (signed), and falls through when a4(?) < a6(?) (signed).
  The `beq` branch at 0x8a8 targets 0x918, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x8c4 targets 0x918, is taken when a4(?) >= a6(?) (signed), and falls through when a4(?) < a6(?) (signed).
  The `beq` branch at 0x8cc targets 0x918, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x8d8 targets 0x918, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `beq` branch at 0x8e0 targets 0x918, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x8f4 targets 0x918, is taken when a2(?) == 0, and falls through when a2(?) != 0.
  The `beq` branch at 0x8fc targets 0x918, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x908 targets 0x918, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `bne` branch at 0x910 targets 0x894, is taken when a0(?) != 0, and falls through when a0(?) == 0.
  The `beq` branch at 0x918 targets 0x94c, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0x930 targets 0x954, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The return at 0x944 has v0 = ?.
  The return at 0x94c has v0 = 0x0.
  The return at 0x954 has v0 = 0x0.
  The return at 0x960 has v0 = 0x0.

- `OdsyInit32kSlotMask` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0x968 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0x968-0x9a0 (56 bytes).
  It occupies 56 bytes.
  The `sw` at 0x984 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sd` at 0x990 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0x97c calls bzero with a0=a0 at entry (arg0), a1=0x1010, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x998 has v0 = ret(bzero).

- `OdsyAlloc32kSlot` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0x9a0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0x9a0-0xad8 (312 bytes).
  It occupies 312 bytes.
  4 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x9a0, `ld` at 0xa30, `ld` at 0xa5c.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x8, including `lw` at 0x9c8, `lw` at 0xa80.
  The `ld` at 0x9e8 loads 8 bytes from (([a0+8] << 0x3) + a0) +0x10.
  The `sd` at 0xa20 stores 8 bytes to (([a0+8] << 0x3) + a0) +0x10.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `sw` at 0xa94, `sw` at 0xab8.
  The `ld` at 0xaa0 loads 8 bytes from (([a0+8]+1 << 0x3) + a0) +0x10.
  The `ld` at 0xac4 loads 8 bytes from ?.
  The `jal` at 0x9bc calls psema with a0=[a0]:8, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xa40 calls vsema with a0=[a0]:8, a1=?, a2=?, a3=[(([a0+8] << 0x3) + a0)+16]:8, a5=(([a0+8] << 0x3) + a0).
  The `jal` at 0xa6c calls vsema with a0=[a0]:8, a1=?, a2=?, a3=?, a4=[a0+8].
  The `beq` branch at 0x9ac targets 0x9c8, is taken when v0(=[a0]:8) == 0, and falls through when v0(=[a0]:8) != 0.
  The `beq` branch at 0x9d0 targets 0xa5c, is taken when a4(=[a0+8]) >= 0x200 (signed), and falls through when a4(=[a0+8]) < 0x200 (signed).
  The `bltz` branch at 0x9d8 targets 0xa5c, is taken when a4(=[a0+8]) < 0 (signed), and falls through when a4(=[a0+8]) >= 0 (signed).
  The `beq` branch at 0x9f4 targets 0xa18, is taken when (a3(=[(([a0+8] << 0x3) + a0)+16]:8) & 0x1) == 0, and falls through when (a3(=[(([a0+8] << 0x3) + a0)+16]:8) & 0x1) != 0.
  The `beq` branch at 0xa04 targets 0xa18, is taken when (a3(=[(([a0+8] << 0x3) + a0)+16]:8) & a0(?)) == 0, and falls through when (a3(=[(([a0+8] << 0x3) + a0)+16]:8) & a0(?)) != 0.
  The `bne` branch at 0xa10 targets 0x9fc, is taken when v0(?) < 0x40 (signed), and falls through when v0(?) >= 0x40 (signed).
  The `beq` branch at 0xa28 targets 0xa80, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `beq` branch at 0xa34 targets 0xa4c, is taken when v0(=[a0]:8) == 0, and falls through when v0(=[a0]:8) != 0.
  The `beq` branch at 0xa60 targets 0xa78, is taken when v0(=[a0]:8) == 0, and falls through when v0(=[a0]:8) != 0.
  The `beq` branch at 0xa78 targets 0xa50 and is always taken.
  The `beq` branch at 0xa98 targets 0xa30, is taken when a4(=[a0+8]+1) >= 0x200 (signed), and falls through when a4(=[a0+8]+1) < 0x200 (signed).
  The `bne` branch at 0xaa4 targets 0xa30, is taken when at(=[(([a0+8]+1 << 0x3) + a0)+16]:8) != v0(=-0x1), and falls through when at(=[(([a0+8]+1 << 0x3) + a0)+16]:8) == v0(=-0x1).
  The `beq` branch at 0xabc targets 0xad0, is taken when a4(?) >= 0x200 (signed), and falls through when a4(?) < 0x200 (signed).
  The `beq` branch at 0xac8 targets 0xab0, is taken when a1(?) == v0(=-0x1), and falls through when a1(?) != v0(=-0x1).
  The `beq` branch at 0xad0 targets 0xa34 and is always taken.
  The return at 0xa54 has v0 = one of ?, -0x1.

- `OdsyFree32kSlot` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0xad8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0xad8-0xbc8 (240 bytes).
  It occupies 240 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0xb04, `ld` at 0xb60.
  The `ld` at 0xb34 loads 8 bytes from ?.
  The `sd` at 0xb40 stores 8 bytes to ?.
  The `lw` at 0xb44 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0xb5c stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `jal` at 0xb14 calls psema with a0=[a0]:8, a1=0x19, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xb70 calls vsema with a0=[a0]:8, a1=?, a2=?, a3=?.
  The `jal` at 0xb94 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0xbb8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xae8 targets 0xb84, is taken when a0 == 0, and falls through when a0 != 0.
  The `beq` branch at 0xafc targets 0xba4, is taken when at(?) >= 0x200 (unsigned), and falls through when at(?) < 0x200 (unsigned).
  The `beq` branch at 0xb08 targets 0xb24, is taken when a0(=[a0]:8) == 0, and falls through when a0(=[a0]:8) != 0.
  The `beq` branch at 0xb4c targets 0xb60, is taken when v0(?) >= v1(=[a0+8]) (signed), and falls through when v0(?) < v1(=[a0+8]) (signed).
  The `beq` branch at 0xb64 targets 0xb7c, is taken when a0(=[a0]:8) == 0, and falls through when a0(=[a0]:8) != 0.
  The `beq` branch at 0xb9c targets 0xb7c and is always taken.
  The `beq` branch at 0xbc0 targets 0xb7c and is always taken.
  The return at 0xb7c has v0 = one of ?, ret(vsema), ret(cmn_err).

- `odsyHashAlloc` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0xbc8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0xbc8-0xc38 (112 bytes).
  It occupies 112 bytes.
  The `sw` at 0xc00 stores 4 bytes to ret(kmem_alloc) +0x0.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0xc20, `sd` at 0xc28.
  The `jal` at 0xbe8 calls kmem_alloc with a0=?, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0xbf4 targets 0xc2c, is taken when v0(=ret(kmem_alloc)) == 0, and falls through when v0(=ret(kmem_alloc)) != 0.
  The `blez` branch at 0xbfc targets 0xc2c, is taken when s0(=a0) <= 0 (signed), and falls through when s0(=a0) > 0 (signed).
  The `bne` branch at 0xc24 targets 0xc04, is taken when a0(?) < s0(=a0) (signed), and falls through when a0(?) >= s0(=a0) (signed).
  The return at 0xc30 has v0 = ret(kmem_alloc).

- `odsyHashDealloc` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0xc38 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0xc38-0xc64 (44 bytes).
  It occupies 44 bytes.
  The `lw` at 0xc38 loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `jal` at 0xc50 calls kmem_free with a0=a0 at entry (arg0), a1=?, a2=[a0], a3=a3 at entry (arg3).
  The return at 0xc5c has v0 = ret(kmem_free).

- `odsyHashLookup` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0xc64 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0xc64-0xcb0 (76 bytes).
  It occupies 76 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0xc74, `ld` at 0xc90.
  The `lw` at 0xc84 loads 4 bytes from ?.
  The `beq` branch at 0xc7c targets 0xc9c, is taken when v0(?) == a5(?), and falls through when v0(?) != a5(?).
  The `beq` branch at 0xc88 targets 0xca8, is taken when v1(?) == a2, and falls through when v1(?) != a2.
  The `bne` branch at 0xc94 targets 0xc84, is taken when v0(?) != a5(?), and falls through when v0(?) == a5(?).
  The return at 0xca0 has v0 = 0x0.
  The return at 0xca8 has v0 = ?.

- `odsyHashInsert` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0xcb0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0xcb0-0xce0 (48 bytes).
  It occupies 48 bytes.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0xcc0, `ld` at 0xcc8.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0xcc4, `sd` at 0xcdc.
  The `sd` at 0xcd0 stores 8 bytes to a2 (arg2 at entry) +0x8.
  The `sd` at 0xcd4 stores 8 bytes to a2 (arg2 at entry) +0x0.
  The return at 0xcd8 has v0 = ?.

## `odsyHashRemove` at `0xce0`
  Evidence grade: established.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0xce0-0xd04 (36 bytes).
  It occupies 36 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0xce0, `ld` at 0xcf0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0xce4, `ld` at 0xcec.
  The `sd` at 0xce8 stores 8 bytes to [a0+8]:8 +0x0.
  The `sd` at 0xcf4 stores 8 bytes to [a0]:8 +0x8.
  The `sd` at 0xcf8 stores 8 bytes to a0 (arg0 at entry) +0x8.
  The `sd` at 0xd00 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The return at 0xcfc has v0 = [a0]:8.

- `odsyHashRemove` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)` at 0xce0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_adt.o)`.
  Range: 0xce0-0xd04 (36 bytes).
  It occupies 36 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x8, including `ld` at 0xce0, `ld` at 0xcf0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0xce4, `ld` at 0xcec.
  The `sd` at 0xce8 stores 8 bytes to [a0+8]:8 +0x0.
  The `sd` at 0xcf4 stores 8 bytes to [a0]:8 +0x8.
  The `sd` at 0xcf8 stores 8 bytes to a0 (arg0 at entry) +0x8.
  The `sd` at 0xd00 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The return at 0xcfc has v0 = [a0]:8.
