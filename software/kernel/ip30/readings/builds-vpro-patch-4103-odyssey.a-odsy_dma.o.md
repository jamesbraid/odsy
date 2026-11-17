# Readings: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`

One entry per routine, filed here from the reading batches by binary.

- `odsy_NewDmaRegion` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x0-0x190 (400 bytes).
  It occupies 400 bytes.
  The `sd` at 0x4c stores 8 bytes to ret(kmem_alloc) +0x0.
  The `sw` at 0x50 stores 4 bytes to ret(kmem_alloc) +0x30.
  The `sd` at 0x54 stores 8 bytes to ret(kmem_alloc) +0x28.
  The `sd` at 0x58 stores 8 bytes to ret(kmem_alloc) +0x20.
  The `sd` at 0x6c stores 8 bytes to ret(kmem_alloc) +0x18.
  The `sd` at 0x78 stores 8 bytes to ret(kmem_alloc) +0x10.
  4 such `sw` accesses store 4 bytes to a7 (arg7 at entry) +0x0, including `sw` at 0xa0, `sw` at 0xbc, `sw` at 0x104.
  3 such `sw` accesses store 4 bytes to ret(kmem_alloc) +0x34, including `sw` at 0xa8, `sw` at 0xf4, `sw` at 0x16c.
  The `jal` at 0x3c calls kmem_alloc with a0=0x58, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x74 calls bcopy with a0=a6 at entry (arg6), a1=ret(kmem_alloc)+56, a2=0x20, a3=?.
  The `jal` at 0x94 calls useracc with a0=a2 at entry (arg2), a1=a3 at entry (arg3), a2=0x110, a3=0x0.
  The `jal` at 0xb4 calls odsy_DmaRegion_BuildXlatTbl with a0=ret(kmem_alloc), a1=?, a2=?, a3=?.
  The `jal` at 0xd4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xdc calls odsy_DeleteDmaRegion with a0=ret(kmem_alloc), a1=?, a2=?, a3=?.
  The `jal` at 0x130 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x164 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x178 calls odsy_DeleteDmaRegion with a0=ret(kmem_alloc), a1=?, a2=?, a3=?.
  The `beq` branch at 0x44 targets 0x11c, is taken when v0(=ret(kmem_alloc)) == 0, and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` branch at 0x7c targets 0xf4, is taken when s2(=a5) == 0, and falls through when s2(=a5) != 0.
  The `bne` branch at 0x9c targets 0x150, is taken when v0(=ret(useracc)) != 0, and falls through when v0(=ret(useracc)) == 0.
  The `beq` branch at 0xc0 targets 0x104, is taken when v0(=ret(odsy_DmaRegion_BuildXlatTbl)) == 0, and falls through when v0(=ret(odsy_DmaRegion_BuildXlatTbl)) != 0.
  The `beq` branch at 0xec targets 0x114 and is always taken.
  The `beq` branch at 0x148 targets 0x114 and is always taken.
  The `beq` branch at 0x188 targets 0x114 and is always taken.
  The return at 0x114 has v0 = one of 0x0, ret(kmem_alloc).

- `odsy_DeleteDmaRegion` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x190 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x190-0x1e8 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0x190 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `ld` at 0x1a8 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x1b4 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `ld` at 0x1b8 loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x1c8 loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `jal` at 0x1b0 calls unuseracc with a0=[a0+32]:8, a1=[a0+40]:8, a2=0x110, a3=a3 at entry (arg3).
  The `jal` at 0x1c4 calls kmem_free with a0=[a0]:8, a1=[a0+8], a2=?, a3=?.
  The `jal` at 0x1d0 calls kmem_free with a0=a0 at entry (arg0), a1=0x58, a2=?, a3=?.
  The `beq` branch at 0x1a0 targets 0x1cc, is taken when at(=[a0+52]) == 0, and falls through when at(=[a0+52]) != 0.
  The `beq` branch at 0x1bc targets 0x1cc, is taken when a0(=[a0]:8) == 0, and falls through when a0(=[a0]:8) != 0.
  The return at 0x1e0 has v0 = ret(kmem_free).

- `odsy_DmaRegion_Pin` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x1e8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x1e8-0x250 (104 bytes).
  It occupies 104 bytes.
  The `lw` at 0x1e8 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `ld` at 0x210 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x21c loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `sw` at 0x240 stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `jal` at 0x218 calls useracc with a0=[a0+32]:8, a1=[a0+40]:8, a2=0x110, a3=0x0.
  The `jal` at 0x23c calls odsy_DmaRegion_BuildXlatTbl with a0=a0 at entry (arg0), a1=0x1, a2=?, a3=ret(useracc).
  The `beq` branch at 0x1f4 targets 0x204, is taken when at(=[a0+52]) == 0, and falls through when at(=[a0+52]) != 0.
  The `beq` branch at 0x224 targets 0x234, is taken when v0(=ret(useracc)) == 0, and falls through when v0(=ret(useracc)) != 0.
  The `beq` branch at 0x22c targets 0x1fc and is always taken.
  The `beq` branch at 0x248 targets 0x1fc and is always taken.
  The return at 0x1fc has v0 = one of 0x0, ret(useracc).

- `odsy_DmaRegion_UnPin` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x250 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x250-0x2a8 (88 bytes).
  It occupies 88 bytes.
  The `lw` at 0x250 loads 4 bytes from a0 (arg0 at entry) +0x34.
  The `ld` at 0x264 loads 8 bytes from a0 (arg0 at entry) +0x28.
  The `ld` at 0x268 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `sw` at 0x278 stores 4 bytes to a0 (arg0 at entry) +0x34.
  The `ld` at 0x27c loads 8 bytes from a0 (arg0 at entry) +0x0.
  The `lw` at 0x28c loads 4 bytes from a0 (arg0 at entry) +0x8.
  The `sw` at 0x290 stores 4 bytes to a0 (arg0 at entry) +0x8.
  The `sd` at 0x294 stores 8 bytes to a0 (arg0 at entry) +0x0.
  The `jal` at 0x274 calls unuseracc with a0=[a0+32]:8, a1=[a0+40]:8, a2=0x110, a3=a3 at entry (arg3).
  The `jal` at 0x288 calls kmem_free with a0=[a0]:8, a1=[a0+8], a2=?, a3=?.
  The `beq` branch at 0x25c targets 0x29c, is taken when at(=[a0+52]) == 0, and falls through when at(=[a0+52]) != 0.
  The `beq` branch at 0x280 targets 0x29c, is taken when a0(=[a0]:8) == 0, and falls through when a0(=[a0]:8) != 0.
  The return at 0x2a0 has v0 = one of ?, ret(unuseracc), ret(kmem_free).

- `odsy_DmaRegion_DoTransfer` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x2a8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x2a8-0x364 (188 bytes).
  It occupies 188 bytes.
  The `ld` at 0x2c0 loads 8 bytes from a1 (arg1 at entry) +0x0.
  The `ld` at 0x2e8 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  2 such `sd` accesses store 8 bytes to [a0+736]:8 +0x110000, including `sd` at 0x340, `sd` at 0x34c.
  The `jal` at 0x2bc calls kvtophys with a0=[a1]:8, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `beq` branch at 0x310 targets 0x350, is taken when (at(=a2) & 0x4) == 0, and falls through when (at(=a2) & 0x4) != 0.
  The `beq` branch at 0x35c targets 0x31c and is always taken.
  The return at 0x348 has v0 = 0x0.

- `odsy_DmaRegion_BuildXlatTbl` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x364 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x364-0x430 (204 bytes).
  It occupies 204 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x0, including `ld` at 0x364, `ld` at 0x3e8.
  The `lw` at 0x37c loads 4 bytes from a0 (arg0 at entry) +0x8.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x8, including `sw` at 0x390, `sw` at 0x3e0.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x0, including `sd` at 0x394, `sd` at 0x3c4.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x28, including `ld` at 0x398, `ld` at 0x3ec.
  The `ld` at 0x3f4 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `jal` at 0x388 calls kmem_free with a0=[a0]:8, a1=[a0+8], a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x3b8 calls kmem_zalloc with a0=?, a1=0x8800, a2=?, a3=?.
  The `jal` at 0x3dc calls bcopy with a0=a0+56, a1=ret(kmem_zalloc), a2=0x20, a3=?.
  The `jal` at 0x3f8 calls generatePageTable with a0=a0+56, a1=[a0+32]:8, a2=[a0+40]:8, a3=[a0]:8+32, a4=0x0.
  The `jal` at 0x41c calls cmn_err with a0=0x1, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x374 targets 0x398, is taken when v0(=[a0]:8) == 0, and falls through when v0(=[a0]:8) != 0.
  The `beq` branch at 0x380 targets 0x398, is taken when a1(=[a0+8]) == 0, and falls through when a1(=[a0+8]) != 0.
  The `beq` branch at 0x3c0 targets 0x410, is taken when v0(=ret(kmem_zalloc)) == 0, and falls through when v0(=ret(kmem_zalloc)) != 0.
  The `beq` branch at 0x428 targets 0x408 and is always taken.
  The return at 0x408 has v0 = one of ret(generatePageTable), 0xc.

- `generatePageTable` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x430 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x430-0x864 (1076 bytes).
  It occupies 1076 bytes.
  The `lw` at 0x4c8 loads 4 bytes from a0 (arg0 at entry) +0xc.
  The `lw` at 0x4d8 loads 4 bytes from a0 (arg0 at entry) +0x18.
  The `lwu` at 0x4fc loads 4 bytes from a0 (arg0 at entry) +0x14.
  3 such `lw` accesses load 4 bytes from ?, including `lw` at 0x64c, `lw` at 0x750, `lw` at 0x754.
  6 such `sw` accesses store 4 bytes to ?, including `sw` at 0x660, `sw` at 0x670, `sw` at 0x728.
  The `jal` at 0x4a0 calls alenlist_destroy with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x51c calls alenlist_cursor_init with a0=?, a1=0x0, a2=0x0, a3=?.
  The `jal` at 0x53c calls alenlist_get with a0=?, a1=0x0, a2=0x4000, a3=sp-224, a4=sp-216, a5=0x0.
  The `jal` at 0x5d0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a7=ret(alenlist_get).
  The `jal` at 0x614 calls alenlist_get with a0=?, a1=0x0, a2=0x4000, a3=sp-224, a4=sp-216, a5=0x0, a7=ret(alenlist_get).
  The `jal` at 0x69c calls alenlist_create with a0=0x3, a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a7=0x0.
  The `jal` at 0x6cc calls uvaddr_to_alenlist with a0=ret(alenlist_create), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x0.
  The `jal` at 0x6fc calls kvaddr_to_alenlist with a0=ret(alenlist_create), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=0x0.
  The `jal` at 0x798 calls alenlist_cursor_init with a0=?, a1=a1 at entry (arg1), a2=0x0, a3=?.
  The `jal` at 0x7b4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a7=ret(alenlist_get).
  The `jal` at 0x7f0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a1 at entry (arg1), a3=(a1 + a2).
  The `jal` at 0x81c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a7=ret(alenlist_get).
  The `jal` at 0x838 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a6=a1 at entry (arg1).
  The `beq` branch at 0x45c targets 0x684, is taken when a4 == 0, and falls through when a4 != 0.
  The `beq` branch at 0x46c targets 0x4b4, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `bne` branch at 0x474 targets 0x484, is taken when s6(=a4) != 0, and falls through when s6(=a4) == 0.
  The `bne` branch at 0x47c targets 0x498, is taken when s7(?) != 0, and falls through when s7(?) == 0.
  The `beq` branch at 0x4ac targets 0x480 and is always taken.
  The `beq` branch at 0x4b4 targets 0x7e4, is taken when s7(?) == 0, and falls through when s7(?) != 0.
  The `bne` branch at 0x524 targets 0x790, is taken when s6(=a4) != 0, and falls through when s6(=a4) == 0.
  The `bne` branch at 0x544 targets 0x804, is taken when v0(=ret(alenlist_get)) != 0, and falls through when v0(=ret(alenlist_get)) == 0.
  The `beq` branch at 0x568 targets 0x578 and is always taken.
  The `blez` branch at 0x570 targets 0x600, is taken when v0(?) <= 0 (signed), and falls through when v0(?) > 0 (signed).
  The `bne` branch at 0x598 targets 0x570, is taken when s1(?) != 0, and falls through when s1(?) == 0.
  The `beq` branch at 0x5b8 targets 0x728, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `bne` branch at 0x5c0 targets 0x570, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x5f8 targets 0x474 and is always taken.
  The `bne` branch at 0x634 targets 0x7a8, is taken when v0(=ret(alenlist_get)) != 0, and falls through when v0(=ret(alenlist_get)) == 0.
  The `beq` branch at 0x67c targets 0x578 and is always taken.
  The `beq` branch at 0x6a8 targets 0x830, is taken when v0(=ret(alenlist_create)) == 0, and falls through when v0(=ret(alenlist_create)) != 0.
  The `beq` branch at 0x6bc targets 0x6f0, is taken when a6(=a1) >= at(=0x10000000000) (unsigned), and falls through when a6(=a1) < at(=0x10000000000) (unsigned).
  The `beq` branch at 0x6e8 targets 0x71c and is always taken.
  The `beq` branch at 0x720 targets 0x46c and is always taken.
  The `beq` branch at 0x788 targets 0x474 and is always taken.
  The `beq` branch at 0x7a0 targets 0x52c and is always taken.
  The `beq` branch at 0x7dc targets 0x474 and is always taken.
  The `beq` branch at 0x7fc targets 0x474 and is always taken.
  The `beq` branch at 0x828 targets 0x474 and is always taken.
  The `beq` branch at 0x85c targets 0x720 and is always taken.
  The return at 0x490 has v0 = ?.

- `odsy_dma_poll_timer` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x864 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x864-0x880 (28 bytes).
  It occupies 28 bytes.
  The `jal` at 0x86c calls vsema with a0=sym(.bss), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The return at 0x878 has v0 = ret(vsema).

- `DmaFinishedPollDelay` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x880 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x880-0x8d0 (80 bytes).
  It occupies 80 bytes.
  The `jal` at 0x89c calls init_sema with a0=sym(.bss), a1=0x0, a2=0x0, a3=-0x1.
  The `jal` at 0x8ac calls timeout with a0=sym(odsy_dma_poll_timer), a1=a0 at entry (arg0), a2=0x19, a3=?.
  The `jal` at 0x8bc calls psema with a0=sym(.bss), a1=0x19, a2=?, a3=?.
  The return at 0x8c8 has v0 = ret(psema).

- `gfP_OdsyDIAGdma` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x8d0 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x8d0-0xaf4 (548 bytes).
  It occupies 548 bytes.
  8 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x20, including `ld` at 0x8e0, `ld` at 0x938, `ld` at 0x984.
  The `ld` at 0x8f4 loads 8 bytes from [a0+32]:8 +0x2e0.
  The `ld` at 0x93c loads 8 bytes from [a0+32]:8 +0x48.
  4 such `lw` accesses load 4 bytes from [a0+32]:8 +0x50, including `lw` at 0x948, `lw` at 0x988, `lw` at 0xa28.
  3 such `sw` accesses store 4 bytes to [a0+32]:8 +0x50, including `sw` at 0x954, `sw` at 0x990, `sw` at 0xa30.
  The `lw` at 0x99c loads 4 bytes from a3 (arg3 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x9a4, `lw` at 0x9f8.
  The `sw` at 0x9b0 stores 4 bytes to ?.
  3 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0xa40, `sw` at 0xa90, `sw` at 0xab4.
  The `sd` at 0xa5c stores 8 bytes to [a0+32]:8 +0x48.
  2 such `lw` accesses load 4 bytes from [a0+32]:8 +0x68, including `lw` at 0xa64, `lw` at 0xa7c.
  The `jal` at 0x908 calls RRM_CheckValidFault with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=a2 at entry (arg2).
  The `jal` at 0x928 calls copyin with a0=a2 at entry (arg2), a1=sp-160, a2=0x30, a3=?, a6=a2 at entry (arg2).
  The `jal` at 0x970 calls odsy_NewDmaRegion with a0=a0 at entry (arg0), a1=0x0, a2=?, a3=?, a4=-0x1, a5=0x1, a6=sp-148, a7=a3 at entry (arg3).
  The `jal` at 0x9bc calls odsy_DmaRegion_DoTransfer with a0=[a0+32]:8, a1=ret(odsy_NewDmaRegion), a2=?, a3=?, a7=-0x801.
  The `jal` at 0x9ec calls DmaFinishedPollDelay with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa1c calls odsy_DeleteDmaRegion with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0xa50 calls psema with a0=[a0+32]:8+56, a1=0x219, a2=?, a3=?.
  The `jal` at 0xa70 calls us_delay with a0=0x2, a1=?, a2=?, a3=?.
  The `jal` at 0xaa8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xac8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xadc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0xae4 calls odsy_teardown with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x8fc targets 0x920, is taken when a1 == 0, and falls through when a1 != 0.
  The `bltz` branch at 0x918 targets 0xa90, is taken when v0(=ret(RRM_CheckValidFault)) < 0 (signed), and falls through when v0(=ret(RRM_CheckValidFault)) >= 0 (signed).
  The `bne` branch at 0x930 targets 0xaa0, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `bne` branch at 0x940 targets 0xa50, is taken when v1(=[[a0+32]:8+72]:8) != s0(=a0), and falls through when v1(=[[a0+32]:8+72]:8) == s0(=a0).
  The `bne` branch at 0x97c targets 0x9a0, is taken when v0(=ret(odsy_NewDmaRegion)) != 0, and falls through when v0(=ret(odsy_NewDmaRegion)) == 0.
  The `beq` branch at 0x998 targets 0xa44 and is always taken.
  The `bne` branch at 0x9c4 targets 0xac4, is taken when v0(=ret(odsy_DmaRegion_DoTransfer)) != 0, and falls through when v0(=ret(odsy_DmaRegion_DoTransfer)) == 0.
  The `bne` branch at 0x9d0 targets 0xa10, is taken when at(?) != 0, and falls through when at(?) == 0.
  The `beq` branch at 0x9e0 targets 0xa14, is taken when a2(?) >= 0x28 (signed), and falls through when a2(?) < 0x28 (signed).
  The `beq` branch at 0xa08 targets 0x9d8, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0xa14 targets 0xad8, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0xa68 targets 0x948, is taken when at(=[[a0+32]:8+104]) == 0, and falls through when at(=[[a0+32]:8+104]) != 0.
  The `bne` branch at 0xa80 targets 0xa70, is taken when v1(=[[a0+32]:8+104]) != 0, and falls through when v1(=[[a0+32]:8+104]) == 0.
  The `beq` branch at 0xa88 targets 0x94c and is always taken.
  The `beq` branch at 0xa98 targets 0xa44 and is always taken.
  The `beq` branch at 0xabc targets 0xa44 and is always taken.
  The `beq` branch at 0xad0 targets 0x9d0 and is always taken.
  The `beq` branch at 0xaec targets 0xa1c and is always taken.
  The return at 0xa48 has v0 = one of [a3], 0x0, 0xe.

- `odsyDMAOps` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0xaf4 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0xaf4-0x179c (3240 bytes).
  It occupies 3240 bytes.
  The `ld` at 0xb18 loads 8 bytes from a0 (arg0 at entry) +0x2e0.
  The `ld` at 0xb1c loads 8 bytes from a3 (arg3 at entry) +0x10.
  The `lw` at 0xb20 loads 4 bytes from a3 (arg3 at entry) +0x18.
  2 such `ld` accesses load 8 bytes from a2 (arg2 at entry) +0x60, including `ld` at 0xb34, `ld` at 0xbc4.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x3c, including `lw` at 0xb58, `lw` at 0xbac.
  2 such `ld` accesses load 8 bytes from a2 (arg2 at entry) +0x90, including `ld` at 0xb6c, `ld` at 0xc54.
  The `ld` at 0xb70 loads 8 bytes from [a2+144]:8 +0x78.
  The `lw` at 0xb78 loads 4 bytes from [[a2+144]:8+120]:8 +0x8c.
  51 such `sw` accesses store 4 bytes to table(0x110000) +0x0, including `sw` at 0xba4, `sw` at 0xba8, `sw` at 0x1174.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x28, including `lw` at 0xbcc, `lw` at 0x1008, `lw` at 0x1408.
  2 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x38, including `lw` at 0xbd0, `lw` at 0x143c.
  The `sd` at 0xbdc stores 8 bytes to a3 (arg3 at entry) +0x48.
  The `lw` at 0xbec loads 4 bytes from a0 (arg0 at entry) +0x118.
  8 such `lw` accesses load 4 bytes from ?, including `lw` at 0xc04, `lw` at 0xe9c, `lw` at 0x1178.
  The `lw` at 0xc2c loads 4 bytes from a2 (arg2 at entry) +0x0.
  The `lw` at 0xc38 loads 4 bytes from a3 (arg3 at entry) +0x1c.
  The `ld` at 0xc58 loads 8 bytes from [a2+144]:8 +0x80.
  The `lw` at 0xc5c loads 4 bytes from [[a2+144]:8+128]:8 +0x6c.
  The `lw` at 0xc60 loads 4 bytes from [[a2+144]:8+128]:8 +0x68.
  3 such `lw` accesses load 4 bytes from a3 (arg3 at entry) +0x20, including `lw` at 0xc68, `lw` at 0xfd8, `lw` at 0x13f0.
  The `lw` at 0xca4 loads 4 bytes from a4 (arg4 at entry) +0x20.
  The `lw` at 0xca8 loads 4 bytes from a4 (arg4 at entry) +0x14.
  2 such `lw` accesses load 4 bytes from [a2+96]:8 +0x1b60, including `lw` at 0xcc8, `lw` at 0x1600.
  2 such `lw` accesses load 4 bytes from [a2+96]:8 +0x1b6c, including `lw` at 0xd14, `lw` at 0x161c.
  The `lw` at 0xd60 loads 4 bytes from a4 (arg4 at entry) +0x24.
  The `lw` at 0xd64 loads 4 bytes from a4 (arg4 at entry) +0x18.
  The `sw` at 0xea8 stores 4 bytes to ?.
  The `sw` at 0xff0 stores 4 bytes to a3 (arg3 at entry) +0x20.
  The `lw` at 0x1030 loads 4 bytes from a3 (arg3 at entry) +0x30.
  The `ld` at 0x12d4 loads 8 bytes from a3 (arg3 at entry) +0x48.
  The `lwu` at 0x13bc loads 4 bytes from a2 (arg2 at entry) +0x28.
  2 such `sd` accesses store 8 bytes to table(0x110000) +0x0, including `sd` at 0x13d0, `sd` at 0x1554.
  2 such `lw` accesses load 4 bytes from a2 (arg2 at entry) +0x2c, including `lw` at 0x13d8, `lw` at 0x1560.
  The `lw` at 0x140c loads 4 bytes from [[a2+144]:8+120]:8 +0x70.
  The `lw` at 0x1424 loads 4 bytes from [[a2+144]:8+120]:8 +0x74.
  The `sw` at 0x1460 stores 4 bytes to a3 (arg3 at entry) +0x38.
  The `lw` at 0x1508 loads 4 bytes from [a2+96]:8 +0x1cb8.
  The `sw` at 0x1550 stores 4 bytes to [a2+96]:8 +0x1cb8.
  The `lw` at 0x15d8 loads 4 bytes from [a2+96]:8 +0x1b4c.
  The `lw` at 0x15e0 loads 4 bytes from [a2+96]:8 +0x1b50.
  The `lw` at 0x15e8 loads 4 bytes from [a2+96]:8 +0x1b54.
  The `lw` at 0x15f0 loads 4 bytes from [a2+96]:8 +0x1b58.
  2 such `lw` accesses load 4 bytes from [a2+96]:8 +0x1b5c, including `lw` at 0x15f8, `lw` at 0x1610.
  The `lw` at 0x1608 loads 4 bytes from [a2+96]:8 +0x1b64.
  The `lw` at 0x1628 loads 4 bytes from [a2+96]:8 +0x1b70.
  The `lw` at 0x1714 loads 4 bytes from a0 (arg0 at entry) +0x5700.
  The `jal` at 0xb48 calls useracc with a0=[a3+16]:8, a1=[a3+24], a2=0x110, a3=0x0.
  The `jal` at 0x127c calls odsyDMAOp with a0=a2 at entry (arg2), a1=a0 at entry (arg0), a2=0x0, a3=?, a5=sp-384, a6=sp-360.
  The `jal` at 0x14a4 calls odsyDMAOp with a0=a2 at entry (arg2), a1=a0 at entry (arg0), a2=0x0, a3=?, a5=sp-384, a6=a3+28, a7=a3+72.
  The `jal` at 0x15a4 calls unuseracc with a0=?, a1=?, a2=0x110, a3=-0x2.
  The `jal` at 0x1690 calls odsyDMAOp with a0=a2 at entry (arg2), a1=a0 at entry (arg0), a2=0x0, a3=?, a5=sp-384, a6=a3+28, a7=a3+72.
  The `jal` at 0x16cc calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=-0x2, a7=0xffffffffcf80a92f.
  The `jal` at 0x1730 calls odsyDMAWait with a0=a0 at entry (arg0), a1=a2 at entry (arg2), a2=0x1, a3=sp-376, a4=0xd0a, a5=([a0+22272] | 0x8000), a6=0x10a5a, a7=0x10444.
  The `jal` at 0x1744 calls unuseracc with a0=?, a1=?, a2=0x110, a3=?.
  The `jal` at 0x1788 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0xb50 targets 0x1758, is taken when v0(=ret(useracc)) != 0, and falls through when v0(=ret(useracc)) == 0.
  The `beq` branch at 0xb64 targets 0xb80, is taken when (v0(=[a3+60]) & 0x10) == 0, and falls through when (v0(=[a3+60]) & 0x10) != 0.
  The `beq` branch at 0xb7c targets 0x13f0, is taken when v1(=[[[a2+144]:8+120]:8+140]) == 0, and falls through when v1(=[[[a2+144]:8+120]:8+140]) != 0.
  The `beq` branch at 0xb88 targets 0x1464, is taken when v0(?) == 0, and falls through when v0(?) != 0.
  The `beq` branch at 0xbb8 targets 0x15cc, is taken when (a5(=[a3+60]) & 0x8) == 0, and falls through when (a5(=[a3+60]) & 0x8) != 0.
  The `beq` branch at 0xc0c targets 0x14f8, is taken when v0(=[a0+280]) == 0, and falls through when v0(=[a0+280]) != 0.
  The `beq` branch at 0xc18 targets 0x156c, is taken when v0(=[a0+280]) == v1(=0x1), and falls through when v0(=[a0+280]) != v1(=0x1).
  The `beq` branch at 0xc24 targets 0xc68, is taken when s2(=a2) == 0, and falls through when s2(=a2) != 0.
  The `beq` branch at 0xc30 targets 0xc68, is taken when a6(=[a2]) == 0, and falls through when a6(=[a2]) != 0.
  The `beq` branch at 0xc4c targets 0xc68, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xc78 targets 0xc90, is taken when (at(?) & 0x8000) == 0, and falls through when (at(?) & 0x8000) != 0.
  The `bltz` branch at 0xc9c targets 0x14c0, is taken when v0(?) < 0 (signed), and falls through when v0(?) >= 0 (signed).
  The `beq` branch at 0xcb8 targets 0xcc8, is taken when v0(=([a4+20] + [a4+32])) >= v1(?) (unsigned), and falls through when v0(=([a4+20] + [a4+32])) < v1(?) (unsigned).
  The `beq` branch at 0xcd0 targets 0x14e8, is taken when v0(=[[a2+96]:8+7008]) == 0, and falls through when v0(=[[a2+96]:8+7008]) != 0.
  The `beq` branch at 0xd04 targets 0xd14, is taken when (s1(=0xffffffff80000000) & v0(=[[a2+96]:8+7008])) == 0, and falls through when (s1(=0xffffffff80000000) & v0(=[[a2+96]:8+7008])) != 0.
  The `beq` branch at 0xd1c targets 0x14f0, is taken when a1(=[[a2+96]:8+7020]) == 0, and falls through when a1(=[[a2+96]:8+7020]) != 0.
  The `beq` branch at 0xd50 targets 0xd60, is taken when (s1(=0xffffffff80000000) & a1(=[[a2+96]:8+7020])) == 0, and falls through when (s1(=0xffffffff80000000) & a1(=[[a2+96]:8+7020])) != 0.
  The `beq` branch at 0xd78 targets 0xd84, is taken when a3(=([a4+24] + [a4+36])) >= a7(?) (unsigned), and falls through when a3(=([a4+24] + [a4+36])) < a7(?) (unsigned).
  The `beq` branch at 0xd94 targets 0xda0, is taken when a3(=([a4+24] + [a4+36])) >= a1(?) (unsigned), and falls through when a3(=([a4+24] + [a4+36])) < a1(?) (unsigned).
  The `beq` branch at 0xda4 targets 0xdb8, is taken when a2(?) == a7(?), and falls through when a2(?) != a7(?).
  The `bltz` branch at 0xdb0 targets 0x15b8, is taken when a5(?) < 0 (signed), and falls through when a5(?) >= 0 (signed).
  The `beq` branch at 0xdb8 targets 0xdcc, is taken when v0(?) == a1(?), and falls through when v0(?) != a1(?).
  The `bltz` branch at 0xdc4 targets 0x15c4, is taken when t8(?) < 0 (signed), and falls through when t8(?) >= 0 (signed).
  The `beq` branch at 0xde0 targets 0xdf0, is taken when (a7(?) & s1(=0xffffffff80000000)) == 0, and falls through when (a7(?) & s1(=0xffffffff80000000)) != 0.
  The `beq` branch at 0xdf4 targets 0xe20, is taken when (t3(?) & a3(=-0x2)) == 0, and falls through when (t3(?) & a3(=-0x2)) != 0.
  The `beq` branch at 0xe08 targets 0xe20, is taken when t2(?) >= 0x20 (signed), and falls through when t2(?) < 0x20 (signed).
  The `bne` branch at 0xe18 targets 0xdfc, is taken when (a5(?) & t3(?)) != 0, and falls through when (a5(?) & t3(?)) == 0.
  The `beq` branch at 0xe24 targets 0x14d8, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0xe38 targets 0xe48, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0xe50 targets 0xe7c, is taken when (a4(?) & a3(=-0x2)) == 0, and falls through when (a4(?) & a3(=-0x2)) != 0.
  The `beq` branch at 0xe64 targets 0xe7c, is taken when v0(?) >= 0x20 (signed), and falls through when v0(?) < 0x20 (signed).
  The `bne` branch at 0xe74 targets 0xe58, is taken when (a6(?) & a4(?)) != 0, and falls through when (a6(?) & a4(?)) == 0.
  The `beq` branch at 0xe7c targets 0x14e0, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `bgtz` branch at 0xea4 targets 0xe90, is taken when a2(?) > 0 (signed), and falls through when a2(?) <= 0 (signed).
  The `blez` branch at 0xf14 targets 0x1578, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0xf1c targets 0x157c, is taken when a7(?) == a1(?), and falls through when a7(?) != a1(?).
  The `bltz` branch at 0xf24 targets 0x1504, is taken when t0(?) < 0 (signed), and falls through when t0(?) >= 0 (signed).
  The `beq` branch at 0xfb8 targets 0x12e4 and is always taken.
  The `beq` branch at 0x10bc targets 0x10d0, is taken when (at(?) & s1(=0xffffffff80000000)) == 0, and falls through when (at(?) & s1(=0xffffffff80000000)) != 0.
  The `beq` branch at 0x10d4 targets 0x1100, is taken when (t3(?) & a3(=-0x2)) == 0, and falls through when (t3(?) & a3(=-0x2)) != 0.
  The `beq` branch at 0x10e8 targets 0x1100, is taken when t1(?) >= 0x20 (signed), and falls through when t1(?) < 0x20 (signed).
  The `bne` branch at 0x10f8 targets 0x10dc, is taken when (v1(?) & t3(?)) != 0, and falls through when (v1(?) & t3(?)) == 0.
  The `beq` branch at 0x1100 targets 0x1334, is taken when t3(?) == 0, and falls through when t3(?) != 0.
  The `beq` branch at 0x1118 targets 0x1128, is taken when (s7(?) & s1(=0xffffffff80000000)) == 0, and falls through when (s7(?) & s1(=0xffffffff80000000)) != 0.
  The `beq` branch at 0x112c targets 0x1164, is taken when (t2(?) & a3(=-0x2)) == 0, and falls through when (t2(?) & a3(=-0x2)) != 0.
  The `beq` branch at 0x1148 targets 0x1164, is taken when v0(?) >= 0x20 (signed), and falls through when v0(?) < 0x20 (signed).
  The `bne` branch at 0x115c targets 0x1138, is taken when (v1(?) & t2(?)) != 0, and falls through when (v1(?) & t2(?)) == 0.
  The `beq` branch at 0x1168 targets 0x133c, is taken when t2(?) == 0, and falls through when t2(?) != 0.
  The `blez` branch at 0x1244 targets 0x1328, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `bne` branch at 0x12b0 targets 0x16c0, is taken when v0(=ret(odsyDMAOp)) != 0, and falls through when v0(=ret(odsyDMAOp)) == 0.
  The `blez` branch at 0x12dc targets 0x1344, is taken when s0(?) <= 0 (signed), and falls through when s0(?) > 0 (signed).
  The `beq` branch at 0x1308 targets 0xfc0, is taken when s0(?) >= t2(?) (signed), and falls through when s0(?) < t2(?) (signed).
  The `beq` branch at 0x1320 targets 0xfc4 and is always taken.
  The `beq` branch at 0x132c targets 0x1250 and is always taken.
  The `beq` branch at 0x1334 targets 0x1108 and is always taken.
  The `beq` branch at 0x133c targets 0x1174 and is always taken.
  The `beq` branch at 0x136c targets 0x13e0, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `bltz` branch at 0x13f8 targets 0xb80, is taken when a2(?) < 0 (signed), and falls through when a2(?) >= 0 (signed).
  The `bltz` branch at 0x1400 targets 0xb84, is taken when a1(?) < 0 (signed), and falls through when a1(?) >= 0 (signed).
  The `bne` branch at 0x141c targets 0xb84, is taken when a5(=[[[a2+144]:8+120]:8+112]) < a6(?) (signed), and falls through when a5(=[[[a2+144]:8+120]:8+112]) >= a6(?) (signed).
  The `bne` branch at 0x1434 targets 0xb84, is taken when at(=[[[a2+144]:8+120]:8+116]) < v1(?) (signed), and falls through when at(=[[[a2+144]:8+120]:8+116]) >= v1(?) (signed).
  The `beq` branch at 0x14b8 targets 0x13e8 and is always taken.
  The `beq` branch at 0x14d0 targets 0xca4 and is always taken.
  The `beq` branch at 0x14d8 targets 0xe34 and is always taken.
  The `beq` branch at 0x14e0 targets 0xe8c and is always taken.
  The `beq` branch at 0x14e8 targets 0xd14 and is always taken.
  The `beq` branch at 0x14f0 targets 0xd60 and is always taken.
  The `beq` branch at 0x14fc targets 0xc24 and is always taken.
  The `beq` branch at 0x1510 targets 0x153c, is taken when v1(=[[a2+96]:8+7352]) == 0, and falls through when v1(=[[a2+96]:8+7352]) != 0.
  The `beq` branch at 0x1564 targets 0xf28 and is always taken.
  The `beq` branch at 0x1570 targets 0xc24 and is always taken.
  The `beq` branch at 0x15b0 targets 0x13e8 and is always taken.
  The `beq` branch at 0x15bc targets 0xdb8 and is always taken.
  The `beq` branch at 0x15c4 targets 0xdcc and is always taken.
  The `beq` branch at 0x16b8 targets 0x13e0 and is always taken.
  The `beq` branch at 0x1750 targets 0x13e8 and is always taken.
  The `beq` branch at 0x1794 targets 0x13e8 and is always taken.
  The return at 0x13e8 has v0 = one of ret(odsyDMAOp), 0x0, ?, 0xc.

- `odsyDMAOp` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x179c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x179c-0x1e38 (1692 bytes).
  It occupies 1692 bytes.
  The `ld` at 0x179c loads 8 bytes from a1 (arg1 at entry) +0x2e0.
  The `sw` at 0x17a0 stores 4 bytes to a5 (arg5 at entry) +0x0.
  The `sw` at 0x182c stores 4 bytes to ret(kmem_alloc) +0x0.
  2 such `sd` accesses store 8 bytes to ret(kmem_alloc) +0x8, including `sd` at 0x1830, `sd` at 0x1950.
  The `sd` at 0x183c stores 8 bytes to ret(kmem_alloc) +0x20.
  3 such `sw` accesses store 4 bytes to ret(kmem_alloc) +0x28, including `sw` at 0x1864, `sw` at 0x1878, `sw` at 0x193c.
  2 such `sd` accesses store 8 bytes to ret(kmem_alloc) +0x30, including `sd` at 0x186c, `sd` at 0x1934.
  2 such `sd` accesses store 8 bytes to ret(kmem_alloc) +0x38, including `sd` at 0x1874, `sd` at 0x1930.
  12 such `lw` accesses load 4 bytes from ?, including `lw` at 0x18c8, `lw` at 0x18ec, `lw` at 0x1990.
  5 such `ld` accesses load 8 bytes from ?, including `ld` at 0x18dc, `ld` at 0x1a40, `ld` at 0x1a4c.
  The `sw` at 0x1964 stores 4 bytes to ret(kmem_alloc) +0x10.
  2 such `ld` accesses load 8 bytes from ret(kmem_alloc) +0x8, including `ld` at 0x1970, `ld` at 0x1bf0.
  13 such `sw` accesses store 4 bytes to ?, including `sw` at 0x19a8, `sw` at 0x19bc, `sw` at 0x19e0.
  3 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0xde0, including `ld` at 0x1a88, `ld` at 0x1afc, `ld` at 0x1d34.
  2 such `ld` accesses load 8 bytes from a1 (arg1 at entry) +0xdd8, including `ld` at 0x1a8c, `ld` at 0x1d38.
  The `ld` at 0x1ae8 loads 8 bytes from a1 (arg1 at entry) +0x2f8.
  The `sd` at 0x1af0 stores 8 bytes to [a1+760]:8 +0x0.
  The `sd` at 0x1af4 stores 8 bytes to ret(kmem_alloc) +0x40.
  The `sd` at 0x1af8 stores 8 bytes to a7 (arg7 at entry) +0x0.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x9cc, including `lw` at 0x1b04, `lw` at 0x1b24.
  The `sd` at 0x1b18 stores 8 bytes to a1 (arg1 at entry) +0xde0.
  The `sd` at 0x1b20 stores 8 bytes to (([a1+2508] << 0x3) + a1) +0x9d8.
  The `sw` at 0x1b6c stores 4 bytes to a1 (arg1 at entry) +0x9cc.
  2 such `lw` accesses load 4 bytes from a6 (arg6 at entry) +0x1c, including `lw` at 0x1b7c, `lw` at 0x1c64.
  2 such `sd` accesses store 8 bytes to ?, including `sd` at 0x1bd0, `sd` at 0x1bd8.
  2 such `lw` accesses load 4 bytes from a5 (arg5 at entry) +0x0, including `lw` at 0x1c2c, `lw` at 0x1cc8.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x9c8, including `lw` at 0x1ca8, `lw` at 0x1d9c.
  The `ld` at 0x1cd4 loads 8 bytes from a7 (arg7 at entry) +0x0.
  The `sd` at 0x1cd8 stores 8 bytes to a0 (arg0 at entry) +0xb0.
  2 such `sw` accesses store 4 bytes to table(0x110000) +0x0, including `sw` at 0x1db8, `sw` at 0x1dc4.
  The `sd` at 0x1e08 stores 8 bytes to a0 (arg0 at entry) +0xa8.
  The `jal` at 0x17e8 calls kmem_alloc with a0=0x48, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1820 calls init_sv with a0=ret(kmem_alloc)+24, a1=0x0, a2=sym(.rodata), a3=-0x1.
  The `jal` at 0x1850 calls OdsyAllocCSetId with a0=a0+312, a1=ret(kmem_alloc), a2=?, a3=?, a6=-0x1.
  The `jal` at 0x1890 calls ConstructTftchWarList with a0=sp-320, a1=a6 at entry (arg6), a2=sp-272, a3=a3 at entry (arg3), a6=-0x1.
  The `jal` at 0x18d4 calls OdsyDeallocCSetId with a0=a0+312, a1=?, a2=?, a3=?.
  The `jal` at 0x18e8 calls kmem_free with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x18f4 calls kmem_free with a0=?, a1=0x58, a2=?, a3=?.
  The `jal` at 0x1904 calls mutex_mine with a0=a1+2472, a1=?, a2=?, a3=?.
  The `jal` at 0x1914 calls mutex_unlock with a0=a1+2472, a1=?, a2=?, a3=?.
  The `jal` at 0x1944 calls kmem_alloc with a0=?, a1=0x8801, a2=?, a3=?.
  The `jal` at 0x1980 calls bcopy with a0=a6 at entry (arg6), a1=?, a2=0x20, a3=?.
  The `jal` at 0x1a48 calls generatePageTable with a0=?, a1=?, a2=?, a3=?, a4=a2 at entry (arg2), a5=0xfffffffffff00000.
  The `jal` at 0x1a80 calls ddi_mutex_lock with a0=a1+2472, a1=-0x1, a2=?, a3=?.
  The `jal` at 0x1bf8 calls kvtophys with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1c5c calls ReleaseTftchWarList with a0=sp-320, a1=0x1ffff, a2=?, a3=?, a4=0xffffffff00000000.
  The `jal` at 0x1d0c calls mutex_unlock with a0=a1+2472, a1=[a1+3552]:8, a2=?, a3=?.
  The `jal` at 0x1d20 calls odsyDMAWait with a0=a1 at entry (arg1), a1=0x0, a2=0x0, a3=0x0.
  The `jal` at 0x1d2c calls ddi_mutex_lock with a0=a1+2472, a1=-0x1, a2=?, a3=?.
  The `jal` at 0x1d6c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x1de0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a6=-0x1.
  The `jal` at 0x1dec calls kmem_free with a0=ret(kmem_alloc), a1=0x48, a2=?, a3=?.
  The `jal` at 0x1e1c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x17f8 targets 0x1d50, is taken when v0(=ret(kmem_alloc)) == 0, and falls through when v0(=ret(kmem_alloc)) != 0.
  The `beq` branch at 0x1808 targets 0x1828, is taken when (v1(?) & 0x2) == 0, and falls through when (v1(?) & 0x2) != 0.
  The `beq` branch at 0x1838 targets 0x1878, is taken when s2(=a0) == 0, and falls through when s2(=a0) != 0.
  The `beq` branch at 0x1844 targets 0x1930, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x1860 targets 0x1dc8, is taken when v0(=ret(OdsyAllocCSetId)) == a6(=-0x1), and falls through when v0(=ret(OdsyAllocCSetId)) != a6(=-0x1).
  The `beq` branch at 0x1870 targets 0x187c and is always taken.
  The `beq` branch at 0x1898 targets 0x1940, is taken when v0(=ret(ConstructTftchWarList)) == 0, and falls through when v0(=ret(ConstructTftchWarList)) != 0.
  The `beq` branch at 0x18b4 targets 0x18fc, is taken when s0(?) == 0, and falls through when s0(?) != 0.
  The `beq` branch at 0x18c0 targets 0x18dc, is taken when t0(?) == 0, and falls through when t0(?) != 0.
  The `beq` branch at 0x18cc targets 0x18dc, is taken when a1(?) == t1(=-0x1), and falls through when a1(?) != t1(=-0x1).
  The `beq` branch at 0x18e0 targets 0x18f0, is taken when a0(?) == 0, and falls through when a0(?) != 0.
  The `beq` branch at 0x190c targets 0x1920, is taken when v0(=ret(mutex_mine)) == 0, and falls through when v0(=ret(mutex_mine)) != 0.
  The `beq` branch at 0x1938 targets 0x187c and is always taken.
  The `beq` branch at 0x194c targets 0x1e0c, is taken when v0(=ret(kmem_alloc)) == 0, and falls through when v0(=ret(kmem_alloc)) != 0.
  The `bne` branch at 0x1a50 targets 0x1aa4, is taken when v0(=ret(generatePageTable)) != 0, and falls through when v0(=ret(generatePageTable)) == 0.
  The `bne` branch at 0x1a6c targets 0x1968, is taken when t0(?) != 0, and falls through when t0(?) == 0.
  The `bne` branch at 0x1a94 targets 0x1ab8, is taken when a1(=[a1+3552]:8) < a0(=[a1+3544]:8) (unsigned), and falls through when a1(=[a1+3552]:8) >= a0(=[a1+3544]:8) (unsigned).
  The `beq` branch at 0x1a9c targets 0x1ac4 and is always taken.
  The `beq` branch at 0x1ab0 targets 0x18b4 and is always taken.
  The `bne` branch at 0x1ad8 targets 0x1ae8, is taken when v1(?) < t0(?) (unsigned), and falls through when v1(?) >= t0(?) (unsigned).
  The `beq` branch at 0x1ae0 targets 0x1d0c and is always taken.
  The `beq` branch at 0x1b74 targets 0x1d80, is taken when (at(?) & 0x1) == 0, and falls through when (at(?) & 0x1) != 0.
  The `beq` branch at 0x1b90 targets 0x1dac, is taken when (t0(?) & 0x8) == 0, and falls through when (t0(?) & 0x8) != 0.
  The `beq` branch at 0x1ba4 targets 0x1bec and is always taken.
  The `beq` branch at 0x1be4 targets 0x1c5c, is taken when a3(?) == 0, and falls through when a3(?) != 0.
  The `beq` branch at 0x1c48 targets 0x1bac, is taken when t0(=[a5]) == 0, and falls through when t0(=[a5]) != 0.
  The `beq` branch at 0x1c54 targets 0x1bb8 and is always taken.
  The `beq` branch at 0x1c74 targets 0x1c90, is taken when (v1(?) & 0x8) == 0, and falls through when (v1(?) & 0x8) != 0.
  The `beq` branch at 0x1c98 targets 0x1d90, is taken when t1(?) == 0, and falls through when t1(?) != 0.
  The `beq` branch at 0x1cbc targets 0x1cdc, is taken when s2(=a0) == 0, and falls through when s2(=a0) != 0.
  The `beq` branch at 0x1cd0 targets 0x1e04, is taken when at(=[a5]) == 0, and falls through when at(=[a5]) != 0.
  The `beq` branch at 0x1ce4 targets 0x18b4 and is always taken.
  The `bne` branch at 0x1d04 targets 0x1ae8, is taken when v1(?) < t0(?) (unsigned), and falls through when v1(?) >= t0(?) (unsigned).
  The `bne` branch at 0x1d40 targets 0x1cec, is taken when a1(=[a1+3552]:8) < a0(=[a1+3544]:8) (unsigned), and falls through when a1(=[a1+3552]:8) >= a0(=[a1+3544]:8) (unsigned).
  The `beq` branch at 0x1d48 targets 0x1cf8 and is always taken.
  The `beq` branch at 0x1d78 targets 0x1928 and is always taken.
  The `beq` branch at 0x1d88 targets 0x1b98 and is always taken.
  The `beq` branch at 0x1da4 targets 0x1cbc and is always taken.
  The `beq` branch at 0x1dc0 targets 0x1b98 and is always taken.
  The `beq` branch at 0x1dfc targets 0x1928 and is always taken.
  The `beq` branch at 0x1e04 targets 0x1cdc and is always taken.
  The `beq` branch at 0x1e30 targets 0x18b4 and is always taken.
  The return at 0x1928 has v0 = one of ?, 0xc.

- `odsy_dmawait_timeout` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x1e38 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x1e38-0x1e70 (56 bytes).
  It occupies 56 bytes.
  The `jal` at 0x1e50 calls cmn_err with a0=0x1, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1e58 calls odsy_teardown with a0=a0 at entry (arg0), a1=?, a2=?, a3=?.
  The return at 0x1e68 has v0 = ret(odsy_teardown).

- `odsy_dmawait_harmless_timeout` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x1e70 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x1e70-0x1ea8 (56 bytes).
  It occupies 56 bytes.
  The `jal` at 0x1e88 calls cmn_err with a0=0x7, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1e90 calls sv_broadcast with a0=a0+2488, a1=?, a2=?, a3=?.
  The return at 0x1ea0 has v0 = ret(sv_broadcast).

- `odsyDMAWait` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x1ea8 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x1ea8-0x2280 (984 bytes).
  It occupies 984 bytes.
  3 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x2d8, including `lw` at 0x1ec0, `lw` at 0x20e8, `lw` at 0x21c0.
  2 such `ld` accesses load 8 bytes from a3 (arg3 at entry) +0x0, including `ld` at 0x1f10, `ld` at 0x2064.
  The `ld` at 0x1f1c loads 8 bytes from a0 (arg0 at entry) +0xde0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xdd8, including `ld` at 0x1f20, `ld` at 0x2124.
  2 such `lw` accesses load 4 bytes from ret(OdsyNextCSetElem) +0x0, including `lw` at 0x1fc0, `lw` at 0x200c.
  2 such `sd` accesses store 8 bytes to a3 (arg3 at entry) +0x0, including `sd` at 0x1fe0, `sd` at 0x21d8.
  The `lw` at 0x2018 loads 4 bytes from ret(OdsyNextCSetElem) +0x28.
  The `ld` at 0x2028 loads 8 bytes from ret(OdsyNextCSetElem) +0x38.
  The `ld` at 0x2034 loads 8 bytes from ret(OdsyNextCSetElem) +0x30.
  2 such `lw` accesses load 4 bytes from ?, including `lw` at 0x2044, `lw` at 0x216c.
  The `lw` at 0x2114 loads 4 bytes from a0 (arg0 at entry) +0x9d0.
  The `ld` at 0x2120 loads 8 bytes from (([a0+2512] << 0x3) + a0) +0x9d8.
  The `ld` at 0x2128 loads 8 bytes from [(([a0+2512] << 0x3) + a0)+2520]:8 +0x40.
  2 such `ld` accesses load 8 bytes from ?, including `ld` at 0x2148, `ld` at 0x2150.
  The `jal` at 0x1ef0 calls ddi_mutex_lock with a0=a0+2472, a1=-0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x1f4c calls mutex_unlock with a0=?, a1=?, a2=[a0+3544]:8, a3=[a3]:8.
  The `jal` at 0x1f94 calls ddi_mutex_lock with a0=?, a1=-0x1, a2=?, a3=?.
  The `jal` at 0x1fa4 calls OdsyInitCSetCursor with a0=a1+312, a1=?, a2=?, a3=?.
  The `jal` at 0x1fac calls OdsyNextCSetElem with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1fc4 calls mutex_unlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1fe8 calls sv_destroy with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x1ff4 calls kmem_free with a0=?, a1=0x48, a2=?, a3=?.
  The `jal` at 0x1ffc calls OdsyNextCSetElem with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2030 calls unuseracc with a0=[ret(OdsyNextCSetElem)+48]:8, a1=[ret(OdsyNextCSetElem)+56]:8, a2=0x110, a3=?, a4=[ret(OdsyNextCSetElem)], a5=[ret(OdsyNextCSetElem)+40].
  The `jal` at 0x2040 calls OdsyDeallocCSetId with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x207c calls mutex_unlock with a0=?, a1=?, a2=[a0+3544]:8, a3=[a3]:8.
  The `jal` at 0x209c calls timeout with a0=sym(odsy_dmawait_harmless_timeout), a1=a0 at entry (arg0), a2=0x5dc, a3=a3 at entry (arg3), a4=a2 at entry (arg2), a5=-0x1.
  The `jal` at 0x20a8 calls hold_nonfatalsig with a0=sp-176, a1=?, a2=?, a3=?.
  The `jal` at 0x20bc calls ddi_sv_wait_sig with a0=a0+2488, a1=?, a2=0x0, a3=?.
  The `jal` at 0x20c8 calls release_nonfatalsig with a0=sp-176, a1=?, a2=?, a3=?.
  The `jal` at 0x20d0 calls untimeout with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2160 calls timeout with a0=sym(odsy_dmawait_timeout), a1=a0 at entry (arg0), a2=0x5dc, a3=[a3]:8, a4=a0 at entry (arg0), a6=[a0+2512], a7=[[(([a0+2512] << 0x3) + a0)+2520]:8+64]:8.
  The `jal` at 0x2180 calls hold_nonfatalsig with a0=sp-176, a1=?, a2=?, a3=?, a5=ret(timeout).
  The `jal` at 0x2194 calls ddi_sv_wait_sig with a0=?, a1=?, a2=0x0, a3=?.
  The `jal` at 0x21a0 calls release_nonfatalsig with a0=sp-176, a1=?, a2=?, a3=?.
  The `jal` at 0x21a8 calls untimeout with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x21dc calls mutex_unlock with a0=?, a1=?, a2=a0 at entry (arg0), a3=[a3]:8, a4=a2 at entry (arg2), a5=-0x1.
  The `jal` at 0x21f8 calls untimeout with a0=ret(timeout), a1=?, a2=?, a3=?, a5=ret(timeout).
  The `jal` at 0x2200 calls mutex_unlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x221c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=[a3]:8.
  The `jal` at 0x2224 calls mutex_unlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2240 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=[a0+3544]:8, a3=[[(([a0+2512] << 0x3) + a0)+2520]:8+64]:8, a6=[a0+2512], a7=[[(([a0+2512] << 0x3) + a0)+2520]:8+64]:8.
  The `jal` at 0x2248 calls mutex_unlock with a0=?, a1=?, a2=?, a3=?.
  The `jal` at 0x2264 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=[a3]:8, a4=a0 at entry (arg0), a6=[a0+2512], a7=[[(([a0+2512] << 0x3) + a0)+2520]:8+64]:8.
  The `jal` at 0x226c calls mutex_unlock with a0=?, a1=?, a2=?, a3=?.
  The `beq` branch at 0x1ed0 targets 0x1ee0, is taken when at(=[a0+728]) == 0, and falls through when at(=[a0+728]) != 0.
  The `beq` branch at 0x1f08 targets 0x2094, is taken when a4(=a2) == 0, and falls through when a4(=a2) != 0.
  The `beq` branch at 0x1f14 targets 0x21dc, is taken when a5(=-0x1) == a3(=[a3]:8), and falls through when a5(=-0x1) != a3(=[a3]:8).
  The `bne` branch at 0x1f30 targets 0x1f6c, is taken when v0(=[a0+3552]:8) < a2(=[a0+3544]:8) (unsigned), and falls through when v0(=[a0+3552]:8) >= a2(=[a0+3544]:8) (unsigned).
  The `bne` branch at 0x1f3c targets 0x1f4c, is taken when a3(=[a3]:8) < a2(=[a0+3544]:8) (unsigned), and falls through when a3(=[a3]:8) >= a2(=[a0+3544]:8) (unsigned).
  The `beq` branch at 0x1f44 targets 0x1f64, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x1f64 targets 0x1f80 and is always taken.
  The `beq` branch at 0x1f6c targets 0x1f78, is taken when v1(?) == 0, and falls through when v1(?) != 0.
  The `bne` branch at 0x1f74 targets 0x207c, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `beq` branch at 0x1f84 targets 0x2050, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x1f8c targets 0x1fd0, is taken when v1(=a1) == 0, and falls through when v1(=a1) != 0.
  The `beq` branch at 0x1fb4 targets 0x1fc4, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x1fbc targets 0x2010 and is always taken.
  The `beq` branch at 0x1fdc targets 0x1ed8 and is always taken.
  The `beq` branch at 0x2004 targets 0x1fc4, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `bne` branch at 0x2010 targets 0x1ffc, is taken when a4(=[ret(OdsyNextCSetElem)]) != 0, and falls through when a4(=[ret(OdsyNextCSetElem)]) == 0.
  The `beq` branch at 0x201c targets 0x1fe4, is taken when a5(=[ret(OdsyNextCSetElem)+40]) == at(=-0x1), and falls through when a5(=[ret(OdsyNextCSetElem)+40]) != at(=-0x1).
  The `beq` branch at 0x2048 targets 0x1fe8 and is always taken.
  The `bne` branch at 0x2054 targets 0x1f8c, is taken when a4(?) != 0, and falls through when a4(?) == 0.
  The `bne` branch at 0x206c targets 0x20fc, is taken when a3(=[a3]:8) < a2(?) (unsigned), and falls through when a3(=[a3]:8) >= a2(?) (unsigned).
  The `beq` branch at 0x2074 targets 0x2108 and is always taken.
  The `beq` branch at 0x208c targets 0x1f78 and is always taken.
  The `beq` branch at 0x20dc targets 0x20f4, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x20ec targets 0x21f0, is taken when a5(=[a0+728]) == 0, and falls through when a5(=[a0+728]) != 0.
  The `beq` branch at 0x20f4 targets 0x1ed8 and is always taken.
  The `beq` branch at 0x210c targets 0x2210, is taken when v0(?) >= 0x80 (unsigned), and falls through when v0(?) < 0x80 (unsigned).
  The `bne` branch at 0x212c targets 0x2238, is taken when a2(=[a0+3544]:8) != a7(=[[(([a0+2512] << 0x3) + a0)+2520]:8+64]:8), and falls through when a2(=[a0+3544]:8) == a7(=[[(([a0+2512] << 0x3) + a0)+2520]:8+64]:8).
  The `bne` branch at 0x2154 targets 0x225c, is taken when a3(=[a3]:8) != a2(?), and falls through when a3(=[a3]:8) == a2(?).
  The `beq` branch at 0x2178 targets 0x21f8, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x21b4 targets 0x21c8, is taken when a4(?) == 0, and falls through when a4(?) != 0.
  The `beq` branch at 0x21c4 targets 0x1f88, is taken when a5(=[a0+728]) == 0, and falls through when a5(=[a0+728]) != 0.
  The `beq` branch at 0x21d4 targets 0x1ed8 and is always taken.
  The `beq` branch at 0x21e8 targets 0x1ed8 and is always taken.
  The `beq` branch at 0x21f0 targets 0x1ed8 and is always taken.
  The `beq` branch at 0x2208 targets 0x1f88 and is always taken.
  The `beq` branch at 0x2230 targets 0x1ed8 and is always taken.
  The `beq` branch at 0x2254 targets 0x1ed8 and is always taken.
  The `beq` branch at 0x2278 targets 0x1ed8 and is always taken.
  The return at 0x1ed8 has v0 = one of 0x0, 0x9, 0x16.

- `odsyDMAWakeup` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x2280 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x2280-0x2550 (720 bytes).
  It occupies 720 bytes.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0xdd8, including `ld` at 0x22bc, `ld` at 0x237c.
  The `ld` at 0x22c0 loads 8 bytes from a0 (arg0 at entry) +0xde0.
  2 such `ld` accesses load 8 bytes from a0 (arg0 at entry) +0x9c0, including `ld` at 0x22c4, `ld` at 0x2534.
  The `lhu` at 0x22d0 loads 2 bytes from [a0+2496]:8 +0x0.
  6 such `lw` accesses load 4 bytes from a0 (arg0 at entry) +0x9d0, including `lw` at 0x22f0, `lw` at 0x2380, `lw` at 0x23a4.
  The `lw` at 0x22f4 loads 4 bytes from a0 (arg0 at entry) +0x9cc.
  The `sd` at 0x2390 stores 8 bytes to a0 (arg0 at entry) +0xdd8.
  The `ld` at 0x2398 loads 8 bytes from (([a0+2512] << 0x3) + a0) +0x9d8.
  The `sd` at 0x23a0 stores 8 bytes to (([a0+2512] << 0x3) + a0) +0x9d8.
  The `sw` at 0x23c8 stores 4 bytes to a0 (arg0 at entry) +0x9d0.
  The `ld` at 0x23cc loads 8 bytes from [(([a0+2512] << 0x3) + a0)+2520]:8 +0x8.
  The `lw` at 0x23e0 loads 4 bytes from [(([a0+2512] << 0x3) + a0)+2520]:8 +0x10.
  2 such `sw` accesses store 4 bytes to [(([a0+2512] << 0x3) + a0)+2520]:8 +0x10, including `sw` at 0x23e4, `sw` at 0x2504.
  The `sd` at 0x23e8 stores 8 bytes to [(([a0+2512] << 0x3) + a0)+2520]:8 +0x8.
  The `sw` at 0x23ec stores 4 bytes to [(([a0+2512] << 0x3) + a0)+2520]:8 +0x0.
  The `ld` at 0x23f0 loads 8 bytes from a0 (arg0 at entry) +0x2f8.
  The `ld` at 0x23f4 loads 8 bytes from [(([a0+2512] << 0x3) + a0)+2520]:8 +0x40.
  The `sd` at 0x23f8 stores 8 bytes to [a0+760]:8 +0x8.
  The `ld` at 0x23fc loads 8 bytes from [(([a0+2512] << 0x3) + a0)+2520]:8 +0x20.
  The `ld` at 0x2408 loads 8 bytes from [(([a0+2512] << 0x3) + a0)+2520]:8 +0x38.
  The `sh` at 0x254c stores 2 bytes to [a0+2496]:8 +0x0.
  The `jal` at 0x229c calls ddi_mutex_lock with a0=a0+2472, a1=-0x1, a2=a2 at entry (arg2), a3=a3 at entry (arg3).
  The `jal` at 0x2360 calls sv_broadcast with a0=[(([a0+2512] << 0x3) + a0)+2520]:8+24, a1=[[(([a0+2512] << 0x3) + a0)+2520]:8+56]:8, a2=?, a3=?.
  The `jal` at 0x2368 calls sv_destroy with a0=[(([a0+2512] << 0x3) + a0)+2520]:8+24, a1=?, a2=?, a3=?.
  The `jal` at 0x23dc calls kmem_free with a0=[[(([a0+2512] << 0x3) + a0)+2520]:8+8]:8, a1=[[(([a0+2512] << 0x3) + a0)+2520]:8+16], a2=?, a3=?.
  The `jal` at 0x2414 calls kmem_free with a0=[(([a0+2512] << 0x3) + a0)+2520]:8, a1=0x48, a2=?, a3=?.
  The `jal` at 0x2428 calls sv_broadcast with a0=[(([a0+2512] << 0x3) + a0)+2520]:8+24, a1=?, a2=?, a3=?.
  The `jal` at 0x2430 calls sv_destroy with a0=[(([a0+2512] << 0x3) + a0)+2520]:8+24, a1=?, a2=?, a3=?.
  The `jal` at 0x243c calls kmem_free with a0=[(([a0+2512] << 0x3) + a0)+2520]:8, a1=0x48, a2=?, a3=?.
  The `jal` at 0x244c calls sv_broadcast with a0=a0+2488, a1=?, a2=?, a3=?.
  The `jal` at 0x2470 calls mutex_unlock with a0=a0+2472, a1=?, a2=?, a3=?.
  The `jal` at 0x24a0 calls mutex_unlock with a0=a0+2472, a1=?, a2=0x2000000000000000, a3=0x7f, a4=-0x1.
  The `jal` at 0x24c4 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x24e0 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x24f8 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `jal` at 0x2514 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=-0x1.
  The `beq` branch at 0x22e0 targets 0x2498, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `beq` branch at 0x22e8 targets 0x24a0, is taken when a5(?) == 0, and falls through when a5(?) != 0.
  The `beq` branch at 0x2304 targets 0x2484, is taken when t1(=[a0+2508]) >= t0(=[a0+2512]) (signed), and falls through when t1(=[a0+2508]) < t0(=[a0+2512]) (signed).
  The `bne` branch at 0x2314 targets 0x2328, is taken when a6(?) != 0, and falls through when a6(?) == 0.
  The `beq` branch at 0x231c targets 0x232c and is always taken.
  The `beq` branch at 0x2324 targets 0x231c, is taken when a6(?) == 0, and falls through when a6(?) != 0.
  The `bne` branch at 0x2330 targets 0x2508, is taken when a6(?) < s5(?) (unsigned), and falls through when a6(?) >= s5(?) (unsigned).
  The `blez` branch at 0x2338 targets 0x2468, is taken when s5(?) <= 0 (signed), and falls through when s5(?) > 0 (signed).
  The `beq` branch at 0x2358 targets 0x237c and is always taken.
  The `beq` branch at 0x2374 targets 0x244c, is taken when at(?) == 0, and falls through when at(?) != 0.
  The `beq` branch at 0x239c targets 0x24bc, is taken when s0(=[(([a0+2512] << 0x3) + a0)+2520]:8) == 0, and falls through when s0(=[(([a0+2512] << 0x3) + a0)+2520]:8) != 0.
  The `beq` branch at 0x23d4 targets 0x24f0, is taken when a0(=[[(([a0+2512] << 0x3) + a0)+2520]:8+8]:8) == 0, and falls through when a0(=[[(([a0+2512] << 0x3) + a0)+2520]:8+8]:8) != 0.
  The `beq` branch at 0x2400 targets 0x2424, is taken when at(=[[(([a0+2512] << 0x3) + a0)+2520]:8+32]:8) == 0, and falls through when at(=[[(([a0+2512] << 0x3) + a0)+2520]:8+32]:8) != 0.
  The `bne` branch at 0x240c targets 0x2360, is taken when a1(=[[(([a0+2512] << 0x3) + a0)+2520]:8+56]:8) != 0, and falls through when a1(=[[(([a0+2512] << 0x3) + a0)+2520]:8+56]:8) == 0.
  The `beq` branch at 0x241c targets 0x2374 and is always taken.
  The `beq` branch at 0x2444 targets 0x2374 and is always taken.
  The `bne` branch at 0x2488 targets 0x2324, is taken when t1(=[a0+2508]) < s6(?) (signed), and falls through when t1(=[a0+2508]) >= s6(?) (signed).
  The `beq` branch at 0x2490 targets 0x2324 and is always taken.
  The `bnel` branch at 0x2498 targets 0x22f4, is taken when v0(=table(0x2000000000000000)) != 0, and falls through when v0(=table(0x2000000000000000)) == 0; its branch-likely delay slot `lw t0,2512(s1)` at 0x249c runs only when taken and is annulled on fall-through.
  The `beq` branch at 0x24b4 targets 0x247c and is always taken.
  The `beq` branch at 0x24e8 targets 0x23a8 and is always taken.
  The `beq` branch at 0x2500 targets 0x23e8 and is always taken.
  The `beq` branch at 0x2548 targets 0x22bc and is always taken.
  The return at 0x247c has v0 = ret(mutex_unlock).

- `odsyDMAFinish` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x2550 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x2550-0x265c (268 bytes).
  It occupies 268 bytes.
  2 such `lw` accesses load 4 bytes from ret(OdsyNextCSetElem) +0x0, including `lw` at 0x25bc, `lw` at 0x25dc.
  The `lw` at 0x25e8 loads 4 bytes from a0 (arg0 at entry) +0x2d8.
  2 such `lw` accesses load 4 bytes from ret(OdsyNextCSetElem) +0x10, including `lw` at 0x25f4, `lw` at 0x2658.
  The `ld` at 0x25fc loads 8 bytes from ret(OdsyNextCSetElem) +0x8.
  The `ld` at 0x2600 loads 8 bytes from ret(OdsyNextCSetElem) +0x38.
  The `ld` at 0x2610 loads 8 bytes from ret(OdsyNextCSetElem) +0x30.
  The `jal` at 0x256c calls odsyDMAWait with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=a1+168.
  The `jal` at 0x2580 calls odsyDMAWait with a0=a0 at entry (arg0), a1=a1 at entry (arg1), a2=0x1, a3=a1+176.
  The `jal` at 0x2598 calls ddi_mutex_lock with a0=a0+2472, a1=-0x1, a2=?, a3=?.
  The `jal` at 0x25a0 calls OdsyInitCSetCursor with a0=a1+312, a1=?, a2=?, a3=?.
  The `jal` at 0x25a8 calls OdsyNextCSetElem with a0=a1+312, a1=?, a2=?, a3=?.
  The `jal` at 0x25c4 calls kmem_free with a0=ret(OdsyNextCSetElem), a1=0x48, a2=?, a3=?.
  The `jal` at 0x25cc calls OdsyNextCSetElem with a0=a1+312, a1=?, a2=?, a3=?.
  The `jal` at 0x25f8 calls kmem_free with a0=[ret(OdsyNextCSetElem)+8]:8, a1=[ret(OdsyNextCSetElem)+16], a2=?, a3=?.
  The `jal` at 0x260c calls unuseracc with a0=[ret(OdsyNextCSetElem)+48]:8, a1=[ret(OdsyNextCSetElem)+56]:8, a2=0x110, a3=?.
  The `jal` at 0x2628 calls OdsyDestroyCSet with a0=a1+312, a1=0x0, a2=?, a3=?.
  The `jal` at 0x2634 calls mutex_unlock with a0=a0+2472, a1=?, a2=?, a3=?.
  The `jal` at 0x264c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `beq` branch at 0x25b0 targets 0x261c, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x25b8 targets 0x25e0 and is always taken.
  The `beq` branch at 0x25d4 targets 0x261c, is taken when v0(=ret(OdsyNextCSetElem)) == 0, and falls through when v0(=ret(OdsyNextCSetElem)) != 0.
  The `beq` branch at 0x25e0 targets 0x2600, is taken when at(=[ret(OdsyNextCSetElem)]) == 0, and falls through when at(=[ret(OdsyNextCSetElem)]) != 0.
  The `beq` branch at 0x25ec targets 0x2648, is taken when v1(=[a0+728]) == 0, and falls through when v1(=[a0+728]) != 0.
  The `beq` branch at 0x2604 targets 0x25c0, is taken when a1(=[ret(OdsyNextCSetElem)+56]:8) == 0, and falls through when a1(=[ret(OdsyNextCSetElem)+56]:8) != 0.
  The `beq` branch at 0x2614 targets 0x25c4 and is always taken.
  The `beq` branch at 0x2654 targets 0x25f8 and is always taken.
  The return at 0x2640 has v0 = ret(mutex_unlock).

- `gfP_OdsyMMwaitXfr` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x265c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x265c-0x2754 (248 bytes).
  It occupies 248 bytes.
  4 such `sw` accesses store 4 bytes to a3 (arg3 at entry) +0x0, including `sw` at 0x265c, `sw` at 0x26d0, `sw` at 0x2728.
  The `ld` at 0x2664 loads 8 bytes from a0 (arg0 at entry) +0x20.
  The `lw` at 0x266c loads 4 bytes from [a0+32]:8 +0x2d8.
  The `ld` at 0x2688 loads 8 bytes from a0 (arg0 at entry) +0x48.
  The `ld` at 0x268c loads 8 bytes from [a0+72]:8 +0x70.
  The `jal` at 0x26a8 calls copyin with a0=a2 at entry (arg2), a1=sp-96, a2=0x8, a3=?.
  The `jal` at 0x26c0 calls odsyDMAWait with a0=?, a1=?, a2=0x1, a3=sp-96.
  The `jal` at 0x26ec calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=a3 at entry (arg3).
  The `jal` at 0x270c calls cmn_err with a0=0x4, a1=sym(.rodata), a2=sym(.rodata), a3=?.
  The `jal` at 0x2734 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?.
  The `bne` branch at 0x2680 targets 0x26dc, is taken when at(=[[a0+32]:8+728]) != 0, and falls through when at(=[[a0+32]:8+728]) == 0.
  The `beq` branch at 0x2694 targets 0x2704, is taken when v1(=[[a0+72]:8+112]:8) == 0, and falls through when v1(=[[a0+72]:8+112]:8) != 0.
  The `bne` branch at 0x26b0 targets 0x272c, is taken when v0(=ret(copyin)) != 0, and falls through when v0(=ret(copyin)) == 0.
  The `beq` branch at 0x26fc targets 0x2688 and is always taken.
  The `beq` branch at 0x2724 targets 0x26d4 and is always taken.
  The `beq` branch at 0x274c targets 0x26d4 and is always taken.
  The return at 0x26d4 has v0 = one of ret(odsyDMAWait), 0x1, 0xe.

- `ConstructTftchWarList` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x2754 (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x2754-0x2a4c (760 bytes).
  It occupies 760 bytes.
  The `lw` at 0x2778 loads 4 bytes from a1 (arg1 at entry) +0x1c.
  The `lw` at 0x279c loads 4 bytes from a1 (arg1 at entry) +0x18.
  2 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x14, including `lw` at 0x27a0, `lw` at 0x2904.
  6 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0xc, including `lw` at 0x27bc, `lw` at 0x28a8, `lw` at 0x28bc.
  2 such `sw` accesses store 4 bytes to a0 (arg0 at entry) +0x0, including `sw` at 0x2810, `sw` at 0x2984.
  2 such `sw` accesses store 4 bytes to a2 (arg2 at entry) +0x0, including `sw` at 0x281c, `sw` at 0x29e0.
  2 such `sd` accesses store 8 bytes to a0 (arg0 at entry) +0x8, including `sd` at 0x2850, `sd` at 0x2988.
  5 such `sd` accesses store 8 bytes to ?, including `sd` at 0x2884, `sd` at 0x28c0, `sd` at 0x28c4.
  5 such `lw` accesses load 4 bytes from a1 (arg1 at entry) +0x4, including `lw` at 0x2888, `lw` at 0x2898, `lw` at 0x28f8.
  7 such `sw` accesses store 4 bytes to ?, including `sw` at 0x2890, `sw` at 0x28b8, `sw` at 0x28c8.
  The `sw` at 0x2994 stores 4 bytes to a0 (arg0 at entry) +0x18.
  The `sw` at 0x29a0 stores 4 bytes to a0 (arg0 at entry) +0x1c.
  The `sw` at 0x29ac stores 4 bytes to a0 (arg0 at entry) +0x10.
  The `sd` at 0x29b8 stores 8 bytes to a0 (arg0 at entry) +0x20.
  The `sd` at 0x29c0 stores 8 bytes to a0 (arg0 at entry) +0x28.
  The `sw` at 0x29c8 stores 4 bytes to a0 (arg0 at entry) +0x14.
  The `jal` at 0x2830 calls kmem_alloc with a0=?, a1=0x0, a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0xfffff.
  The `jal` at 0x2a00 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=a2 at entry (arg2), a3=a3 at entry (arg3), a6=0xfffff.
  The `jal` at 0x2a38 calls cmn_err with a0=0x4, a1=sym(.rodata), a2=?, a3=?, a4=0x0.
  The `beq` branch at 0x2794 targets 0x2984, is taken when v0(=0x24000) >= a4 (unsigned), and falls through when v0(=0x24000) < a4 (unsigned).
  The `bne` branch at 0x27b0 targets 0x29e4, is taken when v0(=0x24000) < a0(?) (unsigned), and falls through when v0(=0x24000) >= a0(?) (unsigned).
  The `beq` branch at 0x2800 targets 0x2810, is taken when at(?) >= v1(?) (unsigned), and falls through when at(?) < v1(?) (unsigned).
  The `beq` branch at 0x2844 targets 0x2a14, is taken when v0(=ret(kmem_alloc)) == 0, and falls through when v0(=ret(kmem_alloc)) != 0.
  The `blez` branch at 0x284c targets 0x295c, is taken when s5(?) <= 0 (signed), and falls through when s5(?) > 0 (signed).
  The `bne` branch at 0x2864 targets 0x2934 and is never taken: its condition can never hold for these operands, so execution always falls through.
  The `beq` branch at 0x286c targets 0x2948, is taken when t0(?) == a1(?), and falls through when t0(?) != a1(?).
  The `beq` branch at 0x28a0 targets 0x2950, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `bne` branch at 0x28d4 targets 0x291c, is taken when t0(?) != a1(?), and falls through when t0(?) == a1(?).
  The `beq` branch at 0x28ec targets 0x2904, is taken when s1(?) == 0, and falls through when s1(?) != 0.
  The `beq` branch at 0x2924 targets 0x295c, is taken when a1(?) >= s5(?) (signed), and falls through when a1(?) < s5(?) (signed).
  The `beq` branch at 0x292c targets 0x286c, is taken when a1(?) == 0, and falls through when a1(?) != 0.
  The `bne` branch at 0x2940 targets 0x2874, is taken when t0(?) != a1(?), and falls through when t0(?) == a1(?).
  The `beq` branch at 0x2948 targets 0x2888 and is always taken.
  The `beq` branch at 0x2954 targets 0x28bc and is always taken.
  The `beq` branch at 0x29dc targets 0x297c and is always taken.
  The `beq` branch at 0x2a0c targets 0x297c and is always taken.
  The `beq` branch at 0x2a44 targets 0x297c and is always taken.
  The return at 0x297c has v0 = one of 0x0, 0x1.

- `ReleaseTftchWarList` in `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)` at 0x2a4c (n64).
  Evidence grade: inferred.
  Exact binary: `builds/vpro-patch-4103/usr/cpu/sysgen/IP30boot/odyssey.a(odsy_dma.o)`.
  Range: 0x2a4c-0x2a9c (80 bytes).
  It occupies 80 bytes.
  The `lw` at 0x2a4c loads 4 bytes from a0 (arg0 at entry) +0x0.
  The `sw` at 0x2a64 stores 4 bytes to a0 (arg0 at entry) +0x0.
  The `sd` at 0x2a68 stores 8 bytes to a0 (arg0 at entry) +0x8.
  The `ld` at 0x2a88 loads 8 bytes from a0 (arg0 at entry) +0x8.
  The `jal` at 0x2a8c calls kmem_free with a0=[a0+8]:8, a1=?, a2=a2 at entry (arg2), a3=[a0].
  The `beq` branch at 0x2a5c targets 0x2a78, is taken when a3(=[a0]) >= 0x2 (signed), and falls through when a3(=[a0]) < 0x2 (signed).
  The `beq` branch at 0x2a94 targets 0x2a64 and is always taken.
  The return at 0x2a70 has v0 = one of ?, ret(kmem_free).
