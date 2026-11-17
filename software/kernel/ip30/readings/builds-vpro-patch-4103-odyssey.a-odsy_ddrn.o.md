# Readings: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)`

One entry per routine, filed here from the reading batches by binary.

- `odsyInitDDRNs` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)`.
  Range: 0x0-0x54 (84 bytes).
  It occupies 84 bytes.
  The `sw` at 0x44 stores 4 bytes to ?.
  The `jal` at 0x14 calls bzero with a0=sym(ODSYddrn), a1=0xee20, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `bne` branch at 0x40 targets 0x28, is taken when a0(?) < 0x7f (signed), and falls through when a0(?) >= 0x7f (signed).
  The return at 0x4c has v0 = ?.

- `gf_OdsyCreateDDRN` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)` at 0x54 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)`.
  Range: 0x54-0x3cc (888 bytes).
  It occupies 888 bytes.
  The `ld` at 0x54 loads 8 bytes from a1 (arg1 at entry) +0x40.
  The `lw` at 0x58 loads 4 bytes from [a1+64]:8 +0x30.
  The `lh` at 0x78 loads 2 bytes from a0 (arg0 at entry) +0x2c4.
  The `lw` at 0x84 loads 4 bytes from a0 (arg0 at entry) +0x2d8.
  The `lw` at 0xa8 loads 4 bytes from sym(ODSYddrn) +0x0.
  5 such `lw` accesses load 4 bytes from ?, including `lw` at 0xd8, `lw` at 0x208, `lw` at 0x214.
  The `sd` at 0x100 stores 8 bytes to a1 (arg1 at entry) +0x70.
  22 such `sw` accesses store 4 bytes to ?, including `sw` at 0x104, `sw` at 0x11c, `sw` at 0x120.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1220, including `lw` at 0x108, `lw` at 0x34c.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x1220, including `sw` at 0x118, `sw` at 0x358.
  9 such `sd` accesses store 8 bytes to ?, including `sd` at 0x124, `sd` at 0x128, `sd` at 0x130.
  The `ld` at 0x178 loads 8 bytes from a0 (arg0 at entry) +0x2f0.
  The `sh` at 0x190 stores 2 bytes to ([a0+752]:8 + (ret(OdsyAlloc32kSlot) + ret(OdsyAlloc32kSlot))) +0x0.
  4 such `ld` accesses load 8 bytes from ?, including `ld` at 0x1ec, `ld` at 0x270, `ld` at 0x29c.
  The `lw` at 0x28c loads 4 bytes from a0 (arg0 at entry) +0x28e8.
  4 such `sd` accesses store 8 bytes to a1 (arg1 at entry) +0x38, including `sd` at 0x2e8, `sd` at 0x32c, `sd` at 0x388.
  The `jal` at 0x9c calls psema with a0=a0+6032, a1=0x19, a2=a2 at entry (arg2), a3=[a0+728].
  The `jal` at 0x114 calls vsema with a0=?, a1=sym(ODSYddrn), a2=?, a3=0x7f, a4=[a0+4640]+1.
  The `jal` at 0x138 calls OdsyInitCSet with a0=?, a1=0x4, a2=?, a3=?.
  The `jal` at 0x168 calls OdsyAlloc32kSlot with a0=a0+6112, a1=?, a2=?, a3=?.
  The `jal` at 0x18c calls kmem_zalloc with a0=0x4000, a1=0x8800, a2=?, a3=?.
  The `jal` at 0x1d8 calls odsyMapPages with a0=0x0, a1=?, a2=ret(kmem_zalloc), a3=0x4000, a4=sp-96, a5=0x1.
  The `jal` at 0x1e8 calls ddv_getaddr with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x284 calls odsyResetHwShadow with a0=?, a1=0xffffffffff000fff, a2=0xfff000, a3=?, a4=0x1001, a5=0xffffffffff00ff00, a6=-0x1000.
  The `jal` at 0x2e0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=?.
  The `jal` at 0x300 calls cmn_err with a0=0x5, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x314 calls vsema with a0=?, a1=sym(ODSYddrn), a2=?, a3=0x7f, a4=[sym(ODSYddrn)].
  The `jal` at 0x324 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x344 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x380 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x3a0 calls kmem_free with a0=?, a1=0x4000, a2=?, a3=?.
  The `jal` at 0x3b4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x70 targets 0x2f8, is taken when (at(=[[a1+64]:8+48]) & 0x4) != 0, and falls through when (at(=[[a1+64]:8+48]) & 0x4) == 0.
  The `beq` branch at 0x7c targets 0x2d8, is taken when v1(=[a0+708]:2) == 0, and falls through when v1(=[a0+708]:2) != 0.
  The `bne` branch at 0x88 targets 0x2d4, is taken when a3(=[a0+728]) != 0, and falls through when a3(=[a0+728]) == 0.
  The `beq` branch at 0xb4 targets 0xe4, is taken when a4(=[sym(ODSYddrn)]) == s4(=-0x1), and falls through when a4(=[sym(ODSYddrn)]) != s4(=-0x1).
  The `beq` branch at 0xcc targets 0xe4, is taken when v0(?) >= 0x7f (signed), and falls through when v0(?) < 0x7f (signed).
  The `bne` branch at 0xdc targets 0xbc, is taken when v1(?) != s4(=-0x1), and falls through when v1(?) == s4(=-0x1).
  The `beq` branch at 0xe4 targets 0x314, is taken when v0(?) == a3(=0x7f), and falls through when v0(?) != a3(=0x7f).
  The `bltz` branch at 0x170 targets 0x33c, is taken when v0(=ret(OdsyAlloc32kSlot)) < 0 (signed), and falls through when v0(=ret(OdsyAlloc32kSlot)) >= 0 (signed).
  The `beq` branch at 0x194 targets 0x370, is taken when v0(=ret(kmem_zalloc)) == 0, and falls through when v0(=ret(kmem_zalloc)) != 0.
  The `bne` branch at 0x1e0 targets 0x398, is taken when v0(=ret(odsyMapPages)) != 0, and falls through when v0(=ret(odsyMapPages)) == 0.
  The `bne` branch at 0x268 targets 0x230, is taken when a0(?) < 0x4 (signed), and falls through when a0(?) >= 0x4 (signed).
  The `beq` branch at 0x2f0 targets 0x2c4 and is always taken.
  The `beq` branch at 0x30c targets 0x2c4 and is always taken.
  The `beq` branch at 0x334 targets 0x2c4 and is always taken.
  The `beq` branch at 0x368 targets 0x2c4 and is always taken.
  The `beq` branch at 0x390 targets 0x2c4 and is always taken.
  The `beq` branch at 0x3c4 targets 0x2c4 and is always taken.
  The return at 0x2cc has v0 = one of 0x0, 0x1.

- `gf_OdsyDestroyDDRN` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)` at 0x3cc (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_ddrn.o)`.
  Range: 0x3cc-0x600 (564 bytes).
  It occupies 564 bytes.
  The `ld` at 0x3d4 loads 8 bytes from a2 (arg2 at entry) +0x70.
  The `ld` at 0x3dc loads 8 bytes from a1 (arg1 at entry) +0x20.
  The `ld` at 0x3e4 loads 8 bytes from [a1+32]:8 +0x8.
  The `lw` at 0x404 loads 4 bytes from a0 (arg0 at entry) +0x2d8.
  The `lw` at 0x418 loads 4 bytes from a0 (arg0 at entry) +0x28e8.
  2 such `ld` accesses load 8 bytes from [a2+112]:8 +0x70, including `ld` at 0x428, `ld` at 0x4b4.
  The `lw` at 0x438 loads 4 bytes from ?.
  The `sh` at 0x444 stores 2 bytes to a0 (arg0 at entry) +0x2c4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2dc, including `lw` at 0x448, `lw` at 0x5b4.
  The `lw` at 0x44c loads 4 bytes from [a2+112]:8 +0x0.
  The `sw` at 0x458 stores 4 bytes to a0 (arg0 at entry) +0x2dc.
  The `lw` at 0x45c loads 4 bytes from a2 (arg2 at entry) +0x1c.
  The `lw` at 0x4a0 loads 4 bytes from [a2+112]:8 +0x130.
  The `sd` at 0x4ac stores 8 bytes to [a2+112]:8 +0x90.
  The `sd` at 0x4b0 stores 8 bytes to a2 (arg2 at entry) +0x70.
  The `lw` at 0x4cc loads 4 bytes from [a2+112]:8 +0xa4.
  2 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x1220, including `lw` at 0x4e0, `lw` at 0x520.
  The `ld` at 0x4ec loads 8 bytes from a0 (arg0 at entry) +0x2d0.
  The `sd` at 0x500 stores 8 bytes to a0 (arg0 at entry) +0x2d0.
  The `ld` at 0x508 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `sw` at 0x50c stores 4 bytes to a0 (arg0 at entry) +0x28a4.
  The `sw` at 0x510 stores 4 bytes to [a0+736]:8 +0x1074.
  The `sw` at 0x518 stores 4 bytes to [a2+112]:8 +0x0.
  The `sw` at 0x52c stores 4 bytes to a0 (arg0 at entry) +0x1220.
  The `ld` at 0x53c loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x540 loads 8 bytes from [a1]:8 +0x8.
  The `ld` at 0x54c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x584 stores 4 bytes to [a2+112]:8 +0x130.
  The `ld` at 0x58c loads 8 bytes from a1 (arg1 at entry) +0x18.
  The `ld` at 0x590 loads 8 bytes from [a1+24]:8 +0x78.
  The `jal` at 0x46c calls gf_OdsyUnSchedSwapBuf with a0=a1 at entry (arg1), a1=a2 at entry (arg2), a2=[a2+28], a3=?, a5=[[a2+112]:8].
  The `jal` at 0x478 calls gf_OdsyUnSchedRetraceEvent with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=?, a3=?.
  The `jal` at 0x4c4 calls kmem_free with a0=[[a2+112]:8+112]:8, a1=0x4000, a2=?, a3=?.
  The `jal` at 0x4d0 calls OdsyFree32kSlot with a0=a0+6112, a1=[[a2+112]:8+164], a2=?, a3=?.
  The `jal` at 0x4f8 calls gfx_flow_dealloc with a0=[a0+720]:8, a1=?, a2=?, a3=?.
  The `jal` at 0x560 calls odsyDMAFinish with a0=a0 at entry (arg0), a1=[a2+112]:8, a2=?, a3=?, a5=[[a2+112]:8+304].
  The `jal` at 0x56c calls odsyMMdetach with a0=a1 at entry (arg1), a1=[a2+112]:8, a2=?, a3=?.
  The `jal` at 0x574 calls odsyUnpinAndUnmapGctxRegions with a0=[a2+112]:8, a1=?, a2=?, a3=?.
  The `jalr` at 0x5a0 calls (unknown callee) with a0=[a1+32]:8, a1=a2 at entry (arg2), a2=0x0, a3=[[a1+32]:8+8]:8, a5=[[a1+24]:8+120]:8.
  The `jal` at 0x5cc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x5e8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x3fc targets 0x448, is taken when a3(=[[a1+32]:8+8]:8) != a2, and falls through when a3(=[[a1+32]:8+8]:8) == a2.
  The `beq` branch at 0x408 targets 0x53c, is taken when at(=[a0+728]) == 0, and falls through when at(=[a0+728]) != 0.
  The `beq` branch at 0x410 targets 0x58c, is taken when a0(=one of 0x0, 0x1) == 0, and falls through when a0(=one of 0x0, 0x1) != 0.
  The `beq` branch at 0x43c targets 0x58c, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x450 targets 0x45c, is taken when a5(=[[a2+112]:8]) != at(=[a0+732]), and falls through when a5(=[[a2+112]:8]) == at(=[a0+732]).
  The `bltz` branch at 0x460 targets 0x474, is taken when a2(=[a2+28]) < 0 (signed), and falls through when a2(=[a2+28]) >= 0 (signed).
  The `bne` branch at 0x490 targets 0x5b8, is taken when s0(=[a2+112]:8) < v1(=sym(ODSYddrn)) (unsigned), and falls through when s0(=[a2+112]:8) >= v1(=sym(ODSYddrn)) (unsigned).
  The `bne` branch at 0x498 targets 0x5b8, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x4a4 targets 0x560, is taken when a5(=[[a2+112]:8+304]) == 0, and falls through when a5(=[[a2+112]:8+304]) != 0.
  The `beq` branch at 0x4b8 targets 0x4cc, is taken when a0(=[[a2+112]:8+112]:8) == 0, and falls through when a0(=[[a2+112]:8+112]:8) != 0.
  The `bne` branch at 0x4e4 targets 0x518, is taken when at(=[a0+4640]) != v1(=0x1), and falls through when at(=[a0+4640]) == v1(=0x1).
  The `beq` branch at 0x4f0 targets 0x508, is taken when a0(=[a0+720]:8) == 0, and falls through when a0(=[a0+720]:8) != 0.
  The `beq` branch at 0x544 targets 0x410, is taken when v1(=[[a1]:8+8]:8) == a4(=a1), and falls through when v1(=[[a1]:8+8]:8) != a4(=a1).
  The `beq` branch at 0x550 targets 0x410, is taken when a4(=[a0]:8) == 0, and falls through when a4(=[a0]:8) != 0.
  The `beq` branch at 0x558 targets 0x410 and is always taken.
  The `beq` branch at 0x580 targets 0x4ac and is always taken.
  The `bne` branch at 0x5a8 targets 0x5e0, is taken when v0(=ret(?)) != 0, and falls through when v0(=ret(?)) == 0.
  The `beq` branch at 0x5b0 targets 0x44c and is always taken.
  The `beq` branch at 0x5d8 targets 0x534 and is always taken.
  The `beq` branch at 0x5f8 targets 0x448 and is always taken.
  The return at 0x534 has v0 = one of 0x0, 0x1.
  The instructions from 0x588 to 0x588 are not reached by any path from the entry, and their branches are not listed.
